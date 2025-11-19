uint64_t physx::Gu::computeConvex_TriangleMeshMTD(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v206 = v3;
  v223 = v4;
  v6 = v5;
  v7 = v2;
  v9.i32[0] = v8;
  v212 = v10;
  v11 = 0;
  v282[512] = *MEMORY[0x1E69E9840];
  v12 = *(v2 + 32);
  v221 = *(v1 + 40);
  v222 = v1;
  v13 = *(v221 + 80);
  v260 = 0;
  v215 = v12;
  v14 = v12 + 32;
  v15 = 1.0;
  if (*(v2 + 4) == 1.0 && *(v2 + 8) == 1.0)
  {
    v11 = *(v2 + 12) == 1.0;
  }

  v17 = xmmword_1E3047670;
  v254 = xmmword_1E3047670;
  v255 = xmmword_1E3047670;
  _Q1.i32[3] = 0;
  v19 = xmmword_1E3047680;
  v256 = xmmword_1E3060D60;
  v257 = xmmword_1E3047680;
  v258 = 0x3F80000000000000;
  v259 = 0;
  if (v11)
  {
    __asm { FMOV            V1.2S, #1.0 }

    v23 = 0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0;
  }

  else
  {
    v220 = v9;
    physx::Cm::FastVertex2ShapeScaling::init(&v254, (v2 + 4), (v2 + 16));
    v19 = xmmword_1E3047680;
    v17 = xmmword_1E3047670;
    v9 = v220;
    _Q1.i64[0] = __PAIR64__(v255, v254);
    v23 = __PAIR64__(DWORD1(v254), HIDWORD(v254));
    v25 = *(&v254 + 2);
    v24 = *(&v255 + 1);
    v26 = *(&v255 + 8);
    v15 = *&v256;
  }

  v27 = *(v215 + 64);
  v28 = *(v215 + 56);
  *_Q1.f32 = vadd_f32(vadd_f32(vmul_f32(v23, vrev64_s32(v28)), vmul_f32(*_Q1.f32, v28)), vmul_n_f32(v26, v27));
  _Q1.f32[2] = ((v25 * v28.f32[0]) + vmuls_lane_f32(v24, v28, 1)) + (v15 * v27);
  v213 = _Q1;
  v29.i64[0] = v6[1].i64[0];
  v29.i64[1] = v6[1].u32[2];
  v30 = *(v7 + 4);
  v31 = v30;
  v31.i32[3] = 0;
  v252 = *v6;
  v253 = v29;
  v32 = *(v7 + 16);
  v33 = *(v215 + 72) + 20 * *(v215 + 71);
  v271 = 0;
  v270 = 0u;
  v269 = 0u;
  v278 = v14;
  v280 = v33;
  v281 = *(v215 + 70);
  v34.i64[0] = *(v215 + 92);
  v34.i64[1] = *(v215 + 100);
  v35 = vmulq_f32(v31, v34);
  *v35.i8 = vpmin_f32(vdup_laneq_s32(v35, 2), *v35.i8);
  v36 = vpmin_f32(*v35.i8, *v35.i8);
  *&v270 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v36.f32[0]);
  *(&v270 + 2) = 0.025 * v36.f32[0];
  v218 = v29;
  if (v11)
  {
    v272 = v17;
    v273 = v19;
    v274 = xmmword_1E30476A0;
    v275 = v17;
    v276 = v19;
    v277 = xmmword_1E30476A0;
  }

  else
  {
    v37 = vrecpeq_f32(v31);
    v38 = 4;
    do
    {
      v37 = vmulq_f32(v37, vrecpsq_f32(v37, v31));
      --v38;
    }

    while (v38);
    *v39.f32 = vdup_lane_s32(*v30.f32, 0);
    v39.i64[1] = v39.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v39, v31)), *v31.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v43 = vdup_lane_s32(*v32.f32, 1);
      v44 = vdup_laneq_s32(v32, 2);
      v45 = vdup_laneq_s32(v32, 3);
      v46 = vaddq_f32(v32, v32);
      v47 = vmul_lane_f32(v43, *v46.f32, 1);
      v48 = vmul_laneq_f32(v44, v46, 2);
      v49 = vmul_n_f32(v43, v46.f32[0]);
      v50 = vmul_n_f32(v44, v46.f32[0]);
      v51 = vmul_n_f32(v45, v46.f32[0]);
      v52 = vmul_lane_f32(v44, *v46.f32, 1);
      v53 = vmul_lane_f32(v45, *v46.f32, 1);
      v54 = vmul_laneq_f32(v45, v46, 2);
      __asm { FMOV            V6.2S, #1.0 }

      v56 = vsub_f32(_D6, vdup_lane_s32(vmul_f32(*v32.f32, *v46.f32), 0));
      v57 = vsub_f32(vsub_f32(_D6, v47), v48);
      *v46.f32 = vadd_f32(v49, v54);
      v58 = vsub_f32(v50, v53);
      v59 = vsub_f32(v49, v54);
      v60 = vadd_f32(v50, v53);
      v61 = vsub_f32(v52, v51);
      v62 = vext_s8(v60, v61, 4uLL);
      v63 = vsub_f32(v56, v48);
      *v64.f32 = vext_s8(v57, *&vdupq_lane_s32(v59, 1), 4uLL);
      v64.i64[1] = vdup_lane_s32(v62, 0).u32[0];
      v65 = vsub_f32(v56, v47);
      *v66.f32 = vext_s8(*&vdupq_lane_s32(*v46.f32, 0), v63, 4uLL);
      v66.i64[1] = vdup_lane_s32(v62, 1).u32[0];
      v67 = vadd_f32(v52, v51);
      *v68.f32 = vext_s8(*&vdupq_lane_s32(v58, 0), v67, 4uLL);
      v68.i64[1] = vdup_lane_s32(v65, 0).u32[0];
      v69 = vmulq_n_f32(v64, v30.f32[0]);
      v69.i32[3] = 0;
      v70 = vmulq_lane_f32(v66, *v30.f32, 1);
      v70.i32[3] = 0;
      v71 = vmulq_laneq_f32(v68, v30, 2);
      v71.i32[3] = 0;
      v72 = vmulq_lane_f32(v69, v57, 1);
      v72.i32[3] = 0;
      v73 = vmulq_n_f32(v70, v46.f32[0]);
      v73.i32[3] = 0;
      v74 = vmulq_n_f32(v71, *v58.i32);
      v74.i32[3] = 0;
      v40 = vaddq_f32(v74, vaddq_f32(v72, v73));
      v75 = vmulq_lane_f32(v69, v59, 1);
      v75.i32[3] = 0;
      v76 = vmulq_n_f32(v70, *v63.i32);
      v76.i32[3] = 0;
      v77 = vmulq_n_f32(v71, *v67.i32);
      v77.i32[3] = 0;
      v41 = vaddq_f32(v77, vaddq_f32(v75, v76));
      v78 = vmulq_lane_f32(v69, v60, 1);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v70, *v61.i32);
      v79.i32[3] = 0;
      v80 = vmulq_n_f32(v71, *v65.i32);
      v80.i32[3] = 0;
      v81 = vmulq_n_f32(v64, v37.f32[0]);
      v81.i32[3] = 0;
      v82 = vmulq_lane_f32(v66, *v37.f32, 1);
      v82.i32[3] = 0;
      v83 = vmulq_laneq_f32(v68, v37, 2);
      v83.i32[3] = 0;
      v84 = vmulq_lane_f32(v81, v57, 1);
      v84.i32[3] = 0;
      v85 = vmulq_n_f32(v82, v46.f32[0]);
      v85.i32[3] = 0;
      v86 = vmulq_n_f32(v83, *v58.i32);
      v86.i32[3] = 0;
      v42 = vaddq_f32(v80, vaddq_f32(v78, v79));
      v87 = vaddq_f32(v86, vaddq_f32(v84, v85));
      v88 = vmulq_lane_f32(v81, v59, 1);
      v88.i32[3] = 0;
      v89 = vmulq_n_f32(v82, *v63.i32);
      v89.i32[3] = 0;
      v90 = vmulq_n_f32(v83, *v67.i32);
      v90.i32[3] = 0;
      v91 = vmulq_lane_f32(v81, v60, 1);
      v91.i32[3] = 0;
      v92 = vmulq_n_f32(v82, *v61.i32);
      v92.i32[3] = 0;
      v93 = vmulq_n_f32(v83, *v65.i32);
      v93.i32[3] = 0;
      v274 = v42;
      v275 = v87;
      v276 = vaddq_f32(v90, vaddq_f32(v88, v89));
      v277 = vaddq_f32(v93, vaddq_f32(v91, v92));
      v93.i64[0] = *(v215 + 92);
      v93.i64[1] = *(v215 + 100);
      v272 = v40;
      v273 = v41;
      v94 = vmulq_f32(v31, v93);
      *v94.i8 = vpmin_f32(vdup_laneq_s32(v94, 2), *v94.i8);
      v36 = vpmin_f32(*v94.i8, *v94.i8);
    }

    else
    {
      v37.i32[3] = 0;
      v40 = vmulq_f32(v31, v17);
      v41 = vmulq_f32(v31, v19);
      v42 = vmulq_f32(v31, xmmword_1E30476A0);
      v272 = v40;
      v273 = v41;
      v274 = v42;
      v275 = vmulq_f32(v37, v17);
      v276 = vmulq_f32(v37, v19);
      v277 = vmulq_f32(v37, xmmword_1E30476A0);
    }

    v95 = vmulq_f32(v40, 0);
    v95.i32[3] = 0;
    v96 = vmulq_f32(v41, 0);
    v96.i32[3] = 0;
    v97 = vmulq_f32(v42, 0);
    v97.i32[3] = 0;
    v269 = vaddq_f32(v97, vaddq_f32(v96, v95));
  }

  _Q0 = v213;
  _Q0.i32[3] = 0;
  v214 = _Q0;
  v279 = *(v215 + 80);
  __asm { FMOV            V0.2S, #0.25 }

  *_Q0.f32 = vadd_f32(vdup_lane_s32(v9, 0), vmul_f32(v36, *_Q0.f32));
  v211 = _Q0;
  v251 = *_Q0.f32;
  v250 = 0;
  v249 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(&v249, 0x80u);
  v247 = 0u;
  v248 = 0u;
  v217 = 0u;
  v246 = 0u;
  v245 = 0xFFFFFFF;
  physx::operator*(v212, v222 + 1, &v233);
  physx::Gu::getPCMConvexData(&v269, v11, v232);
  v104 = 0;
  v231 = 0;
  v105 = vdup_lane_s32(*v211.i8, 0);
  v228 = *v6;
  v106 = 1;
  v107 = vneg_f32(0x80000000800000);
  v108 = 0uLL;
  v109 = v218;
  v208 = v7;
  v207 = v11;
  while (1)
  {
    v110 = v106;
    LODWORD(v250) = 0;
    v229 = v109.i64[0];
    v230 = v109.f32[2];
    v253 = v109;
    v264 = &v252;
    v265 = &v272;
    v266 = &v275;
    v219 = v109;
    v210 = v108;
    if (v11)
    {
      v111 = 1;
      v112 = &unk_1F5D216F0;
    }

    else
    {
      v111 = 0;
      v112 = &unk_1F5D21740;
    }

    v267 = v111;
    v263[0].i64[0] = v112;
    v268 = &v269;
    v263[1] = v214;
    physx::Gu::computeOBBAroundConvex(v225, v7, v215, &v228, *v214.i64, *v109.i64, v99, v100, v108, v101, v102, v103);
    *v113.i8 = vadd_f32(v105, v226);
    v226 = *v113.i8;
    v227 = *v211.i32 + v227;
    *v113.i32 = v227;
    midPhaseQuery(v222, v212, v225, &v249, v113, v211);
    v114 = v250;
    if (!v250)
    {
      goto LABEL_56;
    }

    v209 = v104;
    v115 = (v228.f32[3] * v228.f32[3]) + -0.5;
    v116 = (((*(&v229 + 1) * -2.0) * v228.f32[1]) + (v228.f32[0] * (*&v229 * -2.0))) + (v228.f32[2] * (v230 * -2.0));
    v117 = (((*&v229 * -2.0) * v115) - (((v228.f32[1] * (v230 * -2.0)) - (v228.f32[2] * (*(&v229 + 1) * -2.0))) * v228.f32[3])) + (v228.f32[0] * v116);
    v118 = (((*(&v229 + 1) * -2.0) * v115) - (((v228.f32[2] * (*&v229 * -2.0)) - (v228.f32[0] * (v230 * -2.0))) * v228.f32[3])) + (v228.f32[1] * v116);
    v119 = (((v230 * -2.0) * v115) - (((v228.f32[0] * (*(&v229 + 1) * -2.0)) - (v228.f32[1] * (*&v229 * -2.0))) * v228.f32[3])) + (v228.f32[2] * v116);
    v120 = -v228.f32[0] - v228.f32[0];
    v121 = -v228.f32[1] - v228.f32[1];
    v122 = -v228.f32[2] - v228.f32[2];
    v123 = -(v228.f32[1] * v121);
    v124 = -(v228.f32[2] * v122);
    v125 = v228.f32[3] * v120;
    v126 = -(v228.f32[2] * v121);
    v127 = v228.f32[3] * v121;
    v128 = (1.0 - v123) - v124;
    v129 = (v228.f32[3] * v122) - (v228.f32[1] * v120);
    v130 = -(v228.f32[2] * v120) - v127;
    v131 = -(v228.f32[1] * v120) - (v228.f32[3] * v122);
    v132 = (v228.f32[0] * v120) + 1.0;
    v133 = v132 - v124;
    v134 = (v228.f32[3] * v120) + v126;
    v135 = v127 - (v228.f32[2] * v120);
    v136 = v126 - v125;
    v137 = v132 - v123;
    *&v138 = (v135 * v235) + ((v233 * v128) + (v234 * v131));
    *&v139 = ((v126 - v125) * v235) + ((v233 * v129) + (v234 * v133));
    *&v140 = ((v128 * v236) + (v131 * v237)) + (v135 * v238);
    *&v141 = ((v129 * v236) + (v133 * v237)) + (v136 * v238);
    *&v142 = ((v128 * v239) + (v131 * v240)) + (v135 * v241);
    *&v143 = ((v129 * v239) + (v133 * v240)) + (v136 * v241);
    v144 = ((v128 * v242) + (v131 * v243)) + (v135 * v244);
    v145 = ((v129 * v242) + (v133 * v243)) + (v136 * v244);
    v146.i64[0] = __PAIR64__(v139, v138);
    v146.i64[1] = COERCE_UNSIGNED_INT(((v233 * v130) + (v134 * v234)) + (v137 * v235));
    v147.i64[0] = __PAIR64__(v141, v140);
    v147.i64[1] = COERCE_UNSIGNED_INT(((v130 * v236) + (v134 * v237)) + (v137 * v238));
    *&v148 = v117 + v144;
    v149.i64[0] = __PAIR64__(v143, v142);
    v149.i64[1] = COERCE_UNSIGNED_INT(((v130 * v239) + (v134 * v240)) + (v137 * v241));
    v150.i64[0] = __PAIR64__(v118 + v145, v148);
    v150.i64[1] = COERCE_UNSIGNED_INT(v119 + (((v130 * v242) + (v134 * v243)) + (v137 * v244)));
    v224[0] = v146;
    v224[1] = v147;
    v224[2] = v149;
    v224[3] = v150;
    v231 = v107;
    if ((v250 + 31) < 0x20)
    {
      goto LABEL_55;
    }

    v216 = v110;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = v250;
    do
    {
      v155 = v154;
      if (v154 >= 0x20uLL)
      {
        v155 = 32;
      }

      if (v155 <= 1)
      {
        v156 = 1;
      }

      else
      {
        v156 = v155;
      }

      if ((v114 - 32 * v152) >= 0x20)
      {
        v157 = 32;
      }

      else
      {
        v157 = v114 - 32 * v152;
      }

      if (32 * v152 != v114)
      {
        v158 = (v222[1] * v222[2]) * v222[3];
        v159 = *(v221 + 92);
        v160 = *(v221 + 40);
        v161 = *(v221 + 48);
        v162 = (v249 + v151);
        v163 = &v262;
        do
        {
          v165 = *v162++;
          v164 = v165;
          if ((v159 & 2) != 0)
          {
            v170 = (v161 + 6 * v164);
            v167 = *v170;
            v168 = v170[1];
            v169 = v170[2];
          }

          else
          {
            v166 = (v161 + 12 * v164);
            v167 = *v166;
            v168 = v166[1];
            v169 = v166[2];
          }

          if (v158 >= 0.0)
          {
            v171 = v169;
          }

          else
          {
            v171 = v168;
          }

          if (v158 < 0.0)
          {
            v168 = v169;
          }

          v172 = v160 + 12 * v167;
          *(v163 - 5) = *v172;
          *(v163 - 3) = *(v172 + 8);
          v173 = v160 + 12 * v168;
          *(v163 - 1) = *v173;
          *v163 = *(v173 + 8);
          v174 = v160 + 12 * v171;
          *(v163 + 1) = *v174;
          v163[3] = *(v174 + 8);
          if (v13)
          {
            v175 = *(v13 + v164);
          }

          else
          {
            v175 = 56;
          }

          *(v163 + 16) = v175;
          v163 += 10;
          --v156;
        }

        while (v156);
      }

      v153 |= calculateMTD(v232, v263, &v252, v224, v223, &v251, v261, v157, 32 * v152++, v282, &v260, &v246, &v248, &v247, &v245, &v231);
      v154 -= 32;
      v151 += 128;
    }

    while (v152 != (v114 + 31) >> 5);
    if ((v153 & 1) == 0)
    {
      goto LABEL_55;
    }

    v176 = *(v249 + 4 * v245);
    v245 = v176;
    v177 = v252;
    v177.i32[3] = 0;
    v178 = vdupq_laneq_s32(v252, 3).u64[0];
    LODWORD(v179) = vmla_f32(0xBF000000BF000000, v178, v178).u32[0];
    v180 = vmulq_n_f32(v246, v179);
    v180.i32[3] = 0;
    v103 = vextq_s8(v177, v177, 8uLL);
    v181 = vextq_s8(v246, v246, 8uLL).u64[0];
    v182 = vext_s8(*v246.f32, v181, 4uLL);
    v183 = vmls_f32(vmul_f32(*v103.i8, *v246.f32), *v252.f32, v181);
    v184 = vext_s8(*v252.f32, *v103.i8, 4uLL);
    v185 = vmls_f32(vmul_f32(*v252.f32, v182), v184, *v246.f32);
    *v186.f32 = vext_s8(v185, v183, 4uLL);
    v186.i64[1] = v185.u32[0];
    v187 = vmlaq_laneq_f32(v180, v186, v252, 3);
    v187.i64[1] = vextq_s8(v187, v187, 8uLL).u32[0];
    v188 = vmulq_f32(v177, v246);
    v188.i64[0] = vpaddq_f32(v188, v188).u64[0];
    v189 = vmulq_n_f32(v248, v179);
    v189.i32[3] = 0;
    v101 = vmlaq_n_f32(v187, v177, vpadd_f32(*v188.f32, *v188.f32).f32[0]);
    v188.i64[0] = vextq_s8(v248, v248, 8uLL).u64[0];
    *v103.i8 = vmls_f32(vmul_f32(*v103.i8, *v248.i8), *v252.f32, *v188.f32);
    *v186.f32 = vmls_f32(vmul_f32(*v252.f32, vext_s8(*v248.i8, *v188.f32, 4uLL)), v184, *v248.i8);
    *v188.f32 = vext_s8(*v186.f32, *v103.i8, 4uLL);
    v188.i64[1] = v186.u32[0];
    v190 = vmlaq_laneq_f32(v189, v188, v252, 3);
    v190.i64[1] = vextq_s8(v190, v190, 8uLL).u32[0];
    v99 = vaddq_f32(v101, v101);
    v191 = vmulq_f32(v177, v248);
    v191.i64[0] = vpaddq_f32(v191, v191).u64[0];
    v102 = vmlaq_n_f32(v190, v177, vpadd_f32(*v191.f32, *v191.f32).f32[0]);
    v102.i64[1] = vextq_s8(v102, v102, 8uLL).u32[0];
    v191.i64[0] = 0x4000000040000000;
    v191.i64[1] = 0x4000000040000000;
    v192 = vmlaq_f32(v253, v191, v102);
    *&v100 = vextq_s8(v192, v192, 8uLL).u32[0];
    v108.i64[0] = v192.i64[0];
    v108.i64[1] = LODWORD(v100);
    if (v231.f32[0] > 0.0)
    {
      break;
    }

    v106 = 0;
    v193 = vmulq_n_f32(v99, v231.f32[0]);
    v193.i32[3] = 0;
    v217 = vsubq_f32(v217, v193);
    v109 = vsubq_f32(v219, v193);
    v104 = 1;
    v7 = v208;
    v11 = v207;
    if ((v216 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v216)
  {
    v192.i32[3] = v99.i32[0];
    v194 = v206;
    *(v206 + 48) = 0;
    *(v206 + 24) = v192;
    *(v206 + 40) = vextq_s8(v99, v99, 4uLL).u64[0];
LABEL_63:
    *(v194 + 16) = v176;
    v203 = 1;
    goto LABEL_65;
  }

  v210 = v108;
  v209 = 1;
LABEL_55:
  v104 = v209;
LABEL_56:
  v108 = v210;
LABEL_57:
  v195 = vmulq_f32(v217, v217);
  v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
  v196 = vpadd_f32(*v195.f32, *v195.f32);
  v197 = vrsqrte_f32(v196);
  v198 = 4;
  do
  {
    v197 = vmul_f32(v197, vrsqrts_f32(vmul_f32(v197, v197), v196));
    --v198;
  }

  while (v198);
  v199 = vbsl_s8(vdup_lane_s32(vceqz_f32(v196), 0), v196, vmul_f32(v196, v197));
  v200 = vrecpe_f32(v199);
  v201 = 4;
  do
  {
    v200 = vmul_f32(v200, vrecps_f32(v199, v200));
    --v201;
  }

  while (v201);
  if (v104)
  {
    v202 = vandq_s8(vdupq_lane_s32(vcgtz_f32(v199), 0), vmulq_n_f32(v217, v200.f32[0]));
    v194 = v206;
    *(v206 + 48) = -v199.f32[0];
    v108.i32[3] = v202.i32[0];
    *(v206 + 24) = v108;
    *(v206 + 40) = vext_s8(*v202.i8, *&vextq_s8(v202, v202, 8uLL), 4uLL);
    v176 = v245;
    goto LABEL_63;
  }

  v203 = 0;
LABEL_65:
  if ((v250 & 0x8000000000000000) == 0 && (v250 & 0x7FFFFFFF00000000) != 0 && v249 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v203;
}

uint64_t physx::Gu::computeConvex_HeightFieldMTD(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v210 = v4;
  v220 = v5;
  v229 = v6;
  v8 = v7;
  v9 = v2;
  v11.i32[0] = v10;
  v13 = v12;
  v224 = 0;
  v296[512] = *MEMORY[0x1E69E9840];
  v274 = v1[1];
  v275 = v1;
  v14 = v1[3].f32[0];
  __asm { FMOV            V0.2S, #1.0 }

  v272 = vrev64_s32(vdiv_f32(_D0, v1[2]));
  v19 = 1.0;
  v273 = 1.0 / v14;
  v271 = 0;
  v223 = *(v2 + 32);
  if (*(v2 + 4) == 1.0 && *(v2 + 8) == 1.0)
  {
    v224 = *(v2 + 12) == 1.0;
  }

  v20 = xmmword_1E3047670;
  v265 = xmmword_1E3047670;
  v266 = xmmword_1E3047670;
  v21 = xmmword_1E3047680;
  v267 = xmmword_1E3060D60;
  v268 = xmmword_1E3047680;
  v269 = 0x3F80000000000000;
  v270 = 0;
  if (v224)
  {
    v22 = 0;
    v3.i32[0] = 0;
    v23 = 0.0;
    v24 = 0;
  }

  else
  {
    v233 = v11;
    physx::Cm::FastVertex2ShapeScaling::init(&v265, (v2 + 4), (v2 + 16));
    v21 = xmmword_1E3047680;
    v20 = xmmword_1E3047670;
    v11 = v233;
    _D0 = __PAIR64__(v266, v265);
    v22 = __PAIR64__(DWORD1(v265), HIDWORD(v265));
    v23 = *(&v265 + 2);
    v3.i32[0] = DWORD1(v266);
    v24 = *(&v266 + 8);
    v19 = *&v267;
  }

  v25 = *(v223 + 64);
  v26 = *(v223 + 56);
  v27 = vadd_f32(vmul_f32(v22, vrev64_s32(v26)), vmul_f32(_D0, v26));
  v28 = (v23 * v26.f32[0]) + vmuls_lane_f32(v3.f32[0], v26, 1);
  *v3.f32 = vadd_f32(v27, vmul_n_f32(v24, v25));
  v3.f32[2] = v28 + (v19 * v25);
  v221 = v3;
  v29.i64[0] = v8[1].i64[0];
  v29.i64[1] = v8[1].u32[2];
  v30 = *(v9 + 4);
  v31 = v30;
  v31.i32[3] = 0;
  v263 = *v8;
  v264 = v29;
  v32 = *(v9 + 16);
  v285 = 0;
  v284 = 0u;
  v283 = 0u;
  v292 = v223 + 32;
  v294 = *(v223 + 72) + 20 * *(v223 + 71);
  v295 = *(v223 + 70);
  v33.i64[0] = *(v223 + 92);
  v33.i64[1] = *(v223 + 100);
  v34 = vmulq_f32(v31, v33);
  *v34.i8 = vpmin_f32(vdup_laneq_s32(v34, 2), *v34.i8);
  v35 = vpmin_f32(*v34.i8, *v34.i8);
  *&v284 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v35.f32[0]);
  *(&v284 + 2) = 0.025 * v35.f32[0];
  v227 = v29;
  if (v224)
  {
    v286 = v20;
    v287 = v21;
    v288 = xmmword_1E30476A0;
    v289 = v20;
    v290 = v21;
    v291 = xmmword_1E30476A0;
  }

  else
  {
    v36 = vrecpeq_f32(v31);
    v37 = 4;
    do
    {
      v36 = vmulq_f32(v36, vrecpsq_f32(v36, v31));
      --v37;
    }

    while (v37);
    *v38.f32 = vdup_lane_s32(*v30.f32, 0);
    v38.i64[1] = v38.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v38, v31)), *v31.f32).u32[0] & 0xFFFFFF) != 0)
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
      __asm { FMOV            V6.2S, #1.0 }

      v55 = vsub_f32(_D6, vdup_lane_s32(vmul_f32(*v32.f32, *v45.f32), 0));
      v56 = vsub_f32(vsub_f32(_D6, v46), v47);
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
      v68 = vmulq_n_f32(v63, v30.f32[0]);
      v68.i32[3] = 0;
      v69 = vmulq_lane_f32(v65, *v30.f32, 1);
      v69.i32[3] = 0;
      v70 = vmulq_laneq_f32(v67, v30, 2);
      v70.i32[3] = 0;
      v71 = vmulq_lane_f32(v68, v56, 1);
      v71.i32[3] = 0;
      v72 = vmulq_n_f32(v69, v45.f32[0]);
      v72.i32[3] = 0;
      v73 = vmulq_n_f32(v70, *v57.i32);
      v73.i32[3] = 0;
      v39 = vaddq_f32(v73, vaddq_f32(v71, v72));
      v74 = vmulq_lane_f32(v68, v58, 1);
      v74.i32[3] = 0;
      v75 = vmulq_n_f32(v69, *v62.i32);
      v75.i32[3] = 0;
      v76 = vmulq_n_f32(v70, *v66.i32);
      v76.i32[3] = 0;
      v40 = vaddq_f32(v76, vaddq_f32(v74, v75));
      v77 = vmulq_lane_f32(v68, v59, 1);
      v77.i32[3] = 0;
      v78 = vmulq_n_f32(v69, *v60.i32);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v70, *v64.i32);
      v79.i32[3] = 0;
      v80 = vmulq_n_f32(v63, v36.f32[0]);
      v80.i32[3] = 0;
      v81 = vmulq_lane_f32(v65, *v36.f32, 1);
      v81.i32[3] = 0;
      v82 = vmulq_laneq_f32(v67, v36, 2);
      v82.i32[3] = 0;
      v83 = vmulq_lane_f32(v80, v56, 1);
      v83.i32[3] = 0;
      v84 = vmulq_n_f32(v81, v45.f32[0]);
      v84.i32[3] = 0;
      v85 = vmulq_n_f32(v82, *v57.i32);
      v85.i32[3] = 0;
      v41 = vaddq_f32(v79, vaddq_f32(v77, v78));
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
      v288 = v41;
      v289 = v86;
      v290 = vaddq_f32(v89, vaddq_f32(v87, v88));
      v291 = vaddq_f32(v92, vaddq_f32(v90, v91));
      v92.i64[0] = *(v223 + 92);
      v92.i64[1] = *(v223 + 100);
      v286 = v39;
      v287 = v40;
      v93 = vmulq_f32(v31, v92);
      *v93.i8 = vpmin_f32(vdup_laneq_s32(v93, 2), *v93.i8);
      v35 = vpmin_f32(*v93.i8, *v93.i8);
    }

    else
    {
      v36.i32[3] = 0;
      v39 = vmulq_f32(v31, v20);
      v40 = vmulq_f32(v31, v21);
      v41 = vmulq_f32(v31, xmmword_1E30476A0);
      v286 = v39;
      v287 = v40;
      v288 = v41;
      v289 = vmulq_f32(v36, v20);
      v290 = vmulq_f32(v36, v21);
      v291 = vmulq_f32(v36, xmmword_1E30476A0);
    }

    v94 = vmulq_f32(v39, 0);
    v94.i32[3] = 0;
    v95 = vmulq_f32(v40, 0);
    v95.i32[3] = 0;
    v96 = vmulq_f32(v41, 0);
    v96.i32[3] = 0;
    v283 = vaddq_f32(v96, vaddq_f32(v95, v94));
  }

  _Q0 = v221;
  _Q0.i32[3] = 0;
  v222 = _Q0;
  v293 = *(v223 + 80);
  __asm { FMOV            V0.2S, #0.25 }

  *_Q0.f32 = vadd_f32(vdup_lane_s32(v11, 0), vmul_f32(v35, *_Q0.f32));
  v219 = _Q0.f32[0];
  v262 = *_Q0.f32;
  v261 = 0;
  v260 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(&v260, 0x80u);
  v258 = 0u;
  v259 = 0u;
  v218 = 0u;
  v257 = 0u;
  v256 = 0xFFFFFFF;
  physx::Gu::getPCMConvexData(&v283, v224, v255);
  v98 = 0;
  v254 = 0;
  v251 = *v8;
  v99 = *v13;
  v100 = *(v13 + 4);
  v107.i32[0] = *(v13 + 8);
  v101 = *(v13 + 12);
  v108.f32[0] = v100 + v100;
  v110.f32[0] = v107.f32[0] + v107.f32[0];
  *v102.i32 = v100 * (v100 + v100);
  v103 = v107.f32[0] * (v107.f32[0] + v107.f32[0]);
  v104 = (v99 + v99) * v100;
  v105 = (v99 + v99) * v107.f32[0];
  *v106.i32 = (v99 + v99) * v101;
  v107.f32[0] = v108.f32[0] * v107.f32[0];
  v108.f32[0] = v108.f32[0] * v101;
  v109 = v110.f32[0] * v101;
  v217 = (1.0 - *v102.i32) - v103;
  v216 = v104 + v109;
  v110.f32[0] = v105 - v108.f32[0];
  v214 = v104 - v109;
  v215 = v105 - v108.f32[0];
  v111 = 1.0 - (v99 * (v99 + v99));
  v112 = v111 - v103;
  v113 = v107.f32[0] + *v106.i32;
  v114 = v105 + v108.f32[0];
  v115 = v107.f32[0] - *v106.i32;
  v116 = v111 - *v102.i32;
  v117 = *(v13 + 16);
  v118 = *(v13 + 20);
  v119 = *(v13 + 24);
  v120 = 1;
  v213 = vneg_f32(0x80000000800000);
  v121 = 0uLL;
  v122 = v227;
  v211 = v9;
  v232 = v13;
  v123 = v13;
  while (1)
  {
    v124 = v120;
    LODWORD(v261) = 0;
    v252 = v122.i64[0];
    v253 = v122.f32[2];
    v264 = v122;
    v278 = &v263;
    v279 = &v286;
    v280 = &v289;
    v125 = v224;
    v226 = v121;
    v228 = v122;
    if (v224)
    {
      v125 = 1;
      v126 = &unk_1F5D216F0;
    }

    else
    {
      v126 = &unk_1F5D21740;
    }

    v281 = v125;
    v277[0].i64[0] = v126;
    v282 = &v283;
    v277[1] = v222;
    physx::Gu::computeOBBAroundConvex(&v240, v9, v223, &v251, *v222.i64, *v122.i64, v107, *v121.i64, v106, v108, v110, v102);
    v248 = v219 + v248;
    v249 = v219 + v249;
    v250 = v219 + v250;
    v127 = (fabsf(v248 * v241) + fabsf(v249 * v243)) + fabsf(v250 * v245);
    v128 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(v240, v248)), vabs_f32(vmul_n_f32(v242, v249))), vabs_f32(vmul_n_f32(v244, v250)));
    v236 = vsub_f32(v246, v128);
    v237 = v247 - v127;
    v238 = vadd_f32(v246, v128);
    v239 = v247 + v127;
    v276[0] = &unk_1F5D219D0;
    v276[1] = &v260;
    physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v272, v13, &v236, v220, v276);
    v129 = v261;
    if (!v261)
    {
      v121 = v226;
      goto LABEL_42;
    }

    v212 = v98;
    v130 = (v251.f32[3] * v251.f32[3]) + -0.5;
    v131 = (((*(&v252 + 1) * -2.0) * v251.f32[1]) + (v251.f32[0] * (*&v252 * -2.0))) + (v251.f32[2] * (v253 * -2.0));
    v132 = (((*&v252 * -2.0) * v130) - (((v251.f32[1] * (v253 * -2.0)) - (v251.f32[2] * (*(&v252 + 1) * -2.0))) * v251.f32[3])) + (v251.f32[0] * v131);
    v133 = (((*(&v252 + 1) * -2.0) * v130) - (((v251.f32[2] * (*&v252 * -2.0)) - (v251.f32[0] * (v253 * -2.0))) * v251.f32[3])) + (v251.f32[1] * v131);
    v134 = (((v253 * -2.0) * v130) - (((v251.f32[0] * (*(&v252 + 1) * -2.0)) - (v251.f32[1] * (*&v252 * -2.0))) * v251.f32[3])) + (v251.f32[2] * v131);
    v135 = -v251.f32[0] - v251.f32[0];
    v136 = -v251.f32[1] - v251.f32[1];
    v137 = -v251.f32[2] - v251.f32[2];
    v138 = -(v251.f32[1] * v136);
    v139 = -(v251.f32[2] * v137);
    v140 = -(v251.f32[2] * v135);
    v141 = v251.f32[3] * v135;
    v142 = -(v251.f32[2] * v136);
    v143 = v251.f32[3] * v136;
    v144 = v251.f32[3] * v137;
    v145 = (1.0 - v138) - v139;
    v146 = (v251.f32[3] * v137) - (v251.f32[1] * v135);
    v147 = v140 - (v251.f32[3] * v136);
    v148 = -(v251.f32[1] * v135) - v144;
    v149 = (v251.f32[0] * v135) + 1.0;
    v150 = v149 - v139;
    v151 = v141 + v142;
    v152 = v140 + v143;
    v153 = v142 - v141;
    v154 = v149 - v138;
    *&v155 = (v215 * (v140 + v143)) + ((v217 * v145) + (v216 * v148));
    *&v156 = (v215 * (v142 - v141)) + ((v217 * v146) + (v216 * v150));
    *&v157 = (v215 * v154) + ((v217 * v147) + (v216 * (v141 + v142)));
    v158 = (v113 * v153) + ((v214 * v146) + (v112 * v150));
    *&v159 = (v113 * v154) + ((v214 * v147) + (v112 * v151));
    v160 = (v116 * v153) + ((v114 * v146) + (v115 * v150));
    *&v161 = (v116 * v154) + ((v114 * v147) + (v115 * v151));
    v162 = (v119 * v153) + ((v117 * v146) + (v118 * v150));
    v163.i64[0] = __PAIR64__(v156, v155);
    v164 = (v119 * v154) + ((v117 * v147) + (v118 * v151));
    v163.i64[1] = v157;
    v165.f32[0] = (v113 * v152) + ((v214 * v145) + (v112 * v148));
    v165.f32[1] = v158;
    v165.i64[1] = v159;
    v166.f32[0] = (v116 * v152) + ((v114 * v145) + (v115 * v148));
    v166.f32[1] = v160;
    v167 = v133 + v162;
    v166.i64[1] = v161;
    v168.i32[3] = 0;
    v168.f32[0] = v132 + ((v119 * v152) + ((v117 * v145) + (v118 * v148)));
    v168.f32[1] = v167;
    v168.f32[2] = v134 + v164;
    v235[0] = v163;
    v235[1] = v165;
    v235[2] = v166;
    v235[3] = v168;
    v254 = v213;
    if ((v261 + 31) < 0x20)
    {
      goto LABEL_41;
    }

    v225 = v124;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v230 = (v261 + 31) >> 5;
    v172 = v261;
    v231 = v261;
    do
    {
      v173 = v172;
      if (v172 >= 0x20uLL)
      {
        v173 = 32;
      }

      if (v173 <= 1)
      {
        v174 = 1;
      }

      else
      {
        v174 = v173;
      }

      v175 = 32 * v170;
      v176 = v129 - 32 * v170;
      if (v176 >= 0x20)
      {
        v176 = 32;
      }

      v234 = v176;
      if (v175 != v129)
      {
        v177 = v276;
        v178 = v169;
        do
        {
          physx::Gu::HeightFieldUtil::getTriangle(&v272, v123, v177, 0, 0, *(v260 + v178), 0, 0);
          *(v177 + 36) = 56;
          v177 += 5;
          v178 += 4;
          --v174;
        }

        while (v174);
      }

      v171 |= calculateMTD(v255, v277, &v263, v235, v229, &v262, v276, v234, v175, v296, &v271, &v257, &v259, &v258, &v256, &v254);
      ++v170;
      v172 -= 32;
      v169 += 128;
      v129 = v231;
    }

    while (v170 != v230);
    if ((v171 & 1) == 0)
    {
      goto LABEL_41;
    }

    v179 = *(v260 + 4 * v256);
    v256 = v179;
    v180 = v263;
    v180.i32[3] = 0;
    v181 = vdupq_laneq_s32(v263, 3).u64[0];
    LODWORD(v182) = vmla_f32(0xBF000000BF000000, v181, v181).u32[0];
    v183 = vmulq_n_f32(v257, v182);
    v183.i32[3] = 0;
    v102 = vextq_s8(v180, v180, 8uLL);
    v184 = vextq_s8(v257, v257, 8uLL).u64[0];
    v185 = vext_s8(*v257.f32, v184, 4uLL);
    v186 = vmls_f32(vmul_f32(*v102.i8, *v257.f32), *v263.f32, v184);
    v187 = vext_s8(*v263.f32, *v102.i8, 4uLL);
    v188 = vmls_f32(vmul_f32(*v263.f32, v185), v187, *v257.f32);
    *v189.f32 = vext_s8(v188, v186, 4uLL);
    v189.i64[1] = v188.u32[0];
    v190 = vmlaq_laneq_f32(v183, v189, v263, 3);
    v190.i64[1] = vextq_s8(v190, v190, 8uLL).u32[0];
    v191 = vmulq_f32(v180, v257);
    v191.i64[0] = vpaddq_f32(v191, v191).u64[0];
    v192 = vmulq_n_f32(v259, v182);
    v192.i32[3] = 0;
    v108 = vmlaq_n_f32(v190, v180, vpadd_f32(*v191.f32, *v191.f32).f32[0]);
    v191.i64[0] = vextq_s8(v259, v259, 8uLL).u64[0];
    *v102.i8 = vmls_f32(vmul_f32(*v102.i8, *v259.i8), *v263.f32, *v191.f32);
    *v189.f32 = vmls_f32(vmul_f32(*v263.f32, vext_s8(*v259.i8, *v191.f32, 4uLL)), v187, *v259.i8);
    *v191.f32 = vext_s8(*v189.f32, *v102.i8, 4uLL);
    v191.i64[1] = v189.u32[0];
    v193 = vmlaq_laneq_f32(v192, v191, v263, 3);
    v193.i64[1] = vextq_s8(v193, v193, 8uLL).u32[0];
    v107 = vaddq_f32(v108, v108);
    v194 = vmulq_f32(v180, v259);
    v194.i64[0] = vpaddq_f32(v194, v194).u64[0];
    v110 = vmlaq_n_f32(v193, v180, vpadd_f32(*v194.f32, *v194.f32).f32[0]);
    v110.i64[1] = vextq_s8(v110, v110, 8uLL).u32[0];
    v194.i64[0] = 0x4000000040000000;
    v194.i64[1] = 0x4000000040000000;
    v195 = vmlaq_f32(v264, v194, v110);
    v106.i64[0] = v195.i64[0];
    v106.i64[1] = vextq_s8(v195, v195, 8uLL).u32[0];
    v218 = v106;
    if (v254.f32[0] > 0.0)
    {
      break;
    }

    v120 = 0;
    v196 = vmulq_n_f32(v107, v254.f32[0]);
    v196.i32[3] = 0;
    v121 = vsubq_f32(v226, v196);
    v122 = vsubq_f32(v228, v196);
    v98 = 1;
    v9 = v211;
    v13 = v232;
    if ((v225 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if (v225)
  {
    v195.i32[3] = v107.i32[0];
    v197 = v210;
    *(v210 + 48) = 0;
    *(v210 + 24) = v195;
    *(v210 + 40) = vextq_s8(v107, v107, 4uLL).u64[0];
LABEL_48:
    *(v197 + 16) = v179;
    v207 = 1;
    goto LABEL_50;
  }

  v212 = 1;
LABEL_41:
  v121 = v226;
  v98 = v212;
LABEL_42:
  v198 = vmulq_f32(v121, v121);
  v198.i64[0] = vpaddq_f32(v198, v198).u64[0];
  v199 = vpadd_f32(*v198.f32, *v198.f32);
  v200 = vrsqrte_f32(v199);
  v201 = 4;
  do
  {
    v200 = vmul_f32(v200, vrsqrts_f32(vmul_f32(v200, v200), v199));
    --v201;
  }

  while (v201);
  v202 = vbsl_s8(vdup_lane_s32(vceqz_f32(v199), 0), v199, vmul_f32(v199, v200));
  v203 = vrecpe_f32(v202);
  v204 = 4;
  do
  {
    v203 = vmul_f32(v203, vrecps_f32(v202, v203));
    --v204;
  }

  while (v204);
  if (v98)
  {
    v205 = vandq_s8(vdupq_lane_s32(vcgtz_f32(v202), 0), vmulq_n_f32(v121, v203.f32[0]));
    v197 = v210;
    *(v210 + 48) = -v202.f32[0];
    v206 = v218;
    v206.i32[3] = v205.i32[0];
    *(v210 + 24) = v206;
    *(v210 + 40) = vext_s8(*v205.i8, *&vextq_s8(v205, v205, 8uLL), 4uLL);
    v179 = v256;
    goto LABEL_48;
  }

  v207 = 0;
LABEL_50:
  if ((v261 & 0x8000000000000000) == 0 && (v261 & 0x7FFFFFFF00000000) != 0 && v260 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v207;
}

float sweepCapsule_SphereGeom(uint64_t a1, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, float32x2_t *a7, float32x2_t *a8, uint64_t a9, __int16 *a10)
{
  v13 = *(a1 + 4) + a4;
  v58 = *(a2 + 16);
  v59 = *(a2 + 24);
  v60 = v13;
  v14 = -a8[1].f32[0];
  v56 = vneg_f32(*a8);
  v57 = v14;
  v55 = *a10;
  if (!physx::Gu::sweepSphereCapsule(&v58, a7, &v56, (a9 + 48), (a9 + 24), (a9 + 36), &v55, a3))
  {
    return result;
  }

  if ((*a10 & 0x200) == 0)
  {
    result = *(a9 + 48);
    if (result == 0.0)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    *(a9 + 20) = v16;
    return result;
  }

  *(a9 + 20) = 3;
  result = *(a9 + 48);
  if (result != 0.0)
  {
    return result;
  }

  v17 = a7->f32[0];
  v18 = a7[1].f32[1];
  if (a7->f32[0] == v18)
  {
    v19 = a7->f32[1];
    v20 = a7[2].f32[0];
    if (v19 == v20)
    {
      v21 = a7[1].f32[0];
      if (v21 == a7[2].f32[1])
      {
        v22 = a7[3].f32[0];
        v23 = v58;
        v24 = v17 - *&v58;
        v25 = v19 - *(&v58 + 1);
        v26 = v59;
        v27 = v60;
        v28 = v21 - v59;
        v29 = ((v25 * v25) + (v24 * v24)) + (v28 * v28);
        v30 = sqrtf(v29);
        if (v29 >= 0.000001)
        {
          v32 = v24 * (1.0 / v30);
          v31 = v25 * (1.0 / v30);
          v33 = v28 * (1.0 / v30);
        }

        else
        {
          v31 = 0.0;
          v32 = 1.0;
          v33 = 0.0;
        }

        *(a9 + 40) = v31;
        *(a9 + 44) = v33;
        *(a9 + 48) = v30 - (v22 + v27);
        *(a9 + 24) = *&v23 + (v27 * v32);
        *(a9 + 28) = *(&v23 + 1) + (v27 * v31);
        result = v26 + (v27 * v33);
        *(a9 + 32) = result;
        *(a9 + 36) = v32;
        return result;
      }
    }
  }

  else
  {
    v20 = a7[2].f32[0];
    v19 = a7->f32[1];
  }

  v34 = v18 - v17;
  v35 = v20 - v19;
  v36 = a7[1].f32[0];
  v37 = a7[2].f32[1] - v36;
  v38 = v58;
  v39 = v59;
  v40 = ((v35 * (*(&v58 + 1) - v19)) + ((*&v58 - v17) * (v18 - v17))) + ((v59 - v36) * v37);
  v41 = 0.0;
  v42 = 0.0;
  if (v40 > 0.0)
  {
    v43 = ((v35 * v35) + (v34 * v34)) + (v37 * v37);
    v42 = 1.0;
    if (v40 < v43)
    {
      v42 = v40 / v43;
    }
  }

  v44 = v60;
  v45 = a7[3].f32[0];
  v46 = v19 + (v35 * v42);
  v47 = v36 + (v37 * v42);
  v48 = (v17 + (v34 * v42)) - *&v58;
  v49 = v46 - *(&v58 + 1);
  v50 = v47 - v59;
  v51 = ((v49 * v49) + (v48 * v48)) + (v50 * v50);
  v52 = sqrtf(v51);
  result = 1.0;
  v53 = v51 < 0.000001;
  v54 = 0.0;
  if (!v53)
  {
    result = v48 * (1.0 / v52);
    v41 = v49 * (1.0 / v52);
    v54 = v50 * (1.0 / v52);
  }

  *(a9 + 40) = v41;
  *(a9 + 44) = v54;
  *(a9 + 48) = v52 - (v44 + v45);
  *(a9 + 24) = *&v38 + (v44 * result);
  *(a9 + 28) = *(&v38 + 1) + (v44 * v41);
  *(a9 + 32) = v39 + (v44 * v54);
  *(a9 + 36) = result;
  return result;
}

uint64_t sweepCapsule_PlaneGeom(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10)
{
  v11 = 0;
  v12 = 0;
  v56 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v14 = v13 + v13;
  v15 = *(a4 + 12);
  v16 = *(a4 + 16);
  v17 = v15 + v15;
  v18 = ((v15 * (v15 + v15)) + -1.0) + (v13 * (v13 + v13));
  v19 = *(a4 + 4);
  v20.i32[0] = vdup_lane_s32(v19, 1).u32[0];
  v20.f32[1] = -v19.f32[0];
  v21 = *(a4 + 24);
  v22 = vmla_n_f32(vmul_n_f32(v19, v14), v20, v17);
  v23 = *(a4 + 20) * v22.f32[0];
  v24 = *(a7 + 24);
  *(a9 + 16) = -1;
  v25 = *a7;
  v52 = *a7;
  v26 = &v52;
  v27 = *(a7 + 12);
  v54 = v27;
  v28 = *(a7 + 4);
  v53 = v28;
  v29 = *(a7 + 16);
  v55 = v29;
  _S4 = v22.i32[1];
  v31 = 3.4028e38;
  v32 = 1;
  do
  {
    v33 = v32;
    if ((((v22.f32[0] * v26[1]) + (*v26 * v18)) + (v26[2] * v22.f32[1])) < v31)
    {
      v31 = ((v22.f32[0] * v26[1]) + (*v26 * v18)) + (v26[2] * v22.f32[1]);
      v12 = v11;
    }

    v11 = 1;
    v26 = &v54;
    v32 = 0;
  }

  while ((v33 & 1) != 0);
  *v10.i32 = (v23 + (v16 * v18)) + (v21 * v22.f32[1]);
  v34 = v24 + a2;
  if ((*a10 & 0x200) != 0)
  {
    if (v31 <= (v34 + *v10.i32))
    {
      *(a9 + 20) = 3;
      v50 = vsub_f32(vmla_lane_f32(vmla_n_f32(vmul_n_f32(vzip1_s32(v28, v29), v22.f32[0]), __PAIR64__(LODWORD(v27), LODWORD(v25)), v18), vzip2_s32(v28, v29), v22, 1), vdup_lane_s32(v10, 0));
      v51 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v50, 1), v50), 0), v28, v29);
      if (v50.f32[0] >= v50.f32[1])
      {
        v25 = v27;
        v50.f32[0] = v50.f32[1];
      }

      *(a9 + 36) = v18;
      *(a9 + 40) = v22;
      *(a9 + 48) = v50.f32[0] - v24;
      *(a9 + 24) = v25 - (v18 * v50.f32[0]);
      *(a9 + 28) = vsub_f32(v51, vmul_n_f32(v22, v50.f32[0]));
      return 1;
    }
  }

  else if ((*a10 & 0x10) == 0 && v31 <= (v34 + *v10.i32))
  {
    *(a9 + 20) = 2;
    *(a9 + 48) = 0;
    v35 = -*(a8 + 8);
    *(a9 + 36) = vneg_f32(*a8);
    *(a9 + 44) = v35;
    return 1;
  }

  v36 = ((v22.f32[0] * *(a8 + 4)) + (*a8 * v18)) + (*(a8 + 8) * v22.f32[1]);
  if (fabsf(v36) < 0.0000001)
  {
    return 0;
  }

  v37 = &v52 + 3 * v12;
  v38 = vmul_n_f32(v22, v34);
  v39 = *v37 - (v18 * v34);
  _D6 = vsub_f32(*(v37 + 1), v38);
  __asm { FMLA            S7, S4, V6.S[1] }

  v46 = -(_S7 - *v10.i32) / v36;
  *(a9 + 48) = v46;
  v47 = vadd_f32(_D6, vmul_n_f32(*(a8 + 4), v46));
  *(a9 + 24) = v39 + (*a8 * v46);
  *(a9 + 28) = v47;
  if (v46 <= 0.0 || v46 > a1)
  {
    return 0;
  }

  *(a9 + 36) = v18;
  *(a9 + 40) = v22;
  *(a9 + 20) = 3;
  return 1;
}

uint64_t sweepCapsule_CapsuleGeom(uint64_t a1, float *a2, float a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x2_t *a8, uint64_t a9, __int16 *a10)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = v12 + v12;
  v16 = a2[2];
  v15 = a2[3];
  v17 = v15 + v15;
  v18 = ((v15 * (v15 + v15)) + -1.0) + (v12 * (v12 + v12));
  v19 = (v14 * v13) + (v16 * (v15 + v15));
  v20 = (v14 * v16) - (v13 * v17);
  v22 = *(a1 + 4);
  v21 = *(a1 + 8);
  v23 = v18 * v21;
  v24 = v21 * v19;
  v25 = v20 * v21;
  v26 = a2[4];
  v27 = a2[5];
  v28 = a2[6];
  v46.f32[0] = v26 + v23;
  v46.f32[1] = v27 + v24;
  v47 = v25 + v28;
  v48.f32[0] = v26 - v23;
  v48.f32[1] = v27 - v24;
  v49 = v28 - v25;
  v50 = v22 + a4;
  v29 = *a10;
  v45 = 0;
  v30 = -a8[1].f32[0];
  v54 = vneg_f32(*a8);
  v55 = v30;
  v31 = physx::Gu::sweepCapsuleCapsule(a7, &v46, &v54, (a9 + 48), (a9 + 24), (a9 + 36), v29, &v45, a3);
  if (v31)
  {
    v32 = v45;
    *(a9 + 20) = v45;
    if ((v29 & 0x200) != 0 && *(a9 + 48) == 0.0)
    {
      *(a9 + 20) = v32 | 1;
      v51 = 0;
      v33 = *(a7 + 20) - *(a7 + 8);
      v54 = vsub_f32(*(a7 + 12), *a7);
      v55 = v33;
      v52 = vsub_f32(v48, v46);
      v53 = v49 - v47;
      physx::Gu::distanceSegmentSegmentSquared(a7, &v54, &v46, &v52, &v51 + 1, &v51);
      v34 = *(a7 + 24);
      v35 = v50;
      v36 = v47 + (*&v51 * (v49 - v47));
      v37 = vadd_f32(v46, vmul_n_f32(vsub_f32(v48, v46), *&v51));
      v38 = vsub_f32(vadd_f32(*a7, vmul_n_f32(vsub_f32(*(a7 + 12), *a7), *(&v51 + 1))), v37);
      v39 = (*(a7 + 8) + (*(&v51 + 1) * (*(a7 + 20) - *(a7 + 8)))) - v36;
      v40 = (COERCE_FLOAT(vmul_f32(v38, v38).i32[1]) + (v38.f32[0] * v38.f32[0])) + (v39 * v39);
      v41 = sqrtf(v40);
      if (v40 >= 0.000001)
      {
        v42 = vmul_n_f32(v38, 1.0 / v41);
        v43 = v39 * (1.0 / v41);
      }

      else
      {
        v42 = 1065353216;
        v43 = 0.0;
      }

      *(a9 + 36) = v42;
      *(a9 + 44) = v43;
      *(a9 + 48) = v41 - (v34 + v35);
      *(a9 + 24) = vadd_f32(v37, vmul_n_f32(v42, v35));
      *(a9 + 32) = v36 + (v35 * v43);
    }
  }

  return v31;
}

BOOL sweepCapsule_ConvexGeom(uint64_t a1, float32x4_t *a2, uint64_t a3, int8x8_t *a4, uint64_t a5, float32x2_t *a6, uint64_t a7, __int16 *a8, double a9, float a10)
{
  v15 = 0;
  v234 = *MEMORY[0x1E69E9840];
  *v16.f32 = *a6;
  v16.i32[2] = a6[1].i32[0];
  v17 = *(a1 + 32);
  *v18.f32 = a4[2];
  v18.i32[2] = a4[3].i32[0];
  v210 = 0uLL;
  v18.i64[1] = v18.u32[2];
  v19 = *a2;
  v20.i64[0] = a2[1].i64[0];
  v20.i64[1] = a2[1].u32[2];
  v21 = vnegq_f32(*a2);
  v22 = vdupq_laneq_s32(*a2, 3);
  v202 = v20;
  v23 = vsubq_f32(v18, v20);
  v24 = v21;
  v24.i32[3] = 0;
  v25 = vmla_f32(0xBF000000BF000000, *v22.f32, *v22.f32);
  v26 = vmulq_n_f32(v23, *v25.i32);
  v26.i32[3] = 0;
  v27 = vextq_s8(v24, v24, 8uLL).u64[0];
  v28 = vext_s8(*v21.f32, v27, 4uLL);
  v29 = vmls_f32(vmul_f32(*v21.f32, *&vextq_s8(v23, v23, 4uLL)), v28, *v23.f32);
  *v30.f32 = vext_s8(v29, vmls_f32(vmul_f32(v27, *v23.f32), *v21.f32, *&vextq_s8(v23, v23, 8uLL)), 4uLL);
  v30.i64[1] = v29.u32[0];
  v31 = vmlaq_laneq_f32(v26, v30, *a2, 3);
  v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
  v32 = vmulq_f32(v24, v23);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vmlaq_n_f32(v31, v24, vpadd_f32(*v32.f32, *v32.f32).f32[0]);
  v34 = vaddq_f32(v33, v33);
  v34.i32[3] = 0;
  v35 = *a4->i8;
  v35.i32[3] = 0;
  v36 = vmulq_f32(v35, v24);
  v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
  v37 = vmulq_laneq_f32(v35, *a2, 3);
  v35.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  v38 = vmls_f32(vmul_f32(vext_s8(*a4, *v35.f32, 4uLL), *v21.f32), v28, *a4);
  *v39.f32 = vext_s8(v38, vmls_f32(vmul_f32(*a4, v27), *v21.f32, *v35.f32), 4uLL);
  *&v39.u32[2] = v38;
  v40 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v24, *a4->i8, 3), v37), v39);
  *v21.f32 = vdup_lane_s32(*v40.f32, 1);
  *v24.f32 = vdup_laneq_s32(v40, 2);
  v41 = vsub_f32(vmul_f32(*&vextq_s8(*a4->i8, *a4->i8, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vpadd_f32(*v36.f32, *v36.f32));
  v42 = vaddq_f32(v40, v40);
  *v36.f32 = vdup_lane_s32(*v42.f32, 1);
  *v37.f32 = vdup_laneq_s32(v42, 2);
  *v40.f32 = vdup_lane_s32(vmul_f32(*v40.f32, *v42.f32), 0);
  v43 = vmul_lane_f32(*v21.f32, *v42.f32, 1);
  v44 = vmul_laneq_f32(*v24.f32, v42, 2);
  *v21.f32 = vmul_n_f32(*v21.f32, v42.f32[0]);
  *v23.f32 = vmul_n_f32(*v24.f32, v42.f32[0]);
  v45 = vmul_lane_f32(vdup_lane_s32(*v42.f32, 0), v41, 1);
  *v42.f32 = vmul_lane_f32(*v24.f32, *v42.f32, 1);
  *v36.f32 = vmul_lane_f32(*v36.f32, v41, 1);
  v46 = vmul_lane_f32(*v37.f32, v41, 1);
  __asm { FMOV            V4.2S, #1.0 }

  *v40.f32 = vsub_f32(_D4, *v40.f32);
  *v37.f32 = vext_s8(vsub_f32(vsub_f32(_D4, v43), v44), vadd_f32(*v21.f32, v46), 4uLL);
  *&v37.u32[2] = vsub_f32(*v23.f32, *v36.f32);
  *v52.f32 = vext_s8(vsub_f32(*v21.f32, v46), vsub_f32(*v40.f32, v44), 4uLL);
  *&v52.u32[2] = vadd_f32(*v42.f32, v45);
  v54 = vsub_f32(*v40.f32, v43);
  *v53.f32 = vext_s8(vadd_f32(*v23.f32, *v36.f32), vsub_f32(*v42.f32, v45), 4uLL);
  *&v53.u32[2] = v54;
  v54.i32[0] = *(a5 + 24);
  v55 = *(a1 + 4);
  v56 = v55;
  v56.i32[3] = 0;
  v57 = vmulq_n_f32(xmmword_1E3047670, *(a3 + 8));
  v58 = vmulq_n_f32(v37, v57.f32[0]);
  v58.i32[3] = 0;
  v59 = vmulq_lane_f32(v52, *v57.f32, 1);
  v59.i32[3] = 0;
  v60 = vmulq_laneq_f32(v53, v57, 2);
  v60.i32[3] = 0;
  v61 = *(a1 + 16);
  v62 = vaddq_f32(v60, vaddq_f32(v58, v59));
  v229 = 4;
  v225 = v34;
  v233 = vdup_lane_s32(v54, 0);
  v231 = vaddq_f32(v62, v34);
  v232 = vsubq_f32(v34, v62);
  v226 = v54.i32[0];
  v227 = v54.i32[0];
  v228 = v54.i32[0];
  v230 = 1;
  if (v55.f32[0] == 1.0 && v55.f32[1] == 1.0)
  {
    v15 = v55.f32[2] == 1.0;
  }

  v16.i32[3] = 0;
  v63 = 0uLL;
  v214 = 0;
  v212 = 0u;
  v213 = 0u;
  v64 = *(v17 + 72) + 20 * *(v17 + 71);
  v221 = v17 + 32;
  v223 = v64;
  v224 = *(v17 + 70);
  v65.i64[0] = *(v17 + 92);
  v65.i64[1] = *(v17 + 100);
  v66 = vmulq_f32(v56, v65);
  *v66.i8 = vpmin_f32(vdup_laneq_s32(v66, 2), *v66.i8);
  *v66.i32 = vpmin_f32(*v66.i8, *v66.i8).f32[0];
  *&v213 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v66.i32);
  *(&v213 + 2) = 0.025 * *v66.i32;
  if (v15)
  {
    v215 = xmmword_1E3047670;
    v216 = xmmword_1E3047680;
    v217 = xmmword_1E30476A0;
    v218 = xmmword_1E3047670;
    v219 = xmmword_1E3047680;
    v220 = xmmword_1E30476A0;
  }

  else
  {
    v67 = vrecpeq_f32(v56);
    v68 = 4;
    do
    {
      v67 = vmulq_f32(v67, vrecpsq_f32(v67, v56));
      --v68;
    }

    while (v68);
    *v69.f32 = vdup_lane_s32(*v55.f32, 0);
    v69.i64[1] = v69.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v69, v56)), *&a9).u32[0] & 0xFFFFFF) != 0)
    {
      v75 = vdup_lane_s32(*v61.f32, 1);
      v76 = vdup_laneq_s32(v61, 2);
      v77 = vdup_laneq_s32(v61, 3);
      v78 = vaddq_f32(v61, v61);
      v79 = vmul_lane_f32(v75, *v78.f32, 1);
      v80 = vmul_laneq_f32(v76, v78, 2);
      v81 = vmul_n_f32(v75, v78.f32[0]);
      v82 = vmul_n_f32(v76, v78.f32[0]);
      v83 = vmul_n_f32(v77, v78.f32[0]);
      v84 = vmul_lane_f32(v76, *v78.f32, 1);
      v85 = vmul_lane_f32(v77, *v78.f32, 1);
      v86 = vmul_laneq_f32(v77, v78, 2);
      v87 = vsub_f32(_D4, vdup_lane_s32(vmul_f32(*v61.f32, *v78.f32), 0));
      *v78.f32 = vsub_f32(vsub_f32(_D4, v79), v80);
      v88 = vadd_f32(v81, v86);
      v89 = vsub_f32(v82, v85);
      v90 = vsub_f32(v81, v86);
      v91 = vadd_f32(v82, v85);
      v92 = vsub_f32(v84, v83);
      v93 = vext_s8(v91, v92, 4uLL);
      v94 = vsub_f32(v87, v80);
      *v95.f32 = vext_s8(*v78.f32, *&vdupq_lane_s32(v90, 1), 4uLL);
      v95.i64[1] = vdup_lane_s32(v93, 0).u32[0];
      v96 = vsub_f32(v87, v79);
      *v97.f32 = vext_s8(*&vdupq_lane_s32(v88, 0), v94, 4uLL);
      v97.i64[1] = vdup_lane_s32(v93, 1).u32[0];
      v98 = vadd_f32(v84, v83);
      *v99.f32 = vext_s8(*&vdupq_lane_s32(v89, 0), v98, 4uLL);
      v99.i64[1] = vdup_lane_s32(v96, 0).u32[0];
      v100 = vmulq_n_f32(v95, v55.f32[0]);
      v100.i32[3] = 0;
      v101 = vmulq_lane_f32(v97, *v55.f32, 1);
      v101.i32[3] = 0;
      v102 = vmulq_laneq_f32(v99, v55, 2);
      v102.i32[3] = 0;
      v103 = vmulq_lane_f32(v100, *v78.f32, 1);
      v103.i32[3] = 0;
      v104 = vmulq_n_f32(v101, *v88.i32);
      v104.i32[3] = 0;
      v105 = vmulq_n_f32(v102, *v89.i32);
      v105.i32[3] = 0;
      v70 = vaddq_f32(v105, vaddq_f32(v103, v104));
      v106 = vmulq_lane_f32(v100, v90, 1);
      v106.i32[3] = 0;
      v107 = vmulq_n_f32(v101, *v94.i32);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v102, *v98.i32);
      v108.i32[3] = 0;
      v71 = vaddq_f32(v108, vaddq_f32(v106, v107));
      v109 = vmulq_lane_f32(v100, v91, 1);
      v109.i32[3] = 0;
      v110 = vmulq_n_f32(v101, *v92.i32);
      v110.i32[3] = 0;
      v111 = vmulq_n_f32(v102, *v96.i32);
      v111.i32[3] = 0;
      v72 = vaddq_f32(v111, vaddq_f32(v109, v110));
      v215 = v70;
      v216 = v71;
      v112 = vmulq_n_f32(v95, v67.f32[0]);
      v112.i32[3] = 0;
      v113 = vmulq_lane_f32(v97, *v67.f32, 1);
      v113.i32[3] = 0;
      v114 = vmulq_laneq_f32(v99, v67, 2);
      v114.i32[3] = 0;
      v115 = vmulq_lane_f32(v112, *v78.f32, 1);
      v115.i32[3] = 0;
      v116 = vmulq_n_f32(v113, *v88.i32);
      v116.i32[3] = 0;
      v117 = vmulq_n_f32(v114, *v89.i32);
      v117.i32[3] = 0;
      v118 = vaddq_f32(v117, vaddq_f32(v115, v116));
      v119 = vmulq_lane_f32(v112, v90, 1);
      v119.i32[3] = 0;
      v120 = vmulq_n_f32(v113, *v94.i32);
      v120.i32[3] = 0;
      v121 = vmulq_n_f32(v114, *v98.i32);
      v121.i32[3] = 0;
      v122 = vmulq_lane_f32(v112, v91, 1);
      v122.i32[3] = 0;
      v123 = vmulq_n_f32(v113, *v92.i32);
      v123.i32[3] = 0;
      v124 = vmulq_n_f32(v114, *v96.i32);
      v124.i32[3] = 0;
      v73 = vaddq_f32(v121, vaddq_f32(v119, v120));
      v74 = vaddq_f32(v124, vaddq_f32(v122, v123));
      v217 = v72;
      v218 = v118;
    }

    else
    {
      v67.i32[3] = 0;
      v70 = vmulq_f32(v56, xmmword_1E3047670);
      v71 = vmulq_f32(v56, xmmword_1E3047680);
      v72 = vmulq_f32(v56, xmmword_1E30476A0);
      v215 = v70;
      v216 = v71;
      v73 = vmulq_f32(v67, xmmword_1E3047680);
      v74 = vmulq_f32(v67, xmmword_1E30476A0);
      v217 = v72;
      v218 = vmulq_f32(v67, xmmword_1E3047670);
    }

    v219 = v73;
    v220 = v74;
    v125 = vmulq_f32(v70, 0);
    v125.i32[3] = 0;
    v126 = vmulq_f32(v71, 0);
    v126.i32[3] = 0;
    v127 = vmulq_f32(v72, 0);
    v127.i32[3] = 0;
    v63 = vaddq_f32(v127, vaddq_f32(v126, v125));
    v212 = v63;
  }

  v198 = v16;
  v128 = vmulq_n_f32(v16, *&a9);
  v128.i32[3] = 0;
  v129 = vnegq_f32(v128);
  v130 = v129;
  v130.i32[3] = 0;
  v131 = v19;
  v131.i32[3] = 0;
  v132 = vmulq_n_f32(v130, *v25.i32);
  v132.i32[3] = 0;
  v133 = vextq_s8(v131, v131, 8uLL).u64[0];
  v134 = vextq_s8(v130, v130, 8uLL).u64[0];
  v135 = vext_s8(*v19.i8, v133, 4uLL);
  v200 = v133;
  v201 = v131;
  v136 = vmls_f32(vmul_f32(*v19.i8, vext_s8(*v129.f32, v134, 4uLL)), v135, *v129.f32);
  *v129.f32 = vext_s8(v136, vmls_f32(vmul_f32(*v129.f32, v133), *v19.i8, v134), 4uLL);
  v129.i64[1] = v136.u32[0];
  v137 = vmlsq_f32(v132, v22, v129);
  v137.i64[1] = vextq_s8(v137, v137, 8uLL).u32[0];
  v138 = vmulq_f32(v130, v131);
  v138.i64[0] = vpaddq_f32(v138, v138).u64[0];
  v139 = vmlaq_n_f32(v137, v131, vpadd_f32(*v138.f32, *v138.f32).f32[0]);
  v140 = vaddq_f32(v139, v139);
  v140.i32[3] = 0;
  v222 = *(v17 + 80);
  v209 = v140;
  v141 = *a8;
  v208 = 0;
  v206 = 0u;
  v207 = 0u;
  v205[1] = &v225;
  v204[1] = &v212;
  v205[0] = &unk_1F5D217B8;
  v204[0] = &unk_1F5D21818;
  v142 = vsubq_f32(v34, v63);
  v203 = v142;
  v142.f32[0] = *v54.i32 + a10;
  v143 = physx::Gu::gjkRaycastPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v205, v204, &v203, &v210, &v209, &v208, &v206, &v207, *v142.f32, (v141 & 0x200) != 0);
  if (v143)
  {
    v144 = vdupq_lane_s32(v25, 0);
    *(a7 + 20) = 2;
    v145 = v208;
    if (v208.f32[0] <= 0.0)
    {
      if ((v141 & 0x200) != 0)
      {
        v171 = v207;
        v172 = vmulq_n_f32(v207, *v25.i32);
        v172.i32[3] = 0;
        v173 = vextq_s8(v171, v171, 8uLL).u64[0];
        v174 = vmls_f32(vmul_f32(*v19.i8, vext_s8(*v207.i8, v173, 4uLL)), v135, *v207.i8);
        *v175.f32 = vext_s8(v174, vmls_f32(vmul_f32(v200, *v207.i8), *v19.i8, v173), 4uLL);
        v175.i64[1] = v174.u32[0];
        v176 = vmlaq_f32(v172, v22, v175);
        *(a7 + 20) = 3;
        v176.i64[1] = vextq_s8(v176, v176, 8uLL).u32[0];
        v177 = vmulq_f32(v201, v171);
        v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
        v178 = vmlaq_n_f32(v176, v201, vpadd_f32(*v177.f32, *v177.f32).f32[0]);
        v178.i64[1] = vextq_s8(v178, v178, 8uLL).u32[0];
        v177.i64[0] = 0x4000000040000000;
        v177.i64[1] = 0x4000000040000000;
        v179 = vmlaq_f32(v202, v177, v178);
        v180 = vmulq_f32(v144, v206);
        v180.i32[3] = 0;
        v178.i64[0] = vextq_s8(v206, v206, 8uLL).u64[0];
        *v175.f32 = vmls_f32(vmul_f32(*v19.i8, vext_s8(*v206.f32, *v178.f32, 4uLL)), v135, *v206.f32);
        *v178.f32 = vext_s8(*v175.f32, vmls_f32(vmul_f32(v200, *v206.f32), *v19.i8, *v178.f32), 4uLL);
        v178.i64[1] = v175.u32[0];
        v181 = vmlaq_f32(v180, v22, v178);
        v181.i64[1] = vextq_s8(v181, v181, 8uLL).u32[0];
        v182 = vmulq_f32(v201, v206);
        v185 = vpaddq_f32(v182, v182).u64[0];
        v183 = vmlaq_n_f32(v181, v201, vpadd_f32(v185, v185).f32[0]);
        v184 = vaddq_f32(v183, v183);
        v184.i32[3] = 0;
        v185.i32[0] = vextq_s8(v179, v179, 8uLL).u32[0];
        v186 = vmulq_f32(v184, v184);
        v186.i64[0] = vpaddq_f32(v186, v186).u64[0];
        v187 = vpadd_f32(*v186.f32, *v186.f32);
        v188 = vrsqrte_f32(v187);
        v189 = 4;
        do
        {
          v188 = vmul_f32(v188, vrsqrts_f32(vmul_f32(v188, v188), v187));
          --v189;
        }

        while (v189);
        v185.i32[1] = 0;
        v190 = vbsl_s8(vdup_lane_s32(vceqz_f32(v187), 0), v187, vmul_f32(v187, v188));
        v191 = vrecpe_f32(v190);
        v192 = 4;
        do
        {
          v191 = vmul_f32(v191, vrecps_f32(v190, v191));
          --v192;
        }

        while (v192);
        *&v179.u32[2] = v185;
        v193 = vmulq_n_f32(v184, v191.f32[0]);
        v194 = v193;
        v194.i32[3] = 0;
        v195 = vmlsq_lane_f32(v179, v194, v145, 0);
        *(a7 + 40) = vextq_s8(v193, v193, 4uLL).u64[0];
        v195.i32[3] = v193.i32[0];
        *(a7 + 24) = v195;
        *(a7 + 48) = v145.i32[0];
      }

      else
      {
        *(a7 + 48) = 0;
        v196 = -a6[1].f32[0];
        *(a7 + 36) = vneg_f32(*a6);
        *(a7 + 44) = v196;
      }

      *(a7 + 16) = -1;
    }

    else
    {
      v146 = vmulq_n_f32(v207, *v25.i32);
      v146.i32[3] = 0;
      v147 = vextq_s8(v207, v207, 8uLL).u64[0];
      v148 = vmls_f32(vmul_f32(*v19.i8, vext_s8(*v207.i8, v147, 4uLL)), v135, *v207.i8);
      *v149.f32 = vext_s8(v148, vmls_f32(vmul_f32(v200, *v207.i8), *v19.i8, v147), 4uLL);
      v149.i64[1] = v148.u32[0];
      v150 = vmlaq_f32(v146, v22, v149);
      v150.i64[1] = vextq_s8(v150, v150, 8uLL).u32[0];
      v151 = vmulq_f32(v201, v207);
      v151.i64[0] = vpaddq_f32(v151, v151).u64[0];
      v152 = vmlaq_n_f32(v150, v201, vpadd_f32(*v151.f32, *v151.f32).f32[0]);
      v152.i64[1] = vextq_s8(v152, v152, 8uLL).u32[0];
      v151.i64[0] = 0x4000000040000000;
      v151.i64[1] = 0x4000000040000000;
      v153 = vmlaq_f32(v202, v151, v152);
      v154 = vextq_s8(v153, v153, 8uLL).u32[0];
      v155 = vmulq_f32(v144, v206);
      v155.i32[3] = 0;
      v152.i64[0] = vextq_s8(v206, v206, 8uLL).u64[0];
      v156 = vmls_f32(vmul_f32(*v19.i8, vext_s8(*v206.f32, *v152.f32, 4uLL)), v135, *v206.f32);
      *v152.f32 = vext_s8(v156, vmls_f32(vmul_f32(v200, *v206.f32), *v19.i8, *v152.f32), 4uLL);
      v152.i64[1] = v156.u32[0];
      v157 = vmlaq_f32(v155, v22, v152);
      v157.i64[1] = vextq_s8(v157, v157, 8uLL).u32[0];
      v158 = vmulq_f32(v201, v206);
      v158.i64[0] = vpaddq_f32(v158, v158).u64[0];
      v159 = vmlaq_n_f32(v157, v201, vpadd_f32(*v158.f32, *v158.f32).f32[0]);
      v160 = vaddq_f32(v159, v159);
      v160.i32[3] = 0;
      v161 = vmulq_f32(v160, v160);
      v161.i64[0] = vpaddq_f32(v161, v161).u64[0];
      v162 = vpadd_f32(*v161.f32, *v161.f32);
      v163 = vrsqrte_f32(v162);
      *(a7 + 20) = 3;
      v164 = 4;
      do
      {
        v163 = vmul_f32(v163, vrsqrts_f32(vmul_f32(v163, v163), v162));
        --v164;
      }

      while (v164);
      v165 = vbsl_s8(vdup_lane_s32(vceqz_f32(v162), 0), v162, vmul_f32(v162, v163));
      v166 = vrecpe_f32(v165);
      v167 = 4;
      do
      {
        v166 = vmul_f32(v166, vrecps_f32(v165, v166));
        --v167;
      }

      while (v167);
      v153.i64[1] = v154;
      LODWORD(v168) = vmul_f32(*&a9, v145).u32[0];
      v169 = vmulq_n_f32(v160, v166.f32[0]);
      v170 = vmlaq_n_f32(v153, v198, v168);
      v170.i32[3] = v169.i32[0];
      *(a7 + 24) = v170;
      *(a7 + 40) = vextq_s8(v169, v169, 4uLL).u64[0];
      *(a7 + 48) = v168;
      if ((*(a8 + 1) & 4) != 0)
      {
        v211 = *(v17 + 71);
        *(a7 + 16) = computeSweepConvexPlane(a1, v17 + 32, &v211, a2->f32, (a7 + 24), a6);
        *(a7 + 20) |= 0x400u;
      }
    }
  }

  return v143;
}

BOOL physx::Gu::gjkRaycastPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x2_t *a6, float32x4_t *a7, int8x16_t *a8, int32x2_t a9, char a10)
{
  v245 = *MEMORY[0x1E69E9840];
  v14 = *a3;
  v221 = vmlaq_f32(*a4, 0, *a5);
  v15 = vmulq_f32(v14, v14);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v232 = 1;
  v16 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v15.f32, *v15.f32), 0x3400000034000000), 0)), v14, xmmword_1E3047670);
  v17 = vmulq_f32(v16, v16);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  v18 = vpadd_f32(*v17.f32, *v17.f32);
  v19 = vrsqrte_f32(v18);
  v20 = 4;
  do
  {
    v19 = vmul_f32(v19, vrsqrts_f32(vmul_f32(v19, v19), v18));
    --v20;
  }

  while (v20);
  v21 = vextq_s8(v221, v221, 8uLL).u32[0];
  v22 = vbsl_s8(vdup_lane_s32(vceqz_f32(v18), 0), v18, vmul_f32(v18, v19));
  v23 = vrecpe_f32(v22);
  v24 = 4;
  do
  {
    v23 = vmul_f32(v23, vrecps_f32(v22, v23));
    --v24;
  }

  while (v24);
  v25 = vdup_lane_s32(a9, 0);
  v26.i64[0] = v221.i64[0];
  v26.i64[1] = v21;
  v222 = v26;
  v27 = vmulq_n_f32(v16, v23.f32[0]);
  v27.i32[3] = 0;
  v231 = v27;
  v28 = vnegq_f32(v27);
  v28.i32[3] = 0;
  v29 = *(a1 + 8);
  v30 = v29[3];
  v31 = v29[4];
  v32 = vmulq_f32(v28, v30);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vmulq_f32(v28, v31);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v227 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v32.f32, *v32.f32), vpadd_f32(*v33.f32, *v33.f32)), 0)), v30, v31);
  *v34.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v231);
  v35 = v34;
  v36 = vsubq_f32(v227, v34);
  v235 = v36;
  v236 = 0u;
  memset(v237, 0, sizeof(v237));
  v242 = v227;
  v243 = 0u;
  memset(v244, 0, sizeof(v244));
  v37 = vnegq_f32(v36);
  v37.i32[3] = 0;
  v239 = v35;
  v240 = 0u;
  memset(v241, 0, sizeof(v241));
  v38 = (*(a2 + 8) + 24);
  *v35.f32 = vld1_dup_f32(v38);
  *v35.f32 = vmul_f32(vmin_f32(*v35.f32, 0), vdup_n_s32(0x3DCCCCCDu));
  v39 = vadd_f32(v25, *v35.f32);
  v40 = vmul_f32(*v35.f32, *v35.f32);
  v41 = vmul_f32(v39, v39);
  v42 = vmulq_f32(v37, v37);
  v43 = vpaddq_f32(v42, v42);
  v44 = vpadd_f32(*v43.f32, *v43.f32);
  v213 = v40;
  *v43.f32 = vcgt_f32(v44, v40);
  v45 = vdupq_lane_s32(*v43.f32, 0);
  v43.i32[0] = -1;
  v211 = v43;
  v46 = vneg_f32(0x80000000800000);
  v47 = v36;
  v48.i64[0] = -1;
  v48.i64[1] = -1;
  v49 = v37;
  v217 = v37;
  v218 = 0;
  while (1)
  {
    v50 = v36;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    *v51.i8 = vmovn_s32(vceqq_s32(v45, v51));
    v52 = vuzp1_s8(*v51.i8, *v51.i8).u32[0];
    if (v52 != -1)
    {
      break;
    }

    v53 = vmulq_f32(v49, v49);
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
    v223 = v50;
    v57 = vbsl_s8(vdup_lane_s32(vceqz_f32(v54), 0), v54, vmul_f32(v54, v55));
    v58 = vrecpe_f32(v57);
    v59 = 4;
    do
    {
      v58 = vmul_f32(v58, vrecps_f32(v57, v58));
      --v59;
    }

    while (v59);
    v220 = v49;
    v60 = vmulq_n_f32(v49, v58.f32[0]);
    v60.i32[3] = 0;
    v224 = v60;
    v61 = vnegq_f32(v60);
    v61.i32[3] = 0;
    v230 = v61;
    v62 = *(a1 + 8);
    v63 = v62[3];
    v64 = v62[4];
    v65 = vmulq_f32(v60, v63);
    v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
    v66 = vmulq_f32(v60, v64);
    v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
    v228 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v65.f32, *v65.f32), vpadd_f32(*v66.f32, *v66.f32)), 0)), v63, v64);
    *v67.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v230);
    v68 = v228;
    v69 = vaddq_f32(v222, v67);
    v36 = vsubq_f32(v228, v69);
    v70 = vnegq_f32(v36);
    v70.i32[3] = 0;
    v71 = vmulq_f32(v224, v70);
    v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
    *v72.f32 = vsub_f32(vpadd_f32(*v71.f32, *v71.f32), v39);
    if (v72.f32[0] > 0.0)
    {
      v73 = *a5;
      v74 = vmulq_f32(v224, *a5);
      v74.i64[0] = vpaddq_f32(v74, v74).u64[0];
      *v74.f32 = vpadd_f32(*v74.f32, *v74.f32);
      if (v74.f32[0] >= 0.0)
      {
        goto LABEL_70;
      }

      v75 = vrecpe_f32(*v74.f32);
      v76 = 4;
      do
      {
        v75 = vmul_f32(v75, vrecps_f32(*v74.f32, v75));
        --v76;
      }

      while (v76);
      *v74.f32 = v218;
      v77 = vsub_f32(v218, vmul_f32(*v72.f32, v75));
      *v72.f32 = vcgt_f32(v77, v218);
      if (v72.i8[0])
      {
        if (v77.f32[0] > 1.0)
        {
LABEL_70:
          v187 = 0;
          v188 = 0uLL;
          v184 = 0uLL;
          goto LABEL_76;
        }

        v78 = vmlaq_n_f32(*a4, v73, v77.f32[0]);
        v78.i64[1] = vextq_s8(v78, v78, 8uLL).u32[0];
        v225 = v78;
        v79 = vsubq_f32(v78, v222);
        v239 = vaddq_f32(v239, v79);
        v240 = vaddq_f32(v240, v79);
        v241[0] = vaddq_f32(v241[0], v79);
        v235 = vsubq_f32(v242, v239);
        v236 = vsubq_f32(v243, v240);
        v237[0] = vsubq_f32(v244[0], v241[0]);
        v219 = v77;
        *v80.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v230);
        v68 = v228;
        v69 = vaddq_f32(v225, v80);
        v36 = vsubq_f32(v228, v69);
        v44 = v46;
        v81 = v219;
        v217 = v220;
        v222 = v225;
      }

      else
      {
        v81 = v77;
      }

      v218 = v81;
    }

    v82 = v232;
    *(&v242 + v232) = v68;
    *(&v239 + v82) = v69;
    v232 = v82 + 1;
    *(&v235 + v82) = v36;
    if (v82 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v235, &v242, &v239, &v232);
LABEL_37:
      v47 = v223;
      goto LABEL_61;
    }

    if (v82 == 2)
    {
      v36 = v235;
      v97 = vsubq_f32(v236, v235);
      v98 = vsubq_f32(v237[0], v235);
      v100 = vmls_f32(vmul_f32(*v97.f32, *&vextq_s8(v98, v98, 4uLL)), *&vextq_s8(v97, v97, 4uLL), *v98.f32);
      *v99.f32 = vext_s8(v100, vmls_f32(vmul_f32(*&vextq_s8(v97, v97, 8uLL), *v98.f32), *v97.f32, *&vextq_s8(v98, v98, 8uLL)), 4uLL);
      v100.i32[1] = 0;
      v232 = 3;
      v101 = vpadd_f32(vmul_f32(*v99.f32, *v99.f32), vmul_f32(v100.u32[0], v100.u32[0]));
      v102 = vpadd_f32(v101, v101);
      if (v102.f32[0] <= 0.00000011921)
      {
        v232 = 2;
        v139 = vmulq_f32(v97, v97);
        v139.i64[0] = vpaddq_f32(v139, v139).u64[0];
        v140 = vpadd_f32(*v139.f32, *v139.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v140), 0), *v235.i8).u32[0] == -1)
        {
          v232 = 1;
          goto LABEL_37;
        }

        v141 = vnegq_f32(v235);
        v141.i32[3] = 0;
        v142 = vmulq_f32(v141, v97);
        v142.i64[0] = vpaddq_f32(v142, v142).u64[0];
        v143 = vpadd_f32(*v142.f32, *v142.f32);
        v144 = vrecpe_f32(v140);
        v145 = 4;
        v47 = v223;
        do
        {
          v144 = vmul_f32(v144, vrecps_f32(v140, v144));
          --v145;
        }

        while (v145);
        v146 = vmul_f32(v143, v144);
        __asm { FMOV            V2.2S, #1.0 }

        v36 = vmlaq_n_f32(v235, v97, vmax_f32(vmin_f32(v146, _D2), 0).f32[0]);
        goto LABEL_42;
      }

      *&v99.u32[2] = v100;
      v103 = vextq_s8(v236, v236, 8uLL).u64[0];
      v104 = vextq_s8(v237[0], v237[0], 8uLL).u64[0];
      v105 = vextq_s8(v237[0], v237[0], 4uLL).u64[0];
      v106 = vextq_s8(v236, v236, 4uLL).u64[0];
      v107 = vmls_f32(vmul_f32(*v236.f32, v105), v106, *v237[0].f32);
      *v108.f32 = vext_s8(v107, vmls_f32(vmul_f32(v103, *v237[0].f32), *v236.f32, v104), 4uLL);
      v108.i64[1] = v107.u32[0];
      v109 = vextq_s8(v235, v235, 8uLL).u64[0];
      v110 = vextq_s8(v235, v235, 4uLL).u64[0];
      v111 = vmls_f32(vmul_f32(v110, *v237[0].f32), v105, *v235.i8);
      *v112.f32 = vext_s8(v111, vmls_f32(vmul_f32(*v235.i8, v104), *v237[0].f32, v109), 4uLL);
      v112.i64[1] = v111.u32[0];
      v113 = vmls_f32(vmul_f32(*v235.i8, v106), v110, *v236.f32);
      *v114.f32 = vext_s8(v113, vmls_f32(vmul_f32(v109, *v236.f32), *v235.i8, v103), 4uLL);
      v114.i64[1] = v113.u32[0];
      v115 = vmulq_f32(v108, v99);
      v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
      v116 = vpadd_f32(*v115.f32, *v115.f32);
      v117 = vmulq_f32(v112, v99);
      v117.i64[0] = vpaddq_f32(v117, v117).u64[0];
      v118 = vpadd_f32(*v117.f32, *v117.f32);
      v119 = vmulq_f32(v114, v99);
      v119.i64[0] = vpaddq_f32(v119, v119).u64[0];
      v120 = vpadd_f32(*v119.f32, *v119.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v118), vcgez_f32(v116)), vcgez_f32(v120)), 0), *v235.i8).u32[0] == -1)
      {
        v148 = vmulq_f32(v235, v99);
        v149 = vrecpe_f32(v102);
        v150 = 4;
        do
        {
          v149 = vmul_f32(v149, vrecps_f32(v102, v149));
          --v150;
        }

        while (v150);
        v151 = vpaddq_f32(v148, v148).u64[0];
        v36 = vmulq_n_f32(v99, vmul_f32(v149, vpadd_f32(v151, v151)).f32[0]);
        v36.i32[3] = 0;
        goto LABEL_37;
      }

      v121 = vnegq_f32(v235);
      v121.i32[3] = 0;
      v122 = vnegq_f32(v236);
      v122.i32[3] = 0;
      v123 = vmulq_f32(v121, v97);
      v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
      v124 = vpadd_f32(*v123.f32, *v123.f32);
      v125 = vmulq_f32(v97, v122);
      v125.i64[0] = vpaddq_f32(v125, v125).u64[0];
      v126 = vpadd_f32(*v125.f32, *v125.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v120), vand_s8(vclez_f32(v126), vcgez_f32(v124))), 0), *v235.i8).u32[0] == -1)
      {
        v152 = vsub_f32(v124, v126);
        v153 = vrecpe_f32(v152);
        v154 = 4;
        v47 = v223;
        do
        {
          v153 = vmul_f32(v153, vrecps_f32(v152, v153));
          --v154;
        }

        while (v154);
        v138 = 0;
        v36 = vmlaq_n_f32(v235, v97, vmul_f32(v124, vbsl_s8(vcgt_f32(vabs_f32(v152), 0x3400000034000000), v153, 0)).f32[0]);
        v36.i64[1] = vextq_s8(v36, v36, 8uLL).u32[0];
        v137 = 2;
        v155 = &v240;
        v156 = &v243;
        v157 = &v236;
      }

      else
      {
        v127 = vnegq_f32(v237[0]);
        v127.i32[3] = 0;
        v128 = vmulq_f32(v122, v98);
        v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
        v129 = vpadd_f32(*v128.f32, *v128.f32);
        v130 = vmulq_f32(v97, v127);
        v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
        v131 = vpadd_f32(*v130.f32, *v130.f32);
        v132 = vmulq_f32(v98, v127);
        v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
        v133 = vpadd_f32(*v132.f32, *v132.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v129, v126), vcge_f32(v131, v133)), vclez_f32(v116)), 0), *v235.i8).u32[0] == -1)
        {
          v158 = vsub_f32(v129, v126);
          v159 = vadd_f32(v158, vsub_f32(v131, v133));
          v160 = vrecpe_f32(v159);
          v161 = 4;
          do
          {
            v160 = vmul_f32(v160, vrecps_f32(v159, v160));
            --v161;
          }

          while (v161);
          v162 = vmlaq_n_f32(v236, vsubq_f32(v237[0], v236), vmul_f32(v158, vbsl_s8(vcgt_f32(vabs_f32(v159), 0x3400000034000000), v160, 0)).f32[0]);
          v137 = 2;
          v156 = v244;
          v155 = v241;
          v162.i64[1] = vextq_s8(v162, v162, 8uLL).u32[0];
          v157 = v237;
          v138 = 1;
          v36 = v162;
        }

        else
        {
          v134 = vmulq_f32(v121, v98);
          v134.i64[0] = vpaddq_f32(v134, v134).u64[0];
          v135 = vpadd_f32(*v134.f32, *v134.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v118), vand_s8(vclez_f32(v133), vcgez_f32(v135))), 0), *v235.i8).u32[0] == -1)
          {
            v163 = vsub_f32(v135, v133);
            v164 = vrecpe_f32(v163);
            v165 = 4;
            do
            {
              v164 = vmul_f32(v164, vrecps_f32(v163, v164));
              --v165;
            }

            while (v165);
            v138 = 0;
            v36 = vmlaq_n_f32(v235, v98, vmul_f32(v135, vbsl_s8(vcgt_f32(vabs_f32(v163), 0x3400000034000000), v164, 0)).f32[0]);
            v36.i64[1] = vextq_s8(v36, v36, 8uLL).u32[0];
            v137 = 2;
            v156 = v244;
            v155 = v241;
            v157 = v237;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v135), vclez_f32(v124)), 0), *v235.i8).u32[0] == -1)
            {
              v138 = 0;
              v137 = 1;
            }

            else
            {
              *v36.f32 = vdup_lane_s16(vand_s8(vcge_f32(v126, v129), vcgez_f32(v126)), 0);
              *v36.f32 = vuzp1_s8(*v36.f32, *v36.f32);
              v136 = v36.i32[0];
              v137 = 1;
              v36 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v36, v211), 0), v236, v237[0]);
              if (v136 == -1)
              {
                v138 = 1;
              }

              else
              {
                v138 = 2;
              }
            }

            v155 = &v240;
            v156 = &v243;
            v157 = &v236;
          }
        }

        v47 = v223;
      }

      v166 = *(&v242 + v138);
      v167 = *v157;
      v168 = *v156;
      v169 = *(&v239 + v138);
      v170 = *v155;
      v235 = *(&v235 + v138);
      v236 = v167;
      v242 = v166;
      v243 = v168;
      v239 = v169;
      v240 = v170;
      v232 = v137;
    }

    else
    {
      v47 = v223;
      if (v82 != 1)
      {
        goto LABEL_61;
      }

      v36 = v235;
      v83 = vsubq_f32(v236, v235);
      v84 = vmulq_f32(v83, v83);
      v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
      v85 = vpadd_f32(*v84.f32, *v84.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v85), 0), *v235.i8).u32[0] != -1)
      {
        v86 = vnegq_f32(v235);
        v86.i32[3] = 0;
        v87 = vmulq_f32(v86, v83);
        v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
        v88 = vpadd_f32(*v87.f32, *v87.f32);
        v89 = vrecpe_f32(v85);
        v90 = 4;
        do
        {
          v89 = vmul_f32(v89, vrecps_f32(v85, v89));
          --v90;
        }

        while (v90);
        v91 = vmul_f32(v88, v89);
        __asm { FMOV            V3.2S, #1.0 }

        v36 = vmlaq_n_f32(v235, v83, vmax_f32(vmin_f32(v91, _D3), 0).f32[0]);
LABEL_42:
        v36.i64[1] = vextq_s8(v36, v36, 8uLL).u32[0];
        goto LABEL_61;
      }

      v232 = 1;
    }

LABEL_61:
    v49 = vnegq_f32(v36);
    v49.i32[3] = 0;
    v171 = vmulq_f32(v36, v36);
    v171.i64[0] = vpaddq_f32(v171, v171).u64[0];
    v172 = vpadd_f32(*v171.f32, *v171.f32);
    v173 = vcgt_f32(v44, v172);
    v48 = vdupq_lane_s32(vand_s8(v173, 0x100000001), 0);
    v45 = vdupq_lane_s32(vand_s8(vcgt_f32(v172, v41), v173), 0);
    v44 = v172;
  }

  v174 = v47;
  v175 = *(a1 + 8);
  v176 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v44, v213), 0), v48), 0x1FuLL)), v49, v217);
  v177 = vmulq_f32(v176, v176);
  v72 = vpaddq_f32(v177, v177);
  *v72.f32 = vpadd_f32(*v72.f32, *v72.f32);
  v178 = vrsqrte_f32(*v72.f32);
  v179 = 4;
  do
  {
    v178 = vmul_f32(v178, vrsqrts_f32(vmul_f32(v178, v178), *v72.f32));
    --v179;
  }

  while (v179);
  v180 = vbsl_s8(vdup_lane_s32(vceqz_f32(*v72.f32), 0), *v72.f32, vmul_f32(*v72.f32, v178));
  *v72.f32 = vrecpe_f32(v180);
  v181 = 4;
  do
  {
    *v72.f32 = vmul_f32(*v72.f32, vrecps_f32(v180, *v72.f32));
    --v181;
  }

  while (v181);
  v182 = vdupq_n_s32(-*(v175 + 32));
  v74 = vdupq_lane_s32(vcgtz_f32(v180), 0);
  v183 = vmulq_n_f32(v176, v72.f32[0]);
  v183.i32[3] = 0;
  v184 = vnegq_f32(vandq_s8(v74, v183));
  v184.i32[3] = 0;
  v185 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v48, 0x1FuLL)), v50, v174);
  v230 = v185;
  if (v232 == 3)
  {
    v233 = 0;
    v234 = 0;
    v226 = v182;
    v229 = v184;
    physx::Gu::barycentricCoordinates(&v230, &v235, &v236, v237, &v234, &v233);
    v182 = v226;
    v184 = v229;
    v48.i32[1] = v242.i32[1];
    v196 = vmulq_n_f32(vsubq_f32(v243, v242), v234.f32[0]);
    v196.i32[3] = 0;
    *v72.f32 = v233;
    v197 = vmulq_n_f32(vsubq_f32(v244[0], v242), v233.f32[0]);
    v197.i32[3] = 0;
    v186 = vaddq_f32(v242, vaddq_f32(v196, v197));
    v175 = *(a1 + 8);
    v187 = v218;
  }

  else if (v232 == 2)
  {
    v72.i64[1] = v236.i64[1];
    v189 = vsubq_f32(v235, v185);
    v190 = vsubq_f32(vsubq_f32(v236, v185), v189);
    v191 = vmulq_f32(v190, v190);
    v191.i64[0] = vpaddq_f32(v191, v191).u64[0];
    *v72.f32 = vpadd_f32(*v191.f32, *v191.f32);
    v192 = vrecpe_f32(*v72.f32);
    v193 = 4;
    v187 = v218;
    do
    {
      *v74.f32 = vrecps_f32(*v72.f32, v192);
      v192 = vmul_f32(v192, *v74.f32);
      --v193;
    }

    while (v193);
    *v72.f32 = vcgtz_f32(*v72.f32);
    v194 = vnegq_f32(v189);
    v194.i32[3] = 0;
    v195 = vmulq_f32(v194, v190);
    v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
    v186 = vmlaq_n_f32(v242, vsubq_f32(v243, v242), vmul_f32(vbsl_s8(*v72.f32, v192, 0), vpadd_f32(*v195.f32, *v195.f32)).f32[0]);
    v48.i32[1] = 0;
    v186.i64[1] = vextq_s8(v186, v186, 8uLL).u32[0];
  }

  else
  {
    v186 = 0uLL;
    v187 = v218;
    if (v232 == 1)
    {
      v186 = v242;
    }
  }

  v48.i32[0] = *(v175 + 16);
  v73 = vmlsq_lane_f32(v186, v184, *v48.i8, 0);
  v69.i32[1] = 0;
  v73.i64[1] = vextq_s8(v73, v73, 8uLL).u32[0];
  v188 = vbslq_s8(v182, v73, v186);
LABEL_76:
  if (v52 != -1)
  {
    *a6 = v187;
    if (v187.f32[0] == 0.0 && a10)
    {
      v198 = *(a1 + 8);
      v199 = *(a2 + 8);
      v69.i32[0] = 1120403456;
      *v188.i32 = (*(v198 + 16) + *(v199 + 16)) * 100.0;
      *v231.f32 = vdup_lane_s32(*v188.i8, 0);
      v233.i8[0] = 0;
      v238 = 0;
      v235 = 0u;
      v236 = 0u;
      v237[0] = 0u;
      v242.i64[0] = &unk_1F5D217B8;
      v242.i64[1] = v198;
      v239.i64[0] = &unk_1F5D21818;
      v239.i64[1] = v199;
      if (physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v242, &v239, a3, &v231, 0, &v230, &v234, &v233, 0.0, *v69.i64, *v73.f32, v72, *v74.f32, &v235) != 5)
      {
        goto LABEL_80;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(a1) - 5 > 1)
      {
        v203 = vnegq_f32(*a5);
        v203.i32[3] = 0;
        v204 = vmulq_f32(v203, v203);
        v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
        v205 = vpadd_f32(*v204.f32, *v204.f32);
        v206 = vrsqrte_f32(v205);
        v207 = 4;
        do
        {
          v206 = vmul_f32(v206, vrsqrts_f32(vmul_f32(v206, v206), v205));
          --v207;
        }

        while (v207);
        v208 = vbsl_s8(vdup_lane_s32(vceqz_f32(v205), 0), v205, vmul_f32(v205, v206));
        v209 = vrecpe_f32(v208);
        v210 = 4;
        do
        {
          v209 = vmul_f32(v209, vrecps_f32(v208, v209));
          --v210;
        }

        while (v210);
        v184 = vmulq_n_f32(v203, v209.f32[0]);
        v184.i32[3] = 0;
        v200 = 0;
        v188 = 0uLL;
      }

      else
      {
LABEL_80:
        v200 = v238;
        v188 = v235;
        v184 = v237[0];
      }

      *a6 = vmin_f32(v200, 0);
    }

    *a8 = v188;
    *a7 = v184;
  }

  return v52 != -1;
}

uint64_t sweepBox_PlaneGeom(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x2_t *a8, uint64_t a9, _WORD *a10)
{
  *&v56[76] = *MEMORY[0x1E69E9840];
  v16 = *a4;
  v17 = v16 + v16;
  v18 = *(a4 + 12);
  v19 = *(a4 + 16);
  v20 = v18 + v18;
  v21 = ((v18 * (v18 + v18)) + -1.0) + (v16 * (v16 + v16));
  v22 = *(a4 + 4);
  v23 = vmul_n_f32(v22, v17);
  v24.i32[0] = vdup_lane_s32(v22, 1).u32[0];
  v24.f32[1] = -v22.f32[0];
  *(a9 + 16) = -1;
  v52 = vmla_n_f32(v23, v24, v20);
  v25 = -(((*(a4 + 20) * v52.f32[0]) + (v19 * v21)) + (*(a4 + 24) * v52.f32[1]));
  physx::Gu::computeOBBPoints(v53, (a7 + 36), (a7 + 48), a7, (a7 + 12), (a7 + 24));
  v26 = 0;
  v27 = 0;
  v28 = &v54;
  v29 = 3.4028e38;
  do
  {
    v30 = (v52.f32[0] * *(v28 - 1)) + (*(v28 - 2) * v21);
    v31 = *v28;
    v28 += 3;
    v32 = v30 + (v31 * v52.f32[1]);
    if (v32 < v29)
    {
      v29 = v32;
      v27 = v26;
    }

    ++v26;
  }

  while (v26 != 8);
  v33 = v25 - a2;
  if ((*a10 & 0x200) != 0)
  {
    if (v29 <= -v33)
    {
      *(a9 + 20) = 3;
      physx::Gu::computeOBBPoints(v55, (a7 + 36), (a7 + 48), a7, (a7 + 12), (a7 + 24));
      v43 = 0;
      v44 = v33 + (((v52.f32[0] * v55[1]) + (v55[0] * v21)) + (v55[2] * v52.f32[1]));
      v45 = v56;
      v46 = -7;
      do
      {
        v47 = (v52.f32[0] * *(v45 - 1)) + (*(v45 - 2) * v21);
        v48 = *v45;
        v45 += 3;
        v49 = v33 + (v47 + (v48 * v52.f32[1]));
        if (v44 > v49)
        {
          v43 = v46 + 8;
          v44 = v49;
        }
      }

      while (!__CFADD__(v46++, 1));
      *(a9 + 36) = v21;
      *(a9 + 40) = v52;
      *(a9 + 48) = v44;
      v51 = &v55[3 * v43];
      *(a9 + 24) = *v51 - (v21 * v44);
      *(a9 + 28) = vsub_f32(*(v51 + 1), vmul_n_f32(v52, v44));
      return 1;
    }
  }

  else if ((*a10 & 0x10) == 0 && v29 <= -v33)
  {
    *(a9 + 20) = 2;
    *(a9 + 48) = 0;
    v34 = -a8[1].f32[0];
    *(a9 + 36) = vneg_f32(*a8);
    *(a9 + 44) = v34;
    return 1;
  }

  v35 = ((v52.f32[0] * a8->f32[1]) + (a8->f32[0] * v21)) + (a8[1].f32[0] * v52.f32[1]);
  if (fabsf(v35) < 0.0000001)
  {
    return 0;
  }

  v36 = &v53[3 * v27];
  v37 = v36[1].f32[0];
  v38 = *v36;
  v39 = -(v33 + ((vmul_lane_f32(v52, *v36, 1).f32[0] + (COERCE_FLOAT(*v36) * v21)) + (v37 * v52.f32[1]))) / v35;
  *(a9 + 48) = v39;
  v40 = v37 + (v39 * a8[1].f32[0]);
  *(a9 + 24) = vadd_f32(v38, vmul_n_f32(*a8, v39));
  *(a9 + 32) = v40;
  if (v39 <= 0.0 || v39 > a1)
  {
    return 0;
  }

  *(a9 + 36) = v21;
  *(a9 + 40) = v52;
  *(a9 + 20) = 3;
  return 1;
}

BOOL sweepBox_ConvexGeom(uint64_t a1, float32x4_t *a2, float32_t a3, float a4, uint64_t a5, float32x4_t *a6, uint64_t a7, float32x2_t *a8, uint64_t a9, __int16 *a10)
{
  v10.f32[0] = a3;
  v16 = 0;
  v245 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 32);
  v18 = *a6;
  v19.i64[0] = a6[1].i64[0];
  v19.i32[2] = a6[1].i32[2];
  v20.i64[0] = a2[1].i64[0];
  v20.i32[2] = a2[1].i32[2];
  v230 = 0uLL;
  v229 = 0;
  v19.i64[1] = v19.u32[2];
  v21 = *a2;
  v20.i64[1] = v20.u32[2];
  v22 = vnegq_f32(*a2);
  v23 = vdupq_laneq_s32(*a2, 3);
  v202 = v20;
  v24 = vsubq_f32(v19, v20);
  v25 = v22;
  v25.i32[3] = 0;
  v26 = vmla_f32(0xBF000000BF000000, *v23.f32, *v23.f32);
  v27 = vmulq_n_f32(v24, *v26.i32);
  v27.i32[3] = 0;
  v28 = vextq_s8(v25, v25, 8uLL).u64[0];
  v29 = vext_s8(*v22.f32, v28, 4uLL);
  v30 = vmls_f32(vmul_f32(*v22.f32, *&vextq_s8(v24, v24, 4uLL)), v29, *v24.f32);
  *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(v28, *v24.f32), *v22.f32, *&vextq_s8(v24, v24, 8uLL)), 4uLL);
  v31.i64[1] = v30.u32[0];
  v32 = vmlaq_laneq_f32(v27, v31, *a2, 3);
  v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
  v33 = vmulq_f32(v25, v24);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = vmlaq_n_f32(v32, v25, vpadd_f32(*v33.f32, *v33.f32).f32[0]);
  v35 = vaddq_f32(v34, v34);
  v35.i32[3] = 0;
  v36 = v18;
  v36.i32[3] = 0;
  v37 = vmul_f32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v21, v21, 8uLL));
  v38 = vmulq_f32(v36, v25);
  v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
  v39 = vmulq_laneq_f32(v25, v18, 3);
  v40 = vmulq_laneq_f32(v36, *a2, 3);
  v36.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
  v41 = vmls_f32(vmul_f32(vext_s8(*v18.f32, *v36.f32, 4uLL), *v22.f32), v29, *v18.f32);
  *v18.f32 = vext_s8(v41, vmls_f32(vmul_f32(*v18.f32, v28), *v22.f32, *v36.f32), 4uLL);
  *&v18.u32[2] = v41;
  v42 = vaddq_f32(vaddq_f32(v39, v40), v18);
  *v22.f32 = vdup_lane_s32(*v42.f32, 1);
  *v39.f32 = vdup_laneq_s32(v42, 2);
  v43 = vsub_f32(v37, vpadd_f32(*v38.f32, *v38.f32));
  v44 = vaddq_f32(v42, v42);
  *v40.f32 = vdup_laneq_s32(v44, 2);
  v45 = vdup_lane_s32(vmul_f32(*v42.f32, *v44.f32), 0);
  v46 = vmul_lane_f32(*v22.f32, *v44.f32, 1);
  v47 = vmul_laneq_f32(*v39.f32, v44, 2);
  *v22.f32 = vmul_n_f32(*v22.f32, v44.f32[0]);
  v48 = vmul_n_f32(*v39.f32, v44.f32[0]);
  v49 = vmul_lane_f32(vdup_lane_s32(*v44.f32, 0), v43, 1);
  *v39.f32 = vmul_lane_f32(*v39.f32, *v44.f32, 1);
  *v44.f32 = vmul_lane_f32(vdup_lane_s32(*v44.f32, 1), v43, 1);
  v50 = vmul_lane_f32(*v40.f32, v43, 1);
  __asm { FMOV            V0.2S, #1.0 }

  *v38.f32 = vsub_f32(_D0, v45);
  *v40.f32 = vext_s8(vsub_f32(vsub_f32(_D0, v46), v47), vadd_f32(*v22.f32, v50), 4uLL);
  v40.i64[1] = vsub_f32(v48, *v44.f32).u32[0];
  *v22.f32 = vext_s8(vsub_f32(*v22.f32, v50), vsub_f32(*v38.f32, v47), 4uLL);
  v22.i64[1] = vadd_f32(*v39.f32, v49).u32[0];
  v225 = v40;
  v226 = v22;
  *v22.f32 = vext_s8(vadd_f32(v48, *v44.f32), vsub_f32(*v39.f32, v49), 4uLL);
  v22.i64[1] = vsub_f32(*v38.f32, v46).u32[0];
  v44.i64[0] = *(a7 + 48);
  v56 = v44;
  v56.i32[2] = *(a7 + 56);
  v227 = v22;
  v228 = v35;
  *v22.f32 = vdup_laneq_s32(v56, 2);
  v57 = v56;
  v57.i32[3] = 0;
  v58 = *(a1 + 4);
  v59 = v58;
  v59.i32[3] = 0;
  v60 = *(a1 + 16);
  v222 = 3;
  v223 = 0;
  v218[0] = 0;
  v218[1] = 0;
  v224 = v57;
  *v22.f32 = vpmin_f32(*v22.f32, *v44.f32);
  v22.f32[0] = vpmin_f32(*v22.f32, *v22.f32).f32[0];
  v219 = 0.15 * v22.f32[0];
  v220 = 0.05 * v22.f32[0];
  v221 = 0.05 * v22.f32[0];
  if (v58.f32[0] == 1.0 && v58.f32[1] == 1.0)
  {
    v16 = v58.f32[2] == 1.0;
  }

  v234 = 0;
  v232 = 0u;
  v233 = 0u;
  v61 = *(v17 + 72) + 20 * *(v17 + 71);
  v241 = v17 + 32;
  v243 = v61;
  v244 = *(v17 + 70);
  v62.i64[0] = *(v17 + 92);
  v62.i64[1] = *(v17 + 100);
  v63 = vmulq_f32(v59, v62);
  *v63.i8 = vpmin_f32(vdup_laneq_s32(v63, 2), *v63.i8);
  *v63.i32 = vpmin_f32(*v63.i8, *v63.i8).f32[0];
  *&v233 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v63.i32);
  *(&v233 + 2) = 0.025 * *v63.i32;
  if (v16)
  {
    v235 = xmmword_1E3047670;
    v236 = xmmword_1E3047680;
    v237 = xmmword_1E30476A0;
    v238 = xmmword_1E3047670;
    v239 = xmmword_1E3047680;
    v240 = xmmword_1E30476A0;
  }

  else
  {
    v64 = vrecpeq_f32(v59);
    v65 = 4;
    do
    {
      v64 = vmulq_f32(v64, vrecpsq_f32(v64, v59));
      --v65;
    }

    while (v65);
    *v66.f32 = vdup_lane_s32(*v58.f32, 0);
    v66.i64[1] = v66.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v66, v59)), _D0).u32[0] & 0xFFFFFF) != 0)
    {
      v72 = vdup_lane_s32(*v60.f32, 1);
      v73 = vdup_laneq_s32(v60, 2);
      v74 = vdup_laneq_s32(v60, 3);
      v75 = vaddq_f32(v60, v60);
      v76 = vmul_lane_f32(v72, *v75.f32, 1);
      v77 = vmul_laneq_f32(v73, v75, 2);
      v78 = vmul_n_f32(v72, v75.f32[0]);
      v79 = vmul_n_f32(v73, v75.f32[0]);
      v80 = vmul_n_f32(v74, v75.f32[0]);
      v81 = vmul_lane_f32(v73, *v75.f32, 1);
      v82 = vmul_lane_f32(v74, *v75.f32, 1);
      v83 = vmul_laneq_f32(v74, v75, 2);
      v84 = vsub_f32(_D0, vdup_lane_s32(vmul_f32(*v60.f32, *v75.f32), 0));
      *v75.f32 = vsub_f32(vsub_f32(_D0, v76), v77);
      v85 = vadd_f32(v78, v83);
      v86 = vsub_f32(v79, v82);
      v87 = vsub_f32(v78, v83);
      v88 = vadd_f32(v79, v82);
      v89 = vsub_f32(v81, v80);
      v90 = vext_s8(v88, v89, 4uLL);
      v91 = vsub_f32(v84, v77);
      *v92.f32 = vext_s8(*v75.f32, *&vdupq_lane_s32(v87, 1), 4uLL);
      v92.i64[1] = vdup_lane_s32(v90, 0).u32[0];
      v93 = vsub_f32(v84, v76);
      *v94.f32 = vext_s8(*&vdupq_lane_s32(v85, 0), v91, 4uLL);
      v94.i64[1] = vdup_lane_s32(v90, 1).u32[0];
      v95 = vadd_f32(v81, v80);
      *v96.f32 = vext_s8(*&vdupq_lane_s32(v86, 0), v95, 4uLL);
      v96.i64[1] = vdup_lane_s32(v93, 0).u32[0];
      v97 = vmulq_n_f32(v92, v58.f32[0]);
      v97.i32[3] = 0;
      v98 = vmulq_lane_f32(v94, *v58.f32, 1);
      v98.i32[3] = 0;
      v99 = vmulq_laneq_f32(v96, v58, 2);
      v99.i32[3] = 0;
      v100 = vmulq_lane_f32(v97, *v75.f32, 1);
      v100.i32[3] = 0;
      v101 = vmulq_n_f32(v98, *v85.i32);
      v101.i32[3] = 0;
      v102 = vmulq_n_f32(v99, *v86.i32);
      v102.i32[3] = 0;
      v67 = vaddq_f32(v102, vaddq_f32(v100, v101));
      v103 = vmulq_lane_f32(v97, v87, 1);
      v103.i32[3] = 0;
      v104 = vmulq_n_f32(v98, *v91.i32);
      v104.i32[3] = 0;
      v105 = vmulq_n_f32(v99, *v95.i32);
      v105.i32[3] = 0;
      v68 = vaddq_f32(v105, vaddq_f32(v103, v104));
      v106 = vmulq_lane_f32(v97, v88, 1);
      v106.i32[3] = 0;
      v107 = vmulq_n_f32(v98, *v89.i32);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v99, *v93.i32);
      v108.i32[3] = 0;
      v69 = vaddq_f32(v108, vaddq_f32(v106, v107));
      v235 = v67;
      v236 = v68;
      v109 = vmulq_n_f32(v92, v64.f32[0]);
      v109.i32[3] = 0;
      v110 = vmulq_lane_f32(v94, *v64.f32, 1);
      v110.i32[3] = 0;
      v111 = vmulq_laneq_f32(v96, v64, 2);
      v111.i32[3] = 0;
      v112 = vmulq_lane_f32(v109, *v75.f32, 1);
      v112.i32[3] = 0;
      v113 = vmulq_n_f32(v110, *v85.i32);
      v113.i32[3] = 0;
      v114 = vmulq_n_f32(v111, *v86.i32);
      v114.i32[3] = 0;
      v115 = vaddq_f32(v114, vaddq_f32(v112, v113));
      v116 = vmulq_lane_f32(v109, v87, 1);
      v116.i32[3] = 0;
      v117 = vmulq_n_f32(v110, *v91.i32);
      v117.i32[3] = 0;
      v118 = vmulq_n_f32(v111, *v95.i32);
      v118.i32[3] = 0;
      v119 = vmulq_lane_f32(v109, v88, 1);
      v119.i32[3] = 0;
      v120 = vmulq_n_f32(v110, *v89.i32);
      v120.i32[3] = 0;
      v121 = vmulq_n_f32(v111, *v93.i32);
      v121.i32[3] = 0;
      v70 = vaddq_f32(v118, vaddq_f32(v116, v117));
      v71 = vaddq_f32(v121, vaddq_f32(v119, v120));
      v237 = v69;
      v238 = v115;
    }

    else
    {
      v64.i32[3] = 0;
      v67 = vmulq_f32(v59, xmmword_1E3047670);
      v68 = vmulq_f32(v59, xmmword_1E3047680);
      v69 = vmulq_f32(v59, xmmword_1E30476A0);
      v235 = v67;
      v236 = v68;
      v70 = vmulq_f32(v64, xmmword_1E3047680);
      v71 = vmulq_f32(v64, xmmword_1E30476A0);
      v237 = v69;
      v238 = vmulq_f32(v64, xmmword_1E3047670);
    }

    v239 = v70;
    v240 = v71;
    v122 = vmulq_f32(v67, 0);
    v122.i32[3] = 0;
    v123 = vmulq_f32(v68, 0);
    v123.i32[3] = 0;
    v124 = vmulq_f32(v69, 0);
    v124.i32[3] = 0;
    v232 = vaddq_f32(v124, vaddq_f32(v123, v122));
  }

  v242 = *(v17 + 80);
  *v125.f32 = *a8;
  v125.i64[1] = a8[1].u32[0];
  v200 = v125;
  v201 = v10;
  v126 = vmulq_n_f32(v125, v10.f32[0]);
  v126.i32[3] = 0;
  v127 = vnegq_f32(v126);
  v128 = v127;
  v128.i32[3] = 0;
  v129 = v21;
  v129.i32[3] = 0;
  v130 = vmulq_n_f32(v128, *v26.i32);
  v130.i32[3] = 0;
  v131 = vextq_s8(v129, v129, 8uLL).u64[0];
  v132 = vextq_s8(v128, v128, 8uLL).u64[0];
  v133 = vext_s8(*v21.i8, v131, 4uLL);
  v203 = v131;
  v204 = v129;
  v205 = *v21.i8;
  v206 = v23;
  v134 = vmls_f32(vmul_f32(*v21.i8, vext_s8(*v127.f32, v132, 4uLL)), v133, *v127.f32);
  *v127.f32 = vext_s8(v134, vmls_f32(vmul_f32(v131, *v127.f32), *v21.i8, v132), 4uLL);
  v127.i64[1] = v134.u32[0];
  v135 = vmlsq_f32(v130, v23, v127);
  v135.i64[1] = vextq_s8(v135, v135, 8uLL).u32[0];
  v136 = vmulq_f32(v129, v128);
  v136.i64[0] = vpaddq_f32(v136, v136).u64[0];
  v137 = vmlaq_n_f32(v135, v129, vpadd_f32(*v136.f32, *v136.f32).f32[0]);
  v138 = vaddq_f32(v137, v137);
  v138.i32[3] = 0;
  v217 = v138;
  v139 = *a10;
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v208.i64[1] = v218;
  v209 = &v225;
  v213 = v228;
  v140 = vzip1q_s32(v225, v227);
  v141 = vzip1q_s32(v226, 0);
  v142 = vzip1q_s32(vzip2q_s32(v225, v227), vzip2q_s32(v226, 0));
  v210 = vzip1q_s32(v140, v141);
  v211 = vzip2q_s32(v140, v141);
  v212 = v142;
  v207[1] = &v232;
  v208.i64[0] = &unk_1F5D21AE0;
  v207[0] = &unk_1F5D21818;
  *v142.i32 = a4;
  v143 = physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v208, v207, &v228, &v229, &v230, &v217, &v216, &v214, *v142.i8, &v215, (v139 & 0x200) != 0);
  if (v143)
  {
    v144 = vdupq_lane_s32(v26, 0);
    *(a9 + 20) = 2;
    v145 = v216;
    if (v216.f32[0] <= 0.0)
    {
      if ((v139 & 0x200) != 0)
      {
        v173 = v215;
        v174 = vmulq_n_f32(v215, *v26.i32);
        v174.i32[3] = 0;
        v175 = vextq_s8(v173, v173, 8uLL).u64[0];
        v176 = vmls_f32(vmul_f32(v205, vext_s8(*v215.i8, v175, 4uLL)), v133, *v215.i8);
        *v177.f32 = vext_s8(v176, vmls_f32(vmul_f32(v203, *v215.i8), v205, v175), 4uLL);
        v177.i64[1] = v176.u32[0];
        v178 = vmlaq_f32(v174, v206, v177);
        *(a9 + 20) = 3;
        v178.i64[1] = vextq_s8(v178, v178, 8uLL).u32[0];
        v179 = vmulq_f32(v204, v173);
        v179.i64[0] = vpaddq_f32(v179, v179).u64[0];
        v180 = vmlaq_n_f32(v178, v204, vpadd_f32(*v179.f32, *v179.f32).f32[0]);
        v180.i64[1] = vextq_s8(v180, v180, 8uLL).u32[0];
        v179.i64[0] = 0x4000000040000000;
        v179.i64[1] = 0x4000000040000000;
        v181 = vmlaq_f32(v202, v179, v180);
        v182 = vmulq_f32(v144, v214);
        v182.i32[3] = 0;
        v180.i64[0] = vextq_s8(v214, v214, 8uLL).u64[0];
        *v177.f32 = vmls_f32(vmul_f32(v205, vext_s8(*v214.f32, *v180.f32, 4uLL)), v133, *v214.f32);
        *v180.f32 = vext_s8(*v177.f32, vmls_f32(vmul_f32(v203, *v214.f32), v205, *v180.f32), 4uLL);
        v180.i64[1] = v177.u32[0];
        v183 = vmlaq_f32(v182, v206, v180);
        v183.i64[1] = vextq_s8(v183, v183, 8uLL).u32[0];
        v184 = vmulq_f32(v204, v214);
        v187 = vpaddq_f32(v184, v184).u64[0];
        v185 = vmlaq_n_f32(v183, v204, vpadd_f32(v187, v187).f32[0]);
        v186 = vaddq_f32(v185, v185);
        v186.i32[3] = 0;
        v187.i32[0] = vextq_s8(v181, v181, 8uLL).u32[0];
        v188 = vmulq_f32(v186, v186);
        v188.i64[0] = vpaddq_f32(v188, v188).u64[0];
        v189 = vpadd_f32(*v188.f32, *v188.f32);
        v190 = vrsqrte_f32(v189);
        v191 = 4;
        do
        {
          v190 = vmul_f32(v190, vrsqrts_f32(vmul_f32(v190, v190), v189));
          --v191;
        }

        while (v191);
        v187.i32[1] = 0;
        v192 = vbsl_s8(vdup_lane_s32(vceqz_f32(v189), 0), v189, vmul_f32(v189, v190));
        v193 = vrecpe_f32(v192);
        v194 = 4;
        do
        {
          v193 = vmul_f32(v193, vrecps_f32(v192, v193));
          --v194;
        }

        while (v194);
        *&v181.u32[2] = v187;
        v195 = vmulq_n_f32(v186, v193.f32[0]);
        v196 = v195;
        v196.i32[3] = 0;
        v197 = vmlsq_lane_f32(v181, v196, v145, 0);
        *(a9 + 40) = vextq_s8(v195, v195, 4uLL).u64[0];
        v197.i32[3] = v195.i32[0];
        *(a9 + 24) = v197;
        *(a9 + 48) = v145.i32[0];
      }

      else
      {
        *(a9 + 48) = 0;
        v198 = -a8[1].f32[0];
        *(a9 + 36) = vneg_f32(*a8);
        *(a9 + 44) = v198;
      }

      *(a9 + 16) = -1;
    }

    else
    {
      v146 = vmulq_f32(v144, v214);
      v146.i32[3] = 0;
      v147 = vextq_s8(v214, v214, 8uLL).u64[0];
      v148 = vmls_f32(vmul_f32(v205, vext_s8(*v214.f32, v147, 4uLL)), v133, *v214.f32);
      *v149.f32 = vext_s8(v148, vmls_f32(vmul_f32(v203, *v214.f32), v205, v147), 4uLL);
      v149.i64[1] = v148.u32[0];
      v150 = vmlaq_f32(v146, v206, v149);
      v150.i64[1] = vextq_s8(v150, v150, 8uLL).u32[0];
      v151 = vmulq_f32(v204, v214);
      v151.i64[0] = vpaddq_f32(v151, v151).u64[0];
      v152 = vmlaq_n_f32(v150, v204, vpadd_f32(*v151.f32, *v151.f32).f32[0]);
      v153 = vaddq_f32(v152, v152);
      v153.i32[3] = 0;
      v154 = vmulq_f32(v153, v153);
      v154.i64[0] = vpaddq_f32(v154, v154).u64[0];
      v155 = vpadd_f32(*v154.f32, *v154.f32);
      v156 = vrsqrte_f32(v155);
      *(a9 + 20) = 3;
      v157 = 4;
      do
      {
        v156 = vmul_f32(v156, vrsqrts_f32(vmul_f32(v156, v156), v155));
        --v157;
      }

      while (v157);
      v158 = vbsl_s8(vdup_lane_s32(vceqz_f32(v155), 0), v155, vmul_f32(v155, v156));
      v159 = vrecpe_f32(v158);
      v160 = 4;
      do
      {
        v159 = vmul_f32(v159, vrecps_f32(v158, v159));
        --v160;
      }

      while (v160);
      v161 = vextq_s8(v215, v215, 8uLL).u64[0];
      v162 = vmls_f32(vmul_f32(v203, *v215.i8), v205, v161);
      v163 = vmulq_f32(v144, v215);
      v163.i32[3] = 0;
      v164 = vmls_f32(vmul_f32(v205, vext_s8(*v215.i8, v161, 4uLL)), v133, *v215.i8);
      *v165.f32 = vext_s8(v164, v162, 4uLL);
      v165.i64[1] = v164.u32[0];
      v166 = vmlaq_f32(v163, v206, v165);
      v167 = vmulq_n_f32(v153, v159.f32[0]);
      v166.i64[1] = vextq_s8(v166, v166, 8uLL).u32[0];
      v168 = vmulq_f32(v204, v215);
      v168.i64[0] = vpaddq_f32(v168, v168).u64[0];
      v169 = vmlaq_n_f32(v166, v204, vpadd_f32(*v168.f32, *v168.f32).f32[0]);
      v169.i64[1] = vextq_s8(v169, v169, 8uLL).u32[0];
      LODWORD(v170) = vmul_f32(v201, v145).u32[0];
      v168.i64[0] = 0x4000000040000000;
      v168.i64[1] = 0x4000000040000000;
      v171 = vmlaq_f32(v202, v168, v169);
      v171.i64[1] = vextq_s8(v171, v171, 8uLL).u32[0];
      v172 = vmlaq_n_f32(v171, v200, v170);
      v172.i32[3] = v167.i32[0];
      *(a9 + 24) = v172;
      *(a9 + 40) = vextq_s8(v167, v167, 4uLL).u64[0];
      *(a9 + 48) = v170;
      if ((*(a10 + 1) & 4) != 0)
      {
        v231 = *(v17 + 71);
        *(a9 + 16) = computeSweepConvexPlane(a1, v17 + 32, &v231, a2->f32, (a9 + 24), a8);
        *(a9 + 20) |= 0x400u;
      }
    }
  }

  return v143;
}

BOOL physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, float32x2_t *a7, float32x4_t *a8, int32x2_t a9, int8x16_t *a10, char a11)
{
  v62 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v17 = physx::Gu::gjkRaycast<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(a1, a2, a3, a9, a4, a5, a6, &v56, &v57, &v58);
  if (v17)
  {
    v18 = v56;
    *a7 = v56;
    if (*v18.i32 == 0.0 && (a11 & 1) != 0)
    {
      v19 = a1->i64[1];
      v20 = a1[1].i64[0];
      v21 = *(a2 + 8);
      *v18.i32 = (*(v19 + 16) + *(v21 + 16)) * 100.0;
      v55 = vdup_lane_s32(v18, 0);
      v52 = 0;
      v61 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0u;
      v46.i64[1] = v19;
      v47 = v20;
      v46.i64[0] = &unk_1F5D21AE0;
      v23 = *(v20 + 32);
      v22 = *(v20 + 48);
      v24 = *(v20 + 16);
      v48 = *v20;
      v51 = v22;
      v25 = vzip1q_s32(v48, v23);
      v26 = vzip2q_s32(v48, v23);
      v27 = vzip1q_s32(v24, 0);
      v48 = vzip1q_s32(v25, v27);
      v49 = vzip2q_s32(v25, v27);
      v50 = vzip1q_s32(v26, vzip2q_s32(v24, 0));
      v45[0] = &unk_1F5D21818;
      v45[1] = v21;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v46, v45, a3, &v55, 0, v54, v53, &v52, *v50.i64, *v26.i64, *v49.i8, v48, v59) != 5)
      {
        goto LABEL_5;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(a1) - 5 > 1)
      {
        v37 = vnegq_f32(*a6);
        v37.i32[3] = 0;
        v38 = vmulq_f32(v37, v37);
        v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
        v39 = vpadd_f32(*v38.f32, *v38.f32);
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
        v30 = vmulq_n_f32(v37, v43.f32[0]);
        v30.i32[3] = 0;
        v28 = 0;
        v29 = 0uLL;
      }

      else
      {
LABEL_5:
        v28 = v61;
        v29 = v59[0];
        v30 = v60;
      }

      *a7 = vmin_f32(v28, 0);
    }

    else
    {
      v30 = v57;
      v29 = v58;
    }

    *a10 = v29;
    *a8 = v30;
  }

  return v17;
}

uint64_t physx::Gu::sweepCapsuleTriangles(uint64_t a1, uint64_t a2, physx::Gu::Box *a3, uint64_t a4, float *a5, float32x2_t *a6, uint64_t a7, unsigned int *a8, float a9, float a10, __int16 *a11)
{
  v14 = a3;
  v18 = *a5;
  v19 = a5[1];
  v20 = v18 + v18;
  v22 = a5[2];
  v21 = a5[3];
  v23 = v21 + v21;
  v24 = ((v21 * (v21 + v21)) + -1.0) + (v18 * (v18 + v18));
  v25 = (v20 * v19) + (v22 * (v21 + v21));
  v26 = (v20 * v22) - (v19 * v23);
  v28 = *(a4 + 4);
  v27 = *(a4 + 8);
  v29 = v24 * v27;
  v30 = v27 * v25;
  v31 = v26 * v27;
  v32 = a5[4];
  v33 = a5[5];
  v34 = a5[6];
  v44[0] = v32 + v29;
  v44[1] = v33 + v30;
  v44[2] = v31 + v34;
  v44[3] = v32 - v29;
  v44[4] = v33 - v30;
  v44[5] = v34 - v31;
  v44[6] = v28 + a10;
  physx::Gu::computeBoxAroundCapsule(v44, v41, a3);
  physx::Gu::computeSweptBox(v40, &v43, &v42, v41, a6, a9);
  v38 = *a11;
  return physx::Gu::sweepCapsuleTriangles_Precise(a1, a2, v44, a6, a8, a7, &v39, &v38, a9, v35, v36, v14, v40);
}

BOOL sweepConvex_SphereGeom(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x2_t *a5, uint64_t a6, __int16 *a7, float a8, float a9)
{
  v13 = 0;
  v216 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 32);
  v15.i64[0] = *(a2 + 16);
  v15.i32[2] = *(a2 + 24);
  v193 = 0uLL;
  v16 = *(a3 + 4);
  v17 = v16;
  v17.i32[3] = 0;
  v18 = *(a3 + 16);
  v9.i32[0] = *(a1 + 4);
  v15.i64[1] = v15.u32[2];
  v19 = *a4;
  v20.i64[0] = a4[1].i64[0];
  v20.i64[1] = a4[1].u32[2];
  v21 = vnegq_f32(*a4);
  v183 = vdupq_laneq_s32(*a4, 3);
  v184 = v20;
  v22 = vsubq_f32(v15, v20);
  v23 = v21;
  v23.i32[3] = 0;
  v24 = vmla_f32(0xBF000000BF000000, *v183.f32, *v183.f32);
  v25 = vmulq_n_f32(v22, v24.f32[0]);
  v25.i32[3] = 0;
  v26 = vextq_s8(v23, v23, 8uLL).u64[0];
  v27 = vmls_f32(vmul_f32(*v21.f32, *&vextq_s8(v22, v22, 4uLL)), vext_s8(*v21.f32, v26, 4uLL), *v22.f32);
  *v21.f32 = vext_s8(v27, vmls_f32(vmul_f32(v26, *v22.f32), *v21.f32, *&vextq_s8(v22, v22, 8uLL)), 4uLL);
  v21.i64[1] = v27.u32[0];
  v28 = vmlaq_laneq_f32(v25, v21, *a4, 3);
  v28.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
  v29 = vmulq_f32(v23, v22);
  v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
  *v22.f32 = *a5;
  v22.i32[2] = a5[1].i32[0];
  v30 = vmlaq_n_f32(v28, v23, vpadd_f32(*v29.f32, *v29.f32).f32[0]);
  v31 = vmulq_n_f32(v22, a8);
  v32 = v31;
  v32.i32[3] = 0;
  v33 = *a4;
  v33.i32[3] = 0;
  v34 = vmulq_n_f32(v32, v24.f32[0]);
  v34.i32[3] = 0;
  v35 = vextq_s8(v33, v33, 8uLL).u64[0];
  v36 = vextq_s8(v32, v32, 8uLL).u64[0];
  v37 = vext_s8(*a4->f32, v35, 4uLL);
  v179 = v24;
  v180 = v35;
  v38 = vmls_f32(vmul_f32(*a4->f32, vext_s8(*v31.f32, v36, 4uLL)), v37, *v31.f32);
  *v31.f32 = vext_s8(v38, vmls_f32(vmul_f32(v35, *v31.f32), *a4->f32, v36), 4uLL);
  v31.i64[1] = v38.u32[0];
  v182 = *a4;
  v39 = vmlsq_laneq_f32(v34, v31, *a4, 3);
  v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
  v40 = vaddq_f32(v30, v30);
  v41 = vmulq_f32(v33, v32);
  v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
  v42 = vmlaq_n_f32(v39, v33, vpadd_f32(*v41.f32, *v41.f32).f32[0]);
  v43 = vaddq_f32(v42, v42);
  v43.i32[3] = 0;
  v192 = v43;
  if (*(a3 + 4) == 1.0 && *(a3 + 8) == 1.0)
  {
    v13 = *(a3 + 12) == 1.0;
  }

  v44 = vdup_lane_s32(v9, 0);
  v45 = *(v14 + 72) + 20 * *(v14 + 71);
  v40.i32[3] = 0;
  v46 = 0uLL;
  v205 = 0;
  v203 = 0u;
  v204 = 0u;
  v212 = v14 + 32;
  v214 = v45;
  v215 = *(v14 + 70);
  v47.i64[0] = *(v14 + 92);
  v47.i64[1] = *(v14 + 100);
  v48 = vmulq_f32(v17, v47);
  *v48.i8 = vpmin_f32(vdup_laneq_s32(v48, 2), *v48.i8);
  *v48.i32 = vpmin_f32(*v48.i8, *v48.i8).f32[0];
  *&v204 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v48.i32);
  *(&v204 + 2) = 0.025 * *v48.i32;
  v181 = v33;
  if (v13)
  {
    v206 = xmmword_1E3047670;
    v207 = xmmword_1E3047680;
    v208 = xmmword_1E30476A0;
    v209 = xmmword_1E3047670;
    v210 = xmmword_1E3047680;
    v211 = xmmword_1E30476A0;
  }

  else
  {
    v49 = vrecpeq_f32(v17);
    v50 = 4;
    do
    {
      v49 = vmulq_f32(v49, vrecpsq_f32(v49, v17));
      --v50;
    }

    while (v50);
    *v51.f32 = vdup_lane_s32(*v16.f32, 0);
    v51.i64[1] = v51.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v51, v17)), *v19.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v57 = vdup_lane_s32(*v18.f32, 1);
      v58 = vdup_laneq_s32(v18, 2);
      v59 = vdup_laneq_s32(v18, 3);
      v60 = vaddq_f32(v18, v18);
      v61 = vmul_lane_f32(v57, *v60.f32, 1);
      v62 = vmul_laneq_f32(v58, v60, 2);
      v63 = vmul_n_f32(v57, v60.f32[0]);
      v64 = vmul_n_f32(v58, v60.f32[0]);
      v65 = vmul_n_f32(v59, v60.f32[0]);
      v66 = vmul_lane_f32(v58, *v60.f32, 1);
      v67 = vmul_lane_f32(v59, *v60.f32, 1);
      v68 = vmul_laneq_f32(v59, v60, 2);
      __asm { FMOV            V17.2S, #1.0 }

      v74 = vsub_f32(_D17, vdup_lane_s32(vmul_f32(*v18.f32, *v60.f32), 0));
      v75 = vsub_f32(vsub_f32(_D17, v61), v62);
      *v60.f32 = vadd_f32(v63, v68);
      v76 = vsub_f32(v64, v67);
      v77 = vsub_f32(v63, v68);
      v78 = vadd_f32(v64, v67);
      v79 = vsub_f32(v66, v65);
      v80 = vext_s8(v78, v79, 4uLL);
      v81 = vsub_f32(v74, v62);
      *v82.f32 = vext_s8(v75, *&vdupq_lane_s32(v77, 1), 4uLL);
      v82.i64[1] = vdup_lane_s32(v80, 0).u32[0];
      v83 = vsub_f32(v74, v61);
      *v84.f32 = vext_s8(*&vdupq_lane_s32(*v60.f32, 0), v81, 4uLL);
      v84.i64[1] = vdup_lane_s32(v80, 1).u32[0];
      v85 = vadd_f32(v66, v65);
      *v86.f32 = vext_s8(*&vdupq_lane_s32(v76, 0), v85, 4uLL);
      v86.i64[1] = vdup_lane_s32(v83, 0).u32[0];
      v87 = vmulq_n_f32(v82, v16.f32[0]);
      v87.i32[3] = 0;
      v88 = vmulq_lane_f32(v84, *v16.f32, 1);
      v88.i32[3] = 0;
      v89 = vmulq_laneq_f32(v86, v16, 2);
      v89.i32[3] = 0;
      v90 = vmulq_lane_f32(v87, v75, 1);
      v90.i32[3] = 0;
      v91 = vmulq_n_f32(v88, v60.f32[0]);
      v91.i32[3] = 0;
      v92 = vmulq_n_f32(v89, *v76.i32);
      v92.i32[3] = 0;
      v52 = vaddq_f32(v92, vaddq_f32(v90, v91));
      v93 = vmulq_lane_f32(v87, v77, 1);
      v93.i32[3] = 0;
      v94 = vmulq_n_f32(v88, *v81.i32);
      v94.i32[3] = 0;
      v95 = vmulq_n_f32(v89, *v85.i32);
      v95.i32[3] = 0;
      v53 = vaddq_f32(v95, vaddq_f32(v93, v94));
      v96 = vmulq_lane_f32(v87, v78, 1);
      v96.i32[3] = 0;
      v97 = vmulq_n_f32(v88, *v79.i32);
      v97.i32[3] = 0;
      v98 = vmulq_n_f32(v89, *v83.i32);
      v98.i32[3] = 0;
      v54 = vaddq_f32(v98, vaddq_f32(v96, v97));
      v206 = v52;
      v207 = v53;
      v99 = vmulq_n_f32(v82, v49.f32[0]);
      v99.i32[3] = 0;
      v100 = vmulq_lane_f32(v84, *v49.f32, 1);
      v100.i32[3] = 0;
      v101 = vmulq_laneq_f32(v86, v49, 2);
      v101.i32[3] = 0;
      v102 = vmulq_lane_f32(v99, v75, 1);
      v102.i32[3] = 0;
      v103 = vmulq_n_f32(v100, v60.f32[0]);
      v103.i32[3] = 0;
      v104 = vmulq_n_f32(v101, *v76.i32);
      v104.i32[3] = 0;
      v105 = vaddq_f32(v104, vaddq_f32(v102, v103));
      v106 = vmulq_lane_f32(v99, v77, 1);
      v106.i32[3] = 0;
      v107 = vmulq_n_f32(v100, *v81.i32);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v101, *v85.i32);
      v108.i32[3] = 0;
      v109 = vmulq_lane_f32(v99, v78, 1);
      v109.i32[3] = 0;
      v110 = vmulq_n_f32(v100, *v79.i32);
      v110.i32[3] = 0;
      v111 = vmulq_n_f32(v101, *v83.i32);
      v111.i32[3] = 0;
      v55 = vaddq_f32(v108, vaddq_f32(v106, v107));
      v56 = vaddq_f32(v111, vaddq_f32(v109, v110));
      v208 = v54;
      v209 = v105;
    }

    else
    {
      v49.i32[3] = 0;
      v52 = vmulq_f32(v17, xmmword_1E3047670);
      v53 = vmulq_f32(v17, xmmword_1E3047680);
      v54 = vmulq_f32(v17, xmmword_1E30476A0);
      v206 = v52;
      v207 = v53;
      v55 = vmulq_f32(v49, xmmword_1E3047680);
      v56 = vmulq_f32(v49, xmmword_1E30476A0);
      v208 = v54;
      v209 = vmulq_f32(v49, xmmword_1E3047670);
    }

    v210 = v55;
    v211 = v56;
    v112 = vmulq_f32(v52, 0);
    v112.i32[3] = 0;
    v113 = vmulq_f32(v53, 0);
    v113.i32[3] = 0;
    v114 = vmulq_f32(v54, 0);
    v114.i32[3] = 0;
    v46 = vaddq_f32(v114, vaddq_f32(v113, v112));
    v203 = v46;
  }

  v213 = *(v14 + 80);
  v198 = 4;
  v194 = v40;
  v202 = v44;
  v200 = v40;
  v201 = v40;
  v195 = v9.i32[0];
  v196 = v9.i32[0];
  v197 = v9.i32[0];
  v199 = 1;
  v115 = *a7;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188[1] = &v194;
  v187[1] = &v203;
  v188[0] = &unk_1F5D217B8;
  v187[0] = &unk_1F5D21818;
  v33.f32[0] = *v9.i32 + a9;
  v186 = vsubq_f32(v40, v46);
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v188, v187, &v186, &v193, &v192, &v191, &v189, &v190, *v33.f32, (v115 & 0x200) != 0);
  if (result)
  {
    v117 = *a4;
    v118.i64[0] = a4[1].i64[0];
    v118.i32[2] = a4[1].i32[2];
    *(a6 + 20) = 2;
    v119 = v191.f32[0];
    if (v191.f32[0] <= 0.0)
    {
      if ((v115 & 0x200) != 0)
      {
        v118.i32[3] = 0;
        v146 = v117;
        v146.i32[3] = 0;
        v147 = vdupq_laneq_s32(v117, 3).u64[0];
        LODWORD(v148) = vmla_f32(0xBF000000BF000000, v147, v147).u32[0];
        v149 = vmulq_n_f32(v190, v148);
        v149.i32[3] = 0;
        v150 = vextq_s8(v146, v146, 8uLL).u64[0];
        v151 = vextq_s8(v190, v190, 8uLL).u64[0];
        v152 = vext_s8(*v117.f32, v150, 4uLL);
        v153 = vmls_f32(vmul_f32(*v117.f32, vext_s8(*v190.i8, v151, 4uLL)), v152, *v190.i8);
        *v154.f32 = vext_s8(v153, vmls_f32(vmul_f32(v150, *v190.i8), *v117.f32, v151), 4uLL);
        v154.i64[1] = v153.u32[0];
        v155 = vmlaq_laneq_f32(v149, v154, v117, 3);
        v155.i64[1] = vextq_s8(v155, v155, 8uLL).u32[0];
        v156 = vmulq_f32(v146, v190);
        v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
        v157 = vmlaq_n_f32(v155, v146, vpadd_f32(*v156.f32, *v156.f32).f32[0]);
        v158 = vextq_s8(v157, v157, 8uLL).u32[0];
        v159 = vmulq_n_f32(v189, v148);
        v159.i32[3] = 0;
        v160 = vextq_s8(v189, v189, 8uLL).u64[0];
        v161 = vmls_f32(vmul_f32(*v117.f32, vext_s8(*v189.f32, v160, 4uLL)), v152, *v189.f32);
        *v162.f32 = vext_s8(v161, vmls_f32(vmul_f32(v150, *v189.f32), *v117.f32, v160), 4uLL);
        v162.i64[1] = v161.u32[0];
        v163 = vmlaq_laneq_f32(v159, v162, v117, 3);
        v163.i64[1] = vextq_s8(v163, v163, 8uLL).u32[0];
        v164 = vmulq_f32(v146, v189);
        v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
        v165 = vmlaq_n_f32(v163, v146, vpadd_f32(*v164.f32, *v164.f32).f32[0]);
        v166 = vaddq_f32(v165, v165);
        v166.i32[3] = 0;
        *(a6 + 20) = 3;
        v167 = vmulq_f32(v166, v166);
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
        v171 = vbsl_s8(vdup_lane_s32(vceqz_f32(v168), 0), v168, vmul_f32(v168, v169));
        v172 = vrecpe_f32(v171);
        v173 = 4;
        do
        {
          v172 = vmul_f32(v172, vrecps_f32(v171, v172));
          --v173;
        }

        while (v173);
        v157.i64[1] = v158;
        v174.i64[0] = 0x4000000040000000;
        v174.i64[1] = 0x4000000040000000;
        v175 = vmlaq_f32(v118, v174, v157);
        v176 = vmulq_n_f32(v166, v172.f32[0]);
        v176.i32[3] = 0;
        v177 = vnegq_f32(v176);
        *(a6 + 40) = vextq_s8(v177, v177, 4uLL).u64[0];
        v175.i32[3] = v177.i32[0];
        *(a6 + 24) = v175;
        *(a6 + 48) = v119;
      }

      else
      {
        *(a6 + 48) = 0;
        v178 = -a5[1].f32[0];
        *(a6 + 36) = vneg_f32(*a5);
        *(a6 + 44) = v178;
      }
    }

    else
    {
      v120 = vdupq_lane_s32(v179, 0);
      v121 = vextq_s8(v189, v189, 8uLL).u64[0];
      v122 = vmulq_n_f32(v189, *v179.i32);
      v122.i32[3] = 0;
      v123 = vmls_f32(vmul_f32(*v182.f32, vext_s8(*v189.f32, v121, 4uLL)), v37, *v189.f32);
      *v124.f32 = vext_s8(v123, vmls_f32(vmul_f32(v180, *v189.f32), *v182.f32, v121), 4uLL);
      v124.i64[1] = v123.u32[0];
      v125 = vmlaq_f32(v122, v183, v124);
      v125.i64[1] = vextq_s8(v125, v125, 8uLL).u32[0];
      v126 = vmulq_f32(v181, v189);
      v126.i64[0] = vpaddq_f32(v126, v126).u64[0];
      v127 = vmlaq_n_f32(v125, v181, vpadd_f32(*v126.f32, *v126.f32).f32[0]);
      v128 = vaddq_f32(v127, v127);
      v128.i32[3] = 0;
      *(a6 + 20) = 3;
      v129 = vmulq_f32(v128, v128);
      v129.i64[0] = vpaddq_f32(v129, v129).u64[0];
      v130 = vpadd_f32(*v129.f32, *v129.f32);
      v131 = vrsqrte_f32(v130);
      v132 = 4;
      do
      {
        v131 = vmul_f32(v131, vrsqrts_f32(vmul_f32(v131, v131), v130));
        --v132;
      }

      while (v132);
      v133 = vbsl_s8(vdup_lane_s32(vceqz_f32(v130), 0), v130, vmul_f32(v130, v131));
      v134 = vrecpe_f32(v133);
      v135 = 4;
      do
      {
        v134 = vmul_f32(v134, vrecps_f32(v133, v134));
        --v135;
      }

      while (v135);
      v136 = vmulq_n_f32(v128, v134.f32[0]);
      v136.i32[3] = 0;
      v137 = vmulq_f32(v120, v190);
      v137.i32[3] = 0;
      v138 = vextq_s8(v190, v190, 8uLL).u64[0];
      v139 = vmls_f32(vmul_f32(*v182.f32, vext_s8(*v190.i8, v138, 4uLL)), v37, *v190.i8);
      *v140.f32 = vext_s8(v139, vmls_f32(vmul_f32(v180, *v190.i8), *v182.f32, v138), 4uLL);
      v140.i64[1] = v139.u32[0];
      v141 = vmlaq_f32(v137, v183, v140);
      v141.i64[1] = vextq_s8(v141, v141, 8uLL).u32[0];
      v142 = vmulq_f32(v181, v190);
      v142.i64[0] = vpaddq_f32(v142, v142).u64[0];
      v143 = vmlaq_n_f32(v141, v181, vpadd_f32(*v142.f32, *v142.f32).f32[0]);
      v144 = vnegq_f32(v136);
      v143.i64[1] = vextq_s8(v143, v143, 8uLL).u32[0];
      v142.i64[0] = 0x4000000040000000;
      v142.i64[1] = 0x4000000040000000;
      v145 = vmlaq_f32(v184, v142, v143);
      *(a6 + 40) = vextq_s8(v144, v144, 4uLL).u64[0];
      v145.i32[3] = v144.i32[0];
      *(a6 + 24) = v145;
      *(a6 + 48) = v119 * a8;
    }

    *(a6 + 16) = -1;
  }

  return result;
}

uint64_t sweepConvex_PlaneGeom(float a1, float a2, uint64_t a3, float32x2_t *a4, uint64_t a5, void *a6, float32x2_t *a7, uint64_t a8, __int16 *a9)
{
  v16 = *(a5 + 32);
  *(a8 + 16) = -1;
  v17 = *(v16 + 72);
  v18 = *(v16 + 71);
  v19 = *(v16 + 70);
  v20 = *a9;
  physx::Cm::FastVertex2ShapeScaling::init(&v113, (a5 + 4), (a5 + 16));
  v23 = *a4;
  _S2 = a4->f32[1];
  v25 = a4[1].i32[0];
  _S6 = a4[1].i32[1];
  v26 = a4[2].f32[0];
  v29 = a4[2].f32[1];
  v28 = a4[3].f32[0];
  *(a8 + 48) = a1;
  v30 = 0;
  if (!v19)
  {
    return v30 & 1;
  }

  _D7 = vadd_f32(__PAIR64__(_S6, v23.u32[0]), __PAIR64__(_S6, v23.u32[0]));
  __asm { FMLA            S12, S6, V7.S[1] }

  v23.i32[1] = v25;
  _D12.f32[1] = _S2 * _D7.f32[0];
  v37 = vmla_f32(_D12, _D7, v23);
  __asm { FMLS            S10, S2, V7.S[1] }

  v39 = -((vmuls_lane_f32(v29, v37, 1) + (v26 * v37.f32[0])) + (v28 * _S10)) - a2;
  v40 = v114;
  v41 = v116;
  v42 = v118;
  _D4 = *a6;
  v44 = v113;
  v45 = v115;
  v46 = v117;
  v21.i32[0] = *(a6 + 2);
  v47 = *(a6 + 3);
  *v22.i32 = (v47 * v47) + -0.5;
  LODWORD(v48) = HIDWORD(*a6);
  v49 = vneg_f32(vzip1_s32(v21, *a6));
  v50 = vdup_lane_s32(v22, 0);
  v51 = vdup_lane_s32(v21, 0);
  v51.f32[0] = v48;
  for (i = (v17 + 20 * v18 + 8); ; i += 3)
  {
    v53 = *a7;
    v54 = vmul_f32(v37, *a7);
    v55 = a7[1].f32[0];
    v56 = (v54.f32[1] + (COERCE_FLOAT(*a7) * v37.f32[0])) + (v55 * _S10);
    if (fabsf(v56) >= 0.0000001)
    {
      break;
    }

LABEL_10:
    if (!--v19)
    {
      return v30 & 1;
    }
  }

  v57 = *(i - 2);
  v58 = *(i - 1);
  v59 = ((v40 * v57) + (v41 * v58)) + (v42 * *i);
  v60 = v59 + v59;
  _D28 = vadd_f32(vadd_f32(vmul_n_f32(v44, v57), vmul_n_f32(v45, v58)), vmul_n_f32(v46, *i));
  _D29 = vadd_f32(_D28, _D28);
  v63 = (vmuls_lane_f32(v48, _D29, 1) + (_D4.f32[0] * _D29.f32[0])) + (*v21.i32 * v60);
  __asm { FMLA            S28, S4, V29.S[1] }

  v64 = *(a6 + 6) + (((v47 * _D28.f32[0]) + (v60 * *v22.i32)) + (*v21.i32 * v63));
  v65.i32[0] = vdup_lane_s32(_D29, 1).u32[0];
  v65.f32[1] = v60;
  v66 = vadd_f32(a6[2], vmla_n_f32(vmla_f32(vmul_n_f32(vmla_f32(vmul_f32(v65, v49), vext_s8(v65, _D29, 4uLL), v51), v47), v50, _D29), _D4, v63));
  v67 = v39 + ((COERCE_FLOAT(vmul_f32(v37, v66).i32[1]) + (v66.f32[0] * v37.f32[0])) + (v64 * _S10));
  if (v67 > 0.0)
  {
    v68 = -v67 / v56;
    if (v68 > 0.0 && v68 <= a1)
    {
      *(a8 + 44) = _S10;
      *(a8 + 48) = v68;
      *(a8 + 20) = 3;
      *(a8 + 24) = vadd_f32(v66, vmul_n_f32(v53, v68));
      *(a8 + 32) = v64 + (v55 * v68);
      *(a8 + 36) = v37;
      v30 = 1;
      a1 = v68;
    }

    goto LABEL_10;
  }

  if ((v20 & 0x200) != 0)
  {
    *(a8 + 20) = 3;
    v70 = *(a5 + 32);
    physx::Cm::FastVertex2ShapeScaling::init(&v119, (a5 + 4), (a5 + 16));
    v71 = *(v70 + 70);
    v72 = *(v70 + 72);
    v73 = (v72 + 20 * *(v70 + 71));
    v74 = v73[1];
    v75 = v73[2];
    v76 = ((*v73 * v120) + (v74 * v122)) + (v75 * v124);
    v77 = v76 + v76;
    v79.i32[0] = *(a6 + 2);
    v78 = *(a6 + 3);
    *v80.i32 = (v78 * v78) + -0.5;
    v81 = vadd_f32(vadd_f32(vmul_n_f32(v119, *v73), vmul_n_f32(v121, v74)), vmul_n_f32(v123, v75));
    v82 = vadd_f32(v81, v81);
    _D17 = *a6;
    LODWORD(v84) = HIDWORD(*a6);
    v85 = (vmuls_lane_f32(v82.f32[1], *a6, 1) + (COERCE_FLOAT(*a6) * v82.f32[0])) + (*v79.i32 * v77);
    v86.i32[0] = vdup_lane_s32(v82, 1).u32[0];
    v86.f32[1] = v77;
    v87 = vneg_f32(vzip1_s32(v79, *a6));
    v88 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v86, v87), vext_s8(v86, v82, 4uLL), *(a6 + 4)), v78), v82, *v80.i32), *a6, v85);
    v82.f32[0] = ((v78 * ((-v84 * v82.f32[0]) + (COERCE_FLOAT(*a6) * v82.f32[1]))) + (v77 * *v80.i32)) + (*v79.i32 * v85);
    v89 = a6[2];
    v90 = vadd_f32(v89, v88);
    v91 = *(a6 + 6);
    v92 = v91 + v82.f32[0];
    v93 = vmul_f32(v37, v90);
    v93.f32[0] = v39 + ((v93.f32[1] + (v90.f32[0] * v37.f32[0])) + (v92 * _S10));
    if (v71 >= 2)
    {
      v94 = vdup_lane_s32(v80, 0);
      v95 = vdup_lane_s32(v79, 0);
      v96 = v71 - 1;
      v97 = (20 * *(v70 + 71) + v72 + 20);
      do
      {
        v98 = *(v97 - 2);
        v99 = *(v97 - 1);
        v100 = *v97;
        v97 += 3;
        v101 = ((v120 * v98) + (v122 * v99)) + (v124 * v100);
        v102 = v101 + v101;
        v103 = vadd_f32(vadd_f32(vmul_n_f32(v119, v98), vmul_n_f32(v121, v99)), vmul_n_f32(v123, v100));
        _D28 = vadd_f32(v103, v103);
        v105.i32[0] = vdup_lane_s32(_D28, 1).u32[0];
        v105.f32[1] = v102;
        v106 = (vmuls_lane_f32(v84, _D28, 1) + (_D17.f32[0] * _D28.f32[0])) + (*v79.i32 * v102);
        __asm { FMLA            S8, S17, V28.S[1] }

        v95.i32[0] = HIDWORD(*a6);
        v108 = vmla_n_f32(vmla_f32(vmul_n_f32(vmla_f32(vmul_f32(v105, v87), vext_s8(v105, _D28, 4uLL), v95), v78), v94, _D28), _D17, v106);
        _D28.f32[0] = ((v78 * _S8) + (v102 * *v80.i32)) + (*v79.i32 * v106);
        v109 = vadd_f32(v89, v108);
        v111 = vmul_f32(v37, v109);
        v110 = v91 + _D28.f32[0];
        v111.f32[0] = v39 + ((v111.f32[1] + (v109.f32[0] * v37.f32[0])) + (v110 * _S10));
        v90 = vbsl_s8(vdup_lane_s32(vcgt_f32(v93, v111), 0), v109, v90);
        if (v93.f32[0] > v111.f32[0])
        {
          v92 = v110;
          v93.f32[0] = v39 + ((v111.f32[1] + (v109.f32[0] * v37.f32[0])) + (v110 * _S10));
        }

        --v96;
      }

      while (v96);
    }

    *(a8 + 36) = v37;
    *(a8 + 44) = _S10;
    *(a8 + 48) = v93.i32[0];
    *(a8 + 24) = vsub_f32(v90, vmul_n_f32(v37, v93.f32[0]));
    *(a8 + 32) = v92 - (_S10 * v93.f32[0]);
  }

  else
  {
    *(a8 + 48) = 0;
    *(a8 + 20) = 2;
    *(a8 + 36) = vneg_f32(v53);
    *(a8 + 44) = -v55;
  }

  v30 = 1;
  return v30 & 1;
}

float sweepConvex_CapsuleGeom(uint64_t a1, float *a2, uint64_t a3, float32x4_t *a4, float32x2_t *a5, uint64_t a6, _WORD *a7, double a8, float a9)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = v11 + v11;
  v15 = a2[2];
  v14 = a2[3];
  v16 = v14 + v14;
  v17 = ((v14 * (v14 + v14)) + -1.0) + (v11 * (v11 + v11));
  v18 = (v13 * v12) + (v15 * (v14 + v14));
  v19 = (v13 * v15) - (v12 * v16);
  v21 = *(a1 + 4);
  v20 = *(a1 + 8);
  v22 = v17 * v20;
  v23 = v20 * v18;
  v24 = v19 * v20;
  v25 = a2[4];
  v26 = a2[5];
  v27 = a2[6];
  v36[0] = v25 + v22;
  v36[1] = v26 + v23;
  v36[2] = v24 + v27;
  v36[3] = v25 - v22;
  v36[4] = v26 - v23;
  v36[5] = v27 - v24;
  v36[6] = v21;
  v28 = *a7 & 0xFBFF;
  v29 = -a5[1].f32[0];
  v34 = vneg_f32(*a5);
  v35 = v29;
  v33 = v28;
  if (sweepCapsule_ConvexGeom(a3, a4, a1, a2, v36, &v34, a6, &v33, a8, a9))
  {
    if (*(a6 + 20))
    {
      v31 = *(a6 + 48);
      v32 = v31 * a5[1].f32[0];
      *(a6 + 24) = vadd_f32(vmul_n_f32(*a5, v31), *(a6 + 24));
      *(a6 + 32) = v32 + *(a6 + 32);
    }

    result = -*(a6 + 44);
    *(a6 + 36) = vneg_f32(*(a6 + 36));
    *(a6 + 44) = result;
    *(a6 + 16) = -1;
  }

  return result;
}

float sweepConvex_BoxGeom(uint64_t a1, int32x2_t *a2, uint64_t a3, float32x4_t *a4, float32x2_t *a5, uint64_t a6, _WORD *a7, float32_t a8, float a9)
{
  v11 = vdup_lane_s32(*a2, 1);
  v12 = vdup_laneq_s32(*a2->i8, 2);
  v13 = vdup_laneq_s32(*a2->i8, 3);
  _Q6 = vaddq_f32(*a2->i8, *a2->i8);
  v15 = vdup_lane_s32(vmul_f32(*a2, *_Q6.f32), 0);
  v16 = vmul_lane_f32(v11, *_Q6.f32, 1);
  v17 = vmul_laneq_f32(v12, _Q6, 2);
  v18 = vmul_n_f32(v11, _Q6.f32[0]);
  v19 = vmul_n_f32(v12, _Q6.f32[0]);
  v20 = vmul_n_f32(v13, _Q6.f32[0]);
  v21 = vmul_lane_f32(v12, *_Q6.f32, 1);
  v22 = vmul_lane_f32(v13, *_Q6.f32, 1);
  v23 = vmul_laneq_f32(v13, _Q6, 2);
  __asm { FMOV            V6.2S, #1.0 }

  v28 = vsub_f32(*_Q6.f32, v15);
  LODWORD(v29) = vsub_f32(v19, v22).u32[0];
  LODWORD(v30) = vadd_f32(v21, v20).u32[0];
  v39[0] = (1.0 - v16.f32[1]) - v17.f32[1];
  LODWORD(v39[1]) = vadd_f32(v18, v23).u32[0];
  HIDWORD(v29) = vsub_f32(v18, v23).i32[1];
  v40 = v29;
  v41 = vsub_f32(v28, v17).u32[0];
  HIDWORD(v30) = vadd_f32(v19, v22).i32[1];
  v42 = v30;
  v43 = vzip1_s32(vsub_f32(v21, v20), vsub_f32(v28, v16));
  *&v31 = a2[2];
  DWORD2(v31) = a2[3].i32[0];
  HIDWORD(v31) = *(a1 + 4);
  v44 = v31;
  v45 = *(a1 + 8);
  v32 = *a7 & 0xFBFF;
  LODWORD(v31) = a5[1].i32[0];
  v37 = vneg_f32(*a5);
  v38 = -*&v31;
  v36 = v32;
  if (sweepBox_ConvexGeom(a3, a4, a8, a9, a3, a2, v39, &v37, a6, &v36))
  {
    if (*(a6 + 20))
    {
      v34 = *(a6 + 48);
      v35 = v34 * a5[1].f32[0];
      *(a6 + 24) = vadd_f32(vmul_n_f32(*a5, v34), *(a6 + 24));
      *(a6 + 32) = v35 + *(a6 + 32);
    }

    result = -*(a6 + 44);
    *(a6 + 36) = vneg_f32(*(a6 + 36));
    *(a6 + 44) = result;
    *(a6 + 16) = -1;
  }

  return result;
}

BOOL sweepConvex_ConvexGeom(uint64_t a1, float32x4_t *a2, uint64_t a3, int32x4_t *a4, float32x2_t *a5, uint64_t a6, __int16 *a7, float a8, float a9)
{
  v317 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 32);
  v17 = *(a3 + 32);
  v289 = 0uLL;
  v288 = 0;
  v18 = *(a1 + 4);
  v19 = v18;
  v19.i32[3] = 0;
  v20 = *(a1 + 16);
  v21 = *(a3 + 4);
  v22 = *(a3 + 16);
  v23.i64[0] = a2[1].i64[0];
  v24 = *a2;
  v23.i64[1] = a2[1].u32[2];
  v25 = *a4;
  v26.i64[0] = a4[1].i64[0];
  v26.i64[1] = a4[1].u32[2];
  *v9.f32 = *a5;
  v9.i32[2] = a5[1].i32[0];
  v27 = vmulq_n_f32(v9, a8);
  v28 = v27;
  v28.i32[3] = 0;
  v29 = *a4;
  v29.i32[3] = 0;
  v268 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v30) = vmla_f32(0xBF000000BF000000, *v268.f32, *v268.f32).u32[0];
  v31 = vmulq_n_f32(v28, v30);
  v31.i32[3] = 0;
  v32 = vextq_s8(v29, v29, 8uLL).u64[0];
  v33 = vextq_s8(v28, v28, 8uLL).u64[0];
  v34 = vext_s8(*a4->i8, v32, 4uLL);
  v266 = v32;
  v35 = vmls_f32(vmul_f32(*a4->i8, vext_s8(*v27.f32, v33, 4uLL)), v34, *v27.f32);
  *v27.f32 = vext_s8(v35, vmls_f32(vmul_f32(v32, *v27.f32), *a4->i8, v33), 4uLL);
  v27.i64[1] = v35.u32[0];
  v36 = vmlsq_laneq_f32(v31, v27, *a4, 3);
  v36.i64[1] = vextq_s8(v36, v36, 8uLL).u32[0];
  v37 = vmulq_f32(v29, v28);
  v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
  v270 = v29;
  v271 = v26;
  v38 = vmlaq_n_f32(v36, v29, vpadd_f32(*v37.f32, *v37.f32).f32[0]);
  v39 = vaddq_f32(v38, v38);
  v39.i32[3] = 0;
  v287 = v39;
  v40 = vnegq_f32(v25);
  v41 = v40;
  v41.i32[3] = 0;
  v42 = vsubq_f32(v23, v26);
  v267 = v30;
  v43 = vmulq_n_f32(v42, v30);
  v43.i32[3] = 0;
  v44 = vextq_s8(v41, v41, 8uLL).u64[0];
  v45 = vext_s8(*v40.f32, v44, 4uLL);
  *v26.f32 = vmls_f32(vmul_f32(*v40.f32, *&vextq_s8(v42, v42, 4uLL)), v45, *v42.f32);
  *v46.f32 = vext_s8(*v26.f32, vmls_f32(vmul_f32(v44, *v42.f32), *v40.f32, *&vextq_s8(v42, v42, 8uLL)), 4uLL);
  v46.i64[1] = v26.u32[0];
  v47 = vmlaq_laneq_f32(v43, v46, v25, 3);
  v47.i64[1] = vextq_s8(v47, v47, 8uLL).u32[0];
  v48 = vmulq_f32(v41, v42);
  v48.i64[0] = vpaddq_f32(v48, v48).u64[0];
  v49 = vmlaq_n_f32(v47, v41, vpadd_f32(*v48.f32, *v48.f32).f32[0]);
  v50 = vaddq_f32(v49, v49);
  v50.i32[3] = 0;
  v51 = v24;
  v51.i32[3] = 0;
  *v28.f32 = vmul_f32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL));
  v52 = vmulq_f32(v51, v41);
  v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
  v53 = vmulq_laneq_f32(v41, v24, 3);
  v269 = *v25.f32;
  v54 = vmulq_laneq_f32(v51, v25, 3);
  v51.i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
  v55 = vmls_f32(vmul_f32(vext_s8(*v24.f32, *v51.f32, 4uLL), *v40.f32), v45, *v24.f32);
  *v24.f32 = vext_s8(v55, vmls_f32(vmul_f32(*v24.f32, v44), *v40.f32, *v51.f32), 4uLL);
  *&v24.u32[2] = v55;
  v56 = vaddq_f32(vaddq_f32(v53, v54), v24);
  *v40.f32 = vdup_lane_s32(*v56.f32, 1);
  *v53.f32 = vdup_laneq_s32(v56, 2);
  v57 = vaddq_f32(v56, v56);
  *v28.f32 = vsub_f32(*v28.f32, vpadd_f32(*v52.f32, *v52.f32));
  *v51.f32 = vdup_laneq_s32(v57, 2);
  v58 = vdup_lane_s32(vmul_f32(*v56.f32, *v57.f32), 0);
  v59 = vmul_lane_f32(*v40.f32, *v57.f32, 1);
  *v25.f32 = vmul_laneq_f32(*v53.f32, v57, 2);
  *v40.f32 = vmul_n_f32(*v40.f32, v57.f32[0]);
  v60 = vmul_n_f32(*v53.f32, v57.f32[0]);
  *v52.f32 = vmul_lane_f32(vdup_lane_s32(*v57.f32, 0), *v28.f32, 1);
  *v53.f32 = vmul_lane_f32(*v53.f32, *v57.f32, 1);
  *v57.f32 = vmul_lane_f32(vdup_lane_s32(*v57.f32, 1), *v28.f32, 1);
  *v28.f32 = vmul_lane_f32(*v51.f32, *v28.f32, 1);
  __asm { FMOV            V3.2S, #1.0 }

  *v51.f32 = vext_s8(vsub_f32(vsub_f32(_D3, v59), *v25.f32), vadd_f32(*v40.f32, *v28.f32), 4uLL);
  v51.i64[1] = vsub_f32(v60, *v57.f32).u32[0];
  *v54.f32 = vsub_f32(_D3, v58);
  *v40.f32 = vext_s8(vsub_f32(*v40.f32, *v28.f32), vsub_f32(*v54.f32, *v25.f32), 4uLL);
  v40.i64[1] = vadd_f32(*v53.f32, *v52.f32).u32[0];
  *v28.f32 = vext_s8(vadd_f32(v60, *v57.f32), vsub_f32(*v53.f32, *v52.f32), 4uLL);
  v28.i64[1] = vsub_f32(*v54.f32, v59).u32[0];
  v283 = v51;
  v284 = v40;
  v285 = v28;
  v286 = v50;
  v66 = *(a1 + 4) == 1.0 && *(a1 + 8) == 1.0 && *(a1 + 12) == 1.0;
  v306 = 0;
  v304 = 0u;
  v305 = 0u;
  v67 = *(v16 + 72) + 20 * *(v16 + 71);
  v313 = v16 + 32;
  v315 = v67;
  v316 = *(v16 + 70);
  v68.i64[0] = *(v16 + 92);
  v68.i64[1] = *(v16 + 100);
  v69 = vmulq_f32(v19, v68);
  *v69.i8 = vpmin_f32(vdup_laneq_s32(v69, 2), *v69.i8);
  v70 = vpmin_f32(*v69.i8, *v69.i8).f32[0];
  *&v305 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v70);
  *(&v305 + 2) = 0.025 * v70;
  if (v66)
  {
    v307 = xmmword_1E3047670;
    v308 = xmmword_1E3047680;
    v309 = xmmword_1E30476A0;
    v310 = xmmword_1E3047670;
    v311 = xmmword_1E3047680;
    v312 = xmmword_1E30476A0;
  }

  else
  {
    v71 = vrecpeq_f32(v19);
    v72 = 4;
    do
    {
      v71 = vmulq_f32(v71, vrecpsq_f32(v71, v19));
      --v72;
    }

    while (v72);
    *v73.f32 = vdup_lane_s32(*v18.f32, 0);
    v73.i64[1] = v73.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v73, v19)), *v29.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v79 = vdup_lane_s32(*v20.f32, 1);
      v80 = vdup_laneq_s32(v20, 2);
      v81 = vdup_laneq_s32(v20, 3);
      v82 = vaddq_f32(v20, v20);
      v83 = vmul_lane_f32(v79, *v82.f32, 1);
      v84 = vmul_laneq_f32(v80, v82, 2);
      v85 = vmul_n_f32(v79, v82.f32[0]);
      v86 = vmul_n_f32(v80, v82.f32[0]);
      v87 = vmul_n_f32(v81, v82.f32[0]);
      v88 = vmul_lane_f32(v80, *v82.f32, 1);
      v89 = vmul_lane_f32(v81, *v82.f32, 1);
      v90 = vmul_laneq_f32(v81, v82, 2);
      v91 = vsub_f32(_D3, vdup_lane_s32(vmul_f32(*v20.f32, *v82.f32), 0));
      v92 = vsub_f32(vsub_f32(_D3, v83), v84);
      *v82.f32 = vadd_f32(v85, v90);
      v93 = vsub_f32(v86, v89);
      v94 = vsub_f32(v85, v90);
      v95 = vadd_f32(v86, v89);
      v96 = vsub_f32(v88, v87);
      v97 = vext_s8(v95, v96, 4uLL);
      v98 = vsub_f32(v91, v84);
      *v99.f32 = vext_s8(v92, *&vdupq_lane_s32(v94, 1), 4uLL);
      v99.i64[1] = vdup_lane_s32(v97, 0).u32[0];
      v100 = vsub_f32(v91, v83);
      *v101.f32 = vext_s8(*&vdupq_lane_s32(*v82.f32, 0), v98, 4uLL);
      v101.i64[1] = vdup_lane_s32(v97, 1).u32[0];
      v102 = vadd_f32(v88, v87);
      *v103.f32 = vext_s8(*&vdupq_lane_s32(v93, 0), v102, 4uLL);
      v103.i64[1] = vdup_lane_s32(v100, 0).u32[0];
      v104 = vmulq_n_f32(v99, v18.f32[0]);
      v104.i32[3] = 0;
      v105 = vmulq_lane_f32(v101, *v18.f32, 1);
      v105.i32[3] = 0;
      v106 = vmulq_laneq_f32(v103, v18, 2);
      v106.i32[3] = 0;
      v107 = vmulq_lane_f32(v104, v92, 1);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v105, v82.f32[0]);
      v108.i32[3] = 0;
      v109 = vmulq_n_f32(v106, *v93.i32);
      v109.i32[3] = 0;
      v74 = vaddq_f32(v109, vaddq_f32(v107, v108));
      v110 = vmulq_lane_f32(v104, v94, 1);
      v110.i32[3] = 0;
      v111 = vmulq_n_f32(v105, *v98.i32);
      v111.i32[3] = 0;
      v112 = vmulq_n_f32(v106, *v102.i32);
      v112.i32[3] = 0;
      v75 = vaddq_f32(v112, vaddq_f32(v110, v111));
      v113 = vmulq_lane_f32(v104, v95, 1);
      v113.i32[3] = 0;
      v114 = vmulq_n_f32(v105, *v96.i32);
      v114.i32[3] = 0;
      v115 = vmulq_n_f32(v106, *v100.i32);
      v115.i32[3] = 0;
      v76 = vaddq_f32(v115, vaddq_f32(v113, v114));
      v307 = v74;
      v308 = v75;
      v116 = vmulq_n_f32(v99, v71.f32[0]);
      v116.i32[3] = 0;
      v117 = vmulq_lane_f32(v101, *v71.f32, 1);
      v117.i32[3] = 0;
      v118 = vmulq_laneq_f32(v103, v71, 2);
      v118.i32[3] = 0;
      v119 = vmulq_lane_f32(v116, v92, 1);
      v119.i32[3] = 0;
      v120 = vmulq_n_f32(v117, v82.f32[0]);
      v120.i32[3] = 0;
      v121 = vmulq_n_f32(v118, *v93.i32);
      v121.i32[3] = 0;
      v122 = vaddq_f32(v121, vaddq_f32(v119, v120));
      v123 = vmulq_lane_f32(v116, v94, 1);
      v123.i32[3] = 0;
      v124 = vmulq_n_f32(v117, *v98.i32);
      v124.i32[3] = 0;
      v125 = vmulq_n_f32(v118, *v102.i32);
      v125.i32[3] = 0;
      v126 = vmulq_lane_f32(v116, v95, 1);
      v126.i32[3] = 0;
      v127 = vmulq_n_f32(v117, *v96.i32);
      v127.i32[3] = 0;
      v128 = vmulq_n_f32(v118, *v100.i32);
      v128.i32[3] = 0;
      v77 = vaddq_f32(v125, vaddq_f32(v123, v124));
      v78 = vaddq_f32(v128, vaddq_f32(v126, v127));
      v309 = v76;
      v310 = v122;
    }

    else
    {
      v71.i32[3] = 0;
      v74 = vmulq_f32(v19, xmmword_1E3047670);
      v75 = vmulq_f32(v19, xmmword_1E3047680);
      v76 = vmulq_f32(v19, xmmword_1E30476A0);
      v307 = v74;
      v308 = v75;
      v77 = vmulq_f32(v71, xmmword_1E3047680);
      v78 = vmulq_f32(v71, xmmword_1E30476A0);
      v309 = v76;
      v310 = vmulq_f32(v71, xmmword_1E3047670);
    }

    v311 = v77;
    v312 = v78;
    v129 = vmulq_f32(v74, 0);
    v129.i32[3] = 0;
    v130 = vmulq_f32(v75, 0);
    v130.i32[3] = 0;
    v131 = vmulq_f32(v76, 0);
    v131.i32[3] = 0;
    v304 = vaddq_f32(v131, vaddq_f32(v130, v129));
  }

  v132 = 0;
  v133 = v21;
  v133.i32[3] = 0;
  v314 = *(v16 + 80);
  if (*(a3 + 4) == 1.0 && *(a3 + 8) == 1.0)
  {
    v132 = *(a3 + 12) == 1.0;
  }

  v134 = *(v17 + 72) + 20 * *(v17 + 71);
  v293 = 0;
  v291 = 0u;
  v292 = 0u;
  v300 = v17 + 32;
  v302 = v134;
  v135.i64[0] = *(v17 + 92);
  v135.i32[2] = *(v17 + 100);
  v303 = *(v17 + 70);
  v135.i64[1] = v135.u32[2];
  v136 = vmulq_f32(v133, v135);
  *v136.i8 = vpmin_f32(vdup_laneq_s32(v136, 2), *v136.i8);
  *v136.i32 = vpmin_f32(*v136.i8, *v136.i8).f32[0];
  *&v292 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v136.i32);
  *(&v292 + 2) = 0.025 * *v136.i32;
  if (v132)
  {
    v294 = xmmword_1E3047670;
    v295 = xmmword_1E3047680;
    v296 = xmmword_1E30476A0;
    v297 = xmmword_1E3047670;
    v298 = xmmword_1E3047680;
    v299 = xmmword_1E30476A0;
  }

  else
  {
    v137 = vrecpeq_f32(v133);
    v138 = 4;
    do
    {
      v137 = vmulq_f32(v137, vrecpsq_f32(v137, v133));
      --v138;
    }

    while (v138);
    *v139.f32 = vdup_lane_s32(*v21.f32, 0);
    v139.i64[1] = v139.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v139, v133)), *v29.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v144 = vdup_lane_s32(*v22.f32, 1);
      v145 = vdup_laneq_s32(v22, 2);
      v146 = vdup_laneq_s32(v22, 3);
      v147 = vaddq_f32(v22, v22);
      v148 = vmul_lane_f32(v144, *v147.f32, 1);
      v149 = vmul_laneq_f32(v145, v147, 2);
      v150 = vmul_n_f32(v144, v147.f32[0]);
      v151 = vmul_n_f32(v145, v147.f32[0]);
      v152 = vmul_n_f32(v146, v147.f32[0]);
      v153 = vmul_lane_f32(v145, *v147.f32, 1);
      v154 = vmul_lane_f32(v146, *v147.f32, 1);
      v155 = vmul_laneq_f32(v146, v147, 2);
      v156 = vsub_f32(_D3, vdup_lane_s32(vmul_f32(*v22.f32, *v147.f32), 0));
      *v147.f32 = vsub_f32(vsub_f32(_D3, v148), v149);
      v157 = vadd_f32(v150, v155);
      v158 = vsub_f32(v151, v154);
      v159 = vsub_f32(v150, v155);
      v160 = vadd_f32(v151, v154);
      v161 = vsub_f32(v153, v152);
      v162 = vext_s8(v160, v161, 4uLL);
      v163 = vsub_f32(v156, v149);
      *v164.f32 = vext_s8(*v147.f32, *&vdupq_lane_s32(v159, 1), 4uLL);
      v164.i64[1] = vdup_lane_s32(v162, 0).u32[0];
      v165 = vsub_f32(v156, v148);
      *v166.f32 = vext_s8(*&vdupq_lane_s32(v157, 0), v163, 4uLL);
      v166.i64[1] = vdup_lane_s32(v162, 1).u32[0];
      v167 = vadd_f32(v153, v152);
      *v168.f32 = vext_s8(*&vdupq_lane_s32(v158, 0), v167, 4uLL);
      v168.i64[1] = vdup_lane_s32(v165, 0).u32[0];
      v169 = vmulq_n_f32(v164, v21.f32[0]);
      v169.i32[3] = 0;
      v170 = vmulq_lane_f32(v166, *v21.f32, 1);
      v170.i32[3] = 0;
      v171 = vmulq_laneq_f32(v168, v21, 2);
      v171.i32[3] = 0;
      v172 = vmulq_lane_f32(v169, *v147.f32, 1);
      v172.i32[3] = 0;
      v173 = vmulq_n_f32(v170, *v157.i32);
      v173.i32[3] = 0;
      v174 = vmulq_n_f32(v171, *v158.i32);
      v174.i32[3] = 0;
      v140 = vaddq_f32(v174, vaddq_f32(v172, v173));
      v175 = vmulq_lane_f32(v169, v159, 1);
      v175.i32[3] = 0;
      v176 = vmulq_n_f32(v170, *v163.i32);
      v176.i32[3] = 0;
      v177 = vmulq_n_f32(v171, *v167.i32);
      v177.i32[3] = 0;
      v141 = vaddq_f32(v177, vaddq_f32(v175, v176));
      v178 = vmulq_lane_f32(v169, v160, 1);
      v178.i32[3] = 0;
      v179 = vmulq_n_f32(v170, *v161.i32);
      v179.i32[3] = 0;
      v180 = vmulq_n_f32(v171, *v165.i32);
      v180.i32[3] = 0;
      v142 = vaddq_f32(v180, vaddq_f32(v178, v179));
      v294 = v140;
      v295 = v141;
      v181 = vmulq_n_f32(v164, v137.f32[0]);
      v181.i32[3] = 0;
      v182 = vmulq_lane_f32(v166, *v137.f32, 1);
      v182.i32[3] = 0;
      v183 = vmulq_laneq_f32(v168, v137, 2);
      v183.i32[3] = 0;
      v184 = vmulq_lane_f32(v181, *v147.f32, 1);
      v184.i32[3] = 0;
      v185 = vmulq_n_f32(v182, *v157.i32);
      v185.i32[3] = 0;
      v186 = vmulq_n_f32(v183, *v158.i32);
      v186.i32[3] = 0;
      v187 = vaddq_f32(v186, vaddq_f32(v184, v185));
      v188 = vmulq_lane_f32(v181, v159, 1);
      v188.i32[3] = 0;
      v189 = vmulq_n_f32(v182, *v163.i32);
      v189.i32[3] = 0;
      v190 = vmulq_n_f32(v183, *v167.i32);
      v190.i32[3] = 0;
      v191 = vmulq_lane_f32(v181, v160, 1);
      v191.i32[3] = 0;
      v192 = vmulq_n_f32(v182, *v161.i32);
      v192.i32[3] = 0;
      v193 = vmulq_n_f32(v183, *v165.i32);
      v193.i32[3] = 0;
      v143 = vaddq_f32(v193, vaddq_f32(v191, v192));
      v296 = v142;
      v297 = v187;
      v298 = vaddq_f32(v190, vaddq_f32(v188, v189));
    }

    else
    {
      v137.i32[3] = 0;
      v140 = vmulq_f32(v133, xmmword_1E3047670);
      v141 = vmulq_f32(v133, xmmword_1E3047680);
      v142 = vmulq_f32(v133, xmmword_1E30476A0);
      v294 = v140;
      v295 = v141;
      v143 = vmulq_f32(v137, xmmword_1E30476A0);
      v296 = v142;
      v297 = vmulq_f32(v137, xmmword_1E3047670);
      v298 = vmulq_f32(v137, xmmword_1E3047680);
    }

    v194 = vmulq_f32(v140, 0);
    v194.i32[3] = 0;
    v195 = vmulq_f32(v141, 0);
    v195.i32[3] = 0;
    v196 = vmulq_f32(v142, 0);
    v196.i32[3] = 0;
    v299 = v143;
    v291 = vaddq_f32(v196, vaddq_f32(v195, v194));
  }

  v301 = *(v17 + 80);
  v197 = *a7;
  v282 = 0;
  v280 = 0u;
  v281 = 0u;
  v274.i64[1] = &v304;
  v275 = &v283;
  v279 = v286;
  v198 = vzip1q_s32(v283, v285);
  v199 = vzip1q_s32(v284, 0);
  v200 = vzip1q_s32(vzip2q_s32(v283, v285), vzip2q_s32(v284, 0));
  v276 = vzip1q_s32(v198, v199);
  v277 = vzip2q_s32(v198, v199);
  v278 = v200;
  v273[1] = &v291;
  v274.i64[0] = &unk_1F5D21B40;
  v273[0] = &unk_1F5D21818;
  *v200.i32 = a9;
  v201 = physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v274, v273, &v286, &v288, &v289, &v287, &v282, &v280, *v200.i8, &v281, (v197 & 0x200) != 0);
  if (v201)
  {
    v202 = *a4;
    v203.i64[0] = a4[1].i64[0];
    v203.i32[2] = a4[1].i32[2];
    *(a6 + 20) = 2;
    v204 = v282.f32[0];
    if (v282.f32[0] <= 0.0)
    {
      if ((v197 & 0x200) != 0)
      {
        v203.i32[3] = 0;
        v232 = v202;
        v232.i32[3] = 0;
        v233 = vdupq_laneq_s32(v202, 3).u64[0];
        LODWORD(v234) = vmla_f32(0xBF000000BF000000, v233, v233).u32[0];
        v235 = vmulq_n_f32(v281, v234);
        v235.i32[3] = 0;
        v236 = vextq_s8(v232, v232, 8uLL).u64[0];
        v237 = vextq_s8(v281, v281, 8uLL).u64[0];
        v238 = vext_s8(*v202.f32, v236, 4uLL);
        v239 = vmls_f32(vmul_f32(*v202.f32, vext_s8(*v281.i8, v237, 4uLL)), v238, *v281.i8);
        *v240.f32 = vext_s8(v239, vmls_f32(vmul_f32(v236, *v281.i8), *v202.f32, v237), 4uLL);
        v240.i64[1] = v239.u32[0];
        v241 = vmlaq_laneq_f32(v235, v240, v202, 3);
        v241.i64[1] = vextq_s8(v241, v241, 8uLL).u32[0];
        v242 = vmulq_f32(v232, v281);
        v242.i64[0] = vpaddq_f32(v242, v242).u64[0];
        v243 = vmlaq_n_f32(v241, v232, vpadd_f32(*v242.f32, *v242.f32).f32[0]);
        v244 = vextq_s8(v243, v243, 8uLL).u32[0];
        v245 = vmulq_n_f32(v280, v234);
        v245.i32[3] = 0;
        v246 = vextq_s8(v280, v280, 8uLL).u64[0];
        v247 = vmls_f32(vmul_f32(*v202.f32, vext_s8(*v280.f32, v246, 4uLL)), v238, *v280.f32);
        *v248.f32 = vext_s8(v247, vmls_f32(vmul_f32(v236, *v280.f32), *v202.f32, v246), 4uLL);
        v248.i64[1] = v247.u32[0];
        v249 = vmlaq_laneq_f32(v245, v248, v202, 3);
        v249.i64[1] = vextq_s8(v249, v249, 8uLL).u32[0];
        v250 = vmulq_f32(v232, v280);
        v250.i64[0] = vpaddq_f32(v250, v250).u64[0];
        v251 = vmlaq_n_f32(v249, v232, vpadd_f32(*v250.f32, *v250.f32).f32[0]);
        v252 = vaddq_f32(v251, v251);
        v252.i32[3] = 0;
        *(a6 + 20) = 3;
        v253 = vmulq_f32(v252, v252);
        v253.i64[0] = vpaddq_f32(v253, v253).u64[0];
        v254 = vpadd_f32(*v253.f32, *v253.f32);
        v255 = vrsqrte_f32(v254);
        v256 = 4;
        do
        {
          v255 = vmul_f32(v255, vrsqrts_f32(vmul_f32(v255, v255), v254));
          --v256;
        }

        while (v256);
        v257 = vbsl_s8(vdup_lane_s32(vceqz_f32(v254), 0), v254, vmul_f32(v254, v255));
        v258 = vrecpe_f32(v257);
        v259 = 4;
        do
        {
          v258 = vmul_f32(v258, vrecps_f32(v257, v258));
          --v259;
        }

        while (v259);
        v243.i64[1] = v244;
        v260.i64[0] = 0x4000000040000000;
        v260.i64[1] = 0x4000000040000000;
        v261 = vmlaq_f32(v203, v260, v243);
        v262 = vmulq_n_f32(v252, v258.f32[0]);
        v262.i32[3] = 0;
        v263 = vnegq_f32(v262);
        *(a6 + 40) = vextq_s8(v263, v263, 4uLL).u64[0];
        v261.i32[3] = v263.i32[0];
        *(a6 + 24) = v261;
        *(a6 + 48) = v204;
      }

      else
      {
        *(a6 + 48) = 0;
        v264 = -a5[1].f32[0];
        *(a6 + 36) = vneg_f32(*a5);
        *(a6 + 44) = v264;
      }

      *(a6 + 16) = -1;
    }

    else
    {
      v205 = vextq_s8(v280, v280, 8uLL).u64[0];
      v206 = vextq_s8(v281, v281, 8uLL).u64[0];
      v207 = vmulq_n_f32(v281, v267);
      v207.i32[3] = 0;
      v208 = vmls_f32(vmul_f32(v269, vext_s8(*v281.i8, v206, 4uLL)), v34, *v281.i8);
      *v209.f32 = vext_s8(v208, vmls_f32(vmul_f32(v266, *v281.i8), v269, v206), 4uLL);
      v209.i64[1] = v208.u32[0];
      v210 = vmlaq_f32(v207, v268, v209);
      v210.i64[1] = vextq_s8(v210, v210, 8uLL).u32[0];
      v211 = vmulq_f32(v270, v281);
      v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
      v212 = vmlaq_n_f32(v210, v270, vpadd_f32(*v211.f32, *v211.f32).f32[0]);
      v213 = vextq_s8(v212, v212, 8uLL).u32[0];
      v214 = vmulq_n_f32(v280, v267);
      v214.i32[3] = 0;
      v215 = vmls_f32(vmul_f32(v269, vext_s8(*v280.f32, v205, 4uLL)), v34, *v280.f32);
      *v216.f32 = vext_s8(v215, vmls_f32(vmul_f32(v266, *v280.f32), v269, v205), 4uLL);
      v216.i64[1] = v215.u32[0];
      v217 = vmlaq_f32(v214, v268, v216);
      v217.i64[1] = vextq_s8(v217, v217, 8uLL).u32[0];
      v218 = vmulq_f32(v270, v280);
      v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
      v219 = vmlaq_n_f32(v217, v270, vpadd_f32(*v218.f32, *v218.f32).f32[0]);
      v220 = vaddq_f32(v219, v219);
      v220.i32[3] = 0;
      *(a6 + 20) = 3;
      v221 = vmulq_f32(v220, v220);
      v221.i64[0] = vpaddq_f32(v221, v221).u64[0];
      v222 = vpadd_f32(*v221.f32, *v221.f32);
      v223 = vrsqrte_f32(v222);
      v224 = 4;
      do
      {
        v223 = vmul_f32(v223, vrsqrts_f32(vmul_f32(v223, v223), v222));
        --v224;
      }

      while (v224);
      v225 = vbsl_s8(vdup_lane_s32(vceqz_f32(v222), 0), v222, vmul_f32(v222, v223));
      v226 = vrecpe_f32(v225);
      v227 = 4;
      do
      {
        v226 = vmul_f32(v226, vrecps_f32(v225, v226));
        --v227;
      }

      while (v227);
      v212.i64[1] = v213;
      v228.i64[0] = 0x4000000040000000;
      v228.i64[1] = 0x4000000040000000;
      v229 = vmulq_n_f32(v220, v226.f32[0]);
      v229.i32[3] = 0;
      v230 = vmlaq_f32(v271, v228, v212);
      v231 = vnegq_f32(v229);
      v230.i32[3] = v231.i32[0];
      *(a6 + 24) = v230;
      *(a6 + 40) = vextq_s8(v231, v231, 4uLL).u64[0];
      *(a6 + 48) = v204 * a8;
      if ((*(a7 + 1) & 4) != 0)
      {
        v290 = *(v16 + 71);
        *(a6 + 16) = computeSweepConvexPlane(a1, v16 + 32, &v290, a2->f32, (a6 + 24), a5);
        *(a6 + 20) |= 0x400u;
      }
    }
  }

  return v201;
}

BOOL physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, float32x2_t *a7, float32x4_t *a8, int32x2_t a9, int8x16_t *a10, char a11)
{
  v62 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v17 = physx::Gu::gjkRaycast<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(a1, a2, a3, a9, a4, a5, a6, &v56, &v57, &v58);
  if (v17)
  {
    v18 = v56;
    *a7 = v56;
    if (*v18.i32 == 0.0 && (a11 & 1) != 0)
    {
      v19 = a1->i64[1];
      v20 = a1[1].i64[0];
      v21 = *(a2 + 8);
      *v18.i32 = (*(v19 + 16) + *(v21 + 16)) * 100.0;
      v55 = vdup_lane_s32(v18, 0);
      v52 = 0;
      v61 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0u;
      v46.i64[1] = v19;
      v47 = v20;
      v46.i64[0] = &unk_1F5D21B40;
      v23 = *(v20 + 32);
      v22 = *(v20 + 48);
      v24 = *(v20 + 16);
      v48 = *v20;
      v51 = v22;
      v25 = vzip1q_s32(v48, v23);
      v26 = vzip2q_s32(v48, v23);
      v27 = vzip1q_s32(v24, 0);
      v48 = vzip1q_s32(v25, v27);
      v49 = vzip2q_s32(v25, v27);
      v50 = vzip1q_s32(v26, vzip2q_s32(v24, 0));
      v45[0] = &unk_1F5D21818;
      v45[1] = v21;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v46, v45, a3, &v55, 0, v54, v53, &v52, *v50.i64, *v26.i64, *v49.i8, v48, v59) != 5)
      {
        goto LABEL_5;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(a1) - 5 > 1)
      {
        v37 = vnegq_f32(*a6);
        v37.i32[3] = 0;
        v38 = vmulq_f32(v37, v37);
        v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
        v39 = vpadd_f32(*v38.f32, *v38.f32);
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
        v30 = vmulq_n_f32(v37, v43.f32[0]);
        v30.i32[3] = 0;
        v28 = 0;
        v29 = 0uLL;
      }

      else
      {
LABEL_5:
        v28 = v61;
        v29 = v59[0];
        v30 = v60;
      }

      *a7 = vmin_f32(v28, 0);
    }

    else
    {
      v30 = v57;
      v29 = v58;
    }

    *a10 = v29;
    *a8 = v30;
  }

  return v17;
}

BOOL sweepCapsule_BoxGeom(uint64_t a1, float32x4_t *a2, uint64_t a3, int8x8_t *a4, uint64_t a5, float32x2_t *a6, uint64_t a7, __int16 *a8, double a9, float a10, float32x4_t a11)
{
  v133 = *MEMORY[0x1E69E9840];
  a11.i64[0] = *(a1 + 4);
  v13 = a11;
  v13.i32[2] = *(a1 + 12);
  v14 = vdup_laneq_s32(v13, 2);
  v15 = v13;
  v15.i32[3] = 0;
  *v16.f32 = *a6;
  v16.i64[1] = a6[1].u32[0];
  v123 = 0u;
  *v13.f32 = a4[2];
  v13.i64[1] = a4[3].u32[0];
  v17.i64[0] = a2[1].i64[0];
  v18 = *a2;
  v17.i64[1] = a2[1].u32[2];
  v19 = vnegq_f32(*a2);
  v107 = vdupq_laneq_s32(*a2, 3);
  v108 = v17;
  v20 = vsubq_f32(v13, v17);
  v21 = v19;
  v21.i32[3] = 0;
  LODWORD(v22) = vmla_f32(0xBF000000BF000000, *v107.f32, *v107.f32).u32[0];
  v23 = vmulq_n_f32(v20, v22);
  v23.i32[3] = 0;
  v24 = vextq_s8(v21, v21, 8uLL).u64[0];
  v25 = vext_s8(*v19.f32, v24, 4uLL);
  v26 = vmls_f32(vmul_f32(*v19.f32, *&vextq_s8(v20, v20, 4uLL)), v25, *v20.f32);
  *v27.f32 = vext_s8(v26, vmls_f32(vmul_f32(v24, *v20.f32), *v19.f32, *&vextq_s8(v20, v20, 8uLL)), 4uLL);
  v27.i64[1] = v26.u32[0];
  v28 = vmlaq_laneq_f32(v23, v27, *a2, 3);
  v28.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
  v29 = vmulq_f32(v21, v20);
  v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
  v30 = vmlaq_n_f32(v28, v21, vpadd_f32(*v29.f32, *v29.f32).f32[0]);
  v31 = vaddq_f32(v30, v30);
  v31.i32[3] = 0;
  _Q18 = *a4->i8;
  _Q18.i32[3] = 0;
  v33 = vmulq_f32(_Q18, v21);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = vmulq_laneq_f32(_Q18, *a2, 3);
  _Q18.i64[0] = vextq_s8(_Q18, _Q18, 8uLL).u64[0];
  v35 = vmls_f32(vmul_f32(vext_s8(*a4, *_Q18.f32, 4uLL), *v19.f32), v25, *a4);
  *v36.f32 = vext_s8(v35, vmls_f32(vmul_f32(*a4, v24), *v19.f32, *_Q18.f32), 4uLL);
  *&v36.u32[2] = v35;
  v37 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v21, *a4->i8, 3), v34), v36);
  *v19.f32 = vdup_lane_s32(*v37.f32, 1);
  *v21.f32 = vdup_laneq_s32(v37, 2);
  v38 = vaddq_f32(v37, v37);
  v39 = vsub_f32(vmul_f32(*&vextq_s8(*a4->i8, *a4->i8, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vpadd_f32(*v33.f32, *v33.f32));
  *_Q18.f32 = vdup_laneq_s32(v38, 2);
  *v37.f32 = vdup_lane_s32(vmul_f32(*v37.f32, *v38.f32), 0);
  v40 = vmul_lane_f32(*v19.f32, *v38.f32, 1);
  v41 = vmul_laneq_f32(*v21.f32, v38, 2);
  *v19.f32 = vmul_n_f32(*v19.f32, v38.f32[0]);
  v42 = vmul_n_f32(*v21.f32, v38.f32[0]);
  *v33.f32 = vmul_lane_f32(vdup_lane_s32(*v38.f32, 0), v39, 1);
  *v21.f32 = vmul_lane_f32(*v21.f32, *v38.f32, 1);
  *v38.f32 = vmul_lane_f32(vdup_lane_s32(*v38.f32, 1), v39, 1);
  v43 = vmul_lane_f32(*_Q18.f32, v39, 1);
  __asm { FMOV            V18.2S, #1.0 }

  *v37.f32 = vsub_f32(*_Q18.f32, *v37.f32);
  *_Q18.f32 = vext_s8(vsub_f32(vsub_f32(*_Q18.f32, v40), v41), vadd_f32(*v19.f32, v43), 4uLL);
  *&_Q18.u32[2] = vsub_f32(v42, *v38.f32);
  *v19.f32 = vext_s8(vsub_f32(*v19.f32, v43), vsub_f32(*v37.f32, v41), 4uLL);
  *&v19.u32[2] = vadd_f32(*v21.f32, *v33.f32);
  *v37.f32 = vsub_f32(*v37.f32, v40);
  *v48.f32 = vext_s8(vadd_f32(v42, *v38.f32), vsub_f32(*v21.f32, *v33.f32), 4uLL);
  v48.i64[1] = v37.i64[0];
  v21.i32[0] = *(a3 + 8);
  v37.i32[0] = *(a5 + 24);
  v120 = 3;
  v121 = 0;
  v116[0] = 0;
  v116[1] = 0;
  v122 = v15;
  v49 = vpmin_f32(v14, *a11.f32);
  v49.f32[0] = vpmin_f32(v49, v49).f32[0];
  v117 = 0.15 * v49.f32[0];
  v118 = 0.05 * v49.f32[0];
  v119 = 0.05 * v49.f32[0];
  v50 = vmulq_n_f32(xmmword_1E3047670, v21.f32[0]);
  v51 = vmulq_n_f32(_Q18, v50.f32[0]);
  v51.i32[3] = 0;
  v52 = vmulq_lane_f32(v19, *v50.f32, 1);
  v52.i32[3] = 0;
  v53 = vmulq_laneq_f32(v48, v50, 2);
  v53.i32[3] = 0;
  v54 = vaddq_f32(v53, vaddq_f32(v51, v52));
  v128 = 4;
  v124 = v31;
  v132 = vdup_lane_s32(*v37.f32, 0);
  v130 = vaddq_f32(v54, v31);
  v131 = vsubq_f32(v31, v54);
  v125 = v37.i32[0];
  v126 = v37.i32[0];
  v127 = v37.i32[0];
  v101 = v16;
  v55 = vmulq_n_f32(v16, *&a9);
  v55.i32[3] = 0;
  v56 = vnegq_f32(v55);
  v57 = v56;
  v57.i32[3] = 0;
  v58 = v18;
  v58.i32[3] = 0;
  v105 = v22;
  v106 = *v18.f32;
  v59 = vmulq_n_f32(v57, v22);
  v59.i32[3] = 0;
  v21.i64[0] = vextq_s8(v58, v58, 8uLL).u64[0];
  v19.i64[0] = vextq_s8(v57, v57, 8uLL).u64[0];
  v60 = vext_s8(*v18.f32, *v21.f32, 4uLL);
  v103 = *v21.f32;
  v104 = v58;
  *v48.f32 = vmls_f32(vmul_f32(*v18.f32, vext_s8(*v56.f32, *v19.f32, 4uLL)), v60, *v56.f32);
  *v56.f32 = vext_s8(*v48.f32, vmls_f32(vmul_f32(*v56.f32, *v21.f32), *v18.f32, *v19.f32), 4uLL);
  v56.i64[1] = v48.u32[0];
  v61 = vmlsq_laneq_f32(v59, v56, v18, 3);
  v61.i64[1] = vextq_s8(v61, v61, 8uLL).u32[0];
  v129 = 1;
  v62 = vmulq_f32(v57, v58);
  v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
  v63 = vmlaq_n_f32(v61, v58, vpadd_f32(*v62.f32, *v62.f32).f32[0]);
  v64 = vaddq_f32(v63, v63);
  v64.i32[3] = 0;
  v115 = v64;
  v65 = *a8;
  v114 = vneg_f32(0x80000000800000);
  v112 = 0u;
  v113 = 0u;
  v111[1] = &v124;
  v110[1] = v116;
  v111[0] = &unk_1F5D217B8;
  v110[0] = &unk_1F5D21A80;
  v109 = v31;
  v58.f32[0] = v37.f32[0] + a10;
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(v111, v110, &v109, &v123, &v115, &v114, &v112, &v113, *v58.f32, (v65 & 0x200) != 0);
  if (result)
  {
    *(a7 + 20) = 2;
    v67 = v114;
    if (v114.f32[0] > 0.0)
    {
      v68 = vmulq_n_f32(v113, v105);
      v68.i32[3] = 0;
      v69 = vextq_s8(v113, v113, 8uLL).u64[0];
      v70 = vmls_f32(vmul_f32(v106, vext_s8(*v113.i8, v69, 4uLL)), v60, *v113.i8);
      *v71.f32 = vext_s8(v70, vmls_f32(vmul_f32(v103, *v113.i8), v106, v69), 4uLL);
      v71.i64[1] = v70.u32[0];
      v72 = vmlaq_f32(v68, v107, v71);
      v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0];
      v73 = vmulq_f32(v104, v113);
      v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
      v74 = vmlaq_n_f32(v72, v104, vpadd_f32(*v73.f32, *v73.f32).f32[0]);
      v74.i64[1] = vextq_s8(v74, v74, 8uLL).u32[0];
      *(a7 + 20) = 3;
      v73.i64[0] = 0x4000000040000000;
      v73.i64[1] = 0x4000000040000000;
      v75 = vmlaq_f32(v108, v73, v74);
      v75.i64[1] = vextq_s8(v75, v75, 8uLL).u32[0];
      v76 = vmulq_n_f32(v112, v105);
      v76.i32[3] = 0;
      v71.i64[0] = vextq_s8(v112, v112, 8uLL).u64[0];
      v77 = vmls_f32(vmul_f32(v106, vext_s8(*v112.f32, *v71.f32, 4uLL)), v60, *v112.f32);
      *v71.f32 = vext_s8(v77, vmls_f32(vmul_f32(v103, *v112.f32), v106, *v71.f32), 4uLL);
      v71.i64[1] = v77.u32[0];
      v78 = vmlaq_f32(v76, v107, v71);
      v78.i64[1] = vextq_s8(v78, v78, 8uLL).u32[0];
      v79 = vmulq_f32(v104, v112);
      v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
      v80 = vmlaq_n_f32(v78, v104, vpadd_f32(*v79.f32, *v79.f32).f32[0]);
      v81 = vaddq_f32(v80, v80);
      v67.i32[0] = vmul_f32(*&a9, v67).u32[0];
      v82 = vmlaq_n_f32(v75, v101, v67.f32[0]);
      *(a7 + 40) = vextq_s8(v81, v81, 4uLL).u64[0];
      v82.i32[3] = v81.i32[0];
      *(a7 + 24) = v82;
LABEL_6:
      *(a7 + 48) = v67.i32[0];
      return result;
    }

    if ((v65 & 0x200) != 0)
    {
      v83 = vmulq_n_f32(v113, v105);
      v83.i32[3] = 0;
      v84 = vextq_s8(v113, v113, 8uLL).u64[0];
      v85 = vmls_f32(vmul_f32(v106, vext_s8(*v113.i8, v84, 4uLL)), v60, *v113.i8);
      *v86.f32 = vext_s8(v85, vmls_f32(vmul_f32(v103, *v113.i8), v106, v84), 4uLL);
      v86.i64[1] = v85.u32[0];
      v87 = vmlaq_f32(v83, v107, v86);
      v87.i64[1] = vextq_s8(v87, v87, 8uLL).u32[0];
      v88 = vmulq_f32(v104, v113);
      v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
      v89 = vmlaq_n_f32(v87, v104, vpadd_f32(*v88.f32, *v88.f32).f32[0]);
      v89.i64[1] = vextq_s8(v89, v89, 8uLL).u32[0];
      v88.i64[0] = 0x4000000040000000;
      v88.i64[1] = 0x4000000040000000;
      v90 = vmlaq_f32(v108, v88, v89);
      v90.i64[1] = vextq_s8(v90, v90, 8uLL).u32[0];
      v91 = v112;
      v92 = vmulq_n_f32(v112, v105);
      v92.i32[3] = 0;
      v86.i64[0] = vextq_s8(v91, v91, 8uLL).u64[0];
      v93 = vmls_f32(vmul_f32(v106, vext_s8(*v112.f32, *v86.f32, 4uLL)), v60, *v112.f32);
      *v86.f32 = vext_s8(v93, vmls_f32(vmul_f32(v103, *v112.f32), v106, *v86.f32), 4uLL);
      v86.i64[1] = v93.u32[0];
      v94 = vmlaq_f32(v92, v107, v86);
      *(a7 + 20) = 3;
      v94.i64[1] = vextq_s8(v94, v94, 8uLL).u32[0];
      v95 = vmulq_f32(v104, v91);
      v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
      v96 = vmlaq_n_f32(v94, v104, vpadd_f32(*v95.f32, *v95.f32).f32[0]);
      v97 = vaddq_f32(v96, v96);
      v98 = v97;
      v98.i32[3] = 0;
      v99 = vmlsq_lane_f32(v90, v98, v67, 0);
      v99.i32[3] = v97.i32[0];
      *(a7 + 24) = v99;
      *(a7 + 40) = vextq_s8(v97, v97, 4uLL).u64[0];
      goto LABEL_6;
    }

    *(a7 + 48) = 0;
    v100 = -a6[1].f32[0];
    *(a7 + 36) = vneg_f32(*a6);
    *(a7 + 44) = v100;
  }

  return result;
}

BOOL physx::Gu::gjkRaycastPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x2_t *a6, float32x4_t *a7, int8x16_t *a8, int32x2_t a9, char a10)
{
  v239 = *MEMORY[0x1E69E9840];
  v14 = *a3;
  v15 = vmlaq_f32(*a4, 0, *a5);
  v16 = vmulq_f32(v14, v14);
  v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
  v226 = 1;
  v17 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v16.f32, *v16.f32), 0x3400000034000000), 0)), v14, xmmword_1E3047670);
  v18 = vmulq_f32(v17, v17);
  v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
  v19 = vpadd_f32(*v18.f32, *v18.f32);
  v20 = vrsqrte_f32(v19);
  v21 = 4;
  do
  {
    v20 = vmul_f32(v20, vrsqrts_f32(vmul_f32(v20, v20), v19));
    --v21;
  }

  while (v21);
  v22 = vextq_s8(v15, v15, 8uLL).u32[0];
  v23 = vbsl_s8(vdup_lane_s32(vceqz_f32(v19), 0), v19, vmul_f32(v19, v20));
  v24 = vrecpe_f32(v23);
  v25 = 4;
  do
  {
    v24 = vmul_f32(v24, vrecps_f32(v23, v24));
    --v25;
  }

  while (v25);
  v26 = vdup_lane_s32(a9, 0);
  v15.i64[1] = v22;
  v27 = vmulq_n_f32(v17, v24.f32[0]);
  v27.i32[3] = 0;
  v28 = vnegq_f32(v27);
  v28.i32[3] = 0;
  v29 = *(a1 + 8);
  v30 = v29[3];
  v31 = v29[4];
  v32 = vmulq_f32(v28, v30);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vmulq_f32(v28, v31);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v32.f32, *v32.f32), vpadd_f32(*v33.f32, *v33.f32)), 0)), v30, v31);
  v35 = *(a2 + 8);
  v36 = v35[3];
  v37 = vnegq_f32(v36);
  v37.i32[3] = 0;
  v38 = vbslq_s8(vcgtzq_f32(v27), v36, v37);
  v39 = vsubq_f32(v34, v38);
  v229 = v39;
  v230 = 0u;
  memset(v231, 0, sizeof(v231));
  v236 = v34;
  v237 = 0u;
  memset(v238, 0, sizeof(v238));
  v40 = vnegq_f32(v39);
  v40.i32[3] = 0;
  v35 = (v35 + 24);
  v233 = v38;
  v234 = 0u;
  memset(v235, 0, sizeof(v235));
  *v34.f32 = vld1_dup_f32(v35->f32);
  *v34.f32 = vmul_f32(vmin_f32(*v34.f32, 0), vdup_n_s32(0x3DCCCCCDu));
  v41 = vadd_f32(v26, *v34.f32);
  v42 = vmul_f32(*v34.f32, *v34.f32);
  v43 = vmul_f32(v41, v41);
  v44 = vmulq_f32(v40, v40);
  v45 = vpaddq_f32(v44, v44);
  v46 = vpadd_f32(*v45.f32, *v45.f32);
  v216 = v42;
  v47 = vcgt_f32(v46, v42);
  v48.i64[0] = -1;
  v48.i64[1] = -1;
  v45.i32[0] = -1;
  v214 = v45;
  v49 = vneg_f32(0x80000000800000);
  v50 = v39;
  v220 = v40;
  v51 = v40;
  v52 = 0;
  while (1)
  {
    v53 = v39;
    v54 = vcltz_s16(vshl_n_s16(vdup_lane_s16(v47, 0), 0xFuLL));
    v55 = vuzp1_s8(v54, v54).u32[0];
    if (v55 != -1)
    {
      break;
    }

    v56 = vmulq_f32(v51, v51);
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v57 = vpadd_f32(*v56.f32, *v56.f32);
    v58 = vrsqrte_f32(v57);
    v59 = 4;
    do
    {
      v58 = vmul_f32(v58, vrsqrts_f32(vmul_f32(v58, v58), v57));
      --v59;
    }

    while (v59);
    v60 = vbsl_s8(vdup_lane_s32(vceqz_f32(v57), 0), v57, vmul_f32(v57, v58));
    v61 = vrecpe_f32(v60);
    v62 = 4;
    do
    {
      v61 = vmul_f32(v61, vrecps_f32(v60, v61));
      --v62;
    }

    while (v62);
    v63 = vmulq_n_f32(v51, v61.f32[0]);
    v63.i32[3] = 0;
    v64 = vnegq_f32(v63);
    v64.i32[3] = 0;
    v65 = *(a1 + 8);
    v66 = v65[3];
    v67 = v65[4];
    v68 = vmulq_f32(v63, v66);
    v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
    v69 = vmulq_f32(v63, v67);
    v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
    v70 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v68.f32, *v68.f32), vpadd_f32(*v69.f32, *v69.f32)), 0)), v66, v67);
    v71 = *(*(a2 + 8) + 48);
    v72 = vnegq_f32(v71);
    v72.i32[3] = 0;
    v73 = vbslq_s8(vcgtzq_f32(v64), v71, v72);
    v74 = vaddq_f32(v15, v73);
    v39 = vsubq_f32(v70, v74);
    v75 = vnegq_f32(v39);
    v75.i32[3] = 0;
    v76 = vmulq_f32(v63, v75);
    v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
    v77 = vsub_f32(vpadd_f32(*v76.f32, *v76.f32), v41);
    if (v77.f32[0] > 0.0)
    {
      v78 = vmulq_f32(v63, *a5);
      v78.i64[0] = vpaddq_f32(v78, v78).u64[0];
      v79 = vpadd_f32(*v78.f32, *v78.f32);
      v80 = 0;
      v81 = 0uLL;
      if (v79.f32[0] >= 0.0)
      {
        v85 = 0uLL;
        goto LABEL_74;
      }

      v82 = vrecpe_f32(v79);
      v83 = 4;
      do
      {
        v82 = vmul_f32(v82, vrecps_f32(v79, v82));
        --v83;
      }

      while (v83);
      v84 = vsub_f32(v52, vmul_f32(v77, v82));
      if (vcgt_f32(v84, v52).u8[0])
      {
        v85 = 0uLL;
        if (v84.f32[0] > 1.0)
        {
          goto LABEL_74;
        }

        v86 = vmlaq_n_f32(*a4, *a5, v84.f32[0]);
        v86.i64[1] = vextq_s8(v86, v86, 8uLL).u32[0];
        v87 = vsubq_f32(v86, v15);
        v233 = vaddq_f32(v233, v87);
        v234 = vaddq_f32(v234, v87);
        v235[0] = vaddq_f32(v235[0], v87);
        v229 = vsubq_f32(v236, v233);
        v230 = vsubq_f32(v237, v234);
        v231[0] = vsubq_f32(v238[0], v235[0]);
        v74 = vaddq_f32(v73, v86);
        v39 = vsubq_f32(v70, v74);
        v46 = v49;
        v220 = v51;
        v15 = v86;
      }

      v52 = v84;
    }

    v223 = v53;
    v88 = v226;
    *(&v236 + v226) = v70;
    *(&v233 + v88) = v74;
    v226 = v88 + 1;
    *(&v229 + v88) = v39;
    if (v88 == 3)
    {
      v221 = v15;
      physx::Gu::closestPtPointTetrahedron(&v229, &v236, &v233, &v226);
      v15 = v221;
LABEL_36:
      v50 = v223;
      goto LABEL_58;
    }

    if (v88 == 2)
    {
      v39 = v229;
      v102 = vsubq_f32(v230, v229);
      v103 = vsubq_f32(v231[0], v229);
      v105 = vmls_f32(vmul_f32(*v102.f32, *&vextq_s8(v103, v103, 4uLL)), *&vextq_s8(v102, v102, 4uLL), *v103.f32);
      *v104.f32 = vext_s8(v105, vmls_f32(vmul_f32(*&vextq_s8(v102, v102, 8uLL), *v103.f32), *v102.f32, *&vextq_s8(v103, v103, 8uLL)), 4uLL);
      v105.i32[1] = 0;
      v226 = 3;
      v106 = vpadd_f32(vmul_f32(*v104.f32, *v104.f32), vmul_f32(v105.u32[0], v105.u32[0]));
      v107 = vpadd_f32(v106, v106);
      if (v107.f32[0] <= 0.00000011921)
      {
        v226 = 2;
        v144 = vmulq_f32(v102, v102);
        v144.i64[0] = vpaddq_f32(v144, v144).u64[0];
        v145 = vpadd_f32(*v144.f32, *v144.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v145), 0), *v229.i8).u32[0] == -1)
        {
          v226 = 1;
          goto LABEL_36;
        }

        v146 = vnegq_f32(v229);
        v146.i32[3] = 0;
        v147 = vmulq_f32(v146, v102);
        v147.i64[0] = vpaddq_f32(v147, v147).u64[0];
        v148 = vpadd_f32(*v147.f32, *v147.f32);
        v149 = vrecpe_f32(v145);
        v150 = 4;
        v50 = v53;
        do
        {
          v149 = vmul_f32(v149, vrecps_f32(v145, v149));
          --v150;
        }

        while (v150);
        v151 = vmul_f32(v148, v149);
        __asm { FMOV            V2.2S, #1.0 }

        v39 = vmlaq_n_f32(v229, v102, vmax_f32(vmin_f32(v151, _D2), 0).f32[0]);
        goto LABEL_41;
      }

      *&v104.u32[2] = v105;
      v108 = vextq_s8(v230, v230, 8uLL).u64[0];
      v109 = vextq_s8(v231[0], v231[0], 8uLL).u64[0];
      v110 = vextq_s8(v231[0], v231[0], 4uLL).u64[0];
      v111 = vextq_s8(v230, v230, 4uLL).u64[0];
      v112 = vmls_f32(vmul_f32(*v230.f32, v110), v111, *v231[0].f32);
      *v113.f32 = vext_s8(v112, vmls_f32(vmul_f32(v108, *v231[0].f32), *v230.f32, v109), 4uLL);
      v113.i64[1] = v112.u32[0];
      v114 = vextq_s8(v229, v229, 8uLL).u64[0];
      v115 = vextq_s8(v229, v229, 4uLL).u64[0];
      v116 = vmls_f32(vmul_f32(v115, *v231[0].f32), v110, *v229.i8);
      *v117.f32 = vext_s8(v116, vmls_f32(vmul_f32(*v229.i8, v109), *v231[0].f32, v114), 4uLL);
      v117.i64[1] = v116.u32[0];
      v118 = vmls_f32(vmul_f32(*v229.i8, v111), v115, *v230.f32);
      *v119.f32 = vext_s8(v118, vmls_f32(vmul_f32(v114, *v230.f32), *v229.i8, v108), 4uLL);
      v119.i64[1] = v118.u32[0];
      v120 = vmulq_f32(v113, v104);
      v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
      v121 = vpadd_f32(*v120.f32, *v120.f32);
      v122 = vmulq_f32(v117, v104);
      v122.i64[0] = vpaddq_f32(v122, v122).u64[0];
      v123 = vpadd_f32(*v122.f32, *v122.f32);
      v124 = vmulq_f32(v119, v104);
      v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
      v125 = vpadd_f32(*v124.f32, *v124.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v123), vcgez_f32(v121)), vcgez_f32(v125)), 0), *v229.i8).u32[0] == -1)
      {
        v153 = vmulq_f32(v229, v104);
        v154 = vrecpe_f32(v107);
        v155 = 4;
        do
        {
          v154 = vmul_f32(v154, vrecps_f32(v107, v154));
          --v155;
        }

        while (v155);
        v156 = vpaddq_f32(v153, v153).u64[0];
        v39 = vmulq_n_f32(v104, vmul_f32(v154, vpadd_f32(v156, v156)).f32[0]);
        v39.i32[3] = 0;
        goto LABEL_36;
      }

      v126 = vnegq_f32(v229);
      v126.i32[3] = 0;
      v127 = vnegq_f32(v230);
      v127.i32[3] = 0;
      v128 = vmulq_f32(v126, v102);
      v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
      v129 = vpadd_f32(*v128.f32, *v128.f32);
      v130 = vmulq_f32(v102, v127);
      v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
      v131 = vpadd_f32(*v130.f32, *v130.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v125), vand_s8(vclez_f32(v131), vcgez_f32(v129))), 0), *v229.i8).u32[0] == -1)
      {
        v157 = vsub_f32(v129, v131);
        v158 = vrecpe_f32(v157);
        v159 = 4;
        v50 = v223;
        do
        {
          v158 = vmul_f32(v158, vrecps_f32(v157, v158));
          --v159;
        }

        while (v159);
        v143 = 0;
        v39 = vmlaq_n_f32(v229, v102, vmul_f32(v129, vbsl_s8(vcgt_f32(vabs_f32(v157), 0x3400000034000000), v158, 0)).f32[0]);
        v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
        v142 = 2;
LABEL_50:
        v160 = &v234;
        v161 = &v237;
        v162 = &v230;
      }

      else
      {
        v132 = vnegq_f32(v231[0]);
        v132.i32[3] = 0;
        v133 = vmulq_f32(v127, v103);
        v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
        v134 = vpadd_f32(*v133.f32, *v133.f32);
        v135 = vmulq_f32(v102, v132);
        v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
        v136 = vpadd_f32(*v135.f32, *v135.f32);
        v137 = vmulq_f32(v103, v132);
        v137.i64[0] = vpaddq_f32(v137, v137).u64[0];
        v138 = vpadd_f32(*v137.f32, *v137.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v134, v131), vcge_f32(v136, v138)), vclez_f32(v121)), 0), *v229.i8).u32[0] == -1)
        {
          v163 = vsub_f32(v134, v131);
          v164 = vadd_f32(v163, vsub_f32(v136, v138));
          v165 = vrecpe_f32(v164);
          v166 = 4;
          v50 = v223;
          do
          {
            v165 = vmul_f32(v165, vrecps_f32(v164, v165));
            --v166;
          }

          while (v166);
          v167 = vmlaq_n_f32(v230, vsubq_f32(v231[0], v230), vmul_f32(v163, vbsl_s8(vcgt_f32(vabs_f32(v164), 0x3400000034000000), v165, 0)).f32[0]);
          v142 = 2;
          v161 = v238;
          v160 = v235;
          v167.i64[1] = vextq_s8(v167, v167, 8uLL).u32[0];
          v162 = v231;
          v143 = 1;
          v39 = v167;
        }

        else
        {
          v139 = vmulq_f32(v126, v103);
          v139.i64[0] = vpaddq_f32(v139, v139).u64[0];
          v140 = vpadd_f32(*v139.f32, *v139.f32);
          _ZF = vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v123), vand_s8(vclez_f32(v138), vcgez_f32(v140))), 0), *v229.i8).u32[0] == -1;
          v50 = v223;
          if (!_ZF)
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v140), vclez_f32(v129)), 0), *v229.i8).u32[0] == -1)
            {
              v143 = 0;
              v142 = 1;
            }

            else
            {
              *v39.f32 = vdup_lane_s16(vand_s8(vcge_f32(v131, v134), vcgez_f32(v131)), 0);
              *v39.f32 = vuzp1_s8(*v39.f32, *v39.f32);
              v141 = v39.i32[0];
              v142 = 1;
              v39 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v39, v214), 0), v230, v231[0]);
              if (v141 == -1)
              {
                v143 = 1;
              }

              else
              {
                v143 = 2;
              }
            }

            goto LABEL_50;
          }

          v168 = vsub_f32(v140, v138);
          v169 = vrecpe_f32(v168);
          v170 = 4;
          do
          {
            v169 = vmul_f32(v169, vrecps_f32(v168, v169));
            --v170;
          }

          while (v170);
          v143 = 0;
          v39 = vmlaq_n_f32(v229, v103, vmul_f32(v140, vbsl_s8(vcgt_f32(vabs_f32(v168), 0x3400000034000000), v169, 0)).f32[0]);
          v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
          v142 = 2;
          v161 = v238;
          v160 = v235;
          v162 = v231;
        }
      }

      v171 = *(&v236 + v143);
      v172 = *v162;
      v173 = *v161;
      v174 = *(&v233 + v143);
      v175 = *v160;
      v229 = *(&v229 + v143);
      v230 = v172;
      v236 = v171;
      v237 = v173;
      v233 = v174;
      v234 = v175;
      v226 = v142;
      goto LABEL_58;
    }

    v50 = v53;
    if (v88 != 1)
    {
      goto LABEL_58;
    }

    v39 = v229;
    v89 = vsubq_f32(v230, v229);
    v90 = vmulq_f32(v89, v89);
    v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
    v91 = vpadd_f32(*v90.f32, *v90.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v91), 0), *v229.i8).u32[0] != -1)
    {
      v92 = vnegq_f32(v229);
      v92.i32[3] = 0;
      v93 = vmulq_f32(v92, v89);
      v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
      v94 = vpadd_f32(*v93.f32, *v93.f32);
      v95 = vrecpe_f32(v91);
      v96 = 4;
      do
      {
        v95 = vmul_f32(v95, vrecps_f32(v91, v95));
        --v96;
      }

      while (v96);
      v97 = vmul_f32(v94, v95);
      __asm { FMOV            V3.2S, #1.0 }

      v39 = vmlaq_n_f32(v229, v89, vmax_f32(vmin_f32(v97, _D3), 0).f32[0]);
LABEL_41:
      v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
      goto LABEL_58;
    }

    v226 = 1;
LABEL_58:
    v51 = vnegq_f32(v39);
    v51.i32[3] = 0;
    v176 = vmulq_f32(v39, v39);
    v176.i64[0] = vpaddq_f32(v176, v176).u64[0];
    v177 = vpadd_f32(*v176.f32, *v176.f32);
    v178 = vcgt_f32(v46, v177);
    v48 = vdupq_lane_s32(vand_s8(v178, 0x100000001), 0);
    v47 = vand_s8(vcgt_f32(v177, v43), v178);
    v46 = v177;
  }

  v73 = v50;
  v179 = *(a1 + 8);
  v180 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v46, v216), 0), v48), 0x1FuLL)), v51, v220);
  v181 = vmulq_f32(v180, v180);
  v181.i64[0] = vpaddq_f32(v181, v181).u64[0];
  v182 = vpadd_f32(*v181.f32, *v181.f32);
  v183 = vrsqrte_f32(v182);
  v184 = 4;
  do
  {
    v183 = vmul_f32(v183, vrsqrts_f32(vmul_f32(v183, v183), v182));
    --v184;
  }

  while (v184);
  v185 = vbsl_s8(vdup_lane_s32(vceqz_f32(v182), 0), v182, vmul_f32(v182, v183));
  v186 = vrecpe_f32(v185);
  v187 = 4;
  do
  {
    v186 = vmul_f32(v186, vrecps_f32(v185, v186));
    --v187;
  }

  while (v187);
  v188 = vdupq_n_s32(-*(v179 + 32));
  v189 = vmulq_n_f32(v180, v186.f32[0]);
  v189.i32[3] = 0;
  v85 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v185), 0), v189));
  v85.i32[3] = 0;
  v190 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v48, 0x1FuLL)), v53, v50);
  v225 = v190;
  if (v226 == 3)
  {
    v227 = 0;
    v228 = 0;
    v222 = v188;
    v224 = v85;
    physx::Gu::barycentricCoordinates(&v225, &v229, &v230, v231, &v228, &v227);
    v188 = v222;
    v85 = v224;
    v186.i32[1] = v236.i32[1];
    v198 = vmulq_n_f32(vsubq_f32(v237, v236), v228.f32[0]);
    v198.i32[3] = 0;
    *v73.f32 = v227;
    v199 = vmulq_n_f32(vsubq_f32(v238[0], v236), v227.f32[0]);
    v199.i32[3] = 0;
    v39 = vaddq_f32(v236, vaddq_f32(v198, v199));
    v179 = *(a1 + 8);
  }

  else if (v226 == 2)
  {
    v73.i64[1] = v230.i64[1];
    v191 = vsubq_f32(v229, v190);
    v192 = vsubq_f32(vsubq_f32(v230, v190), v191);
    v193 = vmulq_f32(v192, v192);
    v193.i64[0] = vpaddq_f32(v193, v193).u64[0];
    *v73.f32 = vpadd_f32(*v193.f32, *v193.f32);
    v194 = vrecpe_f32(*v73.f32);
    v195 = 4;
    do
    {
      v194 = vmul_f32(v194, vrecps_f32(*v73.f32, v194));
      --v195;
    }

    while (v195);
    *v73.f32 = vcgtz_f32(*v73.f32);
    v196 = vnegq_f32(v191);
    v196.i32[3] = 0;
    v197 = vmulq_f32(v196, v192);
    v197.i64[0] = vpaddq_f32(v197, v197).u64[0];
    v39 = vmlaq_n_f32(v236, vsubq_f32(v237, v236), vmul_f32(vbsl_s8(*v73.f32, v194, 0), vpadd_f32(*v197.f32, *v197.f32)).f32[0]);
    v186.i32[1] = 0;
    v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
  }

  else
  {
    v39 = 0uLL;
    if (v226 == 1)
    {
      v39 = v236;
    }
  }

  v51.i32[0] = *(v179 + 16);
  v70 = vmlsq_lane_f32(v39, v85, *v51.f32, 0);
  v51.i32[1] = 0;
  v70.i64[1] = vextq_s8(v70, v70, 8uLL).u32[0];
  v81 = vbslq_s8(v188, v70, v39);
  v80 = v52;
LABEL_74:
  if (v55 != -1)
  {
    *a6 = v80;
    _ZF = v80.f32[0] != 0.0 || a10 == 0;
    if (!_ZF)
    {
      v201 = *(a1 + 8);
      v202 = *(a2 + 8);
      v51.i32[0] = 1120403456;
      v39.f32[0] = (*(v201 + 16) + *(v202 + 16)) * 100.0;
      *v225.f32 = vdup_lane_s32(*v39.f32, 0);
      LOBYTE(v226) = 0;
      v232 = 0;
      v229 = 0u;
      v230 = 0u;
      v231[0] = 0u;
      v236.i64[0] = &unk_1F5D217B8;
      v236.i64[1] = v201;
      v233.i64[0] = &unk_1F5D21A80;
      v233.i64[1] = v202;
      if (physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(&v236, &v233, a3, &v225, 0, &v228, &v227, &v226, 0.0, *v51.i64, *v70.f32, v73, *v81.i8, &v229) != 5)
      {
        goto LABEL_80;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(a1) - 5 > 1)
      {
        v206 = vnegq_f32(*a5);
        v206.i32[3] = 0;
        v207 = vmulq_f32(v206, v206);
        v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
        v208 = vpadd_f32(*v207.f32, *v207.f32);
        v209 = vrsqrte_f32(v208);
        v210 = 4;
        do
        {
          v209 = vmul_f32(v209, vrsqrts_f32(vmul_f32(v209, v209), v208));
          --v210;
        }

        while (v210);
        v211 = vbsl_s8(vdup_lane_s32(vceqz_f32(v208), 0), v208, vmul_f32(v208, v209));
        v212 = vrecpe_f32(v211);
        v213 = 4;
        do
        {
          v212 = vmul_f32(v212, vrecps_f32(v211, v212));
          --v213;
        }

        while (v213);
        v85 = vmulq_n_f32(v206, v212.f32[0]);
        v85.i32[3] = 0;
        v203 = 0;
        v81 = 0uLL;
      }

      else
      {
LABEL_80:
        v203 = v232;
        v81 = v229;
        v85 = v231[0];
      }

      *a6 = vmin_f32(v203, 0);
    }

    *a8 = v81;
    *a7 = v85;
  }

  return v55 != -1;
}

BOOL sweepBox_SphereGeom(uint64_t a1, uint64_t a2, float a3, float a4, int32x4_t a5, double a6, double a7, float32x4_t a8, uint64_t a9, float32x4_t *a10, uint64_t a11, float32x2_t *a12, uint64_t a13, __int16 *a14)
{
  v112 = *MEMORY[0x1E69E9840];
  a5.i64[0] = *(a11 + 48);
  v16 = a5;
  v16.i32[2] = *(a11 + 56);
  v17 = vdup_laneq_s32(v16, 2);
  v18 = v16;
  v18.i32[3] = 0;
  v102 = 0u;
  *a8.f32 = *a12;
  a8.i32[2] = a12[1].i32[0];
  v16.i32[0] = *(a1 + 4);
  v19.i64[0] = *(a2 + 16);
  v19.i64[1] = *(a2 + 24);
  v20.i64[0] = a10[1].i64[0];
  v21 = *a10;
  v20.i64[1] = a10[1].u32[2];
  v22 = vnegq_f32(*a10);
  v86 = vdupq_laneq_s32(*a10, 3);
  v87 = v20;
  v23 = vsubq_f32(v19, v20);
  v24 = v22;
  v24.i32[3] = 0;
  LODWORD(v25) = vmla_f32(0xBF000000BF000000, *v86.f32, *v86.f32).u32[0];
  v26 = vmulq_n_f32(v23, v25);
  v26.i32[3] = 0;
  v27 = vextq_s8(v24, v24, 8uLL).u64[0];
  v28 = vmls_f32(vmul_f32(*v22.f32, *&vextq_s8(v23, v23, 4uLL)), vext_s8(*v22.f32, v27, 4uLL), *v23.f32);
  *v22.f32 = vext_s8(v28, vmls_f32(vmul_f32(v27, *v23.f32), *v22.f32, *&vextq_s8(v23, v23, 8uLL)), 4uLL);
  v22.i64[1] = v28.u32[0];
  v29 = vmlaq_laneq_f32(v26, v22, *a10, 3);
  v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
  v30 = vmulq_f32(v24, v23);
  v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
  v31 = vmlaq_n_f32(v29, v24, vpadd_f32(*v30.f32, *v30.f32).f32[0]);
  v32 = vaddq_f32(v31, v31);
  v32.i32[3] = 0;
  v99 = 3;
  v100 = 0;
  v95[0] = 0;
  v95[1] = 0;
  v101 = v18;
  v33 = vpmin_f32(v17, *a5.i8);
  v33.f32[0] = vpmin_f32(v33, v33).f32[0];
  v96 = 0.15 * v33.f32[0];
  v97 = 0.05 * v33.f32[0];
  v98 = 0.05 * v33.f32[0];
  v107 = 4;
  v103 = v32;
  v111 = vdup_lane_s32(*v16.i8, 0);
  v109 = v32;
  v110 = v32;
  v104 = v16.i32[0];
  v105 = v16.i32[0];
  v106 = v16.i32[0];
  v34 = vmulq_n_f32(a8, a3);
  v35 = v34;
  v35.i32[3] = 0;
  v36 = v21;
  v36.i32[3] = 0;
  v37 = vmulq_n_f32(v35, v25);
  v37.i32[3] = 0;
  v108 = 1;
  v22.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
  v18.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  v38 = vext_s8(*v21.f32, *v22.f32, 4uLL);
  v82 = *v22.f32;
  v83 = v25;
  v39 = vmls_f32(vmul_f32(vext_s8(*v34.f32, *v18.i8, 4uLL), *v21.f32), v38, *v34.f32);
  *v34.f32 = vext_s8(v39, vmls_f32(vmul_f32(*v34.f32, *v22.f32), *v21.f32, *v18.i8), 4uLL);
  v34.i64[1] = v39.u32[0];
  v84 = v36;
  v85 = *v21.f32;
  v40 = vmlsq_laneq_f32(v37, v34, v21, 3);
  v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
  v41 = vmulq_f32(v35, v36);
  v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
  v42 = vmlaq_n_f32(v40, v36, vpadd_f32(*v41.f32, *v41.f32).f32[0]);
  v43 = vaddq_f32(v42, v42);
  v43.i32[3] = 0;
  v94 = v43;
  v44 = *a14;
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v90 = v32;
  v89[1] = &v103;
  v88[1] = v95;
  v89[0] = &unk_1F5D217B8;
  v88[0] = &unk_1F5D21A80;
  v36.f32[0] = *v16.i32 + a4;
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(v89, v88, &v90, &v102, &v94, &v93, &v91, &v92, *v36.f32, (v44 & 0x200) != 0);
  if (result)
  {
    *(a13 + 20) = 2;
    v46 = v93.f32[0];
    if (v93.f32[0] <= 0.0)
    {
      if ((v44 & 0x200) != 0)
      {
        *(a13 + 20) = 3;
        v65 = vmulq_n_f32(v92, v83);
        v65.i32[3] = 0;
        v66 = vextq_s8(v92, v92, 8uLL).u64[0];
        v67 = vmls_f32(vmul_f32(v85, vext_s8(*v92.i8, v66, 4uLL)), v38, *v92.i8);
        *v68.f32 = vext_s8(v67, vmls_f32(vmul_f32(v82, *v92.i8), v85, v66), 4uLL);
        v68.i64[1] = v67.u32[0];
        v69 = vmlaq_f32(v65, v86, v68);
        v69.i64[1] = vextq_s8(v69, v69, 8uLL).u32[0];
        v70 = vmulq_f32(v84, v92);
        v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
        v71 = vmlaq_n_f32(v69, v84, vpadd_f32(*v70.f32, *v70.f32).f32[0]);
        v71.i64[1] = vextq_s8(v71, v71, 8uLL).u32[0];
        v70.i64[0] = 0x4000000040000000;
        v70.i64[1] = 0x4000000040000000;
        v72 = vmlaq_f32(v87, v70, v71);
        v73 = vmulq_n_f32(v91, v83);
        v73.i32[3] = 0;
        v68.i64[0] = vextq_s8(v91, v91, 8uLL).u64[0];
        v74 = vmls_f32(vmul_f32(v85, vext_s8(*v91.f32, *v68.f32, 4uLL)), v38, *v91.f32);
        *v68.f32 = vext_s8(v74, vmls_f32(vmul_f32(v82, *v91.f32), v85, *v68.f32), 4uLL);
        v68.i64[1] = v74.u32[0];
        v75 = vmlaq_f32(v73, v86, v68);
        v75.i64[1] = vextq_s8(v75, v75, 8uLL).u32[0];
        v76 = vmulq_f32(v84, v91);
        v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
        v77 = vmlaq_n_f32(v75, v84, vpadd_f32(*v76.f32, *v76.f32).f32[0]);
        v78 = vaddq_f32(v77, v77);
        v78.i32[3] = 0;
        v79 = vnegq_f32(v78);
        *(a13 + 40) = vextq_s8(v79, v79, 4uLL).u64[0];
        v72.i32[3] = v79.i32[0];
        *(a13 + 24) = v72;
        *(a13 + 48) = v46;
      }

      else
      {
        *(a13 + 48) = 0;
        v80 = -a12[1].f32[0];
        *(a13 + 36) = vneg_f32(*a12);
        *(a13 + 44) = v80;
      }
    }

    else
    {
      v47 = v92;
      v48 = vmulq_n_f32(v92, v83);
      v48.i32[3] = 0;
      v49 = vextq_s8(v47, v47, 8uLL).u64[0];
      v50 = vmls_f32(vmul_f32(v85, vext_s8(*v92.i8, v49, 4uLL)), v38, *v92.i8);
      *v51.f32 = vext_s8(v50, vmls_f32(vmul_f32(v82, *v92.i8), v85, v49), 4uLL);
      v51.i64[1] = v50.u32[0];
      v52 = vmlaq_f32(v48, v86, v51);
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
      *(a13 + 20) = 3;
      v53 = vmulq_f32(v84, v47);
      v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
      v54 = vmlaq_n_f32(v52, v84, vpadd_f32(*v53.f32, *v53.f32).f32[0]);
      v54.i64[1] = vextq_s8(v54, v54, 8uLL).u32[0];
      v53.i64[0] = 0x4000000040000000;
      v53.i64[1] = 0x4000000040000000;
      v55 = vmulq_n_f32(v91, v83);
      v55.i32[3] = 0;
      v56 = vextq_s8(v91, v91, 8uLL).u64[0];
      v57 = vmls_f32(vmul_f32(v85, vext_s8(*v91.f32, v56, 4uLL)), v38, *v91.f32);
      *v58.f32 = vext_s8(v57, vmls_f32(vmul_f32(v82, *v91.f32), v85, v56), 4uLL);
      v58.i64[1] = v57.u32[0];
      v59 = vmlaq_f32(v55, v86, v58);
      v60 = vmlaq_f32(v87, v53, v54);
      v59.i64[1] = vextq_s8(v59, v59, 8uLL).u32[0];
      v61 = vmulq_f32(v84, v91);
      v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
      v62 = vmlaq_n_f32(v59, v84, vpadd_f32(*v61.f32, *v61.f32).f32[0]);
      v63 = vaddq_f32(v62, v62);
      v63.i32[3] = 0;
      v64 = vnegq_f32(v63);
      *(a13 + 40) = vextq_s8(v64, v64, 4uLL).u64[0];
      v60.i32[3] = v64.i32[0];
      *(a13 + 24) = v60;
      *(a13 + 48) = v46 * a3;
    }
  }

  return result;
}

BOOL sweepBox_CapsuleGeom(uint64_t a1, int8x8_t *a2, float a3, float a4, double a5, double a6, float32x4_t a7, double a8, double a9, float32x4_t a10, uint64_t a11, float32x4_t *a12, uint64_t a13, float32x2_t *a14, uint64_t a15, __int16 *a16)
{
  v139 = *MEMORY[0x1E69E9840];
  v16.i32[0] = *(a1 + 4);
  v19 = *(a1 + 8);
  a7.i64[0] = *(a13 + 48);
  v20 = a7;
  v20.i32[2] = *(a13 + 56);
  v21 = vdup_laneq_s32(v20, 2);
  v22 = v20;
  v22.i32[3] = 0;
  *a10.f32 = *a14;
  a10.i32[2] = a14[1].i32[0];
  *v20.f32 = a2[2];
  v20.i64[1] = a2[3].u32[0];
  v23 = *a12;
  v24.i64[0] = a12[1].i64[0];
  v24.i64[1] = a12[1].u32[2];
  v25 = vnegq_f32(*a12);
  v113 = vdupq_laneq_s32(*a12, 3);
  v114 = v24;
  v26 = vsubq_f32(v20, v24);
  v27 = v25;
  v27.i32[3] = 0;
  LODWORD(v28) = vmla_f32(0xBF000000BF000000, *v113.f32, *v113.f32).u32[0];
  v29 = vmulq_n_f32(v26, v28);
  v29.i32[3] = 0;
  v30 = vextq_s8(v27, v27, 8uLL).u64[0];
  v31 = vext_s8(*v25.f32, v30, 4uLL);
  v32 = vmls_f32(vmul_f32(*v25.f32, *&vextq_s8(v26, v26, 4uLL)), v31, *v26.f32);
  *v33.f32 = vext_s8(v32, vmls_f32(vmul_f32(v30, *v26.f32), *v25.f32, *&vextq_s8(v26, v26, 8uLL)), 4uLL);
  v33.i64[1] = v32.u32[0];
  v34 = vmlaq_laneq_f32(v29, v33, *a12, 3);
  v34.i64[1] = vextq_s8(v34, v34, 8uLL).u32[0];
  v35 = vmulq_f32(v27, v26);
  v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
  v36 = vmlaq_n_f32(v34, v27, vpadd_f32(*v35.f32, *v35.f32).f32[0]);
  v37 = vaddq_f32(v36, v36);
  v37.i32[3] = 0;
  v38 = *a2->i8;
  v38.i32[3] = 0;
  v39 = vmulq_f32(v38, v27);
  v40 = vmulq_laneq_f32(v38, *a12, 3);
  v38.i64[0] = vextq_s8(v38, v38, 8uLL).u64[0];
  v41 = vmls_f32(vmul_f32(vext_s8(*a2, *v38.f32, 4uLL), *v25.f32), v31, *a2);
  *v42.f32 = vext_s8(v41, vmls_f32(vmul_f32(*a2, v30), *v25.f32, *v38.f32), 4uLL);
  *&v42.u32[2] = v41;
  v43 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v27, *a2->i8, 3), v40), v42);
  *v25.f32 = vdup_lane_s32(*v43.f32, 1);
  *v27.f32 = vdup_laneq_s32(v43, 2);
  v44 = vpaddq_f32(v39, v39).u64[0];
  v45 = vaddq_f32(v43, v43);
  *v40.f32 = vdup_laneq_s32(v45, 2);
  *v43.f32 = vdup_lane_s32(vmul_f32(*v43.f32, *v45.f32), 0);
  *v36.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a2->i8, *a2->i8, 8uLL), *&vextq_s8(v23, v23, 8uLL)), vpadd_f32(v44, v44));
  v46 = vmul_lane_f32(*v25.f32, *v45.f32, 1);
  v47 = vmul_laneq_f32(*v27.f32, v45, 2);
  *v25.f32 = vmul_n_f32(*v25.f32, v45.f32[0]);
  v48 = vmul_n_f32(*v27.f32, v45.f32[0]);
  *v39.f32 = vmul_lane_f32(vdup_lane_s32(*v45.f32, 0), *v36.f32, 1);
  *v27.f32 = vmul_lane_f32(*v27.f32, *v45.f32, 1);
  *v45.f32 = vmul_lane_f32(vdup_lane_s32(*v45.f32, 1), *v36.f32, 1);
  *v36.f32 = vmul_lane_f32(*v40.f32, *v36.f32, 1);
  __asm { FMOV            V25.2S, #1.0 }

  *v43.f32 = vsub_f32(_D25, *v43.f32);
  *v54.f32 = vext_s8(vsub_f32(vsub_f32(_D25, v46), v47), vadd_f32(*v25.f32, *v36.f32), 4uLL);
  *&v54.u32[2] = vsub_f32(v48, *v45.f32);
  *v25.f32 = vext_s8(vsub_f32(*v25.f32, *v36.f32), vsub_f32(*v43.f32, v47), 4uLL);
  *&v25.u32[2] = vadd_f32(*v27.f32, *v39.f32);
  *v27.f32 = vext_s8(vadd_f32(v48, *v45.f32), vsub_f32(*v27.f32, *v39.f32), 4uLL);
  *&v27.u32[2] = vsub_f32(*v43.f32, v46);
  v129 = 0u;
  v126 = 3;
  v127 = 0;
  v122[0] = 0;
  v122[1] = 0;
  v128 = v22;
  v55 = vpmin_f32(v21, *a7.f32);
  v55.f32[0] = vpmin_f32(v55, v55).f32[0];
  v123 = 0.15 * v55.f32[0];
  v124 = 0.05 * v55.f32[0];
  v125 = 0.05 * v55.f32[0];
  v56 = vmulq_n_f32(xmmword_1E3047670, v19);
  v57 = vmulq_n_f32(v54, v56.f32[0]);
  v57.i32[3] = 0;
  v58 = vmulq_lane_f32(v25, *v56.f32, 1);
  v58.i32[3] = 0;
  v59 = vmulq_laneq_f32(v27, v56, 2);
  v59.i32[3] = 0;
  v60 = vaddq_f32(v59, vaddq_f32(v57, v58));
  v134 = 4;
  v130 = v37;
  v138 = vdup_lane_s32(v16, 0);
  v136 = vaddq_f32(v60, v37);
  v137 = vsubq_f32(v37, v60);
  v131 = v16.i32[0];
  v132 = v16.i32[0];
  v133 = v16.i32[0];
  v61 = vmulq_n_f32(a10, a3);
  v62 = v61;
  v62.i32[3] = 0;
  v63 = v23;
  v63.i32[3] = 0;
  v111 = v28;
  v112 = *v23.f32;
  v64 = vmulq_n_f32(v62, v28);
  v64.i32[3] = 0;
  v135 = 1;
  v22.i64[0] = vextq_s8(v63, v63, 8uLL).u64[0];
  v65 = vextq_s8(v62, v62, 8uLL).u64[0];
  v66 = vext_s8(*v23.f32, *v22.f32, 4uLL);
  v109 = *v22.f32;
  v110 = v63;
  *v58.f32 = vmls_f32(vmul_f32(vext_s8(*v61.f32, v65, 4uLL), *v23.f32), v66, *v61.f32);
  *v61.f32 = vext_s8(*v58.f32, vmls_f32(vmul_f32(*v61.f32, *v22.f32), *v23.f32, v65), 4uLL);
  v61.i64[1] = v58.u32[0];
  v67 = vmlsq_laneq_f32(v64, v61, v23, 3);
  v67.i64[1] = vextq_s8(v67, v67, 8uLL).u32[0];
  v68 = vmulq_f32(v62, v63);
  v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
  v69 = vmlaq_n_f32(v67, v63, vpadd_f32(*v68.f32, *v68.f32).f32[0]);
  v70 = vaddq_f32(v69, v69);
  v70.i32[3] = 0;
  v121 = v70;
  v71 = *a16;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = v37;
  v116[1] = &v130;
  v115[1] = v122;
  v116[0] = &unk_1F5D217B8;
  v115[0] = &unk_1F5D21A80;
  v63.f32[0] = *v16.i32 + a4;
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(v116, v115, &v117, &v129, &v121, &v120, &v118, &v119, *v63.f32, (v71 & 0x200) != 0);
  if (result)
  {
    *(a15 + 20) = 2;
    v73 = v120.f32[0];
    if (v120.f32[0] <= 0.0)
    {
      if ((v71 & 0x200) != 0)
      {
        *(a15 + 20) = 3;
        v92 = vmulq_n_f32(v119, v111);
        v92.i32[3] = 0;
        v93 = vextq_s8(v119, v119, 8uLL).u64[0];
        v94 = vmls_f32(vmul_f32(v112, vext_s8(*v119.i8, v93, 4uLL)), v66, *v119.i8);
        *v95.f32 = vext_s8(v94, vmls_f32(vmul_f32(v109, *v119.i8), v112, v93), 4uLL);
        v95.i64[1] = v94.u32[0];
        v96 = vmlaq_f32(v92, v113, v95);
        v96.i64[1] = vextq_s8(v96, v96, 8uLL).u32[0];
        v97 = vmulq_f32(v110, v119);
        v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
        v98 = vmlaq_n_f32(v96, v110, vpadd_f32(*v97.f32, *v97.f32).f32[0]);
        v98.i64[1] = vextq_s8(v98, v98, 8uLL).u32[0];
        v97.i64[0] = 0x4000000040000000;
        v97.i64[1] = 0x4000000040000000;
        v99 = vmlaq_f32(v114, v97, v98);
        v100 = vmulq_n_f32(v118, v111);
        v100.i32[3] = 0;
        v95.i64[0] = vextq_s8(v118, v118, 8uLL).u64[0];
        v101 = vmls_f32(vmul_f32(v112, vext_s8(*v118.f32, *v95.f32, 4uLL)), v66, *v118.f32);
        *v95.f32 = vext_s8(v101, vmls_f32(vmul_f32(v109, *v118.f32), v112, *v95.f32), 4uLL);
        v95.i64[1] = v101.u32[0];
        v102 = vmlaq_f32(v100, v113, v95);
        v102.i64[1] = vextq_s8(v102, v102, 8uLL).u32[0];
        v103 = vmulq_f32(v110, v118);
        v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
        v104 = vmlaq_n_f32(v102, v110, vpadd_f32(*v103.f32, *v103.f32).f32[0]);
        v105 = vaddq_f32(v104, v104);
        v105.i32[3] = 0;
        v106 = vnegq_f32(v105);
        *(a15 + 40) = vextq_s8(v106, v106, 4uLL).u64[0];
        v99.i32[3] = v106.i32[0];
        *(a15 + 24) = v99;
        *(a15 + 48) = v73;
      }

      else
      {
        *(a15 + 48) = 0;
        v107 = -a14[1].f32[0];
        *(a15 + 36) = vneg_f32(*a14);
        *(a15 + 44) = v107;
      }
    }

    else
    {
      v74 = v119;
      v75 = vmulq_n_f32(v119, v111);
      v75.i32[3] = 0;
      v76 = vextq_s8(v74, v74, 8uLL).u64[0];
      v77 = vmls_f32(vmul_f32(v112, vext_s8(*v119.i8, v76, 4uLL)), v66, *v119.i8);
      *v78.f32 = vext_s8(v77, vmls_f32(vmul_f32(v109, *v119.i8), v112, v76), 4uLL);
      v78.i64[1] = v77.u32[0];
      v79 = vmlaq_f32(v75, v113, v78);
      v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
      *(a15 + 20) = 3;
      v80 = vmulq_f32(v110, v74);
      v80.i64[0] = vpaddq_f32(v80, v80).u64[0];
      v81 = vmlaq_n_f32(v79, v110, vpadd_f32(*v80.f32, *v80.f32).f32[0]);
      v81.i64[1] = vextq_s8(v81, v81, 8uLL).u32[0];
      v80.i64[0] = 0x4000000040000000;
      v80.i64[1] = 0x4000000040000000;
      v82 = vmulq_n_f32(v118, v111);
      v82.i32[3] = 0;
      v83 = vextq_s8(v118, v118, 8uLL).u64[0];
      v84 = vmls_f32(vmul_f32(v112, vext_s8(*v118.f32, v83, 4uLL)), v66, *v118.f32);
      *v85.f32 = vext_s8(v84, vmls_f32(vmul_f32(v109, *v118.f32), v112, v83), 4uLL);
      v85.i64[1] = v84.u32[0];
      v86 = vmlaq_f32(v82, v113, v85);
      v87 = vmlaq_f32(v114, v80, v81);
      v86.i64[1] = vextq_s8(v86, v86, 8uLL).u32[0];
      v88 = vmulq_f32(v110, v118);
      v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
      v89 = vmlaq_n_f32(v86, v110, vpadd_f32(*v88.f32, *v88.f32).f32[0]);
      v90 = vaddq_f32(v89, v89);
      v90.i32[3] = 0;
      v91 = vnegq_f32(v90);
      *(a15 + 40) = vextq_s8(v91, v91, 4uLL).u64[0];
      v87.i32[3] = v91.i32[0];
      *(a15 + 24) = v87;
      *(a15 + 48) = v73 * a3;
    }
  }

  return result;
}

BOOL sweepBox_BoxGeom(uint64_t a1, int8x8_t *a2, float a3, float a4, double a5, int32x4_t a6, uint64_t a7, float32x4_t *a8, uint64_t a9, float32x2_t *a10, uint64_t a11, __int16 *a12)
{
  v162 = 0;
  a6.i64[0] = *(a1 + 4);
  v15 = a6;
  v15.i32[2] = *(a1 + 12);
  v16 = vdup_laneq_s32(v15, 2);
  v161 = 0u;
  v17 = v15;
  v17.i32[3] = 0;
  v15.i64[0] = *(a9 + 48);
  v18 = v15;
  v18.i32[2] = *(a9 + 56);
  v19 = vdup_laneq_s32(v18, 2);
  v18.i32[3] = 0;
  *v20.f32 = a2[2];
  v20.i64[1] = a2[3].u32[0];
  v21 = *a8;
  v22.i64[0] = a8[1].i64[0];
  v22.i64[1] = a8[1].u32[2];
  v23 = vnegq_f32(*a8);
  v132 = vdupq_laneq_s32(*a8, 3);
  v133 = v22;
  v24 = vsubq_f32(v20, v22);
  v25 = v23;
  v25.i32[3] = 0;
  LODWORD(v26) = vmla_f32(0xBF000000BF000000, *v132.f32, *v132.f32).u32[0];
  v27 = vmulq_n_f32(v24, v26);
  v27.i32[3] = 0;
  v28 = vextq_s8(v25, v25, 8uLL).u64[0];
  v29 = vext_s8(*v23.i8, v28, 4uLL);
  v30 = vmls_f32(vmul_f32(*v23.i8, *&vextq_s8(v24, v24, 4uLL)), v29, *v24.f32);
  *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(v28, *v24.f32), *v23.i8, *&vextq_s8(v24, v24, 8uLL)), 4uLL);
  v31.i64[1] = v30.u32[0];
  v32 = vmlaq_laneq_f32(v27, v31, *a8, 3);
  v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
  v33 = vmulq_f32(v25, v24);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = *a2->i8;
  v34.i32[3] = 0;
  v35 = vmlaq_n_f32(v32, v25, vpadd_f32(*v33.f32, *v33.f32).f32[0]);
  v36 = vmulq_f32(v34, v25);
  v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
  _Q25 = vmulq_laneq_f32(v34, *a8, 3);
  v34.i64[0] = vextq_s8(v34, v34, 8uLL).u64[0];
  v38 = vmls_f32(vmul_f32(vext_s8(*a2, *v34.f32, 4uLL), *v23.i8), v29, *a2);
  *v39.f32 = vext_s8(v38, vmls_f32(vmul_f32(*a2, v28), *v23.i8, *v34.f32), 4uLL);
  *&v39.u32[2] = v38;
  v40 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v25, *a2->i8, 3), _Q25), v39);
  *v23.i8 = vdup_lane_s32(*v40.f32, 1);
  *v25.f32 = vdup_laneq_s32(v40, 2);
  v41 = vaddq_f32(v40, v40);
  v42 = vdup_laneq_s32(v41, 2);
  v43 = vsub_f32(vmul_f32(*&vextq_s8(*a2->i8, *a2->i8, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vpadd_f32(*v36.f32, *v36.f32));
  *v40.f32 = vmul_f32(*v40.f32, *v41.f32);
  *v36.f32 = vmul_lane_f32(*v23.i8, *v41.f32, 1);
  v44 = vmul_laneq_f32(*v25.f32, v41, 2);
  *v23.i8 = vmul_n_f32(*v23.i8, v41.f32[0]);
  v45 = vmul_n_f32(*v25.f32, v41.f32[0]);
  *v34.f32 = vmul_lane_f32(vdup_lane_s32(*v41.f32, 0), v43, 1);
  *v25.f32 = vmul_lane_f32(*v25.f32, *v41.f32, 1);
  *v41.f32 = vmul_lane_f32(vdup_lane_s32(*v41.f32, 1), v43, 1);
  v46 = vmul_lane_f32(v42, v43, 1);
  __asm { FMOV            V25.2S, #1.0 }

  *v51.i8 = vext_s8(vsub_f32(vsub_f32(*_Q25.f32, *v36.f32), v44), vadd_f32(*v23.i8, v46), 4uLL);
  v51.i64[1] = vsub_f32(v45, *v41.f32).u32[0];
  *v12.f32 = *a10;
  v12.i32[2] = a10[1].i32[0];
  v52 = vaddq_f32(v35, v35);
  v52.i32[3] = 0;
  *v40.f32 = vsub_f32(*_Q25.f32, vdup_lane_s32(*v40.f32, 0));
  *v23.i8 = vext_s8(vsub_f32(*v23.i8, v46), vsub_f32(*v40.f32, v44), 4uLL);
  v23.i64[1] = vadd_f32(*v25.f32, *v34.f32).u32[0];
  *v53.i8 = vext_s8(vadd_f32(v45, *v41.f32), vsub_f32(*v25.f32, *v34.f32), 4uLL);
  v53.i64[1] = vsub_f32(*v40.f32, *v36.f32).u32[0];
  v159[0] = v51;
  v159[1] = v23;
  v159[2] = v53;
  v160 = v52;
  v156 = 3;
  v157 = 0;
  v152[0] = 0;
  v152[1] = 0;
  v158 = v17;
  v54 = vpmin_f32(v16, *a6.i8);
  v54.f32[0] = vpmin_f32(v54, v54).f32[0];
  v153 = 0.15 * v54.f32[0];
  v154 = 0.05 * v54.f32[0];
  v155 = 0.05 * v54.f32[0];
  v149 = 3;
  v150 = 0;
  v145[0] = 0;
  v145[1] = 0;
  v151 = v18;
  v55 = vpmin_f32(v19, *v15.i8);
  v55.f32[0] = vpmin_f32(v55, v55).f32[0];
  v146 = 0.15 * v55.f32[0];
  v147 = 0.05 * v55.f32[0];
  v56 = vmulq_n_f32(v12, a3);
  v57 = v56;
  v57.i32[3] = 0;
  v58 = v21;
  v58.i32[3] = 0;
  v130 = v26;
  v131 = *v21.f32;
  v59 = vmulq_n_f32(v57, v26);
  v59.i32[3] = 0;
  v52.i64[0] = vextq_s8(v58, v58, 8uLL).u64[0];
  v60 = vextq_s8(v57, v57, 8uLL).u64[0];
  v61 = vext_s8(*v21.f32, *v52.f32, 4uLL);
  v128 = *v52.f32;
  v129 = v58;
  *v18.i8 = vmls_f32(vmul_f32(vext_s8(*v56.f32, v60, 4uLL), *v21.f32), v61, *v56.f32);
  *v56.f32 = vext_s8(*v18.i8, vmls_f32(vmul_f32(*v56.f32, *v52.f32), *v21.f32, v60), 4uLL);
  v56.i64[1] = v18.u32[0];
  v62 = vmlsq_laneq_f32(v59, v56, v21, 3);
  v62.i64[1] = vextq_s8(v62, v62, 8uLL).u32[0];
  v148 = 0.05 * v55.f32[0];
  v63 = vmulq_f32(v57, v58);
  v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
  v64 = vmlaq_n_f32(v62, v58, vpadd_f32(*v63.f32, *v63.f32).f32[0]);
  v65 = vaddq_f32(v64, v64);
  v65.i32[3] = 0;
  v144 = v65;
  v66 = *a12;
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v135.i64[1] = v152;
  v136 = v159;
  v140 = v160;
  v67 = vzip1q_s32(v51, v53);
  v68 = vzip1q_s32(v23, 0);
  v69 = vzip1q_s32(vzip2q_s32(v51, v53), vzip2q_s32(v23, 0));
  v137 = vzip1q_s32(v67, v68);
  v138 = vzip2q_s32(v67, v68);
  v139 = v69;
  v134[1] = v145;
  v135.i64[0] = &unk_1F5D21AE0;
  v134[0] = &unk_1F5D21A80;
  *v69.i32 = a4;
  result = physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(&v135, v134, &v160, &v162, &v161, &v144, &v143, &v141, *v69.i8, &v142, (v66 & 0x200) != 0);
  if (result)
  {
    *(a11 + 20) = 2;
    v71 = v143.f32[0];
    if (*&v162 >= v143.f32[0])
    {
      if ((v66 & 0x200) != 0)
      {
        v99 = vmulq_n_f32(v142, v130);
        v99.i32[3] = 0;
        v100 = vextq_s8(v142, v142, 8uLL).u64[0];
        v101 = vmls_f32(vmul_f32(v131, vext_s8(*v142.i8, v100, 4uLL)), v61, *v142.i8);
        *v102.f32 = vext_s8(v101, vmls_f32(vmul_f32(v128, *v142.i8), v131, v100), 4uLL);
        v102.i64[1] = v101.u32[0];
        v103 = vmlaq_f32(v99, v132, v102);
        v103.i64[1] = vextq_s8(v103, v103, 8uLL).u32[0];
        v104 = vmulq_f32(v129, v142);
        v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
        v105 = vmlaq_n_f32(v103, v129, vpadd_f32(*v104.f32, *v104.f32).f32[0]);
        v106 = vextq_s8(v105, v105, 8uLL).u32[0];
        v107 = vmulq_n_f32(v141, v130);
        v107.i32[3] = 0;
        v108 = vextq_s8(v141, v141, 8uLL).u64[0];
        v109 = vmls_f32(vmul_f32(v131, vext_s8(*v141.f32, v108, 4uLL)), v61, *v141.f32);
        *v110.f32 = vext_s8(v109, vmls_f32(vmul_f32(v128, *v141.f32), v131, v108), 4uLL);
        v110.i64[1] = v109.u32[0];
        v111 = vmlaq_f32(v107, v132, v110);
        v111.i64[1] = vextq_s8(v111, v111, 8uLL).u32[0];
        v112 = vmulq_f32(v129, v141);
        v112.i64[0] = vpaddq_f32(v112, v112).u64[0];
        v113 = vmlaq_n_f32(v111, v129, vpadd_f32(*v112.f32, *v112.f32).f32[0]);
        v114 = vaddq_f32(v113, v113);
        v114.i32[3] = 0;
        *(a11 + 20) = 3;
        v115 = vmulq_f32(v114, v114);
        v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
        v116 = vpadd_f32(*v115.f32, *v115.f32);
        v117 = vrsqrte_f32(v116);
        v118 = 4;
        do
        {
          v117 = vmul_f32(v117, vrsqrts_f32(vmul_f32(v117, v117), v116));
          --v118;
        }

        while (v118);
        v119 = vbsl_s8(vdup_lane_s32(vceqz_f32(v116), 0), v116, vmul_f32(v116, v117));
        v120 = vrecpe_f32(v119);
        v121 = 4;
        do
        {
          v120 = vmul_f32(v120, vrecps_f32(v119, v120));
          --v121;
        }

        while (v121);
        v105.i64[1] = v106;
        v122.i64[0] = 0x4000000040000000;
        v122.i64[1] = 0x4000000040000000;
        v123 = vmlaq_f32(v133, v122, v105);
        v124 = vmulq_n_f32(v114, v120.f32[0]);
        v124.i32[3] = 0;
        v125 = vnegq_f32(v124);
        *(a11 + 40) = vextq_s8(v125, v125, 4uLL).u64[0];
        v123.i32[3] = v125.i32[0];
        *(a11 + 24) = v123;
        *(a11 + 48) = v71;
      }

      else
      {
        *(a11 + 48) = 0;
        v126 = -a10[1].f32[0];
        *(a11 + 36) = vneg_f32(*a10);
        *(a11 + 44) = v126;
      }
    }

    else
    {
      v72 = vmulq_n_f32(v142, v130);
      v72.i32[3] = 0;
      v73 = vextq_s8(v142, v142, 8uLL).u64[0];
      v74 = vmls_f32(vmul_f32(v131, vext_s8(*v142.i8, v73, 4uLL)), v61, *v142.i8);
      *v75.f32 = vext_s8(v74, vmls_f32(vmul_f32(v128, *v142.i8), v131, v73), 4uLL);
      v75.i64[1] = v74.u32[0];
      v76 = vmlaq_f32(v72, v132, v75);
      v76.i64[1] = vextq_s8(v76, v76, 8uLL).u32[0];
      v77 = vmulq_f32(v129, v142);
      v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
      v78 = vmlaq_n_f32(v76, v129, vpadd_f32(*v77.f32, *v77.f32).f32[0]);
      v79 = vextq_s8(v78, v78, 8uLL).u32[0];
      v80 = vmulq_n_f32(v141, v130);
      v80.i32[3] = 0;
      v81 = vextq_s8(v141, v141, 8uLL).u64[0];
      v82 = vmls_f32(vmul_f32(v131, vext_s8(*v141.f32, v81, 4uLL)), v61, *v141.f32);
      *v83.f32 = vext_s8(v82, vmls_f32(vmul_f32(v128, *v141.f32), v131, v81), 4uLL);
      v83.i64[1] = v82.u32[0];
      v84 = vmlaq_f32(v80, v132, v83);
      v84.i64[1] = vextq_s8(v84, v84, 8uLL).u32[0];
      v85 = vmulq_f32(v129, v141);
      v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
      v86 = vmlaq_n_f32(v84, v129, vpadd_f32(*v85.f32, *v85.f32).f32[0]);
      v87 = vaddq_f32(v86, v86);
      v87.i32[3] = 0;
      *(a11 + 20) = 3;
      v88 = vmulq_f32(v87, v87);
      v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
      v89 = vpadd_f32(*v88.f32, *v88.f32);
      v90 = vrsqrte_f32(v89);
      v91 = 4;
      do
      {
        v90 = vmul_f32(v90, vrsqrts_f32(vmul_f32(v90, v90), v89));
        --v91;
      }

      while (v91);
      v92 = vbsl_s8(vdup_lane_s32(vceqz_f32(v89), 0), v89, vmul_f32(v89, v90));
      v93 = vrecpe_f32(v92);
      v94 = 4;
      do
      {
        v93 = vmul_f32(v93, vrecps_f32(v92, v93));
        --v94;
      }

      while (v94);
      v78.i64[1] = v79;
      v95.i64[0] = 0x4000000040000000;
      v95.i64[1] = 0x4000000040000000;
      v96 = vmlaq_f32(v133, v95, v78);
      v97 = vmulq_n_f32(v87, v93.f32[0]);
      v97.i32[3] = 0;
      v98 = vnegq_f32(v97);
      *(a11 + 40) = vextq_s8(v98, v98, 4uLL).u64[0];
      v96.i32[3] = v98.i32[0];
      *(a11 + 24) = v96;
      *(a11 + 48) = v71 * a3;
    }
  }

  return result;
}

BOOL physx::Gu::gjkRaycastPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6, float32x2_t *a7, float32x4_t *a8, int32x2_t a9, int8x16_t *a10, char a11)
{
  v62 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  v56 = 0;
  v17 = physx::Gu::gjkRaycast<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(a1, a2, a3, a9, a4, a5, a6, &v56, &v57, &v58);
  if (v17)
  {
    v18 = v56;
    *a7 = v56;
    if (*v18.i32 == 0.0 && (a11 & 1) != 0)
    {
      v19 = a1->i64[1];
      v20 = a1[1].i64[0];
      v21 = *(a2 + 8);
      *v18.i32 = (*(v19 + 16) + *(v21 + 16)) * 100.0;
      v55 = vdup_lane_s32(v18, 0);
      v52 = 0;
      v61 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0u;
      v46.i64[1] = v19;
      v47 = v20;
      v46.i64[0] = &unk_1F5D21AE0;
      v23 = *(v20 + 32);
      v22 = *(v20 + 48);
      v24 = *(v20 + 16);
      v48 = *v20;
      v51 = v22;
      v25 = vzip1q_s32(v48, v23);
      v26 = vzip2q_s32(v48, v23);
      v27 = vzip1q_s32(v24, 0);
      v48 = vzip1q_s32(v25, v27);
      v49 = vzip2q_s32(v25, v27);
      v50 = vzip1q_s32(v26, vzip2q_s32(v24, 0));
      v45[0] = &unk_1F5D21A80;
      v45[1] = v21;
      if (physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(&v46, v45, a3, &v55, 0, v54, v53, &v52, *v50.i64, *v26.i64, *v49.i8, v59) != 5)
      {
        goto LABEL_5;
      }

      __asm { FMOV            V0.2S, #1.0 }

      if (physx::Gu::epaPenetration(a1) - 5 > 1)
      {
        v37 = vnegq_f32(*a6);
        v37.i32[3] = 0;
        v38 = vmulq_f32(v37, v37);
        v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
        v39 = vpadd_f32(*v38.f32, *v38.f32);
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
        v30 = vmulq_n_f32(v37, v43.f32[0]);
        v30.i32[3] = 0;
        v28 = 0;
        v29 = 0uLL;
      }

      else
      {
LABEL_5:
        v28 = v61;
        v29 = v59[0];
        v30 = v60;
      }

      *a7 = vmin_f32(v28, 0);
    }

    else
    {
      v30 = v57;
      v29 = v58;
    }

    *a10 = v29;
    *a8 = v30;
  }

  return v17;
}

BOOL physx::Gu::sweepBoxTriangles(_BOOL8 result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8, double a9, float a10, double a11, double a12, double a13, double a14, float32x4_t a15, __int16 *a16)
{
  if (!result)
  {
    return result;
  }

  *v17.i32 = a10;
  v19 = result;
  v133 = *a16;
  v20 = vdup_lane_s32(*a5, 1);
  v21 = vdup_laneq_s32(*a5, 2);
  v22 = vdup_laneq_s32(*a5, 3);
  _Q3 = vaddq_f32(*a5, *a5);
  v136 = *a5;
  v24 = vdup_lane_s32(vmul_f32(*a5, *_Q3.f32), 0);
  v25 = *a16 & 0x80;
  _D5 = vmul_lane_f32(v20, *_Q3.f32, 1);
  *a15.f32 = vmul_laneq_f32(v21, _Q3, 2);
  v27 = vmul_n_f32(v20, _Q3.f32[0]);
  _D7 = vmul_n_f32(v21, _Q3.f32[0]);
  v29 = vmul_n_f32(v22, _Q3.f32[0]);
  v30 = vmul_lane_f32(v21, *_Q3.f32, 1);
  v31 = vmul_lane_f32(v22, *_Q3.f32, 1);
  *_Q3.f32 = vmul_laneq_f32(v22, _Q3, 2);
  __asm { FMOV            V16.2S, #1.0 }

  v37 = vsub_f32(_D16, v24);
  v51.f32[0] = vadd_f32(v27, *_Q3.f32).f32[0];
  *v52.f32 = vsub_f32(_D7, v31);
  _D17 = vsub_f32(v27, *_Q3.f32);
  v39 = vsub_f32(v37, *a15.f32);
  v40 = vadd_f32(v30, v29);
  _D1 = vadd_f32(_D7, v31);
  v42 = vsub_f32(v30, v29);
  v29.f32[0] = vsub_f32(v37, _D5).f32[0];
  *&v43 = (1.0 - _D5.f32[1]) - a15.f32[1];
  _D5.i32[0] = *(a5 + 16);
  v37.i32[0] = *(a5 + 20);
  v44 = *(a5 + 24);
  a15.i64[0] = *(a4 + 4);
  __asm { FMLS            S7, S5, V17.S[1] }

  v45 = _D7.f32[0] - (*v40.i32 * v44);
  __asm { FMLS            S3, S5, V1.S[1] }

  v46 = _Q3.f32[0] - (v29.f32[0] * v44);
  _D7.i32[0] = *(a6 + 8);
  v47 = vdup_lane_s32(v39, 0);
  v47.i32[0] = v43;
  *v57.f32 = vadd_f32(vadd_f32(vmul_f32(__PAIR64__(_D17.u32[1], v51.u32[0]), vrev64_s32(*a6)), vmul_f32(v47, *a6)), vmul_n_f32(vzip1_s32(*v52.f32, v40), _D7.f32[0]));
  *&v48 = vaddv_f32(vmul_f32(vext_s8(_D1, v42, 4uLL), *a6)) + (_D7.f32[0] * v29.f32[0]);
  *v49.f32 = vmul_n_f32(*v57.f32, *&a9);
  v50.i32[3] = 0;
  v50.i64[0] = __PAIR64__(_D17.u32[1], v43);
  v51.i32[1] = v39.i32[0];
  v51.i32[2] = v42.i32[0];
  v52.i32[1] = v40.i32[0];
  v52.i32[2] = v29.i32[0];
  v53.i32[3] = 0;
  v53.f32[0] = ((-v37.f32[0] * v51.f32[0]) - (*&v43 * _D5.f32[0])) - (v52.f32[0] * v44);
  v53.f32[1] = v45;
  v54 = a15;
  v54.i32[2] = *(a4 + 12);
  v170 = 0;
  v55 = vdup_laneq_s32(v54, 2);
  v56 = v54;
  v56.i32[3] = 0;
  v57.i64[1] = v48;
  v169 = 0uLL;
  v58 = vdup_lane_s32(v17, 0);
  v59 = vmulq_f32(v56, vabsq_f32(v57));
  v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
  v60 = vpadd_f32(*v59.f32, *v59.f32);
  v166 = 3;
  v167 = 0;
  v162 = 0uLL;
  v168 = v56;
  v61 = vpmin_f32(v55, *a15.f32);
  v61.f32[0] = vpmin_f32(v61, v61).f32[0];
  v163 = 0.15 * v61.f32[0];
  v164 = 0.05 * v61.f32[0];
  v165 = 0.05 * v61.f32[0];
  v49.f32[2] = *&v48 * *&a9;
  v49.i32[3] = 0;
  v161 = v49;
  a15.i32[3] = 0;
  a15.i64[0] = __PAIR64__(v37.u32[0], _D5.u32[0]);
  if (a8)
  {
    v62 = *a8;
  }

  else
  {
    v62 = 0;
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  *&v16 = vdup_lane_s32(*&a9, 0);
  v137 = a3;
  v66 = a3 | (v25 >> 7);
  v50.i32[2] = _D1.i32[1];
  v51.i32[3] = 0;
  v52.i32[3] = 0;
  v53.f32[2] = v46;
  a15.f32[2] = v44;
  v132 = a15;
  v67 = vadd_f32(v58, v60);
  v68 = 0.0;
  v145 = vdupq_n_s32(0x3EAAAA9Fu);
  v138 = 0u;
  v139 = 0u;
  v69 = 0.0;
  v70 = 0.0;
  v143 = v51;
  v144 = v17.i32[0];
  v141 = v50;
  v142 = v52;
  v146 = v57;
  v140 = v53;
  while (1)
  {
    if (v62 == v65)
    {
      v71 = 0;
    }

    else
    {
      v71 = v65;
    }

    if (v65)
    {
      v72 = v71;
    }

    else
    {
      v72 = v62;
    }

    v73 = (a2 + 36 * v72);
    v74 = vmulq_n_f32(v50, *v73);
    v74.i32[3] = 0;
    v75 = vmulq_n_f32(v51, v73[1]);
    v75.i32[3] = 0;
    v76 = vmulq_n_f32(v52, v73[2]);
    v76.i32[3] = 0;
    v77 = vaddq_f32(v53, vaddq_f32(vaddq_f32(v74, v75), v76));
    v78 = vmulq_n_f32(v50, v73[3]);
    v78.i32[3] = 0;
    v79 = vmulq_n_f32(v51, v73[4]);
    v79.i32[3] = 0;
    v80 = vmulq_n_f32(v52, v73[5]);
    v80.i32[3] = 0;
    v81 = vaddq_f32(v53, vaddq_f32(vaddq_f32(v78, v79), v80));
    v82 = vmulq_n_f32(v50, v73[6]);
    v82.i32[3] = 0;
    v83 = vmulq_n_f32(v51, v73[7]);
    v83.i32[3] = 0;
    v84 = vmulq_n_f32(v52, v73[8]);
    v84.i32[3] = 0;
    v85 = vaddq_f32(v53, vaddq_f32(vaddq_f32(v82, v83), v84));
    v86 = vsubq_f32(v85, v81);
    v87 = vsubq_f32(v77, v81);
    v88 = vmls_f32(vmul_f32(*v87.i8, *&vextq_s8(v86, v86, 8uLL)), *v86.i8, *&vextq_s8(v87, v87, 8uLL));
    v89 = vmls_f32(vmul_f32(*&vextq_s8(v87, v87, 4uLL), *v86.i8), *&vextq_s8(v86, v86, 4uLL), *v87.i8);
    if ((v66 & 1) == 0)
    {
      *v90.f32 = vext_s8(v89, v88, 4uLL);
      v90.i64[1] = v89.u32[0];
      v91 = vmulq_f32(v90, v161);
      v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
      if (vpadd_f32(*v91.f32, *v91.f32).f32[0] >= *&v170)
      {
        goto LABEL_22;
      }
    }

    v92 = vmulq_f32(v57, v77);
    v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
    *v92.f32 = vpadd_f32(*v92.f32, *v92.f32);
    v93 = vmulq_f32(v57, v81);
    v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
    *v93.f32 = vpadd_f32(*v93.f32, *v93.f32);
    v94 = vmulq_f32(v57, v85);
    v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
    *v94.f32 = vpadd_f32(*v94.f32, *v94.f32);
    v95 = vmin_f32(*v93.f32, *v94.f32);
    *v93.f32 = vext_s8(*v92.f32, *v93.f32, 4uLL);
    v93.i64[1] = v94.u32[0];
    if (vuzp1_s8(vorr_s8(vmovn_s32(vcgtq_f32(v169, v93)), vdup_lane_s16(vcgt_f32(vmin_f32(*v92.f32, v95), vadd_f32(v67, *&v16)), 0)), *v77.f32).u32[0] == -1)
    {
      goto LABEL_22;
    }

    v147 = *&v89.i32[1];
    v148 = *v89.i32;
    v149 = *v88.i32;
    v150 = v16;
    v157 = 0;
    v96 = vmulq_f32(vaddq_f32(vaddq_f32(v77, v81), v85), v145);
    v96.i32[3] = 0;
    v154 = v96;
    v158 = v77;
    v159 = v81;
    v160 = v85;
    v155 = 0x7F7FFFFF00000000;
    v156 = 0x57F7FFFFFLL;
    v153[1] = &v154;
    v152[1] = &v162;
    v153[0] = &unk_1F5D21A20;
    v152[0] = &unk_1F5D21A80;
    v151 = vsubq_f32(v96, v162);
    v172 = 0u;
    v173[0] = 0u;
    v171 = 0;
    if (physx::Gu::gjkRaycast<physx::Gu::LocalConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(v153, v152, &v151, v17.u32[0], &v170, &v169, &v161, &v171, &v172, v173))
    {
      break;
    }

    v72 = v63;
    v16 = v150;
    v57 = v146;
LABEL_21:
    v63 = v72;
    v51 = v143;
    v17.i32[0] = v144;
    v50 = v141;
    v52 = v142;
    v53 = v140;
LABEL_22:
    if (v19 == ++v65)
    {
      result = 0;
      goto LABEL_25;
    }
  }

  result = *&v170 >= v171.f32[0];
  v16 = v150;
  v57 = v146;
  if (*&v170 < v171.f32[0])
  {
    v138 = v172;
    v139 = v173[0];
    *&v16 = vmul_f32(*&v150, v171);
    v97 = vmulq_n_f32(v146, *&v16);
    v97.i32[3] = 0;
    v161 = v97;
    v100 = v148;
    v70 = v147;
    v64 = 1;
    v99 = v149;
    v69 = v149;
    v68 = v148;
    if ((*a16 & 0x40) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  *(a7 + 48) = 0;
  *(a7 + 16) = v72;
  v98 = -*(a6 + 8);
  *(a7 + 36) = vneg_f32(*a6);
  *(a7 + 44) = v98;
  *(a7 + 20) = 2;
  v99 = v69;
  v100 = v68;
  LODWORD(v72) = v63;
LABEL_24:
  v69 = v99;
  v68 = v100;
  LODWORD(v63) = v72;
LABEL_25:
  if (!result && (v64 & 1) != 0)
  {
    v101 = v136;
    v101.i32[3] = 0;
    LODWORD(v102) = vmla_f32(0xBF000000BF000000, v22, v22).u32[0];
    v103 = v138;
    v104 = vmulq_n_f32(v138, v102);
    v104.i32[3] = 0;
    v105 = vextq_s8(v101, v101, 8uLL).u64[0];
    v106 = vext_s8(*v136.f32, v105, 4uLL);
    v107 = vmls_f32(vmul_f32(*v136.f32, *&vextq_s8(v103, v103, 4uLL)), v106, *v138.f32);
    *v108.f32 = vext_s8(v107, vmls_f32(vmul_f32(v105, *v138.f32), *v136.f32, *&vextq_s8(v103, v103, 8uLL)), 4uLL);
    v108.i64[1] = v107.u32[0];
    v109 = vdupq_laneq_s32(v136, 3);
    v110 = vmlaq_laneq_f32(v104, v108, v136, 3);
    v110.i64[1] = vextq_s8(v110, v110, 8uLL).u32[0];
    v111 = vmulq_f32(v101, v138);
    v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
    v112 = vmlaq_n_f32(v110, v101, vpadd_f32(*v111.f32, *v111.f32).f32[0]);
    v113 = vaddq_f32(v112, v112);
    v113.i32[3] = 0;
    *(a7 + 16) = v63;
    v114 = vmulq_f32(v113, v113);
    v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
    v115 = vpadd_f32(*v114.f32, *v114.f32);
    v116 = vrsqrte_f32(v115);
    v117 = 4;
    do
    {
      v116 = vmul_f32(v116, vrsqrts_f32(vmul_f32(v116, v116), v115));
      --v117;
    }

    while (v117);
    v118 = vbsl_s8(vdup_lane_s32(vceqz_f32(v115), 0), v115, vmul_f32(v115, v116));
    v119 = vrecpe_f32(v118);
    v120 = 4;
    do
    {
      v119 = vmul_f32(v119, vrecps_f32(v118, v119));
      --v120;
    }

    while (v120);
    v121 = vmulq_n_f32(v113, v119.f32[0]);
    v121.i32[3] = 0;
    v122 = v139;
    v123 = vmulq_n_f32(v139, v102);
    v123.i32[3] = 0;
    v124 = vmls_f32(vmul_f32(*v136.f32, *&vextq_s8(v122, v122, 4uLL)), v106, *v139.f32);
    *v125.f32 = vext_s8(v124, vmls_f32(vmul_f32(v105, *v139.f32), *v136.f32, *&vextq_s8(v122, v122, 8uLL)), 4uLL);
    v125.i64[1] = v124.u32[0];
    v126 = vmlaq_f32(v123, v109, v125);
    v126.i64[1] = vextq_s8(v126, v126, 8uLL).u32[0];
    v127 = vnegq_f32(v121);
    v128 = vmulq_f32(v101, v139);
    v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
    v129 = vmlaq_n_f32(v126, v101, vpadd_f32(*v128.f32, *v128.f32).f32[0]);
    v129.i64[1] = vextq_s8(v129, v129, 8uLL).u32[0];
    v130.i64[0] = 0x4000000040000000;
    v130.i64[1] = 0x4000000040000000;
    v131 = vmlaq_f32(v132, v130, v129);
    *(a7 + 40) = vextq_s8(v127, v127, 4uLL).u64[0];
    v131.i32[3] = v127.i32[0];
    *(a7 + 24) = v131;
    *(a7 + 48) = v16;
    if ((v133 & 0x80) != 0 && (v137 & 1) == 0 && (((v69 * *(a6 + 4)) + (v70 * *a6)) + (v68 * *(a6 + 8))) > 0.0)
    {
      *(a7 + 36) = vneg_f32(*v127.i8);
      *(a7 + 44) = -*&v127.i32[2];
    }

    *(a7 + 20) = 3;
    return 1;
  }

  return result;
}

void physx::Gu::NodeAllocator::~NodeAllocator(physx::Gu::NodeAllocator *this)
{
  physx::Gu::NodeAllocator::release(this);
  v2 = *(this + 5);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 1) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }
}

uint64_t physx::Gu::NodeAllocator::release(physx::Gu::NodeAllocator *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = 0;
    v4 = 16 * v2;
    do
    {
      v5 = *(this + 1);
      v6 = *(v5 + v3);
      if (v6)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v6 - 16);
      }

      *(v5 + v3) = 0;
      v3 += 16;
    }

    while (v4 != v3);
  }

  physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::resize(this + 8, 0, &v8);
  result = physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::recreate(this + 8, *(this + 4));
  *(this + 3) = 0;
  return result;
}

double physx::Gu::NodeAllocator::init(physx::Gu::NodeAllocator *this, int a2, unsigned int a3)
{
  v5 = 2 * a2 - 1;
  if (v5 >= 0x401)
  {
    v5 /= a3;
  }

  v6 = physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode>::allocate(&v10, 40 * v5 + 16, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuAABBTreeBuild.cpp", 67);
  *v6 = 40;
  v6[1] = v5;
  v6 += 2;
  *this = v6;
  bzero(v6, 40 * v5);
  v7 = *this;
  *(v7 + 32) = 0;
  *(v7 + 36) = a2;
  *&v10 = v7;
  DWORD2(v10) = 1;
  HIDWORD(v10) = v5;
  v8 = *(this + 4);
  if ((*(this + 5) & 0x7FFFFFFFu) <= v8)
  {
    physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::growAndPushBack(this + 8, &v10);
  }

  else
  {
    *(*(this + 1) + 16 * v8) = v10;
    ++*(this + 4);
  }

  *&result = 0x100000000;
  *(this + 3) = 0x100000000;
  return result;
}

void physx::Gu::AABBTreeBuildNode::subdivide(float32x4_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[2].u32[1];
  v9 = (a5 + 4 * a1[2].u32[0]);
  v11 = *(a2 + 8);
  v10 = *(a2 + 16);
  v12 = (v11 + 24 * *v9);
  v13 = *v12;
  v14 = *(v12 + 12);
  v15 = *(v10 + 12 * *v9);
  if (v8 >= 2)
  {
    v16 = v8 - 1;
    v17 = v9 + 1;
    do
    {
      v18 = *v17++;
      v19 = v11 + 24 * v18;
      v15 = vaddq_f32(v15, *(v10 + 12 * v18));
      v13 = vminq_f32(v13, *v19);
      v14 = vmaxq_f32(v14, *(v19 + 12));
      --v16;
    }

    while (v16);
  }

  v13.i32[3] = v14.i32[0];
  *a1 = v13;
  a1[1].i64[0] = vextq_s8(v14, v14, 4uLL).u64[0];
  if (v8 > *a2)
  {
    v20 = vmulq_n_f32(v15, 1.0 / v8);
    v21 = 0uLL;
    v22 = v9;
    v23 = v8;
    do
    {
      v24 = *v22++;
      v25 = vsubq_f32(*(v10 + 12 * v24), v20);
      v21 = vaddq_f32(v21, vmulq_f32(v25, v25));
      --v23;
    }

    while (v23);
    v26 = 0;
    v27 = vmulq_n_f32(v21, 1.0 / (v8 - 1));
    *&v44 = v27.i64[0];
    v28 = v27.f32[1] > v27.f32[0];
    if (v27.f32[2] > *(&v44 | (4 * v28)))
    {
      v28 = 2;
    }

    v29 = (a1->f32[v28] + a1->f32[v28 + 3]) * 0.5;
    v30 = v10 + 4 * v28;
    v31 = v9;
    v32 = v8;
    do
    {
      v33 = *v31;
      if (*(v30 + 12 * *v31) > v29)
      {
        *v31 = v9[v26];
        v9[v26++] = v33;
      }

      ++v31;
      --v32;
    }

    while (v32);
    if (!v26 || v26 == v8)
    {
      if (v8 <= *a2)
      {
        return;
      }

      v26 = v8 >> 1;
    }

    v34 = *(a4 + 8);
    v35 = *(a4 + 24);
    *(a4 + 28) += 2;
    v36 = v34 + 16 * v35;
    v37 = *(v36 + 8);
    if (v37 + 2 <= *(v36 + 12))
    {
      v41 = (*v36 + 40 * v37);
      *(v36 + 8) = v37 + 2;
    }

    else
    {
      v38 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v39 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeBuildNode>::getName() [T = physx::Gu::AABBTreeBuildNode]";
      }

      else
      {
        v39 = "<allocation names disabled>";
      }

      v40 = (*(*(v38 + 24) + 16))(v38 + 24, 40976, v39, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuAABBTreeBuild.cpp", 94);
      *v40 = xmmword_1E31164C0;
      v41 = v40 + 1;
      bzero(v40 + 1, 0xA000uLL);
      *&v44 = v41;
      *(&v44 + 1) = 0x40000000002;
      v42 = *(a4 + 16);
      if ((*(a4 + 20) & 0x7FFFFFFFu) <= v42)
      {
        physx::shdfnd::Array<physx::Gu::NodeAllocator::Slab,physx::shdfnd::ReflectionAllocator<physx::Gu::NodeAllocator::Slab>>::growAndPushBack(a4 + 8, &v44);
      }

      else
      {
        *(*(a4 + 8) + 16 * v42) = v44;
        ++*(a4 + 16);
      }

      ++*(a4 + 24);
    }

    a1[1].i64[1] = v41;
    *a3 += 2;
    v43 = a1[2].i32[0];
    v41[8] = v43;
    v41[9] = v26;
    v41[18] = v43 + v26;
    v41[19] = a1[2].i32[1] - v26;
  }
}

void physx::Gu::AABBTreeBuildNode::_buildHierarchy(float32x4_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  physx::Gu::AABBTreeBuildNode::subdivide(a1, a2, a3, a4, a5);
  v10 = a1[1].i64[1];
  if (v10)
  {
    physx::Gu::AABBTreeBuildNode::_buildHierarchy(a1[1].i64[1], a2, a3, a4, a5);
    physx::Gu::AABBTreeBuildNode::_buildHierarchy(v10 + 40, a2, a3, a4, a5);
  }

  a3[1] += a1[2].i32[1];
}

uint64_t physx::Gu::initAABBTreeBuild(uint64_t a1, physx::Gu::NodeAllocator *a2, _DWORD *a3, uint64_t *a4)
{
  v4 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v5 = *a4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v5)
  {
    *a3 = 1;
    v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuAABBTreeBuild.cpp", 273);
    v11 = 0;
    *a4 = v10;
    v12 = vdupq_n_s64(v4 - 1);
    v13 = (v10 + 8);
    v14 = xmmword_1E3049640;
    v15 = xmmword_1E3049620;
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v15));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v13 - 2) = v11;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v13 - 1) = v11 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v14))).i32[1])
      {
        *v13 = v11 + 2;
        v13[1] = v11 + 3;
      }

      v11 += 4;
      v14 = vaddq_s64(v14, v16);
      v15 = vaddq_s64(v15, v16);
      v13 += 4;
    }

    while (((v4 + 3) & 0x1FFFFFFFCLL) != v11);
    v18 = physx::Gu::NodeAllocator::init(a2, v4, *a1);
    if (v4 == -1)
    {
      v19 = 0;
    }

    else
    {
      v19 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * (v4 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuAABBTreeBuild.cpp", 282, v18);
    }

    *(a1 + 16) = v19;
    v20 = *(a1 + 8);
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    do
    {
      *v19 = vmulq_f32(vaddq_f32(*v20, *(v20 + 12)), v21);
      v19 = (v19 + 12);
      v20 += 24;
      --v4;
    }

    while (v4);
  }

  return v6;
}

uint64_t physx::Gu::buildAABBTree(uint64_t a1, physx::Gu::NodeAllocator *a2, _DWORD *a3, uint64_t *a4)
{
  inited = physx::Gu::initAABBTreeBuild(a1, a2, a3, a4);
  if (inited)
  {
    physx::Gu::AABBTreeBuildNode::_buildHierarchy(*a2, a1, a3, a2, *a4);
  }

  return inited;
}

void physx::Gu::BVHStructure::~BVHStructure(physx::Gu::BVHStructure *this)
{
  if (this)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, this);
  }
}

uint64_t physx::Gu::BVHStructure::load(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t))
{
  v20 = 0;
  v4 = physx::readHeader(0x42u, 0x56u, 0x48u, 0x53u, &v21, &v20, a2);
  if (v4)
  {
    v5 = v20;
    physx::readFloatBuffer((a1 + 40), 2u, v20, a2);
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v6, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuBVHStructure.cpp", 82);
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *(a1 + 56) = v7;
    physx::readFloatBuffer(v7, v8, v5, a2);
    v9 = *(a1 + 40);
    v10 = __CFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      v12 = 0;
      v13 = -6;
    }

    else
    {
      v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * v11, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuBVHStructure.cpp", 86);
      v13 = 6 * *(a1 + 40);
    }

    *(a1 + 48) = v12;
    physx::readFloatBuffer(v12, v13, v5, a2);
    v14 = *(a1 + 44);
    if (v14)
    {
      v15 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 28 * v14, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuBVHStructure.cpp", 90);
      v16 = *(a1 + 44);
      *(a1 + 72) = v15;
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          physx::readFloatBuffer((*(a1 + 72) + v17 + 24), 1u, v5, a2);
          physx::readFloatBuffer((*(a1 + 72) + v17), 6u, v5, a2);
          ++v18;
          v17 += 28;
        }

        while (v18 < *(a1 + 44));
      }
    }

    else
    {
      *(a1 + 72) = 0;
    }
  }

  return v4;
}

uint64_t physx::Gu::BVHStructure::release(uint64_t this)
{
  if (atomic_fetch_add((this + 24), 0xFFFFFFFF) == 1)
  {
    return (*(*(this + 16) + 16))();
  }

  return this;
}

uint64_t physx::Gu::BVHStructure::onRefCountZero(physx::Gu::BVHStructure *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 6) = 0;
  if (*(this + 7))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 7) = 0;
  if (*(this + 9))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 9) = 0;
  if (*(this + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 8) = 0;
  *(this + 5) = 0;
  if (physx::GuMeshFactory::removeBVHStructure(*(this + 4), this))
  {
    v13 = *(this + 4);
    v14 = *(this + 4);
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

    return physx::shdfnd::Foundation::error(v17, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuBVHStructure.cpp", 126, "Gu::BVHStructure::release: double deletion detected!", v10, v11, v12, a9);
  }

  return result;
}

uint64_t physx::Gu::BVHStructure::createVolumes(uint64_t this)
{
  if (!*(this + 64))
  {
    v1 = this;
    v2 = *(this + 40);
    if (v2)
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/GuBVHStructure.cpp", 133);
      v3 = *(v1 + 40);
      *(v1 + 64) = this;
      if (v3)
      {
        v4 = 0;
        do
        {
          *(this + 4 * v4) = v4;
          ++v4;
        }

        while (v4 < *(v1 + 40));
      }
    }

    else
    {
      *(this + 64) = 0;
    }
  }

  return this;
}

uint64_t physx::Gu::BVHStructure::raycast(void *a1, float32x2_t *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v101 = *MEMORY[0x1E69E9840];
  physx::Gu::BVHStructure::createVolumes(a1);
  v11 = 0;
  v12 = 0;
  v14 = a1[8];
  v13 = a1[9];
  v15 = a2[1].f32[0] + a2[1].f32[0];
  v16 = vadd_f32(*a2, *a2);
  v17 = vadd_f32(*a3, *a3);
  v18 = COERCE_DOUBLE(vadd_f32(v16, vmul_n_f32(v17, a6)));
  v19 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v17), v16, vbsl_s8(vcgez_f32(v17), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v20.f32 = v16;
  v20.i64[1] = LODWORD(v15);
  v21 = a3[1].f32[0] + a3[1].f32[0];
  *v22.f32 = v17;
  v22.i64[1] = LODWORD(v21);
  *v25.f32 = vext_s8(v17, *&vextq_s8(v22, v22, 8uLL), 4uLL);
  v24 = a1 + 6;
  v23 = a1[6];
  v88 = v24[1];
  v25.i64[1] = v17.u32[0];
  v26 = vabsq_f32(v22);
  *v27.f32 = vext_s8(*v26.f32, *&vextq_s8(v26, v26, 8uLL), 4uLL);
  v27.i64[1] = v26.u32[0];
  v28 = v15 + (v21 * a6);
  v29 = -3.4028e38;
  if (v21 >= 0.0)
  {
    v29 = 3.4028e38;
  }

  if (v21 != 0.0)
  {
    v15 = v29;
  }

  if (a6 >= 3.4028e38)
  {
    *v30.i64 = v19;
  }

  else
  {
    v15 = v28;
    *v30.i64 = v18;
  }

  v30.i64[1] = LODWORD(v15);
  v31 = vminq_f32(v20, v30);
  v32 = vmaxq_f32(v20, v30);
  v100 = 0x10000000100;
  v98 = 1;
  v99 = v97;
  v97[0] = v13;
  v33 = vnegq_f32(v25);
  v95 = v22;
  v96 = v20;
  v93 = v27;
  v94 = v26;
  v90 = v32;
  v92 = v31;
  v89 = v33;
  while (1)
  {
    v34 = v99[v12];
    v35 = *v34;
    v36 = *(v34 + 12);
    v35.i32[3] = 0;
    v37 = v36;
    v37.i32[3] = 0;
    v38 = vsubq_f32(v37, v35);
    v39 = vaddq_f32(v37, v37);
    v40 = vaddq_f32(v35, v35);
    v41 = vsubq_f32(v20, vaddq_f32(v35, v37));
    *v37.f32 = vext_s8(*v41.f32, *&vextq_s8(v41, v41, 8uLL), 4uLL);
    v37.i64[1] = v41.u32[0];
    *v42.f32 = vext_s8(*v38.f32, *&vextq_s8(v38, v38, 8uLL), 4uLL);
    v42.i64[1] = v38.u32[0];
    if (vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v39, v31), vcgeq_f32(v32, v40)), vcgeq_f32(vmlaq_f32(vmulq_f32(v26, v42), v27, v38), vabsq_f32(vmlaq_f32(vmulq_f32(v22, v37), v41, v33))))), *v36.f32).u32[0] == -1)
    {
      break;
    }

LABEL_36:
    v84 = v12;
    v12 = (v12 - 1);
    if (!v84)
    {
      goto LABEL_39;
    }
  }

  v43 = v36.u32[3];
  if ((v36.i8[12] & 1) == 0)
  {
    while (1)
    {
      v44 = (v13 + 28 * (v43 >> 1));
      v45 = *v44;
      v46 = *(v44 + 12);
      v45.i32[3] = 0;
      v46.i32[3] = 0;
      v47 = vsubq_f32(v46, v45);
      v48 = vaddq_f32(v46, v46);
      v49 = vaddq_f32(v45, v45);
      v50 = vaddq_f32(v45, v46);
      v51 = vsubq_f32(v20, v50);
      *v52.f32 = vext_s8(*v51.f32, *&vextq_s8(v51, v51, 8uLL), 4uLL);
      v52.i64[1] = v51.u32[0];
      *v53.f32 = vext_s8(*v47.f32, *&vextq_s8(v47, v47, 8uLL), 4uLL);
      v53.i64[1] = v47.u32[0];
      v54 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v48, v31), vcgeq_f32(v32, v49)), vcgeq_f32(vmlaq_f32(vmulq_f32(v26, v53), v27, v47), vabsq_f32(vmlaq_f32(vmulq_f32(v22, v52), v51, v33))))), *v50.f32).u32[0];
      v55 = *(v44 + 28);
      v56 = *(v44 + 40);
      v55.i32[3] = 0;
      v56.i32[3] = 0;
      v57 = vsubq_f32(v56, v55);
      v58 = vaddq_f32(v56, v56);
      v59 = vaddq_f32(v55, v55);
      v60 = vaddq_f32(v55, v56);
      v61 = vsubq_f32(v20, v60);
      *v53.f32 = vext_s8(*v61.f32, *&vextq_s8(v61, v61, 8uLL), 4uLL);
      v53.i64[1] = v61.u32[0];
      *v62.f32 = vext_s8(*v57.f32, *&vextq_s8(v57, v57, 8uLL), 4uLL);
      v62.i64[1] = v57.u32[0];
      v63 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v58, v31), vcgeq_f32(v32, v59)), vcgeq_f32(vmlaq_f32(vmulq_f32(v26, v62), v27, v57), vabsq_f32(vmlaq_f32(vmulq_f32(v22, v53), v61, v33))))), *v50.f32).u32[0];
      if (v54 == -1 && v63 == -1)
      {
        v68 = vmulq_f32(v22, vsubq_f32(v60, v50));
        v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
        v68.f32[0] = vpadd_f32(*v68.f32, *v68.f32).f32[0];
        v67 = (v12 + 1);
        v99[v12] = v44 + 28 * (v68.f32[0] > 0.0);
        v65 = v44 + 28 * (v68.f32[0] <= 0.0);
        if (v67 == (HIDWORD(v100) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Gu::BVHNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Gu::BVHNode const*>>>::resizeUninitialized(v97, 2 * v67);
          v33 = v89;
          v32 = v90;
          v31 = v92;
          v27 = v93;
          v26 = v94;
          v22 = v95;
          v20 = v96;
        }
      }

      else
      {
        if (v54 == -1)
        {
          v65 = v44;
        }

        else
        {
          v65 = v44 + 28;
        }

        if (v54 != -1 && v63 != -1)
        {
          goto LABEL_36;
        }

        v67 = v12;
      }

      v43 = *(v65 + 6);
      v12 = v67;
      if (v43)
      {
        goto LABEL_29;
      }
    }
  }

  LODWORD(v67) = v12;
LABEL_29:
  v69 = (v43 >> 1) & 0xF;
  if (!v69)
  {
LABEL_35:
    LODWORD(v12) = v67;
    goto LABEL_36;
  }

  v70 = (v88 + 4 * (v43 >> 5));
  v71 = v69;
  while (1)
  {
    v73 = *v70++;
    v72 = v73;
    if (v69 < 2 || (v74 = v23 + 24 * v72, v75 = *(v74 + 12), v76 = vaddq_f32(*v74, v75), v77 = vsubq_f32(v75, *v74), v76.i32[3] = 0, v78 = v77, v78.i32[3] = 0, v79 = vaddq_f32(v76, v78), v80 = vsubq_f32(v76, v78), v81 = vsubq_f32(v20, v76), *v82.f32 = vext_s8(*v81.f32, *&vextq_s8(v81, v81, 8uLL), 4uLL), v82.i64[1] = v81.u32[0], *v83.f32 = vext_s8(*v77.i8, *&vextq_s8(v77, v77, 8uLL), 4uLL), v83.i64[1] = v77.u32[0], *v77.i8 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v79, v31), vcgeq_f32(v32, v80)), vcgeq_f32(vmlaq_f32(vmulq_f32(v26, v83), v27, v78), vabsq_f32(vmlaq_f32(vmulq_f32(v22, v82), v81, v33))))), vuzp1_s8(*v77.i8, *v77.i8).u32[0] == -1))
    {
      *(a5 + 4 * v11) = *(v14 + 4 * v72);
      v11 = (v11 + 1);
      if (v11 == a4)
      {
        break;
      }
    }

    if (!--v71)
    {
      goto LABEL_35;
    }
  }

  v11 = a4;
LABEL_39:
  if ((v100 & 0x8000000000000000) == 0 && (v100 & 0x7FFFFFFF00000000) != 0 && v99 != v97 && v99 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v11;
}

uint64_t physx::Gu::BVHStructure::sweep(void *a1, uint64_t a2, float32x2_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v109 = *MEMORY[0x1E69E9840];
  physx::Gu::BVHStructure::createVolumes(a1);
  v11 = 0;
  v12 = 0;
  v13 = *(a2 + 20);
  v14 = *(a2 + 8);
  v15 = (v13 - v14) * 0.5;
  v17 = a1[8];
  v16 = a1[9];
  v18 = ((v13 + v14) * 0.5) + ((v13 + v14) * 0.5);
  v19 = *(a2 + 12);
  v20 = vmul_f32(vadd_f32(v19, *a2), 0x3F0000003F000000);
  v21 = vadd_f32(v20, v20);
  v22 = vadd_f32(*a3, *a3);
  v23 = a3[1].f32[0] + a3[1].f32[0];
  v24 = COERCE_DOUBLE(vadd_f32(v21, vmul_n_f32(v22, a6)));
  v25 = COERCE_DOUBLE(vbsl_s8(vceqz_f32(v22), v21, vbsl_s8(vcgez_f32(v22), vneg_f32(0x80000000800000), 0x80000000800000)));
  *v26.f32 = v21;
  v26.i64[1] = LODWORD(v18);
  v27 = vmul_f32(vsub_f32(v19, *a2), 0x3F0000003F000000);
  *v28.f32 = v22;
  v28.i64[1] = LODWORD(v23);
  *v32.f32 = vadd_f32(v27, v27);
  *v29.f32 = vext_s8(v22, *&vextq_s8(v28, v28, 8uLL), 4uLL);
  v29.i64[1] = v22.u32[0];
  v32.f32[2] = v15 + v15;
  v31 = a1 + 6;
  v30 = a1[6];
  v95 = v31[1];
  v32.i32[3] = 0;
  v33 = vabsq_f32(v28);
  *v34.f32 = vext_s8(*v33.f32, *&vextq_s8(v33, v33, 8uLL), 4uLL);
  v34.i64[1] = v33.u32[0];
  v35 = v18 + (v23 * a6);
  v36 = -3.4028e38;
  if (v23 >= 0.0)
  {
    v36 = 3.4028e38;
  }

  if (v23 != 0.0)
  {
    v18 = v36;
  }

  if (a6 >= 3.4028e38)
  {
    *v37.i64 = v25;
  }

  else
  {
    v18 = v35;
    *v37.i64 = v24;
  }

  v37.i64[1] = LODWORD(v18);
  v38 = vminq_f32(v26, v37);
  v39 = vmaxq_f32(v26, v37);
  v108 = 0x10000000100;
  v106 = 1;
  v107 = v105;
  v105[0] = v16;
  v40 = vnegq_f32(v29);
  v103 = v28;
  v104 = v26;
  v101 = v33;
  v102 = v32;
  v99 = v38;
  v100 = v34;
  v96 = v40;
  v97 = v39;
  while (1)
  {
    v41 = v107[v12];
    v42 = *v41;
    v43 = *(v41 + 12);
    v42.i32[3] = 0;
    v44 = v43;
    v44.i32[3] = 0;
    v45 = vaddq_f32(v32, vsubq_f32(v44, v42));
    v46 = vaddq_f32(v32, vaddq_f32(v44, v44));
    v47 = vsubq_f32(vaddq_f32(v42, v42), v32);
    v48 = vsubq_f32(v26, vaddq_f32(v42, v44));
    *v44.f32 = vext_s8(*v48.f32, *&vextq_s8(v48, v48, 8uLL), 4uLL);
    v44.i64[1] = v48.u32[0];
    *v49.f32 = vext_s8(*v45.f32, *&vextq_s8(v45, v45, 8uLL), 4uLL);
    v49.i64[1] = v45.u32[0];
    if (vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v46, v38), vcgeq_f32(v39, v47)), vcgeq_f32(vmlaq_f32(vmulq_f32(v33, v49), v34, v45), vabsq_f32(vmlaq_f32(vmulq_f32(v28, v44), v48, v40))))), *v43.f32).u32[0] == -1)
    {
      break;
    }

LABEL_36:
    v91 = v12;
    v12 = (v12 - 1);
    if (!v91)
    {
      goto LABEL_39;
    }
  }

  v50 = v43.u32[3];
  if ((v43.i8[12] & 1) == 0)
  {
    while (1)
    {
      v51 = (v16 + 28 * (v50 >> 1));
      v52 = *v51;
      v53 = *(v51 + 12);
      v52.i32[3] = 0;
      v53.i32[3] = 0;
      v54 = vaddq_f32(v32, vsubq_f32(v53, v52));
      v55 = vaddq_f32(v32, vaddq_f32(v53, v53));
      v56 = vaddq_f32(v52, v52);
      v57 = vaddq_f32(v52, v53);
      v58 = vsubq_f32(v26, v57);
      *v59.f32 = vext_s8(*v58.f32, *&vextq_s8(v58, v58, 8uLL), 4uLL);
      v59.i64[1] = v58.u32[0];
      *v60.f32 = vext_s8(*v54.f32, *&vextq_s8(v54, v54, 8uLL), 4uLL);
      v60.i64[1] = v54.u32[0];
      v61 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v55, v38), vcgeq_f32(v39, vsubq_f32(v56, v32))), vcgeq_f32(vmlaq_f32(vmulq_f32(v33, v60), v34, v54), vabsq_f32(vmlaq_f32(vmulq_f32(v28, v59), v58, v40))))), *v57.f32).u32[0];
      v62 = *(v51 + 28);
      v63 = *(v51 + 40);
      v62.i32[3] = 0;
      v63.i32[3] = 0;
      v64 = vaddq_f32(v32, vsubq_f32(v63, v62));
      v65 = vaddq_f32(v32, vaddq_f32(v63, v63));
      v66 = vsubq_f32(vaddq_f32(v62, v62), v32);
      v67 = vaddq_f32(v62, v63);
      v68 = vsubq_f32(v26, v67);
      *v60.f32 = vext_s8(*v68.f32, *&vextq_s8(v68, v68, 8uLL), 4uLL);
      v60.i64[1] = v68.u32[0];
      *v69.f32 = vext_s8(*v64.f32, *&vextq_s8(v64, v64, 8uLL), 4uLL);
      v69.i64[1] = v64.u32[0];
      v70 = vuzp1_s8(vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v65, v38), vcgeq_f32(v39, v66)), vcgeq_f32(vmlaq_f32(vmulq_f32(v33, v69), v34, v64), vabsq_f32(vmlaq_f32(vmulq_f32(v28, v60), v68, v40))))), *v57.f32).u32[0];
      if (v61 == -1 && v70 == -1)
      {
        v75 = vmulq_f32(v28, vsubq_f32(v67, v57));
        v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
        v75.f32[0] = vpadd_f32(*v75.f32, *v75.f32).f32[0];
        v74 = (v12 + 1);
        v107[v12] = v51 + 28 * (v75.f32[0] > 0.0);
        v72 = v51 + 28 * (v75.f32[0] <= 0.0);
        if (v74 == (HIDWORD(v108) & 0x7FFFFFFF))
        {
          physx::shdfnd::Array<physx::Gu::BVHNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Gu::BVHNode const*>>>::resizeUninitialized(v105, 2 * v74);
          v40 = v96;
          v39 = v97;
          v38 = v99;
          v34 = v100;
          v33 = v101;
          v32 = v102;
          v28 = v103;
          v26 = v104;
        }
      }

      else
      {
        if (v61 == -1)
        {
          v72 = v51;
        }

        else
        {
          v72 = v51 + 28;
        }

        if (v61 != -1 && v70 != -1)
        {
          goto LABEL_36;
        }

        v74 = v12;
      }

      v50 = *(v72 + 6);
      v12 = v74;
      if (v50)
      {
        goto LABEL_29;
      }
    }
  }

  LODWORD(v74) = v12;
LABEL_29:
  v76 = (v50 >> 1) & 0xF;
  if (!v76)
  {
LABEL_35:
    LODWORD(v12) = v74;
    goto LABEL_36;
  }

  v77 = (v95 + 4 * (v50 >> 5));
  v78 = v76;
  while (1)
  {
    v80 = *v77++;
    v79 = v80;
    if (v76 < 2 || (v81 = v30 + 24 * v79, v82 = *(v81 + 12), v83 = vaddq_f32(*v81, v82), v84 = vsubq_f32(v82, *v81), v83.i32[3] = 0, v84.i32[3] = 0, v85 = vaddq_f32(v32, v84), v86 = vaddq_f32(v83, v85), v87 = vsubq_f32(v83, v85), v88 = vsubq_f32(v26, v83), *v89.f32 = vext_s8(*v88.f32, *&vextq_s8(v88, v88, 8uLL), 4uLL), v89.i64[1] = v88.u32[0], *v90.f32 = vext_s8(*v85.f32, *&vextq_s8(v85, v85, 8uLL), 4uLL), v90.i64[1] = v85.u32[0], *v85.f32 = vmovn_s32(vandq_s8(vandq_s8(vcgeq_f32(v86, v38), vcgeq_f32(v39, v87)), vcgeq_f32(vmlaq_f32(vmulq_f32(v33, v90), v34, v85), vabsq_f32(vmlaq_f32(vmulq_f32(v28, v89), v88, v40))))), vuzp1_s8(*v85.f32, *v85.f32).u32[0] == -1))
    {
      *(a5 + 4 * v11) = *(v17 + 4 * v79);
      v11 = (v11 + 1);
      if (v11 == a4)
      {
        break;
      }
    }

    if (!--v78)
    {
      goto LABEL_35;
    }
  }

  v11 = a4;
LABEL_39:
  if ((v108 & 0x8000000000000000) == 0 && (v108 & 0x7FFFFFFF00000000) != 0 && v107 != v105 && v107 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v11;
}

uint64_t physx::Gu::BVHStructure::overlap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  physx::Gu::BVHStructure::createVolumes(a1);
  v8 = 0;
  v9 = *(a2 + 8);
  v10 = *(a2 + 20);
  v11 = *(a2 + 12);
  *v12.f32 = vmul_f32(vadd_f32(*a2, v11), 0x3F0000003F000000);
  v12.f32[2] = (v9 + v10) * 0.5;
  v12.i32[3] = 0;
  *v13.f32 = vmul_f32(vsub_f32(v11, *a2), 0x3F0000003F000000);
  v13.i64[1] = COERCE_UNSIGNED_INT((v10 - v9) * 0.5);
  v15 = a1[8];
  v14 = a1[9];
  v16 = a1[6];
  v38 = a4;
  v39 = a1[7];
  v45 = 0x10000000100;
  v17 = 1;
  v43 = 1;
  v44 = v42;
  v42[0] = v14;
  v18.i64[0] = 0x3F0000003F000000;
  v18.i64[1] = 0x3F0000003F000000;
  v40 = v13;
  v41 = v12;
  while (2)
  {
    v19 = v16;
    v20 = 2 * v17--;
    v21 = v44[v17];
    while (1)
    {
      v22 = *(v21 + 12);
      v23 = vmulq_f32(vsubq_f32(v22, *v21), v18);
      v23.i32[3] = 0;
      v24 = vmulq_f32(vaddq_f32(*v21, v22), v18);
      v24.i32[3] = 0;
      if ((~vuzp1_s8(vmovn_s32(vcgeq_f32(vaddq_f32(v13, v23), vabdq_f32(v24, v12))), *v22.f32).u32[0] & 0xFFFFFF) != 0)
      {
        v16 = v19;
        goto LABEL_15;
      }

      if (v22.i8[12])
      {
        break;
      }

      v21 = v14 + 28 * (v22.i32[3] >> 1);
      v25 = v17 + 1;
      v44[v17] = v21 + 28;
      if (v17 + 1 == (HIDWORD(v45) & 0x7FFFFFFF))
      {
        physx::shdfnd::Array<physx::Gu::BVHNode const*,physx::shdfnd::InlineAllocator<2048u,physx::shdfnd::ReflectionAllocator<physx::Gu::BVHNode const*>>>::resizeUninitialized(v42, v20);
        v18.i64[0] = 0x3F0000003F000000;
        v18.i64[1] = 0x3F0000003F000000;
        v13 = v40;
        v12 = v41;
      }

      v20 += 2;
      v17 = v25;
    }

    v26 = (v22.i32[3] >> 1) & 0xF;
    v16 = v19;
    if (v26)
    {
      v27 = (v39 + 4 * (v22.i32[3] >> 5));
      v28 = (v22.i32[3] >> 1) & 0xF;
      while (1)
      {
        v30 = *v27++;
        v29 = v30;
        if (v26 < 2 || (v31 = v19 + 24 * v29, v32 = *(v31 + 12), v33 = vmulq_f32(vsubq_f32(v32, *v31), v18), v34 = vmulq_f32(vaddq_f32(*v31, v32), v18), v34.i32[3] = 0, v33.i32[3] = 0, *v33.f32 = vmovn_s32(vcgeq_f32(vaddq_f32(v13, v33), vabdq_f32(v34, v12))), (~vuzp1_s8(*v33.f32, *v33.f32).u32[0] & 0xFFFFFF) == 0))
        {
          *(v38 + 4 * v8) = *(v15 + 4 * v29);
          v8 = (v8 + 1);
          if (v8 == a3)
          {
            break;
          }
        }

        if (!--v28)
        {
          goto LABEL_15;
        }
      }

      v8 = a3;
      break;
    }

LABEL_15:
    if (v17)
    {
      continue;
    }

    break;
  }

  if ((v45 & 0x8000000000000000) == 0)
  {
    v35 = (v45 & 0x7FFFFFFF00000000) == 0 || v44 == v42;
    if (!v35 && v44 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v8;
}

double physx::Gu::RelativeConvex<physx::Gu::BoxV>::support(float32x4_t *a1, float32x2_t *a2)
{
  v2 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v2.i32[3] = 0;
  v3 = vmulq_lane_f32(a1[3], *a2, 1);
  v3.i32[3] = 0;
  v4 = a1[1].i64[0];
  v5 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v5.i32[3] = 0;
  v6 = vcgtzq_f32(vaddq_f32(vaddq_f32(v2, v3), v5));
  v7 = *(a1->i64[1] + 48);
  v8 = vnegq_f32(v7);
  v8.i32[3] = 0;
  v9 = vbslq_s8(v6, v7, v8);
  v10 = vmulq_n_f32(*v4, v9.f32[0]);
  v10.i32[3] = 0;
  v11 = vmulq_lane_f32(v4[1], *v9.f32, 1);
  v11.i32[3] = 0;
  v12 = vmulq_laneq_f32(v4[2], v9, 2);
  v12.i32[3] = 0;
  *&result = vaddq_f32(v4[3], vaddq_f32(v12, vaddq_f32(v10, v11))).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::support(float32x4_t *a1, float32x2_t *a2)
{
  v2 = a1->i64[1];
  v3 = a1[1].i64[0];
  v4 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(a1[3], *a2, 1);
  v5.i32[3] = 0;
  v6 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v6.i32[3] = 0;
  v7 = vaddq_f32(vaddq_f32(v4, v5), v6);
  v8 = vmulq_f32(v2[3], v7);
  v8.i64[0] = vpaddq_f32(v8, v8).u64[0];
  v9 = vmulq_f32(v7, v2[4]);
  v9.i64[0] = vpaddq_f32(v9, v9).u64[0];
  v10 = vmulq_f32(v7, v2[5]);
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  *v8.f32 = vext_s8(vpadd_f32(*v8.f32, *v8.f32), vpadd_f32(*v9.f32, *v9.f32), 4uLL);
  v8.i64[1] = vpadd_f32(*v10.f32, *v10.f32).u32[0];
  v20 = v8;
  v11 = *(v2[10].i64[0] + 12 * physx::Gu::ConvexHullV::supportVertexIndex(v2, &v20));
  v12 = vmulq_n_f32(v2[3], v11.f32[0]);
  v12.i32[3] = 0;
  v13 = vmulq_lane_f32(v2[4], *v11.f32, 1);
  v13.i32[3] = 0;
  v14 = vmulq_laneq_f32(v2[5], v11, 2);
  v14.i32[3] = 0;
  v15 = vaddq_f32(vaddq_f32(v12, v13), v14);
  v16 = vmulq_n_f32(*v3, v15.f32[0]);
  v16.i32[3] = 0;
  v17 = vmulq_lane_f32(v3[1], *v15.f32, 1);
  v17.i32[3] = 0;
  v18 = vmulq_laneq_f32(v3[2], v15, 2);
  v18.i32[3] = 0;
  *&result = vaddq_f32(v3[3], vaddq_f32(vaddq_f32(v16, v17), v18)).u64[0];
  return result;
}

uint64_t physx::Gu::unsupportedMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, vars0);
  }

  return 0;
}

uint64_t MeshMTDGenerationCallback::processHit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if ((*(v2 + 12) & 0x7FFFFFFFu) <= v3)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v2, (a2 + 16));
  }

  else
  {
    *(*v2 + 4 * v3) = *(a2 + 16);
    ++*(v2 + 8);
  }

  return 1;
}

uint64_t MidPhaseQueryLocalReport::onEvent(MidPhaseQueryLocalReport *this, unsigned int a2, unsigned int *a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = *(this + 1);
      v7 = *(v6 + 8);
      if ((*(v6 + 12) & 0x7FFFFFFFu) <= v7)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v6, a3);
      }

      else
      {
        *(*v6 + 4 * v7) = *a3;
        ++*(v6 + 8);
      }

      ++a3;
      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t computeSweepConvexPlane(uint64_t a1, uint64_t a2, unsigned int *a3, float *a4, float *a5, float *a6)
{
  v8 = *a6;
  v9 = a6[1];
  v10 = a6[2];
  v11 = *a5;
  v44 = a5[2];
  v45 = a5[1];
  v42 = a4[5];
  v43 = a4[4];
  v41 = a4[6];
  v12 = *a4;
  v13 = a4[1];
  v14 = a4[2];
  v15 = a4[3];
  physx::Cm::FastVertex2ShapeScaling::init(v46, (a1 + 4), (a1 + 16));
  v16 = *a3;
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  result = 0;
  v19 = 3.4028e38;
  v20 = ((v11 - (v8 * 0.01)) - v43) + ((v11 - (v8 * 0.01)) - v43);
  v21 = ((v45 - (v9 * 0.01)) - v42) + ((v45 - (v9 * 0.01)) - v42);
  v22 = ((v44 - (v10 * 0.01)) - v41) + ((v44 - (v10 * 0.01)) - v41);
  v23 = (v15 * v15) + -0.5;
  v24 = ((v21 * v13) + (v12 * v20)) + (v14 * v22);
  v25 = ((v20 * v23) - (((v13 * v22) - (v14 * v21)) * v15)) + (v12 * v24);
  v26 = ((v21 * v23) - (((v14 * v20) - (v12 * v22)) * v15)) + (v13 * v24);
  v27 = ((v22 * v23) - (((v12 * v21) - (v13 * v20)) * v15)) + (v14 * v24);
  v28 = (((v9 + v9) * v13) + (v12 * (v8 + v8))) + (v14 * (v10 + v10));
  v29 = (((v8 + v8) * v23) - (((v13 * (v10 + v10)) - (v14 * (v9 + v9))) * v15)) + (v12 * v28);
  v30 = (((v9 + v9) * v23) - (((v14 * (v8 + v8)) - (v12 * (v10 + v10))) * v15)) + (v13 * v28);
  v31 = (((v10 + v10) * v23) - (((v12 * (v9 + v9)) - (v13 * (v8 + v8))) * v15)) + (v14 * v28);
  v32 = (*(a2 + 40) + 8);
  do
  {
    v33 = *(v32 - 2);
    v34 = *(v32 - 1);
    v35 = ((v48 * v34) + (v47 * v33)) + (v49 * *v32);
    v36 = ((v51 * v34) + (v50 * v33)) + (v52 * *v32);
    v37 = ((v54 * v34) + (v53 * v33)) + (v55 * *v32);
    v38 = 1.0 / sqrtf(((v36 * v36) + (v35 * v35)) + (v37 * v37));
    v39 = v37 * v38;
    v40 = (v32[1] * v38) + (((v26 * (v36 * v38)) + (v25 * (v35 * v38))) + (v27 * v39));
    if (v40 >= 0.0)
    {
      if ((v40 + ((((v30 * (v36 * v38)) + ((v35 * v38) * v29)) + (v39 * v31)) * 0.01)) >= v19)
      {
        result = result;
      }

      else
      {
        v19 = v40 + ((((v30 * (v36 * v38)) + ((v35 * v38) * v29)) + (v39 * v31)) * 0.01);
        result = v17;
      }
    }

    ++v17;
    v32 += 5;
  }

  while (v16 != v17);
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::BoxV>::supportPoint(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(*(a1 + 8) + 48);
  v4 = vnegq_f32(v3);
  v4.i32[3] = 0;
  v5 = vbslq_s8(physx::boxVertexTable[a2], v3, v4);
  v6 = vmulq_n_f32(*v2, v5.f32[0]);
  v6.i32[3] = 0;
  v7 = vmulq_lane_f32(v2[1], *v5.f32, 1);
  v7.i32[3] = 0;
  v8 = vmulq_laneq_f32(v2[2], v5, 2);
  v8.i32[3] = 0;
  *&result = vaddq_f32(v2[3], vaddq_f32(v8, vaddq_f32(v6, v7))).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::BoxV>::support(float32x4_t *a1, float32x2_t *a2, unsigned __int32 *a3)
{
  v3 = a1->i64[1];
  v4 = a1[1].i64[0];
  v5 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v5.i32[3] = 0;
  v6 = vmulq_lane_f32(a1[3], *a2, 1);
  v6.i32[3] = 0;
  v7 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v7.i32[3] = 0;
  v8 = vcgtzq_f32(vaddq_f32(vaddq_f32(v5, v6), v7));
  v9 = vandq_s8(v8, xmmword_1E3102070);
  v9.i64[0] = vpaddq_s32(v9, v9).u64[0];
  *a3 = vpadd_s32(*v9.i8, *v9.i8).u32[0] & 7;
  v10 = v3[3];
  v11 = vnegq_f32(v10);
  v11.i32[3] = 0;
  v12 = vbslq_s8(v8, v10, v11);
  v13 = vmulq_n_f32(*v4, v12.f32[0]);
  v13.i32[3] = 0;
  v14 = vmulq_lane_f32(v4[1], *v12.f32, 1);
  v14.i32[3] = 0;
  v15 = vmulq_laneq_f32(v4[2], v12, 2);
  v15.i32[3] = 0;
  *&result = vaddq_f32(v4[3], vaddq_f32(vaddq_f32(v13, v14), v15)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::BoxV>::getCenter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = vmulq_n_f32(*v1, COERCE_FLOAT(*v2->f32));
  v3.i32[3] = 0;
  v4 = vmulq_lane_f32(v1[1], *v2, 1);
  v4.i32[3] = 0;
  v5 = vmulq_laneq_f32(v1[2], *v2->f32, 2);
  v5.i32[3] = 0;
  *&result = vaddq_f32(v1[3], vaddq_f32(vaddq_f32(v3, v4), v5)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::supportPoint(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2[10].i64[0] + 12 * a2);
  v4 = vmulq_n_f32(v2[3], v3.f32[0]);
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(v2[4], *v3.f32, 1);
  v5.i32[3] = 0;
  v6 = *(a1 + 16);
  v7 = vmulq_laneq_f32(v2[5], v3, 2);
  v7.i32[3] = 0;
  v8 = vaddq_f32(vaddq_f32(v4, v5), v7);
  v9 = vmulq_n_f32(*v6, v8.f32[0]);
  v9.i32[3] = 0;
  v10 = vmulq_lane_f32(v6[1], *v8.f32, 1);
  v10.i32[3] = 0;
  v11 = vmulq_laneq_f32(v6[2], v8, 2);
  v11.i32[3] = 0;
  *&result = vaddq_f32(v6[3], vaddq_f32(v11, vaddq_f32(v9, v10))).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::support(float32x4_t *a1, float32x2_t *a2, _DWORD *a3)
{
  v4 = a1->i64[1];
  v5 = a1[1].i64[0];
  v6 = vmulq_n_f32(a1[2], COERCE_FLOAT(*a2->f32));
  v6.i32[3] = 0;
  v7 = vmulq_lane_f32(a1[3], *a2, 1);
  v7.i32[3] = 0;
  v8 = vmulq_laneq_f32(a1[4], *a2->f32, 2);
  v8.i32[3] = 0;
  v9 = vaddq_f32(vaddq_f32(v6, v7), v8);
  v10 = vmulq_f32(v4[3], v9);
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  v11 = vmulq_f32(v9, v4[4]);
  v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
  v12 = vmulq_f32(v9, v4[5]);
  v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
  *v10.f32 = vext_s8(vpadd_f32(*v10.f32, *v10.f32), vpadd_f32(*v11.f32, *v11.f32), 4uLL);
  v10.i64[1] = vpadd_f32(*v12.f32, *v12.f32).u32[0];
  v23 = v10;
  v13 = physx::Gu::ConvexHullV::supportVertexIndex(v4, &v23);
  *a3 = v13;
  v14 = *(v4[10].i64[0] + 12 * v13);
  v15 = vmulq_n_f32(v4[3], v14.f32[0]);
  v15.i32[3] = 0;
  v16 = vmulq_lane_f32(v4[4], *v14.f32, 1);
  v16.i32[3] = 0;
  v17 = vmulq_laneq_f32(v4[5], v14, 2);
  v17.i32[3] = 0;
  v18 = vaddq_f32(vaddq_f32(v15, v16), v17);
  v19 = vmulq_n_f32(*v5, v18.f32[0]);
  v19.i32[3] = 0;
  v20 = vmulq_lane_f32(v5[1], *v18.f32, 1);
  v20.i32[3] = 0;
  v21 = vmulq_laneq_f32(v5[2], v18, 2);
  v21.i32[3] = 0;
  *&result = vaddq_f32(v5[3], vaddq_f32(vaddq_f32(v19, v20), v21)).u64[0];
  return result;
}

double physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::getCenter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = vmulq_n_f32(*v1, COERCE_FLOAT(*v2->f32));
  v3.i32[3] = 0;
  v4 = vmulq_lane_f32(v1[1], *v2, 1);
  v4.i32[3] = 0;
  v5 = vmulq_laneq_f32(v1[2], *v2->f32, 2);
  v5.i32[3] = 0;
  *&result = vaddq_f32(v1[3], vaddq_f32(vaddq_f32(v3, v4), v5)).u64[0];
  return result;
}

BOOL anonymous namespace::HFTraceSegmentCallback::faceHit(uint64_t *a1, float *a2, int a3, float a4, float a5)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v6 >= v5)
  {
    return 0;
  }

  v7 = *a1;
  v8 = v6 + 1;
  *(a1 + 3) = v6 + 1;
  v9 = v7 + (v6 << 6);
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 24) = *a2;
  *(v9 + 28) = v11;
  v12 = a2[2];
  *(v9 + 32) = v12;
  *(v9 + 16) = a3;
  *(v9 + 52) = a4;
  *(v9 + 56) = a5;
  *(v9 + 20) = 1032;
  v13 = *(a1 + 28);
  if ((v13 & 2) != 0)
  {
    v17 = a1[2];
    v16 = a1[3];
    v18 = *(v17 + 16);
    v19 = *v17;
    v20 = *(v17 + 4);
    v21 = *(v17 + 8);
    v22 = fmaxf(v10 * *v17, 0.0);
    v23 = fmaxf(v12 * v21, 0.0);
    v24 = 1.0 - ((v23 + 1.0) * 0.000001);
    v25 = *(v18 + 68);
    v26 = *(v18 + 64) + (1.0 - ((v22 + 1.0) * 0.000001));
    if (v22 < v26)
    {
      v26 = v22;
    }

    v27 = v25 + v24;
    if (v23 < (v25 + v24))
    {
      v27 = v23;
    }

    v28 = floorf(v26);
    v29 = v26 - v28;
    v30 = floorf(v27);
    v31 = v27 - v30;
    v32 = (v30 + (v28 * *(v18 + 72)));
    v33 = *(v18 + 80);
    v34 = (v33 + 4 * v32);
    if (v34[1] < 0)
    {
      v41 = *v34;
      v42 = *(v18 + 60) + v32;
      v35 = *(v33 + 4 * (v42 + 1));
      if (v31 >= v29)
      {
        v44 = *(v33 + 4 * (v32 + 1));
        v39 = v44 - v35;
        v40 = v41 - v44;
        goto LABEL_17;
      }

      v43 = *(v33 + 4 * v42);
      v39 = v41 - v43;
    }

    else
    {
      v35 = *(v33 + 4 * (v32 + 1));
      v36 = *(v18 + 60) + v32;
      v37 = *(v33 + 4 * v36);
      if ((v29 + v31) > 1.0)
      {
        v38 = *(v33 + 4 * (v36 + 1));
        v39 = v35 - v38;
        v40 = v37 - v38;
LABEL_17:
        v45 = (v19 * v39) + (v19 * v39);
        v46 = v20 + v20;
        v47 = (v21 * v40) + (v21 * v40);
        v49 = v16[2];
        v48 = v16[3];
        v50 = (v48 * v48) + -0.5;
        v51 = v16[1];
        v52 = (((v20 + v20) * v51) + (*v16 * v45)) + (v49 * v47);
        v53 = ((v48 * ((v51 * v47) - (v49 * (v20 + v20)))) + (v45 * v50)) + (*v16 * v52);
        v54 = ((v48 * ((v49 * v45) - (*v16 * v47))) + ((v20 + v20) * v50)) + (v51 * v52);
        v55 = ((v48 * ((*v16 * v46) - (v51 * v45))) + (v47 * v50)) + (v49 * v52);
        v56 = sqrtf(((v54 * v54) + (v53 * v53)) + (v55 * v55));
        if (v56 > 0.0)
        {
          v57 = 1.0 / v56;
          v53 = v53 * v57;
          v54 = v54 * v57;
          v55 = v55 * v57;
        }

        if (*(a1 + 58) == 1 && (((v54 * *(a1[4] + 4)) + (v53 * *a1[4])) + (v55 * *(a1[4] + 8))) > 0.0)
        {
          v53 = -v53;
          v54 = -v54;
          v55 = -v55;
        }

        *(v9 + 36) = v53;
        *(v9 + 40) = v54;
        *(v9 + 44) = v55;
        *(v9 + 20) = 1034;
        v13 = *(a1 + 28);
        v14 = 1035;
        goto LABEL_23;
      }

      v43 = *v34;
      v39 = v43 - v37;
    }

    v40 = v43 - v35;
    goto LABEL_17;
  }

  v14 = 1033;
LABEL_23:
  v58 = (((v11 - *(a1[6] + 4)) * *(a1[5] + 4)) + ((v10 - *a1[6]) * *a1[5])) + ((v12 - *(a1[6] + 8)) * *(a1[5] + 8));
  if (v58 < 0.0)
  {
    v58 = 0.0;
  }

  *(v9 + 48) = v58;
  if (v13)
  {
    v59 = a1[3];
    v60 = v10 + v10;
    v61 = v11 + v11;
    v62 = v12 + v12;
    v64 = v59[2];
    v63 = v59[3];
    v65 = (v63 * v63) + -0.5;
    v66 = v59[1];
    v67 = ((v61 * v66) + (*v59 * v60)) + (v64 * v62);
    v68 = ((v63 * ((v66 * v62) - (v64 * v61))) + (v60 * v65)) + (*v59 * v67);
    v69 = ((v63 * ((v64 * v60) - (*v59 * v62))) + (v61 * v65)) + (v66 * v67);
    v70 = ((v63 * ((*v59 * v61) - (v66 * v60))) + (v62 * v65)) + (v64 * v67);
    v71 = v59[5] + v69;
    v72 = v59[6];
    *(v9 + 24) = v59[4] + v68;
    *(v9 + 28) = v71;
    *(v9 + 32) = v72 + v70;
    *(v9 + 20) = v14;
  }

  return v8 < v5;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, double a9, double a10, int8x8_t a11, float32x4_t a12, int8x8_t a13, uint64_t a14)
{
  v14 = a7;
  v15 = a6;
  v362 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 8);
  v19 = (v18 + 20);
  v20 = vld1_dup_f32(v19);
  v21 = *(a2 + 8);
  v22 = &v21[1].f32[1];
  v23 = vld1_dup_f32(v22);
  a11.i32[0] = *(v18 + 16);
  a12.i32[0] = v21[1].i32[0];
  a13.i32[0] = -*(v18 + 32);
  v24 = vand_s8(a13, a11);
  v25 = vdup_lane_s32(v24, 0);
  v24.i32[0] = -v21[2].u8[0];
  v26 = vdup_lane_s32(vand_s8(v24, *a12.f32), 0);
  v27 = vmul_f32(vmin_f32(v20, v23), vdup_n_s32(0x3DCCCCCDu));
  v332 = v25;
  v333 = v26.f32[0];
  v28 = vadd_f32(v25, v26);
  v29 = *a4;
  v344 = 0uLL;
  v343 = 0;
  v30 = *a8;
  __asm { FMOV            V9.2S, #1.0 }

  v336 = v28;
  if (!*a8)
  {
    v58 = vmulq_f32(*a3, *a3);
    v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
    v50 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v58.f32, *v58.f32)), 0)), *a3, xmmword_1E3047670);
    v344 = v50;
    v59 = vmulq_f32(v50, v50);
    v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
    v60 = vpadd_f32(*v59.f32, *v59.f32);
    v61 = vrsqrte_f32(v60);
    v62 = 4;
    do
    {
      v61 = vmul_f32(v61, vrsqrts_f32(vmul_f32(v61, v61), v60));
      --v62;
    }

    while (v62);
    v63 = vbsl_s8(vdup_lane_s32(vceqz_f32(v60), 0), v60, vmul_f32(v60, v61));
    v64 = vrecpe_f32(v63);
    v65 = 4;
    do
    {
      *a12.f32 = vrecps_f32(v63, v64);
      v64 = vmul_f32(v64, *a12.f32);
      --v65;
    }

    while (v65);
    v66 = vmulq_n_f32(v50, v64.f32[0]);
    v66.i32[3] = 0;
    v339 = v66;
    v67 = vneg_f32(0x80000000800000);
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69 = 0uLL;
    goto LABEL_52;
  }

  v36 = 0;
  v37 = v18 + 48;
  v38 = v21[10].i64[0];
  v39 = v21[3];
  v40 = v21[4];
  v41 = -1;
  a12 = v21[5];
  do
  {
    v42 = a6[v36];
    *(&v350 + v36) = v42;
    v43 = a7[v36];
    *(&v347 + v36) = v43;
    v44 = *(v37 + 16 * (1 - v42));
    v45 = *(v38 + 12 * v43);
    v46 = vmulq_n_f32(v39, v45.f32[0]);
    v46.i32[3] = 0;
    v47 = vmulq_lane_f32(v40, *v45.f32, 1);
    v47.i32[3] = 0;
    v48 = vmulq_laneq_f32(a12, v45, 2);
    v48.i32[3] = 0;
    v49 = vaddq_f32(v48, vaddq_f32(v46, v47));
    v50 = vsubq_f32(v44, v49);
    *(&v356 + v36) = v44;
    *(&v353 + v36) = v49;
    *(&v359 + v36) = v50;
    ++v41;
    ++v36;
  }

  while (v30 != v36);
  v343 = v30;
  if (v41 == 3)
  {
    v340 = v29;
    physx::Gu::closestPtPointTetrahedron(&v359, &v356, &v353, &v350, &v347, &v343);
    LODWORD(v29) = v340;
    v28.i32[0] = v336.i32[0];
    goto LABEL_47;
  }

  if (v41 != 2)
  {
    if (v41 != 1)
    {
      goto LABEL_47;
    }

    v50 = v359;
    v51 = vsubq_f32(v360, v359);
    v52 = vmulq_f32(v51, v51);
    v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
    v53 = vpadd_f32(*v52.f32, *v52.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v53), 0), *v359.f32).u32[0] != -1)
    {
      v54 = vnegq_f32(v359);
      v54.i32[3] = 0;
      v55 = vmulq_f32(v54, v51);
      a12 = vpaddq_f32(v55, v55);
      *a12.f32 = vpadd_f32(*a12.f32, *a12.f32);
      v56 = vrecpe_f32(v53);
      v57 = 4;
      do
      {
        v56 = vmul_f32(v56, vrecps_f32(v53, v56));
        --v57;
      }

      while (v57);
      v50 = vmlaq_n_f32(v359, v51, vmax_f32(vmin_f32(vmul_f32(*a12.f32, v56), _D9), 0).f32[0]);
LABEL_31:
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v343 = 1;
    goto LABEL_47;
  }

  v343 = 3;
  v50 = v359;
  a12 = vsubq_f32(v360, v359);
  v70 = vsubq_f32(v361[0], v359);
  v72 = vmls_f32(vmul_f32(*a12.f32, *&vextq_s8(v70, v70, 4uLL)), *&vextq_s8(a12, a12, 4uLL), *v70.f32);
  *v71.f32 = vext_s8(v72, vmls_f32(vmul_f32(*&vextq_s8(a12, a12, 8uLL), *v70.f32), *a12.f32, *&vextq_s8(v70, v70, 8uLL)), 4uLL);
  v72.i32[1] = 0;
  v73 = vpadd_f32(vmul_f32(*v71.f32, *v71.f32), vmul_f32(v72.u32[0], v72.u32[0]));
  v74 = vpadd_f32(v73, v73);
  if (v74.f32[0] <= 0.00000011921)
  {
    v343 = 2;
    v113 = vmulq_f32(a12, a12);
    v113.i64[0] = vpaddq_f32(v113, v113).u64[0];
    v114 = vpadd_f32(*v113.f32, *v113.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v114), 0), *v359.f32).u32[0] != -1)
    {
      v115 = vnegq_f32(v359);
      v115.i32[3] = 0;
      v116 = vmulq_f32(v115, a12);
      v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
      v117 = vpadd_f32(*v116.f32, *v116.f32);
      v118 = vrecpe_f32(v114);
      v119 = 4;
      do
      {
        v118 = vmul_f32(v118, vrecps_f32(v114, v118));
        --v119;
      }

      while (v119);
      v50 = vmlaq_n_f32(v359, a12, vmax_f32(vmin_f32(vmul_f32(v117, v118), _D9), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v71.u32[2] = v72;
  v75 = vextq_s8(v360, v360, 8uLL).u64[0];
  v76 = vextq_s8(v361[0], v361[0], 8uLL).u64[0];
  v77 = vextq_s8(v361[0], v361[0], 4uLL).u64[0];
  v78 = vextq_s8(v360, v360, 4uLL).u64[0];
  v79 = vmls_f32(vmul_f32(*v360.f32, v77), v78, *v361[0].i8);
  *v80.f32 = vext_s8(v79, vmls_f32(vmul_f32(v75, *v361[0].i8), *v360.f32, v76), 4uLL);
  v80.i64[1] = v79.u32[0];
  v81 = vextq_s8(v359, v359, 8uLL).u64[0];
  v82 = vextq_s8(v359, v359, 4uLL).u64[0];
  v83 = vmls_f32(vmul_f32(v82, *v361[0].i8), v77, *v359.f32);
  *v84.f32 = vext_s8(v83, vmls_f32(vmul_f32(*v359.f32, v76), *v361[0].i8, v81), 4uLL);
  v84.i64[1] = v83.u32[0];
  v85 = vmls_f32(vmul_f32(*v359.f32, v78), v82, *v360.f32);
  *v86.f32 = vext_s8(v85, vmls_f32(vmul_f32(v81, *v360.f32), *v359.f32, v75), 4uLL);
  v86.i64[1] = v85.u32[0];
  v87 = vmulq_f32(v80, v71);
  v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
  v88 = vpadd_f32(*v87.f32, *v87.f32);
  v89 = vmulq_f32(v84, v71);
  v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
  v90 = vpadd_f32(*v89.f32, *v89.f32);
  v91 = vmulq_f32(v86, v71);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vpadd_f32(*v91.f32, *v91.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v90), vcgez_f32(v88)), vcgez_f32(v92)), 0), *v359.f32).u32[0] == -1)
  {
    v120 = vmulq_f32(v359, v71);
    v121 = vextq_s8(v120, v120, 8uLL).u64[0];
    v122 = vrecpe_f32(v74);
    v123 = 4;
    do
    {
      v122 = vmul_f32(v122, vrecps_f32(v74, v122));
      --v123;
    }

    while (v123);
    v124 = vpadd_f32(*v120.i8, v121);
    v50 = vmulq_n_f32(v71, vmul_f32(v122, vpadd_f32(v124, v124)).f32[0]);
    v50.i32[3] = 0;
    goto LABEL_47;
  }

  v93 = vnegq_f32(v359);
  v93.i32[3] = 0;
  v94 = vnegq_f32(v360);
  v94.i32[3] = 0;
  v95 = vmulq_f32(v93, a12);
  v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
  v96 = vpadd_f32(*v95.f32, *v95.f32);
  v97 = vmulq_f32(a12, v94);
  v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
  v98 = vpadd_f32(*v97.f32, *v97.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v92), vand_s8(vclez_f32(v98), vcgez_f32(v96))), 0), *v359.f32).u32[0] == -1)
  {
    v125 = vsub_f32(v96, v98);
    v126 = vrecpe_f32(v125);
    v127 = 4;
    do
    {
      v126 = vmul_f32(v126, vrecps_f32(v125, v126));
      --v127;
    }

    while (v127);
    v111 = 0;
    v50 = vmlaq_n_f32(v359, a12, vmul_f32(v96, vbsl_s8(vcgt_f32(vabs_f32(v125), 0x3400000034000000), v126, 0)).f32[0]);
    v110 = 2;
    v112 = &v348;
    v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
  }

  else
  {
    v99 = vnegq_f32(v361[0]);
    v99.i32[3] = 0;
    v100 = vmulq_f32(v94, v70);
    v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
    v101 = vpadd_f32(*v100.f32, *v100.f32);
    v102 = vmulq_f32(a12, v99);
    v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
    v103 = vpadd_f32(*v102.f32, *v102.f32);
    v104 = vmulq_f32(v70, v99);
    v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
    v105 = vpadd_f32(*v104.f32, *v104.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v101, v98), vcge_f32(v103, v105)), vclez_f32(v88)), 0), *v359.f32).u32[0] == -1)
    {
      v132 = vsub_f32(v101, v98);
      v133 = vadd_f32(v132, vsub_f32(v103, v105));
      v134 = vrecpe_f32(v133);
      v135 = 4;
      do
      {
        v134 = vmul_f32(v134, vrecps_f32(v133, v134));
        --v135;
      }

      while (v135);
      v136 = vmlaq_n_f32(v360, vsubq_f32(v361[0], v360), vmul_f32(v132, vbsl_s8(vcgt_f32(vabs_f32(v133), 0x3400000034000000), v134, 0)).f32[0]);
      v110 = 2;
      v111 = 1;
      v128 = &v352;
      v112 = &v349;
      v136.i64[1] = vextq_s8(v136, v136, 8uLL).u32[0];
      v130 = v358;
      v129 = v355;
      v131 = v361;
      v50 = v136;
      goto LABEL_46;
    }

    v106 = vmulq_f32(v93, v70);
    v107 = vpaddq_f32(v106, v106);
    *v107.i8 = vpadd_f32(*v107.i8, *v107.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v90), vand_s8(vclez_f32(v105), vcgez_f32(*v107.i8))), 0), *v359.f32).u32[0] == -1)
    {
      v137 = vsub_f32(*v107.i8, v105);
      v138 = vrecpe_f32(v137);
      v139 = 4;
      do
      {
        v138 = vmul_f32(v138, vrecps_f32(v137, v138));
        --v139;
      }

      while (v139);
      v111 = 0;
      v50 = vmlaq_n_f32(v359, v70, vmul_f32(*v107.i8, vbsl_s8(vcgt_f32(vabs_f32(v137), 0x3400000034000000), v138, 0)).f32[0]);
      v110 = 2;
      v128 = &v352;
      v112 = &v349;
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
      v130 = v358;
      v129 = v355;
      v131 = v361;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v107.i8), vclez_f32(v96)), 0), *v359.f32).u32[0] == -1)
    {
      v111 = 0;
      v110 = 1;
      v112 = &v348;
    }

    else
    {
      *v107.i8 = vcge_f32(v98, v101);
      *v50.f32 = vdup_lane_s16(vand_s8(*v107.i8, vcgez_f32(v98)), 0);
      *v50.f32 = vuzp1_s8(*v50.f32, *v50.f32);
      v107.i32[0] = -1;
      v108 = v50.i32[0];
      v109 = vdupq_lane_s32(*&vceqq_s32(v50, v107), 0);
      v110 = 1;
      if (v108 == -1)
      {
        v111 = 1;
      }

      else
      {
        v111 = 2;
      }

      v112 = &v348;
      v50 = vbslq_s8(v109, v360, v361[0]);
    }
  }

  v129 = &v354;
  v128 = &v351;
  v130 = &v357;
  v131 = &v360;
LABEL_46:
  v140 = *(&v359 + v111);
  v141 = *v131;
  a12 = *(&v356 + v111);
  v142 = *v130;
  v143 = *(&v353 + v111);
  v144 = *v129;
  v145 = *(&v350 + v111);
  v146 = *v128;
  v147 = *(&v347 + v111);
  v148 = *v112;
  v359 = v140;
  v360 = v141;
  v356 = a12;
  v357 = v142;
  v353 = v143;
  v354 = v144;
  v350 = v145;
  v351 = v146;
  v347 = v147;
  v348 = v148;
  v343 = v110;
LABEL_47:
  v344 = v50;
  v149 = vmulq_f32(v50, v50);
  v149.i64[0] = vpaddq_f32(v149, v149).u64[0];
  v150 = vpadd_f32(*v149.f32, *v149.f32);
  v151 = vrsqrte_f32(v150);
  v152 = 4;
  do
  {
    v151 = vmul_f32(v151, vrsqrts_f32(vmul_f32(v151, v151), v150));
    --v152;
  }

  while (v152);
  v67 = vbsl_s8(vdup_lane_s32(vceqz_f32(v150), 0), v150, vmul_f32(v150, v151));
  v153 = vrecpe_f32(v67);
  v154 = 4;
  do
  {
    *a12.f32 = vrecps_f32(v67, v153);
    v153 = vmul_f32(v153, *a12.f32);
    --v154;
  }

  while (v154);
  v155 = vmulq_n_f32(v50, v153.f32[0]);
  v155.i32[3] = 0;
  v339 = v155;
  v68 = vdupq_lane_s32(vcgt_f32(v67, v27), 0);
  v69 = v50;
LABEL_52:
  v156 = *&v29 + v28.f32[0];
  a12.i32[0] = -1;
  v331 = a12;
  v157 = v67;
  v158.i64[0] = -1;
  v158.i64[1] = -1;
  while (1)
  {
    v159 = v50;
    v160.i64[0] = -1;
    v160.i64[1] = -1;
    *v160.i8 = vmovn_s32(vceqq_s32(v68, v160));
    if (vuzp1_s8(*v160.i8, *v160.i8).u32[0] != -1)
    {
      break;
    }

    v341 = v67;
    v161 = vnegq_f32(v159);
    v161.i32[3] = 0;
    v162 = v343;
    v163 = *(a1 + 8);
    v164 = vmulq_f32(v161, v163[3]);
    v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
    v165 = vmulq_f32(v161, v163[4]);
    v165.i64[0] = vpaddq_f32(v165, v165).u64[0];
    *v165.f32 = vand_s8(vcgt_f32(vpadd_f32(*v164.f32, *v164.f32), vpadd_f32(*v165.f32, *v165.f32)), 0x100000001);
    *(&v350 + v343) = v165.i32[0];
    v337 = v159;
    v338 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vdupq_lane_s32(*v165.f32, 0), 0x1FuLL)), v163[3], v163[4]);
    *v166.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v344, &v347 + v162);
    v167 = v339;
    v168 = v166;
    v50 = vsubq_f32(v338, v166);
    v169 = vmulq_f32(v339, v50);
    v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
    v170 = vpadd_f32(*v169.f32, *v169.f32).f32[0];
    if (v170 > v156)
    {
      if (v15)
      {
        v276 = v343;
        *a8 = v343;
        if (v276)
        {
          v277 = &v347;
          v278 = &v350;
          do
          {
            v279 = *v278++;
            *v15++ = v279;
            v280 = *v277++;
            *v14++ = v280;
            --v276;
          }

          while (v276);
        }
      }

      return 0;
    }

    v171 = v341;
    v172 = v343;
    if (v170 > (0.99977 * v341.f32[0]))
    {
      v281 = v336;
      if (!v15)
      {
        goto LABEL_116;
      }

      *a8 = v343;
      if (v172)
      {
        v282 = &v347;
        v283 = &v350;
        v284 = v172;
        do
        {
          v285 = *v283++;
          *v15++ = v285;
          v286 = *v282++;
          *v14++ = v286;
          --v284;
        }

        while (v284);
LABEL_116:
        *(a14 + 32) = v339;
        if (v172 != 3)
        {
          if (v172 == 2)
          {
            v298 = vsubq_f32(v359, v344);
            v299 = vsubq_f32(vsubq_f32(v360, v344), v298);
            v300 = vmulq_f32(v299, v299);
            v300.i64[0] = vpaddq_f32(v300, v300).u64[0];
            v301 = vpadd_f32(*v300.f32, *v300.f32);
            v302 = vrecpe_f32(v301);
            v303 = 4;
            v289 = a5;
            do
            {
              v302 = vmul_f32(v302, vrecps_f32(v301, v302));
              --v303;
            }

            while (v303);
            v304 = vnegq_f32(v298);
            v304.i32[3] = 0;
            v305 = vmulq_f32(v304, v299);
            v305.i64[0] = vpaddq_f32(v305, v305).u64[0];
            v304.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v301), v302, 0), vpadd_f32(*v305.f32, *v305.f32)).u32[0];
            v287 = vmlaq_n_f32(v356, vsubq_f32(v357, v356), v304.f32[0]);
            v287.i64[1] = vextq_s8(v287, v287, 8uLL).u32[0];
            v288 = vmlaq_n_f32(v353, vsubq_f32(v354, v353), v304.f32[0]);
            v288.i64[1] = vextq_s8(v288, v288, 8uLL).u32[0];
          }

          else
          {
            v287 = 0uLL;
            v288 = 0uLL;
            v289 = a5;
            if (v172 == 1)
            {
              v287 = v356;
              v288 = v353;
              if (!a5)
              {
LABEL_137:
                v311 = vmlsq_lane_f32(v287, v167, v332, 0);
                v311.i64[1] = vextq_s8(v311, v311, 8uLL).u32[0];
                v312 = vmlaq_n_f32(v288, v167, v333);
                v312.i64[1] = vextq_s8(v312, v312, 8uLL).u32[0];
                *a14 = v311;
                *(a14 + 16) = v312;
                *(a14 + 64) = vsub_f32(v171, v281);
                return 2;
              }

LABEL_134:
              *a14 = v287;
              *(a14 + 16) = v288;
              result = 2;
              *(a14 + 64) = v171;
              return result;
            }
          }

          if (!v289)
          {
            goto LABEL_137;
          }

          goto LABEL_134;
        }

        v345 = 0;
        v346 = 0;
        physx::Gu::barycentricCoordinates(&v344, &v359, &v360, v361, &v346, &v345);
        v167 = v339;
        v171 = v341;
        v281 = v336;
        v306 = vmulq_n_f32(vsubq_f32(v357, v356), v346.f32[0]);
        v306.i32[3] = 0;
        v307 = vmulq_n_f32(vsubq_f32(v358[0], v356), v345.f32[0]);
        v307.i32[3] = 0;
        v308 = vaddq_f32(v306, v307);
        v309 = vmulq_n_f32(vsubq_f32(v354, v353), v346.f32[0]);
        v309.i32[3] = 0;
        v287 = vaddq_f32(v356, v308);
        v310 = vmulq_n_f32(vsubq_f32(v355[0], v353), v345.f32[0]);
        v310.i32[3] = 0;
        v288 = vaddq_f32(v353, vaddq_f32(v309, v310));
      }

      else
      {
        *(a14 + 32) = v339;
        v287 = 0uLL;
        v288 = 0uLL;
      }

      if (!a5)
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }

    *(&v356 + v343) = v338;
    *(&v353 + v172) = v168;
    v343 = v172 + 1;
    *(&v359 + v172) = v50;
    switch(v172)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v359, &v356, &v353, &v350, &v347, &v343);
        v171 = v341;
        break;
      case 2:
        v50 = v359;
        v181 = vsubq_f32(v360, v359);
        v182 = vsubq_f32(v361[0], v359);
        v184 = vmls_f32(vmul_f32(*v181.f32, *&vextq_s8(v182, v182, 4uLL)), *&vextq_s8(v181, v181, 4uLL), *v182.f32);
        *v183.f32 = vext_s8(v184, vmls_f32(vmul_f32(*&vextq_s8(v181, v181, 8uLL), *v182.f32), *v181.f32, *&vextq_s8(v182, v182, 8uLL)), 4uLL);
        v184.i32[1] = 0;
        v343 = 3;
        v185 = vpadd_f32(vmul_f32(*v183.f32, *v183.f32), vmul_f32(v184.u32[0], v184.u32[0]));
        v186 = vpadd_f32(v185, v185);
        if (v186.f32[0] <= 0.00000011921)
        {
          v343 = 2;
          v225 = vmulq_f32(v181, v181);
          v225.i64[0] = vpaddq_f32(v225, v225).u64[0];
          v226 = vpadd_f32(*v225.f32, *v225.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v226), 0), *v359.f32).u32[0] == -1)
          {
LABEL_79:
            v343 = 1;
            break;
          }

          v227 = vnegq_f32(v359);
          v227.i32[3] = 0;
          v228 = vmulq_f32(v227, v181);
          v228.i64[0] = vpaddq_f32(v228, v228).u64[0];
          v229 = vpadd_f32(*v228.f32, *v228.f32);
          v230 = vrecpe_f32(v226);
          v231 = 4;
          do
          {
            v230 = vmul_f32(v230, vrecps_f32(v226, v230));
            --v231;
          }

          while (v231);
          v50 = vmlaq_n_f32(v359, v181, vmax_f32(vmin_f32(vmul_f32(v229, v230), _D9), 0).f32[0]);
          goto LABEL_78;
        }

        *&v183.u32[2] = v184;
        v187 = vextq_s8(v360, v360, 8uLL).u64[0];
        v188 = vextq_s8(v361[0], v361[0], 8uLL).u64[0];
        v189 = vextq_s8(v361[0], v361[0], 4uLL).u64[0];
        v190 = vextq_s8(v360, v360, 4uLL).u64[0];
        v191 = vmls_f32(vmul_f32(*v360.f32, v189), v190, *v361[0].i8);
        *v192.f32 = vext_s8(v191, vmls_f32(vmul_f32(v187, *v361[0].i8), *v360.f32, v188), 4uLL);
        v192.i64[1] = v191.u32[0];
        v193 = vextq_s8(v359, v359, 8uLL).u64[0];
        v194 = vextq_s8(v359, v359, 4uLL).u64[0];
        v195 = vmls_f32(vmul_f32(v194, *v361[0].i8), v189, *v359.f32);
        *v196.f32 = vext_s8(v195, vmls_f32(vmul_f32(*v359.f32, v188), *v361[0].i8, v193), 4uLL);
        v196.i64[1] = v195.u32[0];
        v197 = vmls_f32(vmul_f32(*v359.f32, v190), v194, *v360.f32);
        *v198.f32 = vext_s8(v197, vmls_f32(vmul_f32(v193, *v360.f32), *v359.f32, v187), 4uLL);
        v198.i64[1] = v197.u32[0];
        v199 = vmulq_f32(v192, v183);
        v199.i64[0] = vpaddq_f32(v199, v199).u64[0];
        v200 = vpadd_f32(*v199.f32, *v199.f32);
        v201 = vmulq_f32(v196, v183);
        v201.i64[0] = vpaddq_f32(v201, v201).u64[0];
        v202 = vpadd_f32(*v201.f32, *v201.f32);
        v203 = vmulq_f32(v198, v183);
        v203.i64[0] = vpaddq_f32(v203, v203).u64[0];
        v204 = vpadd_f32(*v203.f32, *v203.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v202), vcgez_f32(v200)), vcgez_f32(v204)), 0), *v359.f32).u32[0] != -1)
        {
          v205 = vnegq_f32(v359);
          v205.i32[3] = 0;
          v206 = vnegq_f32(v360);
          v206.i32[3] = 0;
          v207 = vmulq_f32(v205, v181);
          v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
          v208 = vpadd_f32(*v207.f32, *v207.f32);
          v209 = vmulq_f32(v181, v206);
          v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
          v210 = vpadd_f32(*v209.f32, *v209.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v204), vand_s8(vclez_f32(v210), vcgez_f32(v208))), 0), *v359.f32).u32[0] == -1)
          {
            v237 = vsub_f32(v208, v210);
            v238 = vrecpe_f32(v237);
            v239 = 4;
            do
            {
              v238 = vmul_f32(v238, vrecps_f32(v237, v238));
              --v239;
            }

            while (v239);
            v223 = 0;
            v50 = vmlaq_n_f32(v359, v181, vmul_f32(v208, vbsl_s8(vcgt_f32(vabs_f32(v237), 0x3400000034000000), v238, 0)).f32[0]);
            v222 = 2;
            v224 = &v348;
            v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
            goto LABEL_86;
          }

          v211 = vnegq_f32(v361[0]);
          v211.i32[3] = 0;
          v212 = vmulq_f32(v206, v182);
          v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
          v213 = vpadd_f32(*v212.f32, *v212.f32);
          v214 = vmulq_f32(v181, v211);
          v214.i64[0] = vpaddq_f32(v214, v214).u64[0];
          v215 = vpadd_f32(*v214.f32, *v214.f32);
          v216 = vmulq_f32(v182, v211);
          v216.i64[0] = vpaddq_f32(v216, v216).u64[0];
          v217 = vpadd_f32(*v216.f32, *v216.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v213, v210), vcge_f32(v215, v217)), vclez_f32(v200)), 0), *v359.f32).u32[0] == -1)
          {
            v244 = vsub_f32(v213, v210);
            v245 = vadd_f32(v244, vsub_f32(v215, v217));
            v246 = vrecpe_f32(v245);
            v247 = 4;
            do
            {
              v246 = vmul_f32(v246, vrecps_f32(v245, v246));
              --v247;
            }

            while (v247);
            v248 = vmlaq_n_f32(v360, vsubq_f32(v361[0], v360), vmul_f32(v244, vbsl_s8(vcgt_f32(vabs_f32(v245), 0x3400000034000000), v246, 0)).f32[0]);
            v248.i64[1] = vextq_s8(v248, v248, 8uLL).u32[0];
            v222 = 2;
            v50 = v248;
            v223 = 1;
            v224 = &v349;
          }

          else
          {
            v218 = vmulq_f32(v205, v182);
            v218.i64[0] = vpaddq_f32(v218, v218).u64[0];
            v219 = vpadd_f32(*v218.f32, *v218.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v202), vand_s8(vclez_f32(v217), vcgez_f32(v219))), 0), *v359.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v219), vclez_f32(v208)), 0), *v359.f32).u32[0] == -1)
              {
                v223 = 0;
                v222 = 1;
                v224 = &v348;
              }

              else
              {
                *v50.f32 = vdup_lane_s16(vand_s8(vcge_f32(v210, v213), vcgez_f32(v210)), 0);
                *v50.f32 = vuzp1_s8(*v50.f32, *v50.f32);
                v220 = v50.i32[0];
                v221 = vdupq_lane_s32(*&vceqq_s32(v50, v331), 0);
                v222 = 1;
                if (v220 == -1)
                {
                  v223 = 1;
                }

                else
                {
                  v223 = 2;
                }

                v224 = &v348;
                v50 = vbslq_s8(v221, v360, v361[0]);
              }

LABEL_86:
              v241 = &v354;
              v240 = &v351;
              v242 = &v357;
              v243 = &v360;
LABEL_94:
              v252 = *(&v359 + v223);
              v253 = *v243;
              v254 = *(&v356 + v223);
              v255 = *v242;
              v256 = *(&v353 + v223);
              v257 = *v241;
              v258 = *(&v350 + v223);
              v259 = *v240;
              v260 = *(&v347 + v223);
              v261 = *v224;
              v359 = v252;
              v360 = v253;
              v356 = v254;
              v357 = v255;
              v353 = v256;
              v354 = v257;
              v350 = v258;
              v351 = v259;
              v347 = v260;
              v348 = v261;
              v343 = v222;
              break;
            }

            v249 = vsub_f32(v219, v217);
            v250 = vrecpe_f32(v249);
            v251 = 4;
            do
            {
              v250 = vmul_f32(v250, vrecps_f32(v249, v250));
              --v251;
            }

            while (v251);
            v223 = 0;
            v50 = vmlaq_n_f32(v359, v182, vmul_f32(v219, vbsl_s8(vcgt_f32(vabs_f32(v249), 0x3400000034000000), v250, 0)).f32[0]);
            v222 = 2;
            v224 = &v349;
            v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
          }

          v241 = v355;
          v240 = &v352;
          v242 = v358;
          v243 = v361;
          goto LABEL_94;
        }

        v232 = vmulq_f32(v359, v183);
        v233 = vextq_s8(v232, v232, 8uLL).u64[0];
        v234 = vrecpe_f32(v186);
        v235 = 4;
        do
        {
          v234 = vmul_f32(v234, vrecps_f32(v186, v234));
          --v235;
        }

        while (v235);
        v236 = vpadd_f32(*v232.i8, v233);
        v50 = vmulq_n_f32(v183, vmul_f32(v234, vpadd_f32(v236, v236)).f32[0]);
        v50.i32[3] = 0;
        break;
      case 1:
        v50 = v359;
        v173 = vsubq_f32(v360, v359);
        v174 = vmulq_f32(v173, v173);
        v174.i64[0] = vpaddq_f32(v174, v174).u64[0];
        v175 = vpadd_f32(*v174.f32, *v174.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v175), 0), *v359.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v176 = vnegq_f32(v359);
        v176.i32[3] = 0;
        v177 = vmulq_f32(v176, v173);
        v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
        v178 = vpadd_f32(*v177.f32, *v177.f32);
        v179 = vrecpe_f32(v175);
        v180 = 4;
        do
        {
          v179 = vmul_f32(v179, vrecps_f32(v175, v179));
          --v180;
        }

        while (v180);
        v50 = vmlaq_n_f32(v359, v173, vmax_f32(vmin_f32(vmul_f32(v178, v179), _D9), 0).f32[0]);
LABEL_78:
        v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
        break;
    }

    v344 = v50;
    v262 = vmulq_f32(v50, v50);
    v262.i64[0] = vpaddq_f32(v262, v262).u64[0];
    v263 = vpadd_f32(*v262.f32, *v262.f32);
    v264 = vrsqrte_f32(v263);
    v265 = 4;
    do
    {
      v264 = vmul_f32(v264, vrsqrts_f32(vmul_f32(v264, v264), v263));
      --v265;
    }

    while (v265);
    v67 = vbsl_s8(vdup_lane_s32(vceqz_f32(v263), 0), v263, vmul_f32(v263, v264));
    v266 = vrecpe_f32(v67);
    v267 = 4;
    do
    {
      v266 = vmul_f32(v266, vrecps_f32(v67, v266));
      --v267;
    }

    while (v267);
    v268 = vmulq_n_f32(v50, v266.f32[0]);
    v268.i32[3] = 0;
    v339 = v268;
    *v268.f32 = vcgt_f32(v171, v67);
    v158 = vdupq_lane_s32(*v268.f32, 0);
    v68 = vdupq_lane_s32(vand_s8(vcgt_f32(v67, v27), *v268.f32), 0);
    v157 = v171;
    v69 = v337;
  }

  v269 = vmovn_s32(vceqzq_s32(v158));
  v270 = v343;
  if (vuzp1_s8(v269, v269).u32[0] != -1)
  {
    if (v15)
    {
      *a8 = v343;
      if (v270)
      {
        v271 = &v347;
        v272 = &v350;
        do
        {
          v273 = *v272++;
          *v15++ = v273;
          v274 = *v271++;
          *v14++ = v274;
          --v270;
        }

        while (v270);
      }
    }

    return 5;
  }

  v290 = v336;
  if (v15)
  {
    v291 = v343 - 1;
    *a8 = v343 - 1;
    if (v270 != 1)
    {
      v292 = &v347;
      v293 = &v350;
      do
      {
        v294 = *v293++;
        *v15++ = v294;
        v295 = *v292++;
        *v14++ = v295;
        --v291;
      }

      while (v291);
      goto LABEL_125;
    }

LABEL_128:
    v296 = v356;
    v297 = v353;
  }

  else
  {
LABEL_125:
    v344 = v69;
    if (v270 == 3)
    {
      v345 = 0;
      v346 = 0;
      v342 = v69;
      physx::Gu::barycentricCoordinates(&v344, &v359, &v360, v361, &v346, &v345);
      v290 = v336;
      v321 = vmulq_n_f32(vsubq_f32(v357, v356), v346.f32[0]);
      v321.i32[3] = 0;
      v322 = vmulq_n_f32(vsubq_f32(v358[0], v356), v345.f32[0]);
      v322.i32[3] = 0;
      v323 = vaddq_f32(v321, v322);
      v324 = vmulq_n_f32(vsubq_f32(v354, v353), v346.f32[0]);
      v324.i32[3] = 0;
      v296 = vaddq_f32(v356, v323);
      v325 = vmulq_n_f32(vsubq_f32(v355[0], v353), v345.f32[0]);
      v69 = v342;
      v325.i32[3] = 0;
      v297 = vaddq_f32(v353, vaddq_f32(v324, v325));
    }

    else if (v270 == 2)
    {
      v313 = vsubq_f32(v359, v69);
      v314 = vsubq_f32(vsubq_f32(v360, v69), v313);
      v315 = vmulq_f32(v314, v314);
      v315.i64[0] = vpaddq_f32(v315, v315).u64[0];
      v316 = vpadd_f32(*v315.f32, *v315.f32);
      v317 = vrecpe_f32(v316);
      v318 = 4;
      do
      {
        v317 = vmul_f32(v317, vrecps_f32(v316, v317));
        --v318;
      }

      while (v318);
      v319 = vnegq_f32(v313);
      v319.i32[3] = 0;
      v320 = vmulq_f32(v319, v314);
      v320.i64[0] = vpaddq_f32(v320, v320).u64[0];
      v319.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v316), v317, 0), vpadd_f32(*v320.f32, *v320.f32)).u32[0];
      v296 = vmlaq_n_f32(v356, vsubq_f32(v357, v356), v319.f32[0]);
      v296.i64[1] = vextq_s8(v296, v296, 8uLL).u32[0];
      v297 = vmlaq_n_f32(v353, vsubq_f32(v354, v353), v319.f32[0]);
      v297.i64[1] = vextq_s8(v297, v297, 8uLL).u32[0];
    }

    else
    {
      v296 = 0uLL;
      v297 = 0uLL;
      if (v270 == 1)
      {
        goto LABEL_128;
      }
    }
  }

  v326 = vrecpe_f32(v157);
  v327 = 4;
  do
  {
    v326 = vmul_f32(v326, vrecps_f32(v157, v326));
    --v327;
  }

  while (v327);
  v328 = vmulq_n_f32(v69, v326.f32[0]);
  v328.i32[3] = 0;
  *(a14 + 32) = v328;
  *(a14 + 48) = v339;
  if (a5)
  {
    *a14 = v296;
    *(a14 + 16) = v297;
    *(a14 + 64) = v157;
  }

  else
  {
    v329 = vmlsq_lane_f32(v296, v328, v332, 0);
    v329.i64[1] = vextq_s8(v329, v329, 8uLL).u32[0];
    v330 = vmlaq_n_f32(v297, v328, v333);
    v330.i64[1] = vextq_s8(v330, v330, 8uLL).u32[0];
    *a14 = v329;
    *(a14 + 16) = v330;
    *(a14 + 64) = vsub_f32(v157, v290);
    if (vcge_f32(v290, v157).u32[0])
    {
      return 2;
    }
  }

  return 4;
}

BOOL physx::Gu::gjkRaycast<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(float32x4_t *a1, uint64_t a2, float32x4_t *a3, int32x2_t a4, uint64_t a5, float32x4_t *a6, float32x4_t *a7, float32x2_t *a8, float32x4_t *a9, int8x16_t *a10)
{
  v245 = *MEMORY[0x1E69E9840];
  v222 = vmlaq_f32(*a6, 0, *a7);
  v14 = vextq_s8(v222, v222, 8uLL).u32[0];
  v233 = 1;
  v15 = vmulq_f32(*a3, *a3);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v15.f32, *v15.f32), 0x3400000034000000), 0)), *a3, xmmword_1E3047670);
  v17 = vmulq_f32(v16, v16);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  v18 = vpadd_f32(*v17.f32, *v17.f32);
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
  v24 = vdup_lane_s32(a4, 0);
  v25.i64[0] = v222.i64[0];
  v25.i64[1] = v14;
  v223 = v25;
  v26 = vmulq_n_f32(v16, v22.f32[0]);
  v26.i32[3] = 0;
  v232 = v26;
  v27 = vnegq_f32(v26);
  v28 = vmulq_n_f32(a1[2], v27.f32[0]);
  v28.i32[3] = 0;
  v29 = vmulq_lane_f32(a1[3], *v27.f32, 1);
  v29.i32[3] = 0;
  v30 = a1[1].i64[0];
  v31 = vmulq_laneq_f32(a1[4], v27, 2);
  v31.i32[3] = 0;
  v32 = vcgtzq_f32(vaddq_f32(vaddq_f32(v28, v29), v31));
  v33 = *(a1->i64[1] + 48);
  v34 = vnegq_f32(v33);
  v34.i32[3] = 0;
  v35 = vbslq_s8(v32, v33, v34);
  v36 = vmulq_n_f32(*v30, v35.f32[0]);
  v36.i32[3] = 0;
  v37 = vmulq_lane_f32(v30[1], *v35.f32, 1);
  v37.i32[3] = 0;
  v38 = vmulq_laneq_f32(v30[2], v35, 2);
  v38.i32[3] = 0;
  v228 = vaddq_f32(v30[3], vaddq_f32(v38, vaddq_f32(v36, v37)));
  *v39.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v232);
  v40 = v39;
  v41 = vsubq_f32(v228, v39);
  v242 = v41;
  v243 = 0u;
  memset(v244, 0, sizeof(v244));
  v239 = v228;
  v240 = 0u;
  memset(v241, 0, sizeof(v241));
  v236 = v40;
  v42 = vnegq_f32(v41);
  v42.i32[3] = 0;
  v237 = 0u;
  memset(v238, 0, sizeof(v238));
  v43 = (a1->i64[1] + 24);
  *v40.f32 = vld1_dup_f32(v43);
  v44 = (*(a2 + 8) + 24);
  v45 = vld1_dup_f32(v44);
  *v40.f32 = vmul_f32(vmin_f32(*v40.f32, v45), vdup_n_s32(0x3DCCCCCDu));
  v46 = vadd_f32(v24, *v40.f32);
  v47 = vmul_f32(*v40.f32, *v40.f32);
  v48 = vmul_f32(v46, v46);
  v49 = vmulq_f32(v42, v42);
  v50 = vpaddq_f32(v49, v49);
  v51 = vpadd_f32(*v50.f32, *v50.f32);
  v216 = v47;
  *v50.f32 = vcgt_f32(v51, v47);
  v52 = vdupq_lane_s32(*v50.f32, 0);
  v50.i32[0] = -1;
  v215 = v50;
  v53 = vneg_f32(0x80000000800000);
  v54 = v41;
  v55.i64[0] = -1;
  v55.i64[1] = -1;
  v219 = v42;
  v56 = v42;
  v57 = 0;
  while (1)
  {
    v58 = v41;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    *v59.i8 = vmovn_s32(vceqq_s32(v52, v59));
    v60 = vuzp1_s8(*v59.i8, *v59.i8).u32[0];
    if (v60 != -1)
    {
      break;
    }

    v61 = vmulq_f32(v56, v56);
    v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
    v62 = vpadd_f32(*v61.f32, *v61.f32);
    v63 = vrsqrte_f32(v62);
    v64 = 4;
    do
    {
      v63 = vmul_f32(v63, vrsqrts_f32(vmul_f32(v63, v63), v62));
      --v64;
    }

    while (v64);
    v224 = v58;
    v65 = vbsl_s8(vdup_lane_s32(vceqz_f32(v62), 0), v62, vmul_f32(v62, v63));
    v66 = vrecpe_f32(v65);
    v67 = 4;
    do
    {
      v66 = vmul_f32(v66, vrecps_f32(v65, v66));
      --v67;
    }

    while (v67);
    v221 = v56;
    v68 = vmulq_n_f32(v56, v66.f32[0]);
    v69 = vmulq_n_f32(a1[2], v68.f32[0]);
    v70 = vmulq_lane_f32(a1[3], *v68.f32, 1);
    v71 = vmulq_laneq_f32(a1[4], v68, 2);
    v68.i32[3] = 0;
    v225 = v68;
    v72 = vnegq_f32(v68);
    v72.i32[3] = 0;
    v231 = v72;
    v69.i32[3] = 0;
    v73 = a1[1].i64[0];
    v70.i32[3] = 0;
    v71.i32[3] = 0;
    v74 = vcgtzq_f32(vaddq_f32(vaddq_f32(v69, v70), v71));
    v75 = *(a1->i64[1] + 48);
    v76 = vnegq_f32(v75);
    v76.i32[3] = 0;
    v77 = vbslq_s8(v74, v75, v76);
    v78 = vmulq_n_f32(*v73, v77.f32[0]);
    v78.i32[3] = 0;
    v79 = vmulq_lane_f32(v73[1], *v77.f32, 1);
    v79.i32[3] = 0;
    v80 = vmulq_laneq_f32(v73[2], v77, 2);
    v80.i32[3] = 0;
    v229 = vaddq_f32(v73[3], vaddq_f32(v80, vaddq_f32(v78, v79)));
    *v81.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v231);
    v82 = v229;
    v83 = vaddq_f32(v223, v81);
    v41 = vsubq_f32(v229, v83);
    v84 = vnegq_f32(v41);
    v84.i32[3] = 0;
    v85 = vmulq_f32(v225, v84);
    v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
    v86 = vsub_f32(vpadd_f32(*v85.f32, *v85.f32), v46);
    if (v86.f32[0] > 0.0)
    {
      v87 = vmulq_f32(v225, *a7);
      v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
      v88 = vpadd_f32(*v87.f32, *v87.f32);
      if (v88.f32[0] >= 0.0)
      {
        return v60 != -1;
      }

      v89 = vrecpe_f32(v88);
      v90 = 4;
      do
      {
        v89 = vmul_f32(v89, vrecps_f32(v88, v89));
        --v90;
      }

      while (v90);
      v91 = vsub_f32(v57, vmul_f32(v86, v89));
      if (vcgt_f32(v91, v57).u8[0])
      {
        if (v91.f32[0] > 1.0)
        {
          return v60 != -1;
        }

        v92 = vmlaq_n_f32(*a6, *a7, v91.f32[0]);
        v92.i64[1] = vextq_s8(v92, v92, 8uLL).u32[0];
        v226 = v92;
        v93 = vsubq_f32(v92, v223);
        v220 = v91;
        v236 = vaddq_f32(v236, v93);
        v237 = vaddq_f32(v237, v93);
        v238[0] = vaddq_f32(v238[0], v93);
        v242 = vsubq_f32(v239, v236);
        v243 = vsubq_f32(v240, v237);
        v244[0] = vsubq_f32(v241[0], v238[0]);
        *v94.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v231);
        v82 = v229;
        v83 = vaddq_f32(v226, v94);
        v41 = vsubq_f32(v229, v83);
        v51 = v53;
        v219 = v221;
        v223 = v226;
        v57 = v220;
      }

      else
      {
        v57 = v91;
      }
    }

    v95 = v233;
    *(&v239 + v233) = v82;
    *(&v236 + v95) = v83;
    v233 = v95 + 1;
    *(&v242 + v95) = v41;
    if (v95 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v242, &v239, &v236, &v233);
LABEL_36:
      v54 = v224;
      goto LABEL_60;
    }

    if (v95 == 2)
    {
      v41 = v242;
      v110 = vsubq_f32(v243, v242);
      v111 = vsubq_f32(v244[0], v242);
      v113 = vmls_f32(vmul_f32(*v110.f32, *&vextq_s8(v111, v111, 4uLL)), *&vextq_s8(v110, v110, 4uLL), *v111.f32);
      *v112.f32 = vext_s8(v113, vmls_f32(vmul_f32(*&vextq_s8(v110, v110, 8uLL), *v111.f32), *v110.f32, *&vextq_s8(v111, v111, 8uLL)), 4uLL);
      v113.i32[1] = 0;
      v233 = 3;
      v114 = vpadd_f32(vmul_f32(*v112.f32, *v112.f32), vmul_f32(v113.u32[0], v113.u32[0]));
      v115 = vpadd_f32(v114, v114);
      if (v115.f32[0] <= 0.00000011921)
      {
        v233 = 2;
        v152 = vmulq_f32(v110, v110);
        v152.i64[0] = vpaddq_f32(v152, v152).u64[0];
        v153 = vpadd_f32(*v152.f32, *v152.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v153), 0), *v242.f32).u32[0] == -1)
        {
          v233 = 1;
          goto LABEL_36;
        }

        v154 = vnegq_f32(v242);
        v154.i32[3] = 0;
        v155 = vmulq_f32(v154, v110);
        v155.i64[0] = vpaddq_f32(v155, v155).u64[0];
        v156 = vpadd_f32(*v155.f32, *v155.f32);
        v157 = vrecpe_f32(v153);
        v158 = 4;
        v54 = v224;
        do
        {
          v157 = vmul_f32(v157, vrecps_f32(v153, v157));
          --v158;
        }

        while (v158);
        v159 = vmul_f32(v156, v157);
        __asm { FMOV            V2.2S, #1.0 }

        v41 = vmlaq_n_f32(v242, v110, vmax_f32(vmin_f32(v159, _D2), 0).f32[0]);
        goto LABEL_41;
      }

      *&v112.u32[2] = v113;
      v116 = vextq_s8(v243, v243, 8uLL).u64[0];
      v117 = vextq_s8(v244[0], v244[0], 8uLL).u64[0];
      v118 = vextq_s8(v244[0], v244[0], 4uLL).u64[0];
      v119 = vextq_s8(v243, v243, 4uLL).u64[0];
      v120 = vmls_f32(vmul_f32(*v243.f32, v118), v119, *v244[0].f32);
      *v121.f32 = vext_s8(v120, vmls_f32(vmul_f32(v116, *v244[0].f32), *v243.f32, v117), 4uLL);
      v121.i64[1] = v120.u32[0];
      v122 = vextq_s8(v242, v242, 8uLL).u64[0];
      v123 = vextq_s8(v242, v242, 4uLL).u64[0];
      v124 = vmls_f32(vmul_f32(v123, *v244[0].f32), v118, *v242.f32);
      *v125.f32 = vext_s8(v124, vmls_f32(vmul_f32(*v242.f32, v117), *v244[0].f32, v122), 4uLL);
      v125.i64[1] = v124.u32[0];
      v126 = vmls_f32(vmul_f32(*v242.f32, v119), v123, *v243.f32);
      *v127.f32 = vext_s8(v126, vmls_f32(vmul_f32(v122, *v243.f32), *v242.f32, v116), 4uLL);
      v127.i64[1] = v126.u32[0];
      v128 = vmulq_f32(v121, v112);
      v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
      v129 = vpadd_f32(*v128.f32, *v128.f32);
      v130 = vmulq_f32(v125, v112);
      v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
      v131 = vpadd_f32(*v130.f32, *v130.f32);
      v132 = vmulq_f32(v127, v112);
      v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
      v133 = vpadd_f32(*v132.f32, *v132.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v131), vcgez_f32(v129)), vcgez_f32(v133)), 0), *v242.f32).u32[0] == -1)
      {
        v161 = vmulq_f32(v242, v112);
        v162 = vextq_s8(v161, v161, 8uLL).u64[0];
        v163 = vrecpe_f32(v115);
        v164 = 4;
        do
        {
          v163 = vmul_f32(v163, vrecps_f32(v115, v163));
          --v164;
        }

        while (v164);
        v165 = vpadd_f32(*v161.i8, v162);
        v41 = vmulq_n_f32(v112, vmul_f32(v163, vpadd_f32(v165, v165)).f32[0]);
        v41.i32[3] = 0;
        goto LABEL_36;
      }

      v134 = vnegq_f32(v242);
      v134.i32[3] = 0;
      v135 = vnegq_f32(v243);
      v135.i32[3] = 0;
      v136 = vmulq_f32(v134, v110);
      v136.i64[0] = vpaddq_f32(v136, v136).u64[0];
      v137 = vpadd_f32(*v136.f32, *v136.f32);
      v138 = vmulq_f32(v110, v135);
      v138.i64[0] = vpaddq_f32(v138, v138).u64[0];
      v139 = vpadd_f32(*v138.f32, *v138.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v133), vand_s8(vclez_f32(v139), vcgez_f32(v137))), 0), *v242.f32).u32[0] == -1)
      {
        v166 = vsub_f32(v137, v139);
        v167 = vrecpe_f32(v166);
        v168 = 4;
        v54 = v224;
        do
        {
          v167 = vmul_f32(v167, vrecps_f32(v166, v167));
          --v168;
        }

        while (v168);
        v151 = 0;
        v41 = vmlaq_n_f32(v242, v110, vmul_f32(v137, vbsl_s8(vcgt_f32(vabs_f32(v166), 0x3400000034000000), v167, 0)).f32[0]);
        v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
        v150 = 2;
        v169 = &v237;
        v170 = &v240;
        v171 = &v243;
      }

      else
      {
        v140 = vnegq_f32(v244[0]);
        v140.i32[3] = 0;
        v141 = vmulq_f32(v135, v111);
        v141.i64[0] = vpaddq_f32(v141, v141).u64[0];
        v142 = vpadd_f32(*v141.f32, *v141.f32);
        v143 = vmulq_f32(v110, v140);
        v143.i64[0] = vpaddq_f32(v143, v143).u64[0];
        v144 = vpadd_f32(*v143.f32, *v143.f32);
        v145 = vmulq_f32(v111, v140);
        v145.i64[0] = vpaddq_f32(v145, v145).u64[0];
        v146 = vpadd_f32(*v145.f32, *v145.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v142, v139), vcge_f32(v144, v146)), vclez_f32(v129)), 0), *v242.f32).u32[0] == -1)
        {
          v172 = vsub_f32(v142, v139);
          v173 = vadd_f32(v172, vsub_f32(v144, v146));
          v174 = vrecpe_f32(v173);
          v175 = 4;
          do
          {
            v174 = vmul_f32(v174, vrecps_f32(v173, v174));
            --v175;
          }

          while (v175);
          v176 = vmlaq_n_f32(v243, vsubq_f32(v244[0], v243), vmul_f32(v172, vbsl_s8(vcgt_f32(vabs_f32(v173), 0x3400000034000000), v174, 0)).f32[0]);
          v150 = 2;
          v170 = v241;
          v169 = v238;
          v176.i64[1] = vextq_s8(v176, v176, 8uLL).u32[0];
          v171 = v244;
          v151 = 1;
          v41 = v176;
        }

        else
        {
          v147 = vmulq_f32(v134, v111);
          v147.i64[0] = vpaddq_f32(v147, v147).u64[0];
          v148 = vpadd_f32(*v147.f32, *v147.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v131), vand_s8(vclez_f32(v146), vcgez_f32(v148))), 0), *v242.f32).u32[0] == -1)
          {
            v177 = vsub_f32(v148, v146);
            v178 = vrecpe_f32(v177);
            v179 = 4;
            do
            {
              v178 = vmul_f32(v178, vrecps_f32(v177, v178));
              --v179;
            }

            while (v179);
            v151 = 0;
            v41 = vmlaq_n_f32(v242, v111, vmul_f32(v148, vbsl_s8(vcgt_f32(vabs_f32(v177), 0x3400000034000000), v178, 0)).f32[0]);
            v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
            v150 = 2;
            v170 = v241;
            v169 = v238;
            v171 = v244;
          }

          else
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v148), vclez_f32(v137)), 0), *v242.f32).u32[0] == -1)
            {
              v151 = 0;
              v150 = 1;
            }

            else
            {
              *v41.f32 = vdup_lane_s16(vand_s8(vcge_f32(v139, v142), vcgez_f32(v139)), 0);
              *v41.f32 = vuzp1_s8(*v41.f32, *v41.f32);
              v149 = v41.i32[0];
              v150 = 1;
              v41 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v41, v215), 0), v243, v244[0]);
              if (v149 == -1)
              {
                v151 = 1;
              }

              else
              {
                v151 = 2;
              }
            }

            v169 = &v237;
            v170 = &v240;
            v171 = &v243;
          }
        }

        v54 = v224;
      }

      v180 = *(&v239 + v151);
      v181 = *v171;
      v182 = *v170;
      v183 = *(&v236 + v151);
      v184 = *v169;
      v242 = *(&v242 + v151);
      v243 = v181;
      v239 = v180;
      v240 = v182;
      v236 = v183;
      v237 = v184;
      v233 = v150;
    }

    else
    {
      v54 = v224;
      if (v95 != 1)
      {
        goto LABEL_60;
      }

      v41 = v242;
      v96 = vsubq_f32(v243, v242);
      v97 = vmulq_f32(v96, v96);
      v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
      v98 = vpadd_f32(*v97.f32, *v97.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v98), 0), *v242.f32).u32[0] != -1)
      {
        v99 = vnegq_f32(v242);
        v99.i32[3] = 0;
        v100 = vmulq_f32(v99, v96);
        v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
        v101 = vpadd_f32(*v100.f32, *v100.f32);
        v102 = vrecpe_f32(v98);
        v103 = 4;
        do
        {
          v102 = vmul_f32(v102, vrecps_f32(v98, v102));
          --v103;
        }

        while (v103);
        v104 = vmul_f32(v101, v102);
        __asm { FMOV            V3.2S, #1.0 }

        v41 = vmlaq_n_f32(v242, v96, vmax_f32(vmin_f32(v104, _D3), 0).f32[0]);
LABEL_41:
        v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
        goto LABEL_60;
      }

      v233 = 1;
    }

LABEL_60:
    v56 = vnegq_f32(v41);
    v56.i32[3] = 0;
    v185 = vmulq_f32(v41, v41);
    v185.i64[0] = vpaddq_f32(v185, v185).u64[0];
    v186 = vpadd_f32(*v185.f32, *v185.f32);
    v187 = vcgt_f32(v51, v186);
    v55 = vdupq_lane_s32(vand_s8(v187, 0x100000001), 0);
    v52 = vdupq_lane_s32(vand_s8(vcgt_f32(v186, v48), v187), 0);
    v51 = v186;
  }

  v188 = v54;
  v189 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v51, v216), 0), v55), 0x1FuLL)), v56, v219);
  v190 = vmulq_f32(v189, v189);
  v190.i64[0] = vpaddq_f32(v190, v190).u64[0];
  v191 = vpadd_f32(*v190.f32, *v190.f32);
  v192 = vrsqrte_f32(v191);
  v193 = 4;
  do
  {
    v192 = vmul_f32(v192, vrsqrts_f32(vmul_f32(v192, v192), v191));
    --v193;
  }

  while (v193);
  v194 = vbsl_s8(vdup_lane_s32(vceqz_f32(v191), 0), v191, vmul_f32(v191, v192));
  v195 = vrecpe_f32(v194);
  v196 = 4;
  do
  {
    v195 = vmul_f32(v195, vrecps_f32(v194, v195));
    --v196;
  }

  while (v196);
  v197 = vdupq_n_s32(-*(a1->i64[1] + 32));
  v198 = vmulq_n_f32(v189, v195.f32[0]);
  v198.i32[3] = 0;
  v199 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v194), 0), v198));
  v199.i32[3] = 0;
  *a9 = v199;
  *a8 = v57;
  v200 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v55, 0x1FuLL)), v58, v188);
  v231 = v200;
  if (v233 == 3)
  {
    v234 = 0;
    v235 = 0;
    v227 = v199;
    v230 = v197;
    physx::Gu::barycentricCoordinates(&v231, &v242, &v243, v244, &v235, &v234);
    v199 = v227;
    v197 = v230;
    v55.i32[1] = v239.i32[1];
    v211 = vmulq_n_f32(vsubq_f32(v240, v239), v235.f32[0]);
    v211.i32[3] = 0;
    v212 = vmulq_n_f32(vsubq_f32(v241[0], v239), v234.f32[0]);
    v212.i32[3] = 0;
    v201 = vaddq_f32(v239, vaddq_f32(v211, v212));
    v202 = a10;
  }

  else if (v233 == 2)
  {
    v203 = vsubq_f32(v242, v200);
    v204 = vsubq_f32(vsubq_f32(v243, v200), v203);
    v205 = vmulq_f32(v204, v204);
    v205.i64[0] = vpaddq_f32(v205, v205).u64[0];
    v206 = vpadd_f32(*v205.f32, *v205.f32);
    v207 = vrecpe_f32(v206);
    v208 = 4;
    v202 = a10;
    do
    {
      v207 = vmul_f32(v207, vrecps_f32(v206, v207));
      --v208;
    }

    while (v208);
    v209 = vnegq_f32(v203);
    v209.i32[3] = 0;
    v210 = vmulq_f32(v209, v204);
    v210.i64[0] = vpaddq_f32(v210, v210).u64[0];
    v201 = vmlaq_n_f32(v239, vsubq_f32(v240, v239), vmul_f32(vbsl_s8(vcgtz_f32(v206), v207, 0), vpadd_f32(*v210.f32, *v210.f32)).f32[0]);
    v55.i32[1] = 0;
    v201.i64[1] = vextq_s8(v201, v201, 8uLL).u32[0];
  }

  else
  {
    v201 = 0uLL;
    v202 = a10;
    if (v233 == 1)
    {
      v201 = v239;
    }
  }

  v55.i32[0] = *(a1->i64[1] + 16);
  v213 = vmlsq_lane_f32(v201, v199, *v55.i8, 0);
  v213.i64[1] = vextq_s8(v213, v213, 8uLL).u32[0];
  *v202 = vbslq_s8(v197, v213, v201);
  return v60 != -1;
}