void _ZNK9pocketfft6detail5cfftpIfE5pass8ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v262 = a4;
  v6 = a3;
  v251 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = a4 + 8;
      v8 = vdupq_n_s32(0x3F3504F3u);
      do
      {
        v9 = v7[-6];
        v10 = v7[-5];
        v11 = v7[2];
        v12 = v7[3];
        v13 = vaddq_f32(v9, v11);
        v14 = vaddq_f32(v10, v12);
        v15 = vsubq_f32(v9, v11);
        v16 = vsubq_f32(v10, v12);
        v17 = v7[-2];
        v18 = v7[-1];
        v19 = v7[6];
        v20 = v7[7];
        v21 = vaddq_f32(v17, v19);
        v22 = vaddq_f32(v18, v20);
        v23 = vsubq_f32(v17, v19);
        v24 = vsubq_f32(v18, v20);
        v25 = vaddq_f32(v13, v21);
        v26 = vaddq_f32(v14, v22);
        v27 = vsubq_f32(v13, v21);
        v28 = vsubq_f32(v14, v22);
        v29 = vaddq_f32(v15, v24);
        v30 = vsubq_f32(v16, v23);
        v31 = vsubq_f32(v15, v24);
        v32 = vaddq_f32(v16, v23);
        v33 = vmulq_f32(vaddq_f32(v30, v29), v8);
        v34 = vmulq_f32(vsubq_f32(v30, v29), v8);
        v35 = vmulq_f32(vsubq_f32(v32, v31), v8);
        v36 = vmulq_f32(vsubq_f32(vnegq_f32(v31), v32), v8);
        v37 = v7[-8];
        v38 = v7[-7];
        v39 = v7[1];
        v40 = vaddq_f32(v37, *v7);
        v41 = vaddq_f32(v38, v39);
        v42 = vsubq_f32(v37, *v7);
        v43 = vsubq_f32(v38, v39);
        v44 = v7[-4];
        v45 = v7[-3];
        v46 = v7[4];
        v47 = v7[5];
        v48 = vaddq_f32(v44, v46);
        v49 = vaddq_f32(v45, v47);
        v50 = vsubq_f32(v44, v46);
        v51 = vsubq_f32(v45, v47);
        v52 = &a5[8 * a3];
        v53 = vaddq_f32(v40, v48);
        v54 = vaddq_f32(v41, v49);
        *a5 = vaddq_f32(v25, v53);
        a5[1] = vaddq_f32(v26, v54);
        *v52 = vsubq_f32(v53, v25);
        v52[1] = vsubq_f32(v54, v26);
        v55 = &a5[4 * a3];
        v56 = (a5 + ((192 * a3) | 0x10));
        v57 = vsubq_f32(v40, v48);
        v58 = vsubq_f32(v41, v49);
        *v55 = vaddq_f32(v28, v57);
        v55[1] = vsubq_f32(v58, v27);
        v56[-1] = vsubq_f32(v57, v28);
        *v56 = vaddq_f32(v27, v58);
        v59 = &a5[2 * a3];
        v60 = (a5 + ((160 * a3) | 0x10));
        v61 = vaddq_f32(v42, v51);
        v62 = vsubq_f32(v43, v50);
        *v59 = vaddq_f32(v33, v61);
        v59[1] = vaddq_f32(v34, v62);
        v60[-1] = vsubq_f32(v61, v33);
        *v60 = vsubq_f32(v62, v34);
        v63 = (a5 + ((96 * a3) | 0x10));
        v64 = (a5 + ((224 * a3) | 0x10));
        v65 = vsubq_f32(v42, v51);
        v66 = vaddq_f32(v43, v50);
        v63[-1] = vaddq_f32(v35, v65);
        *v63 = vaddq_f32(v36, v66);
        v64[-1] = vsubq_f32(v65, v35);
        *v64 = vsubq_f32(v66, v36);
        v7 += 16;
        a5 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else if (a3)
  {
    v67 = 0;
    v256 = 2 * a3;
    v257 = 4 * a3;
    v258 = 3 * a3;
    v255 = 6 * a3;
    v254 = 7 * a3;
    v68 = &a5[14 * a3 * a2];
    v69 = &a4[2 * a2 + 3];
    v70 = &a4[10 * a2 + 3];
    v71 = &a5[6 * a3 * a2];
    v73 = &a4[6 * a2 + 3];
    v74 = 32 * a2;
    v75 = &a4[14 * a2 + 3];
    v252 = 5 * a3;
    v253 = a2 << 8;
    v76 = &a5[10 * a3 * a2];
    v77 = &a4[8 * a2];
    v78 = &a4[12 * a2];
    v250 = (a6 + 4);
    v79 = &a4[4 * a2];
    v80 = &a5[12 * a3 * a2];
    v81 = &a5[2 * a3 * a2];
    v82 = 24 * a2 - 20;
    v83 = 8 * a2 - 8;
    v84 = &a5[4 * a3 * a2];
    v85 = vdupq_n_s32(0x3F3504F3u);
    v86 = a5;
    v87 = &a5[8 * a3 * a2];
    v260 = a5;
    do
    {
      v88 = &v262[2 * ((8 * v67) | 1) * a2];
      v89 = *v88;
      v90 = v88[1];
      v91 = &v262[2 * ((8 * v67) | 5) * a2];
      v92 = v91[1];
      v93 = vaddq_f32(v89, *v91);
      v94 = vaddq_f32(v90, v92);
      v95 = vsubq_f32(v89, *v91);
      v96 = vsubq_f32(v90, v92);
      v97 = &v262[2 * ((8 * v67) | 3) * a2];
      v98 = *v97;
      v99 = v97[1];
      v100 = &v262[2 * ((8 * v67) | 7) * a2];
      v101 = v100[1];
      v102 = vaddq_f32(v98, *v100);
      v103 = vaddq_f32(v99, v101);
      v104 = vsubq_f32(v98, *v100);
      v105 = vsubq_f32(v99, v101);
      v106 = vaddq_f32(v93, v102);
      v107 = vaddq_f32(v94, v103);
      v108 = vsubq_f32(v93, v102);
      v109 = vsubq_f32(v94, v103);
      v110 = vaddq_f32(v95, v105);
      v111 = vsubq_f32(v96, v104);
      v112 = vsubq_f32(v95, v105);
      v113 = vaddq_f32(v96, v104);
      v114 = vmulq_f32(vaddq_f32(v111, v110), v85);
      v115 = vmulq_f32(vsubq_f32(v111, v110), v85);
      v116 = vmulq_f32(vsubq_f32(v113, v112), v85);
      v117 = vmulq_f32(vsubq_f32(vnegq_f32(v112), v113), v85);
      v118 = &v262[2 * 8 * v67 * a2];
      v119 = *v118;
      v120 = v118[1];
      v121 = &v262[2 * ((8 * v67) | 4) * a2];
      v122 = v121[1];
      v123 = vaddq_f32(v119, *v121);
      v124 = vaddq_f32(v120, v122);
      v125 = vsubq_f32(v119, *v121);
      v126 = vsubq_f32(v120, v122);
      v127 = &v262[2 * ((8 * v67) | 2) * a2];
      v128 = *v127;
      v129 = v127[1];
      v130 = &v262[2 * ((8 * v67) | 6) * a2];
      v131 = v130[1];
      v132 = vaddq_f32(v128, *v130);
      v133 = vaddq_f32(v129, v131);
      v134 = vsubq_f32(v128, *v130);
      v135 = vsubq_f32(v129, v131);
      v136 = &a5[2 * v67 * a2];
      v137 = &a5[2 * (v67 + v257) * a2];
      v138 = vaddq_f32(v123, v132);
      v139 = vaddq_f32(v124, v133);
      *v136 = vaddq_f32(v106, v138);
      v136[1] = vaddq_f32(v107, v139);
      *v137 = vsubq_f32(v138, v106);
      v137[1] = vsubq_f32(v139, v107);
      v140 = &a5[2 * (v67 + v256) * a2];
      v141 = &a5[2 * (v67 + v255) * a2];
      v142 = vsubq_f32(v123, v132);
      v143 = vsubq_f32(v124, v133);
      *v140 = vaddq_f32(v109, v142);
      v140[1] = vsubq_f32(v143, v108);
      *v141 = vsubq_f32(v142, v109);
      v141[1] = vaddq_f32(v108, v143);
      v144 = &a5[2 * (v67 + v6) * a2];
      v145 = &a5[2 * (v67 + v252) * a2];
      v146 = vaddq_f32(v125, v135);
      v147 = vsubq_f32(v126, v134);
      *v144 = vaddq_f32(v114, v146);
      v144[1] = vaddq_f32(v115, v147);
      *v145 = vsubq_f32(v146, v114);
      v145[1] = vsubq_f32(v147, v115);
      v148 = &a5[2 * (v67 + v258) * a2];
      v149 = &a5[2 * (v67 + v254) * a2];
      v150 = vsubq_f32(v125, v135);
      v151 = vaddq_f32(v126, v134);
      *v148 = vaddq_f32(v116, v150);
      v148[1] = vaddq_f32(v117, v151);
      *v149 = vsubq_f32(v150, v116);
      v149[1] = vsubq_f32(v151, v117);
      if (a2)
      {
        v152 = 0;
        v153 = v250;
        v154 = v251;
        do
        {
          v155 = *(v69 + v152 * 16 - 16);
          v156 = *(v69 + v152 * 16);
          v157 = *(v70 + v152 * 16 - 16);
          v158 = *(v70 + v152 * 16);
          v159 = vaddq_f32(v155, v157);
          v160 = vaddq_f32(v156, v158);
          v161 = vsubq_f32(v155, v157);
          v162 = *(v73 + v152 * 16 - 16);
          v163 = *(v73 + v152 * 16);
          v164 = vsubq_f32(v156, v158);
          v166 = *(v75 + v152 * 16 - 16);
          v165 = *(v75 + v152 * 16);
          v167 = vaddq_f32(v162, v166);
          v168 = vaddq_f32(v163, v165);
          v169 = vsubq_f32(v162, v166);
          v170 = vsubq_f32(v163, v165);
          v171 = vaddq_f32(v159, v167);
          v172 = vaddq_f32(v160, v168);
          v173 = vsubq_f32(v159, v167);
          v174 = vsubq_f32(v160, v168);
          v175 = vaddq_f32(v161, v170);
          v176 = vsubq_f32(v164, v169);
          v177 = vsubq_f32(v161, v170);
          v178 = vaddq_f32(v164, v169);
          v179 = vaddq_f32(v176, v175);
          v180 = a4[v152 + 2];
          v181 = a4[v152 + 3];
          v182 = vsubq_f32(v176, v175);
          v183 = v77[v152 + 2];
          v184 = v77[v152 + 3];
          v185 = vaddq_f32(v180, v183);
          v186 = vaddq_f32(v181, v184);
          v187 = vsubq_f32(v178, v177);
          v188 = vsubq_f32(v180, v183);
          v189 = vsubq_f32(v181, v184);
          v190 = v79[v152 + 2];
          v191 = v79[v152 + 3];
          v192 = v78[v152 + 2];
          v193 = v78[v152 + 3];
          v194 = vaddq_f32(v190, v192);
          v195 = vaddq_f32(v191, v193);
          v196 = vsubq_f32(vnegq_f32(v177), v178);
          v197 = vsubq_f32(v190, v192);
          v198 = vsubq_f32(v191, v193);
          v199 = vaddq_f32(v185, v194);
          v200 = vaddq_f32(v186, v195);
          v201 = vsubq_f32(v185, v194);
          v202 = vmulq_f32(v179, v85);
          v203 = vsubq_f32(v186, v195);
          v204 = &v86[v152];
          v204[2] = vaddq_f32(v171, v199);
          v204[3] = vaddq_f32(v172, v200);
          v205 = vsubq_f32(v199, v171);
          v206 = vsubq_f32(v200, v172);
          v172.f32[0] = *(v153 + v82 - 8);
          v200.f32[0] = *(v153 + v82 - 4);
          v207 = vmlaq_n_f32(vmulq_n_f32(v206, v200.f32[0]), v205, v172.f32[0]);
          v208 = vaddq_f32(v174, v201);
          v209 = vsubq_f32(v203, v173);
          v210 = vmulq_n_f32(vnegq_f32(v205), v200.f32[0]);
          v211 = *(v153 + v83 - 4);
          v205.f32[0] = *(v153 + v83);
          v212 = vmlaq_n_f32(vmulq_n_f32(v209, v205.f32[0]), v208, v211);
          v213 = vmulq_n_f32(vnegq_f32(v208), v205.f32[0]);
          v214 = vmulq_f32(v182, v85);
          v215 = vmulq_f32(v187, v85);
          v216 = vmulq_f32(v196, v85);
          v217 = &v87[v152];
          v218 = &v84[v152];
          v219 = vmlaq_n_f32(v210, v206, v172.f32[0]);
          v220 = vsubq_f32(v201, v174);
          v221 = vaddq_f32(v173, v203);
          v206.f32[0] = v153[10 * v251 - 1];
          v172.f32[0] = v153[10 * v251];
          v222 = &v80[v152];
          v223 = vmlaq_n_f32(vmulq_n_f32(v221, v172.f32[0]), v220, v206.f32[0]);
          v217[2] = v207;
          v217[3] = v219;
          v224 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v220), v172.f32[0]), v221, v206.f32[0]);
          v225 = vaddq_f32(v188, v198);
          v226 = vsubq_f32(v189, v197);
          v218[2] = v212;
          v218[3] = vmlaq_n_f32(v213, v209, v211);
          v227 = vsubq_f32(v188, v198);
          v228 = vaddq_f32(v189, v197);
          v229 = vaddq_f32(v202, v225);
          v198.f32[0] = *(v153 - 1);
          v222[2] = v223;
          v222[3] = v224;
          v230 = &v81[v152];
          v231 = v153;
          v233 = vld1q_dup_f32(v231);
          v72 = 12 * v251;
          v232 = &v231[v72];
          v234 = vaddq_f32(v214, v226);
          v235 = vmlaq_n_f32(vmulq_f32(v234, v233), v229, v198.f32[0]);
          v236 = vsubq_f32(v225, v202);
          v237 = vmlaq_n_f32(vmulq_f32(v233, vnegq_f32(v229)), v234, v198.f32[0]);
          v238 = vsubq_f32(v226, v214);
          v229.f32[0] = v153[v74 / 4 - 9];
          v198.f32[0] = v153[v74 / 4 - 8];
          v230[2] = v235;
          v230[3] = v237;
          v239 = &v76[v152];
          v240 = vmulq_n_f32(v238, v198.f32[0]);
          v241 = vmulq_n_f32(vnegq_f32(v236), v198.f32[0]);
          v242 = vaddq_f32(v215, v227);
          v243 = vmlaq_n_f32(v240, v236, v229.f32[0]);
          v244 = vaddq_f32(v216, v228);
          v226.f32[0] = v153[4 * v251 - 1];
          v234.f32[0] = v153[4 * v251];
          v245 = &v71[v152];
          v239[2] = v243;
          v239[3] = vmlaq_n_f32(v241, v238, v229.f32[0]);
          v246 = vsubq_f32(v227, v215);
          v247 = vsubq_f32(v228, v216);
          v245[2] = vmlaq_n_f32(vmulq_n_f32(v244, v234.f32[0]), v242, v226.f32[0]);
          v245[3] = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v242), v234.f32[0]), v244, v226.f32[0]);
          v244.f32[0] = *(v232 - 1);
          v248 = &v68[v152];
          v249 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v246), *v232), v247, v244.f32[0]);
          v248[2] = vmlaq_n_f32(vmulq_n_f32(v247, *v232), v246, v244.f32[0]);
          v248[3] = v249;
          v152 += 2;
          v153 += 2;
          --v154;
        }

        while (v154);
      }

      ++v67;
      v68 = (v68 + v74);
      v69 += v253;
      v70 += v253;
      v71 = (v71 + v74);
      v73 += v253;
      v75 += v253;
      v76 = (v76 + v74);
      a4 = (a4 + v253);
      v77 = (v77 + v253);
      v79 = (v79 + v253);
      v78 = (v78 + v253);
      v86 = (v86 + v74);
      v81 = (v81 + v74);
      v80 = (v80 + v74);
      v84 = (v84 + v74);
      v87 = (v87 + v74);
      v6 = a3;
      a5 = v260;
    }

    while (v67 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass2ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 2;
      v7 = a5 + 1;
      v8 = &a5[2 * a3 + 1];
      do
      {
        v9 = v6[-2];
        v10 = v6[-1];
        v11 = *v6;
        v12 = v6[1];
        v6 += 4;
        v7[-1] = vaddq_f32(v9, v11);
        *v7 = vaddq_f32(v10, v12);
        v8[-1] = vsubq_f32(v9, v11);
        *v8 = vsubq_f32(v10, v12);
        v8 += 2;
        v7 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v13 = 0;
    v14 = &a5[2 * a3 * a2];
    v15 = 32 * a2;
    v16 = a2 << 6;
    v17 = &a4[2 * a2];
    v18 = (a6 + 4);
    v19 = a5;
    v20 = a4;
    do
    {
      v21 = &a4[2 * 2 * v13 * a2];
      v22 = &a4[2 * ((2 * v13) | 1) * a2];
      v23 = *v21;
      v24 = v21[1];
      v25 = *v22;
      v26 = v22[1];
      v27 = vaddq_f32(*v21, *v22);
      v28 = &a5[2 * v13 * a2];
      *v28 = v27;
      v28[1] = vaddq_f32(v24, v26);
      v29 = &a5[2 * (v13 + a3) * a2];
      *v29 = vsubq_f32(v23, v25);
      v29[1] = vsubq_f32(v24, v26);
      if (a2)
      {
        v30 = 0;
        v31 = v18;
        v32 = a2 - 1;
        do
        {
          v33 = v20[v30 + 2];
          v34 = v20[v30 + 3];
          v35 = v17[v30 + 2];
          v36 = v17[v30 + 3];
          v37 = &v19[v30];
          v37[2] = vaddq_f32(v33, v35);
          v37[3] = vaddq_f32(v34, v36);
          v38 = vsubq_f32(v33, v35);
          v39 = vsubq_f32(v34, v36);
          v35.f32[0] = *(v31 - 1);
          v40 = &v14[v30];
          v41 = vmlaq_n_f32(vmulq_n_f32(v39, *v31), v38, v35.f32[0]);
          v42 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v38), *v31), v39, v35.f32[0]);
          v40[2] = v41;
          v40[3] = v42;
          v30 += 2;
          v31 += 2;
          --v32;
        }

        while (v32);
      }

      ++v13;
      v14 = (v14 + v15);
      v20 = (v20 + v16);
      v17 = (v17 + v16);
      v19 = (v19 + v15);
    }

    while (v13 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass3ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a5 + 1;
      v7 = 2 * a3;
      v8 = &a5[4 * a3 + 1];
      v9 = a4 + 3;
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vdupq_n_s32(0x3F5DB3D7u);
      v12 = vdupq_n_s32(0xBF5DB3D7);
      do
      {
        v13 = v9[-3];
        v14 = v9[-2];
        v15 = v9[-1];
        v16 = v9[1];
        v17 = v9[2];
        v18 = vaddq_f32(v15, v16);
        v19 = vaddq_f32(*v9, v17);
        v20 = vsubq_f32(*v9, v17);
        v6[-1] = vaddq_f32(v13, v18);
        *v6 = vaddq_f32(v14, v19);
        v21 = vsubq_f32(v13, vmulq_f32(v18, v10));
        v22 = vsubq_f32(v14, vmulq_f32(v19, v10));
        v23 = vmulq_f32(v20, v11);
        v24 = vmulq_f32(vsubq_f32(v15, v16), v12);
        v25 = &v6[v7];
        v25[-1] = vaddq_f32(v21, v23);
        *v25 = vaddq_f32(v24, v22);
        v8[-1] = vsubq_f32(v21, v23);
        *v8 = vsubq_f32(v22, v24);
        v6 += 2;
        v8 += 2;
        v9 += 6;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v26 = 0;
    v27 = &a5[4 * a3 * a2];
    v28 = 32 * a2;
    v29 = 96 * a2;
    v30 = &a4[2 * a2];
    v31 = a6 + 8 * a2 - 4;
    v32 = (a6 + 4);
    v33.i64[0] = 0x3F0000003F000000;
    v33.i64[1] = 0x3F0000003F000000;
    v34 = vdupq_n_s32(0x3F5DB3D7u);
    v35 = &a4[4 * a2];
    v36 = vdupq_n_s32(0xBF5DB3D7);
    v37 = a5;
    v38 = a4;
    v39 = &a5[2 * a3 * a2];
    do
    {
      v40 = 3 * v26 * a2;
      v41 = &a4[2 * v40];
      v42 = *v41;
      v43 = v41[1];
      v44 = &a4[2 * a2 + 2 * v40];
      v45 = v44[1];
      v46 = &a4[2 * (3 * v26 + 2) * a2];
      v47 = v46[1];
      v48 = vaddq_f32(*v44, *v46);
      v49 = vaddq_f32(v45, v47);
      v50 = vsubq_f32(*v44, *v46);
      v51 = &a5[2 * v26 * a2];
      *v51 = vaddq_f32(*v41, v48);
      v51[1] = vaddq_f32(v43, v49);
      v52 = vsubq_f32(v42, vmulq_f32(v48, v33));
      v53 = vsubq_f32(v43, vmulq_f32(v49, v33));
      v54 = vmulq_f32(vsubq_f32(v45, v47), v34);
      v55 = vmulq_f32(v50, v36);
      v56 = &a5[2 * (v26 + a3) * a2];
      v57 = &a5[2 * (v26 + 2 * a3) * a2];
      *v56 = vaddq_f32(v52, v54);
      v56[1] = vaddq_f32(v55, v53);
      *v57 = vsubq_f32(v52, v54);
      v57[1] = vsubq_f32(v53, v55);
      if (a2)
      {
        v58 = 0;
        v59 = v32;
        v60 = v31;
        v61 = a2 - 1;
        do
        {
          v62 = v38[v58 + 2];
          v63 = v38[v58 + 3];
          v64 = v30[v58 + 2];
          v65 = v30[v58 + 3];
          v66 = v35[v58 + 2];
          v67 = v35[v58 + 3];
          v68 = vaddq_f32(v64, v66);
          v69 = vaddq_f32(v65, v67);
          v70 = &v37[v58];
          v70[2] = vaddq_f32(v62, v68);
          v70[3] = vaddq_f32(v63, v69);
          v71 = vsubq_f32(v62, vmulq_f32(v68, v33));
          v72 = vsubq_f32(v63, vmulq_f32(v69, v33));
          v73 = vmulq_f32(vsubq_f32(v65, v67), v34);
          v74 = vmulq_f32(vsubq_f32(v64, v66), v36);
          v75 = vaddq_f32(v71, v73);
          v76 = vaddq_f32(v74, v72);
          v68.f32[0] = *(v59 - 1);
          v77 = &v39[v58];
          v78 = vmlaq_n_f32(vmulq_n_f32(v76, *v59), v75, v68.f32[0]);
          v79 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v75), *v59), v76, v68.f32[0]);
          v77[2] = v78;
          v77[3] = v79;
          v80 = vsubq_f32(v71, v73);
          v81 = vsubq_f32(v72, v74);
          v74.f32[0] = *(v60 - 1);
          v82 = &v27[v58];
          v83 = vmlaq_n_f32(vmulq_n_f32(v81, *v60), v80, v74.f32[0]);
          v84 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v80), *v60), v81, v74.f32[0]);
          v82[2] = v83;
          v82[3] = v84;
          v58 += 2;
          v60 += 2;
          v59 += 2;
          --v61;
        }

        while (v61);
      }

      ++v26;
      v27 = (v27 + v28);
      v38 = (v38 + v29);
      v30 = (v30 + v29);
      v35 = (v35 + v29);
      v37 = (v37 + v28);
      v39 = (v39 + v28);
    }

    while (v26 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass5ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = a5 + 1;
      v8 = 2 * a3;
      v9 = &a5[6 * a3 + 1];
      v10 = vdupq_n_s32(0x3E9E377Au);
      v11 = vdupq_n_s32(0xBF4F1BBD);
      v12 = a4 + 5;
      v13 = vdupq_n_s32(0xBF167918);
      v14 = &a5[8 * a3 + 1];
      v15 = vdupq_n_s32(0xBF737871);
      v16 = &a5[4 * a3 + 1];
      v17 = vdupq_n_s32(0x3F737871u);
      do
      {
        v18 = v12[-5];
        v19 = v12[-4];
        v20 = v12[-3];
        v21 = v12[-2];
        v22 = v12[3];
        v23 = v12[4];
        v24 = vaddq_f32(v20, v22);
        v25 = vaddq_f32(v21, v23);
        v26 = vsubq_f32(v20, v22);
        v27 = vsubq_f32(v21, v23);
        v28 = v12[-1];
        v29 = v12[1];
        v30 = v12[2];
        v31 = vaddq_f32(v28, v29);
        v32 = vaddq_f32(*v12, v30);
        v33 = vsubq_f32(v28, v29);
        v34 = vsubq_f32(*v12, v30);
        v7[-1] = vaddq_f32(vaddq_f32(v18, v24), v31);
        *v7 = vaddq_f32(vaddq_f32(v19, v25), v32);
        v35 = vmlaq_f32(vmlaq_f32(v18, v10, v24), v11, v31);
        v36 = vmlaq_f32(vmlaq_f32(v19, v10, v25), v11, v32);
        v37 = vmlaq_f32(vmulq_f32(v33, v13), v15, v26);
        v38 = vmlaq_f32(vmulq_f32(v34, v13), v15, v27);
        v39 = &v7[v8];
        v39[-1] = vsubq_f32(v35, v38);
        *v39 = vaddq_f32(v36, v37);
        v14[-1] = vaddq_f32(v35, v38);
        *v14 = vsubq_f32(v36, v37);
        v40 = vmlaq_f32(vmlaq_f32(v18, v11, v24), v10, v31);
        v41 = vmlaq_f32(vmlaq_f32(v19, v11, v25), v10, v32);
        v42 = vmlaq_f32(vmulq_f32(v33, v17), v13, v26);
        v43 = vmlaq_f32(vmulq_f32(v34, v17), v13, v27);
        v16[-1] = vsubq_f32(v40, v43);
        *v16 = vaddq_f32(v41, v42);
        v7 += 2;
        v14 += 2;
        v9[-1] = vaddq_f32(v40, v43);
        *v9 = vsubq_f32(v41, v42);
        v16 += 2;
        v9 += 2;
        v12 += 10;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v44 = 0;
    v45 = 32 * a2;
    v46 = &a5[6 * a3 * a2];
    v47 = 160 * a2;
    v48 = &a4[2 * a2];
    v49 = &a4[8 * a2];
    v50 = &a4[4 * a2];
    v51 = &a4[6 * a2];
    v155 = (a6 + 24 * v6);
    v154 = a6 + 8 * a2 - 4;
    v52 = vdupq_n_s32(0x3E9E377Au);
    v53 = &a5[4 * a3 * a2];
    v153 = (a6 + 4);
    v54 = vdupq_n_s32(0xBF4F1BBD);
    v152 = (a6 + 16 * v6);
    v55 = vdupq_n_s32(0xBF167918);
    v56 = vdupq_n_s32(0xBF737871);
    v57 = &a5[8 * a3 * a2];
    v58 = vdupq_n_s32(0x3F737871u);
    v59 = a5;
    v60 = a4;
    v61 = &a5[2 * a3 * a2];
    do
    {
      v62 = 5 * v44 * a2;
      v63 = &a4[2 * v62];
      v64 = *v63;
      v65 = v63[1];
      v66 = &a4[2 * a2 + 2 * v62];
      v67 = *v66;
      v68 = v66[1];
      v69 = &a4[2 * (5 * v44 + 4) * a2];
      v70 = v69[1];
      v71 = vaddq_f32(v67, *v69);
      v72 = vaddq_f32(v68, v70);
      v73 = vsubq_f32(v67, *v69);
      v74 = vsubq_f32(v68, v70);
      v75 = &a4[2 * (5 * v44 + 2) * a2];
      v76 = v75[1];
      v77 = &a4[2 * (5 * v44 + 3) * a2];
      v78 = v77[1];
      v79 = vaddq_f32(*v75, *v77);
      v80 = vaddq_f32(v76, v78);
      v81 = vsubq_f32(*v75, *v77);
      v82 = vsubq_f32(v76, v78);
      v83 = &a5[2 * v44 * a2];
      *v83 = vaddq_f32(vaddq_f32(*v63, v71), v79);
      v83[1] = vaddq_f32(vaddq_f32(v65, v72), v80);
      v84 = vmlaq_f32(vmlaq_f32(v64, v52, v71), v54, v79);
      v85 = vmlaq_f32(vmlaq_f32(v65, v52, v72), v54, v80);
      v86 = vmlaq_f32(vmulq_f32(v81, v55), v56, v73);
      v87 = vmlaq_f32(vmulq_f32(v82, v55), v56, v74);
      v88 = &a5[2 * (v44 + a3) * a2];
      v89 = &a5[2 * (v44 + 4 * a3) * a2];
      *v88 = vsubq_f32(v84, v87);
      v88[1] = vaddq_f32(v85, v86);
      *v89 = vaddq_f32(v84, v87);
      v89[1] = vsubq_f32(v85, v86);
      v90 = vmlaq_f32(vmlaq_f32(v64, v54, v71), v52, v79);
      v91 = vmlaq_f32(vmlaq_f32(v65, v54, v72), v52, v80);
      v92 = vmlaq_f32(vmulq_f32(v81, v58), v55, v73);
      v93 = vmlaq_f32(vmulq_f32(v82, v58), v55, v74);
      v94 = &a5[2 * (v44 + 2 * a3) * a2];
      v95 = &a5[2 * (v44 + 3 * a3) * a2];
      *v94 = vsubq_f32(v90, v93);
      v94[1] = vaddq_f32(v91, v92);
      *v95 = vaddq_f32(v90, v93);
      v95[1] = vsubq_f32(v91, v92);
      if (a2)
      {
        v96 = 0;
        v97 = v153;
        v98 = v154;
        v99 = v155;
        v100 = v152;
        v101 = a2 - 1;
        do
        {
          v103 = v60[v96 + 2];
          v102 = v60[v96 + 3];
          v104 = v48[v96 + 2];
          v105 = v48[v96 + 3];
          v106 = v49[v96 + 2];
          v107 = v49[v96 + 3];
          v108 = vaddq_f32(v104, v106);
          v109 = vaddq_f32(v105, v107);
          v110 = vsubq_f32(v104, v106);
          v111 = v50[v96 + 2];
          v112 = v50[v96 + 3];
          v113 = v51[v96 + 2];
          v114 = v51[v96 + 3];
          v115 = vsubq_f32(v105, v107);
          v116 = vaddq_f32(v111, v113);
          v117 = vaddq_f32(v112, v114);
          v118 = vsubq_f32(v111, v113);
          v119 = vsubq_f32(v112, v114);
          v120 = &v59[v96];
          v121 = vmlaq_f32(vmlaq_f32(v103, v52, v108), v54, v116);
          v122 = vmlaq_f32(vmlaq_f32(v102, v52, v109), v54, v117);
          v120[2] = vaddq_f32(vaddq_f32(v103, v108), v116);
          v120[3] = vaddq_f32(vaddq_f32(v102, v109), v117);
          v123 = vmlaq_f32(vmulq_f32(v118, v55), v56, v110);
          v124 = vmlaq_f32(vmulq_f32(v119, v55), v56, v115);
          v125 = vsubq_f32(v121, v124);
          v126 = vaddq_f32(v122, v123);
          v127 = *(v97 - 1);
          v128 = &v61[v96];
          v129 = vmlaq_n_f32(vmulq_n_f32(v126, *v97), v125, v127);
          v130 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v125), *v97), v126, v127);
          v131 = vaddq_f32(v121, v124);
          v132 = vsubq_f32(v122, v123);
          v128[2] = v129;
          v128[3] = v130;
          v133 = v99;
          v134 = vld1q_dup_f32(v133++);
          v135 = &v57[v96];
          v136 = vmlaq_f32(vmlaq_f32(v103, v54, v108), v52, v116);
          v137 = vmlaq_f32(vmulq_n_f32(v132, *v133), v134, v131);
          v138 = vmlaq_f32(vmlaq_f32(v102, v54, v109), v52, v117);
          v139 = vmlaq_f32(vmulq_f32(v118, v58), v55, v110);
          v140 = vmlaq_f32(vmulq_n_f32(vnegq_f32(v131), *v133), v134, v132);
          v141 = vmlaq_f32(vmulq_f32(v119, v58), v55, v115);
          v142 = vsubq_f32(v136, v141);
          v143 = vaddq_f32(v138, v139);
          v119.f32[0] = *(v98 - 1);
          v144 = &v53[v96];
          v145 = vmlaq_n_f32(vmulq_n_f32(v143, *v98), v142, v119.f32[0]);
          v146 = vmulq_n_f32(vnegq_f32(v142), *v98);
          v135[2] = v137;
          v135[3] = v140;
          v144[2] = v145;
          v144[3] = vmlaq_n_f32(v146, v143, v119.f32[0]);
          v147 = vaddq_f32(v136, v141);
          v148 = v100;
          v149 = vsubq_f32(v138, v139);
          v150 = vld1q_dup_f32(v148++);
          v146.f32[0] = *v148;
          v151 = &v46[v96];
          v96 += 2;
          v100 += 2;
          v151[2] = vmlaq_f32(vmulq_n_f32(v149, v146.f32[0]), v150, v147);
          v151[3] = vmlaq_f32(vmulq_n_f32(vnegq_f32(v147), v146.f32[0]), v150, v149);
          v99 += 2;
          v98 += 2;
          v97 += 2;
          --v101;
        }

        while (v101);
      }

      ++v44;
      v46 = (v46 + v45);
      v60 = (v60 + v47);
      v48 = (v48 + v47);
      v49 = (v49 + v47);
      v50 = (v50 + v47);
      v51 = (v51 + v47);
      v59 = (v59 + v45);
      v53 = (v53 + v45);
      v57 = (v57 + v45);
      v61 = (v61 + v45);
    }

    while (v44 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass7ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v230 = a5;
  v231 = a4;
  v221 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a5 + 1;
      v7 = 2 * a3;
      v8 = vdupq_n_s32(0x3F1F9D07u);
      v9 = vdupq_n_s32(0xBE63DC87);
      v10 = &a5[12 * a3 + 1];
      v11 = &a5[10 * a3 + 1];
      v12 = vdupq_n_s32(0xBF66A5E5);
      v13 = &a5[6 * a3 + 1];
      v14 = a4 + 7;
      v15 = vdupq_n_s32(0xBF7994E0);
      v16 = &a5[4 * a3 + 1];
      v17 = vdupq_n_s32(0xBF48261C);
      v18 = &a5[8 * a3 + 1];
      v19 = vdupq_n_s32(0xBEDE2602);
      v20 = vdupq_n_s32(0x3EDE2602u);
      v21 = vdupq_n_s32(0x3F48261Cu);
      do
      {
        v22 = v14[-7];
        v23 = v14[-6];
        v24 = v14[-5];
        v25 = v14[-4];
        v26 = v14[5];
        v27 = v14[6];
        v28 = vaddq_f32(v24, v26);
        v29 = vaddq_f32(v25, v27);
        v30 = vsubq_f32(v24, v26);
        v31 = vsubq_f32(v25, v27);
        v32 = v14[-3];
        v33 = v14[-2];
        v34 = v14[3];
        v35 = v14[4];
        v36 = vaddq_f32(v32, v34);
        v37 = vaddq_f32(v33, v35);
        v38 = vsubq_f32(v32, v34);
        v39 = vsubq_f32(v33, v35);
        v40 = v14[-1];
        v41 = v14[1];
        v42 = v14[2];
        v43 = vaddq_f32(v40, v41);
        v44 = vaddq_f32(*v14, v42);
        v45 = vsubq_f32(v40, v41);
        v46 = vsubq_f32(*v14, v42);
        v6[-1] = vaddq_f32(vaddq_f32(vaddq_f32(v22, v28), v36), v43);
        *v6 = vaddq_f32(vaddq_f32(vaddq_f32(v23, v29), v37), v44);
        v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, v8, v28), v9, v36), v12, v43);
        v48 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v23, v8, v29), v9, v37), v12, v44);
        v49 = vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v15), v17, v30), v19, v45);
        v50 = vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v15), v17, v31), v19, v46);
        v51 = &v6[v7];
        v51[-1] = vsubq_f32(v47, v50);
        *v51 = vaddq_f32(v49, v48);
        v10[-1] = vaddq_f32(v47, v50);
        *v10 = vsubq_f32(v48, v49);
        v52 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, v9, v28), v12, v36), v8, v43);
        v53 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v23, v9, v29), v12, v37), v8, v44);
        v54 = vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v20), v15, v30), v21, v45);
        v55 = vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v20), v15, v31), v21, v46);
        v16[-1] = vsubq_f32(v52, v55);
        *v16 = vaddq_f32(v54, v53);
        v11[-1] = vaddq_f32(v52, v55);
        *v11 = vsubq_f32(v53, v54);
        v56 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, v12, v28), v8, v36), v9, v43);
        v57 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v23, v12, v29), v8, v37), v9, v44);
        v58 = vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v21), v19, v30), v15, v45);
        v59 = vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v21), v19, v31), v15, v46);
        v13[-1] = vsubq_f32(v56, v59);
        *v13 = vaddq_f32(v58, v57);
        v6 += 2;
        v10 += 2;
        v16 += 2;
        v11 += 2;
        v18[-1] = vaddq_f32(v56, v59);
        *v18 = vsubq_f32(v57, v58);
        v13 += 2;
        v18 += 2;
        v14 += 14;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v60 = 0;
    v228 = 3 * a3;
    v226 = 2 * a3;
    v227 = 6 * a3;
    v225 = 4 * a3;
    v62 = &a4[12 * a2];
    v224 = 32 * a2;
    v63 = &a4[10 * a2];
    v64 = &a4[6 * a2];
    v65 = &a5[6 * a3 * a2];
    v66 = &a5[8 * a3 * a2];
    v220 = (a6 + 4);
    v67 = &a5[10 * a3 * a2];
    v68 = vdupq_n_s32(0x3F1F9D07u);
    v222 = 224 * a2;
    v223 = 5 * a3;
    v69 = 8 * a2 - 8;
    v70 = vdupq_n_s32(0xBE63DC87);
    v71 = &a4[2 * a2];
    v72 = vdupq_n_s32(0xBF66A5E5);
    v73 = vdupq_n_s32(0xBF7994E0);
    v74 = &a4[4 * a2];
    v75 = &a5[12 * a3 * a2];
    v76 = vdupq_n_s32(0xBF48261C);
    v77 = &a4[8 * a2];
    v78 = vdupq_n_s32(0xBEDE2602);
    v79 = vdupq_n_s32(0x3EDE2602u);
    v80 = &a5[4 * a3 * a2];
    v81 = vdupq_n_s32(0x3F48261Cu);
    v82 = &a5[2 * a3 * a2];
    v229 = a3;
    v232 = v78;
    v233 = v76;
    v234 = v79;
    v239 = v81;
    do
    {
      v83 = 7 * v60 * a2;
      v84 = &v231[2 * v83];
      v85 = *v84;
      v86 = v84[1];
      v87 = &v231[2 * a2 + 2 * v83];
      v88 = *v87;
      v89 = v87[1];
      v90 = &v231[2 * (7 * v60 + 6) * a2];
      v91 = v90[1];
      v92 = vaddq_f32(v88, *v90);
      v93 = vaddq_f32(v89, v91);
      v94 = vsubq_f32(v88, *v90);
      v95 = vsubq_f32(v89, v91);
      v96 = &v231[2 * (7 * v60 + 2) * a2];
      v97 = *v96;
      v98 = v96[1];
      v99 = &v231[2 * (7 * v60 + 5) * a2];
      v100 = v99[1];
      v101 = vaddq_f32(v97, *v99);
      v102 = vaddq_f32(v98, v100);
      v103 = vsubq_f32(v97, *v99);
      v104 = vsubq_f32(v98, v100);
      v105 = &v231[2 * (7 * v60 + 3) * a2];
      v106 = v105[1];
      v107 = &v231[2 * (7 * v60 + 4) * a2];
      v108 = v107[1];
      v109 = vaddq_f32(*v105, *v107);
      v110 = vaddq_f32(v106, v108);
      v111 = vsubq_f32(*v105, *v107);
      v112 = vsubq_f32(v106, v108);
      v113 = &v230[2 * v60 * a2];
      *v113 = vaddq_f32(vaddq_f32(vaddq_f32(*v84, v92), v101), v109);
      v113[1] = vaddq_f32(vaddq_f32(vaddq_f32(v86, v93), v102), v110);
      v114 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v85, v68, v92), v70, v101), v72, v109);
      v115 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v86, v68, v93), v70, v102), v72, v110);
      v116 = vmlaq_f32(vmlaq_f32(vmulq_f32(v103, v73), v76, v94), v78, v111);
      v117 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v73), v76, v95), v78, v112);
      v118 = &v230[2 * (v60 + a3) * a2];
      v119 = &v230[2 * (v60 + v227) * a2];
      *v118 = vsubq_f32(v114, v117);
      v118[1] = vaddq_f32(v116, v115);
      *v119 = vaddq_f32(v114, v117);
      v119[1] = vsubq_f32(v115, v116);
      v120 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v85, v70, v92), v72, v101), v68, v109);
      v121 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v86, v70, v93), v72, v102), v68, v110);
      v122 = vmlaq_f32(vmlaq_f32(vmulq_f32(v103, v79), v73, v94), v81, v111);
      v123 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v79), v73, v95), v81, v112);
      v124 = &v230[2 * (v60 + v226) * a2];
      v125 = &v230[2 * (v60 + v223) * a2];
      *v124 = vsubq_f32(v120, v123);
      v124[1] = vaddq_f32(v122, v121);
      *v125 = vaddq_f32(v120, v123);
      v125[1] = vsubq_f32(v121, v122);
      v126 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v85, v72, v92), v68, v101), v70, v109);
      v127 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v86, v72, v93), v68, v102), v70, v110);
      v128 = vmlaq_f32(vmlaq_f32(vmulq_f32(v103, v81), v78, v94), v73, v111);
      v129 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v81), v78, v95), v73, v112);
      v130 = &v230[2 * (v60 + v228) * a2];
      v131 = &v230[2 * (v60 + v225) * a2];
      *v130 = vsubq_f32(v126, v129);
      v130[1] = vaddq_f32(v128, v127);
      *v131 = vaddq_f32(v126, v129);
      v131[1] = vsubq_f32(v127, v128);
      v132 = v81;
      if (a2)
      {
        v133 = 0;
        v134 = v220;
        v135 = a2 - 1;
        do
        {
          v136 = v71[v133 + 2];
          v137 = v71[v133 + 3];
          v138 = v62[v133 + 2];
          v139 = v62[v133 + 3];
          v140 = vaddq_f32(v136, v138);
          v141 = vaddq_f32(v137, v139);
          v142 = vsubq_f32(v136, v138);
          v143 = v74[v133 + 2];
          v144 = v74[v133 + 3];
          v145 = vsubq_f32(v137, v139);
          v146 = v63[v133 + 2];
          v147 = v63[v133 + 3];
          v148 = vaddq_f32(v143, v146);
          v149 = vaddq_f32(v144, v147);
          v150 = v64[v133 + 2];
          v151 = v64[v133 + 3];
          v152 = v77[v133 + 2];
          v153 = v77[v133 + 3];
          v154 = vsubq_f32(v144, v147);
          v155 = vaddq_f32(v150, v152);
          v156 = vaddq_f32(v151, v153);
          v157 = a4[v133 + 2];
          v158 = a4[v133 + 3];
          v159 = vsubq_f32(v150, v152);
          v160 = vsubq_f32(v151, v153);
          v161 = &a5[v133];
          v162 = vaddq_f32(vaddq_f32(vaddq_f32(v157, v140), v148), v155);
          v163 = vaddq_f32(vaddq_f32(vaddq_f32(v158, v141), v149), v156);
          v164 = v140;
          v235 = v140;
          v236 = v149;
          v165 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v157, v68, v140), v70, v148), v72, v155);
          v166 = v141;
          v237 = v141;
          v238 = v142;
          v167 = v73;
          v168 = vsubq_f32(v143, v146);
          v169 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v158, v68, v141), v70, v236), v72, v156);
          v170 = vmlaq_f32(vmlaq_f32(vmulq_f32(v168, v73), v76, v142), v78, v159);
          v171 = v145;
          v172 = vmlaq_f32(vmlaq_f32(vmulq_f32(v154, v167), v76, v145), v78, v160);
          v161[2] = v162;
          v161[3] = v163;
          v173 = vsubq_f32(v165, v172);
          v174 = vaddq_f32(v170, v169);
          v175 = vaddq_f32(v165, v172);
          v172.f32[0] = *(v134 - 1);
          v176 = v134;
          v177 = vsubq_f32(v169, v170);
          v179 = vld1q_dup_f32(v176);
          v61 = 6 * v221;
          v178 = &v176[v61];
          v180 = v72;
          v181 = v70;
          v182 = v68;
          v183 = vnegq_f32(v173);
          v169.f32[0] = v134[10 * v221 - 1];
          v141.f32[0] = v134[10 * v221];
          v184 = vmlaq_f32(v157, v181, v164);
          v185 = vnegq_f32(v175);
          v186 = vmlaq_f32(vmlaq_f32(v184, v180, v148), v182, v155);
          v187 = vmlaq_n_f32(vmulq_f32(v174, v179), v173, v172.f32[0]);
          v188 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v158, v181, v166), v180, v236), v182, v156);
          v189 = vmlaq_f32(vmlaq_f32(vmulq_f32(v168, v234), v167, v142), v239, v159);
          v190 = v154;
          v191 = vmulq_f32(v179, v183);
          v192 = vmlaq_f32(vmlaq_f32(vmulq_f32(v154, v234), v167, v171), v239, v160);
          v193 = vsubq_f32(v186, v192);
          v194 = vaddq_f32(v189, v188);
          v195 = vaddq_f32(v186, v192);
          v196 = vmlaq_n_f32(vmulq_n_f32(v177, v141.f32[0]), v175, v169.f32[0]);
          v197 = vsubq_f32(v188, v189);
          v188.f32[0] = *(v134 + v69 - 4);
          v175.f32[0] = *(v134 + v69);
          v198 = vmlaq_n_f32(vmulq_n_f32(v194, v175.f32[0]), v193, v188.f32[0]);
          v199 = vnegq_f32(v193);
          v68 = v182;
          v70 = v181;
          v72 = v180;
          v200 = vmulq_n_f32(v199, v175.f32[0]);
          v201 = vmlaq_n_f32(v191, v174, v172.f32[0]);
          v175.f32[0] = v134[8 * v221 - 1];
          v174.f32[0] = v134[8 * v221];
          v202 = vmlaq_n_f32(vmulq_n_f32(v197, v174.f32[0]), v195, v175.f32[0]);
          v203 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v157, v180, v235), v68, v148), v70, v155);
          v204 = &v82[v133];
          v205 = &v75[v133];
          v206 = vmlaq_n_f32(v200, v194, v188.f32[0]);
          v207 = &v80[v133];
          v208 = &v67[v133];
          v209 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v158, v180, v237), v68, v236), v70, v156);
          v210 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v195), v174.f32[0]), v197, v175.f32[0]);
          v132 = v239;
          v78 = v232;
          v211 = vmlaq_f32(vmlaq_f32(vmulq_f32(v168, v239), v232, v238), v167, v159);
          v204[2] = v187;
          v204[3] = v201;
          v73 = v167;
          v212 = vmlaq_f32(vmlaq_f32(vmulq_f32(v190, v239), v232, v171), v167, v160);
          v213 = vsubq_f32(v203, v212);
          v214 = vaddq_f32(v211, v209);
          v205[2] = v196;
          v205[3] = vmlaq_n_f32(vmulq_n_f32(v185, v141.f32[0]), v177, v169.f32[0]);
          v215 = vaddq_f32(v203, v212);
          v216 = vsubq_f32(v209, v211);
          v207[2] = v198;
          v207[3] = v206;
          v203.f32[0] = v134[4 * v221 - 1];
          v206.f32[0] = v134[4 * v221];
          v217 = &v65[v133];
          v208[2] = v202;
          v208[3] = v210;
          v217[2] = vmlaq_n_f32(vmulq_n_f32(v214, v206.f32[0]), v213, v203.f32[0]);
          v217[3] = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v213), v206.f32[0]), v214, v203.f32[0]);
          v206.f32[0] = *(v178 - 1);
          v218 = &v66[v133];
          v219 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v215), *v178), v216, v206.f32[0]);
          v218[2] = vmlaq_n_f32(vmulq_n_f32(v216, *v178), v215, v206.f32[0]);
          v218[3] = v219;
          v76 = v233;
          v133 += 2;
          v134 += 2;
          --v135;
        }

        while (v135);
      }

      ++v60;
      v66 = (v66 + v224);
      a4 = (a4 + v222);
      v71 = (v71 + v222);
      v62 = (v62 + v222);
      v74 = (v74 + v222);
      v63 = (v63 + v222);
      v64 = (v64 + v222);
      v77 = (v77 + v222);
      a5 = (a5 + v224);
      v65 = (v65 + v224);
      v67 = (v67 + v224);
      v80 = (v80 + v224);
      v82 = (v82 + v224);
      v75 = (v75 + v224);
      a3 = v229;
      v79 = v234;
      v81 = v132;
    }

    while (v60 != v229);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE6pass11ILb1ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v321 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 20 * a3;
      v7 = a3 << 6;
      v353 = vdupq_n_s32(0x3F75A155u);
      v8 = 18 * a3;
      v357 = vdupq_n_s32(0xBF68DDA4);
      v9 = 6 * a3;
      v10 = a3 << 8;
      v407 = vdupq_n_s32(0xBF7D64F0);
      v11 = a3 << 7;
      v352 = vdupq_n_s32(0xBF4178CE);
      v12 = 10 * a3;
      v13 = 12 * a3;
      v384 = vdupq_n_s32(0xBE903F40);
      v386 = vdupq_n_s32(0xBF0A6770);
      v14 = a4 + 11;
      v15 = 14 * a3;
      v16 = (32 * a3) | 0x10;
      v378 = vdupq_n_s32(0x3F0A6770u);
      v381 = vdupq_n_s32(0x3F7D64F0u);
      v355 = vdupq_n_s32(0x3F68DDA4u);
      v356 = vdupq_n_s32(0x3E903F40u);
      v18 = vdupq_n_s32(0x3ED4B147u);
      v17 = vdupq_n_s32(0x3F575C64u);
      v19 = vdupq_n_s32(0x3F27A4F4u);
      v20 = vdupq_n_s32(0x3E11BAFBu);
      do
      {
        v21 = v14[-9];
        v22 = v14[-8];
        v23 = v14[9];
        v24 = v14[10];
        v25 = vaddq_f32(v21, v23);
        v26 = vaddq_f32(v22, v24);
        v375 = vsubq_f32(v21, v23);
        v27 = v14[-7];
        v28 = v14[-6];
        v29 = vsubq_f32(v22, v24);
        v31 = v14[7];
        v30 = v14[8];
        v32 = vaddq_f32(v27, v31);
        v33 = vaddq_f32(v28, v30);
        v34 = vsubq_f32(v27, v31);
        v404 = vsubq_f32(v28, v30);
        v35 = v14[-5];
        v36 = v14[-4];
        v37 = v14[5];
        v38 = v14[6];
        v39 = vaddq_f32(v35, v37);
        v40 = vaddq_f32(v36, v38);
        v360 = vsubq_f32(v35, v37);
        v402 = vsubq_f32(v36, v38);
        v41 = v14[-3];
        v42 = v14[-2];
        v43 = v14[3];
        v44 = v14[4];
        v45 = vaddq_f32(v41, v43);
        v46 = vaddq_f32(v42, v44);
        v398 = vsubq_f32(v41, v43);
        v47 = v14[-1];
        v48 = vsubq_f32(v42, v44);
        v49 = v14[1];
        v50 = v14[2];
        v51 = vaddq_f32(v47, v49);
        v52 = vaddq_f32(*v14, v50);
        v370 = vsubq_f32(v47, v49);
        v373 = v48;
        v53 = v14[-11];
        v54 = v14[-10];
        v55 = vsubq_f32(*v14, v50);
        v390 = v25;
        v393 = v33;
        v56 = v33;
        v364 = v46;
        v57 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v54, v26), v33), v40), v46);
        v58 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v53, vmulq_f32(v25, v17)), vmulq_f32(v32, v18)), vmulq_f32(v39, v20)), vmulq_f32(v45, v19)), vmulq_f32(v51, v353));
        v59 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v54, vmulq_f32(v26, v17)), vmulq_f32(v56, v18)), vmulq_f32(v40, v20)), vmulq_f32(v46, v19)), vmulq_f32(v52, v353));
        v60 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v357), v386, v375), v407, v360), v352, v398), v384, v370);
        *a5 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v53, v25), v32), v39), v45), v51);
        a5[1] = vaddq_f32(v57, v52);
        v61 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v404, v357), v386, v29), v407, v402), v352, v373), v384, v55);
        v62 = (a5 + v16);
        v63 = &a5[v6];
        v64 = vsubq_f32(v58, v61);
        v65 = vaddq_f32(v58, v61);
        v62[-1] = v64;
        *v62 = vaddq_f32(v60, v59);
        v66 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v53, vmulq_f32(v390, v18)), vmulq_f32(v32, v19)), vmulq_f32(v39, v353)), vmulq_f32(v45, v20)), vmulq_f32(v51, v17));
        v67 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v54, vmulq_f32(v26, v18)), vmulq_f32(v56, v19)), vmulq_f32(v40, v353)), vmulq_f32(v46, v20)), vmulq_f32(v52, v17));
        *v63 = v65;
        v63[1] = vsubq_f32(v59, v60);
        v68 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v352), v357, v375), v356, v360), v381, v398), v378, v370);
        v69 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v404, v352), v357, v29), v356, v402), v381, v373), v378, v55);
        v70 = (a5 + v7);
        v71 = &a5[v8];
        v72 = vsubq_f32(v66, v69);
        v73 = vaddq_f32(v66, v69);
        *v70 = v72;
        v70[1] = vaddq_f32(v68, v67);
        v74 = vsubq_f32(v67, v68);
        v75 = v39;
        v76 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v53, vmulq_f32(v390, v20)), vmulq_f32(v32, v353)), vmulq_f32(v39, v18)), vmulq_f32(v45, v17)), vmulq_f32(v51, v19));
        v77 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v54, vmulq_f32(v26, v20)), vmulq_f32(v56, v353)), vmulq_f32(v40, v18)), vmulq_f32(v46, v17)), vmulq_f32(v52, v19));
        v78 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v356), v407, v375), v355, v360), v386, v398), v352, v370);
        *v71 = v73;
        v71[1] = v74;
        v79 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v404, v356), v407, v29), v355, v402), v386, v373), v352, v55);
        v80 = &a5[v9];
        v81 = (a5 + v10);
        v82 = vsubq_f32(v76, v79);
        v83 = vaddq_f32(v76, v79);
        v84 = vsubq_f32(v77, v78);
        *v80 = v82;
        v80[1] = vaddq_f32(v78, v77);
        v85 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v53, vmulq_f32(v390, v19)), vmulq_f32(v32, v20)), vmulq_f32(v75, v17)), vmulq_f32(v45, v353)), vmulq_f32(v51, v18));
        v86 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v54, vmulq_f32(v26, v19)), vmulq_f32(v393, v20)), vmulq_f32(v40, v17)), vmulq_f32(v46, v353)), vmulq_f32(v52, v18));
        v87 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v381), v352, v375), v386, v360), v384, v398), v355, v370);
        *v81 = v83;
        v81[1] = v84;
        v88 = v55;
        v89 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v404, v381), v352, v29), v386, v402), v384, v373), v355, v55);
        v90 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v53, vmulq_f32(v390, v353)), vmulq_f32(v32, v17)), vmulq_f32(v75, v19)), vmulq_f32(v45, v18)), vmulq_f32(v51, v20));
        v91 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v54, vmulq_f32(v26, v353)), vmulq_f32(v393, v17)), vmulq_f32(v40, v19)), vmulq_f32(v364, v18)), vmulq_f32(v52, v20));
        v92 = (a5 + v11);
        *v92 = vsubq_f32(v85, v89);
        v92[1] = vaddq_f32(v87, v86);
        v93 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v378), v384, v375), v352, v360), v355, v398), v407, v370);
        v94 = &a5[v15];
        *v94 = vaddq_f32(v85, v89);
        v94[1] = vsubq_f32(v86, v87);
        v95 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v404, v378), v384, v29), v352, v402), v355, v373), v407, v88);
        v96 = &a5[v12];
        *v96 = vsubq_f32(v90, v95);
        v96[1] = vaddq_f32(v93, v91);
        v97 = &a5[v13];
        *v97 = vaddq_f32(v90, v95);
        v97[1] = vsubq_f32(v91, v93);
        a5 += 2;
        v14 += 22;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v99 = 0;
    v335 = 9 * a3;
    v343 = &a5[12 * a3 * a2];
    v333 = 352 * a2;
    v342 = &a4[20 * a2];
    v100 = &a4[18 * a2];
    v101 = &a4[6 * a2];
    v336 = 5 * a3;
    v102 = &a4[14 * a2];
    v331 = 2 * a3;
    v332 = 10 * a3;
    v103 = &a4[2 * a2];
    v104 = vdupq_n_s32(0x3F575C64u);
    v105 = &a5[8 * a3 * a2];
    v106 = vdupq_n_s32(0x3ED4B147u);
    v107 = vdupq_n_s32(0x3E11BAFBu);
    v108 = vdupq_n_s32(0x3F27A4F4u);
    v109 = &a5[16 * a3 * a2];
    v330 = vdupq_n_s32(0x3F75A155u);
    v346 = vdupq_n_s32(0xBF68DDA4);
    v385 = vdupq_n_s32(0xBF0A6770);
    v350 = vdupq_n_s32(0xBF7D64F0);
    v401 = vdupq_n_s32(0xBE903F40);
    v403 = vdupq_n_s32(0xBF4178CE);
    v110 = &a5[2 * a3 * a2];
    v344 = vdupq_n_s32(0x3F7D64F0u);
    v345 = vdupq_n_s32(0x3E903F40u);
    v399 = vdupq_n_s32(0x3F0A6770u);
    v400 = vdupq_n_s32(0x3F68DDA4u);
    v111 = &a5[14 * a3 * a2];
    v112 = &a5[6 * a3 * a2];
    v113 = &a5[4 * a3 * a2];
    v114 = &a5[20 * a3 * a2];
    v115 = &a5[18 * a3 * a2];
    v116 = &a5[10 * a3 * a2];
    v117 = &a4[10 * a2];
    v118 = &a4[12 * a2];
    v328 = 8 * a2 - 8;
    v334 = 3 * a3;
    v325 = 6 * a3;
    v326 = 4 * a3;
    v324 = 32 * a2;
    v323 = a2 << 6;
    v327 = 8 * a3;
    v322 = 7 * a3;
    v119 = &a4[4 * a2];
    v120 = &a4[16 * a2];
    v121 = a5;
    v122 = a4;
    v123 = &a4[8 * a2];
    v337 = a3;
    v338 = a5;
    v405 = v106;
    v406 = v108;
    v408 = v107;
    v349 = v104;
    do
    {
      v347 = v110;
      v348 = v122;
      v124 = 11 * v99 * a2;
      v125 = &a4[2 * a2 + 2 * v124];
      v126 = *v125;
      v127 = v125[1];
      v128 = v104;
      v129 = &a4[2 * (11 * v99 + 10) * a2];
      v130 = v129[1];
      v131 = vaddq_f32(v126, *v129);
      v132 = vaddq_f32(v127, v130);
      v371 = vsubq_f32(v126, *v129);
      v133 = vsubq_f32(v127, v130);
      v134 = &a4[2 * (11 * v99 + 2) * a2];
      v135 = *v134;
      v136 = v134[1];
      v137 = &a4[2 * (11 * v99 + 9) * a2];
      v138 = v137[1];
      v139 = vaddq_f32(v135, *v137);
      v140 = vaddq_f32(v136, v138);
      v141 = vsubq_f32(v135, *v137);
      v366 = vsubq_f32(v136, v138);
      v142 = &a4[2 * (11 * v99 + 3) * a2];
      v143 = *v142;
      v144 = v142[1];
      v145 = &a4[2 * (11 * v99 + 8) * a2];
      v146 = v145[1];
      v147 = vaddq_f32(v143, *v145);
      v148 = vaddq_f32(v144, v146);
      v396 = vsubq_f32(v143, *v145);
      v388 = vsubq_f32(v144, v146);
      v149 = &a4[2 * (11 * v99 + 4) * a2];
      v150 = *v149;
      v151 = v149[1];
      v152 = &a4[2 * (11 * v99 + 7) * a2];
      v153 = v152[1];
      v154 = vaddq_f32(v150, *v152);
      v368 = vsubq_f32(v150, *v152);
      v155 = vsubq_f32(v151, v153);
      v156 = &a4[2 * (11 * v99 + 5) * a2];
      v157 = v156[1];
      v158 = &a4[2 * (11 * v99 + 6) * a2];
      v159 = v158[1];
      v160 = vaddq_f32(*v156, *v158);
      v161 = vaddq_f32(v157, v159);
      v162 = vsubq_f32(v157, v159);
      v163 = &a4[2 * v124];
      v164 = v163[1];
      v165 = v154;
      v391 = vaddq_f32(v151, v153);
      v394 = v154;
      v166 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*v163, v131), v139), v147), v154), v160);
      v167 = v132;
      v379 = v132;
      v168 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v164, v132), v140), v148), v391), v161);
      v169 = *v163;
      v376 = v160;
      v170 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(*v163, vmulq_f32(v131, v128)), vmulq_f32(v139, v106)), vmulq_f32(v147, v107)), vmulq_f32(v165, v108)), vmulq_f32(v160, v330));
      v171 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v164, vmulq_f32(v167, v128)), vmulq_f32(v140, v106)), vmulq_f32(v148, v107)), vmulq_f32(v391, v108)), vmulq_f32(v161, v330));
      v382 = vsubq_f32(*v156, *v158);
      v172 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v141, v346), v385, v371), v350, v396), v403, v368), v401, v382);
      v173 = &a5[2 * v99 * a2];
      *v173 = v166;
      v173[1] = v168;
      v174 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v366, v346), v385, v133), v350, v388), v403, v155), v401, v162);
      v175 = &a5[2 * (v99 + a3) * a2];
      v176 = &a5[2 * (v99 + v332) * a2];
      *v175 = vsubq_f32(v170, v174);
      v175[1] = vaddq_f32(v172, v171);
      *v176 = vaddq_f32(v170, v174);
      v176[1] = vsubq_f32(v171, v172);
      v177 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v169, vmulq_f32(v131, v106)), vmulq_f32(v139, v108)), vmulq_f32(v147, v330)), vmulq_f32(v394, v107)), vmulq_f32(v376, v349));
      v178 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v164, vmulq_f32(v379, v106)), vmulq_f32(v140, v108)), vmulq_f32(v148, v330)), vmulq_f32(v391, v107)), vmulq_f32(v161, v349));
      v179 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v141, v403), v346, v371), v345, v396), v344, v368), v399, v382);
      v180 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v366, v403), v346, v133), v345, v388), v344, v155), v399, v162);
      v181 = &a5[2 * (v99 + v331) * a2];
      v182 = &a5[2 * (v99 + v335) * a2];
      *v181 = vsubq_f32(v177, v180);
      v181[1] = vaddq_f32(v179, v178);
      *v182 = vaddq_f32(v177, v180);
      v182[1] = vsubq_f32(v178, v179);
      v183 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v169, vmulq_f32(v131, v107)), vmulq_f32(v139, v330)), vmulq_f32(v147, v405)), vmulq_f32(v394, v349)), vmulq_f32(v376, v406));
      v184 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v164, vmulq_f32(v379, v107)), vmulq_f32(v140, v330)), vmulq_f32(v148, v405)), vmulq_f32(v391, v349)), vmulq_f32(v161, v406));
      v185 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v141, v345), v350, v371), v400, v396), v385, v368), v403, v382);
      v186 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v366, v345), v350, v133), v400, v388), v385, v155), v403, v162);
      v187 = &a5[2 * (v99 + v334) * a2];
      v188 = &a5[2 * (v99 + v327) * a2];
      *v187 = vsubq_f32(v183, v186);
      v187[1] = vaddq_f32(v185, v184);
      *v188 = vaddq_f32(v183, v186);
      v188[1] = vsubq_f32(v184, v185);
      v189 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v169, vmulq_f32(v131, v406)), vmulq_f32(v139, v107)), vmulq_f32(v147, v349)), vmulq_f32(v394, v330)), vmulq_f32(v376, v405));
      v190 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v164, vmulq_f32(v379, v406)), vmulq_f32(v140, v107)), vmulq_f32(v148, v349)), vmulq_f32(v391, v330)), vmulq_f32(v161, v405));
      v191 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v141, v344), v403, v371), v385, v396), v401, v368), v400, v382);
      v192 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v366, v344), v403, v133), v385, v388), v401, v155), v400, v162);
      v193 = &a5[2 * (v99 + v326) * a2];
      *v193 = vsubq_f32(v189, v192);
      v193[1] = vaddq_f32(v191, v190);
      v194 = &a5[2 * (v99 + v322) * a2];
      *v194 = vaddq_f32(v189, v192);
      v194[1] = vsubq_f32(v190, v191);
      v195 = v401;
      v196 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v169, vmulq_f32(v131, v330)), vmulq_f32(v139, v349)), vmulq_f32(v147, v406)), vmulq_f32(v394, v405)), vmulq_f32(v376, v107));
      v197 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v164, vmulq_f32(v379, v330)), vmulq_f32(v140, v349)), vmulq_f32(v148, v406)), vmulq_f32(v391, v405)), vmulq_f32(v161, v107));
      v198 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v141, v399), v401, v371), v403, v396), v400, v368), v350, v382);
      v199 = &a5[2 * (v99 + v336) * a2];
      v200 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v366, v399), v401, v133), v403, v388), v400, v155), v350, v162);
      *v199 = vsubq_f32(v196, v200);
      v199[1] = vaddq_f32(v198, v197);
      v341 = v99;
      v201 = &a5[2 * (v99 + v325) * a2];
      *v201 = vaddq_f32(v196, v200);
      v201[1] = vsubq_f32(v197, v198);
      v202 = v405;
      v108 = v406;
      if (a2)
      {
        v203 = v403;
        v204 = v350;
        v205 = 0;
        v207 = (a6 + 4);
        v206 = v321;
        do
        {
          v208 = v103[v205 + 2];
          v209 = v103[v205 + 3];
          v210 = v342[v205 + 2];
          v211 = v342[v205 + 3];
          v212 = vaddq_f32(v208, v210);
          v213 = vaddq_f32(v209, v211);
          v214 = vsubq_f32(v208, v210);
          v215 = v119[v205 + 2];
          v216 = v119[v205 + 3];
          v217 = vsubq_f32(v209, v211);
          v218 = v100[v205 + 2];
          v219 = v100[v205 + 3];
          v220 = vaddq_f32(v215, v218);
          v221 = vaddq_f32(v216, v219);
          v395 = v214;
          v397 = vsubq_f32(v215, v218);
          v222 = v101[v205 + 2];
          v223 = v101[v205 + 3];
          v224 = v120[v205 + 2];
          v225 = v120[v205 + 3];
          v226 = vsubq_f32(v216, v219);
          v227 = vaddq_f32(v222, v224);
          v228 = vaddq_f32(v223, v225);
          v229 = vsubq_f32(v222, v224);
          v387 = vsubq_f32(v223, v225);
          v230 = v123[v205 + 2];
          v231 = v123[v205 + 3];
          v232 = v102[v205 + 2];
          v233 = v102[v205 + 3];
          v234 = vaddq_f32(v230, v232);
          v235 = vaddq_f32(v231, v233);
          v358 = vsubq_f32(v230, v232);
          v236 = v117[v205 + 2];
          v237 = v117[v205 + 3];
          v238 = vsubq_f32(v231, v233);
          v239 = v118[v205 + 2];
          v240 = v118[v205 + 3];
          v241 = vaddq_f32(v236, v239);
          v242 = vaddq_f32(v237, v240);
          v392 = vsubq_f32(v236, v239);
          v351 = vsubq_f32(v237, v240);
          v244 = v348[v205 + 2];
          v243 = v348[v205 + 3];
          v245 = vaddq_f32(vaddq_f32(vaddq_f32(v243, v213), v221), v228);
          v246 = v243;
          v389 = v220;
          v247 = &v121[v205];
          v248 = vaddq_f32(vaddq_f32(v243, vmulq_f32(v213, v349)), vmulq_f32(v221, v405));
          v249 = vmulq_f32(v234, v108);
          v250 = vmulq_f32(v235, v108);
          v251 = v235;
          v252 = vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v244, vmulq_f32(v212, v349)), vmulq_f32(v220, v405)), vmulq_f32(v227, v408)), v249);
          v253 = vaddq_f32(vaddq_f32(v245, v235), v242);
          v254 = vsubq_f32(v252, vmulq_f32(v241, v330));
          v255 = vsubq_f32(vsubq_f32(vsubq_f32(v248, vmulq_f32(v228, v408)), v250), vmulq_f32(v242, v330));
          v256 = v204;
          v257 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v346), v385, v214), v204, v229), v203, v358), v195, v392);
          v354 = v217;
          v247[2] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v244, v212), v220), v227), v234), v241);
          v247[3] = v253;
          v258 = v217;
          v259 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v226, v346), v385, v217), v256, v387), v203, v238), v195, v351);
          v260 = vsubq_f32(v254, v259);
          v261 = vaddq_f32(v257, v255);
          v256.f32[0] = *(v207 - 1);
          v262 = v207;
          v264 = vld1q_dup_f32(v262);
          v329 = 10 * v321;
          v263 = &v262[v329];
          v383 = vmlaq_n_f32(vmulq_f32(v261, v264), v260, v256.f32[0]);
          v380 = vmlaq_n_f32(vmulq_f32(v264, vnegq_f32(v260)), v261, v256.f32[0]);
          v260.f32[0] = v207[18 * v321 - 1];
          v261.f32[0] = v207[18 * v321];
          v265 = vaddq_f32(v254, v259);
          v266 = vsubq_f32(v255, v257);
          v267 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v244, vmulq_f32(v212, v405)), vmulq_f32(v220, v406)), vmulq_f32(v227, v330)), vmulq_f32(v234, v408)), vmulq_f32(v241, v349));
          v268 = vnegq_f32(v265);
          v377 = vmlaq_n_f32(vmulq_n_f32(v266, v261.f32[0]), v265, v260.f32[0]);
          v269 = v242;
          v270 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v246, vmulq_f32(v213, v405)), vmulq_f32(v221, v406)), vmulq_f32(v228, v330)), vmulq_f32(v251, v408)), vmulq_f32(v242, v349));
          v271 = vmulq_n_f32(v268, v261.f32[0]);
          v272 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v226, v403), v346, v258), v345, v387), v344, v238), v399, v351);
          v273 = vsubq_f32(v267, v272);
          v274 = vaddq_f32(v267, v272);
          v275 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v403), v346, v214), v345, v229), v344, v358), v399, v392);
          v276 = vaddq_f32(v275, v270);
          v277 = vsubq_f32(v270, v275);
          v278 = vmlaq_n_f32(v271, v266, v260.f32[0]);
          v260.f32[0] = *(v207 + v328 - 4);
          v266.f32[0] = *(v207 + v328);
          v372 = vmlaq_n_f32(vmulq_n_f32(v276, v266.f32[0]), v273, v260.f32[0]);
          v374 = v278;
          v369 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v273), v266.f32[0]), v276, v260.f32[0]);
          v260.f32[0] = *(v207 + v323 - 68);
          v266.f32[0] = *(v207 + v323 - 64);
          v365 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v274), v266.f32[0]), v277, v260.f32[0]);
          v367 = vmlaq_n_f32(vmulq_n_f32(v277, v266.f32[0]), v274, v260.f32[0]);
          v279 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v244, vmulq_f32(v212, v408)), vmulq_f32(v389, v330)), vmulq_f32(v227, v405)), vmulq_f32(v234, v349)), vmulq_f32(v241, v406));
          v280 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v246, vmulq_f32(v213, v408)), vmulq_f32(v221, v330)), vmulq_f32(v228, v405)), vmulq_f32(v251, v349)), vmulq_f32(v269, v406));
          v204 = v350;
          v281 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v345), v350, v214), v400, v229), v385, v358), v403, v392);
          v282 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v226, v345), v350, v354), v400, v387), v385, v238), v403, v351);
          v283 = vsubq_f32(v279, v282);
          v284 = vaddq_f32(v281, v280);
          v260.f32[0] = v207[4 * v321 - 1];
          v276.f32[0] = v207[4 * v321];
          v362 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v283), v276.f32[0]), v284, v260.f32[0]);
          v363 = vmlaq_n_f32(vmulq_n_f32(v284, v276.f32[0]), v283, v260.f32[0]);
          v285 = vaddq_f32(v279, v282);
          v286 = vsubq_f32(v280, v281);
          v281.f32[0] = v207[14 * v321 - 1];
          v282.f32[0] = v207[14 * v321];
          v359 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v285), v282.f32[0]), v286, v281.f32[0]);
          v361 = vmlaq_n_f32(vmulq_n_f32(v286, v282.f32[0]), v285, v281.f32[0]);
          v287 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v244, vmulq_f32(v212, v406)), vmulq_f32(v389, v408)), vmulq_f32(v227, v349)), vmulq_f32(v234, v330)), vmulq_f32(v241, v405));
          v288 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v246, vmulq_f32(v213, v406)), vmulq_f32(v221, v408)), vmulq_f32(v228, v349)), vmulq_f32(v251, v330)), vmulq_f32(v269, v405));
          v289 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v344), v403, v214), v385, v229), v401, v358), v400, v392);
          v290 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v226, v344), v403, v354), v385, v387), v401, v238), v400, v351);
          v291 = vsubq_f32(v287, v290);
          v292 = vaddq_f32(v289, v288);
          v282.f32[0] = v207[6 * v321 - 1];
          v286.f32[0] = v207[6 * v321];
          v293 = vmlaq_n_f32(vmulq_n_f32(v292, v286.f32[0]), v291, v282.f32[0]);
          v294 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v291), v286.f32[0]), v292, v282.f32[0]);
          v295 = vaddq_f32(v287, v290);
          v296 = vsubq_f32(v288, v289);
          v292.f32[0] = v207[12 * v321 - 1];
          v288.f32[0] = v207[12 * v321];
          v297 = vmlaq_n_f32(vmulq_n_f32(v296, v288.f32[0]), v295, v292.f32[0]);
          v298 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v295), v288.f32[0]), v296, v292.f32[0]);
          v202 = v405;
          v299 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v244, vmulq_f32(v212, v330)), vmulq_f32(v389, v349)), vmulq_f32(v227, v406)), vmulq_f32(v234, v405)), vmulq_f32(v241, v408));
          v300 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v399), v401, v395), v403, v229), v400, v358), v350, v392);
          v107 = v408;
          v301 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v246, vmulq_f32(v213, v330)), vmulq_f32(v221, v349)), vmulq_f32(v228, v406)), vmulq_f32(v251, v405)), vmulq_f32(v269, v408));
          v287.f32[0] = v207[8 * v321 - 1];
          v234.f32[0] = v207[8 * v321];
          v302 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v226, v399), v401, v354), v403, v387), v400, v238), v350, v351);
          v303 = vsubq_f32(v299, v302);
          v304 = vaddq_f32(v300, v301);
          v305 = vaddq_f32(v299, v302);
          v306 = vmlaq_n_f32(vmulq_n_f32(v304, v234.f32[0]), v303, v287.f32[0]);
          v307 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v303), v234.f32[0]), v304, v287.f32[0]);
          v287.f32[0] = *(v263 - 1);
          v308 = vsubq_f32(v301, v300);
          v309 = vmlaq_n_f32(vmulq_n_f32(v308, *v263), v305, v287.f32[0]);
          v310 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v305), *v263), v308, v287.f32[0]);
          v311 = &v347[v205];
          v311[2] = v383;
          v311[3] = v380;
          v312 = &v114[v205];
          v312[2] = v377;
          v312[3] = v374;
          v313 = &v113[v205];
          v313[2] = v372;
          v313[3] = v369;
          v314 = &v115[v205];
          v314[2] = v367;
          v314[3] = v365;
          v315 = &v112[v205];
          v315[2] = v363;
          v315[3] = v362;
          v316 = &v109[v205];
          v316[2] = v361;
          v316[3] = v359;
          v317 = &v105[v205];
          v317[2] = v293;
          v317[3] = v294;
          v195 = v401;
          v203 = v403;
          v318 = &v111[v205];
          v318[2] = v297;
          v318[3] = v298;
          v319 = &v116[v205];
          v319[2] = v306;
          v319[3] = v307;
          v108 = v406;
          v320 = &v343[v205];
          v320[2] = v309;
          v320[3] = v310;
          v205 += 2;
          v207 += 2;
          --v206;
        }

        while (v206);
      }

      ++v99;
      v103 = (v103 + v333);
      v342 = (v342 + v333);
      v343 = (v343 + v324);
      v100 = (v100 + v333);
      v101 = (v101 + v333);
      v102 = (v102 + v333);
      v117 = (v117 + v333);
      v118 = (v118 + v333);
      v116 = (v116 + v324);
      v111 = (v111 + v324);
      v105 = (v105 + v324);
      v109 = (v109 + v324);
      v110 = &v347[v324 / 0x10];
      v113 = (v113 + v324);
      v115 = (v115 + v324);
      a3 = v337;
      a5 = v338;
      v104 = v349;
      v106 = v202;
      v112 = (v112 + v324);
      v114 = (v114 + v324);
      v119 = (v119 + v333);
      v120 = (v120 + v333);
      v121 = (v121 + v324);
      v122 = &v348[v333 / 0x10];
      v123 = (v123 + v333);
    }

    while (v341 + 1 != v337);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5passgILb1ENS0_5cmplxIDv4_fEEEEvmmmPT0_S8_PKNS4_IfEESB_(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, char *a6, float32x2_t *a7, uint64_t a8)
{
  v13 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a3);
  v16 = v13;
  *v13 = 1065353216;
  if (a3 >= 2)
  {
    v17 = a3 - 1;
    v18 = (a8 + 12);
    v19 = v13 + 3;
    do
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      v18 += 2;
      *(v19 - 1) = v20;
      *v19 = -v21;
      v19 += 2;
      --v17;
    }

    while (v17);
  }

  v22 = a3 + 1;
  v23 = 32 * a2;
  if (a4)
  {
    v24 = a4;
    v25 = a6;
    v26 = a5;
    do
    {
      if (a2)
      {
        memcpy(v25, v26, 32 * a2);
      }

      v26 += 32 * a3 * a2;
      v25 += v23;
      --v24;
    }

    while (v24);
  }

  v27 = a4 * a2;
  v28 = v22 >> 1;
  v29 = a3 - 1;
  v161 = v22 >> 1;
  if (v22 >= 4)
  {
    v30 = &a5[32 * a2 * v29 + 16];
    v31 = 32 * a3 * a2;
    v32 = &a6[32 * v27 + 16];
    v33 = &a5[32 * a2 + 16];
    v34 = &a6[32 * v27 * v29 + 16];
    v35 = 1;
    do
    {
      if (a4)
      {
        v36 = 0;
        v37 = v34;
        v38 = v33;
        v39 = v32;
        v40 = v30;
        do
        {
          v41 = v37;
          v42 = v38;
          v43 = v39;
          v44 = v40;
          for (i = a2; i; --i)
          {
            v46 = v42[-1];
            v47 = *v42;
            v14 = v44[-1];
            v48 = *v44;
            v15 = vaddq_f32(*v42, *v44);
            v43[-1] = vaddq_f32(v46, v14);
            *v43 = v15;
            v44 += 2;
            v41[-1] = vsubq_f32(v46, v14);
            *v41 = vsubq_f32(v47, v48);
            v43 += 2;
            v42 += 2;
            v41 += 2;
          }

          ++v36;
          v40 = (v40 + v31);
          v39 = (v39 + v23);
          v38 = (v38 + v31);
          v37 = (v37 + v23);
        }

        while (v36 != a4);
      }

      ++v35;
      v30 -= 32 * a2;
      v32 += 32 * v27;
      v33 += v23;
      v34 -= 32 * v27;
      v28 = v22 >> 1;
    }

    while (v35 != v161);
  }

  if (a4)
  {
    v49 = 0;
    v50 = &a6[32 * v27 + 16];
    do
    {
      if (a2)
      {
        v51 = 0;
        v52 = v50;
        do
        {
          v53 = &a6[32 * v49 * a2 + 32 * v51];
          v54 = *v53;
          v55 = v53[1];
          v56 = v52;
          v57 = v28 - 1;
          if (v22 >= 4)
          {
            do
            {
              v14 = v56[-1];
              v54 = vaddq_f32(v54, v14);
              v55 = vaddq_f32(v55, *v56);
              v56 += 2 * v27;
              --v57;
            }

            while (v57);
          }

          v58 = &a5[32 * v49 * a2 + 32 * v51];
          *v58 = v54;
          v58[1] = v55;
          ++v51;
          v52 += 2;
        }

        while (v51 != a2);
      }

      ++v49;
      v50 += v23;
    }

    while (v49 != a4);
  }

  if (v22 >= 4)
  {
    v59 = &a6[32 * v27];
    v60 = v27 << 6;
    v61 = &a6[64 * v27];
    v62 = &a6[32 * v27 * v29];
    v63 = &a6[32 * v27 * (a3 - 2)];
    v64 = v28 - 1;
    v153 = &a5[32 * v27 * v29];
    v65 = v153 + 1;
    v66 = 32 * v27;
    v67 = &a5[32 * v27];
    v159 = &a6[96 * v27];
    v158 = &a6[32 * v27 * (a3 - 4)];
    v157 = &a6[128 * v27];
    v68 = 1;
    v156 = &a6[32 * v27 * (a3 - 3)];
    v160 = a6;
    do
    {
      if (v27)
      {
        v69 = 0;
        v70 = &v16[2 * v68];
        v71 = vld1q_dup_f32(v70++);
        v72 = &v16[4 * v68];
        v73 = vld1q_dup_f32(v72++);
        v15.f32[0] = *v70;
        v14.f32[0] = -*v70;
        v14 = vdupq_lane_s32(*v14.f32, 0);
        v74 = vld1q_dup_f32(v72);
        v75 = vnegq_f32(v74);
        v15 = vdupq_lane_s32(*v15.f32, 0);
        v76 = a4 * a2;
        do
        {
          v77 = &v67[v69];
          v78 = vmlaq_f32(vmlaq_f32(*&a6[v69 + 16], *&v59[v69 + 16], v71), *&v61[v69 + 16], v73);
          *v77 = vmlaq_f32(vmlaq_f32(*&a6[v69], *&v59[v69], v71), *&v61[v69], v73);
          v77[1] = v78;
          v79 = vmlaq_f32(vmulq_f32(*&v63[v69], v74), *&v62[v69], v15);
          v80 = &v65[v69 / 0x10];
          v80[-1] = vmlaq_f32(vmulq_f32(*&v63[v69 + 16], v75), *&v62[v69 + 16], v14);
          *v80 = v79;
          v69 += 32;
          --v76;
        }

        while (v76);
      }

      v81 = 2 * v68;
      if (v64 < 4)
      {
        v87 = a3 - 3;
        v86 = 3;
      }

      else
      {
        v82 = v156;
        v83 = v157;
        v85 = v158;
        v84 = v159;
        v86 = 3;
        v87 = a3 - 3;
        do
        {
          if (v81 + v68 <= a3)
          {
            v88 = 0;
          }

          else
          {
            v88 = a3;
          }

          v89 = v81 + v68 - v88;
          if (v89 + v68 <= a3)
          {
            v90 = 0;
          }

          else
          {
            v90 = a3;
          }

          v81 = v89 + v68 - v90;
          if (v27)
          {
            v91 = 0;
            v92 = &v16[2 * v81];
            v93 = &v16[2 * v89];
            v94 = vld1q_dup_f32(v93++);
            v95 = vld1q_dup_f32(v92++);
            v14 = vld1q_dup_f32(v93);
            v96 = vld1q_dup_f32(v92);
            v97 = a4 * a2;
            do
            {
              v98 = &v67[v91];
              v99 = vaddq_f32(*&v67[v91 + 16], vmlaq_f32(vmulq_f32(v95, *&v83[v91 + 16]), v94, *&v84[v91 + 16]));
              *v98 = vaddq_f32(*&v67[v91], vmlaq_f32(vmulq_f32(v95, *&v83[v91]), v94, *&v84[v91]));
              v98[1] = v99;
              v100 = &v65[v91 / 0x10];
              v15 = vaddq_f32(v65[v91 / 0x10], vmlaq_f32(vmulq_f32(v96, *&v85[v91]), v14, *&v82[v91]));
              v100[-1] = vsubq_f32(v65[v91 / 0x10 - 1], vmlaq_f32(vmulq_f32(v96, *&v85[v91 + 16]), v14, *&v82[v91 + 16]));
              *v100 = v15;
              v91 += 32;
              --v97;
            }

            while (v97);
          }

          v86 += 2;
          v87 -= 2;
          v84 += v60;
          v85 -= 64 * v27;
          v83 += v60;
          v82 -= 64 * v27;
        }

        while (v86 < v64);
      }

      a6 = v160;
      if (v86 < v161)
      {
        v101 = &v160[v66 * v86];
        v102 = &v160[v66 * v87];
        do
        {
          if (v81 + v68 <= a3)
          {
            v103 = 0;
          }

          else
          {
            v103 = a3;
          }

          v81 = v81 + v68 - v103;
          if (v27)
          {
            v104 = 0;
            v105 = &v16[2 * v81];
            v106 = vld1q_dup_f32(v105++);
            v107 = vld1q_dup_f32(v105);
            v108 = a4 * a2;
            do
            {
              v109 = &v67[v104];
              v110 = vmlaq_f32(*&v67[v104 + 16], v106, *&v101[v104 + 16]);
              *v109 = vmlaq_f32(*&v67[v104], v106, *&v101[v104]);
              v109[1] = v110;
              v111 = &v65[v104 / 0x10];
              v14 = *&v102[v104 + 16];
              v15 = vmlaq_f32(v65[v104 / 0x10], v107, *&v102[v104]);
              v111[-1] = vmlsq_f32(v65[v104 / 0x10 - 1], v107, v14);
              *v111 = v15;
              v104 += 32;
              --v108;
            }

            while (v108);
          }

          ++v86;
          v101 += v66;
          v102 -= 32 * v27;
        }

        while (v86 != v161);
      }

      ++v68;
      v65 -= 2 * v27;
      v67 += v66;
    }

    while (v68 != v161);
    if (a2 == 1)
    {
      v112 = v153 + 1;
      v113 = &a5[32 * v27 + 16];
      v114 = 1;
      do
      {
        v115 = v113;
        v116 = v112;
        for (j = a4; j; --j)
        {
          v118 = v115[-1];
          v119 = *v115;
          v120 = v116[-1];
          v121 = *v116;
          v122 = vaddq_f32(*v115, *v116);
          v115[-1] = vaddq_f32(v118, v120);
          *v115 = v122;
          v116[-1] = vsubq_f32(v118, v120);
          *v116 = vsubq_f32(v119, v121);
          v116 += 2;
          v115 += 2;
        }

        ++v114;
        v112 -= 2 * v27;
        v113 += v66;
      }

      while (v114 != v161);
    }

    else
    {
      v123 = 8 * (a2 - 1);
      v124 = &a5[32 * v27 + 48];
      v125 = 1;
      v126 = a7;
      v127 = a3 - 1;
      do
      {
        if (a4)
        {
          v128 = 0;
          v129 = v127 * a4;
          v130 = v127 - 1;
          v131 = (a7 + v123 * (v127 - 1));
          v132 = v124;
          v133 = &a5[v66 * v127 + 48];
          do
          {
            v134 = &a5[32 * (v128 + v125 * a4) * a2];
            v135 = *v134;
            v136 = v134[1];
            v137 = &a5[32 * (v128 + v129) * a2];
            v138 = *v137;
            v139 = v137[1];
            *v134 = vaddq_f32(*v134, *v137);
            v134[1] = vaddq_f32(v136, v139);
            v140 = v132;
            *v137 = vsubq_f32(v135, v138);
            v137[1] = vsubq_f32(v136, v139);
            v141 = v133;
            v142 = a2 - 1;
            v143 = v126;
            v144 = v131;
            if (a2)
            {
              do
              {
                v145 = v140[-1];
                v146 = v141[-1];
                v147 = vaddq_f32(v145, v146);
                v148 = vaddq_f32(*v140, *v141);
                v149 = vsubq_f32(v145, v146);
                v150 = vsubq_f32(*v140, *v141);
                v151 = *v143++;
                v140[-1] = vmlaq_n_f32(vmulq_lane_f32(v148, v151, 1), v147, v151.f32[0]);
                *v140 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v147), v151, 1), v148, v151.f32[0]);
                v152 = *v144++;
                v141[-1] = vmlaq_n_f32(vmulq_lane_f32(v150, v152, 1), v149, v152.f32[0]);
                *v141 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v149), v152, 1), v150, v152.f32[0]);
                v141 += 2;
                v140 += 2;
                --v142;
              }

              while (v142);
            }

            ++v128;
            v133 += v23;
            v132 = (v132 + v23);
          }

          while (v128 != a4);
        }

        else
        {
          v130 = v127 - 1;
        }

        ++v125;
        v126 = (v126 + v123);
        v124 += v66;
        v127 = v130;
      }

      while (v125 != v161);
    }
  }

  free(v16);
}

void _ZNK9pocketfft6detail5cfftpIfE5pass4ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a3 << 6;
      v7 = a4 + 4;
      v8 = a5 + 1;
      v9 = &a5[6 * a3 + 1];
      v10 = &a5[2 * a3 + 1];
      do
      {
        v11 = v7[-4];
        v12 = v7[-3];
        v13 = v7[1];
        v14 = vaddq_f32(v11, *v7);
        v15 = vaddq_f32(v12, v13);
        v16 = vsubq_f32(v11, *v7);
        v17 = vsubq_f32(v12, v13);
        v18 = v7[-2];
        v19 = v7[-1];
        v20 = v7[2];
        v21 = v7[3];
        v22 = vaddq_f32(v18, v20);
        v23 = vaddq_f32(v19, v21);
        v24 = vsubq_f32(v18, v20);
        v25 = vsubq_f32(v19, v21);
        v26 = (v8 + v6);
        v8[-1] = vaddq_f32(v14, v22);
        *v8 = vaddq_f32(v15, v23);
        v26[-1] = vsubq_f32(v14, v22);
        *v26 = vsubq_f32(v15, v23);
        v10[-1] = vsubq_f32(v16, v25);
        *v10 = vaddq_f32(v17, v24);
        v7 += 8;
        v9[-1] = vaddq_f32(v16, v25);
        *v9 = vsubq_f32(v17, v24);
        v9 += 2;
        v10 += 2;
        v8 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v27 = 0;
    v28 = a4 + 2;
    v29 = 32 * a2;
    v30 = &a5[6 * a3 * a2];
    v31 = (a6 + 16 * (a2 - 1));
    v32 = &a5[4 * a3 * a2];
    v33 = a6 + 8 * a2 - 8;
    v34 = (a6 + 4);
    v35 = a5;
    v36 = &a5[2 * a3 * a2];
    do
    {
      v37 = &a4[2 * 4 * v27 * a2];
      v38 = *v37;
      v39 = v37[1];
      v40 = &a4[2 * ((4 * v27) | 2) * a2];
      v41 = v40[1];
      v42 = vaddq_f32(v38, *v40);
      v43 = vaddq_f32(v39, v41);
      v44 = vsubq_f32(v38, *v40);
      v45 = vsubq_f32(v39, v41);
      v46 = &a4[2 * ((4 * v27) | 1) * a2];
      v47 = *v46;
      v48 = v46[1];
      v49 = &a4[2 * ((4 * v27) | 3) * a2];
      v50 = v49[1];
      v51 = vaddq_f32(v47, *v49);
      v52 = vaddq_f32(v48, v50);
      v53 = vsubq_f32(v47, *v49);
      v54 = vsubq_f32(v48, v50);
      v55 = &a5[2 * v27 * a2];
      v56 = &a5[2 * (v27 + 2 * a3) * a2];
      *v55 = vaddq_f32(v42, v51);
      v55[1] = vaddq_f32(v43, v52);
      *v56 = vsubq_f32(v42, v51);
      v56[1] = vsubq_f32(v43, v52);
      v57 = &a5[2 * (v27 + a3) * a2];
      v58 = &a5[2 * (v27 + 3 * a3) * a2];
      *v57 = vsubq_f32(v44, v54);
      v57[1] = vaddq_f32(v45, v53);
      *v58 = vaddq_f32(v44, v54);
      v58[1] = vsubq_f32(v45, v53);
      if (a2)
      {
        v59 = 0;
        v60 = v34;
        v61 = v33;
        v62 = v31;
        v63 = a2 - 1;
        do
        {
          v64 = v28[v59];
          v65 = v28[v59 + 1];
          v66 = &v28[v59 + v29 / 0x10];
          v67 = *v66;
          v68 = v66[1];
          v69 = &v66[v29 / 0x10];
          v70 = *v69;
          v71 = v69[1];
          v72 = &v69[v29 / 0x10];
          v73 = v72[1];
          v74 = vaddq_f32(v64, v70);
          v75 = vaddq_f32(v65, v71);
          v76 = vsubq_f32(v64, v70);
          v77 = vsubq_f32(v65, v71);
          v78 = vaddq_f32(v67, *v72);
          v79 = vaddq_f32(v68, v73);
          v80 = vsubq_f32(v67, *v72);
          v81 = vsubq_f32(v68, v73);
          v82 = &v35[v59];
          v83 = vsubq_f32(v76, v81);
          v84 = vaddq_f32(v77, v80);
          v85 = *(v60 - 1);
          v86 = *v60;
          v87 = &v36[v59];
          v82[2] = vaddq_f32(v74, v78);
          v82[3] = vaddq_f32(v75, v79);
          v87[2] = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v84), v86), v83, v85);
          v87[3] = vmlaq_n_f32(vmulq_n_f32(v84, v85), v83, v86);
          v88 = v61;
          v89 = vld1q_dup_f32(v88++);
          v90 = vsubq_f32(v74, v78);
          v91 = vsubq_f32(v75, v79);
          v73.f32[0] = *v88;
          v92 = vmlaq_f32(vmulq_n_f32(vnegq_f32(v91), *v88), v89, v90);
          v93 = &v32[v59];
          v93[2] = v92;
          v93[3] = vmlaq_n_f32(vmulq_f32(v91, v89), v90, v73.f32[0]);
          v94 = v62;
          v95 = vsubq_f32(v77, v80);
          v96 = vld1q_dup_f32(v94++);
          v90.f32[0] = *v94;
          v97 = &v30[v59];
          v98 = vaddq_f32(v76, v81);
          v59 += 2;
          v97[2] = vmlaq_f32(vmulq_n_f32(vnegq_f32(v95), v90.f32[0]), v96, v98);
          v97[3] = vmlaq_n_f32(vmulq_f32(v95, v96), v98, v90.f32[0]);
          v62 += 2;
          v61 += 2;
          v60 += 2;
          --v63;
        }

        while (v63);
      }

      ++v27;
      v28 += 8 * a2;
      v30 = (v30 + v29);
      v35 = (v35 + v29);
      v32 = (v32 + v29);
      v36 = (v36 + v29);
    }

    while (v27 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass8ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v263 = a4;
  v6 = a3;
  v250 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = a4 + 8;
      v8 = vdupq_n_s32(0x3F3504F3u);
      do
      {
        v9 = v7[-6];
        v10 = v7[-5];
        v11 = v7[2];
        v12 = v7[3];
        v13 = vaddq_f32(v9, v11);
        v14 = vaddq_f32(v10, v12);
        v15 = vsubq_f32(v9, v11);
        v16 = vsubq_f32(v10, v12);
        v17 = v7[-2];
        v18 = v7[-1];
        v19 = v7[6];
        v20 = v7[7];
        v21 = vaddq_f32(v17, v19);
        v22 = vaddq_f32(v18, v20);
        v23 = vsubq_f32(v17, v19);
        v24 = vsubq_f32(v18, v20);
        v25 = vaddq_f32(v13, v21);
        v26 = vaddq_f32(v14, v22);
        v27 = vsubq_f32(v13, v21);
        v28 = vsubq_f32(v14, v22);
        v29 = vsubq_f32(v15, v24);
        v30 = vaddq_f32(v16, v23);
        v31 = vaddq_f32(v15, v24);
        v32 = vsubq_f32(v16, v23);
        v33 = vmulq_f32(vsubq_f32(v29, v30), v8);
        v34 = vmulq_f32(vaddq_f32(v30, v29), v8);
        v35 = vmulq_f32(vsubq_f32(vnegq_f32(v31), v32), v8);
        v36 = vmulq_f32(vsubq_f32(v31, v32), v8);
        v37 = v7[-8];
        v38 = v7[-7];
        v39 = v7[1];
        v40 = vaddq_f32(v37, *v7);
        v41 = vaddq_f32(v38, v39);
        v42 = vsubq_f32(v37, *v7);
        v43 = vsubq_f32(v38, v39);
        v44 = v7[-4];
        v45 = v7[-3];
        v46 = v7[4];
        v47 = v7[5];
        v48 = vaddq_f32(v44, v46);
        v49 = vaddq_f32(v45, v47);
        v50 = vsubq_f32(v44, v46);
        v51 = vsubq_f32(v45, v47);
        v52 = &a5[8 * a3];
        v53 = vaddq_f32(v40, v48);
        v54 = vaddq_f32(v41, v49);
        *a5 = vaddq_f32(v25, v53);
        a5[1] = vaddq_f32(v26, v54);
        *v52 = vsubq_f32(v53, v25);
        v52[1] = vsubq_f32(v54, v26);
        v55 = &a5[4 * a3];
        v56 = (a5 + ((192 * a3) | 0x10));
        v57 = vsubq_f32(v40, v48);
        v58 = vsubq_f32(v41, v49);
        *v55 = vsubq_f32(v57, v28);
        v55[1] = vaddq_f32(v27, v58);
        v56[-1] = vaddq_f32(v28, v57);
        *v56 = vsubq_f32(v58, v27);
        v59 = &a5[2 * a3];
        v60 = (a5 + ((160 * a3) | 0x10));
        v61 = vsubq_f32(v42, v51);
        v62 = vaddq_f32(v43, v50);
        *v59 = vaddq_f32(v33, v61);
        v59[1] = vaddq_f32(v34, v62);
        v60[-1] = vsubq_f32(v61, v33);
        *v60 = vsubq_f32(v62, v34);
        v63 = (a5 + ((96 * a3) | 0x10));
        v64 = (a5 + ((224 * a3) | 0x10));
        v65 = vaddq_f32(v42, v51);
        v66 = vsubq_f32(v43, v50);
        v63[-1] = vaddq_f32(v35, v65);
        *v63 = vaddq_f32(v36, v66);
        v64[-1] = vsubq_f32(v65, v35);
        *v64 = vsubq_f32(v66, v36);
        v7 += 16;
        a5 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else if (a3)
  {
    v67 = 0;
    v257 = 2 * a3;
    v258 = 4 * a3;
    v259 = 3 * a3;
    v256 = 6 * a3;
    v255 = 7 * a3;
    v68 = &a5[14 * a3 * a2];
    v69 = &a4[2 * a2 + 3];
    v70 = &a4[10 * a2 + 3];
    v71 = &a5[6 * a3 * a2];
    v72 = &a4[6 * a2 + 3];
    v73 = 32 * a2;
    v74 = &a4[14 * a2 + 3];
    v252 = 5 * a3;
    v253 = a2 << 8;
    v75 = &a5[10 * a3 * a2];
    v76 = &a4[8 * a2];
    v77 = &a4[12 * a2];
    v249 = (a6 + 4);
    v78 = &a4[4 * a2];
    v79 = &a5[12 * a3 * a2];
    v80 = &a5[2 * a3 * a2];
    v251 = 24 * a2 - 20;
    v81 = 8 * a2 - 8;
    v82 = &a5[4 * a3 * a2];
    v83 = vdupq_n_s32(0x3F3504F3u);
    v84 = a5;
    v85 = &a5[8 * a3 * a2];
    v261 = a5;
    do
    {
      v86 = &v263[2 * ((8 * v67) | 1) * a2];
      v87 = *v86;
      v88 = v86[1];
      v89 = &v263[2 * ((8 * v67) | 5) * a2];
      v90 = v89[1];
      v91 = vaddq_f32(v87, *v89);
      v92 = vaddq_f32(v88, v90);
      v93 = vsubq_f32(v87, *v89);
      v94 = vsubq_f32(v88, v90);
      v95 = &v263[2 * ((8 * v67) | 3) * a2];
      v96 = *v95;
      v97 = v95[1];
      v98 = &v263[2 * ((8 * v67) | 7) * a2];
      v99 = v98[1];
      v100 = vaddq_f32(v96, *v98);
      v101 = vaddq_f32(v97, v99);
      v102 = vsubq_f32(v96, *v98);
      v103 = vsubq_f32(v97, v99);
      v104 = vaddq_f32(v91, v100);
      v105 = vaddq_f32(v92, v101);
      v106 = vsubq_f32(v91, v100);
      v107 = vsubq_f32(v92, v101);
      v108 = vsubq_f32(v93, v103);
      v109 = vaddq_f32(v94, v102);
      v110 = vaddq_f32(v93, v103);
      v111 = vsubq_f32(v94, v102);
      v112 = vmulq_f32(vsubq_f32(v108, v109), v83);
      v113 = vmulq_f32(vaddq_f32(v109, v108), v83);
      v114 = vmulq_f32(vsubq_f32(vnegq_f32(v110), v111), v83);
      v115 = vmulq_f32(vsubq_f32(v110, v111), v83);
      v116 = &v263[2 * 8 * v67 * a2];
      v117 = *v116;
      v118 = v116[1];
      v119 = &v263[2 * ((8 * v67) | 4) * a2];
      v120 = v119[1];
      v121 = vaddq_f32(v117, *v119);
      v122 = vaddq_f32(v118, v120);
      v123 = vsubq_f32(v117, *v119);
      v124 = vsubq_f32(v118, v120);
      v125 = &v263[2 * ((8 * v67) | 2) * a2];
      v126 = *v125;
      v127 = v125[1];
      v128 = &v263[2 * ((8 * v67) | 6) * a2];
      v129 = v128[1];
      v130 = vaddq_f32(v126, *v128);
      v131 = vaddq_f32(v127, v129);
      v132 = vsubq_f32(v126, *v128);
      v133 = vsubq_f32(v127, v129);
      v134 = &a5[2 * v67 * a2];
      v135 = &a5[2 * (v67 + v258) * a2];
      v136 = vaddq_f32(v121, v130);
      v137 = vaddq_f32(v122, v131);
      *v134 = vaddq_f32(v104, v136);
      v134[1] = vaddq_f32(v105, v137);
      *v135 = vsubq_f32(v136, v104);
      v135[1] = vsubq_f32(v137, v105);
      v138 = &a5[2 * (v67 + v257) * a2];
      v139 = &a5[2 * (v67 + v256) * a2];
      v140 = vsubq_f32(v121, v130);
      v141 = vsubq_f32(v122, v131);
      *v138 = vsubq_f32(v140, v107);
      v138[1] = vaddq_f32(v106, v141);
      *v139 = vaddq_f32(v107, v140);
      v139[1] = vsubq_f32(v141, v106);
      v142 = &a5[2 * (v67 + v6) * a2];
      v143 = &a5[2 * (v67 + v252) * a2];
      v144 = vsubq_f32(v123, v133);
      v145 = vaddq_f32(v124, v132);
      *v142 = vaddq_f32(v112, v144);
      v142[1] = vaddq_f32(v113, v145);
      *v143 = vsubq_f32(v144, v112);
      v143[1] = vsubq_f32(v145, v113);
      v146 = &a5[2 * (v67 + v259) * a2];
      v264 = v67;
      v147 = &a5[2 * (v67 + v255) * a2];
      v148 = vaddq_f32(v123, v133);
      v149 = vsubq_f32(v124, v132);
      *v146 = vaddq_f32(v114, v148);
      v146[1] = vaddq_f32(v115, v149);
      *v147 = vsubq_f32(v148, v114);
      v147[1] = vsubq_f32(v149, v115);
      if (a2)
      {
        v150 = 0;
        v151 = v249;
        v152 = v250;
        do
        {
          v153 = *(v69 + v150 * 16 - 16);
          v154 = *(v69 + v150 * 16);
          v155 = *(v70 + v150 * 16 - 16);
          v156 = *(v70 + v150 * 16);
          v157 = vaddq_f32(v153, v155);
          v158 = vaddq_f32(v154, v156);
          v159 = vsubq_f32(v153, v155);
          v160 = *(v72 + v150 * 16 - 16);
          v161 = *(v72 + v150 * 16);
          v162 = vsubq_f32(v154, v156);
          v164 = *(v74 + v150 * 16 - 16);
          v163 = *(v74 + v150 * 16);
          v165 = vaddq_f32(v160, v164);
          v166 = vaddq_f32(v161, v163);
          v167 = vsubq_f32(v160, v164);
          v168 = vsubq_f32(v161, v163);
          v169 = vaddq_f32(v157, v165);
          v170 = vaddq_f32(v158, v166);
          v171 = vsubq_f32(v157, v165);
          v172 = vsubq_f32(v158, v166);
          v173 = vsubq_f32(v159, v168);
          v174 = vaddq_f32(v162, v167);
          v175 = vaddq_f32(v159, v168);
          v176 = vsubq_f32(v162, v167);
          v177 = a4[v150 + 2];
          v178 = a4[v150 + 3];
          v179 = vsubq_f32(v173, v174);
          v180 = v76[v150 + 2];
          v181 = v76[v150 + 3];
          v182 = vaddq_f32(v177, v180);
          v183 = vaddq_f32(v178, v181);
          v184 = vsubq_f32(v177, v180);
          v185 = vaddq_f32(v174, v173);
          v186 = vsubq_f32(v178, v181);
          v187 = v78[v150 + 2];
          v188 = v78[v150 + 3];
          v189 = vnegq_f32(v175);
          v190 = v77[v150 + 2];
          v191 = v77[v150 + 3];
          v192 = vaddq_f32(v187, v190);
          v193 = vaddq_f32(v188, v191);
          v194 = vsubq_f32(v187, v190);
          v195 = vsubq_f32(v175, v176);
          v196 = vsubq_f32(v188, v191);
          v197 = vaddq_f32(v182, v192);
          v198 = vaddq_f32(v183, v193);
          v199 = vsubq_f32(v182, v192);
          v200 = vsubq_f32(v183, v193);
          v201 = vsubq_f32(v189, v176);
          v202 = vaddq_f32(v169, v197);
          v203 = &v84[v150];
          v204 = vsubq_f32(v197, v169);
          v203[2] = v202;
          v203[3] = vaddq_f32(v170, v198);
          v205 = vsubq_f32(v198, v170);
          v170.f32[0] = *(v151 + v251 - 8);
          v197.f32[0] = *(v151 + v251 - 4);
          v206 = vmulq_n_f32(vnegq_f32(v205), v197.f32[0]);
          v207 = vsubq_f32(v199, v172);
          v208 = vaddq_f32(v171, v200);
          v209 = vmlaq_n_f32(vmulq_n_f32(v205, v170.f32[0]), v204, v197.f32[0]);
          v193.f32[0] = *(v151 + v81 - 4);
          v197.f32[0] = *(v151 + v81);
          v210 = vaddq_f32(v172, v199);
          v211 = vmulq_n_f32(vnegq_f32(v208), v197.f32[0]);
          v212 = vmlaq_n_f32(vmulq_n_f32(v208, v193.f32[0]), v207, v197.f32[0]);
          v213 = vmulq_f32(v179, v83);
          v214 = vmulq_f32(v185, v83);
          v215 = vmulq_f32(v195, v83);
          v216 = &v85[v150];
          v217 = &v82[v150];
          v218 = vmlaq_n_f32(v206, v204, v170.f32[0]);
          v219 = vsubq_f32(v200, v171);
          v204.f32[0] = v151[10 * v250 - 1];
          v170.f32[0] = v151[10 * v250];
          v220 = &v79[v150];
          v221 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v219), v170.f32[0]), v210, v204.f32[0]);
          v216[2] = v218;
          v216[3] = v209;
          v222 = vmlaq_n_f32(vmulq_n_f32(v219, v204.f32[0]), v210, v170.f32[0]);
          v223 = vsubq_f32(v184, v196);
          v224 = vaddq_f32(v186, v194);
          v225 = vaddq_f32(v184, v196);
          v217[2] = vmlaq_n_f32(v211, v207, v193.f32[0]);
          v217[3] = v212;
          v226 = vsubq_f32(v186, v194);
          v227 = vaddq_f32(v213, v223);
          v228 = vaddq_f32(v214, v224);
          v196.f32[0] = *(v151 - 1);
          v220[2] = v221;
          v220[3] = v222;
          v229 = &v80[v150];
          v230 = v151;
          v232 = vld1q_dup_f32(v230);
          v254 = 12 * v250;
          v231 = &v230[v254];
          v233 = vmulq_f32(v201, v83);
          v234 = vmulq_f32(v232, vnegq_f32(v228));
          v235 = vsubq_f32(v223, v213);
          v236 = vsubq_f32(v224, v214);
          v237 = vmlaq_f32(vmulq_n_f32(v228, v196.f32[0]), v232, v227);
          v223.f32[0] = v151[v73 / 4 - 9];
          v232.f32[0] = v151[v73 / 4 - 8];
          v238 = &v75[v150];
          v239 = vmlaq_n_f32(v234, v227, v196.f32[0]);
          v240 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v236), v232.f32[0]), v235, v223.f32[0]);
          v241 = vmulq_n_f32(v236, v223.f32[0]);
          v242 = vaddq_f32(v233, v225);
          v243 = vaddq_f32(v215, v226);
          v244 = vmlaq_n_f32(v241, v235, v232.f32[0]);
          v235.f32[0] = v151[4 * v250 - 1];
          v232.f32[0] = v151[4 * v250];
          v245 = &v71[v150];
          v229[2] = v239;
          v229[3] = v237;
          v238[2] = v240;
          v238[3] = v244;
          v246 = vsubq_f32(v225, v233);
          v247 = vsubq_f32(v226, v215);
          v240.i32[0] = *(v231 - 1);
          v215.i32[0] = *v231;
          v245[2] = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v243), v232.f32[0]), v242, v235.f32[0]);
          v245[3] = vmlaq_n_f32(vmulq_n_f32(v243, v235.f32[0]), v242, v232.f32[0]);
          v248 = &v68[v150];
          v248[2] = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v247), v215.f32[0]), v246, v240.f32[0]);
          v248[3] = vmlaq_n_f32(vmulq_n_f32(v247, v240.f32[0]), v246, v215.f32[0]);
          v150 += 2;
          v151 += 2;
          --v152;
        }

        while (v152);
      }

      ++v67;
      v68 = (v68 + v73);
      v69 += v253;
      v70 += v253;
      v71 = (v71 + v73);
      v72 += v253;
      v74 += v253;
      v75 = (v75 + v73);
      a4 = (a4 + v253);
      v76 = (v76 + v253);
      v78 = (v78 + v253);
      v77 = (v77 + v253);
      v84 = (v84 + v73);
      v80 = (v80 + v73);
      v79 = (v79 + v73);
      v82 = (v82 + v73);
      v85 = (v85 + v73);
      v6 = a3;
      a5 = v261;
    }

    while (v264 + 1 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass2ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a4 + 2;
      v7 = a5 + 1;
      v8 = &a5[2 * a3 + 1];
      do
      {
        v9 = v6[-2];
        v10 = v6[-1];
        v11 = *v6;
        v12 = v6[1];
        v6 += 4;
        v7[-1] = vaddq_f32(v9, v11);
        *v7 = vaddq_f32(v10, v12);
        v8[-1] = vsubq_f32(v9, v11);
        *v8 = vsubq_f32(v10, v12);
        v8 += 2;
        v7 += 2;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v13 = 0;
    v14 = &a5[2 * a3 * a2];
    v15 = 32 * a2;
    v16 = a2 << 6;
    v17 = &a4[2 * a2];
    v18 = (a6 + 4);
    v19 = a5;
    v20 = a4;
    do
    {
      v21 = &a4[2 * 2 * v13 * a2];
      v22 = &a4[2 * ((2 * v13) | 1) * a2];
      v23 = *v21;
      v24 = v21[1];
      v25 = *v22;
      v26 = v22[1];
      v27 = vaddq_f32(*v21, *v22);
      v28 = &a5[2 * v13 * a2];
      *v28 = v27;
      v28[1] = vaddq_f32(v24, v26);
      v29 = &a5[2 * (v13 + a3) * a2];
      *v29 = vsubq_f32(v23, v25);
      v29[1] = vsubq_f32(v24, v26);
      if (a2)
      {
        v30 = 0;
        v31 = v18;
        v32 = a2 - 1;
        do
        {
          v33 = v20[v30 + 2];
          v34 = v20[v30 + 3];
          v35 = v17[v30 + 2];
          v36 = v17[v30 + 3];
          v37 = &v19[v30];
          v37[2] = vaddq_f32(v33, v35);
          v37[3] = vaddq_f32(v34, v36);
          v38 = vsubq_f32(v33, v35);
          v39 = vsubq_f32(v34, v36);
          v35.f32[0] = *(v31 - 1);
          v40 = &v14[v30];
          v41 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v39), *v31), v38, v35.f32[0]);
          v42 = vmlaq_n_f32(vmulq_n_f32(v39, v35.f32[0]), v38, *v31);
          v40[2] = v41;
          v40[3] = v42;
          v30 += 2;
          v31 += 2;
          --v32;
        }

        while (v32);
      }

      ++v13;
      v14 = (v14 + v15);
      v20 = (v20 + v16);
      v17 = (v17 + v16);
      v19 = (v19 + v15);
    }

    while (v13 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass3ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a5 + 1;
      v7 = 2 * a3;
      v8 = &a5[4 * a3 + 1];
      v9 = a4 + 3;
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vdupq_n_s32(0xBF5DB3D7);
      v12 = vdupq_n_s32(0x3F5DB3D7u);
      do
      {
        v13 = v9[-3];
        v14 = v9[-2];
        v15 = v9[-1];
        v16 = v9[1];
        v17 = v9[2];
        v18 = vaddq_f32(v15, v16);
        v19 = vaddq_f32(*v9, v17);
        v20 = vsubq_f32(*v9, v17);
        v6[-1] = vaddq_f32(v13, v18);
        *v6 = vaddq_f32(v14, v19);
        v21 = vsubq_f32(v13, vmulq_f32(v18, v10));
        v22 = vsubq_f32(v14, vmulq_f32(v19, v10));
        v23 = vmulq_f32(v20, v11);
        v24 = vmulq_f32(vsubq_f32(v15, v16), v12);
        v25 = &v6[v7];
        v25[-1] = vaddq_f32(v21, v23);
        *v25 = vaddq_f32(v24, v22);
        v8[-1] = vsubq_f32(v21, v23);
        *v8 = vsubq_f32(v22, v24);
        v6 += 2;
        v8 += 2;
        v9 += 6;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v26 = 0;
    v27 = &a5[4 * a3 * a2];
    v28 = 32 * a2;
    v29 = 96 * a2;
    v30 = &a4[2 * a2];
    v31 = a6 + 8 * a2 - 4;
    v32 = (a6 + 4);
    v33.i64[0] = 0x3F0000003F000000;
    v33.i64[1] = 0x3F0000003F000000;
    v34 = vdupq_n_s32(0xBF5DB3D7);
    v35 = &a4[4 * a2];
    v36 = vdupq_n_s32(0x3F5DB3D7u);
    v37 = a5;
    v38 = a4;
    v39 = &a5[2 * a3 * a2];
    do
    {
      v40 = 3 * v26 * a2;
      v41 = &a4[2 * v40];
      v42 = *v41;
      v43 = v41[1];
      v44 = &a4[2 * a2 + 2 * v40];
      v45 = v44[1];
      v46 = &a4[2 * (3 * v26 + 2) * a2];
      v47 = v46[1];
      v48 = vaddq_f32(*v44, *v46);
      v49 = vaddq_f32(v45, v47);
      v50 = vsubq_f32(*v44, *v46);
      v51 = &a5[2 * v26 * a2];
      *v51 = vaddq_f32(*v41, v48);
      v51[1] = vaddq_f32(v43, v49);
      v52 = vsubq_f32(v42, vmulq_f32(v48, v33));
      v53 = vsubq_f32(v43, vmulq_f32(v49, v33));
      v54 = vmulq_f32(vsubq_f32(v45, v47), v34);
      v55 = vmulq_f32(v50, v36);
      v56 = &a5[2 * (v26 + a3) * a2];
      v57 = &a5[2 * (v26 + 2 * a3) * a2];
      *v56 = vaddq_f32(v52, v54);
      v56[1] = vaddq_f32(v55, v53);
      *v57 = vsubq_f32(v52, v54);
      v57[1] = vsubq_f32(v53, v55);
      if (a2)
      {
        v58 = 0;
        v59 = v32;
        v60 = v31;
        v61 = a2 - 1;
        do
        {
          v62 = v38[v58 + 2];
          v63 = v38[v58 + 3];
          v64 = v30[v58 + 2];
          v65 = v30[v58 + 3];
          v66 = v35[v58 + 2];
          v67 = v35[v58 + 3];
          v68 = vaddq_f32(v64, v66);
          v69 = vaddq_f32(v65, v67);
          v70 = &v37[v58];
          v70[2] = vaddq_f32(v62, v68);
          v70[3] = vaddq_f32(v63, v69);
          v71 = vsubq_f32(v62, vmulq_f32(v68, v33));
          v72 = vsubq_f32(v63, vmulq_f32(v69, v33));
          v73 = vmulq_f32(vsubq_f32(v65, v67), v34);
          v74 = vmulq_f32(vsubq_f32(v64, v66), v36);
          v75 = vaddq_f32(v71, v73);
          v76 = vaddq_f32(v74, v72);
          v68.f32[0] = *(v59 - 1);
          v77 = &v39[v58];
          v78 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v76), *v59), v75, v68.f32[0]);
          v79 = vmlaq_n_f32(vmulq_n_f32(v76, v68.f32[0]), v75, *v59);
          v77[2] = v78;
          v77[3] = v79;
          v80 = vsubq_f32(v71, v73);
          v81 = vsubq_f32(v72, v74);
          v74.f32[0] = *(v60 - 1);
          v82 = &v27[v58];
          v83 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v81), *v60), v80, v74.f32[0]);
          v84 = vmlaq_n_f32(vmulq_n_f32(v81, v74.f32[0]), v80, *v60);
          v82[2] = v83;
          v82[3] = v84;
          v58 += 2;
          v60 += 2;
          v59 += 2;
          --v61;
        }

        while (v61);
      }

      ++v26;
      v27 = (v27 + v28);
      v38 = (v38 + v29);
      v30 = (v30 + v29);
      v35 = (v35 + v29);
      v37 = (v37 + v28);
      v39 = (v39 + v28);
    }

    while (v26 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass5ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v7 = a5 + 1;
      v8 = 2 * a3;
      v9 = &a5[6 * a3 + 1];
      v10 = vdupq_n_s32(0x3E9E377Au);
      v11 = vdupq_n_s32(0xBF4F1BBD);
      v12 = a4 + 5;
      v13 = vdupq_n_s32(0x3F167918u);
      v14 = &a5[8 * a3 + 1];
      v15 = vdupq_n_s32(0x3F737871u);
      v16 = &a5[4 * a3 + 1];
      v17 = vdupq_n_s32(0xBF737871);
      do
      {
        v18 = v12[-5];
        v19 = v12[-4];
        v20 = v12[-3];
        v21 = v12[-2];
        v22 = v12[3];
        v23 = v12[4];
        v24 = vaddq_f32(v20, v22);
        v25 = vaddq_f32(v21, v23);
        v26 = vsubq_f32(v20, v22);
        v27 = vsubq_f32(v21, v23);
        v28 = v12[-1];
        v29 = v12[1];
        v30 = v12[2];
        v31 = vaddq_f32(v28, v29);
        v32 = vaddq_f32(*v12, v30);
        v33 = vsubq_f32(v28, v29);
        v34 = vsubq_f32(*v12, v30);
        v7[-1] = vaddq_f32(vaddq_f32(v18, v24), v31);
        *v7 = vaddq_f32(vaddq_f32(v19, v25), v32);
        v35 = vmlaq_f32(vmlaq_f32(v18, v10, v24), v11, v31);
        v36 = vmlaq_f32(vmlaq_f32(v19, v10, v25), v11, v32);
        v37 = vmlaq_f32(vmulq_f32(v33, v13), v15, v26);
        v38 = vmlaq_f32(vmulq_f32(v34, v13), v15, v27);
        v39 = &v7[v8];
        v39[-1] = vsubq_f32(v35, v38);
        *v39 = vaddq_f32(v36, v37);
        v14[-1] = vaddq_f32(v35, v38);
        *v14 = vsubq_f32(v36, v37);
        v40 = vmlaq_f32(vmlaq_f32(v18, v11, v24), v10, v31);
        v41 = vmlaq_f32(vmlaq_f32(v19, v11, v25), v10, v32);
        v42 = vmlaq_f32(vmulq_f32(v33, v17), v13, v26);
        v43 = vmlaq_f32(vmulq_f32(v34, v17), v13, v27);
        v16[-1] = vsubq_f32(v40, v43);
        *v16 = vaddq_f32(v41, v42);
        v7 += 2;
        v14 += 2;
        v9[-1] = vaddq_f32(v40, v43);
        *v9 = vsubq_f32(v41, v42);
        v16 += 2;
        v9 += 2;
        v12 += 10;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v44 = 0;
    v45 = 32 * a2;
    v46 = &a5[6 * a3 * a2];
    v47 = 160 * a2;
    v48 = &a4[2 * a2];
    v49 = &a4[8 * a2];
    v50 = &a4[4 * a2];
    v51 = &a4[6 * a2];
    v153 = (a6 + 24 * v6);
    v152 = a6 + 8 * a2 - 4;
    v52 = vdupq_n_s32(0x3E9E377Au);
    v53 = &a5[4 * a3 * a2];
    v151 = (a6 + 4);
    v54 = vdupq_n_s32(0xBF4F1BBD);
    v150 = (a6 + 16 * v6);
    v55 = vdupq_n_s32(0x3F167918u);
    v56 = vdupq_n_s32(0x3F737871u);
    v57 = &a5[8 * a3 * a2];
    v58 = vdupq_n_s32(0xBF737871);
    v59 = a5;
    v60 = a4;
    v61 = &a5[2 * a3 * a2];
    do
    {
      v62 = 5 * v44 * a2;
      v63 = &a4[2 * v62];
      v64 = *v63;
      v65 = v63[1];
      v66 = &a4[2 * a2 + 2 * v62];
      v67 = *v66;
      v68 = v66[1];
      v69 = &a4[2 * (5 * v44 + 4) * a2];
      v70 = v69[1];
      v71 = vaddq_f32(v67, *v69);
      v72 = vaddq_f32(v68, v70);
      v73 = vsubq_f32(v67, *v69);
      v74 = vsubq_f32(v68, v70);
      v75 = &a4[2 * (5 * v44 + 2) * a2];
      v76 = v75[1];
      v77 = &a4[2 * (5 * v44 + 3) * a2];
      v78 = v77[1];
      v79 = vaddq_f32(*v75, *v77);
      v80 = vaddq_f32(v76, v78);
      v81 = vsubq_f32(*v75, *v77);
      v82 = vsubq_f32(v76, v78);
      v83 = &a5[2 * v44 * a2];
      *v83 = vaddq_f32(vaddq_f32(*v63, v71), v79);
      v83[1] = vaddq_f32(vaddq_f32(v65, v72), v80);
      v84 = vmlaq_f32(vmlaq_f32(v64, v52, v71), v54, v79);
      v85 = vmlaq_f32(vmlaq_f32(v65, v52, v72), v54, v80);
      v86 = vmlaq_f32(vmulq_f32(v81, v55), v56, v73);
      v87 = vmlaq_f32(vmulq_f32(v82, v55), v56, v74);
      v88 = &a5[2 * (v44 + a3) * a2];
      v89 = &a5[2 * (v44 + 4 * a3) * a2];
      *v88 = vsubq_f32(v84, v87);
      v88[1] = vaddq_f32(v85, v86);
      *v89 = vaddq_f32(v84, v87);
      v89[1] = vsubq_f32(v85, v86);
      v90 = vmlaq_f32(vmlaq_f32(v64, v54, v71), v52, v79);
      v91 = vmlaq_f32(vmlaq_f32(v65, v54, v72), v52, v80);
      v92 = vmlaq_f32(vmulq_f32(v81, v58), v55, v73);
      v93 = vmlaq_f32(vmulq_f32(v82, v58), v55, v74);
      v94 = &a5[2 * (v44 + 2 * a3) * a2];
      v95 = &a5[2 * (v44 + 3 * a3) * a2];
      *v94 = vsubq_f32(v90, v93);
      v94[1] = vaddq_f32(v91, v92);
      *v95 = vaddq_f32(v90, v93);
      v95[1] = vsubq_f32(v91, v92);
      if (a2)
      {
        v96 = 0;
        v97 = v151;
        v98 = v152;
        v99 = v153;
        v100 = v150;
        v101 = a2 - 1;
        do
        {
          v103 = v60[v96 + 2];
          v102 = v60[v96 + 3];
          v104 = v48[v96 + 2];
          v105 = v48[v96 + 3];
          v106 = v49[v96 + 2];
          v107 = v49[v96 + 3];
          v108 = vaddq_f32(v104, v106);
          v109 = vaddq_f32(v105, v107);
          v110 = vsubq_f32(v104, v106);
          v111 = v50[v96 + 2];
          v112 = v50[v96 + 3];
          v113 = v51[v96 + 2];
          v114 = v51[v96 + 3];
          v115 = vsubq_f32(v105, v107);
          v116 = vaddq_f32(v111, v113);
          v117 = vaddq_f32(v112, v114);
          v118 = vsubq_f32(v111, v113);
          v119 = vsubq_f32(v112, v114);
          v120 = &v59[v96];
          v121 = vmlaq_f32(vmlaq_f32(v103, v52, v108), v54, v116);
          v122 = vmlaq_f32(vmlaq_f32(v102, v52, v109), v54, v117);
          v120[2] = vaddq_f32(vaddq_f32(v103, v108), v116);
          v120[3] = vaddq_f32(vaddq_f32(v102, v109), v117);
          v123 = vmlaq_f32(vmulq_f32(v118, v55), v56, v110);
          v124 = vmlaq_f32(vmulq_f32(v119, v55), v56, v115);
          v125 = vaddq_f32(v122, v123);
          v126 = vsubq_f32(v121, v124);
          v127 = *(v97 - 1);
          v128 = &v61[v96];
          v129 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v125), *v97), v126, v127);
          v130 = vmlaq_n_f32(vmulq_n_f32(v125, v127), v126, *v97);
          v131 = vaddq_f32(v121, v124);
          v132 = vsubq_f32(v122, v123);
          v128[2] = v129;
          v128[3] = v130;
          v133 = v99;
          v134 = vld1q_dup_f32(v133++);
          v135 = &v57[v96];
          v122.f32[0] = *v133;
          v136 = vmlaq_f32(vmlaq_f32(v103, v54, v108), v52, v116);
          v137 = vmlaq_f32(vmlaq_f32(v102, v54, v109), v52, v117);
          v138 = vmlaq_f32(vmulq_f32(v118, v58), v55, v110);
          v139 = vmlaq_f32(vmulq_f32(v119, v58), v55, v115);
          v140 = vmlaq_f32(vmulq_n_f32(vnegq_f32(v132), *v133), v134, v131);
          v141 = vsubq_f32(v136, v139);
          v142 = vaddq_f32(v137, v138);
          v117.f32[0] = *(v98 - 1);
          v118.f32[0] = *v98;
          v143 = &v53[v96];
          v144 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v142), *v98), v141, v117.f32[0]);
          v135[2] = v140;
          v135[3] = vmlaq_n_f32(vmulq_f32(v132, v134), v131, v122.f32[0]);
          v143[2] = v144;
          v143[3] = vmlaq_n_f32(vmulq_n_f32(v142, v117.f32[0]), v141, v118.f32[0]);
          v145 = vaddq_f32(v136, v139);
          v146 = v100;
          v147 = vsubq_f32(v137, v138);
          v148 = vld1q_dup_f32(v146++);
          v141.f32[0] = *v146;
          v149 = &v46[v96];
          v96 += 2;
          v100 += 2;
          v149[2] = vmlaq_f32(vmulq_n_f32(vnegq_f32(v147), v141.f32[0]), v148, v145);
          v149[3] = vmlaq_n_f32(vmulq_f32(v147, v148), v145, v141.f32[0]);
          v99 += 2;
          v98 += 2;
          v97 += 2;
          --v101;
        }

        while (v101);
      }

      ++v44;
      v46 = (v46 + v45);
      v60 = (v60 + v47);
      v48 = (v48 + v47);
      v49 = (v49 + v47);
      v50 = (v50 + v47);
      v51 = (v51 + v47);
      v59 = (v59 + v45);
      v53 = (v53 + v45);
      v57 = (v57 + v45);
      v61 = (v61 + v45);
    }

    while (v44 != a3);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5pass7ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v229 = a5;
  v230 = a4;
  v220 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = a5 + 1;
      v7 = 2 * a3;
      v8 = vdupq_n_s32(0x3F1F9D07u);
      v9 = vdupq_n_s32(0xBE63DC87);
      v10 = &a5[12 * a3 + 1];
      v11 = &a5[10 * a3 + 1];
      v12 = vdupq_n_s32(0xBF66A5E5);
      v13 = &a5[6 * a3 + 1];
      v14 = a4 + 7;
      v15 = vdupq_n_s32(0x3F7994E0u);
      v16 = &a5[4 * a3 + 1];
      v17 = vdupq_n_s32(0x3F48261Cu);
      v18 = &a5[8 * a3 + 1];
      v19 = vdupq_n_s32(0x3EDE2602u);
      v20 = vdupq_n_s32(0xBEDE2602);
      v21 = vdupq_n_s32(0xBF48261C);
      do
      {
        v22 = v14[-7];
        v23 = v14[-6];
        v24 = v14[-5];
        v25 = v14[-4];
        v26 = v14[5];
        v27 = v14[6];
        v28 = vaddq_f32(v24, v26);
        v29 = vaddq_f32(v25, v27);
        v30 = vsubq_f32(v24, v26);
        v31 = vsubq_f32(v25, v27);
        v32 = v14[-3];
        v33 = v14[-2];
        v34 = v14[3];
        v35 = v14[4];
        v36 = vaddq_f32(v32, v34);
        v37 = vaddq_f32(v33, v35);
        v38 = vsubq_f32(v32, v34);
        v39 = vsubq_f32(v33, v35);
        v40 = v14[-1];
        v41 = v14[1];
        v42 = v14[2];
        v43 = vaddq_f32(v40, v41);
        v44 = vaddq_f32(*v14, v42);
        v45 = vsubq_f32(v40, v41);
        v46 = vsubq_f32(*v14, v42);
        v6[-1] = vaddq_f32(vaddq_f32(vaddq_f32(v22, v28), v36), v43);
        *v6 = vaddq_f32(vaddq_f32(vaddq_f32(v23, v29), v37), v44);
        v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, v8, v28), v9, v36), v12, v43);
        v48 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v23, v8, v29), v9, v37), v12, v44);
        v49 = vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v15), v17, v30), v19, v45);
        v50 = vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v15), v17, v31), v19, v46);
        v51 = &v6[v7];
        v51[-1] = vsubq_f32(v47, v50);
        *v51 = vaddq_f32(v49, v48);
        v10[-1] = vaddq_f32(v47, v50);
        *v10 = vsubq_f32(v48, v49);
        v52 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, v9, v28), v12, v36), v8, v43);
        v53 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v23, v9, v29), v12, v37), v8, v44);
        v54 = vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v20), v15, v30), v21, v45);
        v55 = vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v20), v15, v31), v21, v46);
        v16[-1] = vsubq_f32(v52, v55);
        *v16 = vaddq_f32(v54, v53);
        v11[-1] = vaddq_f32(v52, v55);
        *v11 = vsubq_f32(v53, v54);
        v56 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, v12, v28), v8, v36), v9, v43);
        v57 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v23, v12, v29), v8, v37), v9, v44);
        v58 = vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v21), v19, v30), v15, v45);
        v59 = vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v21), v19, v31), v15, v46);
        v13[-1] = vsubq_f32(v56, v59);
        *v13 = vaddq_f32(v58, v57);
        v6 += 2;
        v10 += 2;
        v16 += 2;
        v11 += 2;
        v18[-1] = vaddq_f32(v56, v59);
        *v18 = vsubq_f32(v57, v58);
        v13 += 2;
        v18 += 2;
        v14 += 14;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v60 = 0;
    v227 = 3 * a3;
    v225 = 2 * a3;
    v226 = 6 * a3;
    v224 = 4 * a3;
    v62 = &a4[12 * a2];
    v223 = 32 * a2;
    v63 = &a4[10 * a2];
    v64 = &a4[6 * a2];
    v65 = &a5[6 * a3 * a2];
    v66 = &a5[8 * a3 * a2];
    v219 = (a6 + 4);
    v67 = &a5[10 * a3 * a2];
    v68 = vdupq_n_s32(0x3F1F9D07u);
    v221 = 224 * a2;
    v222 = 5 * a3;
    v69 = 8 * a2 - 8;
    v70 = vdupq_n_s32(0xBE63DC87);
    v71 = &a4[2 * a2];
    v72 = vdupq_n_s32(0xBF66A5E5);
    v73 = vdupq_n_s32(0x3F7994E0u);
    v74 = &a4[4 * a2];
    v75 = &a5[12 * a3 * a2];
    v76 = vdupq_n_s32(0x3F48261Cu);
    v77 = &a4[8 * a2];
    v78 = vdupq_n_s32(0x3EDE2602u);
    v79 = vdupq_n_s32(0xBEDE2602);
    v80 = &a5[4 * a3 * a2];
    v81 = vdupq_n_s32(0xBF48261C);
    v82 = &a5[2 * a3 * a2];
    v228 = a3;
    v238 = v73;
    v239 = v72;
    v232 = v79;
    v233 = v76;
    v231 = v78;
    v234 = v81;
    do
    {
      v83 = 7 * v60 * a2;
      v84 = &v230[2 * v83];
      v85 = *v84;
      v86 = v84[1];
      v87 = &v230[2 * a2 + 2 * v83];
      v88 = *v87;
      v89 = v87[1];
      v90 = &v230[2 * (7 * v60 + 6) * a2];
      v91 = v90[1];
      v92 = vaddq_f32(v88, *v90);
      v93 = vaddq_f32(v89, v91);
      v94 = vsubq_f32(v88, *v90);
      v95 = vsubq_f32(v89, v91);
      v96 = &v230[2 * (7 * v60 + 2) * a2];
      v97 = *v96;
      v98 = v96[1];
      v99 = &v230[2 * (7 * v60 + 5) * a2];
      v100 = v99[1];
      v101 = vaddq_f32(v97, *v99);
      v102 = vaddq_f32(v98, v100);
      v103 = vsubq_f32(v97, *v99);
      v104 = vsubq_f32(v98, v100);
      v105 = &v230[2 * (7 * v60 + 3) * a2];
      v106 = v105[1];
      v107 = &v230[2 * (7 * v60 + 4) * a2];
      v108 = v107[1];
      v109 = vaddq_f32(*v105, *v107);
      v110 = vaddq_f32(v106, v108);
      v111 = vsubq_f32(*v105, *v107);
      v112 = vsubq_f32(v106, v108);
      v113 = &v229[2 * v60 * a2];
      *v113 = vaddq_f32(vaddq_f32(vaddq_f32(*v84, v92), v101), v109);
      v113[1] = vaddq_f32(vaddq_f32(vaddq_f32(v86, v93), v102), v110);
      v114 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v85, v68, v92), v70, v101), v72, v109);
      v115 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v86, v68, v93), v70, v102), v72, v110);
      v116 = vmlaq_f32(vmlaq_f32(vmulq_f32(v103, v73), v76, v94), v78, v111);
      v117 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v73), v76, v95), v78, v112);
      v118 = &v229[2 * (v60 + a3) * a2];
      v119 = &v229[2 * (v60 + v226) * a2];
      *v118 = vsubq_f32(v114, v117);
      v118[1] = vaddq_f32(v116, v115);
      *v119 = vaddq_f32(v114, v117);
      v119[1] = vsubq_f32(v115, v116);
      v120 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v85, v70, v92), v239, v101), v68, v109);
      v121 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v86, v70, v93), v239, v102), v68, v110);
      v122 = vmlaq_f32(vmlaq_f32(vmulq_f32(v103, v79), v238, v94), v81, v111);
      v123 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v79), v238, v95), v81, v112);
      v124 = &v229[2 * (v60 + v225) * a2];
      v125 = &v229[2 * (v60 + v222) * a2];
      *v124 = vsubq_f32(v120, v123);
      v124[1] = vaddq_f32(v122, v121);
      v73 = v238;
      v72 = v239;
      *v125 = vaddq_f32(v120, v123);
      v125[1] = vsubq_f32(v121, v122);
      v126 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v85, v239, v92), v68, v101), v70, v109);
      v127 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v86, v239, v93), v68, v102), v70, v110);
      v128 = vmlaq_f32(vmlaq_f32(vmulq_f32(v103, v81), v78, v94), v238, v111);
      v129 = vmlaq_f32(vmlaq_f32(vmulq_f32(v104, v81), v78, v95), v238, v112);
      v130 = &v229[2 * (v60 + v227) * a2];
      v131 = &v229[2 * (v60 + v224) * a2];
      *v130 = vsubq_f32(v126, v129);
      v130[1] = vaddq_f32(v128, v127);
      *v131 = vaddq_f32(v126, v129);
      v131[1] = vsubq_f32(v127, v128);
      v132 = v78;
      if (a2)
      {
        v133 = 0;
        v134 = v219;
        v135 = a2 - 1;
        do
        {
          v136 = a4[v133 + 2];
          v137 = a4[v133 + 3];
          v138 = v71[v133 + 2];
          v139 = v71[v133 + 3];
          v140 = v62[v133 + 2];
          v141 = v62[v133 + 3];
          v142 = vaddq_f32(v138, v140);
          v143 = vaddq_f32(v139, v141);
          v144 = vsubq_f32(v138, v140);
          v145 = vsubq_f32(v139, v141);
          v146 = v74[v133 + 2];
          v147 = v74[v133 + 3];
          v148 = v63[v133 + 2];
          v149 = v63[v133 + 3];
          v150 = vaddq_f32(v146, v148);
          v151 = vaddq_f32(v147, v149);
          v152 = vsubq_f32(v146, v148);
          v153 = v64[v133 + 2];
          v154 = v64[v133 + 3];
          v155 = vsubq_f32(v147, v149);
          v156 = v77[v133 + 2];
          v157 = v77[v133 + 3];
          v158 = vaddq_f32(v153, v156);
          v159 = vaddq_f32(v154, v157);
          v160 = vsubq_f32(v154, v157);
          v161 = &a5[v133];
          v162 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v136, v68, v142), v70, v150), v72, v158);
          v163 = v152;
          v236 = v144;
          v237 = vsubq_f32(v153, v156);
          v164 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v137, v68, v143), v70, v151), v72, v159);
          v165 = vmlaq_f32(vmlaq_f32(vmulq_f32(v152, v73), v76, v144), v132, v237);
          v235 = v155;
          v166 = vmlaq_f32(vmlaq_f32(vmulq_f32(v155, v238), v76, v145), v132, v160);
          v161[2] = vaddq_f32(vaddq_f32(vaddq_f32(v136, v142), v150), v158);
          v161[3] = vaddq_f32(vaddq_f32(vaddq_f32(v137, v143), v151), v159);
          v167 = vsubq_f32(v162, v166);
          v168 = vaddq_f32(v165, v164);
          v169 = vaddq_f32(v162, v166);
          v170 = *(v134 - 1);
          v171 = v134;
          v172 = vsubq_f32(v164, v165);
          v174 = vld1q_dup_f32(v171);
          v61 = 6 * v220;
          v173 = &v171[v61];
          v175 = vnegq_f32(v168);
          v176 = vmulq_n_f32(v168, v170);
          v177 = v134[10 * v220 - 1];
          v168.f32[0] = v134[10 * v220];
          v178 = vnegq_f32(v172);
          v179 = vmulq_n_f32(v172, v177);
          v180 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v136, v70, v142), v239, v150), v68, v158);
          v181 = vmulq_f32(v174, v175);
          v182 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v137, v70, v143), v239, v151), v68, v159);
          v183 = vmlaq_f32(vmlaq_f32(vmulq_f32(v152, v79), v238, v144), v234, v237);
          v184 = vmlaq_f32(v176, v174, v167);
          v185 = v145;
          v186 = vmlaq_f32(vmlaq_f32(vmulq_f32(v155, v79), v238, v145), v234, v160);
          v187 = vsubq_f32(v180, v186);
          v188 = vaddq_f32(v183, v182);
          v189 = vaddq_f32(v180, v186);
          v190 = vmulq_n_f32(v178, v168.f32[0]);
          v191 = vsubq_f32(v182, v183);
          v186.f32[0] = *(v134 + v69 - 4);
          v145.f32[0] = *(v134 + v69);
          v192 = vmlaq_n_f32(v179, v169, v168.f32[0]);
          v193 = vmulq_n_f32(vnegq_f32(v188), v145.f32[0]);
          v194 = vmulq_n_f32(v188, v186.f32[0]);
          v188.f32[0] = v134[8 * v220 - 1];
          v195 = v134[8 * v220];
          v196 = vmlaq_n_f32(v194, v187, v145.f32[0]);
          v197 = vmulq_n_f32(vnegq_f32(v191), v195);
          v198 = vmlaq_n_f32(vmulq_n_f32(v191, v188.f32[0]), v189, v195);
          v199 = vmlaq_n_f32(v181, v167, v170);
          v132 = v231;
          v72 = v239;
          v200 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v136, v239, v142), v68, v150), v70, v158);
          v201 = &v82[v133];
          v202 = vmlaq_n_f32(v190, v169, v177);
          v203 = &v75[v133];
          v204 = &v80[v133];
          v205 = &v67[v133];
          v206 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v137, v239, v143), v68, v151), v70, v159);
          v207 = vmlaq_n_f32(v193, v187, v186.f32[0]);
          v73 = v238;
          v208 = vmlaq_f32(vmlaq_f32(vmulq_f32(v163, v234), v231, v236), v238, v237);
          v209 = vmlaq_f32(vmlaq_f32(vmulq_f32(v235, v234), v231, v185), v238, v160);
          v210 = vmlaq_n_f32(v197, v189, v188.f32[0]);
          v211 = vsubq_f32(v200, v209);
          v212 = vaddq_f32(v208, v206);
          v213 = vaddq_f32(v200, v209);
          v214 = vsubq_f32(v206, v208);
          v201[2] = v199;
          v201[3] = v184;
          v189.f32[0] = v134[4 * v220 - 1];
          v186.f32[0] = v134[4 * v220];
          v215 = &v65[v133];
          v203[2] = v202;
          v203[3] = v192;
          v216 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v212), v186.f32[0]), v211, v189.f32[0]);
          v204[2] = v207;
          v204[3] = v196;
          v217 = vmlaq_n_f32(vmulq_n_f32(v212, v189.f32[0]), v211, v186.f32[0]);
          v211.i32[0] = *(v173 - 1);
          v189.i32[0] = *v173;
          v218 = &v66[v133];
          v205[2] = v210;
          v205[3] = v198;
          v215[2] = v216;
          v215[3] = v217;
          v79 = v232;
          v76 = v233;
          v218[2] = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v214), v189.f32[0]), v213, v211.f32[0]);
          v218[3] = vmlaq_n_f32(vmulq_n_f32(v214, v211.f32[0]), v213, v189.f32[0]);
          v133 += 2;
          v134 += 2;
          --v135;
        }

        while (v135);
      }

      ++v60;
      v66 = (v66 + v223);
      a4 = (a4 + v221);
      v71 = (v71 + v221);
      v62 = (v62 + v221);
      v74 = (v74 + v221);
      v63 = (v63 + v221);
      v64 = (v64 + v221);
      v77 = (v77 + v221);
      a5 = (a5 + v223);
      v65 = (v65 + v223);
      v67 = (v67 + v223);
      v80 = (v80 + v223);
      v82 = (v82 + v223);
      v75 = (v75 + v223);
      a3 = v228;
      v78 = v132;
      v81 = v234;
    }

    while (v60 != v228);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE6pass11ILb0ENS0_5cmplxIDv4_fEEEEvmmPKT0_PS7_PKNS4_IfEE(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  v331 = a4;
  v314 = a2 - 1;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 20 * a3;
      v7 = a3 << 6;
      v344 = vdupq_n_s32(0x3F75A155u);
      v8 = 18 * a3;
      v352 = vdupq_n_s32(0x3F68DDA4u);
      v9 = 6 * a3;
      v10 = a3 << 8;
      v400 = vdupq_n_s32(0x3F7D64F0u);
      v11 = a3 << 7;
      v342 = vdupq_n_s32(0x3F4178CEu);
      v12 = 10 * a3;
      v13 = 12 * a3;
      v378 = vdupq_n_s32(0x3E903F40u);
      v380 = vdupq_n_s32(0x3F0A6770u);
      v14 = a4 + 11;
      v15 = 14 * a3;
      v16 = (32 * a3) | 0x10;
      v374 = vdupq_n_s32(0xBF0A6770);
      v375 = vdupq_n_s32(0xBF7D64F0);
      v348 = vdupq_n_s32(0xBF68DDA4);
      v350 = vdupq_n_s32(0xBE903F40);
      v18 = vdupq_n_s32(0x3ED4B147u);
      v17 = vdupq_n_s32(0x3F575C64u);
      v19 = vdupq_n_s32(0x3F27A4F4u);
      v20 = vdupq_n_s32(0x3E11BAFBu);
      do
      {
        v21 = v14[-9];
        v22 = v14[-8];
        v23 = v14[9];
        v24 = v14[10];
        v25 = vaddq_f32(v21, v23);
        v26 = vaddq_f32(v22, v24);
        v372 = vsubq_f32(v21, v23);
        v27 = v14[-7];
        v28 = v14[-6];
        v29 = vsubq_f32(v22, v24);
        v31 = v14[7];
        v30 = v14[8];
        v32 = vaddq_f32(v27, v31);
        v33 = vaddq_f32(v28, v30);
        v34 = vsubq_f32(v27, v31);
        v397 = vsubq_f32(v28, v30);
        v35 = v14[-5];
        v36 = v14[-4];
        v37 = v14[5];
        v38 = v14[6];
        v39 = vaddq_f32(v35, v37);
        v40 = vaddq_f32(v36, v38);
        v358 = vsubq_f32(v35, v37);
        v395 = vsubq_f32(v36, v38);
        v41 = v14[-3];
        v42 = v14[-2];
        v43 = v14[3];
        v44 = v14[4];
        v45 = vaddq_f32(v41, v43);
        v46 = vaddq_f32(v42, v44);
        v392 = vsubq_f32(v41, v43);
        v47 = v14[-1];
        v48 = vsubq_f32(v42, v44);
        v49 = v14[1];
        v50 = v14[2];
        v51 = vaddq_f32(v47, v49);
        v52 = vaddq_f32(*v14, v50);
        v369 = vsubq_f32(v47, v49);
        v370 = v48;
        v53 = v14[-11];
        v54 = v14[-10];
        v55 = vsubq_f32(*v14, v50);
        v384 = v25;
        v387 = v33;
        v56 = v33;
        v365 = v46;
        v57 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v54, v26), v33), v40), v46);
        v58 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v53, vmulq_f32(v25, v17)), vmulq_f32(v32, v18)), vmulq_f32(v39, v20)), vmulq_f32(v45, v19)), vmulq_f32(v51, v344));
        v59 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v54, vmulq_f32(v26, v17)), vmulq_f32(v56, v18)), vmulq_f32(v40, v20)), vmulq_f32(v46, v19)), vmulq_f32(v52, v344));
        v60 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v352), v380, v372), v400, v358), v342, v392), v378, v369);
        *a5 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v53, v25), v32), v39), v45), v51);
        a5[1] = vaddq_f32(v57, v52);
        v61 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v352), v380, v29), v400, v395), v342, v370), v378, v55);
        v62 = (a5 + v16);
        v63 = &a5[v6];
        v64 = vsubq_f32(v58, v61);
        v65 = vaddq_f32(v58, v61);
        v62[-1] = v64;
        *v62 = vaddq_f32(v60, v59);
        v66 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v53, vmulq_f32(v384, v18)), vmulq_f32(v32, v19)), vmulq_f32(v39, v344)), vmulq_f32(v45, v20)), vmulq_f32(v51, v17));
        v67 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v54, vmulq_f32(v26, v18)), vmulq_f32(v56, v19)), vmulq_f32(v40, v344)), vmulq_f32(v46, v20)), vmulq_f32(v52, v17));
        *v63 = v65;
        v63[1] = vsubq_f32(v59, v60);
        v68 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v342), v352, v372), v350, v358), v375, v392), v374, v369);
        v69 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v342), v352, v29), v350, v395), v375, v370), v374, v55);
        v70 = (a5 + v7);
        v71 = &a5[v8];
        v72 = vsubq_f32(v66, v69);
        v73 = vaddq_f32(v66, v69);
        *v70 = v72;
        v70[1] = vaddq_f32(v68, v67);
        v74 = vsubq_f32(v67, v68);
        v75 = v39;
        v76 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v53, vmulq_f32(v384, v20)), vmulq_f32(v32, v344)), vmulq_f32(v39, v18)), vmulq_f32(v45, v17)), vmulq_f32(v51, v19));
        v77 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v54, vmulq_f32(v26, v20)), vmulq_f32(v56, v344)), vmulq_f32(v40, v18)), vmulq_f32(v46, v17)), vmulq_f32(v52, v19));
        v78 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v350), v400, v372), v348, v358), v380, v392), v342, v369);
        *v71 = v73;
        v71[1] = v74;
        v79 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v350), v400, v29), v348, v395), v380, v370), v342, v55);
        v80 = &a5[v9];
        v81 = (a5 + v10);
        v82 = vsubq_f32(v76, v79);
        v83 = vaddq_f32(v76, v79);
        v84 = vsubq_f32(v77, v78);
        *v80 = v82;
        v80[1] = vaddq_f32(v78, v77);
        v85 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v53, vmulq_f32(v384, v19)), vmulq_f32(v32, v20)), vmulq_f32(v75, v17)), vmulq_f32(v45, v344)), vmulq_f32(v51, v18));
        v86 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v54, vmulq_f32(v26, v19)), vmulq_f32(v387, v20)), vmulq_f32(v40, v17)), vmulq_f32(v46, v344)), vmulq_f32(v52, v18));
        v87 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v375), v342, v372), v380, v358), v378, v392), v348, v369);
        *v81 = v83;
        v81[1] = v84;
        v88 = v55;
        v89 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v375), v342, v29), v380, v395), v378, v370), v348, v55);
        v90 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v53, vmulq_f32(v384, v344)), vmulq_f32(v32, v17)), vmulq_f32(v75, v19)), vmulq_f32(v45, v18)), vmulq_f32(v51, v20));
        v91 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v54, vmulq_f32(v26, v344)), vmulq_f32(v387, v17)), vmulq_f32(v40, v19)), vmulq_f32(v365, v18)), vmulq_f32(v52, v20));
        v92 = (a5 + v11);
        *v92 = vsubq_f32(v85, v89);
        v92[1] = vaddq_f32(v87, v86);
        v93 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v374), v378, v372), v342, v358), v348, v392), v400, v369);
        v94 = &a5[v15];
        *v94 = vaddq_f32(v85, v89);
        v94[1] = vsubq_f32(v86, v87);
        v95 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v397, v374), v378, v29), v342, v395), v348, v370), v400, v88);
        v96 = &a5[v12];
        *v96 = vsubq_f32(v90, v95);
        v96[1] = vaddq_f32(v93, v91);
        v97 = &a5[v13];
        *v97 = vaddq_f32(v90, v95);
        v97[1] = vsubq_f32(v91, v93);
        a5 += 2;
        v14 += 22;
        --a3;
      }

      while (a3);
    }
  }

  else if (a3)
  {
    v99 = 0;
    v327 = 9 * a3;
    v334 = &a5[12 * a3 * a2];
    v325 = 352 * a2;
    v333 = &a4[20 * a2];
    v100 = &a4[18 * a2];
    v101 = &a4[6 * a2];
    v328 = 5 * a3;
    v102 = &a4[14 * a2];
    v323 = 2 * a3;
    v324 = 10 * a3;
    v103 = &a4[2 * a2];
    v104 = vdupq_n_s32(0x3F575C64u);
    v105 = &a5[8 * a3 * a2];
    v106 = vdupq_n_s32(0x3ED4B147u);
    v107 = vdupq_n_s32(0x3E11BAFBu);
    v108 = vdupq_n_s32(0x3F27A4F4u);
    v109 = &a5[16 * a3 * a2];
    v337 = vdupq_n_s32(0x3F68DDA4u);
    v340 = vdupq_n_s32(0x3F7D64F0u);
    v398 = vdupq_n_s32(0x3F4178CEu);
    v399 = vdupq_n_s32(0x3F75A155u);
    v367 = vdupq_n_s32(0x3F0A6770u);
    v368 = vdupq_n_s32(0x3E903F40u);
    v336 = vdupq_n_s32(0xBE903F40);
    v110 = &a5[2 * a3 * a2];
    v366 = vdupq_n_s32(0xBF7D64F0);
    v393 = vdupq_n_s32(0xBF0A6770);
    v394 = vdupq_n_s32(0xBF68DDA4);
    v111 = &a5[14 * a3 * a2];
    v112 = &a5[6 * a3 * a2];
    v113 = &a5[4 * a3 * a2];
    v114 = &a5[20 * a3 * a2];
    v115 = &a5[18 * a3 * a2];
    v116 = &a5[10 * a3 * a2];
    v117 = &a4[10 * a2];
    v118 = &a4[12 * a2];
    v313 = (a6 + 4);
    v321 = 8 * a2 - 8;
    v326 = 3 * a3;
    v318 = 6 * a3;
    v319 = 4 * a3;
    v317 = 32 * a2;
    v335 = a2 << 6;
    v320 = 8 * a3;
    v316 = 7 * a3;
    v119 = &a4[4 * a2];
    v120 = &a4[16 * a2];
    v121 = a5;
    v122 = &a4[8 * a2];
    v329 = a3;
    v330 = a5;
    v401 = v106;
    v396 = v108;
    v315 = v104;
    do
    {
      v338 = v118;
      v339 = v110;
      v123 = 11 * v99 * a2;
      v124 = &v331[2 * a2 + 2 * v123];
      v125 = *v124;
      v126 = v124[1];
      v127 = &v331[2 * (11 * v99 + 10) * a2];
      v128 = v127[1];
      v129 = vaddq_f32(v125, *v127);
      v130 = vaddq_f32(v126, v128);
      v131 = vsubq_f32(v125, *v127);
      v361 = vsubq_f32(v126, v128);
      v132 = &v331[2 * (11 * v99 + 2) * a2];
      v133 = *v132;
      v134 = v132[1];
      v135 = &v331[2 * (11 * v99 + 9) * a2];
      v136 = v135[1];
      v137 = vaddq_f32(v133, *v135);
      v138 = vaddq_f32(v134, v136);
      v139 = vsubq_f32(v133, *v135);
      v381 = vsubq_f32(v134, v136);
      v383 = v131;
      v140 = &v331[2 * (11 * v99 + 3) * a2];
      v141 = *v140;
      v142 = v140[1];
      v143 = &v331[2 * (11 * v99 + 8) * a2];
      v144 = v143[1];
      v145 = vaddq_f32(v141, *v143);
      v146 = vaddq_f32(v142, v144);
      v359 = vsubq_f32(v141, *v143);
      v147 = vsubq_f32(v142, v144);
      v148 = &v331[2 * (11 * v99 + 4) * a2];
      v149 = *v148;
      v150 = v148[1];
      v151 = &v331[2 * (11 * v99 + 7) * a2];
      v152 = v151[1];
      v153 = vaddq_f32(v149, *v151);
      v154 = vaddq_f32(v150, v152);
      v385 = vsubq_f32(v149, *v151);
      v376 = vsubq_f32(v150, v152);
      v155 = &v331[2 * (11 * v99 + 5) * a2];
      v156 = v155[1];
      v157 = &v331[2 * (11 * v99 + 6) * a2];
      v158 = v157[1];
      v159 = vsubq_f32(*v155, *v157);
      v160 = vsubq_f32(v156, v158);
      v161 = &v331[2 * v123];
      v162 = v161[1];
      v388 = vaddq_f32(*v155, *v157);
      v390 = v129;
      v163 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*v161, v129), v137), v145), v153), v388);
      v356 = vaddq_f32(v156, v158);
      v363 = *v161;
      v164 = vsubq_f32(vaddq_f32(vaddq_f32(*v161, vmulq_f32(v129, v104)), vmulq_f32(v137, v106)), vmulq_f32(v145, v107));
      v165 = v399;
      v166 = vsubq_f32(vsubq_f32(v164, vmulq_f32(v153, v108)), vmulq_f32(v388, v399));
      v167 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v162, vmulq_f32(v130, v104)), vmulq_f32(v138, v106)), vmulq_f32(v146, v107)), vmulq_f32(v154, v108)), vmulq_f32(v356, v399));
      v168 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v139, v337), v367, v383), v340, v359), v398, v385), v368, v159);
      v169 = &a5[2 * v99 * a2];
      *v169 = v163;
      v169[1] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v162, v130), v138), v146), v154), v356);
      v170 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v381, v337), v367, v361), v340, v147), v398, v376), v368, v160);
      v171 = &a5[2 * (v99 + a3) * a2];
      v172 = &a5[2 * (v99 + v324) * a2];
      *v171 = vsubq_f32(v166, v170);
      v171[1] = vaddq_f32(v168, v167);
      *v172 = vaddq_f32(v166, v170);
      v172[1] = vsubq_f32(v167, v168);
      v173 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v363, vmulq_f32(v390, v106)), vmulq_f32(v137, v108)), vmulq_f32(v145, v399)), vmulq_f32(v153, v107)), vmulq_f32(v388, v104));
      v174 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v162, vmulq_f32(v130, v106)), vmulq_f32(v138, v108)), vmulq_f32(v146, v399)), vmulq_f32(v154, v107)), vmulq_f32(v356, v104));
      v175 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v139, v398), v337, v383), v336, v359), v366, v385), v393, v159);
      v176 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v381, v398), v337, v361), v336, v147), v366, v376), v393, v160);
      v177 = &a5[2 * (v99 + v323) * a2];
      v178 = &a5[2 * (v99 + v327) * a2];
      *v177 = vsubq_f32(v173, v176);
      v177[1] = vaddq_f32(v175, v174);
      *v178 = vaddq_f32(v173, v176);
      v178[1] = vsubq_f32(v174, v175);
      v179 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v363, vmulq_f32(v390, v107)), vmulq_f32(v137, v399)), vmulq_f32(v145, v401)), vmulq_f32(v153, v104)), vmulq_f32(v388, v108));
      v180 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v162, vmulq_f32(v130, v107)), vmulq_f32(v138, v399)), vmulq_f32(v146, v401)), vmulq_f32(v154, v104)), vmulq_f32(v356, v108));
      v181 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v139, v336), v340, v383), v394, v359), v367, v385), v398, v159);
      v182 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v381, v336), v340, v361), v394, v147), v367, v376), v398, v160);
      v183 = &a5[2 * (v99 + v326) * a2];
      v184 = &a5[2 * (v99 + v320) * a2];
      *v183 = vsubq_f32(v179, v182);
      v183[1] = vaddq_f32(v181, v180);
      *v184 = vaddq_f32(v179, v182);
      v184[1] = vsubq_f32(v180, v181);
      v185 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v363, vmulq_f32(v390, v108)), vmulq_f32(v137, v107)), vmulq_f32(v145, v315)), vmulq_f32(v153, v399)), vmulq_f32(v388, v401));
      v186 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v162, vmulq_f32(v130, v108)), vmulq_f32(v138, v107)), vmulq_f32(v146, v315)), vmulq_f32(v154, v399)), vmulq_f32(v356, v401));
      v187 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v139, v366), v398, v383), v367, v359), v368, v385), v394, v159);
      v188 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v381, v366), v398, v361), v367, v147), v368, v376), v394, v160);
      v189 = &a5[2 * (v99 + v319) * a2];
      *v189 = vsubq_f32(v185, v188);
      v189[1] = vaddq_f32(v187, v186);
      v190 = &a5[2 * (v99 + v316) * a2];
      *v190 = vaddq_f32(v185, v188);
      v190[1] = vsubq_f32(v186, v187);
      v191 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v363, vmulq_f32(v390, v399)), vmulq_f32(v137, v315)), vmulq_f32(v145, v396)), vmulq_f32(v153, v401)), vmulq_f32(v388, v107));
      v192 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v162, vmulq_f32(v130, v399)), vmulq_f32(v138, v315)), vmulq_f32(v146, v396)), vmulq_f32(v154, v401)), vmulq_f32(v356, v107));
      v193 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v139, v393), v368, v383), v398, v359), v394, v385), v340, v159);
      v194 = &a5[2 * (v99 + v328) * a2];
      v195 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v381, v393), v368, v361), v398, v147), v394, v376), v340, v160);
      *v194 = vsubq_f32(v191, v195);
      v194[1] = vaddq_f32(v193, v192);
      v332 = v99;
      v196 = &a5[2 * (v99 + v318) * a2];
      *v196 = vaddq_f32(v191, v195);
      v196[1] = vsubq_f32(v192, v193);
      v197 = 72 * v314;
      v198 = v114;
      v106 = v401;
      v108 = v396;
      v199 = v112;
      if (a2)
      {
        v200 = v398;
        v201 = v340;
        v202 = 0;
        v204 = v313;
        v203 = a2 - 1;
        do
        {
          v205 = v108;
          v206 = v103[v202 + 2];
          v207 = v103[v202 + 3];
          v208 = v333[v202 + 2];
          v209 = v333[v202 + 3];
          v210 = vaddq_f32(v206, v208);
          v211 = vaddq_f32(v207, v209);
          v212 = vsubq_f32(v206, v208);
          v213 = v119[v202 + 2];
          v214 = v119[v202 + 3];
          v377 = vsubq_f32(v207, v209);
          v215 = v100[v202 + 2];
          v216 = v100[v202 + 3];
          v217 = vaddq_f32(v213, v215);
          v218 = vaddq_f32(v214, v216);
          v386 = v212;
          v389 = vsubq_f32(v213, v215);
          v219 = v101[v202 + 2];
          v220 = v101[v202 + 3];
          v221 = v120[v202 + 2];
          v222 = v120[v202 + 3];
          v371 = vsubq_f32(v214, v216);
          v223 = vaddq_f32(v219, v221);
          v224 = vaddq_f32(v220, v222);
          v225 = vsubq_f32(v219, v221);
          v226 = vsubq_f32(v220, v222);
          v227 = v122[v202 + 2];
          v228 = v122[v202 + 3];
          v229 = v102[v202 + 2];
          v230 = v102[v202 + 3];
          v231 = vaddq_f32(v227, v229);
          v232 = vaddq_f32(v228, v230);
          v382 = vsubq_f32(v227, v229);
          v233 = v117[v202 + 2];
          v234 = v117[v202 + 3];
          v341 = vsubq_f32(v228, v230);
          v235 = v338[v202 + 2];
          v236 = v338[v202 + 3];
          v237 = vaddq_f32(v233, v235);
          v379 = vsubq_f32(v233, v235);
          v238 = vsubq_f32(v234, v236);
          v239 = a4[v202 + 2];
          v240 = a4[v202 + 3];
          v373 = v239;
          v391 = vaddq_f32(v234, v236);
          v241 = &v121[v202];
          v242 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v239, vmulq_f32(v210, v315)), vmulq_f32(v217, v401)), vmulq_f32(v223, v107)), vmulq_f32(v231, v205)), vmulq_f32(v237, v165));
          v243 = vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(vaddq_f32(v240, vmulq_f32(v211, v315)), vmulq_f32(v218, v401)), vmulq_f32(v224, v107)), vmulq_f32(v232, v205)), vmulq_f32(v391, v165));
          v244 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v389, v337), v367, v212), v201, v225), v200, v382), v368, v379);
          v241[2] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v239, v210), v217), v223), v231), v237);
          v241[3] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v240, v211), v218), v224), v232), v391);
          v245 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v371, v337), v367, v377), v201, v226), v200, v341), v368, v238);
          v246 = vsubq_f32(v242, v245);
          v247 = vaddq_f32(v244, v243);
          v212.f32[0] = *(v204 - 1);
          v248 = v204;
          v250 = vld1q_dup_f32(v248);
          v322 = 10 * v314;
          v249 = &v248[v322];
          v251 = vaddq_f32(v242, v245);
          v252 = vsubq_f32(v243, v244);
          v253 = vmulq_f32(v250, vnegq_f32(v247));
          v254 = v197;
          v255 = (v204 + v197);
          v364 = vmlaq_f32(vmulq_n_f32(v247, v212.f32[0]), v250, v246);
          v247.f32[0] = *(v255 - 1);
          v362 = vmlaq_n_f32(v253, v246, v212.f32[0]);
          v256 = vnegq_f32(v252);
          v257 = vmulq_n_f32(v252, v247.f32[0]);
          v258 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v239, vmulq_f32(v210, v401)), vmulq_f32(v217, v205)), vmulq_f32(v223, v399)), vmulq_f32(v231, v107)), vmulq_f32(v237, v315));
          v259 = vmulq_n_f32(v256, *v255);
          v260 = vaddq_f32(vsubq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v240, vmulq_f32(v211, v401)), vmulq_f32(v218, v205)), vmulq_f32(v224, v399)), vmulq_f32(v232, v107)), vmulq_f32(v391, v315));
          v360 = vmlaq_n_f32(v257, v251, *v255);
          v261 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v371, v398), v337, v377), v336, v226), v366, v341), v393, v238);
          v262 = vsubq_f32(v258, v261);
          v263 = vaddq_f32(v258, v261);
          v264 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v389, v398), v337, v386), v336, v225), v366, v382), v393, v379);
          v265 = vaddq_f32(v264, v260);
          v266 = vsubq_f32(v260, v264);
          v267 = vmlaq_n_f32(v259, v251, v247.f32[0]);
          v251.f32[0] = *(v204 + v321);
          v247.f32[0] = *(v204 + v321 - 4);
          v355 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v265), v251.f32[0]), v262, v247.f32[0]);
          v357 = v267;
          v354 = vmlaq_n_f32(vmulq_n_f32(v265, v247.f32[0]), v262, v251.f32[0]);
          v251.f32[0] = *(v204 + v335 - 64);
          v247.f32[0] = *(v204 + v335 - 68);
          v351 = vmlaq_n_f32(vmulq_n_f32(v266, v247.f32[0]), v263, v251.f32[0]);
          v353 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v266), v251.f32[0]), v263, v247.f32[0]);
          v343 = v224;
          v268 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v373, vmulq_f32(v210, v107)), vmulq_f32(v217, v399)), vmulq_f32(v223, v401)), vmulq_f32(v231, v315)), vmulq_f32(v237, v396));
          v269 = vsubq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v240, vmulq_f32(v211, v107)), vmulq_f32(v218, v399)), vmulq_f32(v224, v401)), vmulq_f32(v232, v315)), vmulq_f32(v391, v396));
          v270 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v389, v336), v340, v386), v394, v225), v367, v382), v398, v379);
          v201 = v340;
          v271 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v371, v336), v340, v377), v394, v226), v367, v341), v398, v238);
          v272 = vaddq_f32(v270, v269);
          v264.f32[0] = v204[4 * v314];
          v265.f32[0] = v204[4 * v314 - 1];
          v273 = vsubq_f32(v268, v271);
          v347 = vmlaq_n_f32(vmulq_n_f32(v272, v265.f32[0]), v273, v264.f32[0]);
          v349 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v272), v264.f32[0]), v273, v265.f32[0]);
          v274 = vaddq_f32(v268, v271);
          v275 = vsubq_f32(v269, v270);
          v270.f32[0] = v204[14 * v314];
          v271.f32[0] = v204[14 * v314 - 1];
          v345 = vmlaq_n_f32(vmulq_n_f32(v275, v271.f32[0]), v274, v270.f32[0]);
          v346 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v275), v270.f32[0]), v274, v271.f32[0]);
          v276 = v211;
          v277 = vsubq_f32(vsubq_f32(v240, vmulq_f32(v211, v396)), vmulq_f32(v218, v107));
          v278 = v223;
          v279 = vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(vsubq_f32(v373, vmulq_f32(v210, v396)), vmulq_f32(v217, v107)), vmulq_f32(v223, v315)), vmulq_f32(v231, v399)), vmulq_f32(v237, v401));
          v280 = vaddq_f32(vsubq_f32(vaddq_f32(v277, vmulq_f32(v224, v315)), vmulq_f32(v232, v399)), vmulq_f32(v391, v401));
          v281 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v389, v366), v398, v386), v367, v225), v368, v382), v394, v379);
          v282 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v371, v366), v398, v377), v367, v226), v368, v341), v394, v238);
          v283 = vaddq_f32(v281, v280);
          v277.f32[0] = v204[6 * v314 - 1];
          v272.f32[0] = v204[6 * v314];
          v284 = vsubq_f32(v279, v282);
          v285 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v283), v272.f32[0]), v284, v277.f32[0]);
          v286 = vmlaq_n_f32(vmulq_n_f32(v283, v277.f32[0]), v284, v272.f32[0]);
          v287 = vaddq_f32(v279, v282);
          v288 = vsubq_f32(v280, v281);
          v272.f32[0] = v204[12 * v314 - 1];
          v283.f32[0] = v204[12 * v314];
          v289 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v288), v283.f32[0]), v287, v272.f32[0]);
          v290 = vmlaq_n_f32(vmulq_n_f32(v288, v272.f32[0]), v287, v283.f32[0]);
          v106 = v401;
          v291 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v373, vmulq_f32(v210, v399)), vmulq_f32(v217, v315)), vmulq_f32(v278, v396)), vmulq_f32(v231, v401)), vmulq_f32(v237, v107));
          v292 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v389, v393), v368, v386), v398, v225), v394, v382), v340, v379);
          v293 = vsubq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vsubq_f32(v240, vmulq_f32(v276, v399)), vmulq_f32(v218, v315)), vmulq_f32(v343, v396)), vmulq_f32(v232, v401)), vmulq_f32(v391, v107));
          v280.f32[0] = v204[8 * v314 - 1];
          v267.f32[0] = v204[8 * v314];
          v197 = v254;
          v294 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v371, v393), v368, v377), v398, v226), v394, v341), v340, v238);
          v295 = vsubq_f32(v291, v294);
          v296 = vaddq_f32(v292, v293);
          v297 = vaddq_f32(v291, v294);
          v298 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v296), v267.f32[0]), v295, v280.f32[0]);
          v299 = vmlaq_n_f32(vmulq_n_f32(v296, v280.f32[0]), v295, v267.f32[0]);
          v280.f32[0] = *(v249 - 1);
          v300 = vsubq_f32(v293, v292);
          v301 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(v300), *v249), v297, v280.f32[0]);
          v302 = vmlaq_n_f32(vmulq_n_f32(v300, v280.f32[0]), v297, *v249);
          v108 = v396;
          v303 = &v339[v202];
          v303[2] = v362;
          v303[3] = v364;
          v304 = &v198[v202];
          v304[2] = v357;
          v304[3] = v360;
          v305 = &v113[v202];
          v305[2] = v355;
          v305[3] = v354;
          v306 = &v115[v202];
          v306[2] = v353;
          v306[3] = v351;
          v307 = &v199[v202];
          v307[2] = v349;
          v307[3] = v347;
          v308 = &v109[v202];
          v308[2] = v346;
          v308[3] = v345;
          v200 = v398;
          v165 = v399;
          v309 = &v105[v202];
          v309[2] = v285;
          v309[3] = v286;
          v310 = &v111[v202];
          v310[2] = v289;
          v310[3] = v290;
          v311 = &v116[v202];
          v311[2] = v298;
          v311[3] = v299;
          v312 = &v334[v202];
          v312[2] = v301;
          v312[3] = v302;
          v202 += 2;
          v204 += 2;
          --v203;
        }

        while (v203);
      }

      ++v99;
      a4 = (a4 + v325);
      v103 = (v103 + v325);
      v333 = (v333 + v325);
      v334 = (v334 + v317);
      v119 = (v119 + v325);
      v100 = (v100 + v325);
      v101 = (v101 + v325);
      v120 = (v120 + v325);
      v122 = (v122 + v325);
      v102 = (v102 + v325);
      v121 = (v121 + v317);
      v116 = (v116 + v317);
      v111 = (v111 + v317);
      v105 = (v105 + v317);
      v109 = (v109 + v317);
      v110 = &v339[v317 / 0x10];
      v113 = (v113 + v317);
      v115 = (v115 + v317);
      a3 = v329;
      a5 = v330;
      v104 = v315;
      v112 = &v199[v317 / 0x10];
      v114 = &v198[v317 / 0x10];
      v117 = (v117 + v325);
      v118 = &v338[v325 / 0x10];
    }

    while (v332 + 1 != v329);
  }
}

void _ZNK9pocketfft6detail5cfftpIfE5passgILb0ENS0_5cmplxIDv4_fEEEEvmmmPT0_S8_PKNS4_IfEESB_(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, char *a6, float32x2_t *a7, uint64_t a8)
{
  v13 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a3);
  v16 = v13;
  *v13 = 1065353216;
  if (a3 >= 2)
  {
    v17 = a3 - 1;
    v18 = (a8 + 8);
    v19 = v13 + 1;
    do
    {
      v20 = *v18++;
      *v19++ = v20;
      --v17;
    }

    while (v17);
  }

  v21 = a3 + 1;
  v22 = 32 * a2;
  if (a4)
  {
    v23 = a4;
    v24 = a6;
    v25 = a5;
    do
    {
      if (a2)
      {
        memcpy(v24, v25, 32 * a2);
      }

      v25 += 32 * a3 * a2;
      v24 += v22;
      --v23;
    }

    while (v23);
  }

  v26 = a4 * a2;
  v27 = v21 >> 1;
  v28 = a3 - 1;
  v160 = v21 >> 1;
  if (v21 >= 4)
  {
    v29 = &a5[32 * a2 * v28 + 16];
    v30 = 32 * a3 * a2;
    v31 = &a6[32 * v26 + 16];
    v32 = &a5[32 * a2 + 16];
    v33 = &a6[32 * v26 * v28 + 16];
    v34 = 1;
    do
    {
      if (a4)
      {
        v35 = 0;
        v36 = v33;
        v37 = v32;
        v38 = v31;
        v39 = v29;
        do
        {
          v40 = v36;
          v41 = v37;
          v42 = v38;
          v43 = v39;
          for (i = a2; i; --i)
          {
            v45 = v41[-1];
            v46 = *v41;
            v14 = v43[-1];
            v47 = *v43;
            v15 = vaddq_f32(*v41, *v43);
            v42[-1] = vaddq_f32(v45, v14);
            *v42 = v15;
            v43 += 2;
            v40[-1] = vsubq_f32(v45, v14);
            *v40 = vsubq_f32(v46, v47);
            v42 += 2;
            v41 += 2;
            v40 += 2;
          }

          ++v35;
          v39 = (v39 + v30);
          v38 = (v38 + v22);
          v37 = (v37 + v30);
          v36 = (v36 + v22);
        }

        while (v35 != a4);
      }

      ++v34;
      v29 -= 32 * a2;
      v31 += 32 * v26;
      v32 += v22;
      v33 -= 32 * v26;
      v27 = v21 >> 1;
    }

    while (v34 != v160);
  }

  if (a4)
  {
    v48 = 0;
    v49 = &a6[32 * v26 + 16];
    do
    {
      if (a2)
      {
        v50 = 0;
        v51 = v49;
        do
        {
          v52 = &a6[32 * v48 * a2 + 32 * v50];
          v53 = *v52;
          v54 = v52[1];
          v55 = v51;
          v56 = v27 - 1;
          if (v21 >= 4)
          {
            do
            {
              v14 = v55[-1];
              v53 = vaddq_f32(v53, v14);
              v54 = vaddq_f32(v54, *v55);
              v55 += 2 * v26;
              --v56;
            }

            while (v56);
          }

          v57 = &a5[32 * v48 * a2 + 32 * v50];
          *v57 = v53;
          v57[1] = v54;
          ++v50;
          v51 += 2;
        }

        while (v50 != a2);
      }

      ++v48;
      v49 += v22;
    }

    while (v48 != a4);
  }

  if (v21 >= 4)
  {
    v58 = &a6[32 * v26];
    v59 = v26 << 6;
    v60 = &a6[64 * v26];
    v61 = &a6[32 * v26 * v28];
    v62 = &a6[32 * v26 * (a3 - 2)];
    v63 = v27 - 1;
    v152 = &a5[32 * v26 * v28];
    v64 = v152 + 1;
    v65 = 32 * v26;
    v66 = &a5[32 * v26];
    v158 = &a6[96 * v26];
    v157 = &a6[32 * v26 * (a3 - 4)];
    v156 = &a6[128 * v26];
    v67 = 1;
    v155 = &a6[32 * v26 * (a3 - 3)];
    v159 = a6;
    do
    {
      if (v26)
      {
        v68 = 0;
        v69 = &v16[8 * v67];
        v70 = vld1q_dup_f32(v69++);
        v71 = &v16[16 * v67];
        v72 = vld1q_dup_f32(v71++);
        v15.f32[0] = *v69;
        v14.f32[0] = -*v69;
        v14 = vdupq_lane_s32(*v14.f32, 0);
        v73 = vld1q_dup_f32(v71);
        v74 = vnegq_f32(v73);
        v15 = vdupq_lane_s32(*v15.f32, 0);
        v75 = a4 * a2;
        do
        {
          v76 = &v66[v68];
          v77 = vmlaq_f32(vmlaq_f32(*&a6[v68 + 16], *&v58[v68 + 16], v70), *&v60[v68 + 16], v72);
          *v76 = vmlaq_f32(vmlaq_f32(*&a6[v68], *&v58[v68], v70), *&v60[v68], v72);
          v76[1] = v77;
          v78 = vmlaq_f32(vmulq_f32(*&v62[v68], v73), *&v61[v68], v15);
          v79 = &v64[v68 / 0x10];
          v79[-1] = vmlaq_f32(vmulq_f32(*&v62[v68 + 16], v74), *&v61[v68 + 16], v14);
          *v79 = v78;
          v68 += 32;
          --v75;
        }

        while (v75);
      }

      v80 = 2 * v67;
      if (v63 < 4)
      {
        v86 = a3 - 3;
        v85 = 3;
      }

      else
      {
        v81 = v155;
        v82 = v156;
        v84 = v157;
        v83 = v158;
        v85 = 3;
        v86 = a3 - 3;
        do
        {
          if (v80 + v67 <= a3)
          {
            v87 = 0;
          }

          else
          {
            v87 = a3;
          }

          v88 = v80 + v67 - v87;
          if (v88 + v67 <= a3)
          {
            v89 = 0;
          }

          else
          {
            v89 = a3;
          }

          v80 = v88 + v67 - v89;
          if (v26)
          {
            v90 = 0;
            v91 = &v16[8 * v80];
            v92 = &v16[8 * v88];
            v93 = vld1q_dup_f32(v92++);
            v94 = vld1q_dup_f32(v91++);
            v14 = vld1q_dup_f32(v92);
            v95 = vld1q_dup_f32(v91);
            v96 = a4 * a2;
            do
            {
              v97 = &v66[v90];
              v98 = vaddq_f32(*&v66[v90 + 16], vmlaq_f32(vmulq_f32(v94, *&v82[v90 + 16]), v93, *&v83[v90 + 16]));
              *v97 = vaddq_f32(*&v66[v90], vmlaq_f32(vmulq_f32(v94, *&v82[v90]), v93, *&v83[v90]));
              v97[1] = v98;
              v99 = &v64[v90 / 0x10];
              v15 = vaddq_f32(v64[v90 / 0x10], vmlaq_f32(vmulq_f32(v95, *&v84[v90]), v14, *&v81[v90]));
              v99[-1] = vsubq_f32(v64[v90 / 0x10 - 1], vmlaq_f32(vmulq_f32(v95, *&v84[v90 + 16]), v14, *&v81[v90 + 16]));
              *v99 = v15;
              v90 += 32;
              --v96;
            }

            while (v96);
          }

          v85 += 2;
          v86 -= 2;
          v83 += v59;
          v84 -= 64 * v26;
          v82 += v59;
          v81 -= 64 * v26;
        }

        while (v85 < v63);
      }

      a6 = v159;
      if (v85 < v160)
      {
        v100 = &v159[v65 * v85];
        v101 = &v159[v65 * v86];
        do
        {
          if (v80 + v67 <= a3)
          {
            v102 = 0;
          }

          else
          {
            v102 = a3;
          }

          v80 = v80 + v67 - v102;
          if (v26)
          {
            v103 = 0;
            v104 = &v16[8 * v80];
            v105 = vld1q_dup_f32(v104++);
            v106 = vld1q_dup_f32(v104);
            v107 = a4 * a2;
            do
            {
              v108 = &v66[v103];
              v109 = vmlaq_f32(*&v66[v103 + 16], v105, *&v100[v103 + 16]);
              *v108 = vmlaq_f32(*&v66[v103], v105, *&v100[v103]);
              v108[1] = v109;
              v110 = &v64[v103 / 0x10];
              v14 = *&v101[v103 + 16];
              v15 = vmlaq_f32(v64[v103 / 0x10], v106, *&v101[v103]);
              v110[-1] = vmlsq_f32(v64[v103 / 0x10 - 1], v106, v14);
              *v110 = v15;
              v103 += 32;
              --v107;
            }

            while (v107);
          }

          ++v85;
          v100 += v65;
          v101 -= 32 * v26;
        }

        while (v85 != v160);
      }

      ++v67;
      v64 -= 2 * v26;
      v66 += v65;
    }

    while (v67 != v160);
    if (a2 == 1)
    {
      v111 = v152 + 1;
      v112 = &a5[32 * v26 + 16];
      v113 = 1;
      do
      {
        v114 = v112;
        v115 = v111;
        for (j = a4; j; --j)
        {
          v117 = v114[-1];
          v118 = *v114;
          v119 = v115[-1];
          v120 = *v115;
          v121 = vaddq_f32(*v114, *v115);
          v114[-1] = vaddq_f32(v117, v119);
          *v114 = v121;
          v115[-1] = vsubq_f32(v117, v119);
          *v115 = vsubq_f32(v118, v120);
          v115 += 2;
          v114 += 2;
        }

        ++v113;
        v111 -= 2 * v26;
        v112 += v65;
      }

      while (v113 != v160);
    }

    else
    {
      v122 = 8 * (a2 - 1);
      v123 = &a5[32 * v26 + 48];
      v124 = 1;
      v125 = a7;
      v126 = a3 - 1;
      do
      {
        if (a4)
        {
          v127 = 0;
          v128 = v126 * a4;
          v129 = v126 - 1;
          v130 = (a7 + v122 * (v126 - 1));
          v131 = v123;
          v132 = &a5[v65 * v126 + 48];
          do
          {
            v133 = &a5[32 * (v127 + v124 * a4) * a2];
            v134 = *v133;
            v135 = v133[1];
            v136 = &a5[32 * (v127 + v128) * a2];
            v137 = *v136;
            v138 = v136[1];
            *v133 = vaddq_f32(*v133, *v136);
            v133[1] = vaddq_f32(v135, v138);
            v139 = v131;
            *v136 = vsubq_f32(v134, v137);
            v136[1] = vsubq_f32(v135, v138);
            v140 = v132;
            v141 = a2 - 1;
            v142 = v125;
            v143 = v130;
            if (a2)
            {
              do
              {
                v144 = v139[-1];
                v145 = v140[-1];
                v146 = vaddq_f32(v144, v145);
                v147 = vaddq_f32(*v139, *v140);
                v148 = vsubq_f32(v144, v145);
                v149 = vsubq_f32(*v139, *v140);
                v150 = *v142++;
                v139[-1] = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v147), v150, 1), v146, v150.f32[0]);
                *v139 = vmlaq_lane_f32(vmulq_n_f32(v147, v150.f32[0]), v146, v150, 1);
                v151 = *v143++;
                v140[-1] = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v149), v151, 1), v148, v151.f32[0]);
                *v140 = vmlaq_lane_f32(vmulq_n_f32(v149, v151.f32[0]), v148, v151, 1);
                v140 += 2;
                v139 += 2;
                --v141;
              }

              while (v141);
            }

            ++v127;
            v132 += v22;
            v131 = (v131 + v22);
          }

          while (v127 != a4);
        }

        else
        {
          v129 = v126 - 1;
        }

        ++v124;
        v125 = (v125 + v122);
        v123 += v65;
        v126 = v129;
      }

      while (v124 != v160);
    }
  }

  free(v16);
}

void _ZNK9pocketfft6detail7fftblueIfE3fftILb1EDv4_fEEvPNS0_5cmplxIT0_EEf(unint64_t *a1, float32x4_t *a2, float a3)
{
  _ZN9pocketfft6detail3arrINS0_5cmplxIDv4_fEEEC1Em(&v51, a1[1]);
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      v9 = (v51 + v6);
      v10 = *(a1[10] + 8 * v7);
      v11 = v8[-1];
      v12 = vmlaq_n_f32(vmulq_lane_f32(*v8, v10, 1), v11, v10.f32[0]);
      v13 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v11), v10, 1), *v8, v10.f32[0]);
      *v9 = v12;
      v9[1] = v13;
      ++v7;
      v5 = *a1;
      v8 += 2;
      v6 += 32;
    }

    while (v7 < *a1);
  }

  v14 = v51;
  if (v5 < a1[1])
  {
    v15 = vmulq_f32(*v51, 0);
    v16 = vmulq_f32(*(v51 + 1), 0);
    v17 = 32 * v5;
    do
    {
      v18 = (v51 + v17);
      *v18 = v15;
      v18[1] = v16;
      ++v5;
      v17 += 32;
    }

    while (v5 < a1[1]);
    v14 = v51;
  }

  _ZNK9pocketfft6detail5cfftpIfE8pass_allILb1ENS0_5cmplxIDv4_fEEEEvPT0_f(a1 + 2, v14, 1.0);
  v19 = v51;
  v20 = a1[11];
  v21 = *(v51 + 1);
  v22 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v21), *v20, 1), *v51, COERCE_FLOAT(*v20));
  v23 = vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*v20)), *v51, *v20, 1);
  *v51 = v22;
  v19[1] = v23;
  v24 = a1[1];
  if (v24 - 3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v25 = 0;
    v26 = -1;
    v27 = 1;
    do
    {
      v28 = (v51 + v25);
      v29 = *(a1[11] + 8 * v27);
      v30 = *(v51 + v25 + 32);
      v31 = *(v51 + v25 + 48);
      v28[2] = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v31), v29, 1), v30, v29.f32[0]);
      v28[3] = vmlaq_lane_f32(vmulq_n_f32(v31, v29.f32[0]), v30, v29, 1);
      v32 = (v51 + 32 * v26 + 32 * a1[1]);
      v33 = *(a1[11] + 8 * v27);
      v34 = v32[1];
      v35 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v34), v33, 1), *v32, v33.f32[0]);
      v36 = vmlaq_lane_f32(vmulq_n_f32(v34, v33.f32[0]), *v32, v33, 1);
      *v32 = v35;
      v32[1] = v36;
      ++v27;
      v24 = a1[1];
      --v26;
      v25 += 32;
    }

    while (v27 < (v24 + 1) >> 1);
  }

  if ((v24 & 1) == 0)
  {
    v37 = (v51 + 16 * v24);
    v38 = *(a1[11] + 4 * v24);
    v39 = v37[1];
    v40 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v39), v38, 1), *v37, v38.f32[0]);
    v41 = vmlaq_lane_f32(vmulq_n_f32(v39, v38.f32[0]), *v37, v38, 1);
    *v37 = v40;
    v37[1] = v41;
  }

  _ZNK9pocketfft6detail5cfftpIfE8pass_allILb0ENS0_5cmplxIDv4_fEEEEvPT0_f(a1 + 2, v51, 1.0);
  v42 = v51;
  if (*a1)
  {
    v43 = 0;
    v44 = a2 + 1;
    v45 = (v51 + 16);
    do
    {
      v46 = *(a1[10] + 8 * v43);
      v47 = v45[-1];
      v48 = vmlaq_n_f32(vmulq_lane_f32(*v45, v46, 1), v47, v46.f32[0]);
      v49 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v47), v46, 1), *v45, v46.f32[0]);
      v44[-1] = vmulq_n_f32(v48, a3);
      *v44 = vmulq_n_f32(v49, a3);
      ++v43;
      v44 += 2;
      v45 += 2;
    }

    while (v43 < *a1);
  }

  free(v42);
}

void _ZNK9pocketfft6detail7fftblueIfE3fftILb0EDv4_fEEvPNS0_5cmplxIT0_EEf(unint64_t *a1, float32x4_t *a2, float a3)
{
  _ZN9pocketfft6detail3arrINS0_5cmplxIDv4_fEEEC1Em(&v46, a1[1]);
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      v9 = (v46 + v6);
      v10 = *(a1[10] + 8 * v7);
      v11 = v8[-1];
      v12 = vmlaq_lane_f32(vmulq_n_f32(*v8, v10.f32[0]), v11, v10, 1);
      *v9 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(*v8), v10, 1), v11, v10.f32[0]);
      v9[1] = v12;
      ++v7;
      v5 = *a1;
      v8 += 2;
      v6 += 32;
    }

    while (v7 < *a1);
  }

  v13 = v46;
  if (v5 < a1[1])
  {
    v14 = vmulq_f32(*v46, 0);
    v15 = vmulq_f32(*(v46 + 1), 0);
    v16 = 32 * v5;
    do
    {
      v17 = (v46 + v16);
      *v17 = v14;
      v17[1] = v15;
      ++v5;
      v16 += 32;
    }

    while (v5 < a1[1]);
    v13 = v46;
  }

  _ZNK9pocketfft6detail5cfftpIfE8pass_allILb1ENS0_5cmplxIDv4_fEEEEvPT0_f(a1 + 2, v13, 1.0);
  v18 = v46;
  v19 = a1[11];
  v20 = *(v46 + 1);
  v21 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(*v46), *v19, 1), v20, COERCE_FLOAT(*v19));
  *v46 = vmlaq_n_f32(vmulq_lane_f32(v20, *v19, 1), *v46, COERCE_FLOAT(*v19));
  v18[1] = v21;
  v22 = a1[1];
  if (v22 - 3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    v23 = 0;
    v24 = -1;
    v25 = 1;
    do
    {
      v26 = (v46 + v23);
      v27 = *(a1[11] + 8 * v25);
      v28 = *(v46 + v23 + 32);
      v29 = *(v46 + v23 + 48);
      v26[2] = vmlaq_n_f32(vmulq_lane_f32(v29, v27, 1), v28, v27.f32[0]);
      v26[3] = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(v28), v27, 1), v29, v27.f32[0]);
      v30 = (v46 + 32 * v24 + 32 * a1[1]);
      v31 = *(a1[11] + 8 * v25);
      v32 = v30[1];
      v33 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(*v30), v31, 1), v32, v31.f32[0]);
      *v30 = vmlaq_n_f32(vmulq_lane_f32(v32, v31, 1), *v30, v31.f32[0]);
      v30[1] = v33;
      ++v25;
      v22 = a1[1];
      --v24;
      v23 += 32;
    }

    while (v25 < (v22 + 1) >> 1);
  }

  if ((v22 & 1) == 0)
  {
    v34 = (v46 + 16 * v22);
    v35 = *(a1[11] + 4 * v22);
    v36 = v34[1];
    v37 = vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(*v34), v35, 1), v36, v35.f32[0]);
    *v34 = vmlaq_n_f32(vmulq_lane_f32(v36, v35, 1), *v34, v35.f32[0]);
    v34[1] = v37;
  }

  _ZNK9pocketfft6detail5cfftpIfE8pass_allILb0ENS0_5cmplxIDv4_fEEEEvPT0_f(a1 + 2, v46, 1.0);
  v38 = v46;
  if (*a1)
  {
    v39 = 0;
    v40 = a2 + 1;
    v41 = (v46 + 16);
    do
    {
      v42 = *(a1[10] + 8 * v39);
      v43 = v41[-1];
      v44 = vmlaq_lane_f32(vmulq_n_f32(*v41, v42.f32[0]), v43, v42, 1);
      v40[-1] = vmulq_n_f32(vmlaq_n_f32(vmulq_lane_f32(vnegq_f32(*v41), v42, 1), v43, v42.f32[0]), a3);
      *v40 = vmulq_n_f32(v44, a3);
      ++v39;
      v40 += 2;
      v41 += 2;
    }

    while (v39 < *a1);
  }

  free(v38);
}

void *pocketfft::detail::copy_input<pocketfft::detail::cmplx<float>,4ul>(void *result, uint64_t a2, void *a3)
{
  v3 = (*(a2 + 48) + result[6]);
  if (v3 != a3)
  {
    v4 = result[3];
    v5 = result[17];
    if (*(*v4 + 8 * v5))
    {
      v6 = 0;
      v7 = result[10];
      do
      {
        a3[v6++] = *v3;
        v3 = (v3 + v7);
      }

      while (v6 < *(*v4 + 8 * v5));
    }
  }

  return result;
}

void pocketfft::detail::pocketfft_c<float>::exec<float>(void **a1, float32x2_t *a2, int a3, float a4)
{
  v5 = *a1;
  if (v5)
  {
    if (a3)
    {
      pocketfft::detail::cfftp<float>::pass_all<true,pocketfft::detail::cmplx<float>>(v5, a2, a4);
    }

    else
    {
      pocketfft::detail::cfftp<float>::pass_all<false,pocketfft::detail::cmplx<float>>(v5, a2, a4);
    }
  }

  else
  {
    v6 = a1[1];
    if (a3)
    {
      pocketfft::detail::fftblue<float>::fft<true,float>(v6, a2, a4);
    }

    else
    {
      pocketfft::detail::fftblue<float>::fft<false,float>(v6, a2, a4);
    }
  }
}

uint64_t pocketfft::detail::copy_output<pocketfft::detail::cmplx<float>,4ul>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 48) + *(result + 96) != a2 && *(**(result + 32) + 8 * *(result + 136)))
  {
    v3 = 0;
    do
    {
      *(*(a3 + 48) + *(result + 128) * v3 + *(result + 96)) = *(a2 + 8 * v3);
      ++v3;
    }

    while (v3 < *(**(result + 32) + 8 * *(result + 136)));
  }

  return result;
}

void pocketfft::detail::fftblue<float>::fft<true,float>(unint64_t *a1, float32x2_t *a2, float a3)
{
  v5 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a1[1]);
  v6 = v5;
  if (*a1)
  {
    v7 = 0;
    do
    {
      v8 = a2[v7];
      v9.i32[0] = vdup_lane_s32(v8, 1).u32[0];
      v9.f32[1] = -v8.f32[0];
      v5[v7] = vmla_n_f32(vmul_n_f32(v9, *(a1[10] + 8 * v7 + 4)), v8, *(a1[10] + 8 * v7));
      ++v7;
      v10 = *a1;
    }

    while (v7 < *a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = a1[1];
  v12 = v11 > v10;
  v13 = v11 - v10;
  if (v12)
  {
    v14 = vmul_f32(*v5, 0);
    v15 = &v5[v10];
    do
    {
      *v15++ = v14;
      --v13;
    }

    while (v13);
  }

  pocketfft::detail::cfftp<float>::pass_all<true,pocketfft::detail::cmplx<float>>(a1 + 2, v5, 1.0);
  v16 = a1[11];
  v17.i32[0] = v6->i32[1];
  v17.f32[1] = -v17.f32[0];
  *v6 = vmla_n_f32(vrev64_s32(vmul_f32(*v16, v17)), *v16, v6->f32[0]);
  v18 = a1[1];
  if (v18 + 1 >= 4)
  {
    v19 = ((v18 + 1) >> 1) - 1;
    v20 = &v6[v18 - 1];
    v21 = v16 + 1;
    v22 = v6 + 1;
    do
    {
      v23.i32[0] = v22->i32[1];
      v23.f32[1] = -v23.f32[0];
      *v22 = vmla_n_f32(vrev64_s32(vmul_f32(*v21, v23)), *v21, v22->f32[0]);
      ++v22;
      v23.i32[0] = *(v20 + 4);
      v24 = *v21++;
      v23.f32[1] = -v23.f32[0];
      *v20 = vmla_n_f32(vrev64_s32(vmul_f32(v24, v23)), v24, *v20);
      v20 -= 8;
      --v19;
    }

    while (v19);
  }

  if ((v18 & 1) == 0)
  {
    v25 = v6 + 4 * v18;
    v26.i32[0] = *(v25 + 1);
    v26.f32[1] = -v26.f32[0];
    *v25 = vmla_n_f32(vrev64_s32(vmul_f32(*(v16 + 4 * v18), v26)), *(v16 + 4 * v18), *v25);
  }

  pocketfft::detail::cfftp<float>::pass_all<false,pocketfft::detail::cmplx<float>>(a1 + 2, v6, 1.0);
  v27 = *a1;
  if (*a1)
  {
    v28 = (a1[10] + 4);
    v29 = v6;
    do
    {
      v30 = *v29++;
      v31.i32[0] = vdup_lane_s32(v30, 1).u32[0];
      v31.f32[1] = -v30.f32[0];
      *a2++ = vmul_n_f32(vmla_n_f32(vmul_n_f32(v31, *v28), v30, *(v28 - 1)), a3);
      v28 += 2;
      --v27;
    }

    while (v27);
  }

  free(v6);
}

void pocketfft::detail::fftblue<float>::fft<false,float>(unint64_t *a1, float32x2_t *a2, float a3)
{
  v5 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(a1[1]);
  v6 = v5;
  if (*a1)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = v8->f32[0];
      v10.i32[0] = v8->i32[1];
      ++v8;
      v11 = *(a1[10] + 8 * v7);
      v10.f32[1] = -v10.f32[0];
      v5[v7++] = vmla_n_f32(vrev64_s32(vmul_f32(v11, v10)), v11, v9);
      v12 = *a1;
    }

    while (v7 < *a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[1];
  v14 = v13 > v12;
  v15 = v13 - v12;
  if (v14)
  {
    v16 = vmul_f32(*v5, 0);
    v17 = &v5[v12];
    do
    {
      *v17++ = v16;
      --v15;
    }

    while (v15);
  }

  pocketfft::detail::cfftp<float>::pass_all<true,pocketfft::detail::cmplx<float>>(a1 + 2, v5, 1.0);
  v18 = a1[11];
  v19 = v6->f32[1];
  v20 = v18[1];
  v21 = (v19 * *v18) - (v6->f32[0] * v20);
  v6->f32[0] = (v19 * v20) + (v6->f32[0] * *v18);
  v6->f32[1] = v21;
  v22 = a1[1];
  if (v22 + 1 >= 4)
  {
    v23 = ((v22 + 1) >> 1) - 1;
    v24 = &v6[1] + 1;
    v25 = &v6[v22 - 1] + 1;
    v26 = v18 + 3;
    do
    {
      v27 = *(v24 - 1);
      v28 = *(v26 - 1);
      v29 = (*v24 * *v26) + (v27 * v28);
      v30 = (*v24 * v28) - (v27 * *v26);
      *(v24 - 1) = v29;
      *v24 = v30;
      v31 = *(v25 - 1);
      v32 = *(v26 - 1);
      v33 = (*v25 * *v26) + (v31 * v32);
      v34 = (*v25 * v32) - (v31 * *v26);
      *(v25 - 1) = v33;
      *v25 = v34;
      v24 += 2;
      v25 -= 2;
      v26 += 2;
      --v23;
    }

    while (v23);
  }

  if ((v22 & 1) == 0)
  {
    v35 = v6 + v22;
    v36 = &v18[v22];
    v37 = v35[1];
    v38 = v36[1];
    v39 = (v37 * *v36) - (*v35 * v38);
    *v35 = (v37 * v38) + (*v35 * *v36);
    v35[1] = v39;
  }

  pocketfft::detail::cfftp<float>::pass_all<false,pocketfft::detail::cmplx<float>>(a1 + 2, v6, 1.0);
  v40 = *a1;
  if (*a1)
  {
    v41 = a1[10];
    v42 = v6 + 1;
    do
    {
      v43.i32[0] = *v42;
      v44 = *v41++;
      v43.f32[1] = -*v42;
      *a2++ = vmul_n_f32(vmla_n_f32(vrev64_s32(vmul_f32(v44, v43)), v44, *(v42 - 1)), a3);
      v42 += 2;
      --v40;
    }

    while (v40);
  }

  free(v6);
}

pocketfft::detail::threading::thread_pool *pocketfft::detail::threading::thread_pool::thread_pool(pocketfft::detail::threading::thread_pool *this, unint64_t a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 850045863;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 15) = 850045863;
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::vector[abi:ne200100](this + 23, a2);
  *(this + 208) = 0;
  *(this + 27) = 0;
  pocketfft::detail::threading::thread_pool::create_threads(this);
  return this;
}

void sub_25A5BBE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  a10 = v14;
  std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::mutex::~mutex(v12);
  std::mutex::~mutex(v11);
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void pocketfft::detail::threading::thread_pool::create_threads(pocketfft::detail::threading::thread_pool *this)
{
  std::mutex::lock((this + 120));
  if (*(this + 24) != *(this + 23))
  {
    v2 = *(this + 23);
    atomic_store(0, (v2 + 120));
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v2 + 128);
    _ZNSt3__16threadC2IZN9pocketfft6detail9threading11thread_pool14create_threadsEvEUlvE_JELi0EEEOT_DpOT0_();
  }

  std::mutex::unlock((this + 120));
}

void sub_25A5BBF54(void *a1)
{
  __cxa_begin_catch(a1);
  pocketfft::detail::threading::thread_pool::shutdown_locked(v1);
  __cxa_rethrow();
}

void sub_25A5BBF68(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::mutex::unlock((v1 + 120));
  _Unwind_Resume(a1);
}

void *std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = v4 + 192 * a2;
    do
    {
      *(v4 + 96) = 0uLL;
      *(v4 + 112) = 0uLL;
      *(v4 + 160) = 0uLL;
      *(v4 + 176) = 0uLL;
      *(v4 + 128) = 0uLL;
      *(v4 + 144) = 0uLL;
      *(v4 + 64) = 0uLL;
      *(v4 + 80) = 0uLL;
      *(v4 + 32) = 0uLL;
      *(v4 + 48) = 0uLL;
      *v4 = 0uLL;
      *(v4 + 16) = 0uLL;
      *(v4 + 8) = 1018212795;
      *(v4 + 48) = 0;
      *(v4 + 56) = 850045863;
      *(v4 + 105) = 0uLL;
      v4 += 192;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

char *std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x155555555555556)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  result = malloc_type_aligned_alloc(0x40uLL, 192 * a2, 0x900E4C1uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v6, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  *a1 = result;
  a1[1] = result;
  a1[2] = &result[192 * a2];
  return result;
}

void std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::clear[abi:ne200100](v2);
    v3 = **a1;

    free(v3);
  }
}

void std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3 - 64);
      std::mutex::~mutex((v3 - 136));
      std::condition_variable::~condition_variable((v3 - 184));
      std::thread::~thread((v3 - 192));
      v3 -= 192;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void pocketfft::detail::threading::thread_pool::shutdown_locked(pocketfft::detail::threading::thread_pool *this)
{
  atomic_store(1u, this + 208);
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 != v2)
  {
    do
    {
      std::condition_variable::notify_all((v1 + 8));
      v1 += 192;
    }

    while (v1 != v2);
    v1 = *(this + 23);
    v2 = *(this + 24);
  }

  while (v1 != v2)
  {
    if (*v1)
    {
      std::thread::join(v1);
    }

    v1 += 192;
  }
}

void sub_25A5BC2CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,pocketfft::detail::threading::thread_pool::create_threads(void)::{lambda(void)#1}>>(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  pocketfft::detail::threading::thread_pool::worker::worker_main(v5[1], (v5[2] + 208), (v5[2] + 216), v5[2]);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,pocketfft::detail::threading::thread_pool::create_threads(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_25A5BC364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,pocketfft::detail::threading::thread_pool::create_threads(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,pocketfft::detail::threading::thread_pool::create_threads(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x25F851760](v3, 0x20C40960023A9);
  }

  return a1;
}

uint64_t pocketfft::detail::threading::thread_pool::worker::worker_main(uint64_t a1, unsigned __int8 *a2, atomic_ullong *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  atomic_load(a2);
  v8 = (a1 + 56);
LABEL_2:
  v18 = 0;
LABEL_3:
  __lk.__m_ = v8;
  __lk.__owns_ = 1;
  std::mutex::lock(v8);
  while (!*(a1 + 152))
  {
    v9 = atomic_load(a2);
    if (v9)
    {
      break;
    }

    std::condition_variable::wait((a1 + 8), &__lk);
  }

  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v17, (a1 + 128));
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  while (1)
  {
    if (v18)
    {
      (*(*v18 + 48))(v18);
      if (atomic_load((a4 + 112)))
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    if (atomic_load((a4 + 112)))
    {
      if (atomic_exchange((a1 + 120), 1u))
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17);
        atomic_load(a2);
        goto LABEL_2;
      }

LABEL_17:
      while (pocketfft::detail::threading::concurrent_queue<std::function<void ()(void)>>::try_pop(a4, v17))
      {
        atomic_fetch_add(a3, 0xFFFFFFFFFFFFFFFFLL);
        if (!v18)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v18 + 48))(v18);
      }

LABEL_11:
      atomic_store(0, (a1 + 120));
    }

    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17);
    v12 = atomic_load(a2);
    if (v12)
    {
      break;
    }

    v18 = 0;
    if (!atomic_load(a3))
    {
      goto LABEL_3;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A5BC570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL pocketfft::detail::threading::concurrent_queue<std::function<void ()(void)>>::try_pop(uint64_t a1, uint64_t a2)
{
  if (!atomic_load((a1 + 112)))
  {
    return 0;
  }

  std::mutex::lock((a1 + 48));
  v5 = *(a1 + 40);
  v6 = v5 != 0;
  if (v5)
  {
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a2, *(*(a1 + 8) + ((*(a1 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 32) & 0x7FLL));
    atomic_fetch_add((a1 + 112), 0xFFFFFFFFFFFFFFFFLL);
    std::deque<std::function<void ()(void)>>::pop_front(a1);
  }

  std::mutex::unlock((a1 + 48));
  return v6;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A5BC89C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void pocketfft::detail::threading::thread_pool::~thread_pool(pocketfft::detail::threading::thread_pool *this)
{
  pocketfft::detail::threading::thread_pool::shutdown(this);
  v2 = (this + 184);
  std::vector<pocketfft::detail::threading::thread_pool::worker,pocketfft::detail::threading::aligned_allocator<pocketfft::detail::threading::thread_pool::worker>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::mutex::~mutex((this + 120));
  std::mutex::~mutex((this + 48));
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](this);
}

void pocketfft::detail::threading::thread_pool::shutdown(pocketfft::detail::threading::thread_pool *this)
{
  std::mutex::lock((this + 120));
  pocketfft::detail::threading::thread_pool::shutdown_locked(this);

  std::mutex::unlock((this + 120));
}

void pocketfft::detail::threading::concurrent_queue<std::function<void ()(void)>>::push(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 48));
  atomic_fetch_add((a1 + 112), 1uLL);
  std::deque<std::function<void ()(void)>>::push_back(a1, a2);

  std::mutex::unlock((a1 + 48));
}

uint64_t std::deque<std::function<void ()(void)>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 16 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::function<void ()(void)>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  }

  result = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a2);
  ++a1[5];
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 std::__function::__func<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1},std::allocator<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF330;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1},std::allocator<void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = pocketfft::detail::threading::thread_id(void)::thread_id_();
  *v3 = v4;
  v5 = *(a1 + 40);
  v6 = pocketfft::detail::threading::num_threads(void)::num_threads_();
  *v6 = v7;
  pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}::operator()(*a1);
  pocketfft::detail::threading::latch::count_down(*(a1 + 8));
}

void sub_25A5BCC54(void *a1)
{
  __cxa_begin_catch(a1);
  std::mutex::lock(*(v1 + 24));
  pocketfft::detail::threading::thread_map<void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1}>(unsigned long,void pocketfft::detail::general_nd<pocketfft::detail::pocketfft_c<float>,pocketfft::detail::cmplx<float>,float,pocketfft::detail::ExecC2C>(pocketfft::detail::cndarr<pocketfft::detail::cmplx<float>> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,std::vector<unsigned long> const&,float,unsigned long,pocketfft::detail::ExecC2C const&,BOOL)::{lambda(void)#1})::{lambda(void)#1}::operator()();
  JUMPOUT(0x25A5BCC40);
}

void pocketfft::detail::threading::latch::count_down(pocketfft::detail::threading::latch *this)
{
  std::mutex::lock((this + 8));
  if (atomic_fetch_add(this, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    std::condition_variable::notify_all((this + 72));
  }

  std::mutex::unlock((this + 8));
}

void *std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFF3C0;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286BFF3C0;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF3C0;
  result = std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>::__bind(a2 + 8, a1 + 8);
  *(a2 + 140) = 0;
  *(a2 + 137) = 0;
  return result;
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::destroy(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;

    operator delete(v5);
  }
}

void std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[10];
  if (v2)
  {
    __p[11] = v2;
    operator delete(v2);
  }

  v3 = __p[7];
  if (v3)
  {
    __p[8] = v3;
    operator delete(v3);
  }

  v4 = __p[4];
  if (v4)
  {
    __p[5] = v4;
    operator delete(v4);
  }

  v5 = __p[1];
  if (v5)
  {
    __p[2] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>,std::allocator<std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_1>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BFF4B8;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BFF4B8;
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BFF4B8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(a2 + 24, a1 + 24);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;

    operator delete(v5);
  }
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[12];
  if (v2)
  {
    __p[13] = v2;
    operator delete(v2);
  }

  v3 = __p[9];
  if (v3)
  {
    __p[10] = v3;
    operator delete(v3);
  }

  v4 = __p[6];
  if (v4)
  {
    __p[7] = v4;
    operator delete(v4);
  }

  v5 = __p[3];
  if (v5)
  {
    __p[4] = v5;
    operator delete(v5);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  pocketfft::detail::r2c<float>((a1 + 24), (a1 + 48), (a1 + 72), a1 + 96, (*(a1 + 120) & 1) == 0, *(a1 + 128), *(a1 + 136), 1uLL, *(a1 + 144));
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_3FFT8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__2JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__bind<mlx::core::FFT::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_2>::__bind(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1 + 24, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 3);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1 + 48, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  v4 = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 96) = v4;
  return a1;
}

void sub_25A5BD470(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void pocketfft::detail::r2c<float>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, void *a6, void *a7, unint64_t a8, float a9)
{
  v18 = *a1;
  v19 = a1[1];
  if (*a1 == v19)
  {
    goto LABEL_12;
  }

  v20 = 1;
  do
  {
    v21 = *v18++;
    v20 *= v21;
  }

  while (v18 != v19);
  if (v20)
  {
LABEL_12:
    pocketfft::detail::util::sanity_check(a1, a2, a3, 0, a4);
    pocketfft::detail::r2c<float>(a1, a2, a3, *(*(a4 + 8) - 8), a5, a6, a7, a9);
    if (*(a4 + 8) - *a4 != 8)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v27, *a1, a1[1], (a1[1] - *a1) >> 3);
      v22 = *a4;
      v23 = *(a4 + 8);
      *(v27 + *(v23 - 8)) = (*(*a1 + 8 * *(v23 - 8)) >> 1) + 1;
      v25 = 0;
      v26 = 0;
      __p = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(&__p, v22, v23 - 8, (v23 - 8 - v22) >> 3);
      pocketfft::detail::c2c<float>(&v27, a3, a3, &__p, a5, a7, a7, a8, 1.0);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }
    }
  }
}

void sub_25A5BD638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pocketfft::detail::r2c<float>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4, char a5, void *a6, void *a7, float a8)
{
  v15 = result;
  v16 = *result;
  v17 = result[1];
  if (*result == v17)
  {
    goto LABEL_5;
  }

  v18 = 1;
  do
  {
    v19 = *v16++;
    v18 *= v19;
  }

  while (v16 != v17);
  if (v18)
  {
LABEL_5:
    pocketfft::detail::util::sanity_check(result, a2, a3, 0, a4);
    pocketfft::detail::arr_info::arr_info(v22, v15, a2);
    v22[6] = a6;
    memset(v21, 0, sizeof(v21));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v21, *v15, v15[1], (v15[1] - *v15) >> 3);
    *(v21[0] + a4) = (*(*v15 + 8 * a4) >> 1) + 1;
    pocketfft::detail::arr_info::arr_info(v20, v21, a3);
    v20[6] = a7;
    pocketfft::detail::general_r2c<float>(v22, a8, v20, a4, a5);
  }

  return result;
}

void sub_25A5BD7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a10);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  std::tuple<std::vector<int>,std::vector<int>,BOOL>::~tuple(&a20);
  _Unwind_Resume(a1);
}

const void *pocketfft::detail::util::sanity_check(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  result = pocketfft::detail::util::sanity_check(a1, a2, a3, a4);
  if (a5 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "bad axis number");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  return result;
}

void pocketfft::detail::general_r2c<float>(void *a1, float a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a4;
  v7 = a5;
  v6 = a2;
  v5 = *(*a1 + 8 * a4);
  std::allocate_shared[abi:ne200100]<pocketfft::detail::pocketfft_r<float>,std::allocator<pocketfft::detail::pocketfft_r<float>>,unsigned long &,0>();
}

void sub_25A5BD95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void pocketfft::detail::threading::thread_map<void pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v3 = pocketfft::detail::threading::max_threads(0);
  }

  if (v3 == 1)
  {
    v4 = *MEMORY[0x277D85DE8];

    pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}::operator()(a2);
  }

  else
  {
    {
      if (v6)
      {
        v7 = pocketfft::detail::threading::max_threads(v6);
        pocketfft::detail::threading::thread_pool::thread_pool(&pocketfft::detail::threading::get_pool(void)::pool, v7);
        __cxa_atexit(pocketfft::detail::threading::thread_pool::~thread_pool, &pocketfft::detail::threading::get_pool(void)::pool, &dword_25A232000);
      }
    }

    v11 = v3;
    v12.__m_.__sig = 850045863;
    memset(v12.__m_.__opaque, 0, sizeof(v12.__m_.__opaque));
    v13.__cv_.__sig = 1018212795;
    memset(v13.__cv_.__opaque, 0, sizeof(v13.__cv_.__opaque));
    v8.__ptr_ = 0;
    v10.__m_.__sig = 850045863;
    memset(v10.__m_.__opaque, 0, sizeof(v10.__m_.__opaque));
    if (v3)
    {
      v9 = 0;
      operator new();
    }

    pocketfft::detail::threading::latch::wait(&v11);
    std::mutex::~mutex(&v10);
    std::exception_ptr::~exception_ptr(&v8);
    std::condition_variable::~condition_variable(&v13);
    std::mutex::~mutex(&v12);
    v5 = *MEMORY[0x277D85DE8];
  }
}

void *std::__shared_ptr_emplace<pocketfft::detail::pocketfft_r<float>>::__shared_ptr_emplace[abi:ne200100]<unsigned long &,std::allocator<pocketfft::detail::pocketfft_r<float>>,0>(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BFF528;
  pocketfft::detail::pocketfft_r<float>::pocketfft_r(a1 + 3, *a2);
  return a1;
}

void std::__shared_ptr_emplace<pocketfft::detail::pocketfft_r<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BFF528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t *std::__shared_ptr_emplace<pocketfft::detail::pocketfft_r<float>>::__on_zero_shared(uint64_t a1)
{
  std::unique_ptr<pocketfft::detail::fftblue<float>>::reset[abi:ne200100]((a1 + 32), 0);

  return std::unique_ptr<pocketfft::detail::rfftp<float>>::reset[abi:ne200100]((a1 + 24), 0);
}

void pocketfft::detail::pocketfft_r<float>::pocketfft_r(void *a1, pocketfft::detail::util *this)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = this;
  if (this)
  {
    if (this >= 0x32)
    {
      v3 = pocketfft::detail::util::largest_prime_factor(this);
    }

    else
    {
      v3 = 0;
    }

    if (v3 * v3 > this)
    {
      v4 = pocketfft::detail::util::cost_guess(this) * 0.5;
      v5 = pocketfft::detail::util::good_size_cmplx(2 * this - 1);
      v6 = pocketfft::detail::util::cost_guess(v5);
      if ((v6 + v6) * 1.5 < v4)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "zero-length FFT requested");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A5BDF4C(_Unwind_Exception *a1)
{
  MEMORY[0x25F851760](v3, 0x10A0C40E9B7E217);
  std::unique_ptr<pocketfft::detail::fftblue<float>>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<pocketfft::detail::rfftp<float>>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

uint64_t pocketfft::detail::rfftp<float>::rfftp(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (a2 != 1)
  {
    if (!a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "zero-length FFT requested");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    pocketfft::detail::rfftp<float>::factorize(a1);
    v4 = pocketfft::detail::rfftp<float>::twsize(a1);
    pocketfft::detail::arr<float>::resize(v3, v4);
    pocketfft::detail::rfftp<float>::comp_twiddle(a1);
  }

  return a1;
}

void sub_25A5BE07C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  v5 = *(v2 + 24);
  if (v5)
  {
    *(v2 + 32) = v5;
    operator delete(v5);
  }

  free(*v1);
  _Unwind_Resume(a1);
}

void pocketfft::detail::rfftp<float>::factorize(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 3) != 0)
  {
    v3 = *a1;
  }

  else
  {
    do
    {
      pocketfft::detail::rfftp<float>::add_factor(a1, 4);
      v3 = v2 >> 2;
      v4 = (v2 & 0xC) == 0;
      v2 >>= 2;
    }

    while (v4);
  }

  if ((v3 & 1) == 0)
  {
    v3 >>= 1;
    pocketfft::detail::rfftp<float>::add_factor(a1, 2);
    v5 = a1[3];
    v6 = a1[4];
    v7 = *v5;
    *v5 = *(v6 - 24);
    *(v6 - 24) = v7;
  }

  if (v3 >= 9)
  {
    v8 = 3;
    do
    {
      while (!(v3 % v8))
      {
        pocketfft::detail::rfftp<float>::add_factor(a1, v8);
        v3 /= v8;
      }

      v8 += 2;
    }

    while (v8 * v8 <= v3);
  }

  if (v3 > 1)
  {

    pocketfft::detail::rfftp<float>::add_factor(a1, v3);
  }
}

void *pocketfft::detail::arr<float>::resize(void *result, void *a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    free(*result);
    result = pocketfft::detail::arr<float>::ralloc(a2);
    *v3 = result;
    v3[1] = a2;
  }

  return result;
}

uint64_t pocketfft::detail::rfftp<float>::twsize(unint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4] - v1;
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  v6 = *a1;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v7 = 1;
  do
  {
    v8 = *v1;
    v1 += 3;
    v7 *= v8;
    v9 = v8 - 1;
    v10 = 2 * v8;
    if (v8 <= 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    result += v11 + (v6 / v7 - 1) * v9;
    --v5;
  }

  while (v5);
  return result;
}

void pocketfft::detail::rfftp<float>::comp_twiddle(void *a1)
{
  pocketfft::detail::sincos_2pibyn<float>::sincos_2pibyn(v36, *a1);
  v2 = a1[3];
  v3 = a1[4] - v2;
  if (v3)
  {
    v4 = 0;
    v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    v6 = a1[1];
    v7 = 1;
    do
    {
      v8 = (v2 + 24 * v4);
      v9 = *v8;
      v10 = *v8 * v7;
      if (v4 < v5 - 1)
      {
        v11 = *a1 / v10;
        v8[1] = v6;
        v12 = v11 - 1;
        v6 = (v6 + 4 * (v11 - 1) * (v9 - 1));
        if (v9 < 2)
        {
          goto LABEL_17;
        }

        v30 = v6;
        v31 = v10;
        v13 = v12 >> 1;
        v14 = v7;
        v15 = 1;
        v33 = v7;
        v34 = v9;
        v32 = v12;
        do
        {
          if (v12 >= 2)
          {
            v16 = 0;
            v35 = v15;
            v17 = (v15 - 1) * v12;
            v18 = v14;
            v19 = 1;
            do
            {
              v20 = v17 + 2 * v19;
              *(*(a1[3] + 24 * v4 + 8) + 4 * v20 - 8) = pocketfft::detail::sincos_2pibyn<float>::operator[](v36, v18);
              pocketfft::detail::sincos_2pibyn<float>::operator[](v36, v18);
              v2 = a1[3];
              *(*(v2 + 24 * v4 + 8) + 4 * v20 - 4) = v21;
              ++v19;
              ++v16;
              v18 += v14;
            }

            while (v16 < v13);
            v7 = v33;
            v9 = v34;
            v12 = v32;
            v15 = v35;
          }

          ++v15;
          v14 += v7;
        }

        while (v15 != v9);
        v6 = v30;
        v10 = v31;
      }

      if (v9 >= 6)
      {
        *(v2 + 24 * v4 + 16) = v6;
        v22 = 2 * v9;
        v23 = &v6[v9];
        *v6 = 1065353216;
        if (2 * v9 != 2)
        {
          v24 = 0;
          do
          {
            v25 = (v24 + 2) >> 1;
            *(*(a1[3] + 24 * v4 + 16) + 4 * v24 + 8) = pocketfft::detail::sincos_2pibyn<float>::operator[](v36, *a1 / v9 * v25);
            pocketfft::detail::sincos_2pibyn<float>::operator[](v36, *a1 / v9 * v25);
            *(*(a1[3] + 24 * v4 + 16) + 4 * v24 + 12) = v26;
            *(*(a1[3] + 24 * v4 + 16) + 4 * v22 - 8) = pocketfft::detail::sincos_2pibyn<float>::operator[](v36, *a1 / v9 * v25);
            pocketfft::detail::sincos_2pibyn<float>::operator[](v36, *a1 / v9 * v25);
            v2 = a1[3];
            *(*(v2 + 24 * v4 + 16) + 4 * v22 - 4) = -v27;
            v28 = v24 + 4;
            v29 = v22 - 4;
            v22 -= 2;
            v24 += 2;
          }

          while (v28 <= v29);
        }

        goto LABEL_18;
      }

LABEL_17:
      v23 = v6;
LABEL_18:
      ++v4;
      v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - v2) >> 3);
      v7 = v10;
      v6 = v23;
    }

    while (v4 < v5);
  }

  free(v36[5]);
  free(v36[3]);
}

void sub_25A5BE510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21)
{
  free(a21);
  free(a19);
  _Unwind_Resume(a1);
}

void pocketfft::detail::rfftp<float>::add_factor(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  if (v4 >= v5)
  {
    v7 = a1[3];
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pocketfft::detail::rfftp<float>::fctdata>>((a1 + 3), v11);
    }

    v12 = 24 * v8;
    v6 = 24 * v8 + 24;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = a2;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = v12 - v14;
    memcpy((v12 - v14), v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = (v4 + 3);
    v4[1] = 0;
    v4[2] = 0;
    *v4 = a2;
  }

  a1[4] = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<pocketfft::detail::rfftp<float>::fctdata>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *pocketfft::detail::arr<float>::ralloc(void *result)
{
  if (result)
  {
    result = malloc_type_aligned_alloc(0x40uLL, (4 * result + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
    if (!result)
    {
      exception = __cxa_allocate_exception(8uLL);
      v2 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v2, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  return result;
}

uint64_t *std::unique_ptr<pocketfft::detail::rfftp<float>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      *(v2 + 32) = v3;
      operator delete(v3);
    }

    free(*(v2 + 8));

    JUMPOUT(0x25F851760);
  }

  return result;
}

void pocketfft::detail::general_r2c<float>(pocketfft::detail::cndarr<float> const&,pocketfft::detail::ndarr<pocketfft::detail::cmplx<float>> &,unsigned long,BOOL,float,unsigned long)::{lambda(void)#1}::operator()(uint64_t a1)
{
  pocketfft::detail::alloc_tmp<float>(*a1, **(a1 + 8), 4, &v62);
  pocketfft::detail::multi_iter<4ul>::multi_iter(__p, *a1, *(a1 + 16), **(a1 + 24));
  v2 = v61;
  if (v61 >= 4)
  {
    do
    {
      pocketfft::detail::multi_iter<4ul>::advance(__p, 4uLL);
      v3 = v62;
      pocketfft::detail::copy_input<float,4ul>(__p, *a1, v62);
      LODWORD(v4) = **(a1 + 40);
      _ZNK9pocketfft6detail11pocketfft_rIfE4execIDv4_fEEvPT_fb(**(a1 + 32), v3, 1, v4, v5, v6, v7, v8, v9);
      v10 = 0;
      v11 = *(*(a1 + 16) + 48);
      do
      {
        v12 = (v11 + v58[v10]);
        *v12 = v3->i32[v10 & 3];
        v12[1] = 0;
        ++v10;
      }

      while (v10 != 4);
      v13 = **(a1 + 8);
      v14 = v13 - 3;
      if (**(a1 + 48))
      {
        if (v13 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v15 = v59;
          v16 = (v14 >> 1) + 2;
          v17 = 1;
          v18 = 1;
          do
          {
            for (i = 0; i != 4; ++i)
            {
              v20 = &v3[v18].i32[i & 3];
              LODWORD(v21) = *v20;
              HIDWORD(v21) = v20[4];
              *(v11 + v15 * v17 + v58[i]) = v21;
            }

            v18 += 2;
            ++v17;
          }

          while (v17 != v16);
          goto LABEL_18;
        }
      }

      else if (v13 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v22 = v59;
        v16 = (v14 >> 1) + 2;
        v23 = 1;
        v18 = 1;
        do
        {
          for (j = 0; j != 4; ++j)
          {
            v25 = v3[v18].i64 + 4 * (j & 3);
            v26 = v11 + v22 * v23 + v58[j];
            v27 = -*(v25 + 16);
            *v26 = *v25;
            *(v26 + 4) = v27;
          }

          v18 += 2;
          ++v23;
        }

        while (v23 != v16);
        goto LABEL_18;
      }

      v18 = 1;
      v16 = 1;
LABEL_18:
      if (v18 < v13)
      {
        v28 = 0;
        v29 = v11 + v59 * v16;
        do
        {
          v30 = (v29 + v58[v28]);
          *v30 = v3[v18].i32[v28 & 3];
          v30[1] = 0;
          ++v28;
        }

        while (v28 != 4);
      }

      v2 = v61;
    }

    while (v61 > 3);
  }

  if (v2)
  {
    do
    {
      pocketfft::detail::multi_iter<4ul>::advance(__p, 1uLL);
      v31 = v62;
      v32 = (__p[6] + *(*a1 + 48));
      if (v32 != v62)
      {
        v33 = *(*__p[3] + 8 * v60);
        if (v33)
        {
          v34 = __p[10];
          v35 = v62;
          do
          {
            v35->i32[0] = v32->i32[0];
            v35 = (v35 + 4);
            v32 = &v34[v32];
            --v33;
          }

          while (v33);
        }
      }

      pocketfft::detail::pocketfft_r<float>::exec<float>(**(a1 + 32), v31, 1, **(a1 + 40));
      v36 = v58[0];
      v37 = *(a1 + 8);
      v38 = *(*(a1 + 16) + 48);
      v39 = (v38 + v58[0]);
      *v39 = *v31;
      v39[1] = 0;
      v40 = *v37;
      v41 = v40 - 3;
      if (**(a1 + 48))
      {
        if (v40 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v42 = v59;
          v43 = v41 >> 1;
          v44 = (v41 >> 1) + 2;
          v45 = v43 + 1;
          v46 = (v38 + v36 + v59);
          v47 = (v31 + 1);
          v48 = 2 * v43 + 3;
          do
          {
            v49 = *v47++;
            *v46 = v49;
            v46 = (v46 + v42);
            --v45;
          }

          while (v45);
          goto LABEL_37;
        }
      }

      else if (v40 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v50 = v59;
        v51 = v41 >> 1;
        v44 = (v41 >> 1) + 2;
        v52 = v51 + 1;
        v53 = v31 + 2;
        v54 = (v38 + v36 + v59 + 4);
        v48 = 2 * v51 + 3;
        do
        {
          v55 = -*v53;
          *(v54 - 1) = *(v53 - 1);
          *v54 = v55;
          v53 += 2;
          v54 = (v54 + v50);
          --v52;
        }

        while (v52);
        goto LABEL_37;
      }

      v48 = 1;
      v44 = 1;
LABEL_37:
      if (v48 < v40)
      {
        v56 = (v38 + v59 * v44 + v36);
        *v56 = LODWORD(v31[v48]);
        v56[1] = 0;
      }
    }

    while (v61);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  free(v62);
}

uint64_t pocketfft::detail::copy_input<float,4ul>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(**(result + 24) + 8 * *(result + 136));
  if (v3)
  {
    v4 = 0;
    v5 = *(result + 80);
    v6 = *(a2 + 48);
    do
    {
      v7 = 0;
      v8 = *(a3 + 16 * v4);
      do
      {
        v9 = *(v6 + v5 * v4 + *(result + 48 + 8 * v7));
        v10 = v8;
        *(&v10 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) = v9;
        v8 = v10;
        ++v7;
      }

      while (v7 != 4);
      *(a3 + 16 * v4++) = v10;
    }

    while (v4 != v3);
  }

  return result;
}

void _ZNK9pocketfft6detail11pocketfft_rIfE4execIDv4_fEEvPT_fb(uint64_t a1, float32x4_t *a2, char a3, double a4, __n128 a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  if (*a1)
  {
    _ZNK9pocketfft6detail5rfftpIfE4execIDv4_fEEvPT_fb(*a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    _ZN9pocketfft6detail7fftblueIfE6exec_rIDv4_fEEvPT_fb(*(a1 + 8), a2, a3, *&a4);
  }
}

void pocketfft::detail::pocketfft_r<float>::exec<float>(uint64_t a1, float *a2, char a3, float a4)
{
  if (*a1)
  {
    pocketfft::detail::rfftp<float>::exec<float>(*a1, a2, a3, a4);
  }

  else
  {
    pocketfft::detail::fftblue<float>::exec_r<float>(*(a1 + 8), a2, a3, a4);
  }
}

void _ZNK9pocketfft6detail5rfftpIfE4execIDv4_fEEvPT_fb(unint64_t *a1, float32x4_t *a2, char a3, double a4, __n128 a5, double a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v10 = *a1;
  if (*a1 == 1)
  {
    *a2 = vmulq_n_f32(*a2, *&a4);
    return;
  }

  v37 = *&a4;
  v14 = a1[3];
  v13 = a1[4];
  if (v10)
  {
    v15 = malloc_type_aligned_alloc(0x40uLL, (16 * v10 + 63) & 0xFFFFFFFFFFFFFFC0, 0x900E4C1uLL);
    if (!v15)
    {
      exception = __cxa_allocate_exception(8uLL);
      v17 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v17, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = v13 - v14;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
  if ((a3 & 1) == 0)
  {
    v20 = a2;
    if (v13 == v14)
    {
      goto LABEL_41;
    }

    v28 = 0;
    if (v19 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v19;
    }

    v30 = 1;
    v31 = v15;
    v20 = a2;
    while (1)
    {
      v32 = v20;
      v20 = v31;
      v33 = a1[3];
      v34 = *(v33 + v28);
      v35 = v34 * v30;
      v36 = *a1 / (v34 * v30);
      if (v34 > 3)
      {
        if (v34 == 5)
        {
          _ZNK9pocketfft6detail5rfftpIfE5radb5IDv4_fEEvmmPKT_PS5_PKf(a1, v36, v30, v32, v31, *(v33 + v28 + 8));
          goto LABEL_40;
        }

        if (v34 != 4)
        {
          goto LABEL_37;
        }

        _ZNK9pocketfft6detail5rfftpIfE5radb4IDv4_fEEvmmPKT_PS5_PKf(a1, v36, v30, v32, v31, *(v33 + v28 + 8));
      }

      else
      {
        if (v34 == 2)
        {
          _ZNK9pocketfft6detail5rfftpIfE5radb2IDv4_fEEvmmPKT_PS5_PKf(a1, v36, v30, v32, v31, *(v33 + v28 + 8));
          goto LABEL_40;
        }

        if (v34 != 3)
        {
LABEL_37:
          _ZNK9pocketfft6detail5rfftpIfE5radbgIDv4_fEEvmmmPT_S6_PKfS8_(a1, v36, v34, v30, v32, v31, a4, a5, *(v33 + v28 + 8), *(v33 + v28 + 16));
          goto LABEL_40;
        }

        _ZNK9pocketfft6detail5rfftpIfE5radb3IDv4_fEEvmmPKT_PS5_PKf(a1, v36, v30, v32, v31, *(v33 + v28 + 8));
      }

LABEL_40:
      v28 += 24;
      v30 = v35;
      v31 = v32;
      if (!--v29)
      {
        goto LABEL_41;
      }
    }
  }

  v20 = a2;
  if (v13 != v14)
  {
    v21 = *a1;
    if (v19 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v15;
    v20 = a2;
    do
    {
      v24 = a1[3];
      v25 = *a1 / v21;
      v26 = *(v24 + v18 - 24);
      v21 /= v26;
      if (v26 > 3)
      {
        if (v26 == 5)
        {
          _ZNK9pocketfft6detail5rfftpIfE5radf5IDv4_fEEvmmPKT_PS5_PKf(a1, v25, v21, v20, v23, *(v24 + v18 - 16));
          v27 = v20;
          v20 = v23;
          goto LABEL_23;
        }

        if (v26 != 4)
        {
          goto LABEL_20;
        }

        _ZNK9pocketfft6detail5rfftpIfE5radf4IDv4_fEEvmmPKT_PS5_PKf(a1, v25, v21, v20, v23, *(v24 + v18 - 16));
        v27 = v20;
        v20 = v23;
      }

      else
      {
        if (v26 == 2)
        {
          _ZNK9pocketfft6detail5rfftpIfE5radf2IDv4_fEEvmmPKT_PS5_PKf(a1, v25, v21, v20, v23, *(v24 + v18 - 16));
          v27 = v20;
          v20 = v23;
          goto LABEL_23;
        }

        if (v26 != 3)
        {
LABEL_20:
          _ZNK9pocketfft6detail5rfftpIfE5radfgIDv4_fEEvmmmPT_S6_PKfS8_(a4, a5.n128_f64[0], a6, a7, a8, a9, a1, v25, v26, v21, v20, v23, *(v24 + v18 - 16), *(v24 + v18 - 8));
          v27 = v23;
          goto LABEL_23;
        }

        _ZNK9pocketfft6detail5rfftpIfE5radf3IDv4_fEEvmmPKT_PS5_PKf(a1, v25, v21, v20, v23, *(v24 + v18 - 16));
        v27 = v20;
        v20 = v23;
      }

LABEL_23:
      v18 -= 24;
      v23 = v27;
      --v22;
    }

    while (v22);
  }

LABEL_41:
  _ZNK9pocketfft6detail5rfftpIfE13copy_and_normIDv4_fEEvPT_S6_f(a1, a2, v20, v37);

  free(v15);
}

void _ZN9pocketfft6detail7fftblueIfE6exec_rIDv4_fEEvPT_fb(uint64_t *a1, float32x4_t *a2, int a3, float a4)
{
  _ZN9pocketfft6detail3arrINS0_5cmplxIDv4_fEEEC1Em(&v26, *a1);
  if (a3)
  {
    if (*a1)
    {
      v8 = 0;
      v9 = 0;
      v10 = vmulq_f32(*a2, 0);
      do
      {
        v11 = v26 + v8;
        *v11 = a2[v9];
        v11[1] = v10;
        ++v9;
        v8 += 32;
      }

      while (v9 < *a1);
    }

    _ZNK9pocketfft6detail7fftblueIfE3fftILb1EDv4_fEEvPNS0_5cmplxIT0_EEf(a1, v26, a4);
    v12 = v26;
    *a2 = *v26;
    if (*a1 != 1)
    {
      memmove(&a2[1], v12 + 32, 16 * (*a1 - 1));
    }
  }

  else
  {
    v13 = v26;
    v14 = vmulq_f32(*a2, 0);
    *v26 = *a2;
    v13[1] = v14;
    if (*a1 != 1)
    {
      v15 = v26;
      memmove(v26 + 32, &a2[1], 16 * (*a1 - 1));
      v16 = *a1;
      if ((*a1 & 1) == 0)
      {
        v15[v16 + 1] = vmulq_f32(*a2, 0);
        v16 = *a1;
      }

      if (v16 >= 3)
      {
        v17 = 0;
        v18 = -1;
        do
        {
          v19 = v26 + 32 * v16 + 32 * v18;
          v20 = (v26 + 16 * v17);
          v21 = vnegq_f32(v20[3]);
          *v19 = v20[2];
          v19[1] = v21;
          v16 = *a1;
          --v18;
          v22 = v17 + 4;
          v17 += 2;
        }

        while (v22 < *a1);
      }
    }

    _ZNK9pocketfft6detail7fftblueIfE3fftILb0EDv4_fEEvPNS0_5cmplxIT0_EEf(a1, v26, a4);
    v12 = v26;
    if (*a1)
    {
      v23 = 0;
      v24 = v26;
      do
      {
        v25 = *v24;
        v24 += 2;
        a2[v23++] = v25;
      }

      while (v23 < *a1);
    }
  }

  free(v12);
}

void _ZNK9pocketfft6detail5rfftpIfE5radf4IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a2 << 6;
    v7 = a5 - 16;
    v8 = (a5 + 32 * a2);
    v9 = a3 * a2;
    v10 = 16 * a2;
    v11 = a4;
    v12 = v8;
    v13 = (a5 - 16);
    v14 = a3;
    do
    {
      v15 = v11[3 * a3 * a2];
      v16 = v11[v9];
      v17 = vaddq_f32(v15, v16);
      v18 = v11[2 * a3 * a2];
      v19 = vaddq_f32(*v11, v18);
      v12[-1] = vsubq_f32(*v11, v18);
      *v12 = vsubq_f32(v15, v16);
      v13[1] = vaddq_f32(v17, v19);
      v13 = (v13 + v6);
      v20 = vsubq_f32(v19, v17);
      *v13 = v20;
      v12 = (v12 + v6);
      v11 = (v11 + v10);
      --v14;
    }

    while (v14);
    if ((a2 & 1) == 0)
    {
      v21 = a4 - 1;
      v20 = vdupq_n_s32(0xBF3504F3);
      v22 = vdupq_n_s32(0x3F3504F3u);
      v23 = a3;
      do
      {
        v24 = *(v21 + a2 * (16 * a3 + 16));
        v25 = *(v21 + a2 * (48 * a3 + 16));
        v26 = vmulq_f32(vaddq_f32(v24, v25), v20);
        v27 = vmulq_f32(vsubq_f32(v24, v25), v22);
        v28 = (v7 + 48 * a2);
        v29 = *(v21 + a2 * ((32 * a3) | 0x10));
        v21 = (v21 + v10);
        v30 = vaddq_f32(*v21, v27);
        v31 = vsubq_f32(*v21, v27);
        v32 = (v7 + v10);
        *v32 = v30;
        *v28 = v31;
        v28[1] = vaddq_f32(v26, v29);
        v32[1] = vsubq_f32(v26, v29);
        v7 += v6;
        --v23;
      }

      while (v23);
    }

    if (a2 >= 3)
    {
      v33 = 0;
      v34 = &a4[3 * v9];
      v35 = &a4[2 * v9];
      v36 = v8 - 3;
      v37 = a5 + (a2 << 6) - 48;
      v39 = &a4[v9];
      do
      {
        v40 = 0;
        v41 = a6;
        v42 = v37;
        v43 = v36;
        v44 = 2;
        do
        {
          v20.i32[0] = *(v41 + 4);
          v45 = v39[v40 + 1];
          v46 = v39[v40 + 2];
          v47 = v41;
          v49 = vld1q_dup_f32(v47);
          v38 = 8 * a2 - 4;
          v48 = (v47 + v38);
          v50 = vdupq_lane_s32(*v20.f32, 0);
          v51 = vmlaq_f32(vmulq_n_f32(v46, v20.f32[0]), v45, v49);
          v52 = vnegq_f32(v50);
          v53 = *(v41 + 4 * a2 - 4);
          v54 = vmulq_f32(v45, v52);
          v52.i32[0] = *(v41 + 4 * a2);
          v55 = v35[v40 + 1];
          v56 = v35[v40 + 2];
          v57 = vmlaq_f32(v54, v46, v49);
          v58 = vmlaq_n_f32(vmulq_n_f32(v56, v52.f32[0]), v55, v53);
          v59 = vmulq_f32(v55, vnegq_f32(vdupq_lane_s32(*v52.f32, 0)));
          v52.f32[0] = *(v48 - 1);
          v55.f32[0] = *v48;
          v60 = v34[v40 + 1];
          v61 = v34[v40 + 2];
          v62 = vmlaq_n_f32(v59, v56, v53);
          v63 = vdupq_lane_s32(*v55.f32, 0);
          v64 = vmlaq_n_f32(vmulq_n_f32(v61, *v48), v60, v52.f32[0]);
          v65 = vmlaq_n_f32(vmulq_f32(v60, vnegq_f32(v63)), v61, v52.f32[0]);
          v66 = vaddq_f32(v51, v64);
          v67 = a4[v40 + 1];
          v68 = a4[v40 + 2];
          v69 = vsubq_f32(v64, v51);
          v70 = vaddq_f32(v58, v67);
          v71 = vsubq_f32(v67, v58);
          v72 = vaddq_f32(v62, v68);
          v73 = vsubq_f32(v68, v62);
          v74 = vaddq_f32(v57, v65);
          v75 = vsubq_f32(v57, v65);
          v76 = (a5 + v40 * 16);
          v76[1] = vaddq_f32(v70, v66);
          *v42 = vsubq_f32(v70, v66);
          v76[2] = vaddq_f32(v74, v72);
          v42[1] = vsubq_f32(v74, v72);
          v77 = &v8[v40];
          v77[1] = vaddq_f32(v71, v75);
          *v43 = vsubq_f32(v71, v75);
          v44 += 2;
          v40 += 2;
          v77[2] = vaddq_f32(v69, v73);
          v20 = vsubq_f32(v69, v73);
          v43[1] = v20;
          v43 -= 2;
          v42 -= 2;
          v41 += 8;
        }

        while (v44 < a2);
        ++v33;
        v34 = (v34 + v10);
        v36 = (v36 + v6);
        v37 += v6;
        v35 = (v35 + v10);
        v39 = (v39 + v10);
        v8 = (v8 + v6);
        a5 += v6;
        a4 = (a4 + v10);
      }

      while (v33 != a3);
    }
  }
}

float32x4_t *_ZNK9pocketfft6detail5rfftpIfE5radf2IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 32 * a2;
    v7 = 16 * a2;
    v8 = a3 * a2;
    v9 = a4;
    v10 = a5;
    v11 = a3;
    do
    {
      v12 = *v9;
      v13 = v9[v8];
      *v10 = vaddq_f32(*v9, v13);
      v10[2 * a2 - 1] = vsubq_f32(v12, v13);
      v10 = (v10 + v6);
      v9 = (v9 + v7);
      --v11;
    }

    while (v11);
    if ((a2 & 1) == 0)
    {
      v14 = a4 - 1;
      v15 = &a5[a2];
      v16 = a3;
      do
      {
        v17 = vnegq_f32(*(v14 + a2 * (16 * a3 + 16)));
        v14 = (v14 + v7);
        v13 = *v14;
        v15[-1] = *v14;
        *v15 = v17;
        v15 = (v15 + v6);
        --v16;
      }

      while (v16);
    }

    if (a2 >= 3)
    {
      v18 = 0;
      v19 = &a5[2 * a2 - 3];
      v20 = &a4[v8];
      do
      {
        v21 = 0;
        v22 = (a6 + 4);
        v23 = v19;
        v24 = 2;
        do
        {
          v25 = *(v22 - 1);
          v13.f32[0] = *v22;
          v26 = v20[v21 + 1];
          v27 = v20[v21 + 2];
          v28 = vdupq_lane_s32(*v13.f32, 0);
          v13 = vmlaq_n_f32(vmulq_n_f32(v27, *v22), v26, v25);
          v29 = vmlaq_n_f32(vmulq_f32(v26, vnegq_f32(v28)), v27, v25);
          result = &a5[v21];
          v31 = a4[v21 + 1];
          v32 = a4[v21 + 2];
          result[1] = vaddq_f32(v31, v13);
          *v23 = vsubq_f32(v31, v13);
          result[2] = vaddq_f32(v29, v32);
          v24 += 2;
          v23[1] = vsubq_f32(v29, v32);
          v23 -= 2;
          v21 += 2;
          v22 += 2;
        }

        while (v24 < a2);
        ++v18;
        v19 += v6;
        a4 = (a4 + v7);
        a5 = (a5 + v6);
        v20 = (v20 + v7);
      }

      while (v18 != a3);
    }
  }

  return result;
}

void _ZNK9pocketfft6detail5rfftpIfE5radf3IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a3 * a2;
    v7 = 16 * a2;
    v8 = 48 * a2;
    v9 = vdupq_n_s32(0x3F5DB3D7u);
    v10.i64[0] = 0xBF000000BF000000;
    v10.i64[1] = 0xBF000000BF000000;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    do
    {
      v14 = v12[v6];
      v15 = v12[2 * a3 * a2];
      v16 = vaddq_f32(v14, v15);
      v17 = *v12;
      *v11 = vaddq_f32(*v12, v16);
      v18 = vmulq_f32(vsubq_f32(v15, v14), v9);
      v19 = &v11[2 * a2];
      v19[-1] = vmlaq_f32(v17, v10, v16);
      *v19 = v18;
      v12 = (v12 + v7);
      v11 = (v11 + v8);
      --v13;
    }

    while (v13);
    if (a2 != 1)
    {
      v20 = 0;
      v21 = (a6 + 4 * a2);
      v22 = &a5[2 * a2];
      v23 = v22 - 3;
      v24 = &a4[2 * v6];
      v25 = a6 - 4;
      v26.i64[0] = 0xBF000000BF000000;
      v26.i64[1] = 0xBF000000BF000000;
      v27 = vdupq_n_s32(0x3F5DB3D7u);
      v28 = &a4[v6];
      do
      {
        if (a2 >= 3)
        {
          v29 = 0;
          v30 = v21;
          v31 = v25;
          v32 = v23;
          v33 = 2;
          do
          {
            v34 = *(v31 + 8);
            v31 += 8;
            v18.f32[0] = v34;
            v35 = *(v31 - 4);
            v36 = v28[v29 + 1];
            v37 = v28[v29 + 2];
            v38 = vdupq_lane_s32(*v18.f32, 0);
            v39 = vmlaq_n_f32(vmulq_n_f32(v37, v34), v36, v35);
            v40 = vnegq_f32(v38);
            v41 = vmulq_f32(v36, v40);
            v42 = *(v30 - 1);
            v40.f32[0] = *v30;
            v43 = vdupq_lane_s32(*v40.f32, 0);
            v44 = vmlaq_n_f32(v41, v37, v35);
            v46 = v24[v29 + 1];
            v45 = v24[v29 + 2];
            v47 = vmlaq_n_f32(vmulq_n_f32(v45, *v30), v46, v42);
            v48 = vmlaq_n_f32(vmulq_f32(v46, vnegq_f32(v43)), v45, v42);
            v49 = vaddq_f32(v39, v47);
            v50 = vsubq_f32(v47, v39);
            v51 = vaddq_f32(v44, v48);
            v52 = vsubq_f32(v44, v48);
            v54 = a4[v29 + 1];
            v53 = a4[v29 + 2];
            v55 = vaddq_f32(v54, v49);
            v56 = vmlaq_f32(v54, v26, v49);
            v57 = vaddq_f32(v53, v51);
            v58 = vmlaq_f32(v53, v26, v51);
            v59 = &a5[v29];
            v60 = vmulq_f32(v52, v27);
            v61 = vmulq_f32(v50, v27);
            v62 = &v22[v29];
            v59[1] = v55;
            v59[2] = v57;
            v62[1] = vaddq_f32(v56, v60);
            *v32 = vsubq_f32(v56, v60);
            v33 += 2;
            v62[2] = vaddq_f32(v61, v58);
            v18 = vsubq_f32(v61, v58);
            v32[1] = v18;
            v32 -= 2;
            v29 += 2;
            v30 += 2;
          }

          while (v33 < a2);
        }

        ++v20;
        v23 = (v23 + v8);
        v24 = (v24 + v7);
        v28 = (v28 + v7);
        v22 = (v22 + v8);
        a5 = (a5 + v8);
        a4 = (a4 + v7);
      }

      while (v20 != a3);
    }
  }
}

void _ZNK9pocketfft6detail5rfftpIfE5radf5IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a3)
  {
    v7 = a3 * a2;
    v8 = 16 * a2;
    v9 = 80 * a2;
    v10 = vdupq_n_s32(0x3E9E377Au);
    v11 = vdupq_n_s32(0xBF4F1BBD);
    v12 = vdupq_n_s32(0x3F167918u);
    v13 = vdupq_n_s32(0x3F737871u);
    v14 = vdupq_n_s32(0xBF737871);
    v15 = a5;
    v16 = a4;
    v17 = a3;
    do
    {
      v18 = v16[4 * a3 * a2];
      v19 = v16[v7];
      v20 = vaddq_f32(v18, v19);
      v21 = vsubq_f32(v18, v19);
      v22 = v16[3 * a3 * a2];
      v23 = v16[2 * a3 * a2];
      v24 = vaddq_f32(v22, v23);
      v25 = vsubq_f32(v22, v23);
      v26 = *v16;
      *v15 = vaddq_f32(v24, vaddq_f32(v20, *v16));
      v27 = vmlaq_f32(vmlaq_f32(v26, v10, v20), v11, v24);
      v28 = &v15[2 * a2 - 1];
      *v28 = v27;
      v28[1] = vmlaq_f32(vmulq_f32(v25, v12), v13, v21);
      v29 = &v15[4 * a2 - 1];
      *v29 = vmlaq_f32(vmlaq_f32(v26, v11, v20), v10, v24);
      v29[1] = vmlaq_f32(vmulq_f32(v25, v14), v12, v21);
      v16 = (v16 + v8);
      v15 = (v15 + v9);
      --v17;
    }

    while (v17);
    if (a2 != 1)
    {
      v30 = 0;
      v31 = &a5[2 * a2];
      v32 = a2;
      v33 = vdupq_n_s32(0x3E9E377Au);
      v34 = vdupq_n_s32(0xBF4F1BBD);
      v35 = vdupq_n_s32(0x3F167918u);
      v36 = &a5[4 * a2];
      v37 = vdupq_n_s32(0x3F737871u);
      v38 = &a4[4 * v7];
      v39 = vdupq_n_s32(0xBF737871);
      v40 = &a4[3 * v7];
      v41 = 4 * a2 - 4;
      v42 = &a4[2 * v7];
      v43 = &a4[v7];
      do
      {
        if (a2 >= 3)
        {
          v44 = 0;
          v45 = 0xFFFFFFFFFFFFFFDLL;
          v46 = a6;
          v47 = 2;
          do
          {
            v21.i32[0] = *(v46 + 4);
            v48 = v43[v44 + 1];
            v49 = v43[v44 + 2];
            v50 = v46;
            v52 = vld1q_dup_f32(v50);
            v51 = &v50[v32];
            v53 = vdupq_lane_s32(*v21.f32, 0);
            v54 = vmlaq_f32(vmulq_n_f32(v49, v21.f32[0]), v48, v52);
            v55 = (v46 + v41);
            v27.f32[0] = *v51;
            v56 = v42[v44 + 1];
            v57 = v42[v44 + 2];
            v59 = vld1q_dup_f32(v55);
            v58 = &v55[v32];
            v60 = vdupq_lane_s32(*v27.f32, 0);
            v61 = vmulq_f32(v48, vnegq_f32(v53));
            v62 = vmlaq_f32(vmulq_n_f32(v57, *v51), v56, v59);
            v63 = v40[v44 + 1];
            v64 = v40[v44 + 2];
            v6.i32[0] = *v58;
            v65 = (v46 + v41 + v41);
            v67 = vld1q_dup_f32(v65);
            v66 = &v65[v32];
            v68 = vmlaq_f32(v61, v49, v52);
            v69 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v60)), v57, v59);
            v70 = vmlaq_f32(vmulq_n_f32(v64, v6.f32[0]), v63, v67);
            v57.i32[0] = *(v46 + v41 + v41 + v41);
            v59.f32[0] = *v66;
            v71 = vmulq_f32(v63, vnegq_f32(vdupq_lane_s32(*v6.f32, 0)));
            v72 = v38[v44 + 1];
            v73 = v38[v44 + 2];
            v74 = vdupq_lane_s32(*v59.f32, 0);
            v75 = vmlaq_f32(v71, v64, v67);
            v76 = vmlaq_n_f32(vmulq_n_f32(v73, *v66), v72, v57.f32[0]);
            v77 = vmulq_f32(v72, vnegq_f32(v74));
            v78 = vaddq_f32(v54, v76);
            v79 = vmlaq_n_f32(v77, v73, v57.f32[0]);
            v80 = vsubq_f32(v76, v54);
            v81 = vaddq_f32(v62, v70);
            v82 = vsubq_f32(v70, v62);
            v83 = vaddq_f32(v69, v75);
            v84 = vsubq_f32(v69, v75);
            v85 = vaddq_f32(v68, v79);
            v87 = a4[v44 + 1];
            v86 = a4[v44 + 2];
            v88 = vaddq_f32(v81, vaddq_f32(v87, v78));
            v89 = vsubq_f32(v68, v79);
            v90 = &a5[v44];
            v91 = vmlaq_f32(vmlaq_f32(v87, v33, v78), v34, v81);
            v27 = vaddq_f32(v83, vaddq_f32(v86, v85));
            v92 = vmlaq_f32(vmlaq_f32(v87, v34, v78), v33, v81);
            v93 = vmlaq_f32(v86, v34, v85);
            v6 = vmlaq_f32(vmlaq_f32(a4[v44 + 2], v33, v85), v34, v83);
            v94 = vmlaq_f32(vmulq_f32(v84, v35), v37, v89);
            v95 = vmlaq_f32(vmulq_f32(v82, v35), v37, v80);
            v96 = vmlaq_f32(v93, v33, v83);
            v97 = vmlaq_f32(vmulq_f32(v84, v39), v35, v89);
            v98 = vmlaq_f32(vmulq_f32(v82, v39), v35, v80);
            v99 = &v31[v44];
            v90[1] = v88;
            v90[2] = v27;
            v100 = &v31[v45];
            v99[1] = vaddq_f32(v94, v91);
            *v100 = vsubq_f32(v91, v94);
            v99[2] = vaddq_f32(v95, v6);
            v101 = &v36[v44];
            v102 = &v36[v45];
            v100[1] = vsubq_f32(v95, v6);
            v101[1] = vaddq_f32(v97, v92);
            *v102 = vsubq_f32(v92, v97);
            v47 += 2;
            v101[2] = vaddq_f32(v98, v96);
            v21 = vsubq_f32(v98, v96);
            v102[1] = v21;
            v46 += 8;
            v45 -= 2;
            v44 += 2;
          }

          while (v47 < a2);
        }

        ++v30;
        v31 = (v31 + v9);
        v36 = (v36 + v9);
        v38 = (v38 + v8);
        v40 = (v40 + v8);
        v42 = (v42 + v8);
        v43 = (v43 + v8);
        a4 = (a4 + v8);
        a5 = (a5 + v9);
      }

      while (v30 != a3);
    }
  }
}

void _ZNK9pocketfft6detail5rfftpIfE5radfgIDv4_fEEvmmmPT_S6_PKfS8_(double a1, double a2, double a3, double a4, float32x4_t a5, float32x4_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, float32x4_t *a11, float32x4_t *a12, uint64_t a13, uint64_t a14)
{
  v14 = a12;
  v15 = a10;
  v17 = a9 + 1;
  v18 = (a9 + 1) >> 1;
  v19 = a10 * a8;
  v20 = 16 * a8;
  v21 = a8 - 2;
  if (a8 >= 2)
  {
    if (v17 <= 3)
    {
      v121 = 0;
      v164 = a9 - 1;
LABEL_68:
      v50 = a11;
      if (!v19)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    v22 = &a11[v19 + 2];
    v23 = (a13 + 4);
    v24 = 4 * a8 - 4;
    v25 = &a11[v19 * (a9 - 1) + 2];
    v26 = a13 + 4 + 4 * (a8 - 1) * (a9 - 2);
    v27 = 4 - 4 * a8;
    v28 = 1;
    do
    {
      if (v15)
      {
        v29 = 0;
        v30 = v25;
        v31 = v22;
        do
        {
          if (v21)
          {
            v32 = v26;
            v33 = v30;
            v34 = v23;
            v35 = v31;
            v36 = 1;
            do
            {
              v37 = v35[-1];
              v38 = v33[-1];
              a5.f32[0] = *(v34 - 1);
              a6.f32[0] = *v34;
              v39 = vdupq_lane_s32(*a6.f32, 0);
              a6 = vmlaq_n_f32(vmulq_n_f32(*v35, *v34), v37, a5.f32[0]);
              v40 = vmlaq_n_f32(vmulq_f32(v37, vnegq_f32(v39)), *v35, a5.f32[0]);
              v41 = *(v32 - 1);
              a5.f32[0] = *v32;
              v42 = vdupq_lane_s32(*a5.f32, 0);
              a5 = vmlaq_n_f32(vmulq_n_f32(*v33, *v32), v38, v41);
              v43 = vmlaq_n_f32(vmulq_f32(v38, vnegq_f32(v42)), *v33, v41);
              v35[-1] = vaddq_f32(a6, a5);
              *v33 = vsubq_f32(a5, a6);
              *v35 = vaddq_f32(v40, v43);
              v35 += 2;
              v36 += 2;
              v33[-1] = vsubq_f32(v40, v43);
              v34 += 2;
              v33 += 2;
              v32 += 2;
            }

            while (v36 <= v21);
          }

          ++v29;
          v31 = (v31 + v20);
          v30 = (v30 + v20);
        }

        while (v29 != v15);
      }

      ++v28;
      v22 += 16 * v19;
      v23 = (v23 + v24);
      v25 -= 16 * v19;
      v26 += v27;
    }

    while (v28 != v18);
  }

  v44 = a9 - 1;
  v164 = a9 - 1;
  if (v17 < 4)
  {
    v121 = 0;
    goto LABEL_68;
  }

  v45 = v19 * v44;
  v46 = 16 * v19 * v44;
  v47 = 16 * v19;
  v48 = 1;
  v49 = 16 * v19;
  v50 = a11;
  do
  {
    v51 = a11;
    for (i = v15; i; --i)
    {
      v53 = *(v51 + v46);
      *(v51 + v46) = vsubq_f32(v53, *(v51 + v49));
      *(v51 + v49) = vaddq_f32(v53, *(v51 + v49));
      v51 = (v51 + v20);
    }

    ++v48;
    v46 -= v47;
    v49 += v47;
  }

  while (v48 != v18);
  v163 = v15;
  v54 = &a11[v19];
  v55 = 32 * v19;
  v56 = &a11[2 * v19];
  v57 = &a11[v45];
  v172 = v18 - 3;
  v58 = &v14[v19];
  v59 = &v14[v45];
  v60 = v19 << 6;
  v61 = 1;
  v168 = v18;
  v170 = 16 * v19;
  v167 = v57;
  v166 = v18 - 1;
  do
  {
    v62 = 2 * v61;
    if (v19)
    {
      v63 = 0;
      v64 = (a14 + 8 * v61);
      v65 = vld1q_dup_f32(v64++);
      v66 = (a14 + 16 * v61);
      v67 = vld1q_dup_f32(v66++);
      v68 = vld1q_dup_f32(v64);
      v69 = vld1q_dup_f32(v66);
      do
      {
        v58[v63] = vmlaq_f32(vmlaq_f32(v50[v63], v54[v63], v65), v56[v63], v67);
        v59[v63] = vmlaq_f32(vmulq_f32(a11[v19 * (a9 - 2) + v63], v69), v57[v63], v68);
        ++v63;
      }

      while (v19 != v63);
    }

    if (v172 < 4)
    {
      v79 = a9 - 3;
      v78 = 3;
    }

    else
    {
      v71 = &a11[v19 * (a9 - 6)];
      v70 = &a11[v19 * (a9 - 5)];
      v72 = &a11[v19 * (a9 - 4)];
      v73 = &a11[v19 * (a9 - 3)];
      v75 = &a11[6 * v19];
      v74 = &a11[5 * v19];
      v76 = &a11[4 * v19];
      v77 = &a11[3 * v19];
      v78 = 3;
      v79 = a9 - 3;
      do
      {
        if (v62 + v61 >= a9)
        {
          v80 = a9;
        }

        else
        {
          v80 = 0;
        }

        v81 = v62 + v61 - v80;
        if (v81 + v61 >= a9)
        {
          v82 = a9;
        }

        else
        {
          v82 = 0;
        }

        v83 = v81 + v61 - v82;
        if (v83 + v61 >= a9)
        {
          v84 = a9;
        }

        else
        {
          v84 = 0;
        }

        v85 = v83 + v61 - v84;
        if (v85 + v61 >= a9)
        {
          v86 = a9;
        }

        else
        {
          v86 = 0;
        }

        v62 = v85 + v61 - v86;
        if (v19)
        {
          v87 = 0;
          v88 = (a14 + 8 * v85);
          v89 = (a14 + 8 * v83);
          v90 = (a14 + 8 * v81);
          v91 = vld1q_dup_f32(v90++);
          v92 = vld1q_dup_f32(v89++);
          v93 = vld1q_dup_f32(v88++);
          v94 = (a14 + 8 * v62);
          v95 = vld1q_dup_f32(v94++);
          v96 = vld1q_dup_f32(v90);
          v97 = vld1q_dup_f32(v89);
          v98 = vld1q_dup_f32(v88);
          v99 = vld1q_dup_f32(v94);
          do
          {
            v58[v87] = vaddq_f32(v58[v87], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v92, v76[v87]), v77[v87], v91), v74[v87], v93), v75[v87], v95));
            v59[v87] = vaddq_f32(v59[v87], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v97, v72[v87]), v73[v87], v96), v70[v87], v98), v71[v87], v99));
            ++v87;
          }

          while (v19 != v87);
        }

        v78 += 4;
        v79 -= 4;
        v77 = (v77 + v60);
        v76 = (v76 + v60);
        v74 = (v74 + v60);
        v75 = (v75 + v60);
        v73 -= 4 * v19;
        v72 -= 4 * v19;
        v70 -= 4 * v19;
        v71 -= 4 * v19;
      }

      while (v78 < v172);
    }

    if (v78 >= v166)
    {
      v18 = v168;
      v50 = a11;
      v56 = &a11[2 * v19];
      v54 = &a11[v19];
    }

    else
    {
      v50 = a11;
      v100 = a11 + v170 * v78;
      v101 = &a11[v170 / 0x10] + v170 * v78;
      v102 = a11 + v170 * v79;
      v103 = a11 + v170 * (v79 - 1);
      v18 = v168;
      v56 = &a11[2 * v19];
      v54 = &a11[v19];
      do
      {
        if (v62 + v61 >= a9)
        {
          v104 = a9;
        }

        else
        {
          v104 = 0;
        }

        v105 = v62 + v61 - v104;
        if (v105 + v61 >= a9)
        {
          v106 = a9;
        }

        else
        {
          v106 = 0;
        }

        v62 = v105 + v61 - v106;
        if (v19)
        {
          v107 = 0;
          v108 = (a14 + 8 * v62);
          v109 = (a14 + 8 * v105);
          v110 = vld1q_dup_f32(v109++);
          v111 = vld1q_dup_f32(v108++);
          v112 = vld1q_dup_f32(v109);
          v113 = vld1q_dup_f32(v108);
          do
          {
            v58[v107] = vaddq_f32(v58[v107], vmlaq_f32(vmulq_f32(v111, *&v101[16 * v107]), *&v100[16 * v107], v110));
            v59[v107] = vaddq_f32(v59[v107], vmlaq_f32(vmulq_f32(v113, *&v103[16 * v107]), *&v102[16 * v107], v112));
            ++v107;
          }

          while (v19 != v107);
        }

        v78 += 2;
        v79 -= 2;
        v100 += v55;
        v101 += v55;
        v102 -= 32 * v19;
        v103 -= 32 * v19;
      }

      while (v78 < v166);
    }

    if (v78 < v18)
    {
      v114 = v50 + v170 * v78;
      v115 = v50 + v170 * v79;
      do
      {
        if (v62 + v61 >= a9)
        {
          v116 = a9;
        }

        else
        {
          v116 = 0;
        }

        v62 = v62 + v61 - v116;
        if (v19)
        {
          v117 = 0;
          v118 = (a14 + 8 * v62);
          v119 = vld1q_dup_f32(v118++);
          v120 = vld1q_dup_f32(v118);
          do
          {
            v58[v117] = vmlaq_f32(v58[v117], *&v114[16 * v117], v119);
            v59[v117] = vmlaq_f32(v59[v117], *&v115[16 * v117], v120);
            ++v117;
          }

          while (v19 != v117);
        }

        ++v78;
        v114 += v170;
        v115 -= 16 * v19;
      }

      while (v78 != v18);
    }

    ++v61;
    v58 = (v58 + v170);
    v59 -= v19;
    v57 = v167;
  }

  while (v61 != v18);
  v121 = 1;
  v15 = v163;
  v14 = a12;
  if (v19)
  {
LABEL_69:
    memcpy(v14, v50, 16 * v19);
  }

LABEL_70:
  if (v121)
  {
    v122 = 1;
    v123 = &v50[v19];
    do
    {
      v124 = v14;
      v125 = v123;
      for (j = v19; j; --j)
      {
        v127 = *v125++;
        *v124 = vaddq_f32(v127, *v124);
        ++v124;
      }

      ++v122;
      v123 += v19;
    }

    while (v122 != v18);
  }

  v173 = v121;
  v128 = v15;
  if (v15)
  {
    v129 = a11;
    v130 = a12;
    do
    {
      if (a8)
      {
        memcpy(v129, v130, v20);
      }

      v130 = (v130 + v20);
      v129 += a9 * a8;
      --v15;
    }

    while (v15);
  }

  if (v173)
  {
    v131 = 16 * v19;
    v132 = 32 * a8;
    f32 = a11[2 * a8].f32;
    v134 = 16 * a9 * a8;
    v135 = 16 * v19 * v164;
    v136 = 1;
    v137 = f32;
    v138 = 16 * v19;
    do
    {
      v139 = v137;
      v140 = a12;
      for (k = v128; k; --k)
      {
        v142 = *(v140 + v135);
        *(v139 - 1) = *(v140 + v138);
        *v139 = v142;
        v140 = (v140 + v20);
        v139 = (v139 + v134);
      }

      ++v136;
      v138 += v131;
      v137 = (v137 + v132);
      v135 -= v131;
    }

    while (v136 != v18);
    v143 = v173 ^ 1;
    if (a8 == 1)
    {
      v143 = 1;
    }

    if ((v143 & 1) == 0)
    {
      v144 = &a12[v19 + 2];
      v145 = (f32 - 3);
      v146 = (f32 + 2);
      v147 = &a12[v19 * v164 + 2];
      v148 = 1;
      do
      {
        if (v128)
        {
          v149 = 0;
          v150 = v147;
          v151 = v146;
          v152 = v145;
          v153 = v144;
          do
          {
            if (v21)
            {
              v154 = v150;
              v155 = v151;
              v156 = v152;
              v157 = v153;
              v158 = 1;
              do
              {
                v159 = v157[-1];
                v160 = *v157;
                v161 = v154[-1];
                v162 = *v154;
                v155[-1] = vaddq_f32(v159, v161);
                *v156 = vsubq_f32(v159, v161);
                *v155 = vaddq_f32(v160, v162);
                v155 += 2;
                v158 += 2;
                v157 += 2;
                v156[1] = vsubq_f32(v162, v160);
                v156 -= 2;
                v154 += 2;
              }

              while (v158 <= v21);
            }

            ++v149;
            v153 = (v153 + v20);
            v152 = (v152 + v134);
            v151 = (v151 + v134);
            v150 = (v150 + v20);
          }

          while (v149 != v128);
        }

        ++v148;
        v144 += v131;
        v145 = (v145 + v132);
        v146 = (v146 + v132);
        v147 -= 16 * v19;
      }

      while (v148 != v18);
    }
  }
}

void _ZNK9pocketfft6detail5rfftpIfE5radb4IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a2 << 6;
    v7 = a3 * a2;
    v8 = 16 * a2;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    do
    {
      v12 = v10[4 * a2 - 1];
      v13 = vaddq_f32(*v10, v12);
      v14 = vsubq_f32(*v10, v12);
      v15 = vaddq_f32(v10[2 * a2 - 1], v10[2 * a2 - 1]);
      v16 = vaddq_f32(v10[2 * a2], v10[2 * a2]);
      *v9 = vaddq_f32(v13, v15);
      v9[2 * a3 * a2] = vsubq_f32(v13, v15);
      v9[3 * a3 * a2] = vaddq_f32(v14, v16);
      v9[v7] = vsubq_f32(v14, v16);
      v10 = (v10 + v6);
      v9 = (v9 + v8);
      --v11;
    }

    while (v11);
    if ((a2 & 1) == 0)
    {
      v17 = v8 - 16;
      v18 = vdupq_n_s32(0x3FB504F3u);
      v19 = vdupq_n_s32(0xBFB504F3);
      v20 = a4;
      v21 = a5;
      v22 = a3;
      do
      {
        v23 = v20[a2];
        v25 = v20[3 * a2 - 1];
        v24 = v20[3 * a2];
        v26 = vaddq_f32(v24, v23);
        v27 = vsubq_f32(v24, v23);
        v28 = *(v20 + v17);
        v29 = vaddq_f32(v28, v25);
        v30 = vsubq_f32(v28, v25);
        *(v21 + v17) = vaddq_f32(v29, v29);
        *(v21 + a2 * (16 * a3 + 16) - 16) = vmulq_f32(vsubq_f32(v30, v26), v18);
        *(v21 + a2 * ((32 * a3) | 0x10) - 16) = vaddq_f32(v27, v27);
        *(v21 + a2 * (48 * a3 + 16) - 16) = vmulq_f32(vaddq_f32(v26, v30), v19);
        v21 = (v21 + v8);
        v20 = (v20 + v6);
        --v22;
      }

      while (v22);
    }

    if (a2 >= 3)
    {
      v31 = 0;
      v32 = a6 + 8 * a2 - 4;
      v33 = a5 + 1;
      v34 = (a6 + 4 * a2);
      v35 = &a5[2 * v7 + 1];
      v36 = &a5[3 * v7 + 1];
      v37 = (a6 + 4);
      v38 = &a5[v7 + 1];
      v39 = &a4[2 * a2];
      do
      {
        v40 = 0;
        v41 = v37;
        v42 = v34;
        v43 = v32;
        v44 = v6 - 48;
        v45 = 32 * a2 - 48;
        v46 = 2;
        do
        {
          v47 = a4[v40 + 1];
          v48 = a4[v40 + 2];
          v49 = *(a4 + v44);
          v50 = *(a4 + v44 + 16);
          v51 = vaddq_f32(v47, v49);
          v52 = vsubq_f32(v47, v49);
          v53 = vaddq_f32(v48, v50);
          v54 = vsubq_f32(v48, v50);
          v56 = v39[v40 + 1];
          v55 = v39[v40 + 2];
          v58 = *(a4 + v45);
          v57 = *(a4 + v45 + 16);
          v59 = vaddq_f32(v55, v57);
          v60 = vsubq_f32(v55, v57);
          v61 = vaddq_f32(v56, v58);
          v62 = vsubq_f32(v56, v58);
          v63 = &v33[v40];
          v64 = vaddq_f32(v51, v61);
          v65 = vsubq_f32(v51, v61);
          *v63 = v64;
          v63[1] = vaddq_f32(v54, v60);
          v66 = vsubq_f32(v54, v60);
          v67 = vaddq_f32(v52, v59);
          v68 = vsubq_f32(v52, v59);
          v69 = vaddq_f32(v53, v62);
          v70 = vsubq_f32(v53, v62);
          v71 = (v38 + v40 * 16);
          v62.f32[0] = *(v41 - 1);
          v64.f32[0] = *v41;
          v72 = vdupq_lane_s32(*v64.f32, 0);
          v73 = vmlaq_n_f32(vmulq_n_f32(v68, *v41), v69, v62.f32[0]);
          *v71 = vmlaq_n_f32(vmulq_f32(v69, vnegq_f32(v72)), v68, v62.f32[0]);
          v71[1] = v73;
          v74 = (v35 + v40 * 16);
          v68.f32[0] = *(v42 - 1);
          v62.f32[0] = *v42;
          v75 = vdupq_lane_s32(*v62.f32, 0);
          v76 = vmlaq_n_f32(vmulq_n_f32(v65, *v42), v66, v68.f32[0]);
          v77 = vmlaq_n_f32(vmulq_f32(v66, vnegq_f32(v75)), v65, v68.f32[0]);
          *v74 = v77;
          v74[1] = v76;
          v78 = (v36 + v40 * 16);
          v68.f32[0] = *(v43 - 1);
          v77.f32[0] = *v43;
          v79 = vdupq_lane_s32(*v77.f32, 0);
          v80 = vmlaq_n_f32(vmulq_n_f32(v67, *v43), v70, v68.f32[0]);
          v46 += 2;
          v40 += 2;
          v45 -= 32;
          v44 -= 32;
          *v78 = vmlaq_n_f32(vmulq_f32(v70, vnegq_f32(v79)), v67, v68.f32[0]);
          v78[1] = v80;
          v43 += 2;
          v42 += 2;
          v41 += 2;
        }

        while (v46 < a2);
        ++v31;
        a4 = (a4 + v6);
        v36 += v8;
        v35 += v8;
        v38 += v8;
        v33 = (v33 + v8);
        v39 = (v39 + v6);
      }

      while (v31 != a3);
    }
  }
}

void _ZNK9pocketfft6detail5rfftpIfE5radb2IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 16 * a2;
    v7 = a3 * a2;
    v8 = 32 * a2;
    v9 = a4;
    v10 = a5;
    v11 = a3;
    do
    {
      v12 = *v9;
      v13 = v9[2 * a2 - 1];
      *v10 = vaddq_f32(*v9, v13);
      v10[v7] = vsubq_f32(v12, v13);
      v10 = (v10 + v6);
      v9 = (v9 + v8);
      --v11;
    }

    while (v11);
    if ((a2 & 1) == 0)
    {
      v14 = a5 - 1;
      v15.i64[0] = 0xC0000000C0000000;
      v15.i64[1] = 0xC0000000C0000000;
      v16 = a4;
      v17 = a3;
      do
      {
        v18 = v16[a2];
        v14[a2] = vaddq_f32(v16[a2 - 1], v16[a2 - 1]);
        *(v14 + a2 * (16 * a3 + 16)) = vmulq_f32(v18, v15);
        v16 = (v16 + v8);
        v14 = (v14 + v6);
        --v17;
      }

      while (v17);
    }

    if (a2 >= 3)
    {
      v19 = 0;
      v20 = &a4[2 * a2 - 3];
      v21 = (a6 + 4);
      v22 = a5 + 2;
      v23 = &a5[v7 + 2];
      v24 = a4 + 2;
      do
      {
        v25 = v22;
        v26 = v24;
        v27 = v23;
        v28 = v21;
        v29 = v20;
        v30 = 2;
        do
        {
          v31 = v26[-1];
          v32 = *v29;
          v33 = v29[1];
          v29 -= 2;
          v34 = vaddq_f32(v31, v32);
          v35 = vsubq_f32(v31, v32);
          v36 = vaddq_f32(*v26, v33);
          v37 = vsubq_f32(*v26, v33);
          v25[-1] = v34;
          *v25 = v37;
          v37.f32[0] = *(v28 - 1);
          v33.f32[0] = *v28;
          v38 = vdupq_lane_s32(*v33.f32, 0);
          v39 = vmlaq_n_f32(vmulq_n_f32(v35, *v28), v36, v37.f32[0]);
          v30 += 2;
          v28 += 2;
          *(v27 - 1) = vmlaq_n_f32(vmulq_f32(v36, vnegq_f32(v38)), v35, v37.f32[0]);
          *v27 = v39;
          v27 += 2;
          v26 += 2;
          v25 += 2;
        }

        while (v30 < a2);
        ++v19;
        v20 += v8;
        v23 += v6;
        v24 = (v24 + v8);
        v22 = (v22 + v6);
      }

      while (v19 != a3);
    }
  }
}

void _ZNK9pocketfft6detail5rfftpIfE5radb3IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 48 * a2;
    v7 = 16 * a2;
    v8 = a3 * a2;
    v9.i64[0] = 0xBF000000BF000000;
    v9.i64[1] = 0xBF000000BF000000;
    v10 = vdupq_n_s32(0x3FDDB3D7u);
    v11 = a5;
    v12 = a4;
    v13 = a3;
    do
    {
      v14 = v12[2 * a2];
      v15 = vaddq_f32(v12[2 * a2 - 1], v12[2 * a2 - 1]);
      v16 = vmlaq_f32(*v12, v9, v15);
      *v11 = vaddq_f32(*v12, v15);
      v17 = vmulq_f32(v14, v10);
      v11[2 * a3 * a2] = vaddq_f32(v16, v17);
      v11[v8] = vsubq_f32(v16, v17);
      v12 = (v12 + v6);
      v11 = (v11 + v7);
      --v13;
    }

    while (v13);
    if (a2 != 1)
    {
      v18 = 0;
      v19 = &a4[2 * a2];
      v20 = v19 - 3;
      v21 = &a5[2 * v8 + 2];
      v22 = &a5[v8 + 1];
      v23 = (a6 + 4);
      v24.i64[0] = 0xBF000000BF000000;
      v24.i64[1] = 0xBF000000BF000000;
      v25 = vdupq_n_s32(0x3F5DB3D7u);
      v26 = (a6 + 4 * a2);
      do
      {
        if (a2 >= 3)
        {
          v27 = 0;
          v28 = v23;
          v29 = v26;
          v30 = v20;
          v31 = 2;
          do
          {
            v32 = v19[v27 + 1];
            v33 = v19[v27 + 2];
            v34 = *v30;
            v35 = v30[1];
            v30 -= 2;
            v36 = vaddq_f32(v32, v34);
            v37 = vsubq_f32(v33, v35);
            v38 = a4[v27 + 1];
            v39 = a4[v27 + 2];
            v40 = vaddq_f32(v36, v38);
            v41 = vmlaq_f32(v38, v24, v36);
            v42 = vaddq_f32(v37, v39);
            v43 = vmlaq_f32(v39, v24, v37);
            v44 = &a5[v27];
            v44[1] = v40;
            v44[2] = v42;
            v45 = vmulq_f32(vsubq_f32(v32, v34), v25);
            v46 = vmulq_f32(vaddq_f32(v33, v35), v25);
            v47 = vaddq_f32(v41, v46);
            v48 = vsubq_f32(v41, v46);
            v49 = vaddq_f32(v45, v43);
            v50 = vsubq_f32(v43, v45);
            v51 = (v22 + v27 * 16);
            v42.f32[0] = *(v28 - 1);
            v37.f32[0] = *v28;
            v52 = vdupq_lane_s32(*v37.f32, 0);
            v53 = vmlaq_n_f32(vmulq_n_f32(v48, *v28), v49, v42.f32[0]);
            v54 = vmlaq_n_f32(vmulq_f32(v49, vnegq_f32(v52)), v48, v42.f32[0]);
            *v51 = v54;
            v51[1] = v53;
            v55 = (v21 + v27 * 16);
            v48.f32[0] = *(v29 - 1);
            v54.f32[0] = *v29;
            v56 = vdupq_lane_s32(*v54.f32, 0);
            v57 = vmlaq_n_f32(vmulq_n_f32(v47, *v29), v50, v48.f32[0]);
            v31 += 2;
            v55[-1] = vmlaq_n_f32(vmulq_f32(v50, vnegq_f32(v56)), v47, v48.f32[0]);
            *v55 = v57;
            v27 += 2;
            v29 += 2;
            v28 += 2;
          }

          while (v31 < a2);
        }

        ++v18;
        v20 = (v20 + v6);
        v21 += v7;
        v19 = (v19 + v6);
        v22 += v7;
        a5 = (a5 + v7);
        a4 = (a4 + v6);
      }

      while (v18 != a3);
    }
  }
}

void _ZNK9pocketfft6detail5rfftpIfE5radb5IDv4_fEEvmmPKT_PS5_PKf(uint64_t a1, unint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 80 * a2;
    v7 = 16 * a2;
    v8 = a3 * a2;
    v9 = vdupq_n_s32(0x3E9E377Au);
    v10 = vdupq_n_s32(0xBF4F1BBD);
    v11 = vdupq_n_s32(0x3F167918u);
    v12 = vdupq_n_s32(0x3F737871u);
    v13 = vdupq_n_s32(0xBF737871);
    v14 = a5;
    v15 = a4;
    v16 = a3;
    do
    {
      v17 = vaddq_f32(v15[2 * a2], v15[2 * a2]);
      v18 = vaddq_f32(v15[4 * a2], v15[4 * a2]);
      v19 = vaddq_f32(v15[2 * a2 - 1], v15[2 * a2 - 1]);
      v20 = vaddq_f32(v15[4 * a2 - 1], v15[4 * a2 - 1]);
      v21 = *v15;
      *v14 = vaddq_f32(v20, vaddq_f32(v19, *v15));
      v22 = vmlaq_f32(vmlaq_f32(v21, v9, v19), v10, v20);
      v23 = vmlaq_f32(vmlaq_f32(v21, v10, v19), v9, v20);
      v24 = vmlaq_f32(vmulq_f32(v18, v11), v12, v17);
      v25 = vmlaq_f32(vmulq_f32(v18, v13), v11, v17);
      v14[4 * a3 * a2] = vaddq_f32(v24, v22);
      v14[v8] = vsubq_f32(v22, v24);
      v14[3 * a3 * a2] = vaddq_f32(v25, v23);
      v14[2 * a3 * a2] = vsubq_f32(v23, v25);
      v15 = (v15 + v6);
      v14 = (v14 + v7);
      --v16;
    }

    while (v16);
    if (a2 != 1)
    {
      v26 = 0;
      v27 = &a4[2 * a2];
      v28 = a5 + 2;
      v29 = vdupq_n_s32(0x3E9E377Au);
      v30 = vdupq_n_s32(0xBF4F1BBD);
      v31 = vdupq_n_s32(0x3F167918u);
      v32 = &a4[4 * a2];
      v33 = vdupq_n_s32(0x3F737871u);
      v34 = vdupq_n_s32(0xBF737871);
      v35 = a2;
      v36 = &a5[4 * v8 + 2];
      v37 = &a5[3 * v8 + 2];
      v38 = 4 * a2 - 4;
      v39 = &a5[2 * v8 + 2];
      v40 = &a5[v8 + 2];
      do
      {
        if (a2 >= 3)
        {
          v41 = 0;
          v42 = 0xFFFFFFFFFFFFFFDLL;
          v43 = a6;
          v44 = 2;
          do
          {
            v45 = v27[v41 + 1];
            v46 = v27[v41 + 2];
            v47 = v27[v42];
            v48 = v27[v42 + 1];
            v49 = vaddq_f32(v45, v47);
            v50 = vsubq_f32(v45, v47);
            v51 = vaddq_f32(v46, v48);
            v52 = vsubq_f32(v46, v48);
            v53 = v32[v41 + 1];
            v54 = v32[v41 + 2];
            v55 = v32[v42];
            v56 = v32[v42 + 1];
            v57 = vaddq_f32(v53, v55);
            v58 = vsubq_f32(v53, v55);
            v59 = vaddq_f32(v54, v56);
            v60 = vsubq_f32(v54, v56);
            v61 = a4[v41 + 1];
            v62 = a4[v41 + 2];
            v63 = vaddq_f32(v49, v61);
            v64 = &v28[v41];
            v65 = vmlaq_f32(v61, v29, v49);
            v66 = vmlaq_f32(v61, v30, v49);
            v67 = vaddq_f32(v57, v63);
            v68 = vaddq_f32(v60, vaddq_f32(v52, v62));
            v69 = vmlaq_f32(v65, v30, v57);
            v70 = vmlaq_f32(v66, v29, v57);
            v71 = vmlaq_f32(vmlaq_f32(v62, v29, v52), v30, v60);
            v72 = vmlaq_f32(vmulq_f32(v58, v31), v33, v50);
            v73 = vmlaq_f32(vmulq_f32(v58, v34), v31, v50);
            v74 = vmlaq_f32(vmlaq_f32(v62, v30, v52), v29, v60);
            v75 = vmlaq_f32(vmulq_f32(v59, v31), v33, v51);
            v76 = vmlaq_f32(vmulq_f32(v59, v34), v31, v51);
            v64[-1] = v67;
            *v64 = v68;
            v77 = vaddq_f32(v70, v76);
            v78 = vsubq_f32(v70, v76);
            v79 = vaddq_f32(v73, v74);
            v80 = vsubq_f32(v74, v73);
            v81 = vaddq_f32(v69, v75);
            v82 = vsubq_f32(v69, v75);
            v59.i32[0] = *(v43 + 4);
            v83 = v43;
            v85 = vld1q_dup_f32(v83);
            v84 = &v83[v35];
            v86 = vaddq_f32(v72, v71);
            v87 = vsubq_f32(v71, v72);
            v88 = (v40 + v41 * 16);
            v89 = (v39 + v41 * 16);
            v88[-1] = vmlaq_f32(vmulq_f32(v86, vnegq_f32(vdupq_lane_s32(*v59.f32, 0))), v82, v85);
            *v88 = vmlaq_f32(vmulq_n_f32(v82, v59.f32[0]), v86, v85);
            v90 = (v43 + v38);
            v82.f32[0] = *v84;
            v92 = vld1q_dup_f32(v90);
            v91 = &v90[v35];
            v93 = vdupq_lane_s32(*v82.f32, 0);
            v94 = vmlaq_f32(vmulq_n_f32(v78, *v84), v79, v92);
            v89[-1] = vmlaq_f32(vmulq_f32(v79, vnegq_f32(v93)), v78, v92);
            *v89 = v94;
            v95 = (v37 + v41 * 16);
            v96 = (v43 + v38 + v38);
            v78.f32[0] = *v91;
            v98 = vld1q_dup_f32(v96);
            v97 = &v96[v35];
            v99 = vdupq_lane_s32(*v78.f32, 0);
            v100 = vmlaq_f32(vmulq_n_f32(v77, *v91), v80, v98);
            v101 = vmulq_f32(v80, vnegq_f32(v99));
            v99.i32[0] = *(v43 + v38 + v38 + v38);
            v102 = vmlaq_f32(v101, v77, v98);
            v103 = (v36 + v41 * 16);
            v77.f32[0] = *v97;
            v104 = vdupq_lane_s32(*v77.f32, 0);
            v105 = vmlaq_n_f32(vmulq_n_f32(v81, *v97), v87, v99.f32[0]);
            v44 += 2;
            v95[-1] = v102;
            *v95 = v100;
            v103[-1] = vmlaq_n_f32(vmulq_f32(v87, vnegq_f32(v104)), v81, v99.f32[0]);
            *v103 = v105;
            v42 -= 2;
            v41 += 2;
            v43 += 8;
          }

          while (v44 < a2);
        }

        ++v26;
        v27 = (v27 + v6);
        v32 = (v32 + v6);
        v36 += v7;
        v37 += v7;
        v39 += v7;
        v40 += v7;
        a4 = (a4 + v6);
        v28 = (v28 + v7);
      }

      while (v26 != a3);
    }
  }
}

void _ZNK9pocketfft6detail5rfftpIfE5radbgIDv4_fEEvmmmPT_S6_PKfS8_(int a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, float32x4_t *__dst, double a7, __n128 a8, uint64_t a9, uint64_t a10)
{
  v11 = __dst;
  v13 = a2;
  v14 = a3 + 1;
  v15 = 16 * a2;
  v167 = a4;
  if (a4)
  {
    v16 = a4;
    v17 = __dst;
    v18 = a5;
    do
    {
      if (v13)
      {
        memcpy(v17, v18, v15);
        a4 = v167;
      }

      v18 += 16 * a3 * v13;
      v17 = (v17 + v15);
      --v16;
    }

    while (v16);
  }

  v19 = a4 * v13;
  if (v14 <= 3)
  {
    if (v13 == 1 || a3 <= 1)
    {
      return;
    }

    goto LABEL_90;
  }

  v20 = v14 >> 1;
  v21 = 32 * v13;
  v22 = &a5[32 * v13];
  v23 = 16 * a3 * v13;
  v24 = 16 * v19;
  v25 = v19 * (a3 - 1);
  v26 = 16 * v25;
  v27 = 1;
  v162 = v25;
  v28 = 16 * v19;
  v29 = v22;
  do
  {
    v30 = v11;
    v31 = v29;
    for (i = a4; i; --i)
    {
      a8 = *v31;
      *(v30 + v28) = vaddq_f32(v31[-1], v31[-1]);
      *(v30 + v26) = vaddq_f32(a8, a8);
      v31 = (v31 + v23);
      v30 = (v30 + v15);
    }

    ++v27;
    v29 = (v29 + v21);
    v28 += v24;
    v26 -= v24;
  }

  while (v27 != v20);
  v171 = v11;
  if (v13 != 1)
  {
    v33 = v22 - 3;
    v34 = &v11[v25 + 2];
    v35 = &v11[v19 + 2];
    v36 = v22 + 2;
    v37 = 1;
    do
    {
      if (a4)
      {
        v38 = 0;
        v39 = v36;
        v40 = v35;
        v41 = v34;
        v42 = v33;
        do
        {
          if (v13 != 2)
          {
            v43 = v39;
            v44 = v40;
            v45 = v41;
            v46 = v42;
            v47 = 1;
            do
            {
              v48 = v43[-1];
              a8 = *v43;
              v49 = *v46;
              v50 = v46[1];
              v46 -= 2;
              v44[-1] = vaddq_f32(v48, v49);
              v45[-1] = vsubq_f32(v48, v49);
              *v44 = vsubq_f32(a8, v50);
              v44 += 2;
              v47 += 2;
              *v45 = vaddq_f32(a8, v50);
              v45 += 2;
              v43 += 2;
            }

            while (v47 <= v13 - 2);
          }

          ++v38;
          v42 = (v42 + v23);
          v41 = (v41 + v15);
          v40 = (v40 + v15);
          v39 = (v39 + v23);
        }

        while (v38 != a4);
      }

      ++v37;
      v33 = (v33 + v21);
      v34 -= 16 * v19;
      v35 += v24;
      v36 = (v36 + v21);
    }

    while (v37 != v20);
  }

  v164 = v13;
  v11 = v171;
  v51 = &v171[v19];
  v52 = 32 * v19;
  v53 = &v171[2 * v19];
  v54 = &v171[v25];
  v55 = &v171[v19 * (a3 - 2)];
  v172 = v20 - 3;
  v56 = &a5[16 * v19];
  v57 = &a5[16 * v25];
  v58 = v19 << 6;
  v59 = 1;
  v163 = v57;
  v169 = 16 * v19;
  v170 = v20;
  v168 = v20 - 1;
  do
  {
    v60 = 2 * v59;
    if (v19)
    {
      v61 = 0;
      v62 = (a10 + 8 * v59);
      v63 = vld1q_dup_f32(v62++);
      v64 = (a10 + 16 * v59);
      a8 = vld1q_dup_f32(v64++);
      v65 = vld1q_dup_f32(v62);
      v66 = vld1q_dup_f32(v64);
      do
      {
        *&v56[16 * v61] = vmlaq_f32(vmlaq_f32(v11[v61], v51[v61], v63), v53[v61], a8);
        *&v57[16 * v61] = vmlaq_f32(vmulq_f32(v55[v61], v66), v54[v61], v65);
        ++v61;
      }

      while (v19 != v61);
    }

    if (v172 < 4)
    {
      v76 = a3 - 3;
      v75 = 3;
    }

    else
    {
      v68 = &v171[v19 * (a3 - 6)];
      v67 = &v171[v19 * (a3 - 5)];
      v69 = &v171[v19 * (a3 - 4)];
      v70 = &v171[v19 * (a3 - 3)];
      v72 = &v171[6 * v19];
      v71 = &v171[5 * v19];
      v73 = &v171[4 * v19];
      v74 = &v171[3 * v19];
      v75 = 3;
      v76 = a3 - 3;
      do
      {
        v77 = v60 + v59;
        if (v77 <= a3)
        {
          v78 = 0;
        }

        else
        {
          v78 = a3;
        }

        v79 = v77 - v78;
        if (v79 + v59 <= a3)
        {
          v80 = 0;
        }

        else
        {
          v80 = a3;
        }

        v81 = v79 + v59 - v80;
        v82 = v81 + v59;
        if (v81 + v59 <= a3)
        {
          v83 = 0;
        }

        else
        {
          v83 = a3;
        }

        v84 = v82 - v83;
        v85 = v82 - v83 + v59;
        if (v85 <= a3)
        {
          v86 = 0;
        }

        else
        {
          v86 = a3;
        }

        v60 = v85 - v86;
        if (v19)
        {
          v87 = 0;
          v88 = (a10 + 8 * v84);
          v89 = (a10 + 8 * v81);
          v90 = (a10 + 8 * v79);
          v91 = vld1q_dup_f32(v90++);
          a8 = vld1q_dup_f32(v89++);
          v92 = vld1q_dup_f32(v88++);
          v93 = (a10 + 8 * v60);
          v94 = vld1q_dup_f32(v93++);
          v95 = vld1q_dup_f32(v90);
          v96 = vld1q_dup_f32(v89);
          v97 = vld1q_dup_f32(v88);
          v98 = vld1q_dup_f32(v93);
          do
          {
            *&v56[16 * v87] = vaddq_f32(*&v56[16 * v87], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(a8, v73[v87]), v74[v87], v91), v71[v87], v92), v72[v87], v94));
            *&v57[16 * v87] = vaddq_f32(*&v57[16 * v87], vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v96, v69[v87]), v70[v87], v95), v67[v87], v97), v68[v87], v98));
            ++v87;
          }

          while (v19 != v87);
        }

        v75 += 4;
        v76 -= 4;
        v74 = (v74 + v58);
        v73 = (v73 + v58);
        v71 = (v71 + v58);
        v72 = (v72 + v58);
        v70 -= 4 * v19;
        v69 -= 4 * v19;
        v67 -= 4 * v19;
        v68 -= 4 * v19;
      }

      while (v75 < v172);
    }

    if (v75 >= v168)
    {
      v99 = v170;
      v11 = v171;
      v53 = &v171[2 * v19];
      v100 = 16 * v19;
      v55 = &v171[v19 * (a3 - 2)];
    }

    else
    {
      v99 = v170;
      v11 = v171;
      v53 = &v171[2 * v19];
      v100 = 16 * v19;
      v101 = v171 + v169 * v75;
      v102 = &v171[v100 / 0x10] + v100 * v75;
      v103 = v171 + v169 * v76;
      v104 = v171 + v169 * (v76 - 1);
      v55 = &v171[v19 * (a3 - 2)];
      do
      {
        v105 = v60 + v59;
        if (v105 <= a3)
        {
          v106 = 0;
        }

        else
        {
          v106 = a3;
        }

        v107 = v105 - v106;
        if (v107 + v59 <= a3)
        {
          v108 = 0;
        }

        else
        {
          v108 = a3;
        }

        v60 = v107 + v59 - v108;
        if (v19)
        {
          v109 = 0;
          v110 = (a10 + 8 * v60);
          v111 = (a10 + 8 * v107);
          v112 = vld1q_dup_f32(v111++);
          a8 = vld1q_dup_f32(v110++);
          v113 = vld1q_dup_f32(v111);
          v114 = vld1q_dup_f32(v110);
          do
          {
            *&v56[16 * v109] = vaddq_f32(*&v56[16 * v109], vmlaq_f32(vmulq_f32(a8, *&v102[16 * v109]), *&v101[16 * v109], v112));
            *&v57[16 * v109] = vaddq_f32(*&v57[16 * v109], vmlaq_f32(vmulq_f32(v114, *&v104[16 * v109]), *&v103[16 * v109], v113));
            ++v109;
          }

          while (v19 != v109);
        }

        v75 += 2;
        v76 -= 2;
        v101 += v52;
        v102 += v52;
        v103 -= 32 * v19;
        v104 -= 32 * v19;
      }

      while (v75 < v168);
    }

    if (v75 < v99)
    {
      v115 = v11 + v100 * v75;
      v116 = v11 + v100 * v76;
      do
      {
        v117 = v60 + v59;
        if (v117 <= a3)
        {
          v118 = 0;
        }

        else
        {
          v118 = a3;
        }

        v60 = v117 - v118;
        if (v19)
        {
          v119 = 0;
          v120 = (a10 + 8 * v60);
          v121 = vld1q_dup_f32(v120++);
          a8 = vld1q_dup_f32(v120);
          do
          {
            *&v56[16 * v119] = vmlaq_f32(*&v56[16 * v119], *&v115[16 * v119], v121);
            *&v57[16 * v119] = vmlaq_f32(*&v57[16 * v119], *&v116[16 * v119], a8);
            ++v119;
          }

          while (v19 != v119);
        }

        ++v75;
        v115 += v100;
        v116 -= 16 * v19;
      }

      while (v75 != v99);
    }

    ++v59;
    v56 += v100;
    v57 -= 16 * v19;
  }

  while (v59 != v99);
  v122 = 1;
  v123 = v100;
  a4 = v167;
  v124 = &a5[16 * v19];
  v13 = v164;
  v125 = v163;
  do
  {
    v126 = v11;
    for (j = v19; j; --j)
    {
      a8 = *v126;
      *v126 = vaddq_f32(*(v126 + v123), *v126);
      ++v126;
    }

    ++v122;
    v123 += v100;
  }

  while (v122 != v99);
  v128 = 1;
  do
  {
    if (v167)
    {
      v129 = 0;
      v130 = v167;
      do
      {
        v131 = *&v124[v129];
        a8 = *&v125[v129];
        *(v54 + v129) = vaddq_f32(v131, a8);
        *(v51 + v129) = vsubq_f32(v131, a8);
        v129 += v15;
        --v130;
      }

      while (v130);
    }

    ++v128;
    v125 -= 16 * v19;
    v54 -= v19;
    v124 += v100;
    v51 = (v51 + v100);
  }

  while (v128 != v99);
  if (v164 != 1)
  {
    v132 = &v11[v162 + 2];
    v133 = &v11[v100 / 0x10 + 2];
    v134 = &a5[v100 + 32];
    v135 = &a5[v162 * 16 + 32];
    v136 = 1;
    do
    {
      if (v167)
      {
        v137 = 0;
        v138 = v135;
        v139 = v134;
        v140 = v133;
        v141 = v132;
        do
        {
          if (v164 != 2)
          {
            v142 = v138;
            v143 = v139;
            v144 = v140;
            v145 = v141;
            v146 = 1;
            do
            {
              v147 = v143[-1];
              a8 = *v143;
              v149 = v142[-1];
              v148 = *v142;
              v144[-1] = vsubq_f32(v147, *v142);
              v145[-1] = vaddq_f32(v147, v148);
              *v144 = vaddq_f32(a8, v149);
              v144 += 2;
              v146 += 2;
              *v145 = vsubq_f32(a8, v149);
              v145 += 2;
              v143 += 2;
              v142 += 2;
            }

            while (v146 <= v164 - 2);
          }

          ++v137;
          v141 = (v141 + v15);
          v140 = (v140 + v15);
          v139 = (v139 + v15);
          v138 = (v138 + v15);
        }

        while (v137 != v167);
      }

      ++v136;
      v132 -= v19;
      v133 = (v133 + v100);
      v134 = (v134 + v100);
      v135 -= v19;
    }

    while (v136 != v99);
    if (a3 >= 2)
    {
LABEL_90:
      v150 = (a9 + 4);
      v151 = 16 * v19;
      v152 = &v11[v19 + 2];
      v153 = 1;
      do
      {
        if (a4)
        {
          v154 = 0;
          v155 = v152;
          do
          {
            if (v13 != 2)
            {
              v156 = v155;
              v157 = v150;
              v158 = 1;
              do
              {
                v159 = *(v157 - 1);
                a8.n128_f32[0] = *v157;
                v160 = v156[-1];
                v161 = vmlaq_n_f32(vmulq_f32(*v156, vnegq_f32(vdupq_lane_s32(a8.n128_u64[0], 0))), v160, v159);
                a8 = vmlaq_n_f32(vmulq_n_f32(v160, *v157), *v156, v159);
                v156[-1] = v161;
                *v156 = a8;
                v158 += 2;
                v157 += 2;
                v156 += 2;
              }

              while (v158 <= v13 - 2);
            }

            ++v154;
            v155 = (v155 + v15);
          }

          while (v154 != a4);
        }

        ++v153;
        v150 += v13 - 1;
        v152 += v151;
      }

      while (v153 != a3);
    }
  }
}

unint64_t *_ZNK9pocketfft6detail5rfftpIfE13copy_and_normIDv4_fEEvPT_S6_f(unint64_t *result, float32x4_t *__dst, float32x4_t *__src, float a4)
{
  if (__src == __dst)
  {
    if (a4 != 1.0 && *result)
    {
      v6 = 0;
      do
      {
        __dst[v6] = vmulq_n_f32(__dst[v6], a4);
        ++v6;
      }

      while (v6 < *result);
    }
  }

  else
  {
    v4 = *result;
    if (a4 == 1.0)
    {
      if (v4)
      {
        return memmove(__dst, __src, 16 * v4);
      }
    }

    else if (v4)
    {
      v5 = 0;
      do
      {
        __dst[v5] = vmulq_n_f32(__src[v5], a4);
        ++v5;
      }

      while (v5 < *result);
    }
  }

  return result;
}

void pocketfft::detail::rfftp<float>::exec<float>(uint64_t *a1, float *a2, char a3, float a4)
{
  v7 = *a1;
  if (v7 == 1)
  {
    *a2 = *a2 * a4;
    return;
  }

  v10 = a1[3];
  v9 = a1[4];
  v11 = v9 - v10;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
  v13 = pocketfft::detail::arr<float>::ralloc(v7);
  v14 = v13;
  if ((a3 & 1) == 0)
  {
    v15 = a2;
    if (v9 == v10)
    {
      goto LABEL_36;
    }

    v22 = 0;
    if (v12 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v12;
    }

    v24 = 1;
    v15 = a2;
    while (1)
    {
      v25 = v15;
      v15 = v13;
      v26 = a1[3];
      v27 = *(v26 + v22);
      v28 = v27 * v24;
      v29 = *a1 / (v27 * v24);
      if (v27 > 3)
      {
        if (v27 == 5)
        {
          pocketfft::detail::rfftp<float>::radb5<float>(a1, v29, v24, v25, v13, *(v26 + v22 + 8));
          goto LABEL_35;
        }

        if (v27 != 4)
        {
          goto LABEL_32;
        }

        pocketfft::detail::rfftp<float>::radb4<float>(a1, v29, v24, v25, v13, *(v26 + v22 + 8));
      }

      else
      {
        if (v27 == 2)
        {
          pocketfft::detail::rfftp<float>::radb2<float>(a1, v29, v24, v25, v13, *(v26 + v22 + 8));
          goto LABEL_35;
        }

        if (v27 != 3)
        {
LABEL_32:
          pocketfft::detail::rfftp<float>::radbg<float>(a1, v29, v27, v24, v25, v13, *(v26 + v22 + 8), *(v26 + v22 + 16));
          goto LABEL_35;
        }

        pocketfft::detail::rfftp<float>::radb3<float>(a1, v29, v24, v25, v13, *(v26 + v22 + 8));
      }

LABEL_35:
      v22 += 24;
      v24 = v28;
      v13 = v25;
      if (!--v23)
      {
        goto LABEL_36;
      }
    }
  }

  v15 = a2;
  if (v9 != v10)
  {
    v16 = *a1;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v17 = v13;
    v15 = a2;
    do
    {
      v18 = a1[3];
      v19 = *a1 / v16;
      v20 = *(v18 + v11 - 24);
      v16 /= v20;
      if (v20 > 3)
      {
        if (v20 == 5)
        {
          pocketfft::detail::rfftp<float>::radf5<float>(a1, v19, v16, v15, v17, *(v18 + v11 - 16));
          v21 = v15;
          v15 = v17;
          goto LABEL_18;
        }

        if (v20 != 4)
        {
          goto LABEL_15;
        }

        pocketfft::detail::rfftp<float>::radf4<float>(a1, v19, v16, v15, v17, *(v18 + v11 - 16));
        v21 = v15;
        v15 = v17;
      }

      else
      {
        if (v20 == 2)
        {
          pocketfft::detail::rfftp<float>::radf2<float>(a1, v19, v16, v15, v17, *(v18 + v11 - 16));
          v21 = v15;
          v15 = v17;
          goto LABEL_18;
        }

        if (v20 != 3)
        {
LABEL_15:
          pocketfft::detail::rfftp<float>::radfg<float>(a1, v19, v20, v16, v15, v17, *(v18 + v11 - 16), *(v18 + v11 - 8));
          v21 = v17;
          goto LABEL_18;
        }

        pocketfft::detail::rfftp<float>::radf3<float>(a1, v19, v16, v15, v17, *(v18 + v11 - 16));
        v21 = v15;
        v15 = v17;
      }

LABEL_18:
      v11 -= 24;
      v17 = v21;
      --v12;
    }

    while (v12);
  }

LABEL_36:
  pocketfft::detail::rfftp<float>::copy_and_norm<float>(a1, a2, v15, a4);

  free(v14);
}

void pocketfft::detail::fftblue<float>::exec_r<float>(void **a1, float *a2, int a3, float a4)
{
  v8 = pocketfft::detail::arr<pocketfft::detail::cmplx<float>>::ralloc(*a1);
  v9 = v8;
  v10 = *a2 * 0.0;
  if (a3)
  {
    v11 = *a1;
    if (*a1)
    {
      v12 = v8 + 1;
      v13 = a2;
      do
      {
        v14 = *v13++;
        *(v12 - 1) = v14;
        *v12 = v10;
        v12 += 2;
        --v11;
      }

      while (v11);
    }

    pocketfft::detail::fftblue<float>::fft<true,float>(a1, v8, a4);
    *a2 = v9->f32[0];
    if (*a1 != 1)
    {
      memmove(a2 + 1, &v9[1], 4 * (*a1 - 1));
    }
  }

  else
  {
    v8->f32[0] = *a2;
    v8->f32[1] = v10;
    if (*a1 != 1)
    {
      memmove(&v8[1], a2 + 1, 4 * (*a1 - 1));
      v15 = *a1;
      if ((*a1 & 1) == 0)
      {
        v9->f32[v15 + 1] = *a2 * 0.0;
      }

      if (v15 >= 3)
      {
        v16 = ((v15 - 3) >> 1) + 1;
        v17 = &v9[v15 - 1] + 1;
        v18 = &v9[1] + 1;
        do
        {
          v19 = -*v18;
          *(v17 - 1) = *(v18 - 1);
          *v17 = v19;
          v17 -= 2;
          v18 += 2;
          --v16;
        }

        while (v16);
      }
    }

    pocketfft::detail::fftblue<float>::fft<false,float>(a1, v9, a4);
    v20 = *a1;
    if (*a1)
    {
      v21 = v9;
      do
      {
        v22 = v21->i32[0];
        ++v21;
        *a2++ = v22;
        --v20;
      }

      while (v20);
    }
  }

  free(v9);
}

void pocketfft::detail::rfftp<float>::radf4<float>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 0;
    v7 = 16 * a2;
    v8 = a5 + 16 * a2;
    v9 = 4 * a2;
    v10 = (a5 + 8 * a2);
    v11 = a4 + 4 * a3 * a2;
    v12 = a4 + 8 * a3 * a2;
    v13 = v10;
    v14 = a3;
    do
    {
      v15 = *(a4 + 12 * a3 * a2 + v6);
      v16 = *(v11 + v6);
      v17 = v15 + v16;
      v18 = v15 - v16;
      v19 = *(a4 + v6);
      v20 = *(v12 + v6);
      *(v13 - 1) = v19 - v20;
      *v13 = v18;
      *(a5 + 4 * v6) = v17 + (v19 + v20);
      *(v8 - 4 + 4 * v6) = (v19 + v20) - v17;
      v6 += v9;
      v13 = (v13 + v7);
      --v14;
    }

    while (v14);
    if ((a2 & 1) == 0)
    {
      v21 = (a4 - 4);
      v22 = a5 - 4;
      v23 = a3;
      do
      {
        v24 = *(v21 + a2 * (4 * a3 + 4));
        v25 = *(v21 + a2 * (12 * a3 + 4));
        v26 = (v24 + v25) * -0.70711;
        v27 = (v24 - v25) * 0.70711;
        v28 = (v22 + 12 * a2);
        v29 = *(v21 + a2 * ((8 * a3) | 4));
        v21 = (v21 + v9);
        v30 = *v21 + v27;
        v31 = *v21 - v27;
        v32 = (v22 + v9);
        *v32 = v30;
        *v28 = v31;
        v28[1] = v26 + v29;
        v32[1] = v26 - v29;
        v22 += v7;
        --v23;
      }

      while (v23);
    }

    if (a2 >= 3)
    {
      v33 = 0;
      v34 = a4 + 12 * a3 * a2;
      v35 = v10 - 3;
      v36 = (v8 - 12);
      v37 = a6 + 8 * a2 - 4;
      v38 = a6 + 4 * a2;
      do
      {
        v39 = 0;
        v40 = v36;
        v41 = v35;
        v42 = 2;
        do
        {
          v43 = *(a6 + v39);
          v44 = *(a6 + v39 + 4);
          v45 = *(v11 + v39 + 4);
          v46 = *(v11 + v39 + 8);
          v47 = (v44 * v46) + (v43 * v45);
          v48 = (v43 * v46) - (v44 * v45);
          v49 = *(v38 + v39 - 4);
          v50 = *(v38 + v39);
          v51 = *(v12 + v39 + 4);
          v52 = *(v12 + v39 + 8);
          v53 = (v50 * v52) + (v49 * v51);
          v54 = (v49 * v52) - (v50 * v51);
          v55 = *(v37 + v39 - 4);
          v56 = *(v37 + v39);
          v57 = *(v34 + v39 + 4);
          v58 = *(v34 + v39 + 8);
          v59 = (v56 * v58) + (v55 * v57);
          v60 = (v55 * v58) - (v56 * v57);
          v61 = v47 + v59;
          v62 = v59 - v47;
          v63 = v48 + v60;
          v64 = v48 - v60;
          v65 = *(a4 + v39 + 4);
          v66 = *(a4 + v39 + 8);
          v67 = v53 + v65;
          v68 = v65 - v53;
          v69 = v54 + v66;
          v70 = v66 - v54;
          v71 = a5 + v39;
          *(v71 + 4) = v67 + v61;
          *v40 = v67 - v61;
          *(v71 + 8) = v63 + v69;
          v40[1] = v63 - v69;
          v72 = &v10[v39 / 4];
          v72[1] = v68 + v64;
          *v41 = v68 - v64;
          v72[2] = v62 + v70;
          v42 += 2;
          v41[1] = v62 - v70;
          v39 += 8;
          v41 -= 2;
          v40 -= 2;
        }

        while (v42 < a2);
        ++v33;
        v34 += v9;
        v35 = (v35 + v7);
        v36 = (v36 + v7);
        v12 += v9;
        v11 += v9;
        v10 = (v10 + v7);
        a5 += v7;
        a4 += v9;
      }

      while (v33 != a3);
    }
  }
}

float *pocketfft::detail::rfftp<float>::radf2<float>(uint64_t a1, unint64_t a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = 8 * a2;
    v7 = 4 * a2;
    v8 = a3 * a2;
    v9 = a4;
    v10 = a5;
    v11 = a3;
    do
    {
      v12 = *v9;
      v13 = v9[v8];
      *v10 = *v9 + v13;
      v10[2 * a2 - 1] = v12 - v13;
      v10 = (v10 + v6);
      v9 = (v9 + v7);
      --v11;
    }

    while (v11);
    if ((a2 & 1) == 0)
    {
      v14 = a4 - 1;
      v15 = &a5[a2];
      v16 = a3;
      do
      {
        v17 = -*(v14 + a2 * (4 * a3 + 4));
        v14 = (v14 + v7);
        *(v15 - 1) = *v14;
        *v15 = v17;
        v15 = (v15 + v6);
        --v16;
      }

      while (v16);
    }

    if (a2 >= 3)
    {
      v18 = 0;
      v19 = &a5[2 * a2 - 3];
      v20 = &a4[v8];
      do
      {
        v21 = 0;
        v22 = v19;
        for (i = 2; i < a2; i += 2)
        {
          v24 = *(a6 + v21 * 4);
          v25 = *(a6 + 4 + v21 * 4);
          v26 = v20[v21 + 1];
          v27 = v20[v21 + 2];
          v28 = (v25 * v27) + (v24 * v26);
          v29 = (v24 * v27) - (v25 * v26);
          v30 = &a5[v21];
          result = &a4[v21];
          v32 = a4[v21 + 1];
          v33 = a4[v21 + 2];
          v30[1] = v32 + v28;
          *v22 = v32 - v28;
          v30[2] = v29 + v33;
          v22[1] = v29 - v33;
          v22 -= 2;
          v21 += 2;
        }

        ++v18;
        v19 += v6;
        a4 = (a4 + v7);
        a5 = (a5 + v6);
        v20 = (v20 + v7);
      }

      while (v18 != a3);
    }
  }

  return result;
}

void pocketfft::detail::rfftp<float>::radf3<float>(uint64_t a1, unint64_t a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a3 * a2;
    v7 = 4 * a2;
    v8 = 12 * a2;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    do
    {
      v12 = v10[v6];
      v13 = v10[2 * a3 * a2];
      v14 = *v10;
      *v9 = *v10 + (v12 + v13);
      v15 = &v9[2 * a2];
      *(v15 - 1) = v14 + ((v12 + v13) * -0.5);
      *v15 = (v13 - v12) * 0.86603;
      v10 = (v10 + v7);
      v9 = (v9 + v8);
      --v11;
    }

    while (v11);
    if (a2 != 1)
    {
      v16 = 0;
      v17 = a6 + 4 * a2;
      v18 = &a5[2 * a2];
      v19 = v18 - 3;
      v20 = &a4[2 * v6];
      v21 = &a4[v6];
      do
      {
        if (a2 >= 3)
        {
          v22 = 0;
          v23 = v19;
          for (i = 2; i < a2; i += 2)
          {
            v25 = *(a6 + v22 * 4);
            v26 = *(a6 + v22 * 4 + 4);
            v27 = v21[v22 + 1];
            v28 = v21[v22 + 2];
            v29 = (v26 * v28) + (v25 * v27);
            v30 = -(v26 * v27);
            v31 = *(v17 + v22 * 4 - 4);
            v32 = *(v17 + v22 * 4);
            v33 = v30 + (v25 * v28);
            v34 = v20[v22 + 1];
            v35 = v20[v22 + 2];
            v36 = v32 * v35;
            v37 = -(v32 * v34);
            v38 = v36 + (v31 * v34);
            v39 = v37 + (v31 * v35);
            v40 = v29 + v38;
            v41 = v38 - v29;
            v42 = v33 + v39;
            v43 = v33 - v39;
            v44 = a4[v22 + 1];
            v45 = a4[v22 + 2];
            v46 = v44 + v40;
            v47 = &a5[v22];
            v48 = v44 + (v40 * -0.5);
            v49 = v42 + v45;
            v50 = v45 + (v42 * -0.5);
            v51 = v43 * 0.86603;
            v52 = v41 * 0.86603;
            v53 = &v18[v22];
            v47[1] = v46;
            v47[2] = v49;
            v53[1] = v51 + v48;
            *v23 = v48 - v51;
            v53[2] = v52 + v50;
            v23[1] = v52 - v50;
            v23 -= 2;
            v22 += 2;
          }
        }

        ++v16;
        v19 = (v19 + v8);
        v20 = (v20 + v7);
        v21 = (v21 + v7);
        v18 = (v18 + v8);
        a5 = (a5 + v8);
        a4 = (a4 + v7);
      }

      while (v16 != a3);
    }
  }
}