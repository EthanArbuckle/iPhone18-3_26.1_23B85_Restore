uint64_t llvm_blake3_hash_many_neon(uint64_t result, unint64_t a2, uint64_t a3, const float *a4, uint64_t a5, unsigned int a6, unsigned __int8 a7, char a8, char a9, int64x2_t *a10)
{
  v12 = a2;
  v13 = result;
  v792 = *MEMORY[0x277D85DE8];
  v773 = a6;
  if (a2 >= 4)
  {
    v15 = vdup_n_s32(a6);
    v16.i64[0] = v15.u32[0];
    v16.i64[1] = v15.u32[1];
    v772 = vandq_s8(vcltzq_s64(vshlq_n_s64(v16, 0x3FuLL)), xmmword_25D0A04F0);
    v17 = vdupq_n_s32(0x6A09E667u);
    v775 = vdupq_n_s32(0xBB67AE85);
    v776 = v17;
    do
    {
      v18 = a4;
      v19 = vld1q_dup_f32(v18++);
      v20 = vld1q_dup_f32(v18);
      v21 = a4 + 2;
      v22 = vld1q_dup_f32(v21);
      v23 = a4 + 3;
      v24 = vld1q_dup_f32(v23);
      v25 = a4 + 4;
      v26 = vld1q_dup_f32(v25);
      v27 = a4 + 5;
      v28 = vld1q_dup_f32(v27);
      v29 = a4 + 6;
      v30 = vld1q_dup_f32(v29);
      v31 = a4 + 7;
      v32 = vld1q_dup_f32(v31);
      if (a3)
      {
        v33 = vdupq_n_s64(a5);
        v34.i32[0] = a5;
        v34.i32[1] = a5 + a6;
        v778 = vmovn_hight_s64(v34, vaddq_s64(v33, v772));
        v35.i64[0] = a5;
        v35.i64[1] = a5 + a6;
        v777 = vaddhn_high_s64(vshrn_n_s64(v35, 0x20uLL), v33, v772);
        v36 = (v13[1] + 8);
        v37 = (*v13 + 8);
        v38 = (v13[3] + 8);
        v39 = (v13[2] + 8);
        v40 = a3;
        v41 = a8 | a7;
        do
        {
          v779 = v32;
          --v40;
          v42 = *(v37 - 32);
          v43 = *(v37 - 16);
          if (v40)
          {
            v44 = 0;
          }

          else
          {
            v44 = a9;
          }

          v45 = *(v36 - 32);
          v46 = *(v36 - 16);
          v47 = *(v39 - 32);
          v48 = *(v39 - 16);
          v49 = *(v38 - 32);
          v50 = *(v38 - 16);
          v51 = *(v37 + 16);
          v52 = *(v36 + 16);
          v53 = *(v39 + 16);
          v54 = *(v38 + 16);
          v55 = vtrn1q_s32(v42, v45);
          v56 = vtrn2q_s32(v42, v45);
          v57 = vtrn1q_s32(v47, v49);
          v58 = vtrn2q_s32(v47, v49);
          v59 = vzip2q_s64(v55, v57);
          v60 = vzip2q_s64(v56, v58);
          v61 = vtrn1q_s32(v43, v46);
          v62 = vtrn2q_s32(v43, v46);
          v55.i64[1] = v57.i64[0];
          v63 = v55;
          v789 = v55;
          v64 = vtrn1q_s32(v48, v50);
          v65 = vzip2q_s64(v61, v64);
          v61.i64[1] = v64.i64[0];
          v786 = v61;
          v66 = vtrn2q_s32(v48, v50);
          v67 = vzip2q_s64(v62, v66);
          v68 = vtrn1q_s32(*v37, *v36);
          v56.i64[1] = v58.i64[0];
          v69 = v56;
          v70 = vtrn2q_s32(*v37, *v36);
          v71 = vtrn1q_s32(*v39, *v38);
          v72 = vtrn2q_s32(*v39, *v38);
          v73 = vzip2q_s64(v68, v71);
          v62.i64[1] = v66.i64[0];
          v56.i64[0] = v68.i64[0];
          v780 = vzip2q_s64(v70, v72);
          v68.i64[0] = v70.i64[0];
          v74 = vtrn1q_s32(v51, v52);
          v56.i64[1] = v71.i64[0];
          v75 = vtrn2q_s32(v51, v52);
          v76 = vtrn1q_s32(v53, v54);
          v77 = vtrn2q_s32(v53, v54);
          v788 = vzip2q_s64(v74, v76);
          v68.i64[1] = v72.i64[0];
          v74.i64[1] = v76.i64[0];
          v78 = v74;
          v79.i64[0] = v75.i64[0];
          v79.i64[1] = v77.i64[0];
          v785 = vzip2q_s64(v75, v77);
          v80 = vaddq_s32(vaddq_s32(v20, v28), v59);
          v81 = v59;
          v787 = v59;
          v82 = vaddq_s32(vaddq_s32(v19, v26), v63);
          v83 = vaddq_s32(vaddq_s32(v22, v30), v61);
          v84 = vaddq_s32(vaddq_s32(v24, v779), v65);
          v85 = v65;
          v782 = v65;
          v86 = veorq_s8(v82, v778);
          v87 = veorq_s8(v80, v777);
          v72.i64[0] = 0x4000000040;
          v72.i64[1] = 0x4000000040;
          v88 = veorq_s8(v83, v72);
          v89 = veorq_s8(v84, vdupq_n_s32((v44 | v41)));
          v90 = vsraq_n_u32(vshlq_n_s32(v87, 0x10uLL), v87, 0x10uLL);
          v91 = vsraq_n_u32(vshlq_n_s32(v86, 0x10uLL), v86, 0x10uLL);
          v92 = vsraq_n_u32(vshlq_n_s32(v88, 0x10uLL), v88, 0x10uLL);
          v93 = vsraq_n_u32(vshlq_n_s32(v89, 0x10uLL), v89, 0x10uLL);
          v94 = vaddq_s32(v91, v17);
          v95 = vaddq_s32(v90, v775);
          v96 = vaddq_s32(v92, vdupq_n_s32(0x3C6EF372u));
          v97 = veorq_s8(v94, v26);
          v98 = veorq_s8(v95, v28);
          v99 = vsraq_n_u32(vshlq_n_s32(v97, 0x14uLL), v97, 0xCuLL);
          v100 = vsraq_n_u32(vshlq_n_s32(v98, 0x14uLL), v98, 0xCuLL);
          v101 = veorq_s8(v96, v30);
          v102 = vsraq_n_u32(vshlq_n_s32(v101, 0x14uLL), v101, 0xCuLL);
          v103 = vaddq_s32(v93, vdupq_n_s32(0xA54FF53A));
          v104 = veorq_s8(v103, v779);
          v105 = vsraq_n_u32(vshlq_n_s32(v104, 0x14uLL), v104, 0xCuLL);
          v106 = vaddq_s32(vaddq_s32(v82, v69), v99);
          v107 = veorq_s8(v106, v91);
          v108 = vsraq_n_u32(vshlq_n_s32(v107, 0x18uLL), v107, 8uLL);
          v109 = vaddq_s32(vaddq_s32(v80, v60), v100);
          v110 = veorq_s8(v109, v90);
          v111 = vsraq_n_u32(vshlq_n_s32(v110, 0x18uLL), v110, 8uLL);
          v112 = vaddq_s32(vaddq_s32(v83, v62), v102);
          v113 = veorq_s8(v112, v92);
          v114 = vsraq_n_u32(vshlq_n_s32(v113, 0x18uLL), v113, 8uLL);
          v115 = vaddq_s32(vaddq_s32(v84, v67), v105);
          v116 = veorq_s8(v115, v93);
          v117 = vsraq_n_u32(vshlq_n_s32(v116, 0x18uLL), v116, 8uLL);
          v118 = vaddq_s32(v108, v94);
          v119 = veorq_s8(v118, v99);
          v120 = vsraq_n_u32(vshlq_n_s32(v119, 0x19uLL), v119, 7uLL);
          v121 = vaddq_s32(v111, v95);
          v122 = veorq_s8(v121, v100);
          v123 = vsraq_n_u32(vshlq_n_s32(v122, 0x19uLL), v122, 7uLL);
          v124 = vaddq_s32(v114, v96);
          v125 = veorq_s8(v124, v102);
          v126 = vsraq_n_u32(vshlq_n_s32(v125, 0x19uLL), v125, 7uLL);
          v127 = vaddq_s32(v117, v103);
          v128 = veorq_s8(v127, v105);
          v129 = vsraq_n_u32(vshlq_n_s32(v128, 0x19uLL), v128, 7uLL);
          v130 = vaddq_s32(vaddq_s32(v56, v106), v123);
          v131 = veorq_s8(v117, v130);
          v132 = vsraq_n_u32(vshlq_n_s32(v131, 0x10uLL), v131, 0x10uLL);
          v133 = vaddq_s32(vaddq_s32(v73, v109), v126);
          v134 = veorq_s8(v133, v108);
          v135 = vsraq_n_u32(vshlq_n_s32(v134, 0x10uLL), v134, 0x10uLL);
          v136 = vaddq_s32(vaddq_s32(v78, v112), v129);
          v137 = veorq_s8(v136, v111);
          v138 = vsraq_n_u32(vshlq_n_s32(v137, 0x10uLL), v137, 0x10uLL);
          v139 = vaddq_s32(vaddq_s32(v788, v115), v120);
          v140 = veorq_s8(v139, v114);
          v141 = vsraq_n_u32(vshlq_n_s32(v140, 0x10uLL), v140, 0x10uLL);
          v142 = vaddq_s32(v132, v124);
          v143 = veorq_s8(v142, v123);
          v144 = vsraq_n_u32(vshlq_n_s32(v143, 0x14uLL), v143, 0xCuLL);
          v145 = vaddq_s32(v135, v127);
          v146 = veorq_s8(v145, v126);
          v147 = vsraq_n_u32(vshlq_n_s32(v146, 0x14uLL), v146, 0xCuLL);
          v148 = vaddq_s32(v138, v118);
          v149 = veorq_s8(v148, v129);
          v150 = vsraq_n_u32(vshlq_n_s32(v149, 0x14uLL), v149, 0xCuLL);
          v151 = vaddq_s32(v141, v121);
          v152 = veorq_s8(v151, v120);
          v153 = vsraq_n_u32(vshlq_n_s32(v152, 0x14uLL), v152, 0xCuLL);
          v154 = vaddq_s32(vaddq_s32(v130, v68), v144);
          v155 = veorq_s8(v154, v132);
          v156 = vsraq_n_u32(vshlq_n_s32(v155, 0x18uLL), v155, 8uLL);
          v157 = vaddq_s32(vaddq_s32(v133, v780), v147);
          v158 = veorq_s8(v157, v135);
          v159 = vsraq_n_u32(vshlq_n_s32(v158, 0x18uLL), v158, 8uLL);
          v160 = vaddq_s32(vaddq_s32(v136, v79), v150);
          v161 = veorq_s8(v160, v138);
          v162 = vsraq_n_u32(vshlq_n_s32(v161, 0x18uLL), v161, 8uLL);
          v163 = vaddq_s32(vaddq_s32(v139, v785), v153);
          v164 = veorq_s8(v163, v141);
          v165 = vsraq_n_u32(vshlq_n_s32(v164, 0x18uLL), v164, 8uLL);
          v166 = vaddq_s32(v156, v142);
          v167 = veorq_s8(v166, v144);
          v168 = vsraq_n_u32(vshlq_n_s32(v167, 0x19uLL), v167, 7uLL);
          v169 = vaddq_s32(v159, v145);
          v170 = veorq_s8(v169, v147);
          v171 = vsraq_n_u32(vshlq_n_s32(v170, 0x19uLL), v170, 7uLL);
          v172 = vaddq_s32(v162, v148);
          v173 = veorq_s8(v172, v150);
          v174 = vsraq_n_u32(vshlq_n_s32(v173, 0x19uLL), v173, 7uLL);
          v175 = vaddq_s32(v165, v151);
          v176 = veorq_s8(v175, v153);
          v177 = vsraq_n_u32(vshlq_n_s32(v176, 0x19uLL), v176, 7uLL);
          v178 = vaddq_s32(vaddq_s32(v154, v81), v177);
          v179 = veorq_s8(v178, v159);
          v180 = vsraq_n_u32(vshlq_n_s32(v179, 0x10uLL), v179, 0x10uLL);
          v784 = v60;
          v181 = vaddq_s32(vaddq_s32(v157, v60), v168);
          v182 = veorq_s8(v162, v181);
          v183 = vsraq_n_u32(vshlq_n_s32(v182, 0x10uLL), v182, 0x10uLL);
          v184 = vaddq_s32(vaddq_s32(v160, v67), v171);
          v185 = veorq_s8(v184, v165);
          v186 = vsraq_n_u32(vshlq_n_s32(v185, 0x10uLL), v185, 0x10uLL);
          v187 = vaddq_s32(vaddq_s32(v163, v786), v174);
          v188 = veorq_s8(v187, v156);
          v189 = vsraq_n_u32(vshlq_n_s32(v188, 0x10uLL), v188, 0x10uLL);
          v190 = vaddq_s32(v180, v172);
          v191 = veorq_s8(v190, v177);
          v192 = vsraq_n_u32(vshlq_n_s32(v191, 0x14uLL), v191, 0xCuLL);
          v193 = vaddq_s32(v183, v175);
          v194 = veorq_s8(v193, v168);
          v195 = vsraq_n_u32(vshlq_n_s32(v194, 0x14uLL), v194, 0xCuLL);
          v196 = vaddq_s32(v186, v166);
          v197 = veorq_s8(v196, v171);
          v198 = vsraq_n_u32(vshlq_n_s32(v197, 0x14uLL), v197, 0xCuLL);
          v199 = vaddq_s32(v189, v169);
          v200 = veorq_s8(v199, v174);
          v201 = vsraq_n_u32(vshlq_n_s32(v200, 0x14uLL), v200, 0xCuLL);
          v202 = vaddq_s32(vaddq_s32(v178, v85), v192);
          v203 = veorq_s8(v202, v180);
          v204 = vsraq_n_u32(vshlq_n_s32(v203, 0x18uLL), v203, 8uLL);
          v205 = vaddq_s32(vaddq_s32(v181, v73), v195);
          v206 = veorq_s8(v205, v183);
          v207 = vsraq_n_u32(vshlq_n_s32(v206, 0x18uLL), v206, 8uLL);
          v208 = vaddq_s32(vaddq_s32(v184, v789), v198);
          v209 = veorq_s8(v208, v186);
          v210 = vsraq_n_u32(vshlq_n_s32(v209, 0x18uLL), v209, 8uLL);
          v211 = vaddq_s32(vaddq_s32(v187, v79), v201);
          v212 = veorq_s8(v211, v189);
          v213 = vsraq_n_u32(vshlq_n_s32(v212, 0x18uLL), v212, 8uLL);
          v214 = vaddq_s32(v204, v190);
          v215 = veorq_s8(v214, v192);
          v216 = vsraq_n_u32(vshlq_n_s32(v215, 0x19uLL), v215, 7uLL);
          v217 = vaddq_s32(v207, v193);
          v218 = veorq_s8(v217, v195);
          v219 = vsraq_n_u32(vshlq_n_s32(v218, 0x19uLL), v218, 7uLL);
          v220 = vaddq_s32(v210, v196);
          v221 = veorq_s8(v220, v198);
          v222 = vsraq_n_u32(vshlq_n_s32(v221, 0x19uLL), v221, 7uLL);
          v223 = vaddq_s32(v213, v199);
          v224 = veorq_s8(v223, v201);
          v225 = vsraq_n_u32(vshlq_n_s32(v224, 0x19uLL), v224, 7uLL);
          v226 = vaddq_s32(vaddq_s32(v202, v69), v219);
          v227 = veorq_s8(v213, v226);
          v228 = vsraq_n_u32(vshlq_n_s32(v227, 0x10uLL), v227, 0x10uLL);
          v229 = vaddq_s32(vaddq_s32(v205, v78), v222);
          v230 = veorq_s8(v229, v204);
          v231 = vsraq_n_u32(vshlq_n_s32(v230, 0x10uLL), v230, 0x10uLL);
          v232 = vaddq_s32(vaddq_s32(v208, v68), v225);
          v233 = veorq_s8(v232, v207);
          v234 = vsraq_n_u32(vshlq_n_s32(v233, 0x10uLL), v233, 0x10uLL);
          v235 = vaddq_s32(vaddq_s32(v211, v785), v216);
          v236 = veorq_s8(v235, v210);
          v237 = vsraq_n_u32(vshlq_n_s32(v236, 0x10uLL), v236, 0x10uLL);
          v238 = vaddq_s32(v228, v220);
          v239 = veorq_s8(v238, v219);
          v240 = vsraq_n_u32(vshlq_n_s32(v239, 0x14uLL), v239, 0xCuLL);
          v241 = vaddq_s32(v231, v223);
          v242 = veorq_s8(v241, v222);
          v243 = vsraq_n_u32(vshlq_n_s32(v242, 0x14uLL), v242, 0xCuLL);
          v244 = vaddq_s32(v234, v214);
          v245 = veorq_s8(v244, v225);
          v246 = vsraq_n_u32(vshlq_n_s32(v245, 0x14uLL), v245, 0xCuLL);
          v247 = vaddq_s32(v237, v217);
          v248 = veorq_s8(v247, v216);
          v249 = vsraq_n_u32(vshlq_n_s32(v248, 0x14uLL), v248, 0xCuLL);
          v250 = vaddq_s32(vaddq_s32(v226, v780), v240);
          v251 = veorq_s8(v250, v228);
          v252 = vsraq_n_u32(vshlq_n_s32(v251, 0x18uLL), v251, 8uLL);
          v253 = vaddq_s32(vaddq_s32(v229, v62), v243);
          v254 = veorq_s8(v253, v231);
          v255 = vsraq_n_u32(vshlq_n_s32(v254, 0x18uLL), v254, 8uLL);
          v256 = vaddq_s32(vaddq_s32(v232, v788), v246);
          v257 = veorq_s8(v256, v234);
          v258 = vsraq_n_u32(vshlq_n_s32(v257, 0x18uLL), v257, 8uLL);
          v259 = vaddq_s32(vaddq_s32(v235, v56), v249);
          v260 = veorq_s8(v259, v237);
          v261 = vsraq_n_u32(vshlq_n_s32(v260, 0x18uLL), v260, 8uLL);
          v262 = vaddq_s32(v252, v238);
          v263 = veorq_s8(v262, v240);
          v264 = vsraq_n_u32(vshlq_n_s32(v263, 0x19uLL), v263, 7uLL);
          v265 = vaddq_s32(v255, v241);
          v266 = veorq_s8(v265, v243);
          v267 = vsraq_n_u32(vshlq_n_s32(v266, 0x19uLL), v266, 7uLL);
          v268 = vaddq_s32(v258, v244);
          v269 = veorq_s8(v268, v246);
          v270 = vsraq_n_u32(vshlq_n_s32(v269, 0x19uLL), v269, 7uLL);
          v271 = vaddq_s32(v261, v247);
          v272 = veorq_s8(v271, v249);
          v273 = vsraq_n_u32(vshlq_n_s32(v272, 0x19uLL), v272, 7uLL);
          v274 = vaddq_s32(vaddq_s32(v250, v60), v273);
          v275 = veorq_s8(v274, v255);
          v276 = vsraq_n_u32(vshlq_n_s32(v275, 0x10uLL), v275, 0x10uLL);
          v783 = v73;
          v277 = vaddq_s32(vaddq_s32(v253, v73), v264);
          v278 = veorq_s8(v258, v277);
          v279 = vsraq_n_u32(vshlq_n_s32(v278, 0x10uLL), v278, 0x10uLL);
          v280 = vaddq_s32(vaddq_s32(v256, v79), v267);
          v281 = veorq_s8(v280, v261);
          v282 = vsraq_n_u32(vshlq_n_s32(v281, 0x10uLL), v281, 0x10uLL);
          v283 = vaddq_s32(vaddq_s32(v259, v67), v270);
          v284 = veorq_s8(v283, v252);
          v285 = vsraq_n_u32(vshlq_n_s32(v284, 0x10uLL), v284, 0x10uLL);
          v286 = vaddq_s32(v276, v268);
          v287 = veorq_s8(v286, v273);
          v288 = vsraq_n_u32(vshlq_n_s32(v287, 0x14uLL), v287, 0xCuLL);
          v289 = vaddq_s32(v279, v271);
          v290 = veorq_s8(v289, v264);
          v291 = vsraq_n_u32(vshlq_n_s32(v290, 0x14uLL), v290, 0xCuLL);
          v292 = vaddq_s32(v282, v262);
          v293 = veorq_s8(v292, v267);
          v294 = vsraq_n_u32(vshlq_n_s32(v293, 0x14uLL), v293, 0xCuLL);
          v295 = vaddq_s32(v285, v265);
          v296 = veorq_s8(v295, v270);
          v297 = vsraq_n_u32(vshlq_n_s32(v296, 0x14uLL), v296, 0xCuLL);
          v298 = vaddq_s32(vaddq_s32(v274, v786), v288);
          v299 = veorq_s8(v298, v276);
          v300 = vsraq_n_u32(vshlq_n_s32(v299, 0x18uLL), v299, 8uLL);
          v301 = vaddq_s32(vaddq_s32(v277, v78), v291);
          v302 = veorq_s8(v301, v279);
          v303 = vsraq_n_u32(vshlq_n_s32(v302, 0x18uLL), v302, 8uLL);
          v304 = vaddq_s32(vaddq_s32(v280, v787), v294);
          v305 = veorq_s8(v304, v282);
          v306 = vsraq_n_u32(vshlq_n_s32(v305, 0x18uLL), v305, 8uLL);
          v307 = vaddq_s32(vaddq_s32(v283, v788), v297);
          v308 = veorq_s8(v307, v285);
          v309 = vsraq_n_u32(vshlq_n_s32(v308, 0x18uLL), v308, 8uLL);
          v310 = vaddq_s32(v300, v286);
          v311 = veorq_s8(v310, v288);
          v312 = vsraq_n_u32(vshlq_n_s32(v311, 0x19uLL), v311, 7uLL);
          v313 = vaddq_s32(v303, v289);
          v314 = veorq_s8(v313, v291);
          v315 = vsraq_n_u32(vshlq_n_s32(v314, 0x19uLL), v314, 7uLL);
          v316 = vaddq_s32(v306, v292);
          v317 = veorq_s8(v316, v294);
          v318 = vsraq_n_u32(vshlq_n_s32(v317, 0x19uLL), v317, 7uLL);
          v319 = vaddq_s32(v309, v295);
          v320 = veorq_s8(v319, v297);
          v321 = vsraq_n_u32(vshlq_n_s32(v320, 0x19uLL), v320, 7uLL);
          v322 = vaddq_s32(vaddq_s32(v298, v782), v315);
          v323 = veorq_s8(v309, v322);
          v324 = vsraq_n_u32(vshlq_n_s32(v323, 0x10uLL), v323, 0x10uLL);
          v325 = vaddq_s32(vaddq_s32(v301, v68), v318);
          v326 = veorq_s8(v325, v300);
          v327 = vsraq_n_u32(vshlq_n_s32(v326, 0x10uLL), v326, 0x10uLL);
          v328 = vaddq_s32(vaddq_s32(v304, v780), v321);
          v329 = veorq_s8(v328, v303);
          v330 = vsraq_n_u32(vshlq_n_s32(v329, 0x10uLL), v329, 0x10uLL);
          v331 = vaddq_s32(vaddq_s32(v307, v56), v312);
          v332 = veorq_s8(v331, v306);
          v333 = vsraq_n_u32(vshlq_n_s32(v332, 0x10uLL), v332, 0x10uLL);
          v334 = vaddq_s32(v324, v316);
          v335 = veorq_s8(v334, v315);
          v336 = vsraq_n_u32(vshlq_n_s32(v335, 0x14uLL), v335, 0xCuLL);
          v337 = vaddq_s32(v327, v319);
          v338 = veorq_s8(v337, v318);
          v339 = vsraq_n_u32(vshlq_n_s32(v338, 0x14uLL), v338, 0xCuLL);
          v340 = vaddq_s32(v330, v310);
          v341 = veorq_s8(v340, v321);
          v342 = vsraq_n_u32(vshlq_n_s32(v341, 0x14uLL), v341, 0xCuLL);
          v343 = vaddq_s32(v333, v313);
          v344 = veorq_s8(v343, v312);
          v345 = vsraq_n_u32(vshlq_n_s32(v344, 0x14uLL), v344, 0xCuLL);
          v346 = vaddq_s32(vaddq_s32(v322, v62), v336);
          v347 = veorq_s8(v346, v324);
          v348 = vsraq_n_u32(vshlq_n_s32(v347, 0x18uLL), v347, 8uLL);
          v349 = vaddq_s32(vaddq_s32(v325, v789), v339);
          v350 = veorq_s8(v349, v327);
          v351 = vsraq_n_u32(vshlq_n_s32(v350, 0x18uLL), v350, 8uLL);
          v352 = vaddq_s32(vaddq_s32(v328, v785), v342);
          v353 = veorq_s8(v352, v330);
          v354 = vsraq_n_u32(vshlq_n_s32(v353, 0x18uLL), v353, 8uLL);
          v355 = vaddq_s32(vaddq_s32(v331, v69), v345);
          v356 = veorq_s8(v355, v333);
          v357 = vsraq_n_u32(vshlq_n_s32(v356, 0x18uLL), v356, 8uLL);
          v358 = vaddq_s32(v348, v334);
          v359 = veorq_s8(v358, v336);
          v360 = vsraq_n_u32(vshlq_n_s32(v359, 0x19uLL), v359, 7uLL);
          v361 = vaddq_s32(v351, v337);
          v362 = veorq_s8(v361, v339);
          v363 = vsraq_n_u32(vshlq_n_s32(v362, 0x19uLL), v362, 7uLL);
          v364 = vaddq_s32(v354, v340);
          v365 = veorq_s8(v364, v342);
          v366 = vsraq_n_u32(vshlq_n_s32(v365, 0x19uLL), v365, 7uLL);
          v367 = vaddq_s32(v357, v343);
          v368 = veorq_s8(v367, v345);
          v369 = vsraq_n_u32(vshlq_n_s32(v368, 0x19uLL), v368, 7uLL);
          v370 = vaddq_s32(vaddq_s32(v346, v73), v369);
          v371 = veorq_s8(v370, v351);
          v372 = vsraq_n_u32(vshlq_n_s32(v371, 0x10uLL), v371, 0x10uLL);
          v373 = vaddq_s32(vaddq_s32(v349, v78), v360);
          v374 = veorq_s8(v354, v373);
          v375 = vsraq_n_u32(vshlq_n_s32(v374, 0x10uLL), v374, 0x10uLL);
          v376 = vaddq_s32(vaddq_s32(v352, v788), v363);
          v377 = veorq_s8(v376, v357);
          v378 = vsraq_n_u32(vshlq_n_s32(v377, 0x10uLL), v377, 0x10uLL);
          v379 = v79;
          v380 = vaddq_s32(vaddq_s32(v355, v79), v366);
          v381 = veorq_s8(v380, v348);
          v382 = vsraq_n_u32(vshlq_n_s32(v381, 0x10uLL), v381, 0x10uLL);
          v383 = vaddq_s32(v372, v364);
          v384 = veorq_s8(v383, v369);
          v385 = vsraq_n_u32(vshlq_n_s32(v384, 0x14uLL), v384, 0xCuLL);
          v386 = vaddq_s32(v375, v367);
          v387 = veorq_s8(v386, v360);
          v388 = vsraq_n_u32(vshlq_n_s32(v387, 0x14uLL), v387, 0xCuLL);
          v389 = vaddq_s32(v378, v358);
          v390 = veorq_s8(v389, v363);
          v391 = vsraq_n_u32(vshlq_n_s32(v390, 0x14uLL), v390, 0xCuLL);
          v392 = vaddq_s32(v382, v361);
          v393 = veorq_s8(v392, v366);
          v394 = vsraq_n_u32(vshlq_n_s32(v393, 0x14uLL), v393, 0xCuLL);
          v395 = vaddq_s32(vaddq_s32(v370, v67), v385);
          v396 = veorq_s8(v395, v372);
          v397 = vsraq_n_u32(vshlq_n_s32(v396, 0x18uLL), v396, 8uLL);
          v398 = vaddq_s32(vaddq_s32(v373, v68), v388);
          v399 = veorq_s8(v398, v375);
          v400 = vsraq_n_u32(vshlq_n_s32(v399, 0x18uLL), v399, 8uLL);
          v401 = vaddq_s32(vaddq_s32(v376, v60), v391);
          v402 = veorq_s8(v401, v378);
          v403 = vsraq_n_u32(vshlq_n_s32(v402, 0x18uLL), v402, 8uLL);
          v404 = vaddq_s32(vaddq_s32(v380, v785), v394);
          v405 = veorq_s8(v404, v382);
          v406 = vsraq_n_u32(vshlq_n_s32(v405, 0x18uLL), v405, 8uLL);
          v407 = vaddq_s32(v397, v383);
          v408 = veorq_s8(v407, v385);
          v409 = vsraq_n_u32(vshlq_n_s32(v408, 0x19uLL), v408, 7uLL);
          v410 = vaddq_s32(v400, v386);
          v411 = veorq_s8(v410, v388);
          v412 = vsraq_n_u32(vshlq_n_s32(v411, 0x19uLL), v411, 7uLL);
          v413 = vaddq_s32(v403, v389);
          v414 = veorq_s8(v413, v391);
          v415 = vsraq_n_u32(vshlq_n_s32(v414, 0x19uLL), v414, 7uLL);
          v416 = vaddq_s32(v406, v392);
          v417 = veorq_s8(v416, v394);
          v418 = vsraq_n_u32(vshlq_n_s32(v417, 0x19uLL), v417, 7uLL);
          v419 = vaddq_s32(vaddq_s32(v395, v786), v412);
          v420 = veorq_s8(v406, v419);
          v421 = vsraq_n_u32(vshlq_n_s32(v420, 0x10uLL), v420, 0x10uLL);
          v422 = vaddq_s32(vaddq_s32(v398, v780), v415);
          v423 = veorq_s8(v422, v397);
          v424 = vsraq_n_u32(vshlq_n_s32(v423, 0x10uLL), v423, 0x10uLL);
          v425 = vaddq_s32(vaddq_s32(v401, v62), v418);
          v426 = veorq_s8(v425, v400);
          v427 = vsraq_n_u32(vshlq_n_s32(v426, 0x10uLL), v426, 0x10uLL);
          v428 = vaddq_s32(vaddq_s32(v404, v69), v409);
          v429 = veorq_s8(v428, v403);
          v430 = vsraq_n_u32(vshlq_n_s32(v429, 0x10uLL), v429, 0x10uLL);
          v431 = vaddq_s32(v421, v413);
          v432 = veorq_s8(v431, v412);
          v433 = vsraq_n_u32(vshlq_n_s32(v432, 0x14uLL), v432, 0xCuLL);
          v434 = vaddq_s32(v424, v416);
          v435 = veorq_s8(v434, v415);
          v436 = vsraq_n_u32(vshlq_n_s32(v435, 0x14uLL), v435, 0xCuLL);
          v437 = vaddq_s32(v427, v407);
          v438 = veorq_s8(v437, v418);
          v439 = vsraq_n_u32(vshlq_n_s32(v438, 0x14uLL), v438, 0xCuLL);
          v440 = vaddq_s32(v430, v410);
          v441 = veorq_s8(v440, v409);
          v442 = vsraq_n_u32(vshlq_n_s32(v441, 0x14uLL), v441, 0xCuLL);
          v443 = vaddq_s32(vaddq_s32(v419, v789), v433);
          v444 = veorq_s8(v443, v421);
          v445 = vsraq_n_u32(vshlq_n_s32(v444, 0x18uLL), v444, 8uLL);
          v446 = vaddq_s32(vaddq_s32(v422, v787), v436);
          v447 = veorq_s8(v446, v424);
          v448 = vsraq_n_u32(vshlq_n_s32(v447, 0x18uLL), v447, 8uLL);
          v449 = vaddq_s32(vaddq_s32(v425, v56), v439);
          v450 = veorq_s8(v449, v427);
          v451 = vsraq_n_u32(vshlq_n_s32(v450, 0x18uLL), v450, 8uLL);
          v452 = vaddq_s32(vaddq_s32(v428, v782), v442);
          v453 = veorq_s8(v452, v430);
          v454 = vsraq_n_u32(vshlq_n_s32(v453, 0x18uLL), v453, 8uLL);
          v455 = vaddq_s32(v445, v431);
          v456 = veorq_s8(v455, v433);
          v457 = vsraq_n_u32(vshlq_n_s32(v456, 0x19uLL), v456, 7uLL);
          v458 = vaddq_s32(v448, v434);
          v459 = veorq_s8(v458, v436);
          v460 = vsraq_n_u32(vshlq_n_s32(v459, 0x19uLL), v459, 7uLL);
          v461 = vaddq_s32(v451, v437);
          v462 = veorq_s8(v461, v439);
          v463 = vsraq_n_u32(vshlq_n_s32(v462, 0x19uLL), v462, 7uLL);
          v464 = vaddq_s32(v454, v440);
          v465 = veorq_s8(v464, v442);
          v466 = vsraq_n_u32(vshlq_n_s32(v465, 0x19uLL), v465, 7uLL);
          v781 = v78;
          v467 = vaddq_s32(vaddq_s32(v443, v78), v466);
          v468 = veorq_s8(v467, v448);
          v469 = vsraq_n_u32(vshlq_n_s32(v468, 0x10uLL), v468, 0x10uLL);
          v470 = vaddq_s32(vaddq_s32(v446, v68), v457);
          v471 = veorq_s8(v451, v470);
          v472 = vsraq_n_u32(vshlq_n_s32(v471, 0x10uLL), v471, 0x10uLL);
          v473 = vaddq_s32(vaddq_s32(v449, v785), v460);
          v474 = veorq_s8(v473, v454);
          v475 = vsraq_n_u32(vshlq_n_s32(v474, 0x10uLL), v474, 0x10uLL);
          v476 = vaddq_s32(vaddq_s32(v452, v788), v463);
          v477 = veorq_s8(v476, v445);
          v478 = vsraq_n_u32(vshlq_n_s32(v477, 0x10uLL), v477, 0x10uLL);
          v479 = vaddq_s32(v469, v461);
          v480 = veorq_s8(v479, v466);
          v481 = vsraq_n_u32(vshlq_n_s32(v480, 0x14uLL), v480, 0xCuLL);
          v482 = vaddq_s32(v472, v464);
          v483 = veorq_s8(v482, v457);
          v484 = vsraq_n_u32(vshlq_n_s32(v483, 0x14uLL), v483, 0xCuLL);
          v485 = vaddq_s32(v475, v455);
          v486 = veorq_s8(v485, v460);
          v487 = vsraq_n_u32(vshlq_n_s32(v486, 0x14uLL), v486, 0xCuLL);
          v488 = vaddq_s32(v478, v458);
          v489 = veorq_s8(v488, v463);
          v490 = vsraq_n_u32(vshlq_n_s32(v489, 0x14uLL), v489, 0xCuLL);
          v491 = vaddq_s32(vaddq_s32(v467, v79), v481);
          v492 = veorq_s8(v491, v469);
          v493 = vsraq_n_u32(vshlq_n_s32(v492, 0x18uLL), v492, 8uLL);
          v494 = vaddq_s32(vaddq_s32(v470, v780), v484);
          v495 = veorq_s8(v494, v472);
          v496 = vsraq_n_u32(vshlq_n_s32(v495, 0x18uLL), v495, 8uLL);
          v497 = vaddq_s32(vaddq_s32(v473, v73), v487);
          v498 = veorq_s8(v497, v475);
          v499 = vsraq_n_u32(vshlq_n_s32(v498, 0x18uLL), v498, 8uLL);
          v500 = vaddq_s32(vaddq_s32(v476, v56), v490);
          v501 = veorq_s8(v500, v478);
          v502 = vsraq_n_u32(vshlq_n_s32(v501, 0x18uLL), v501, 8uLL);
          v503 = vaddq_s32(v493, v479);
          v504 = veorq_s8(v503, v481);
          v505 = vsraq_n_u32(vshlq_n_s32(v504, 0x19uLL), v504, 7uLL);
          v506 = vaddq_s32(v496, v482);
          v507 = veorq_s8(v506, v484);
          v508 = vsraq_n_u32(vshlq_n_s32(v507, 0x19uLL), v507, 7uLL);
          v509 = vaddq_s32(v499, v485);
          v510 = veorq_s8(v509, v487);
          v511 = vsraq_n_u32(vshlq_n_s32(v510, 0x19uLL), v510, 7uLL);
          v512 = vaddq_s32(v502, v488);
          v513 = veorq_s8(v512, v490);
          v514 = vsraq_n_u32(vshlq_n_s32(v513, 0x19uLL), v513, 7uLL);
          v515 = vaddq_s32(vaddq_s32(v491, v67), v508);
          v516 = veorq_s8(v502, v515);
          v517 = vsraq_n_u32(vshlq_n_s32(v516, 0x10uLL), v516, 0x10uLL);
          v518 = vaddq_s32(vaddq_s32(v494, v62), v511);
          v519 = veorq_s8(v518, v493);
          v520 = vsraq_n_u32(vshlq_n_s32(v519, 0x10uLL), v519, 0x10uLL);
          v521 = vaddq_s32(vaddq_s32(v497, v789), v514);
          v522 = veorq_s8(v521, v496);
          v523 = vsraq_n_u32(vshlq_n_s32(v522, 0x10uLL), v522, 0x10uLL);
          v524 = vaddq_s32(vaddq_s32(v500, v782), v505);
          v525 = veorq_s8(v524, v499);
          v526 = vsraq_n_u32(vshlq_n_s32(v525, 0x10uLL), v525, 0x10uLL);
          v527 = vaddq_s32(v517, v509);
          v528 = veorq_s8(v527, v508);
          v529 = vsraq_n_u32(vshlq_n_s32(v528, 0x14uLL), v528, 0xCuLL);
          v530 = vaddq_s32(v520, v512);
          v531 = veorq_s8(v530, v511);
          v532 = vsraq_n_u32(vshlq_n_s32(v531, 0x14uLL), v531, 0xCuLL);
          v533 = vaddq_s32(v523, v503);
          v534 = veorq_s8(v533, v514);
          v535 = vsraq_n_u32(vshlq_n_s32(v534, 0x14uLL), v534, 0xCuLL);
          v536 = vaddq_s32(v526, v506);
          v537 = veorq_s8(v536, v505);
          v538 = vsraq_n_u32(vshlq_n_s32(v537, 0x14uLL), v537, 0xCuLL);
          v539 = vaddq_s32(vaddq_s32(v515, v787), v529);
          v540 = veorq_s8(v539, v517);
          v541 = vsraq_n_u32(vshlq_n_s32(v540, 0x18uLL), v540, 8uLL);
          v542 = vaddq_s32(vaddq_s32(v518, v60), v532);
          v543 = veorq_s8(v542, v520);
          v544 = vsraq_n_u32(vshlq_n_s32(v543, 0x18uLL), v543, 8uLL);
          v545 = vaddq_s32(vaddq_s32(v521, v69), v535);
          v546 = veorq_s8(v545, v523);
          v547 = vsraq_n_u32(vshlq_n_s32(v546, 0x18uLL), v546, 8uLL);
          v548 = vaddq_s32(vaddq_s32(v524, v786), v538);
          v549 = veorq_s8(v548, v526);
          v550 = vsraq_n_u32(vshlq_n_s32(v549, 0x18uLL), v549, 8uLL);
          v551 = vaddq_s32(v541, v527);
          v552 = veorq_s8(v551, v529);
          v553 = vsraq_n_u32(vshlq_n_s32(v552, 0x19uLL), v552, 7uLL);
          v554 = vaddq_s32(v544, v530);
          v555 = veorq_s8(v554, v532);
          v556 = vsraq_n_u32(vshlq_n_s32(v555, 0x19uLL), v555, 7uLL);
          v557 = vaddq_s32(v547, v533);
          v558 = veorq_s8(v557, v535);
          v559 = vsraq_n_u32(vshlq_n_s32(v558, 0x19uLL), v558, 7uLL);
          v560 = vaddq_s32(v550, v536);
          v561 = veorq_s8(v560, v538);
          v562 = vsraq_n_u32(vshlq_n_s32(v561, 0x19uLL), v561, 7uLL);
          v563 = vaddq_s32(vaddq_s32(v539, v68), v562);
          v564 = veorq_s8(v563, v544);
          v565 = vsraq_n_u32(vshlq_n_s32(v564, 0x10uLL), v564, 0x10uLL);
          v566 = vaddq_s32(vaddq_s32(v542, v780), v553);
          v567 = veorq_s8(v547, v566);
          v568 = vsraq_n_u32(vshlq_n_s32(v567, 0x10uLL), v567, 0x10uLL);
          v569 = vaddq_s32(vaddq_s32(v545, v56), v556);
          v570 = veorq_s8(v569, v550);
          v571 = vsraq_n_u32(vshlq_n_s32(v570, 0x10uLL), v570, 0x10uLL);
          v572 = vaddq_s32(vaddq_s32(v548, v785), v559);
          v573 = veorq_s8(v572, v541);
          v574 = vsraq_n_u32(vshlq_n_s32(v573, 0x10uLL), v573, 0x10uLL);
          v575 = vaddq_s32(v565, v557);
          v576 = veorq_s8(v575, v562);
          v577 = vsraq_n_u32(vshlq_n_s32(v576, 0x14uLL), v576, 0xCuLL);
          v578 = vaddq_s32(v568, v560);
          v579 = veorq_s8(v578, v553);
          v580 = vsraq_n_u32(vshlq_n_s32(v579, 0x14uLL), v579, 0xCuLL);
          v581 = vaddq_s32(v571, v551);
          v582 = veorq_s8(v581, v556);
          v583 = vsraq_n_u32(vshlq_n_s32(v582, 0x14uLL), v582, 0xCuLL);
          v584 = vaddq_s32(v574, v554);
          v585 = veorq_s8(v584, v559);
          v586 = vsraq_n_u32(vshlq_n_s32(v585, 0x14uLL), v585, 0xCuLL);
          v587 = vaddq_s32(vaddq_s32(v563, v788), v577);
          v588 = veorq_s8(v587, v565);
          v589 = vsraq_n_u32(vshlq_n_s32(v588, 0x18uLL), v588, 8uLL);
          v590 = vaddq_s32(vaddq_s32(v566, v62), v580);
          v591 = veorq_s8(v590, v568);
          v592 = vsraq_n_u32(vshlq_n_s32(v591, 0x18uLL), v591, 8uLL);
          v593 = vaddq_s32(vaddq_s32(v569, v78), v583);
          v594 = veorq_s8(v593, v571);
          v595 = vsraq_n_u32(vshlq_n_s32(v594, 0x18uLL), v594, 8uLL);
          v596 = vaddq_s32(vaddq_s32(v572, v69), v586);
          v597 = veorq_s8(v596, v574);
          v598 = vsraq_n_u32(vshlq_n_s32(v597, 0x18uLL), v597, 8uLL);
          v599 = vaddq_s32(v589, v575);
          v600 = veorq_s8(v599, v577);
          v601 = vsraq_n_u32(vshlq_n_s32(v600, 0x19uLL), v600, 7uLL);
          v602 = vaddq_s32(v592, v578);
          v603 = veorq_s8(v602, v580);
          v604 = vsraq_n_u32(vshlq_n_s32(v603, 0x19uLL), v603, 7uLL);
          v605 = vaddq_s32(v595, v581);
          v606 = veorq_s8(v605, v583);
          v607 = vsraq_n_u32(vshlq_n_s32(v606, 0x19uLL), v606, 7uLL);
          v608 = vaddq_s32(v598, v584);
          v609 = veorq_s8(v608, v586);
          v610 = vsraq_n_u32(vshlq_n_s32(v609, 0x19uLL), v609, 7uLL);
          v611 = vaddq_s32(vaddq_s32(v587, v79), v604);
          v612 = veorq_s8(v598, v611);
          v613 = vsraq_n_u32(vshlq_n_s32(v612, 0x10uLL), v612, 0x10uLL);
          v614 = vaddq_s32(vaddq_s32(v590, v789), v607);
          v615 = veorq_s8(v614, v589);
          v616 = vsraq_n_u32(vshlq_n_s32(v615, 0x10uLL), v615, 0x10uLL);
          v617 = vaddq_s32(vaddq_s32(v593, v787), v610);
          v618 = veorq_s8(v617, v592);
          v619 = vsraq_n_u32(vshlq_n_s32(v618, 0x10uLL), v618, 0x10uLL);
          v620 = vaddq_s32(vaddq_s32(v596, v786), v601);
          v621 = veorq_s8(v620, v595);
          v622 = vsraq_n_u32(vshlq_n_s32(v621, 0x10uLL), v621, 0x10uLL);
          v623 = vaddq_s32(v613, v605);
          v624 = veorq_s8(v623, v604);
          v625 = vsraq_n_u32(vshlq_n_s32(v624, 0x14uLL), v624, 0xCuLL);
          v626 = vaddq_s32(v616, v608);
          v627 = veorq_s8(v626, v607);
          v628 = vsraq_n_u32(vshlq_n_s32(v627, 0x14uLL), v627, 0xCuLL);
          v629 = vaddq_s32(v619, v599);
          v630 = veorq_s8(v629, v610);
          v631 = vsraq_n_u32(vshlq_n_s32(v630, 0x14uLL), v630, 0xCuLL);
          v632 = vaddq_s32(v622, v602);
          v633 = veorq_s8(v632, v601);
          v634 = vsraq_n_u32(vshlq_n_s32(v633, 0x14uLL), v633, 0xCuLL);
          v635 = vaddq_s32(vaddq_s32(v611, v60), v625);
          v636 = veorq_s8(v635, v613);
          v637 = vsraq_n_u32(vshlq_n_s32(v636, 0x18uLL), v636, 8uLL);
          v638 = vaddq_s32(vaddq_s32(v614, v73), v628);
          v639 = veorq_s8(v638, v616);
          v640 = vsraq_n_u32(vshlq_n_s32(v639, 0x18uLL), v639, 8uLL);
          v641 = vaddq_s32(vaddq_s32(v617, v782), v631);
          v642 = veorq_s8(v641, v619);
          v643 = vsraq_n_u32(vshlq_n_s32(v642, 0x18uLL), v642, 8uLL);
          v644 = vaddq_s32(vaddq_s32(v620, v67), v634);
          v645 = veorq_s8(v644, v622);
          v646 = vsraq_n_u32(vshlq_n_s32(v645, 0x18uLL), v645, 8uLL);
          v647 = vaddq_s32(v637, v623);
          v648 = veorq_s8(v647, v625);
          v649 = vsraq_n_u32(vshlq_n_s32(v648, 0x19uLL), v648, 7uLL);
          v650 = vaddq_s32(v640, v626);
          v651 = veorq_s8(v650, v628);
          v652 = vsraq_n_u32(vshlq_n_s32(v651, 0x19uLL), v651, 7uLL);
          v653 = vaddq_s32(v643, v629);
          v654 = veorq_s8(v653, v631);
          v655 = vsraq_n_u32(vshlq_n_s32(v654, 0x19uLL), v654, 7uLL);
          v656 = vaddq_s32(v646, v632);
          v657 = veorq_s8(v656, v634);
          v658 = vsraq_n_u32(vshlq_n_s32(v657, 0x19uLL), v657, 7uLL);
          v659 = vaddq_s32(vaddq_s32(v635, v780), v658);
          v660 = vaddq_s32(vaddq_s32(v638, v62), v649);
          v661 = vaddq_s32(vaddq_s32(v641, v69), v652);
          v662 = vaddq_s32(vaddq_s32(v644, v56), v655);
          v663 = veorq_s8(v659, v640);
          v664 = veorq_s8(v643, v660);
          v665 = veorq_s8(v661, v646);
          v666 = veorq_s8(v662, v637);
          v667 = vsraq_n_u32(vshlq_n_s32(v663, 0x10uLL), v663, 0x10uLL);
          v668 = vsraq_n_u32(vshlq_n_s32(v664, 0x10uLL), v664, 0x10uLL);
          v669 = vsraq_n_u32(vshlq_n_s32(v665, 0x10uLL), v665, 0x10uLL);
          v670 = vsraq_n_u32(vshlq_n_s32(v666, 0x10uLL), v666, 0x10uLL);
          v671 = vaddq_s32(v667, v653);
          v672 = vaddq_s32(v668, v656);
          v673 = vaddq_s32(v669, v647);
          v674 = vaddq_s32(v670, v650);
          v675 = veorq_s8(v671, v658);
          v676 = veorq_s8(v672, v649);
          v677 = veorq_s8(v673, v652);
          v678 = veorq_s8(v674, v655);
          v679 = vsraq_n_u32(vshlq_n_s32(v675, 0x14uLL), v675, 0xCuLL);
          v680 = vsraq_n_u32(vshlq_n_s32(v676, 0x14uLL), v676, 0xCuLL);
          v681 = vsraq_n_u32(vshlq_n_s32(v677, 0x14uLL), v677, 0xCuLL);
          v682 = vsraq_n_u32(vshlq_n_s32(v678, 0x14uLL), v678, 0xCuLL);
          v683 = vaddq_s32(vaddq_s32(v659, v785), v679);
          v684 = vaddq_s32(vaddq_s32(v660, v789), v680);
          v685 = vaddq_s32(vaddq_s32(v661, v68), v681);
          v686 = vaddq_s32(vaddq_s32(v662, v782), v682);
          v687 = veorq_s8(v683, v667);
          v688 = veorq_s8(v684, v668);
          v689 = veorq_s8(v685, v669);
          v690 = veorq_s8(v686, v670);
          v691 = vsraq_n_u32(vshlq_n_s32(v687, 0x18uLL), v687, 8uLL);
          v692 = vsraq_n_u32(vshlq_n_s32(v688, 0x18uLL), v688, 8uLL);
          v693 = vsraq_n_u32(vshlq_n_s32(v689, 0x18uLL), v689, 8uLL);
          v694 = vsraq_n_u32(vshlq_n_s32(v690, 0x18uLL), v690, 8uLL);
          v695 = vaddq_s32(v691, v671);
          v696 = vaddq_s32(v692, v672);
          v697 = vaddq_s32(v693, v673);
          v698 = vaddq_s32(v694, v674);
          v699 = veorq_s8(v695, v679);
          v700 = veorq_s8(v696, v680);
          v701 = veorq_s8(v697, v681);
          v702 = veorq_s8(v698, v682);
          v703 = vsraq_n_u32(vshlq_n_s32(v699, 0x19uLL), v699, 7uLL);
          v704 = vsraq_n_u32(vshlq_n_s32(v700, 0x19uLL), v700, 7uLL);
          v705 = vsraq_n_u32(vshlq_n_s32(v701, 0x19uLL), v701, 7uLL);
          v706 = vsraq_n_u32(vshlq_n_s32(v702, 0x19uLL), v702, 7uLL);
          v707 = vaddq_s32(vaddq_s32(v683, v788), v704);
          v708 = vaddq_s32(vaddq_s32(v685, v784), v706);
          v709 = vaddq_s32(vaddq_s32(v684, v787), v705);
          v710 = vaddq_s32(vaddq_s32(v686, v67), v703);
          v711 = veorq_s8(v694, v707);
          v712 = veorq_s8(v709, v691);
          v713 = veorq_s8(v708, v692);
          v714 = veorq_s8(v710, v693);
          v715 = vsraq_n_u32(vshlq_n_s32(v711, 0x10uLL), v711, 0x10uLL);
          v716 = vsraq_n_u32(vshlq_n_s32(v712, 0x10uLL), v712, 0x10uLL);
          v717 = vsraq_n_u32(vshlq_n_s32(v713, 0x10uLL), v713, 0x10uLL);
          v718 = vsraq_n_u32(vshlq_n_s32(v714, 0x10uLL), v714, 0x10uLL);
          v719 = vaddq_s32(v715, v697);
          v720 = vaddq_s32(v716, v698);
          v721 = vaddq_s32(v717, v695);
          v722 = vaddq_s32(v718, v696);
          v723 = veorq_s8(v719, v704);
          v724 = veorq_s8(v720, v705);
          v725 = veorq_s8(v721, v706);
          v726 = veorq_s8(v722, v703);
          v17 = v776;
          v727 = vsraq_n_u32(vshlq_n_s32(v723, 0x14uLL), v723, 0xCuLL);
          v728 = vsraq_n_u32(vshlq_n_s32(v724, 0x14uLL), v724, 0xCuLL);
          v729 = vsraq_n_u32(vshlq_n_s32(v725, 0x14uLL), v725, 0xCuLL);
          v730 = vsraq_n_u32(vshlq_n_s32(v726, 0x14uLL), v726, 0xCuLL);
          v731 = vaddq_s32(vaddq_s32(v707, v783), v727);
          v732 = vaddq_s32(vaddq_s32(v708, v786), v729);
          v733 = vaddq_s32(vaddq_s32(v709, v781), v728);
          v734 = vaddq_s32(vaddq_s32(v710, v379), v730);
          v735 = veorq_s8(v731, v715);
          v736 = veorq_s8(v733, v716);
          v737 = veorq_s8(v732, v717);
          v738 = veorq_s8(v734, v718);
          v739 = vsraq_n_u32(vshlq_n_s32(v735, 0x18uLL), v735, 8uLL);
          v740 = vsraq_n_u32(vshlq_n_s32(v736, 0x18uLL), v736, 8uLL);
          v741 = vsraq_n_u32(vshlq_n_s32(v737, 0x18uLL), v737, 8uLL);
          v742 = vsraq_n_u32(vshlq_n_s32(v738, 0x18uLL), v738, 8uLL);
          v743 = vaddq_s32(v739, v719);
          v744 = vaddq_s32(v740, v720);
          v745 = vaddq_s32(v741, v721);
          v746 = vaddq_s32(v742, v722);
          v747 = veorq_s8(v743, v727);
          v748 = veorq_s8(v744, v728);
          v749 = veorq_s8(v745, v729);
          v750 = veorq_s8(v746, v730);
          v19 = veorq_s8(v745, v731);
          v20 = veorq_s8(v733, v746);
          v22 = veorq_s8(v732, v743);
          v24 = veorq_s8(v744, v734);
          v26 = veorq_s8(v740, vsraq_n_u32(vshlq_n_s32(v750, 0x19uLL), v750, 7uLL));
          v28 = veorq_s8(v741, vsraq_n_u32(vshlq_n_s32(v747, 0x19uLL), v747, 7uLL));
          v30 = veorq_s8(vsraq_n_u32(vshlq_n_s32(v748, 0x19uLL), v748, 7uLL), v742);
          v32 = veorq_s8(vsraq_n_u32(vshlq_n_s32(v749, 0x19uLL), v749, 7uLL), v739);
          v36 += 64;
          v37 += 64;
          v38 += 64;
          v39 += 64;
          v41 = a7;
        }

        while (v40);
      }

      v751 = vtrn1q_s32(v19, v20);
      v752 = vtrn2q_s32(v19, v20);
      v753 = vtrn1q_s32(v22, v24);
      v754 = vtrn2q_s32(v22, v24);
      v755 = vzip2q_s64(v751, v753);
      v751.i64[1] = v753.i64[0];
      v756 = vzip2q_s64(v752, v754);
      v752.i64[1] = v754.i64[0];
      v757 = vtrn1q_s32(v26, v28);
      v758 = vtrn2q_s32(v26, v28);
      v759 = vtrn1q_s32(v30, v32);
      v760 = vtrn2q_s32(v30, v32);
      v761 = vzip2q_s64(v757, v759);
      v757.i64[1] = v759.i64[0];
      v762 = vzip2q_s64(v758, v760);
      v758.i64[1] = v760.i64[0];
      *a10 = v751;
      a10[1] = v757;
      a10[2] = v752;
      a10[3] = v758;
      a10[4] = v755;
      a10[5] = v761;
      a10[6] = v756;
      a10[7] = v762;
      if (a6)
      {
        a5 += 4;
      }

      v13 += 4;
      v12 -= 4;
      a10 += 8;
    }

    while (v12 > 3);
  }

  if (v12)
  {
    v763 = a8 | a7;
    do
    {
      v764 = *v13;
      v765 = *(a4 + 4);
      v790 = *a4;
      v791 = v765;
      v766 = a3;
      v767 = a3;
      for (i = v763; ; i = a7)
      {
        v769 = v767 - 1;
        if (v767 != 1)
        {
          break;
        }

        i |= a9;
LABEL_19:
        result = llvm_blake3_compress_in_place_portable(v790.i32, v764, 64, a5, i);
        v764 += 16;
        v767 = v769;
      }

      if (v767)
      {
        goto LABEL_19;
      }

      v770 = v791;
      *a10 = v790;
      a10[1] = v770;
      a10 += 2;
      a5 += v773;
      ++v13;
      --v12;
      a3 = v766;
    }

    while (v12);
  }

  v771 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::detail::IEEEFloat::assign(void *this, uint64_t *a2)
{
  v2 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v2;
  v3 = *(a2 + 20);
  v4 = v3 & 7;
  *(this + 20) = v2 & 0xF8 | v3 & 7;
  *(this + 4) = *(a2 + 4);
  v6 = (v3 & 6) != 0 && v4 != 3;
  if (v4 == 1 || v6)
  {
    return llvm::detail::IEEEFloat::copySignificand(this, a2);
  }

  return this;
}

void *llvm::detail::IEEEFloat::copySignificand(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = a1 + 1;
  v4 = *(v3 + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v5 = *(*a2 + 8) - 64;
  v8 = a2[1];
  v6 = a2 + 1;
  v7 = v8;
  if (v5 >= 0xFFFFFF80)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  LODWORD(v10) = (v4 + 64) >> 6;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v10;
  }

  do
  {
    v11 = *v9++;
    *result++ = v11;
    --v10;
  }

  while (v10);
  return result;
}

void llvm::detail::IEEEFloat::makeNaN(llvm::detail::IEEEFloat *this, int a2, int a3, const llvm::APInt *a4)
{
  v4 = a4;
  v7 = *this;
  v8 = *(this + 20) & 0xF0;
  if (a3)
  {
    v9 = 9;
  }

  else
  {
    v9 = 1;
  }

  *(this + 20) = v8 | v9;
  v10 = *(v7 + 16);
  if (v10 != 1)
  {
    goto LABEL_9;
  }

  if (*(v7 + 20) == 2)
  {
    v11 = *(v7 + 4) - 1;
    goto LABEL_10;
  }

  if (*(v7 + 25) == 1)
  {
    v11 = *v7;
  }

  else
  {
LABEL_9:
    v11 = *v7 + 1;
  }

LABEL_10:
  *(this + 4) = v11;
  v12 = *(v7 + 8);
  v13 = (this + 8);
  if (v12 - 64 <= 0xFFFFFF7F)
  {
    v13 = *v13;
  }

  v14 = v12 + 64;
  v15 = (v12 + 64) >> 6;
  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v34 = 1;
  v33 = 0;
  if (v10 == 1)
  {
    if (*(v7 + 20) == 2)
    {
      *(this + 20) = v8 | 9;
      v17 = *(v7 + 8) - 1;
      if (v17 >= 0x41)
      {
        operator new[]();
      }

      v18 = 0;
      a2 = 0;
      v33 = 0;
    }

    else
    {
      llvm::APInt::getAllOnes((v12 - 1), &v31);
      a2 = 0;
      v18 = v31;
      v33 = v31;
      v17 = v32;
    }

    v34 = v17;
    v4 = &v33;
    v19 = v17;
  }

  else
  {
    if (!a4)
    {
      *v13 = 0;
      if (v14 >= 0x80)
      {
        bzero(v13 + 8, 8 * (v16 - 1));
      }

      v18 = 0;
      v20 = v12 - 2;
      if (v12 <= 1)
      {
        v20 = 0;
      }

      v17 = 1;
      if (a2)
      {
        goto LABEL_49;
      }

      goto LABEL_27;
    }

    v18 = 0;
    v19 = *(a4 + 2);
    v17 = 1;
  }

  v22 = (v19 + 63) >> 6;
  if (v16 > v22)
  {
    *v13 = 0;
    if (v14 >= 0x80)
    {
      bzero(v13 + 8, 8 * (v16 - 1));
    }
  }

  if (v19 >= 0x41)
  {
    v4 = *v4;
  }

  else if (!v19)
  {
    goto LABEL_43;
  }

  if (v16 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v16;
  }

  v24 = v13;
  do
  {
    v25 = *v4;
    v4 = (v4 + 8);
    *v24++ = v25;
    --v23;
  }

  while (v23);
LABEL_43:
  v7 = *this;
  v26 = *(*this + 8);
  v27 = (v26 - 1) >> 6;
  *(v13 + v27) &= ~(-1 << (v26 - 1));
  for (i = v27 + 1; v16 != i; ++i)
  {
    *(v13 + i) = 0;
  }

  if (v26 <= 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v26 - 2;
  }

  if (a2)
  {
LABEL_49:
    *(v13 + (v20 >> 6)) &= ~(1 << v20);
    v29 = *v13;
    if (*v13)
    {
      goto LABEL_55;
    }

    while (v16 - 1 != v29)
    {
      if (*(v13 + ++v29))
      {
        if (v29 < v16)
        {
          goto LABEL_55;
        }

        break;
      }
    }

    v21 = v20 - 1;
    goto LABEL_54;
  }

LABEL_27:
  v21 = v20;
  if (*(v7 + 20) != 2)
  {
LABEL_54:
    *(v13 + (v21 >> 6)) |= 1 << v21;
  }

LABEL_55:
  if (v7 == &llvm::semX87DoubleExtended)
  {
    *(v13 + ((v20 + 1) >> 6)) |= 1 << (v20 + 1);
  }

  if (v17 >= 0x41)
  {
    if (v18)
    {
      MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }
}

uint64_t llvm::APInt::getAllOnes@<X0>(llvm::APInt *this@<X0>, llvm::APInt *a2@<X8>)
{
  *(a2 + 2) = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(a2);
  }

  *a2 = -1;
  return llvm::APInt::clearUnusedBits(a2);
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::operator=(llvm::detail::IEEEFloat *this, llvm::detail::IEEEFloat *a2)
{
  if (this != a2)
  {
    v4 = *a2;
    if (*this != *a2)
    {
      if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
      {
        v5 = *(this + 1);
        if (v5)
        {
          MEMORY[0x25F891010](v5, 0x1000C8000313F17);
          v4 = *a2;
        }
      }

      *this = v4;
      if ((*(v4 + 8) + 64) >= 0x80)
      {
        operator new[]();
      }
    }

    llvm::detail::IEEEFloat::assign(this, a2);
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      MEMORY[0x25F891010](v4, 0x1000C8000313F17);
    }
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 20) & 0xF8 | *(a2 + 20) & 7;
  *(a1 + 20) = v5;
  *(a1 + 20) = v5 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return a1;
}

BOOL llvm::detail::IEEEFloat::isDenormal(llvm::detail::IEEEFloat *this)
{
  v1 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v1 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return ((v3[(v2 - 1) >> 6] >> (v2 - 1)) & 1) == 0;
}

uint64_t llvm::detail::IEEEFloat::significandMSB(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = (v3 + 64) >> 6;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = 64 - (v5 << 6);
  v7 = v5;
  while (1)
  {
    v8 = v1[v7 - 1];
    if (v8)
    {
      break;
    }

    v6 += 64;
    if (!(--v7 * 8))
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (__clz(v8) - v6) ^ 0x3F;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnes(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if (v3 - 64 <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  if ((v3 + 63) >> 6 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v3 + 63) >> 6;
  }

  if (v4 != 1)
  {
    v5 = v4 - 1;
    v6 = v1;
    do
    {
      v7 = *v6++;
      if (v7 != -1)
      {
        return 0;
      }
    }

    while (--v5);
  }

  if (v3 < 2)
  {
    return 0;
  }

  return (v1[v4 - 1] | (-1 << (v3 + 63 - (v4 << 6)))) == -1;
}

uint64_t llvm::detail::IEEEFloat::compare(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *(this + 20);
  v4 = *(a2 + 20);
  v5 = 4 * (v3 & 7) + (v4 & 7);
  result = 3;
  if (v5 > 7)
  {
    if (v5 > 11)
    {
      if (v5 > 13)
      {
        if (v5 != 14)
        {
          return 1;
        }
      }

      else if (v5 != 12)
      {
        return result;
      }
    }

    else
    {
      if (v5 > 9)
      {
        if (v5 == 10)
        {
          v10 = (v3 >> 3) & 1;
          if (v10 != ((v4 >> 3) & 1))
          {
            return (2 * v10) ^ 2u;
          }

          LODWORD(result) = llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2);
          if (result == 2)
          {
            v11 = 0;
          }

          else
          {
            v11 = result;
          }

          if (result)
          {
            v12 = v11;
          }

          else
          {
            v12 = 2;
          }

          if ((v3 & 8) != 0)
          {
            return v12;
          }

          else
          {
            return result;
          }
        }

        return ~(v3 >> 2) & 2;
      }

      if (v5 != 8)
      {
        return result;
      }
    }

    return (v4 >> 2) & 2;
  }

  if (v5 > 3)
  {
    return result;
  }

  if ((v5 - 2) < 2)
  {
    return ~(v3 >> 2) & 2;
  }

  v7 = (v3 >> 3) & 1;
  v8 = v7 == ((v4 >> 3) & 1);
  v9 = (2 * v7) ^ 2;
  if (v8)
  {
    v9 = 1;
  }

  if (v5)
  {
    return 3;
  }

  else
  {
    return v9;
  }
}

BOOL llvm::detail::IEEEFloat::bitwiseIsEqual(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *a2;
  if (*this != *a2)
  {
    return 0;
  }

  v3 = *(this + 20);
  v4 = *(a2 + 20);
  if ((v3 & 7) != (v4 & 7) || ((v4 ^ v3) & 8) != 0)
  {
    return 0;
  }

  v5 = 1;
  if ((v3 & 7) == 0 || (v3 & 7) == 3)
  {
    return v5;
  }

  if ((v3 & 6) != 0 && *(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  v6 = *(*this + 8);
  v7 = (this + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  v8 = (v6 + 64) >> 6;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v11 = *(a2 + 1);
  v9 = a2 + 8;
  v10 = v11;
  if ((*(v2 + 8) - 64) < 0xFFFFFF80)
  {
    v9 = v10;
  }

  return memcmp(v7, v9, 8 * v8) == 0;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v6 = *(a2 + 8);
  v7 = (a1 + 8);
  if ((v6 - 64) >= 0xFFFFFF80)
  {
    *v7 = 0;
  }

  else
  {
    v8 = *v7;
    *v8 = 0;
    bzero(v8 + 1, 8 * (((v6 + 64) >> 6) - 1));
    v7 = *v7;
  }

  *(a1 + 16) = *(a2 + 8) - 1;
  *v7 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

uint64_t llvm::detail::IEEEFloat::normalize(uint64_t *a1, int a2, int a3)
{
  if ((*(a1 + 20) & 6) == 0 || (*(a1 + 20) & 7) == 3)
  {
    return 0;
  }

  v8 = llvm::detail::IEEEFloat::significandMSB(a1);
  v9 = *a1;
  v10 = v8 + 1;
  if (v8 == -1)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v21 = *(a1 + 4);
  v22 = v21 + v10 - *(v9 + 8);
  if (v22 > *v9)
  {
    goto LABEL_34;
  }

  v23 = *(v9 + 4);
  v24 = v23 - v21;
  if (v22 >= v23)
  {
    v25 = v10 - *(v9 + 8);
  }

  else
  {
    v25 = v24;
  }

  if ((v25 & 0x80000000) != 0)
  {
    llvm::detail::IEEEFloat::shiftSignificandLeft(a1, -v25);
    return 0;
  }

  if (v25)
  {
    v26 = llvm::detail::IEEEFloat::shiftSignificandRight(a1, v25);
    if (v26 == 2)
    {
      v27 = 3;
    }

    else
    {
      v27 = v26;
    }

    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1;
    }

    if (a3)
    {
      a3 = v28;
    }

    else
    {
      a3 = v26;
    }

    if (v10 >= v25)
    {
      v10 -= v25;
    }

    else
    {
      v10 = 0;
    }

    v9 = *a1;
  }

LABEL_9:
  v11 = *(v9 + 16);
  if (v11 == 1 && *(v9 + 20) == 1 && *(a1 + 4) == *v9 && llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
  {
    goto LABEL_34;
  }

  if (!a3)
  {
    if (!v10)
    {
      v29 = *(a1 + 20) & 0xF8 | 3;
      *(a1 + 20) = v29;
      if (*(v9 + 20) == 2)
      {
        *(a1 + 20) = v29 & 0xF3;
      }

      if ((*(v9 + 24) & 1) == 0)
      {
        llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
      }
    }

    return 0;
  }

  if (!llvm::detail::IEEEFloat::roundAwayFromZero(a1, a2, a3, 0))
  {
    v12 = *(v9 + 8);
    goto LABEL_62;
  }

  if (!v10)
  {
    *(a1 + 4) = *(v9 + 4);
  }

  v12 = *(v9 + 8);
  v13 = a1 + 1;
  if ((v12 - 64) <= 0xFFFFFF7F)
  {
    v13 = *v13;
  }

  LODWORD(v14) = (v12 + 64) >> 6;
  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v15 = __CFADD__((*v13)++, 1);
  if (v15)
  {
    v16 = v13 + 1;
    v17 = v14 - 1;
    do
    {
      if (!v17)
      {
        break;
      }

      --v17;
      v15 = __CFADD__((*v16++)++, 1);
    }

    while (v15);
  }

  v18 = llvm::detail::IEEEFloat::significandMSB(a1);
  if (v18 == v12)
  {
    if (*(a1 + 4) == *v9)
    {
      if ((*(a1 + 20) & 8) != 0)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v20 = a1;
      goto LABEL_35;
    }

    llvm::detail::IEEEFloat::shiftSignificandRight(a1, 1u);
    return 16;
  }

  v10 = v18 + 1;
  if (v11 == 1 && *(v9 + 20) == 1 && *(a1 + 4) == *v9 && llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
  {
LABEL_34:
    v20 = a1;
    v19 = a2;
LABEL_35:

    return llvm::detail::IEEEFloat::handleOverflow(v20, v19);
  }

LABEL_62:
  if (v10 == v12)
  {
    return 16;
  }

  if (!v10)
  {
    v30 = *(a1 + 20) & 0xF8 | 3;
    *(a1 + 20) = v30;
    if (*(v9 + 20) == 2)
    {
      *(a1 + 20) = v30 & 0xF3;
    }

    if ((*(v9 + 24) & 1) == 0)
    {
      llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
    }
  }

  return 24;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, uint64_t a2)
{
  *this = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  if (*(a2 + 24) == 1)
  {
    llvm::detail::IEEEFloat::makeZero(this, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::makeSmallestNormalized(this, 0);
  }

  return this;
}

void llvm::detail::IEEEFloat::makeZero(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *this;
  v3 = *(this + 20) & 0xF0;
  if (a2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  *(this + 20) = v3 | v4 | 3;
  if (v2[5] == 2)
  {
    *(this + 20) = v3 | 3;
  }

  v6 = v2[1];
  v5 = v2[2];
  *(this + 4) = v6 - 1;
  if ((v5 - 64) >= 0xFFFFFF80)
  {
    *(this + 1) = 0;
  }

  else
  {
    v7 = *(this + 1);
    *v7 = 0;
    bzero(v7 + 1, 8 * (((v5 + 64) >> 6) - 1));
  }
}

void llvm::detail::IEEEFloat::makeSmallestNormalized(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 20) & 0xF8 | 2;
  *(this + 20) = v4;
  v5 = *this;
  v6 = *(*this + 8);
  v7 = (this + 8);
  if ((v6 - 64) >= 0xFFFFFF80)
  {
    *v7 = 0;
  }

  else
  {
    v8 = *(this + 1);
    *v8 = 0;
    bzero(v8 + 1, 8 * (((v6 + 64) >> 6) - 1));
    v4 = *(this + 20);
  }

  *(this + 20) = v4 & 0xF7 | v3;
  v9 = *(v5 + 8);
  *(this + 4) = *(v5 + 4);
  if ((v9 - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  v7[(v9 - 1) >> 6] |= 1 << (v9 - 1);
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *a2;
  *this = *a2;
  if ((*(v3 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  llvm::detail::IEEEFloat::assign(this, a2);
  return this;
}

void *llvm::detail::IEEEFloat::addSignificand(llvm::detail::IEEEFloat *this, uint64_t **a2)
{
  v3 = *this;
  result = (this + 8);
  v4 = *(v3 + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v5 = 0;
  v6 = *(*a2 + 2) - 64;
  v9 = a2[1];
  v7 = (a2 + 1);
  v8 = v9;
  if (v6 >= 0xFFFFFF80)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  LODWORD(v11) = (v4 + 64) >> 6;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  do
  {
    v12 = *v10++;
    v13 = v12 + *result;
    v14 = __CFADD__(v12, *result);
    v15 = (v13 + 1) <= *result;
    if (v5)
    {
      ++v13;
      v5 = v15;
    }

    else
    {
      v5 = v14;
    }

    *result++ = v13;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t *llvm::detail::IEEEFloat::subtractSignificand(llvm::detail::IEEEFloat *this, unint64_t **a2, uint64_t a3)
{
  v4 = *this;
  result = (this + 8);
  v5 = *(v4 + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    result = *result;
  }

  v6 = *(*a2 + 2) - 64;
  v9 = a2[1];
  v7 = (a2 + 1);
  v8 = v9;
  if (v6 >= 0xFFFFFF80)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  LODWORD(v11) = (v5 + 64) >> 6;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  do
  {
    v12 = *v10++;
    v13 = *result - v12;
    v14 = *result < v12;
    v15 = *result + ~v12;
    if (a3)
    {
      a3 = v15 >= *result;
    }

    else
    {
      v15 = v13;
      a3 = v14;
    }

    *result++ = v15;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(uint64_t a1, uint64_t a2, const llvm::detail::IEEEFloat *a3, char a4)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(*a1 + 8);
  v8 = 2 * v7 + 64;
  LODWORD(v9) = v8 >> 6;
  if (v8 >> 6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 >> 6;
  }

  v42 = 2 * v7 + 64;
  v36 = v10;
  if (v8 >= 0x140)
  {
    operator new[]();
  }

  v11 = (a1 + 8);
  if (v7 - 64 <= 0xFFFFFF7F)
  {
    v11 = *(a1 + 8);
  }

  v12 = (v7 + 64) >> 6;
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v14 = (a2 + 8);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v41 = v13;
  llvm::APInt::tcFullMultiply(v47, v11, v14, v13, v13);
  if (v9 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v9;
  }

  v15 = 64 - (v9 << 6);
  v16 = v9 - 1;
  v37 = (a1 + 8);
  while (1)
  {
    v17 = v47[v16];
    if (v17)
    {
      break;
    }

    v15 += 64;
    if (--v16 == -1)
    {
      v18 = 0;
      goto LABEL_22;
    }
  }

  v18 = ((__clz(v17) - v15) ^ 0x3F) + 1;
LABEL_22:
  v19 = *(a2 + 16) + *(a1 + 16) + 2;
  *(a1 + 16) = v19;
  if ((a4 & 1) != 0 || (*(a3 + 20) & 7) == 3)
  {
    v20 = 0;
  }

  else
  {
    v40 = *v37;
    v21 = 2 * v7 - v18;
    if (v21)
    {
      llvm::APInt::tcShiftLeft(v47, v36, v21);
      *(a1 + 16) = v19 - v21;
    }

    v22 = *v6;
    *&v45[10] = *(v6 + 10);
    *v45 = v22;
    *&v45[8] = (2 * v7) | 1;
    v23 = v47;
    if (v42 <= 0x7F)
    {
      v23 = v47[0];
    }

    *a1 = v45;
    *(a1 + 8) = v23;
    llvm::detail::IEEEFloat::IEEEFloat(&v43, a3);
    llvm::detail::IEEEFloat::convert(&v43, v45, 0, &v46);
    llvm::detail::IEEEFloat::shiftSignificandRight(&v43, 1u);
    v20 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v43, 0);
    if (v42 <= 0x7F)
    {
      v47[0] = *v37;
    }

    *a1 = v6;
    *(a1 + 8) = v40;
    v24 = 64 - (v9 << 6);
    v25 = 8 * v9;
    while (1)
    {
      v26 = *&v45[v25 + 24];
      if (v26)
      {
        break;
      }

      v24 += 64;
      v25 -= 8;
      if (!v25)
      {
        v18 = 0;
        goto LABEL_36;
      }
    }

    v18 = ((__clz(v26) - v24) ^ 0x3F) + 1;
LABEL_36:
    if ((*(v43 + 8) - 64) <= 0xFFFFFF7F && v44)
    {
      MEMORY[0x25F891010](v44, 0x1000C8000313F17);
    }

    v19 = *(a1 + 16);
  }

  v27 = v19 + ~v7;
  *(a1 + 16) = v27;
  if (v18 > v7)
  {
    v28 = (v18 + 63) >> 6;
    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
    }

    v30 = llvm::lostFractionThroughTruncation(v47, v29, v18 - v7);
    llvm::APInt::tcShiftRight(v47, v29, v18 - v7);
    if (v30 == 2)
    {
      v31 = 3;
    }

    else
    {
      v31 = v30;
    }

    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v32 = 1;
    }

    if (v20)
    {
      v20 = v32;
    }

    else
    {
      v20 = v30;
    }

    *(a1 + 16) = v18 - v7 + v27;
  }

  for (i = 0; i != v41; ++i)
  {
    v11[i] = v47[i];
  }

  if (v42 >= 0x140)
  {
    MEMORY[0x25F891010](v47, 0x1000C8000313F17);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t llvm::detail::IEEEFloat::convert(uint64_t *a1, uint64_t a2, int a3, _BYTE *a4)
{
  v7 = *a1;
  isSignaling = llvm::detail::IEEEFloat::isSignaling(a1);
  v8 = *(a2 + 8);
  v9 = v8 + 64;
  v10 = (v8 + 64) >> 6;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (v8 + 64) >> 6;
  }

  v51 = 0;
  v52 = v11;
  v12 = *(v7 + 8);
  v13 = v12 + 64;
  v14 = (v12 + 64) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = v8 - v12;
  if (a2 == &llvm::semX87DoubleExtended || v7 != &llvm::semX87DoubleExtended)
  {
LABEL_16:
    if (v16 < 0)
    {
      goto LABEL_19;
    }

LABEL_36:
    v28 = 0;
    goto LABEL_37;
  }

  if ((*(a1 + 20) & 7) != 1)
  {
    goto LABEL_18;
  }

  if ((v12 - 64) > 0xFFFFFF7F)
  {
    v17 = a1[1];
    if (v17 < 0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v51 = 1;
    goto LABEL_16;
  }

  v17 = *a1[1];
  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  if ((v17 & 0x4000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v51 = 0;
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_19:
  v18 = *(a1 + 20) & 7;
  if ((*(a1 + 20) & 6) == 0 || v18 == 3)
  {
    if (v18 != 1 || *(v7 + 16) == 1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = llvm::detail::IEEEFloat::significandMSB(a1);
    v20 = v19 + 1 - v12;
    v21 = *(a1 + 4);
    v22 = *(a2 + 4);
    if ((v20 + v21) < v22)
    {
      v20 = v22 - v21;
    }

    if ((v20 & 0x80000000) != 0)
    {
      if (v20 <= v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = v20;
      }

      v16 -= v23;
    }

    else
    {
      if (v19 + 1 > -v16)
      {
        goto LABEL_28;
      }

      v23 = v19 + v16;
      v16 = -v19;
    }

    *(a1 + 4) = v23 + v21;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

LABEL_28:
  v24 = v12 - 64;
  v25 = (a1 + 1);
  if (v24 <= 0xFFFFFF7F)
  {
    v25 = *v25;
  }

  v26 = llvm::lostFractionThroughTruncation(v25, v15, -v16);
  v27 = v25;
  v28 = v26;
  llvm::APInt::tcShiftRight(v27, v15, -v16);
LABEL_37:
  if (v10 > v15)
  {
    operator new[]();
  }

  if (v9 <= 0x7F && v13 >= 0x80)
  {
    v29 = *(a1 + 20) & 7;
    v31 = (*(a1 + 20) & 6) != 0 && v29 != 3;
    v32 = *(*a1 + 8) - 64;
    if (v29 == 1 || v31)
    {
      v34 = a1 + 1;
      if (v32 <= 0xFFFFFF7F)
      {
        v34 = *v34;
      }

      v33 = *v34;
    }

    else
    {
      v33 = 0;
    }

    if (v32 <= 0xFFFFFF7F)
    {
      v35 = a1[1];
      if (v35)
      {
        MEMORY[0x25F891010](v35, 0x1000C8000313F17);
      }
    }

    a1[1] = v33;
  }

  *a1 = a2;
  if (v16 >= 1)
  {
    v36 = *(a1 + 20) & 7;
    v37 = (*(a1 + 20) & 6) == 0 || v36 == 3;
    v38 = !v37;
    if (v36 == 1 || v38)
    {
      v40 = (a1 + 1);
      if ((*(a2 + 8) - 64) <= 0xFFFFFF7F)
      {
        v40 = *v40;
      }

      llvm::APInt::tcShiftLeft(v40, v52, v16);
    }
  }

  v41 = *(a1 + 20);
  v42 = v41 & 7;
  if ((v41 & 6) != 0 && v42 != 3)
  {
    v43 = llvm::detail::IEEEFloat::normalize(a1, a3, v28);
    *a4 = v43 != 0;
    goto LABEL_87;
  }

  if ((v41 & 7) == 0)
  {
    if (*(*a1 + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v41 >> 3) & 1, 0);
      *a4 = 1;
      v43 = 16;
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v42 == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      v44 = (*(v7 + 20) != 2) & (v41 >> 3);
      *a4 = v44;
      if (v44)
      {
        v43 = 16;
      }

      else
      {
        v43 = 0;
      }

      *(a1 + 20) &= ~8u;
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v42 != 1)
  {
LABEL_86:
    v43 = 0;
    *a4 = 0;
    goto LABEL_87;
  }

  if (*(*a1 + 16) == 1)
  {
    *a4 = *(v7 + 16) != 1;
    llvm::detail::IEEEFloat::makeNaN(a1, 0, (*(a1 + 20) >> 3) & 1, 0);
    return isSignaling;
  }

  if (*(v7 + 20) == 2 && *(*a1 + 20) != 2)
  {
    llvm::detail::IEEEFloat::makeNaN(a1, 0, 0, 0);
  }

  if (v28)
  {
    v46 = 1;
  }

  else
  {
    v46 = v51;
  }

  *a4 = v46;
  if ((v51 & 1) == 0 && *a1 == &llvm::semX87DoubleExtended)
  {
    *a1[1] |= 0x8000000000000000;
  }

  if (isSignaling)
  {
    if (*(*a1 + 16) == 1)
    {
      v43 = 1;
    }

    else
    {
      v47 = *(*a1 + 8);
      v48 = a1 + 1;
      if ((v47 - 64) <= 0xFFFFFF7F)
      {
        v48 = *v48;
      }

      v43 = 1;
      v48[(v47 - 2) >> 6] |= 1 << (v47 - 2);
    }
  }

  else
  {
    v43 = 0;
  }

LABEL_87:
  if ((*(a1 + 20) & 7) == 3 && (*(*a1 + 24) & 1) == 0)
  {
    llvm::detail::IEEEFloat::makeSmallestNormalized(a1, 0);
  }

  return v43;
}

uint64_t llvm::detail::IEEEFloat::shiftSignificandRight(llvm::detail::IEEEFloat *this, unsigned int a2)
{
  *(this + 4) += a2;
  v3 = *(*this + 8);
  v4 = (this + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  v5 = (v3 + 64) >> 6;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = llvm::lostFractionThroughTruncation(v4, v6, a2);
  llvm::APInt::tcShiftRight(v4, v6, a2);
  return v7;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  v5 = *(this + 4);
  v6 = *(a2 + 4);
  v7 = v5 - v6;
  if (((((*(a2 + 20) ^ *(this + 20)) & 8) == 0) ^ a3))
  {
    if (v7 < 1)
    {
      v10 = llvm::detail::IEEEFloat::shiftSignificandRight(this, v6 - v5);
      llvm::detail::IEEEFloat::addSignificand(this, a2);
      return v10;
    }

    llvm::detail::IEEEFloat::IEEEFloat(&v19, a2);
    v8 = llvm::detail::IEEEFloat::shiftSignificandRight(&v19, v5 - v6);
    llvm::detail::IEEEFloat::addSignificand(this, &v19);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v19, a2);
    if (v5 == v6)
    {
      v9 = 0;
    }

    else if (v7 < 1)
    {
      v9 = llvm::detail::IEEEFloat::shiftSignificandRight(this, ~v7);
      v12 = *(v19 + 2);
      v13 = (v12 + 64) >> 6;
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      if ((v12 - 64) >= 0xFFFFFF80)
      {
        v15 = &v20;
      }

      else
      {
        v15 = v20;
      }

      llvm::APInt::tcShiftLeft(v15, v14, 1u);
      --v21;
    }

    else
    {
      v9 = llvm::detail::IEEEFloat::shiftSignificandRight(&v19, v7 - 1);
      llvm::detail::IEEEFloat::shiftSignificandLeft(this, 1u);
    }

    v16 = llvm::detail::IEEEFloat::compareAbsoluteValue(this, &v19);
    v17 = v9 != 0;
    if (v16)
    {
      llvm::detail::IEEEFloat::subtractSignificand(this, &v19, v17);
    }

    else
    {
      llvm::detail::IEEEFloat::subtractSignificand(&v19, this, v17);
      llvm::detail::IEEEFloat::copySignificand(this, &v19);
      *(this + 20) ^= 8u;
    }

    if (v9 == 3)
    {
      v18 = 1;
    }

    else
    {
      v18 = v9;
    }

    if (v9 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = v18;
    }
  }

  if ((*(v19 + 2) - 64) <= 0xFFFFFF7F)
  {
    if (v20)
    {
      MEMORY[0x25F891010](v20, 0x1000C8000313F17);
    }
  }

  return v8;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  llvm::detail::IEEEFloat::IEEEFloat(&v6, *this);
  v4 = llvm::detail::IEEEFloat::multiplySignificand(this, a2, &v6, (*(*this + 24) & 1) == 0);
  if ((*(v6 + 8) - 64) <= 0xFFFFFF7F && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  return v4;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v3 = (this + 8);
  v4 = *(*this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v5 = a2 + 8;
  }

  else
  {
    v5 = *(a2 + 1);
  }

  v6 = v4 + 64;
  v7 = (v4 + 64) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v6 >= 0xC0)
  {
    operator new[]();
  }

  v9 = 0;
  v10 = &v51[v8];
  do
  {
    v51[v9] = v3[v9];
    *(v10 + v9 * 8) = *&v5[v9 * 8];
    v3[v9++] = 0;
  }

  while (v8 != v9);
  v11 = *(this + 4) - *(a2 + 4);
  *(this + 4) = v11;
  v12 = *(*this + 8);
  v13 = 64 - (v8 << 6);
  v14 = 16 * v8 - 8;
  v15 = v14;
  v16 = v8;
  while (1)
  {
    v17 = *(v51 + v15);
    if (v17)
    {
      break;
    }

    v13 += 64;
    v15 -= 8;
    if (!--v16)
    {
      v18 = 0;
      goto LABEL_18;
    }
  }

  v18 = (__clz(v17) - v13) ^ 0xFFFFFFC0;
LABEL_18:
  v19 = v18 + v12;
  if (v18 + v12)
  {
    v11 += v19;
    *(this + 4) = v11;
    llvm::APInt::tcShiftLeft(v10, v8, v19);
  }

  v20 = 64 - (v8 << 6);
  v21 = v8 - 1;
  while (1)
  {
    v22 = v51[v21];
    if (v22)
    {
      break;
    }

    v20 += 64;
    if (--v21 == -1)
    {
      v23 = 0;
      goto LABEL_25;
    }
  }

  v23 = (__clz(v22) - v20) ^ 0xFFFFFFC0;
LABEL_25:
  v24 = v23 + v12;
  if (v23 + v12)
  {
    v11 -= v24;
    *(this + 4) = v11;
    llvm::APInt::tcShiftLeft(v51, v8, v24);
  }

  v25 = v8;
  v26 = v8;
  v27 = 16 * v8 - 8;
  while (v26 * 8)
  {
    v28 = v51[v26 - 1];
    v29 = *(v51 + v27);
    v27 -= 8;
    --v26;
    if (v28 != v29)
    {
      if (v28 <= v29)
      {
        *(this + 4) = v11 - 1;
        llvm::APInt::tcShiftLeft(v51, v8, 1u);
      }

      break;
    }
  }

  if (!v12)
  {
    goto LABEL_50;
  }

  do
  {
    v30 = v8;
    v31 = 16 * v8 - 8;
    while (v30 * 8)
    {
      v32 = v51[v30 - 1];
      v33 = *(v51 + v31);
      v31 -= 8;
      --v30;
      if (v32 != v33)
      {
        if (v32 <= v33)
        {
          --v12;
          goto LABEL_47;
        }

        break;
      }
    }

    v34 = 0;
    v35 = v51;
    v36 = v8;
    do
    {
      v37 = v35[v8];
      v38 = *v35 - v37;
      v39 = *v35 < v37;
      v40 = *v35 + ~v37;
      v41 = v40 >= *v35;
      v42 = !v34;
      if (v34)
      {
        v43 = v40;
      }

      else
      {
        v43 = v38;
      }

      *v35++ = v43;
      if (v42)
      {
        v34 = v39;
      }

      else
      {
        v34 = v41;
      }

      --v36;
    }

    while (v36);
    --v12;
    v3[v12 >> 6] |= 1 << v12;
LABEL_47:
    llvm::APInt::tcShiftLeft(v51, v8, 1u);
  }

  while (v12);
  do
  {
LABEL_50:
    if (!(v25 * 8))
    {
      v46 = 2;
      goto LABEL_61;
    }

    v44 = v51[v25 - 1];
    v45 = *(v51 + v14);
    v14 -= 8;
    --v25;
  }

  while (v44 == v45);
  if (v44 <= v45)
  {
    v47 = v51[0];
    if (v51[0])
    {
      v46 = 1;
    }

    else
    {
      while (v8 - 1 != v47)
      {
        if (v51[++v47])
        {
          goto LABEL_60;
        }
      }

      v47 = v8;
LABEL_60:
      v46 = v47 < v8;
    }
  }

  else
  {
    v46 = 3;
  }

LABEL_61:
  v49 = *MEMORY[0x277D85DE8];
  return v46;
}

void llvm::detail::IEEEFloat::shiftSignificandLeft(llvm::detail::IEEEFloat *this, unsigned int a2)
{
  v5 = *this;
  v4 = (this + 8);
  v6 = *(v5 + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  v7 = (v6 + 64) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  llvm::APInt::tcShiftLeft(v4, v8, a2);
  *(this + 4) -= a2;
}

uint64_t llvm::detail::IEEEFloat::compareAbsoluteValue(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 4) - *(a2 + 4);
  if (v2)
  {
    if (v2 < 1)
    {
      return v2 >= 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v4 = *this;
    v3 = (this + 8);
    v5 = *(v4 + 8);
    if ((v5 - 64) <= 0xFFFFFF7F)
    {
      v3 = *v3;
    }

    v6 = *(*a2 + 8) - 64;
    v9 = *(a2 + 1);
    v7 = a2 + 8;
    v8 = v9;
    if (v6 >= 0xFFFFFF80)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    v11 = (v5 + 64) >> 6;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v10 - 8;
    for (i = 8 * v12; ; i -= 8)
    {
      v15 = i;
      if (!i)
      {
        break;
      }

      v16 = v3[i / 8 - 1];
      v17 = *&v13[i];
      if (v16 != v17)
      {
        if (v16 > v17)
        {
          return 2;
        }

        return v15 == 0;
      }
    }

    return v15 == 0;
  }
}

uint64_t llvm::detail::IEEEFloat::handleOverflow(llvm::detail::IEEEFloat *this, int a2)
{
  v3 = *this;
  v4 = *(*this + 16);
  if (v4 == 2)
  {
    goto LABEL_2;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if ((*(this + 20) & 8) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (a2 == 4)
    {
      goto LABEL_22;
    }
  }

  else if (a2 == 1 || a2 == 2 && (*(this + 20) & 8) == 0)
  {
LABEL_22:
    v12 = *(this + 20);
    if (v4 == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(this, 0, (v12 >> 3) & 1, 0);
    }

    else
    {
      *(this + 20) = v12 & 0xF8;
    }

    return 20;
  }

LABEL_2:
  *(this + 20) = *(this + 20) & 0xF8 | 2;
  *(this + 4) = *v3;
  v5 = v3[2];
  v6 = (this + 8);
  v7 = (this + 8);
  if (v5 - 64 <= 0xFFFFFF7F)
  {
    v7 = *v6;
  }

  v8 = (v5 + 64) >> 6;
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  llvm::detail::tcSetLeastSignificantBits(v7, v9, v5);
  v10 = *this;
  if (*(*this + 16) == 1 && *(v10 + 20) == 1)
  {
    if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    *v6 = (*v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  return 16;
}

void llvm::detail::tcSetLeastSignificantBits(llvm::detail *this, unint64_t *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a3 - 65;
  if (a3 < 0x41)
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  memset(this, 255, 8 * (v6 >> 6) + 8);
  v7 = (v6 >> 6) + 1;
  v8 = v3 - (v6 & 0xFFFFFFC0);
  LOBYTE(v3) = v8 - 64;
  if (v8 != 64)
  {
LABEL_5:
    *(this + v7++) = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  }

LABEL_6:
  if (v7 < v4)
  {

    bzero(this + 8 * v7, 8 * (~v7 + v4) + 8);
  }
}

BOOL llvm::detail::IEEEFloat::roundAwayFromZero(uint64_t *a1, int a2, int a3, unsigned int a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0;
    }

    if (a3 == 3)
    {
      return 1;
    }

    if (a3 != 2 || (*(a1 + 20) & 7) == 3)
    {
      return 0;
    }

    v7 = *a1;
    v6 = a1 + 1;
    if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    return (v6[a4 >> 6] >> a4) & 1;
  }

  else if (a2 == 2)
  {
    return (*(a1 + 20) & 8) == 0;
  }

  else
  {
    if (a2 == 3)
    {
      return (*(a1 + 20) >> 3) & 1;
    }

    return (a3 & 0xFFFFFFFE) == 2;
  }
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  result = 0;
  v7 = *(this + 20);
  v8 = *(a2 + 20);
  v9 = 4 * (v7 & 7) + (v8 & 7);
  if (v9 > 7)
  {
    if (v9 > 11)
    {
      if (v9 > 13)
      {
        if (v9 != 14)
        {
          return result;
        }

        llvm::detail::IEEEFloat::assign(this, a2);
        result = 0;
        if (a3 != (*(a2 + 20) & 8) >> 3)
        {
          v14 = 8;
        }

        else
        {
          v14 = 0;
        }

        v13 = v14 | *(this + 20) & 0xF7;
        goto LABEL_31;
      }

      if (v9 != 12)
      {
LABEL_10:
        llvm::detail::IEEEFloat::assign(this, a2);
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 > 9)
      {
        if (v9 == 10)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      if (v9 != 8)
      {
        goto LABEL_10;
      }
    }

    result = 0;
    *(this + 20) = v7 & 0xF8;
    if (a3 != (*(a2 + 20) & 8) >> 3)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v7 & 0xF0;
LABEL_31:
    *(this + 20) = v13;
    return result;
  }

  if (v9 <= 3)
  {
    if ((v9 - 2) < 2)
    {
      return result;
    }

    if (!v9)
    {
      if (((((v8 ^ v7) & 8) == 0) ^ a3))
      {
        return 0;
      }

      llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
      return 1;
    }

    goto LABEL_10;
  }

LABEL_11:
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v10 = *(*this + 8);
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  result = 1;
  v11[(v10 - 2) >> 6] |= 1 << (v10 - 2);
  return result;
}

BOOL llvm::detail::IEEEFloat::isSignaling(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 7) != 1 || (*(*this + 16) - 1) < 2)
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return ((v3[(v2 - 2) >> 6] >> (v2 - 2)) & 1) == 0;
}

BOOL llvm::detail::IEEEFloat::multiplySpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = *(this + 20);
  v5 = *(a2 + 20);
  v6 = 4 * (v4 & 7) + (v5 & 7);
  if (v6 <= 7)
  {
    if (v6 <= 2)
    {
      if (v6)
      {
        v7 = v6 == 1;
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    if ((v6 - 4) < 4)
    {
      goto LABEL_19;
    }

LABEL_17:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v6 <= 11)
  {
    if (v6 <= 9)
    {
      if (v6 == 8)
      {
LABEL_12:
        result = 0;
        v9 = v4 & 0xF8;
LABEL_26:
        *(this + 20) = v9;
        return result;
      }

      goto LABEL_18;
    }

    if (v6 == 10)
    {
      return 0;
    }

LABEL_25:
    result = 0;
    v9 = v4 & 0xF8 | 3;
    goto LABEL_26;
  }

  if ((v6 - 14) < 2)
  {
    goto LABEL_25;
  }

  if (v6 == 12)
  {
    goto LABEL_17;
  }

LABEL_18:
  llvm::detail::IEEEFloat::assign(this, a2);
  v4 = *(this + 20) & 0xF7;
  *(this + 20) = v4;
  v5 = *(a2 + 20);
LABEL_19:
  *(this + 20) = v5 & 8 ^ v4;
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v10 = *(*this + 8);
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  result = 1;
  v11[(v10 - 2) >> 6] |= 1 << (v10 - 2);
  return result;
}

uint64_t llvm::detail::IEEEFloat::divideSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  result = 0;
  v5 = *(this + 20);
  v6 = *(a2 + 20);
  v7 = 4 * (v5 & 7) + (v6 & 7);
  if (v7 > 7)
  {
    if (v7 > 11)
    {
      if (v7 > 13)
      {
        if (v7 == 14)
        {
          return result;
        }

        goto LABEL_23;
      }

      if (v7 == 12)
      {
        return result;
      }
    }

    else
    {
      if (v7 > 9)
      {
        if (v7 != 10)
        {
          if (*(*this + 16) == 1)
          {
            llvm::detail::IEEEFloat::makeNaN(this, 0, (v5 >> 3) & 1, 0);
          }

          else
          {
            *(this + 20) = v5 & 0xF8;
          }

          return 2;
        }

        return result;
      }

      if (v7 == 8)
      {
        result = 0;
        *(this + 20) = v5 & 0xF8 | 3;
        return result;
      }
    }

    goto LABEL_12;
  }

  if (v7 <= 3)
  {
    if ((v7 - 2) < 2)
    {
      return result;
    }

    if (!v7)
    {
LABEL_23:
      llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
      return 1;
    }

LABEL_12:
    llvm::detail::IEEEFloat::assign(this, a2);
    LOBYTE(v5) = *(this + 20) & 0xF7;
    *(this + 20) = v5;
    v6 = *(a2 + 20);
  }

  *(this + 20) = v6 & 8 ^ v5;
  if (!llvm::detail::IEEEFloat::isSignaling(this))
  {
    return llvm::detail::IEEEFloat::isSignaling(a2);
  }

  if (*(*this + 16) == 1)
  {
    return 1;
  }

  v8 = *(*this + 8);
  v9 = (this + 8);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v9;
  }

  result = 1;
  v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  return result;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtract(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3, int a4)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, a4);
  if (result == 2)
  {
    v9 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, a4);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v9);
  }

  v10 = *(a1 + 20);
  if ((v10 & 7) == 3)
  {
    v11 = *(a2 + 20);
    if ((v11 & 7) != 3 || a4 != ((v11 ^ v10) & 8) >> 3)
    {
      v10 = v10 & 0xF3 | (8 * (a3 == 3));
      *(a1 + 20) = v10;
    }

    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v10 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::multiplySpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::divideSignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::mod(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = 4 * (*(this + 20) & 7) + (*(a2 + 20) & 7);
  if (v4 > 7)
  {
    isSignaling = 0;
    v7 = 1 << v4;
    if ((v7 & 0x5500) != 0)
    {
      goto LABEL_19;
    }

    if ((v7 & 0x2200) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
LABEL_14:
    isSignaling = 1;
    goto LABEL_19;
  }

  if (v4 > 3)
  {
    goto LABEL_12;
  }

  if ((v4 - 2) < 2 || v4 == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  llvm::detail::IEEEFloat::assign(this, a2);
LABEL_12:
  if (llvm::detail::IEEEFloat::isSignaling(this))
  {
    if (*(*this + 16) == 1)
    {
      goto LABEL_14;
    }

    v8 = *(*this + 8);
    v9 = (this + 8);
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    isSignaling = 1;
    v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  }

  else
  {
    isSignaling = llvm::detail::IEEEFloat::isSignaling(a2);
  }

LABEL_19:
  v10 = *(this + 20);
  v11 = (v10 & 6) == 0 || (v10 & 7) == 3;
  if (v11 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
  {
    v12 = *(this + 20);
  }

  else
  {
    v12 = *(this + 20);
    if (llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2))
    {
      do
      {
        v16 = llvm::detail::ilogb(this, v15);
        v18 = v16 - llvm::detail::ilogb(a2, v17);
        llvm::detail::IEEEFloat::IEEEFloat(&v25, a2);
        llvm::detail::scalbn(&v27, &v25, v18);
        if ((*(v25 + 8) - 64) <= 0xFFFFFF7F && v26)
        {
          MEMORY[0x25F891010](v26, 0x1000C8000313F17);
        }

        v19 = v29;
        if ((v29 & 7) == 1 || !llvm::detail::IEEEFloat::compareAbsoluteValue(this, &v27))
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v21, a2);
          llvm::detail::scalbn(&v23, &v21, v18 - 1);
          llvm::detail::IEEEFloat::operator=(&v27, &v23);
          if ((*(v23 + 8) - 64) <= 0xFFFFFF7F && v24)
          {
            MEMORY[0x25F891010](v24, 0x1000C8000313F17);
          }

          if ((*(v21 + 8) - 64) <= 0xFFFFFF7F && v22)
          {
            MEMORY[0x25F891010](v22, 0x1000C8000313F17);
          }

          v19 = v29;
        }

        v29 = v19 & 0xF7 | *(this + 20) & 8;
        isSignaling = llvm::detail::IEEEFloat::addOrSubtract(this, &v27, 1, 1);
        v20 = (*(*this + 24) & 1) != 0 || (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3 || *(this + 4) != *(*this + 4) || llvm::detail::IEEEFloat::significandMSB(this);
        if ((*(v27 + 8) - 64) <= 0xFFFFFF7F && v28)
        {
          MEMORY[0x25F891010](v28, 0x1000C8000313F17);
        }

        v12 = *(this + 20);
      }

      while (v20 && (*(this + 20) & 6) != 0 && (v12 & 7) != 3 && (*(a2 + 20) & 6) != 0 && (*(a2 + 20) & 7) != 3 && llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2));
    }
  }

  if ((v12 & 7) == 3)
  {
    v13 = v12 & 0xF3 | v10 & 8;
    *(this + 20) = v13;
    if (*(*this + 20) == 2)
    {
      v13 = v12 & 0xF3;
    }

    *(this + 20) = v13;
  }

  return isSignaling;
}

uint64_t llvm::detail::ilogb(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20) & 7;
  if ((*(this + 20) & 7) == 0)
  {
    return 0x7FFFFFFFLL;
  }

  if (v2 == 1)
  {
    return 0x80000000;
  }

  if (v2 == 3)
  {
    return 2147483649;
  }

  if (!llvm::detail::IEEEFloat::isDenormal(this))
  {
    return *(this + 4);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v7, this);
  v5 = *(*this + 8) - 1;
  v9 += v5;
  llvm::detail::IEEEFloat::normalize(&v7, 1, 0);
  v3 = (v9 - v5);
  if ((*(v7 + 8) - 64) <= 0xFFFFFF7F && v8)
  {
    MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  return v3;
}

uint64_t llvm::detail::scalbn(void *a1, uint64_t *a2, int a3)
{
  v5 = **a2 + *(*a2 + 8) + ~*(*a2 + 4);
  v6 = -2 - v5;
  if (v5 + 1 < a3)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = a3;
  }

  if (v6 > a3)
  {
    v7 = v6;
  }

  *(a2 + 4) += v7;
  llvm::detail::IEEEFloat::normalize(a2, 1, 0);
  if ((*(a2 + 20) & 7) == 1 && *(*a2 + 16) != 1)
  {
    v8 = *(*a2 + 8);
    v9 = a2 + 1;
    if ((v8 - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    v9[(v8 - 2) >> 6] |= 1 << (v8 - 2);
  }

  *a1 = &llvm::semBogus;

  return llvm::detail::IEEEFloat::operator=(a1, a2);
}

llvm::APInt **llvm::APInt::operator<<=(llvm::APInt **this, unsigned int a2)
{
  v3 = *(this + 2);
  if (v3 > 0x40)
  {
    llvm::APInt::tcShiftLeft(*this, ((v3 + 63) >> 6), a2);
    llvm::APInt::clearUnusedBits(this);
    return this;
  }

  else
  {
    if (v3 == a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = (*this << a2);
    }

    *this = v4;

    return llvm::APInt::clearUnusedBits(this);
  }
}

uint64_t llvm::detail::IEEEFloat::convertFromAPInt(llvm::APInt *this, uint64_t a2, int a3, int a4)
{
  v16 = *(a2 + 8);
  v6 = v16;
  if (v16 > 0x40)
  {
    operator new[]();
  }

  v7 = *a2;
  v15 = *a2;
  v8 = *(this + 20);
  *(this + 20) = v8 & 0xF7;
  if (a3 && ((v15 >> (v6 - 1)) & 1) != 0)
  {
    *(this + 20) = v8 | 8;
    v14 = v6;
    v13 = v7;
    llvm::APInt::flipAllBits(&v13);
    llvm::APInt::operator++(&v13);
    v9 = v14;
    v14 = 0;
    v15 = v13;
    v16 = v9;
    v7 = v13;
  }

  else
  {
    v9 = v6;
  }

  if (v9 >= 0x41)
  {
    v10 = v7;
  }

  else
  {
    v10 = &v15;
  }

  v11 = llvm::detail::IEEEFloat::convertFromUnsignedParts(this, v10, ((v6 + 63) >> 6), a4);
  if (v9 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  return v11;
}

uint64_t llvm::detail::IEEEFloat::convertToSignExtendedInteger(uint64_t a1, llvm::APInt *this, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  *a7 = 0;
  v7 = *(a1 + 20) & 7;
  if (v7 < 2)
  {
    return 1;
  }

  v13 = a4 + 63;
  v14 = (a4 + 63) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v7 == 3)
  {
    *this = 0;
    if (v13 >= 0x80)
    {
      bzero(this + 8, 8 * (v15 - 1));
    }

    LOBYTE(v16) = ((*(a1 + 20) >> 3) & 1) == 0;
    goto LABEL_10;
  }

  v18 = (a1 + 8);
  v19 = *(*a1 + 8);
  if ((v19 - 64) <= 0xFFFFFF7F)
  {
    v18 = *v18;
  }

  v20 = *(a1 + 16);
  if ((v20 & 0x80000000) != 0)
  {
    *this = 0;
    if (v13 >= 0x80)
    {
      v47 = a5;
      bzero(this + 8, 8 * (v15 - 1));
      a5 = v47;
    }

    v48 = v15;
    v22 = v19 + ~v20;
    if (!v22)
    {
      goto LABEL_17;
    }

LABEL_21:
    v25 = a5;
    v26 = (*(*a1 + 8) + 64) >> 6;
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    v28 = llvm::lostFractionThroughTruncation(v18, v27, v22);
    if (v28)
    {
      if (llvm::detail::IEEEFloat::roundAwayFromZero(a1, a6, v28, v22))
      {
        v39 = __CFADD__((*this)++, 1);
        v24 = v48;
        if (v39)
        {
          v29 = 0;
          v30 = this + 8;
          while ((v48 - 1) != v29)
          {
            v31 = *&v30[8 * v29];
            *&v30[8 * v29] = v31 + 1;
            v29 = (v29 + 1);
            if (v31 != -1)
            {
              if (v29 >= v48)
              {
                return 1;
              }

              goto LABEL_32;
            }
          }

          return 1;
        }

LABEL_32:
        v23 = 0;
        goto LABEL_37;
      }

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = v48;
LABEL_37:
    a5 = v25;
    goto LABEL_38;
  }

  if (v20 >= a4)
  {
    return 1;
  }

  v46 = a5;
  v48 = v15;
  v21 = (v20 + 1);
  v22 = v19 - v21;
  if (v19 <= v21)
  {
    v24 = v48;
    llvm::APInt::tcExtract(this, v48, v18, v19, 0);
    llvm::APInt::tcShiftLeft(this, v48, v21 - *(*a1 + 8));
    v23 = 1;
    a5 = v46;
    goto LABEL_38;
  }

  llvm::APInt::tcExtract(this, v48, v18, v21, v19 - v21);
  a5 = v46;
  if (v22)
  {
    goto LABEL_21;
  }

LABEL_17:
  v23 = 1;
  v24 = v48;
LABEL_38:
  if (v14 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v14;
  }

  v33 = 64 - (v32 << 6);
  v34 = v32 - 1;
  while (1)
  {
    v35 = *(this + v34);
    if (v35)
    {
      break;
    }

    v33 += 64;
    if (--v34 == -1)
    {
      v36 = -1;
      goto LABEL_46;
    }
  }

  v36 = (__clz(v35) - v33) ^ 0x3F;
LABEL_46:
  v37 = v36 + 1;
  if ((*(a1 + 20) & 8) == 0)
  {
    v38 = (a5 ^ 1) + a4;
    v39 = v37 >= v38;
    if (v37 < v38)
    {
      v16 = v23;
    }

    else
    {
      v16 = 0;
    }

    if (v39)
    {
      result = 1;
    }

    else
    {
      result = 16;
    }

    if (v16 == 1)
    {
      goto LABEL_10;
    }

    return result;
  }

  if (a5)
  {
    if (v37 == a4)
    {
      v40 = 0;
      v41 = this;
      v42 = v24;
      while (1)
      {
        v44 = *v41;
        v41 = (v41 + 8);
        v43 = v44;
        if (v44)
        {
          break;
        }

        v40 -= 64;
        v42 = (v42 - 1);
        if (!v42)
        {
          v45 = -1;
          goto LABEL_69;
        }
      }

      v45 = __clz(__rbit64(v43)) - v40;
LABEL_69:
      if (v45 == v36)
      {
        goto LABEL_65;
      }

      return 1;
    }

    if (v37 > a4)
    {
      return 1;
    }
  }

  else if (v36 != -1)
  {
    return 1;
  }

LABEL_65:
  llvm::APInt::tcNegate(this, v24);
  if (v23)
  {
    LOBYTE(v16) = 1;
LABEL_10:
    result = 0;
    *a7 = v16;
    return result;
  }

  return 16;
}

uint64_t llvm::lostFractionThroughTruncation(llvm *this, const unint64_t *a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  v5 = this;
  while (1)
  {
    v7 = *v5;
    v5 = (v5 + 8);
    v6 = v7;
    if (v7)
    {
      break;
    }

    v3 -= 64;
    if (!--v4)
    {
      return 0;
    }
  }

  v8 = __clz(__rbit64(v6));
  if (v8 - v3 >= a3)
  {
    return 0;
  }

  if (v8 - a3 + 1 == v3)
  {
    return 2;
  }

  if (a3 <= a2 << 6 && ((*(this + ((a3 - 1) >> 6)) >> (a3 - 1)) & 1) != 0)
  {
    return 3;
  }

  return 1;
}

uint64_t llvm::detail::IEEEFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  v11 = llvm::detail::IEEEFloat::convertToSignExtendedInteger(a1, a2, a3, a4, a5, a6, a7);
  if (v11 == 1)
  {
    v12 = (a4 + 63) >> 6;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if ((*(a1 + 20) & 8) != 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = a4 - a5;
    }

    if ((*(a1 + 20) & 7) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    llvm::detail::tcSetLeastSignificantBits(a2, v13, v15);
    if ((*(a1 + 20) & 8) != 0 && a5)
    {
      llvm::APInt::tcShiftLeft(a2, v13, a4 - 1);
    }
  }

  return v11;
}

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(llvm::APInt *this, llvm *a2, unint64_t *a3, int a4)
{
  *(this + 20) = *(this + 20) & 0xF8 | 2;
  v7 = 64 - (a3 << 6);
  v8 = a3 - 1;
  while (1)
  {
    v9 = *(a2 + v8);
    if (v9)
    {
      break;
    }

    v7 += 64;
    if (--v8 == -1)
    {
      v10 = -1;
      goto LABEL_6;
    }
  }

  v10 = (__clz(v9) - v7) ^ 0x3F;
LABEL_6:
  v11 = (v10 + 1);
  v12 = (this + 8);
  v13 = *(*this + 8);
  if ((v13 - 64) <= 0xFFFFFF7F)
  {
    v12 = *v12;
  }

  v14 = (v13 + 64) >> 6;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11 - v13;
  if (v11 >= v13)
  {
    *(this + 4) = v10;
    v17 = llvm::lostFractionThroughTruncation(a2, a3, v11 - v13);
    llvm::APInt::tcExtract(v12, v15, a2, v13, v16);
  }

  else
  {
    *(this + 4) = v13 - 1;
    llvm::APInt::tcExtract(v12, v15, a2, v11, 0);
    v17 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(this, a4, v17);
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString(uint64_t a1, uint64_t *a2, const char *a3, uint64_t a4, int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  *(a2 + 20) = *(a2 + 20) & 0xF8 | 2;
  v10 = *(*a2 + 8);
  if ((v10 - 64) >= 0xFFFFFF80)
  {
    v14 = a2 + 1;
    *(a2 + 4) = 0;
    v13 = (a2 + 2);
    a2[1] = 0;
    v12 = (v10 + 64) >> 6;
  }

  else
  {
    v11 = a2[1];
    *v11 = 0;
    v12 = (v10 + 64) >> 6;
    bzero(v11 + 1, 8 * (v12 - 1));
    *(a2 + 4) = 0;
    v13 = (a2 + 2);
    v14 = a2[1];
  }

  if (v12 <= 1)
  {
    v12 = 1;
  }

  v15 = &a3[a4];
  v42 = 0;
  result = llvm::skipLeadingZeroesAndAnyDot(&v45, a3, v15, &v42);
  v17 = v45;
  if ((v46 & 1) == 0)
  {
    v18 = v12 << 6;
    if (v45 != v15)
    {
      v19 = 0;
      v20 = 0;
      v21 = v42;
      v22 = *(a1 + 8);
      v23 = v45;
      v24 = v18;
      while (1)
      {
        v25 = *v23;
        if (v25 == 46)
        {
          if (v21 != v15)
          {
            v33 = "String contains multiple dots";
            goto LABEL_60;
          }

          v42 = v23;
          v21 = v23++;
        }

        else
        {
          v26 = llvm::hexDigitValue(char)::LUT[v25];
          if (v26 == -1)
          {
            goto LABEL_36;
          }

          ++v23;
          if (v24)
          {
            v24 -= 4;
            v14[v24 >> 6] |= v26 << v24;
          }

          else
          {
            if ((v20 & 1) == 0)
            {
              if ((v25 - 57) > 0xFFFFFFFFFFFFFFF6)
              {
                if ((llvm::hexDigitValue(char)::LUT[v25] & 7) != 0)
                {
                  v19 = v19 & 0xFFFFFFFF00000000 | 1;
                }

                else
                {
                  v27 = v23;
                  if (v23 == v15)
                  {
LABEL_59:
                    v33 = "Invalid trailing hexadecimal fraction!";
LABEL_60:
                    v43 = v33;
                    v44 = 259;
                    getErrorErrorCat();
                    operator new();
                  }

                  while (1)
                  {
                    v28 = *v27;
                    if (v28 != 48 && v28 != 46)
                    {
                      break;
                    }

                    if (++v27 == v15)
                    {
                      goto LABEL_59;
                    }
                  }

                  v29 = v19 & 0xFFFFFFFF00000000;
                  if (llvm::hexDigitValue(char)::LUT[v28] == -1)
                  {
                    v19 = v29 | (2 * (v25 != 48));
                  }

                  else
                  {
                    if (v25 == 48)
                    {
                      v30 = 1;
                    }

                    else
                    {
                      v30 = 3;
                    }

                    v19 = v30 | v29;
                  }
                }
              }

              else
              {
                v19 = v19 & 0xFFFFFFFF00000000 | 3;
              }
            }

            v24 = 0;
            v20 = 1;
          }
        }

        if (v23 == v15)
        {
          goto LABEL_36;
        }
      }
    }

    LODWORD(v19) = 0;
    v23 = v45;
LABEL_36:
    if (v23 == v15)
    {
      v32 = "Hex strings require an exponent";
      goto LABEL_44;
    }

    if ((*v23 | 0x20) != 0x70)
    {
      v32 = "Invalid character in significand";
      goto LABEL_44;
    }

    if (v23 == a3 || (v31 = v42, v42 != v15) && v23 - a3 == 1)
    {
      v32 = "Significand has no digits";
      goto LABEL_44;
    }

    if (v23 != v17)
    {
      if (v42 == v15)
      {
        v42 = v23;
        v31 = v23;
      }

      v34 = v23 + 1;
      if (v23 + 1 == v15 || ((v35 = *v34, v35 == 45) || v35 == 43) && (v34 = v23 + 2, v23 + 2 == v15))
      {
        v32 = "Exponent has no digits";
        goto LABEL_44;
      }

      if (v34 != v15)
      {
        v36 = 0;
        while (1)
        {
          v37 = *v34 - 48;
          if (v37 >= 0xA)
          {
            break;
          }

          v36 = v37 + 10 * v36;
          if (v36 >= 0x8000)
          {
            goto LABEL_69;
          }

          if (++v34 == v15)
          {
            goto LABEL_64;
          }
        }

        v32 = "Invalid character in exponent";
LABEL_44:
        v43 = v32;
        v44 = 259;
        getErrorErrorCat();
        operator new();
      }

      v36 = 0;
LABEL_64:
      v39 = *(*a2 + 8) + ~v18 + 4 * (v31 - v17 + ((v31 - v17) >> 31));
      if (v39 != v39 || (v35 != 45 ? (v40 = v36) : (v40 = -v36), v41 = v40 + v39, v41 != v41))
      {
LABEL_69:
        if (v35 == 45)
        {
          v41 = -32768;
        }

        else
        {
          v41 = 0x7FFF;
        }
      }

      *v13 = v41;
    }

    result = llvm::detail::IEEEFloat::normalize(a2, a5, v19);
    *(a1 + 8) &= ~1u;
    *a1 = result;
    goto LABEL_61;
  }

  *(a1 + 8) |= 1u;
  *a1 = v17;
LABEL_61:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::skipLeadingZeroesAndAnyDot(uint64_t this, const char *a2, const char *a3, const char **a4)
{
  *a4 = a3;
  if (a2 != a3)
  {
    v4 = a3 - a2;
    while (1)
    {
      v5 = *a2;
      if (v5 != 48)
      {
        break;
      }

      if (++a2 == a3)
      {
        goto LABEL_5;
      }
    }

    if (v5 == 46)
    {
      *a4 = a2;
      if (v4 == 1)
      {
        v8 = "Significand has no digits";
        v9 = 259;
        getErrorErrorCat();
        operator new();
      }

      v6 = a2 + 1;
      while (v6 != a3)
      {
        v7 = *v6++;
        if (v7 != 48)
        {
          a2 = v6 - 1;
          goto LABEL_13;
        }
      }

LABEL_5:
      a2 = a3;
    }
  }

LABEL_13:
  *(this + 8) &= ~1u;
  *this = a2;
  return this;
}

uint64_t llvm::detail::IEEEFloat::roundSignificandWithExponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  off_286E74108(a1, a2, a3, a4, a5, a6, a7, a8, v81);
  v11 = v9;
  v70[0] = v12;
  v69 = v13;
  v14 = v8;
  v80 = *MEMORY[0x277D85DE8];
  *&v70[1] = 0xFFFF800100007FFFLL;
  v71 = 0;
  v72 = 0;
  v73 = 257;
  v16 = v10 == 1 || v10 == 4;
  v67 = v10;
  v68 = v16;
  if ((*(*v8 + 8) + 74) >> 6 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = (*(*v8 + 8) + 74) >> 6;
  }

  if (v9 >= 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = -v9;
  }

  v77 = 390625;
  v74[0] = llvm::powerOf5(unsigned long long *,unsigned int)::firstEightPowers[v18 & 7];
  if (v18 >= 8)
  {
    v20 = 0;
    v21 = v18 >> 3;
    v22 = v74;
    v23 = &v75;
    v24 = &v77;
    v19 = 1;
    v25 = 1;
    do
    {
      if (v20)
      {
        llvm::APInt::tcFullMultiply(v24, v24 - v25, v24 - v25, v25, v25);
        v26 = 2 * v25 - 1;
        if (*(v24 + v26))
        {
          v25 = (2 * v25);
        }

        else
        {
          v25 = v26;
        }
      }

      if (v21)
      {
        llvm::APInt::tcFullMultiply(v23, v22, v24, v19, v25);
        v28 = v25 + v19 - 1;
        if (*(v23 + v28))
        {
          v19 = (v25 + v19);
        }

        else
        {
          v19 = v28;
        }

        v27 = v23;
        v23 = v22;
        v22 = v27;
      }

      else
      {
        v27 = v22;
      }

      v24 = (v24 + 8 * v25);
      --v20;
      v29 = v21 >= 2;
      v21 >>= 1;
    }

    while (v29);
    if (v27 != v74 && v19)
    {
      v30 = v19;
      v31 = v74;
      do
      {
        v32 = *v27++;
        *v31++ = v32;
        --v30;
      }

      while (v30);
    }
  }

  else
  {
    v19 = 1;
  }

  do
  {
    LODWORD(v71) = (v17 << 6) - 1;
    v33 = v71 - *(*v14 + 8);
    llvm::detail::IEEEFloat::IEEEFloat(&v77, &v70[1]);
    llvm::detail::IEEEFloat::makeZero(&v77, (v14[20] >> 3) & 1);
    llvm::detail::IEEEFloat::IEEEFloat(&v75, &v70[1]);
    v34 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v77, v69, v70[0], 1);
    v35 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v75, v74, v19, 1);
    v79 += v11;
    if (v11 < 0)
    {
      v36 = llvm::detail::IEEEFloat::divideSignificand(&v77, &v75);
      v39 = *(*v14 + 4);
      v38 = v33;
      v40 = v39 - v79;
      if (v39 > v79)
      {
        v38 = v40 + v33;
        if (v40 + v33 >= v71)
        {
          v33 = v71;
        }

        else
        {
          v33 += v40;
        }
      }

      v37 = 2 * ((v35 | v36) != 0);
    }

    else
    {
      v36 = llvm::detail::IEEEFloat::multiplySignificand(&v77, &v75);
      v37 = v35 != 0;
      v38 = v33;
    }

    v41 = v36 != 0;
    if (v34)
    {
      ++v37;
    }

    v42 = 2 * v41;
    v43 = v41 | (2 * v37);
    if (v37)
    {
      v44 = v43;
    }

    else
    {
      v44 = v42;
    }

    if ((*(v77 + 8) - 64) >= 0xFFFFFF80)
    {
      v45 = &v78;
    }

    else
    {
      v45 = v78;
    }

    v46 = (v33 - 1) >> 6;
    v47 = v45[v46] & (0xFFFFFFFFFFFFFFFFLL >> ((v33 - 1) & 0x3F ^ 0x3F));
    v48 = 1 << (v33 - 1);
    if (!v68)
    {
      v48 = 0;
    }

    if (v33 - 1 > 0x3F)
    {
      if (v47 == v48)
      {
        v50 = v46 - 1;
        while (v50)
        {
          if (v45[v50--])
          {
            goto LABEL_61;
          }
        }

        v49 = *v45;
      }

      else if (v47 == v48 - 1)
      {
        v52 = v46 - 1;
        while (v52)
        {
          v53 = v45[v52--];
          if (v53 != -1)
          {
            goto LABEL_61;
          }
        }

        v49 = -*v45;
      }

      else
      {
LABEL_61:
        v49 = -1;
      }
    }

    else
    {
      v49 = v47 - v48;
      if ((v47 - v48) < 0)
      {
        v49 = v48 - v47;
      }
    }

    v54 = 2 * v49;
    if (2 * v49 >= v44)
    {
      v55 = *(*v14 + 8);
      v56 = (v14 + 8);
      if ((v55 - 64) <= 0xFFFFFF7F)
      {
        v56 = *(v14 + 1);
      }

      v57 = (v55 + 64) >> 6;
      if (v57 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      llvm::APInt::tcExtract(v56, v58, v45, (v71 - v33), v33);
      *(v14 + 4) = v79 + v33 + *(*v14 + 8) - v71;
      v59 = *(v77 + 8);
      if ((v59 - 64) >= 0xFFFFFF80)
      {
        v60 = &v78;
      }

      else
      {
        v60 = v78;
      }

      v61 = (v59 + 64) >> 6;
      if (v61 <= 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = v61;
      }

      v63 = llvm::lostFractionThroughTruncation(v60, v62, v38);
      v66 = llvm::detail::IEEEFloat::normalize(v14, v67, v63);
    }

    if ((*(v75 + 8) - 64) <= 0xFFFFFF7F && v76)
    {
      MEMORY[0x25F891010](v76, 0x1000C8000313F17);
    }

    if ((*(v77 + 8) - 64) <= 0xFFFFFF7F && v78)
    {
      MEMORY[0x25F891010](v78, 0x1000C8000313F17);
    }

    v17 *= 2;
  }

  while (v54 < v44);
  v64 = *MEMORY[0x277D85DE8];
  return v66;
}

void llvm::detail::IEEEFloat::makeInf(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *this;
  if (*(*this + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(this, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *(this + 20) = *(this + 20) & 0xF0 | v3;
    *(this + 4) = *v2 + 1;
    v4 = v2[2];
    if ((v4 - 64) >= 0xFFFFFF80)
    {
      *(this + 1) = 0;
    }

    else
    {
      v5 = *(this + 1);
      *v5 = 0;
      bzero(v5 + 1, 8 * (((v4 + 64) >> 6) - 1));
    }
  }
}

void llvm::detail::IEEEFloat::convertFromString(llvm::detail::IEEEFloat *this@<X0>, char *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, llvm *a5@<X8>)
{
  v67 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v13 = "Invalid string length";
    goto LABEL_34;
  }

  v7 = a3;
  v8 = a2;
  v9 = this;
  if (a3 < 3)
  {
    goto LABEL_3;
  }

  if (a3 == 8)
  {
    if (*a2 != 0x5954494E49464E49)
    {
LABEL_36:
      v15 = *a2;
      if (v15 != 45)
      {
        v16 = 0;
        v18 = a2;
        v17 = a3;
        goto LABEL_52;
      }

      v18 = a2 + 1;
      v17 = a3 - 1;
      if (a3 == 9)
      {
        v25 = "INFINITY";
      }

      else
      {
        if (a3 != 4)
        {
LABEL_51:
          v15 = *v18;
          v16 = 1;
          goto LABEL_52;
        }

        if (!memcmp(a2 + 1, "inf", v17))
        {
LABEL_76:
          this = v9;
          v26 = 1;
          goto LABEL_44;
        }

        v25 = "Inf";
      }

      if (memcmp(v8 + 1, v25, v7 - 1))
      {
        goto LABEL_51;
      }

      goto LABEL_76;
    }

LABEL_43:
    v26 = 0;
LABEL_44:
    llvm::detail::IEEEFloat::makeInf(this, v26);
    goto LABEL_67;
  }

  if (a3 == 4)
  {
    if (*a2 != 1718503723)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  if (a3 != 3)
  {
    goto LABEL_36;
  }

  if (*a2 == 28265 && a2[2] == 102)
  {
    goto LABEL_43;
  }

  v15 = *a2;
  if (v15 == 45)
  {
    v10 = this + 20;
    v11 = *(this + 20) | 8;
    goto LABEL_4;
  }

  v16 = 0;
  v17 = 3;
  v18 = a2;
LABEL_52:
  if ((v15 | 0x20) == 0x73)
  {
    if (--v17 < 3)
    {
      goto LABEL_3;
    }

    ++v18;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if ((*v18 != 24942 || v18[2] != 110) && (*v18 != 24910 || v18[2] != 78))
  {
    goto LABEL_3;
  }

  v31 = v17 - 3;
  if (v17 <= 3)
  {
    llvm::detail::IEEEFloat::makeNaN(v9, v28, v16, 0);
    goto LABEL_67;
  }

  v33 = v18 + 3;
  v32 = v18[3];
  if (v32 != 40)
  {
    goto LABEL_72;
  }

  if (v31 >= 3 && v18[v17 - 1] == 41)
  {
    v32 = v18[4];
    v31 = v17 - 5;
    v33 = v18 + 4;
LABEL_72:
    v34 = v28;
    if (v32 == 48)
    {
      if (v31 < 2)
      {
        v35 = 8;
        v31 = 1;
      }

      else if (__tolower(v33[1]) == 120)
      {
        v33 += 2;
        v35 = 16;
        v31 -= 2;
      }

      else
      {
        v35 = 8;
      }
    }

    else
    {
      v35 = 10;
    }

    v66 = 1;
    v65 = 0;
    v62 = v33;
    v63 = v31;
    if (llvm::StringRef::consumeInteger(&v62, v35, &v65) || v63)
    {
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x25F891010](v65, 0x1000C8000313F17);
      }

      goto LABEL_3;
    }

    llvm::detail::IEEEFloat::makeNaN(v9, v34, v16, &v65);
    if (v66 >= 0x41 && v65)
    {
      MEMORY[0x25F891010](v65, 0x1000C8000313F17);
    }

LABEL_67:
    *(a5 + 8) &= ~1u;
    *a5 = 0;
    goto LABEL_137;
  }

LABEL_3:
  v10 = v9 + 20;
  v11 = *(v9 + 20) & 0xF7 | (8 * (*v8 == 45));
LABEL_4:
  *v10 = v11;
  v12 = *v8;
  if (v12 != 45 && v12 != 43)
  {
    goto LABEL_8;
  }

  if (!--v7)
  {
    v13 = "String has no digits";
LABEL_34:
    v62 = v13;
    v64 = 259;
    getErrorErrorCat();
    operator new();
  }

  ++v8;
LABEL_8:
  if (v7 >= 2 && *v8 == 48 && (v8[1] | 0x20) == 0x78)
  {
    if (v7 == 2)
    {
      v62 = "Invalid string";
      v64 = 259;
      llvm::createError(a5, &v62);
    }

    v27 = *MEMORY[0x277D85DE8];

    llvm::detail::IEEEFloat::convertFromHexadecimalString(a5, v9, v8 + 2, v7 - 2, a4);
    return;
  }

  v19 = &v8[v7];
  v61 = &v8[v7];
  llvm::skipLeadingZeroesAndAnyDot(&v65, v8, &v8[v7], &v61);
  v20 = v65;
  if (v66)
  {
    *(a5 + 8) |= 1u;
    *a5 = v20;
    goto LABEL_137;
  }

  v21 = v61;
  v22 = v65;
  if (v65 == v19)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v23 = *v22;
    if (v23 != 46)
    {
      v24 = v22;
      goto LABEL_30;
    }

    if (v21 != v19)
    {
      v36 = "String contains multiple dots";
      goto LABEL_95;
    }

    v24 = v22 + 1;
    v61 = v22;
    if (v22 + 1 == v19)
    {
      break;
    }

    LOBYTE(v23) = *v24;
    v21 = v22;
LABEL_30:
    if ((v23 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_79;
    }

    v22 = v24 + 1;
    if (v24 + 1 == v19)
    {
      goto LABEL_80;
    }
  }

  v21 = v22;
LABEL_79:
  v22 = v24;
LABEL_80:
  if (v22 == v19)
  {
    v37 = 0;
  }

  else
  {
    if ((*v22 | 0x20) != 0x65)
    {
      v36 = "Invalid character in significand";
      goto LABEL_95;
    }

    if (v22 == v8 || v21 != v19 && v22 - v8 == 1)
    {
      v36 = "Significand has no digits";
      goto LABEL_95;
    }

    v43 = v22 + 1;
    if (v22 + 1 == v19 || ((v44 = *v43, v44 == 45) || v44 == 43) && v22 + 2 == v19)
    {
      v37 = 0;
    }

    else
    {
      if (v44 == 45 || (v45 = *v43, v44 == 43))
      {
        v43 = v22 + 2;
        if (v22 + 2 != v19)
        {
          v45 = *v43;
          goto LABEL_106;
        }

        v36 = "Exponent has no digits";
LABEL_95:
        v62 = v36;
        v64 = 259;
        getErrorErrorCat();
        operator new();
      }

LABEL_106:
      v46 = v45 - 48;
      if (v46 > 9)
      {
LABEL_107:
        v36 = "Invalid character in exponent";
        goto LABEL_95;
      }

      v59 = v43 + 1;
      while (v59 != v19)
      {
        v60 = *v59 - 48;
        if (v60 >= 0xA)
        {
          goto LABEL_107;
        }

        v46 = v60 + 10 * v46;
        ++v59;
        if (v46 >> 6 >= 0x177)
        {
          v46 = 24000;
          break;
        }
      }

      if (v44 == 45)
      {
        v37 = -v46;
      }

      else
      {
        v37 = v46;
      }
    }

    if (v21 == v19)
    {
      v61 = v22;
      v21 = v22;
    }
  }

  if (v22 == v65)
  {
    v42 = 0;
  }

  else
  {
    v38 = v8;
    if (v22 != v8)
    {
      while (2)
      {
        v39 = v22 - 1;
        do
        {
          if (v39 == v8)
          {
            v38 = v8;
            goto LABEL_110;
          }

          v41 = *v39--;
          v40 = v41;
        }

        while (v41 == 48);
        if (v40 == 46)
        {
          v22 = v39 + 1;
          continue;
        }

        break;
      }

      v38 = v39 + 1;
    }

LABEL_110:
    v47 = v21 - v38;
    v48 = v21 > v65;
    v49 = v21 >= v38;
    v50 = v21 > v38;
    if (v49)
    {
      v48 = 0;
    }

    v42 = v37 + v47 - v50 + v38 - v65 - v48;
  }

  if (v65 != v19 && (*v65 - 58) > 0xFFFFFFF5)
  {
    if (v42 < 51085)
    {
      v55 = *v9;
      if (v42 < -51082 || 28738 * v42 + 28738 <= 8651 * (v55[1] - v55[2]))
      {
        *(v9 + 20) = *(v9 + 20) & 0xF8 | 2;
        v56 = v55[2];
        if ((v56 - 64) >= 0xFFFFFF80)
        {
          *(v9 + 1) = 0;
        }

        else
        {
          v57 = *(v9 + 1);
          *v57 = 0;
          bzero(v57 + 1, 8 * (((v56 + 64) >> 6) - 1));
        }

        v54 = llvm::detail::IEEEFloat::normalize(v9, a4, 1);
        goto LABEL_135;
      }

      if (42039 * v42 - 42039 < 12655 * *v55)
      {
        operator new[]();
      }
    }

    v54 = llvm::detail::IEEEFloat::handleOverflow(v9, a4);
LABEL_135:
    v53 = v54;
    goto LABEL_136;
  }

  v51 = *(v9 + 20) & 0xF8 | 3;
  *(v9 + 20) = v51;
  v52 = *v9;
  if (*(*v9 + 20) == 2)
  {
    *v10 = v51 & 0xF3;
  }

  if ((v52[6] & 1) == 0)
  {
    llvm::detail::IEEEFloat::makeSmallestNormalized(v9, 0);
  }

  v53 = 0;
LABEL_136:
  *(a5 + 8) &= ~1u;
  *a5 = v53;
LABEL_137:
  v58 = *MEMORY[0x277D85DE8];
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unint64_t *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(this + 20);
  v5 = v4 & 6;
  v6 = v4 & 7;
  v7 = (v4 >> 3) & 1;
  if (v5)
  {
    v8 = v6 == 3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6 == 1)
    {
      LOBYTE(v7) = 0;
    }

    LOBYTE(v16) = v7;
    v9 = *this;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v25 = 0;
    v26 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v18) = v6;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int>(&v18, 0, &v18 + 1, &v22, &v16, (v9 + 8));
  }

  else
  {
    v17 = v7;
    v11 = (this + 8);
    v12 = (*this + 8);
    if ((*v12 - 64) >= 0xFFFFFF80)
    {
      v13 = (this + 8);
    }

    else
    {
      v13 = *(this + 1);
    }

    v14 = (*v12 + 64) >> 6;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v16 = llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(v13, v13 + 8 * v14, a3, a4);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v25 = 0;
    v26 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v18) = v6;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned char,unsigned int,int,llvm::hash_code>(&v18, 0, &v18 + 1, &v22, &v17, v12, v11 + 2, &v16);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      v11 = 0;
      v7 = 0;
    }

    else
    {
      if ((v4 & 7) != 0)
      {
        v13 = *this;
        v12 = (this + 8);
        if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
        {
          v12 = *v12;
        }

        v7 = *v12;
      }

      else
      {
        v7 = 0x8000000000000000;
      }

      v11 = 0x7FFFLL;
    }
  }

  else
  {
    LODWORD(v8) = *(this + 4) + 0x3FFF;
    v10 = *this;
    v9 = (this + 8);
    if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
    {
      v9 = *v9;
    }

    v7 = *v9;
    if (v8 == 1)
    {
      v8 = v7 >> 63;
    }

    v11 = v8 & 0x7FFF;
  }

  v16[0] = v7;
  v16[1] = v11 & 0xFFFFFFFFFFFF7FFFLL | (((v4 >> 3) & 1) << 15);
  *(a2 + 2) = 80;
  result = llvm::APInt::initFromArray(a2, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v3 = *(*this + 12);
  *v15 = **this;
  *&v15[12] = v3;
  *&v15[4] = -1022;
  llvm::detail::IEEEFloat::IEEEFloat(&v13, this);
  llvm::detail::IEEEFloat::convert(&v13, v15, 1, &v16);
  llvm::detail::IEEEFloat::IEEEFloat(&v10, &v13);
  llvm::detail::IEEEFloat::convert(&v10, &llvm::semIEEEdouble, 1, &v16);
  llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(&v10, &v8);
  if (v9 > 0x40)
  {
    v17 = *v8;
    MEMORY[0x25F891010]();
  }

  else
  {
    v17 = v8;
  }

  if ((v12 & 6) != 0 && (v12 & 7) != 3 && v16 == 1)
  {
    llvm::detail::IEEEFloat::convert(&v10, v15, 1, &v16);
    llvm::detail::IEEEFloat::IEEEFloat(&v8, &v13);
    llvm::detail::IEEEFloat::addOrSubtract(&v8, &v10, 1, 1);
    llvm::detail::IEEEFloat::convert(&v8, &llvm::semIEEEdouble, 1, &v16);
    llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(&v8, &v6);
    if (v7 > 0x40)
    {
      v18 = *v6;
      MEMORY[0x25F891010]();
    }

    else
    {
      v18 = v6;
    }

    if ((*(v8 + 8) - 64) <= 0xFFFFFF7F && v9)
    {
      MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  else
  {
    v18 = 0;
  }

  *(a2 + 2) = 128;
  result = llvm::APInt::initFromArray(a2, &v17);
  if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x25F891010](v11, 0x1000C8000313F17);
    }
  }

  if ((*(v13 + 8) - 64) <= 0xFFFFFF7F)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 1022;
  }

  else
  {
    LODWORD(v3) = 1023;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        v7 = 0;
        LOWORD(v3) = v3 - 1023;
      }

      else
      {
        LOWORD(v3) = v3 | 0x400;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      v7 = 0;
      LOWORD(v3) = v3 | 0x400;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 52) & 1;
    }
  }

  *(a2 + 8) = 64;
  *a2 = (v4 << 60) & 0x8000000000000000 | v7 & 0xFFFFFFFFFFFFFLL | ((v3 & 0x7FF) << 52);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v6 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v7) = 16382;
  }

  else
  {
    LODWORD(v7) = 0x3FFF;
  }

  v8 = *(this + 20);
  v9 = v8 & 7;
  if ((v8 & 6) == 0 || v9 == 3)
  {
    if ((v8 & 7) != 0)
    {
      if (v9 == 3)
      {
        v11 = 0;
        v12 = 0;
        LOWORD(v7) = v7 - 0x3FFF;
      }

      else
      {
        LOWORD(v7) = v7 | 0x4000;
        v14 = (this + 8);
        if ((v6[2] - 64) <= 0xFFFFFF7F)
        {
          v14 = *v14;
        }

        v11 = *v14;
        v12 = v14[1];
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      LOWORD(v7) = v7 | 0x4000;
    }
  }

  else
  {
    LODWORD(v7) = *(this + 4) + v7;
    if ((v6[2] - 64) > 0xFFFFFF7F)
    {
      v11 = *(this + 1);
      v12 = *(this + 2);
    }

    else
    {
      v13 = *(this + 1);
      v11 = *v13;
      v12 = v13[1];
    }

    if (v7 == 1)
    {
      v7 = HIWORD(v12) & 1;
    }
  }

  v16[2] = v2;
  v16[3] = v3;
  v16[0] = v11;
  v16[1] = (v8 << 60) & 0x8000000000000000 | v12 & 0xFFFFFFFFFFFFLL | ((v7 & 0x7FFF) << 48);
  *(a2 + 2) = 128;
  return llvm::APInt::initFromArray(a2, v16);
}

uint64_t llvm::detail::IEEEFloat::convertFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 126;
  }

  else
  {
    LODWORD(v3) = 127;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LODWORD(v7) = 0;
        LOBYTE(v3) = v3 - 127;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x80;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LODWORD(v7) = 0;
      LOBYTE(v3) = v3 | 0x80;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 23) & 1;
    }
  }

  *(a2 + 8) = 32;
  *a2 = v7 & 0x7FFFFF | (((v4 >> 3) & 1) << 31) | (v3 << 23);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertBFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 126;
  }

  else
  {
    LODWORD(v3) = 127;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 127;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x80;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 0x80;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 7) & 1;
    }
  }

  *(a2 + 8) = 16;
  *a2 = v7 & 0x7F | (((v4 >> 3) & 1) << 15) | (v3 << 7);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertHalfAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 14;
  }

  else
  {
    LODWORD(v3) = 15;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOWORD(v7) = 0;
        LOBYTE(v3) = v3 - 15;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x10;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOWORD(v7) = 0;
      LOBYTE(v3) = v3 | 0x10;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 10) & 1;
    }
  }

  *(a2 + 8) = 16;
  *a2 = v7 & 0x3FF | (((v4 >> 3) & 1) << 15) | ((v3 & 0x1F) << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 14;
  }

  else
  {
    LODWORD(v3) = 15;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 15;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x10;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 0x10;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 2) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 3 | (4 * (v3 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 15;
  }

  else
  {
    LODWORD(v3) = 16;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 16;
    }

    else
    {
      LOBYTE(v3) = v3 - 16;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 2) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 3 | (4 * (v3 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 6;
  }

  else
  {
    LODWORD(v3) = 7;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 7;
      }

      else
      {
        LOBYTE(v3) = v3 | 8;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 8;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 6;
  }

  else
  {
    LODWORD(v3) = 7;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 7;
    }

    else
    {
      LOBYTE(v3) = v3 | 8;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 7;
  }

  else
  {
    LODWORD(v3) = 8;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 8;
    }

    else
    {
      LOBYTE(v3) = v3 - 8;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 10;
  }

  else
  {
    LODWORD(v3) = 11;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 11;
    }

    else
    {
      LOBYTE(v3) = v3 - 11;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 3) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 2;
  }

  else
  {
    LODWORD(v3) = 3;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 3;
      }

      else
      {
        LOBYTE(v3) = v3 | 4;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 4;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 4) & 1;
    }
  }

  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 0xF | (16 * (v3 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v3) = 126;
  }

  else
  {
    LODWORD(v3) = 127;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOWORD(v7) = 0;
        LOBYTE(v3) = v3 - 127;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x80;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOWORD(v7) = 0;
      LOBYTE(v3) = v3 | 0x80;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v7 = *(this + 8);
    }

    else
    {
      v7 = **(this + 8);
    }

    if (v3 == 1)
    {
      v3 = (v7 >> 10) & 1;
    }
  }

  *(a2 + 8) = 19;
  *a2 = v7 & 0x3FF | (((v4 >> 3) & 1) << 18) | (v3 << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = vdup_n_s32(v2);
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v4) = 127;
  }

  else
  {
    LODWORD(v4) = 128;
  }

  v5 = vmvn_s8(vceq_s32(vand_s8(v3, 0x700000006), 0x300000000));
  if (v5.i32[0] & v5.i32[1])
  {
    LODWORD(v4) = *(this + 16) + v4;
    v6 = (this + 8);
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      if (v4 == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v4 == 1)
    {
      v6 = *v6;
LABEL_10:
      v4 = *v6 & 1;
    }
  }

  else
  {
    LOBYTE(v4) = v4 + 0x80;
  }

  *(a2 + 8) = 8;
  *a2 = v4 | (16 * v2) & 0x80;
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (*this == &llvm::semFloat8E8M0FNU)
  {
    LODWORD(v2) = 2;
  }

  else
  {
    LODWORD(v2) = 3;
  }

  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    LOBYTE(v2) = v2 - 3;
  }

  else
  {
    LODWORD(v2) = *(this + 16) + v2;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v5 = *(this + 8);
    }

    else
    {
      v5 = **(this + 8);
    }

    if (v2 == 1)
    {
      v2 = (v5 >> 2) & 1;
    }
  }

  *(a2 + 8) = 6;
  *a2 = (4 * v3) & 0x20 | v5 & 3 | (4 * (v2 & 7));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    if (v2 == &llvm::semFloat8E8M0FNU)
    {
      LOBYTE(v6) = -1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 4);
    if (v2 != &llvm::semFloat8E8M0FNU)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) > 0xFFFFFF7F)
    {
      v5 = this[1];
    }

    else
    {
      v5 = *this[1];
    }

    if (v6 == 1)
    {
      v6 = (v5 >> 3) & 1;
    }
  }

  *(a2 + 8) = 6;
  *a2 = (4 * v3) & 0x20 | v5 & 7 | (8 * (v6 & 3));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    if (v2 == &llvm::semFloat8E8M0FNU)
    {
      LOBYTE(v6) = -1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 4);
    if (v2 != &llvm::semFloat8E8M0FNU)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) > 0xFFFFFF7F)
    {
      v5 = this[1];
    }

    else
    {
      v5 = *this[1];
    }

    if (v6 == 1)
    {
      v6 = (v5 >> 1) & 1;
    }
  }

  *(a2 + 8) = 4;
  *a2 = v3 & 8 | v5 & 1 | (2 * (v6 & 3));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::bitcastToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semIEEEhalf)
  {
    return llvm::detail::IEEEFloat::convertHalfAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semBFloat)
  {
    return llvm::detail::IEEEFloat::convertBFloatAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semIEEEsingle)
  {
    return llvm::detail::IEEEFloat::convertFloatAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semIEEEdouble)
  {
    return llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semIEEEquad)
  {
    return llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semPPCDoubleDoubleLegacy)
  {
    return llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E5M2)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2APFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E5M2FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E4M3)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E4M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E4M3FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E4M3B11FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E3M4)
  {
    return llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloatTF32)
  {
    return llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat8E8M0FNU)
  {
    return llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat6E3M2FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat6E2M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a2);
  }

  if (v2 == &llvm::semFloat4E2M1FN)
  {
    return llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a2);
  }

  return llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(this, a2);
}

float llvm::detail::IEEEFloat::convertToFloat(llvm::detail::IEEEFloat *this)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(this, &v3);
  if (v4 > 0x40)
  {
    v1 = *v3;
    MEMORY[0x25F891010]();
  }

  else
  {
    LODWORD(v1) = v3;
  }

  return *&v1;
}

double llvm::detail::IEEEFloat::convertToDouble(llvm::detail::IEEEFloat *this)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(this, &v3);
  if (v4 <= 0x40)
  {
    return *&v3;
  }

  v1 = *v3;
  MEMORY[0x25F891010]();
  return v1;
}

uint64_t llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  if (*(a2 + 2) >= 0x41u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  LODWORD(v11) = 64;
  v10 = v4;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v10);
  result = llvm::detail::IEEEFloat::convert(this, &llvm::semPPCDoubleDoubleLegacy, 1, &v12);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v9 = 64;
    v8 = v5;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v10, &v8);
    llvm::detail::IEEEFloat::convert(&v10, &llvm::semPPCDoubleDoubleLegacy, 1, &v12);
    result = llvm::detail::IEEEFloat::addOrSubtract(this, &v10, 1, 0);
    if ((*(v10 + 2) - 64) <= 0xFFFFFF7F)
    {
      result = v11;
      if (v11)
      {
        return MEMORY[0x25F891010](v11, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void llvm::detail::IEEEFloat::initFromDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xFFFFFFFFFFFFFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 52) & 0x7FF;
  *this = &llvm::semIEEEdouble;
  v7 = (v5 >> 60) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 2047 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 2047 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 1024;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 1023;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x10000000000000uLL;
    goto LABEL_18;
  }

  *(this + 4) = -1022;
}

void llvm::detail::IEEEFloat::initFromFloatAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x7FFFFFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 23);
  *this = &llvm::semIEEEsingle;
  v7 = (v5 >> 28) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 255 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 255 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 128;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 127;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x800000uLL;
    goto LABEL_18;
  }

  *(this + 4) = -126;
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 2) & 0x1F;
  *this = &llvm::semFloat8E5M2;
  v7 = (v5 >> 4) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 31 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 31 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 16;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 15;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 4uLL;
    goto LABEL_18;
  }

  *(this + 4) = -14;
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 3;
  v6 = (v4 >> 2) & 0x1F;
  *a1 = &llvm::semFloat8E5M2FNUZ;
  v7 = (v4 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 16;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 4;
    }

    else
    {
      *(a1 + 16) = -15;
    }
  }

  else if (v7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = -16;
    *(a1 + 8) = 0;
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &llvm::semFloat8E4M3;
  v7 = (v5 >> 4) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 15 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 15 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 8;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 7;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 8uLL;
    goto LABEL_18;
  }

  *(this + 4) = -6;
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 3) & 0xF;
  *a1 = &llvm::semFloat8E4M3FN;
  v7 = (v5 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = *(a1 + 20) & 0xF7 | (v5 >> 4) & 8;
  if (v6 == 15 && v4 == 7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = 8;
    v10 = 7;
LABEL_13:
    *(a1 + 8) = v10;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
    return;
  }

  *(a1 + 20) = v8 & 0xF8 | 2;
  *(a1 + 16) = v6 - 7;
  *(a1 + 8) = v4;
  if (v6)
  {
    v10 = v4 | 8;
    goto LABEL_13;
  }

  *(a1 + 16) = -6;
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 7;
  v6 = (v4 >> 3) & 0xF;
  *a1 = &llvm::semFloat8E4M3FNUZ;
  v7 = (v4 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 8;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 8;
    }

    else
    {
      *(a1 + 16) = -7;
    }
  }

  else if (v7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = -8;
    *(a1 + 8) = 0;
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 7;
  v6 = (v4 >> 3) & 0xF;
  *a1 = &llvm::semFloat8E4M3B11FNUZ;
  v7 = (v4 >> 4) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 11;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 8;
    }

    else
    {
      *(a1 + 16) = -10;
    }
  }

  else if (v7)
  {
    *(a1 + 20) = v8 & 0xF8 | 1;
    *(a1 + 16) = -11;
    *(a1 + 8) = 0;
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 4) & 7;
  *this = &llvm::semFloat8E3M4;
  v7 = (v5 >> 4) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 7 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 7 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 4;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 3;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x10uLL;
    goto LABEL_18;
  }

  *(this + 4) = -2;
}

void llvm::detail::IEEEFloat::initFromFloatTF32APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x3FFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 10);
  *this = &llvm::semFloatTF32;
  v7 = (v5 >> 15) & 8;
  v8 = *(this + 20) & 0xF7 | v7;
  *(this + 20) = v8;
  if (v6 == 255 && v4 == 0)
  {
    llvm::detail::IEEEFloat::makeInf(this, v7 != 0);
    return;
  }

  if (v6 == 255 && v4 != 0)
  {
    *(this + 20) = v8 & 0xF8 | 1;
    *(this + 4) = 128;
LABEL_18:
    *(this + 1) = v4;
    return;
  }

  if (!(v6 | v4))
  {
    llvm::detail::IEEEFloat::makeZero(this, v7 != 0);
    return;
  }

  *(this + 20) = v8 & 0xF8 | 2;
  *(this + 4) = v6 - 127;
  *(this + 1) = v4;
  if (v6)
  {
    v4 |= 0x400uLL;
    goto LABEL_18;
  }

  *(this + 4) = -126;
}

void llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 3;
  v6 = (v4 >> 2) & 7;
  *a1 = &llvm::semFloat6E3M2FN;
  v7 = (v4 >> 2) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 3;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 4;
    }

    else
    {
      *(a1 + 16) = -2;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = v3[((v2 + 63) >> 6) - 1];
  v5 = *v3 & 7;
  v6 = (v4 >> 3) & 3;
  *a1 = &llvm::semFloat6E2M3FN;
  v7 = (v4 >> 2) & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v5)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 1;
    *(a1 + 8) = v5;
    if (v6)
    {
      *(a1 + 8) = v5 | 8;
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
  }
}

void llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 1;
  v5 = v3[((v2 + 63) >> 6) - 1];
  v6 = (v5 >> 1) & 3;
  *a1 = &llvm::semFloat4E2M1FN;
  v7 = v5 & 8;
  v8 = *(a1 + 20) & 0xF7 | v7;
  *(a1 + 20) = v8;
  if (v6 | v4)
  {
    *(a1 + 20) = v8 & 0xF8 | 2;
    *(a1 + 16) = v6 - 1;
    *(a1 + 8) = v4;
    if (v6)
    {
      *(a1 + 8) = v4 | 2;
    }

    else
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::makeZero(a1, v7 != 0);
  }
}

void llvm::detail::IEEEFloat::initFromAPInt(llvm::detail::IEEEFloat *this, void *a2, const llvm::APInt **a3)
{
  if (a2 == &llvm::semIEEEhalf)
  {
    v3 = *(a3 + 2);
    if (v3 >= 0x41)
    {
      v4 = *a3;
    }

    else
    {
      v4 = a3;
    }

    v5 = *v4 & 0x3FFLL;
    v6 = *(v4 + ((v3 + 63) >> 6) - 1);
    v7 = (v6 >> 10) & 0x1F;
    *this = &llvm::semIEEEhalf;
    v8 = (v6 >> 12) & 8;
    v9 = *(this + 20) & 0xF7 | v8;
    *(this + 20) = v9;
    if (v7 != 31 || v5 != 0)
    {
      if (v7 == 31 && v5 != 0)
      {
        *(this + 20) = v9 & 0xF8 | 1;
        v19 = 16;
LABEL_58:
        *(this + 4) = v19;
        goto LABEL_59;
      }

      if (v7 | v5)
      {
        *(this + 20) = v9 & 0xF8 | 2;
        *(this + 4) = v7 - 15;
        *(this + 1) = v5;
        if (v7)
        {
          v5 |= 0x400uLL;
LABEL_59:
          *(this + 1) = v5;
          return;
        }

        v26 = -14;
LABEL_88:
        *(this + 4) = v26;
        return;
      }

      goto LABEL_68;
    }
  }

  else
  {
    if (a2 != &llvm::semBFloat)
    {
      if (a2 == &llvm::semIEEEsingle)
      {

        llvm::detail::IEEEFloat::initFromFloatAPInt(this, a3);
      }

      else if (a2 == &llvm::semIEEEdouble)
      {

        llvm::detail::IEEEFloat::initFromDoubleAPInt(this, a3);
      }

      else
      {
        if (a2 == &llvm::semX87DoubleExtended)
        {
          if (*(a3 + 2) >= 0x41u)
          {
            v20 = *a3;
          }

          else
          {
            v20 = a3;
          }

          v21 = *v20;
          v22 = *(v20 + 1) & 0x7FFFLL;
          *this = &llvm::semX87DoubleExtended;
          operator new[]();
        }

        if (a2 == &llvm::semIEEEquad)
        {
          v23 = *(a3 + 2);
          v24 = *a3;
          if (v23 < 0x41)
          {
            v24 = a3;
          }

          v33 = (*(v24 + 24) >> 64) & 0xFFFFFFFFFFFFLL;
          v25 = *(v24 + ((v23 + 63) >> 6) - 1);
          *this = &llvm::semIEEEquad;
          operator new[]();
        }

        if (a2 == &llvm::semPPCDoubleDoubleLegacy)
        {

          llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E5M2)
        {

          llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E5M2FNUZ)
        {

          llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3FN)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3FNUZ)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E4M3B11FNUZ)
        {

          llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E3M4)
        {

          llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(this, a3);
        }

        else if (a2 == &llvm::semFloatTF32)
        {

          llvm::detail::IEEEFloat::initFromFloatTF32APInt(this, a3);
        }

        else if (a2 == &llvm::semFloat8E8M0FNU)
        {
          if (*(a3 + 2) >= 0x41u)
          {
            v27 = *a3;
          }

          else
          {
            v27 = a3;
          }

          v28 = *v27;
          v29 = *(this + 20);
          *this = &llvm::semFloat8E8M0FNU;
          *(this + 1) = 1;
          v30 = v29 & 0xF0;
          v31 = v28 - 127;
          if (v28 == 255)
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }

          *(this + 20) = v30 | v32;
          *(this + 4) = v31;
        }

        else if (a2 == &llvm::semFloat6E3M2FN)
        {

          llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(this, a3);
        }

        else if (a2 == &llvm::semFloat6E2M3FN)
        {

          llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(this, a3);
        }

        else
        {

          llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(this, a3);
        }
      }

      return;
    }

    v12 = *(a3 + 2);
    if (v12 >= 0x41)
    {
      v13 = *a3;
    }

    else
    {
      v13 = a3;
    }

    v5 = *v13 & 0x7FLL;
    v14 = *(v13 + ((v12 + 63) >> 6) - 1);
    v15 = (v14 >> 7);
    *this = &llvm::semBFloat;
    v8 = (v14 >> 12) & 8;
    v16 = *(this + 20) & 0xF7 | v8;
    *(this + 20) = v16;
    if (v15 != 255 || v5 != 0)
    {
      if (v15 == 255 && v5 != 0)
      {
        *(this + 20) = v16 & 0xF8 | 1;
        v19 = 128;
        goto LABEL_58;
      }

      if (v15 | v5)
      {
        *(this + 20) = v16 & 0xF8 | 2;
        *(this + 4) = v15 - 127;
        *(this + 1) = v5;
        if (v15)
        {
          v5 |= 0x80uLL;
          goto LABEL_59;
        }

        v26 = -126;
        goto LABEL_88;
      }

LABEL_68:

      llvm::detail::IEEEFloat::makeZero(this, v8 != 0);
      return;
    }
  }

  llvm::detail::IEEEFloat::makeInf(this, v8 != 0);
}

void *llvm::detail::IEEEFloat::makeLargest(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 2;
  }

  *(this + 20) = *(this + 20) & 0xF0 | v3;
  v4 = *this;
  *(this + 4) = **this;
  v5 = *(v4 + 8);
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v7 = (v5 + 64) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  result = memset(v6, 255, 8 * (v8 - 1));
  v10 = *this;
  v11 = *(*this + 8);
  if ((v8 << 6) - v11 >= 0x40)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> ((v8 << 6) - v11);
  }

  v6[v8 - 1] = v12;
  if (*(v10 + 16) == 1 && *(v10 + 20) == 1 && v11 >= 2)
  {
    *v6 &= ~1uLL;
  }

  return result;
}

void llvm::detail::IEEEFloat::toString(_BYTE *a1, void *a2, unsigned int a3, unsigned int a4, int a5)
{
  v81[32] = *MEMORY[0x277D85DE8];
  v9 = a1[20] & 7;
  if (v9 == 3)
  {
    if ((a1[20] & 8) != 0)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
    }

    if (a4)
    {
      v14 = *MEMORY[0x277D85DE8];

      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      return;
    }

    if (!a5)
    {
      llvm::SmallVectorImpl<char>::append<char const*,void>(a2, "0.0", "");
      if (a3 >= 2)
      {
        llvm::SmallVectorImpl<char>::append(a2, a3 - 1, 48);
      }

      v29 = *MEMORY[0x277D85DE8];
      v11 = "e+00";
      goto LABEL_47;
    }

    v25 = *MEMORY[0x277D85DE8];
    v11 = "0.0E+0";
    v13 = "";
LABEL_48:

    llvm::SmallVectorImpl<char>::append<char const*,void>(a2, v11, v13);
    return;
  }

  if (v9 == 1)
  {
    v12 = *MEMORY[0x277D85DE8];
    v11 = "NaN";
    v13 = "";
    goto LABEL_48;
  }

  if ((a1[20] & 7) == 0)
  {
    v10 = *MEMORY[0x277D85DE8];
    if ((a1[20] & 8) != 0)
    {
      v11 = "-Inf";
    }

    else
    {
      v11 = "+Inf";
    }

LABEL_47:
    v13 = v11 + 4;
    goto LABEL_48;
  }

  v16 = *(*a1 + 8);
  v17 = a1 + 8;
  if ((v16 - 64) <= 0xFFFFFF7F)
  {
    v17 = *v17;
  }

  v18 = *(a1 + 4);
  v71 = *(*a1 + 8);
  llvm::APInt::initFromArray(&__src, v17);
  v20 = a1[20];
  v21 = v71;
  v69 = v71;
  if (v71 > 0x40)
  {
    operator new[]();
  }

  v68 = __src;
  if ((v20 & 8) != 0)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 45);
  }

  if (!a3)
  {
    a3 = (59 * v21) / 196 + 2;
  }

  v22 = v69;
  if (v69 > 0x40)
  {
    v24 = llvm::APInt::countTrailingZerosSlowCase(&v68);
    llvm::APInt::tcShiftRight(v68, ((v22 + 63) >> 6), v24);
  }

  else
  {
    v23 = __clz(__rbit64(v68));
    if (v69 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v69;
    }

    if (v69 > v23)
    {
      v68 = (v68 >> v24);
    }

    else
    {
      v68 = 0;
    }
  }

  v26 = v18 - v16 + v24;
  v27 = v26 + 1;
  if (v26 != -1)
  {
    if (v27 < 1)
    {
      llvm::APInt::zext(&v68, (-137 * v27 + 136) / 0x3Bu + v21, &__dst);
      if (v69 >= 0x41 && v68)
      {
        MEMORY[0x25F891010](v68, 0x1000C8000313F17);
      }

      v28 = -v27;
      v68 = __dst;
      v69 = v80;
      LODWORD(v80) = (-137 * v27 + 136) / 0x3Bu + v21;
      if (v80 >= 0x41)
      {
        operator new[]();
      }

      __dst = 5;
      if (v28)
      {
LABEL_53:
        llvm::APInt::operator*=(&v68, &__dst);
      }

      while (v28 >= 2)
      {
        v28 >>= 1;
        llvm::APInt::operator*=(&__dst, &__dst);
        if (v28)
        {
          goto LABEL_53;
        }
      }

      if (v80 >= 0x41 && __dst)
      {
        MEMORY[0x25F891010](__dst, 0x1000C8000313F17);
      }
    }

    else
    {
      llvm::APInt::zext(&v68, v27 + v21, &__dst);
      if (v69 >= 0x41 && v68)
      {
        MEMORY[0x25F891010](v68, 0x1000C8000313F17);
      }

      v68 = __dst;
      v69 = v80;
      llvm::APInt::operator<<=(&v68, v27);
      v27 = 0;
    }
  }

  v30 = v69;
  if (v69 > 0x40)
  {
    v31 = llvm::APInt::countLeadingZerosSlowCase(&v68);
  }

  else
  {
    v31 = v69 + __clz(v68) - 64;
  }

  v32 = (196 * a3 + 58) / 0x3B;
  if (v30 - v31 > v32)
  {
    v33 = 59 * (v30 - v31 - v32);
    if (v33 >= 0xC4)
    {
      v34 = v33 / 0xC4;
      v27 += v33 / 0xC4;
      LODWORD(v80) = v30;
      if (v30 > 0x40)
      {
        operator new[]();
      }

      __dst = 1;
      LODWORD(v73) = v30;
      for (i = 10; ; llvm::APInt::operator*=(&i, &i))
      {
        if (v34)
        {
          llvm::APInt::operator*=(&__dst, &i);
        }

        if (v34 < 2)
        {
          break;
        }

        v34 >>= 1;
      }

      llvm::APInt::udiv(&v68, &__dst, &v77);
      if (v69 >= 0x41 && v68)
      {
        MEMORY[0x25F891010](v68, 0x1000C8000313F17);
      }

      v68 = v77;
      v35 = v78;
      v69 = v78;
      if (v78 > 0x40)
      {
        v36 = llvm::APInt::countLeadingZerosSlowCase(&v68);
      }

      else
      {
        v36 = v78 + __clz(v77) - 64;
      }

      llvm::APInt::trunc(&v68, v35 - v36, &v77);
      if (v69 >= 0x41 && v68)
      {
        MEMORY[0x25F891010](v68, 0x1000C8000313F17);
      }

      v68 = v77;
      v69 = v78;
      if (v73 >= 0x41 && i)
      {
        MEMORY[0x25F891010](i, 0x1000C8000313F17);
      }

      if (v80 >= 0x41 && __dst)
      {
        MEMORY[0x25F891010](__dst, 0x1000C8000313F17);
      }

      v30 = v69;
    }
  }

  __dst = v81;
  v80 = xmmword_25D0A0670;
  if (v30 > 3)
  {
    v78 = v30;
    if (v30 > 0x40)
    {
      operator new[]();
    }
  }

  else
  {
    v30 = 4;
    v69 = 4;
    v78 = 4;
  }

  v77 = 10;
  v76 = v30;
  v75 = 0;
  LOBYTE(v37) = 1;
  while (1)
  {
    v38 = v69;
    if (v69 >= 0x41)
    {
      if (v38 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        goto LABEL_98;
      }

      v39 = v68;
    }

    else
    {
      v39 = &v68;
    }

    if (!*v39)
    {
      break;
    }

LABEL_98:
    llvm::APInt::udivrem(&v68, &v77, &v68, &v75, v19);
    if (v76 >= 0x41)
    {
      v40 = v75;
    }

    else
    {
      v40 = &v75;
    }

    v41 = *v40;
    v37 = v37 & (v41 == 0);
    if (v37 == 1)
    {
      ++v27;
    }

    else
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&__dst, v41 + 48);
    }
  }

  LODWORD(v42) = v80;
  v43 = v80 - a3;
  if (v80 > a3)
  {
    v44 = __dst;
    if (*(__dst + (v43 - 1)) >= 53)
    {
      if (a3)
      {
        v48 = a3;
        while (1)
        {
          v49 = *(__dst + v43);
          if (v49 != 57)
          {
            break;
          }

          LODWORD(v43) = v43 + 1;
          if (!--v48)
          {
            goto LABEL_120;
          }
        }

        *(__dst + v43) = v49 + 1;
      }

      if (v43 != v42)
      {
        v27 += v43;
        v44 = __dst;
        v46 = v80 - v43;
        if (v80 == v43)
        {
          goto LABEL_112;
        }

        goto LABEL_122;
      }

LABEL_120:
      v27 += v42;
      *&v80 = 0;
      llvm::SmallVectorTemplateBase<char,true>::push_back(&__dst, 49);
      LODWORD(v42) = v80;
    }

    else
    {
      if (v43 < v80)
      {
        v45 = a3;
        while (*(__dst + v43) == 48)
        {
          ++v43;
          if (!--v45)
          {
            LODWORD(v43) = v80;
            break;
          }
        }
      }

      v27 += v43;
      v46 = v80 - v43;
      if (!v46)
      {
LABEL_112:
        v47 = v44;
        goto LABEL_123;
      }

LABEL_122:
      memmove(v44, &v44[v43], v46);
      v47 = __dst;
LABEL_123:
      v42 = &v44[v46] - v47;
      *&v80 = v42;
    }
  }

  if (!a4)
  {
    goto LABEL_136;
  }

  if (v27 < 0)
  {
    v52 = v27 + v42;
    if (v27 + v42 - 1 < 0 && 1 - v52 > a4)
    {
      goto LABEL_136;
    }

    if (v52 < 1)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
      if (v52)
      {
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
        }

        while (!__CFADD__(v52++, 1));
        v52 = 0;
      }
    }

    else
    {
      v64 = v42 - 1;
      v65 = (v27 + v42);
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v64--));
        --v65;
      }

      while (v65);
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
    }

    if (v52 != v42)
    {
      v67 = ~v52 + v42;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v67--));
      }

      while (v67 != -1);
    }
  }

  else
  {
    if (v27 <= a4 && v27 + v42 <= a3)
    {
      if (v42)
      {
        v50 = v42;
        v51 = v42 - 1;
        do
        {
          llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v51--));
          --v50;
        }

        while (v50);
      }

      for (; v27; --v27)
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
      }

      goto LABEL_163;
    }

LABEL_136:
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + (v42 - 1)));
    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 46);
    v53 = v42 - 1;
    if (v42 == 1 && (a5 & 1) != 0)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(a2, 48);
    }

    else if (v42 != 1)
    {
      v54 = v42 - 2;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(__dst + v54--));
      }

      while (v54 != -1);
    }

    v55 = v53 + v27;
    if (a5)
    {
      v56 = 69;
    }

    else
    {
      if (a3 > v53)
      {
        llvm::SmallVectorImpl<char>::append(a2, a3 - v42 + 1, 48);
      }

      v56 = 101;
    }

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v56);
    if (v55 < 0)
    {
      v57 = 45;
    }

    else
    {
      v57 = 43;
    }

    if (v55 >= 0)
    {
      v58 = v55;
    }

    else
    {
      v58 = -v55;
    }

    llvm::SmallVectorTemplateBase<char,true>::push_back(a2, v57);
    i = &v74;
    v73 = xmmword_25D0A0680;
    do
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&i, (v58 % 0xA) | 0x30);
      v59 = v58 > 9;
      v58 /= 0xAu;
    }

    while (v59);
    v60 = v73;
    if ((a5 & 1) == 0 && v73 <= 1)
    {
      llvm::SmallVectorTemplateBase<char,true>::push_back(&i, 48);
      v60 = v73;
    }

    v61 = v60;
    if (v60)
    {
      v62 = v60 - 1;
      do
      {
        llvm::SmallVectorTemplateBase<char,true>::push_back(a2, *(i + v62--));
        --v61;
      }

      while (v61);
    }

    if (i != &v74)
    {
      free(i);
    }
  }

LABEL_163:
  if (v76 >= 0x41 && v75)
  {
    MEMORY[0x25F891010](v75, 0x1000C8000313F17);
  }

  if (v78 >= 0x41 && v77)
  {
    MEMORY[0x25F891010](v77, 0x1000C8000313F17);
  }

  if (__dst != v81)
  {
    free(__dst);
  }

  if (v69 >= 0x41 && v68)
  {
    MEMORY[0x25F891010](v68, 0x1000C8000313F17);
  }

  if (v71 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  v63 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<char>::append(void *a1, size_t __len, int __c)
{
  v6 = a1[1];
  if (v6 + __len > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v6 + __len, 1);
    v6 = a1[1];
    if (!__len)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__len)
  {
LABEL_3:
    memset((*a1 + v6), __c, __len);
    v6 = a1[1];
  }

LABEL_4:
  a1[1] = v6 + __len;
}

void llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2)
{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *this, const llvm::detail::DoubleAPFloat *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    operator new[]();
  }

  this[1] = 0;
  return this;
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::DoubleAPFloat *this, llvm::detail::DoubleAPFloat *a2)
{
  if (*this == *a2 && (v6 = *(a2 + 1)) != 0)
  {
    llvm::APFloat::Storage::operator=(*(this + 1), v6);
    llvm::APFloat::Storage::operator=(*(this + 1) + 24, (*(a2 + 1) + 24));
  }

  else if (this != a2)
  {
    v4 = this + 8;
    v5 = *(this + 1);
    *(this + 1) = 0;
    if (v5)
    {
      std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(v4, v5);
    }

    llvm::detail::DoubleAPFloat::DoubleAPFloat(this, a2);
  }

  return this;
}

uint64_t llvm::APFloat::add(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, int a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::addWithSpecial(a1, a1, a2, a1, a3);
  }

  else
  {
    return llvm::detail::IEEEFloat::addOrSubtract(a1, a2, a3, 0);
  }
}

void llvm::APFloat::makeZero(void **this, int a2)
{
  v2 = this;
  if (*this == &llvm::semPPCDoubleDouble)
  {
    do
    {
      llvm::APFloat::makeZero(v2[1], a2 & 1);
      v3 = 0;
      LOBYTE(a2) = 0;
      v4 = v2[1];
      v5 = *(v4 + 3);
      v2 = (v4 + 24);
    }

    while (v5 == &llvm::semPPCDoubleDouble);
  }

  else
  {
    v3 = a2;
  }

  llvm::detail::IEEEFloat::makeZero(v2, v3);
}

uint64_t llvm::APFloat::compareAbsoluteValue(llvm::APFloat *this, const llvm::APFloat *a2)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v3 = *(this + 1);
    v4 = *(a2 + 1);
    result = llvm::APFloat::compareAbsoluteValue(v3, v4);
    if (result == 1)
    {
      v5 = v3 + 3;
      v6 = v4 + 3;
      result = llvm::APFloat::compareAbsoluteValue((v3 + 3), (v4 + 3));
      if ((result & 1) == 0)
      {
        v7 = v3;
        if (*v3 == &llvm::semPPCDoubleDouble)
        {
          v7 = v3[1];
        }

        v8 = *(v7 + 20);
        if (v3[3] == &llvm::semPPCDoubleDouble)
        {
          v5 = v3[4];
        }

        v9 = v8 ^ *(v5 + 20);
        v10 = v4;
        if (*v4 == &llvm::semPPCDoubleDouble)
        {
          v10 = v4[1];
        }

        v11 = (v9 >> 3) & 1;
        v12 = *(v10 + 20);
        if (v4[3] == &llvm::semPPCDoubleDouble)
        {
          v6 = v4[4];
        }

        v13 = ((v12 ^ *(v6 + 20)) >> 3) & 1;
        if (((v11 ^ 1) & 1) != 0 || v13)
        {
          if ((v11 ^ 1) & v13)
          {
            return 2;
          }

          else if ((v11 | v13) & 1) != 0 && (v11 & v13)
          {
            return (2 - result);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {

    return llvm::detail::IEEEFloat::compareAbsoluteValue(this, a2);
  }

  return result;
}

uint64_t llvm::APFloat::subtract(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, int a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    llvm::APFloat::changeSign(*(a1 + 1));
    v6 = llvm::APFloat::changeSign((*(a1 + 1) + 24));
    v7 = llvm::detail::DoubleAPFloat::addWithSpecial(v6, a1, a2, a1);
    llvm::APFloat::changeSign(*(a1 + 1));
    llvm::APFloat::changeSign((*(a1 + 1) + 24));
    return v7;
  }

  else
  {

    return llvm::detail::IEEEFloat::addOrSubtract(a1, a2, a3, 1);
  }
}

void *llvm::APFloat::changeSign(void *this)
{
  v1 = this;
  for (i = *this; i == &llvm::semPPCDoubleDouble; i = v4)
  {
    this = llvm::APFloat::changeSign(v1[1]);
    v3 = v1[1];
    v4 = *(v3 + 24);
    v1 = (v3 + 24);
  }

  v5 = *(i + 20);
  v6 = *(v1 + 20);
  if (v5 != 2 || (v6 & 5 | 2) != 3)
  {
    *(v1 + 20) = v6 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::DoubleAPFloat::addWithSpecial(int a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, llvm::detail::IEEEFloat **this, int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 1);
  v10 = *v9;
  v11 = v9;
  if (*v9 == &llvm::semPPCDoubleDouble)
  {
    v11 = *(v9 + 1);
  }

  if ((*(v11 + 20) & 7) == 1)
  {
    goto LABEL_4;
  }

  v14 = *(a3 + 1);
  v15 = *v14;
  v16 = v14;
  if (*v14 == &llvm::semPPCDoubleDouble)
  {
    v16 = *(v14 + 8);
  }

  if ((*(v16 + 20) & 7) == 1)
  {
    goto LABEL_11;
  }

  v17 = v9;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v17 = *(v9 + 1);
  }

  if ((*(v17 + 20) & 7) == 3)
  {
LABEL_11:
    v12 = this;
    v13 = a3;
    goto LABEL_12;
  }

  v21 = *(a3 + 1);
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v21 = *(v14 + 8);
  }

  if ((*(v21 + 20) & 7) == 3)
  {
    goto LABEL_4;
  }

  v22 = v9;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v22 = *(v9 + 1);
  }

  if ((*(v22 + 20) & 7) != 0)
  {
    goto LABEL_31;
  }

  v23 = *(a3 + 1);
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v23 = *(v14 + 8);
  }

  if ((*(v23 + 20) & 7) != 0)
  {
    goto LABEL_31;
  }

  v24 = v9;
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    v24 = *(v9 + 1);
  }

  v25 = *(v24 + 20);
  v26 = *(a3 + 1);
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v26 = *(v14 + 8);
  }

  if (((v25 >> 3) & 1) == (*(v26 + 20) & 8) >> 3)
  {
LABEL_31:
    v28 = v9;
    if (v10 == &llvm::semPPCDoubleDouble)
    {
      v28 = *(v9 + 1);
    }

    if ((*(v28 + 20) & 7) != 0)
    {
      if (v15 == &llvm::semPPCDoubleDouble)
      {
        v14 = *(v14 + 8);
      }

      if ((*(v14 + 20) & 7) == 0)
      {
        goto LABEL_11;
      }

      llvm::APFloat::Storage::Storage(v54, v9);
      llvm::APFloat::Storage::Storage(v53, (*(a2 + 1) + 24));
      llvm::APFloat::Storage::Storage(v52, *(a3 + 1));
      llvm::APFloat::Storage::Storage(v51, (*(a3 + 1) + 24));
      v29 = llvm::APFloat::Storage::Storage(&v58, v54);
      v18 = llvm::APFloat::add(v29, v52, a5);
      if (v58 == &llvm::semPPCDoubleDouble)
      {
        v30 = *(v59 + 20);
      }

      else
      {
        v30 = v60;
      }

      if ((v30 & 6) != 0)
      {
        llvm::APFloat::Storage::Storage(v57, v54);
        v31 = llvm::APFloat::subtract(v57, &v58, a5);
        llvm::APFloat::Storage::Storage(v55, v57);
        v32 = llvm::APFloat::add(v55, v52, a5);
        v33 = llvm::APFloat::add(v57, &v58, a5);
        v34 = llvm::APFloat::subtract(v57, v54, a5);
        llvm::APFloat::changeSign(v57);
        v35 = llvm::APFloat::add(v55, v57, a5);
        v36 = llvm::APFloat::add(v55, v53, a5);
        v37 = v31 | v32 | v33 | v34 | v35 | v36 | llvm::APFloat::add(v55, v51, a5) | v18;
        if (v55[0] == &llvm::semPPCDoubleDouble)
        {
          v38 = *(v55[1] + 20);
        }

        else
        {
          v38 = v56;
        }

        if ((v38 & 7) != 3 || (v38 & 8) != 0)
        {
          llvm::APFloat::Storage::operator=(this[1], &v58);
          v37 = llvm::APFloat::add(this[1], v55, a5) | v37;
          v46 = this[1];
          if (*v46 == &llvm::semPPCDoubleDouble)
          {
            v47 = *(*(v46 + 1) + 20);
          }

          else
          {
            v47 = *(v46 + 20);
          }

          if ((v47 & 7u) < 2)
          {
            llvm::APFloat::makeZero(v46 + 3, 0);
            v45 = 0;
            v18 = v37;
          }

          else
          {
            llvm::APFloat::Storage::operator=(v46 + 3, &v58);
            v18 = llvm::APFloat::subtract((this[1] + 24), this[1], a5);
            v37 = v18 | llvm::APFloat::add(this[1] + 24, v55, a5) | v37;
            v45 = 1;
          }
        }

        else
        {
          llvm::APFloat::Storage::operator=(this[1], &v58);
          llvm::APFloat::makeZero(this[1] + 3, 0);
          v45 = 0;
          v18 = 0;
        }

        llvm::APFloat::Storage::~Storage(v55);
        llvm::APFloat::Storage::~Storage(v57);
        if (!v45)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if ((v30 & 7) != 0)
        {
          goto LABEL_66;
        }

        v39 = v54;
        v40 = llvm::APFloat::compareAbsoluteValue(v54, v52);
        llvm::APFloat::Storage::operator=(&v58, v51);
        v41 = llvm::APFloat::add(&v58, v53, a5);
        if (v40 == 2)
        {
          v42 = v52;
        }

        else
        {
          v42 = v54;
        }

        if (v40 != 2)
        {
          v39 = v52;
        }

        v43 = llvm::APFloat::add(&v58, v42, a5);
        v18 = v43 | v41 | llvm::APFloat::add(&v58, v39, a5);
        v44 = v58 == &llvm::semPPCDoubleDouble ? *(v59 + 20) : v60;
        if ((v44 & 7u) < 2)
        {
LABEL_66:
          llvm::APFloat::Storage::operator=(this[1], &v58);
          llvm::APFloat::makeZero(this[1] + 3, 0);
          goto LABEL_67;
        }

        llvm::APFloat::Storage::operator=(this[1], &v58);
        llvm::APFloat::Storage::Storage(v57, v53);
        v48 = llvm::APFloat::add(v57, v51, a5);
        llvm::APFloat::Storage::operator=((this[1] + 24), v39);
        v49 = llvm::APFloat::subtract((this[1] + 24), &v58, a5);
        v50 = llvm::APFloat::add(this[1] + 24, v42, a5);
        v37 = v48 | v49 | v50 | llvm::APFloat::add(this[1] + 24, v57, a5) | v18;
        llvm::APFloat::Storage::~Storage(v57);
      }

      v18 = v37;
LABEL_67:
      llvm::APFloat::Storage::~Storage(&v58);
      llvm::APFloat::Storage::~Storage(v51);
      llvm::APFloat::Storage::~Storage(v52);
      llvm::APFloat::Storage::~Storage(v53);
      llvm::APFloat::Storage::~Storage(v54);
      goto LABEL_13;
    }

LABEL_4:
    v12 = this;
    v13 = a2;
LABEL_12:
    llvm::detail::DoubleAPFloat::operator=(v12, v13);
    v18 = 0;
    goto LABEL_13;
  }

  v27 = this[1];
  if (*v27 == &llvm::semPPCDoubleDouble)
  {
    v27 = *(v27 + 1);
  }

  llvm::detail::DoubleAPFloat::makeNaN(this, 0, (*(v27 + 20) & 8) != 0, 0);
  v18 = 1;
LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void llvm::detail::DoubleAPFloat::makeNaN(llvm::APFloat ***this, char a2, char a3, const llvm::APInt *a4)
{
  llvm::APFloat::makeNaN(this[1], a2, a3, a4);
  v5 = (this[1] + 3);

  llvm::APFloat::makeZero(v5, 0);
}

uint64_t llvm::detail::DoubleAPFloat::multiply(llvm::detail::DoubleAPFloat *this, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  v7 = *v6;
  v8 = v6;
  if (*v6 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v6 + 8);
  }

  if ((*(v8 + 20) & 7) == 1)
  {
LABEL_4:
    v9 = this;
LABEL_9:
    llvm::detail::DoubleAPFloat::operator=(this, v9);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v10 = *(a2 + 1);
  v11 = *v10;
  v12 = v10;
  if (*v10 == &llvm::semPPCDoubleDouble)
  {
    v12 = *(v10 + 8);
  }

  if ((*(v12 + 20) & 7) == 1)
  {
    goto LABEL_8;
  }

  v16 = *(this + 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v16 = *(v6 + 8);
  }

  if ((*(v16 + 20) & 7) == 3)
  {
    v17 = *(a2 + 1);
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v17 = *(v10 + 8);
    }

    if ((*(v17 + 20) & 7) == 0)
    {
      goto LABEL_24;
    }
  }

  v18 = *(this + 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v18 = *(v6 + 8);
  }

  if ((*(v18 + 20) & 7) == 0)
  {
    v19 = *(a2 + 1);
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v19 = *(v10 + 8);
    }

    if ((*(v19 + 20) & 7) == 3)
    {
LABEL_24:
      llvm::APFloat::makeNaN(*(this + 1), 0, 0, 0);
      llvm::APFloat::makeZero((*(this + 1) + 24), 0);
      goto LABEL_10;
    }
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v20 = *(*(v6 + 8) + 20);
  }

  else
  {
    v20 = *(v6 + 20);
  }

  v21 = v20 & 7;
  if (v21 == 3 || !v21)
  {
    goto LABEL_4;
  }

  if (v11 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(v10 + 8);
  }

  v22 = *(v10 + 20) & 7;
  if (v22 == 3 || !v22)
  {
LABEL_8:
    v9 = a2;
    goto LABEL_9;
  }

  llvm::APFloat::Storage::Storage(v40, v6);
  llvm::APFloat::Storage::Storage(v39, (*(this + 1) + 24));
  llvm::APFloat::Storage::Storage(v38, *(a2 + 1));
  llvm::APFloat::Storage::Storage(v37, (*(a2 + 1) + 24));
  llvm::APFloat::Storage::Storage(v35, v40);
  v13 = llvm::APFloat::multiply(v35, v38, a3);
  if (v35[0] == &llvm::semPPCDoubleDouble)
  {
    v23 = *(v35[1] + 20);
  }

  else
  {
    v23 = v36;
  }

  if ((v23 & 6) != 0 && (v23 & 7) != 3)
  {
    llvm::APFloat::Storage::Storage(v34, v40);
    llvm::APFloat::changeSign(v35);
    v24 = llvm::APFloat::fusedMultiplyAdd(v34, v38, v35, a3);
    llvm::APFloat::changeSign(v35);
    llvm::APFloat::Storage::Storage(v32, v40);
    v25 = llvm::APFloat::multiply(v32, v37, a3);
    llvm::APFloat::Storage::Storage(v31, v39);
    v26 = llvm::APFloat::multiply(v31, v38, a3);
    v27 = llvm::APFloat::add(v32, v31, a3);
    v28 = llvm::APFloat::add(v34, v32, a3);
    llvm::APFloat::Storage::~Storage(v31);
    llvm::APFloat::Storage::~Storage(v32);
    llvm::APFloat::Storage::Storage(v32, v35);
    v13 = v24 | v25 | v26 | v27 | v28 | llvm::APFloat::add(v32, v34, a3) | v13;
    llvm::APFloat::Storage::operator=(*(this + 1), v32);
    if (v32[0] == &llvm::semPPCDoubleDouble)
    {
      v29 = *(v32[1] + 20);
    }

    else
    {
      v29 = v33;
    }

    if ((v29 & 7u) < 2)
    {
      llvm::APFloat::makeZero((*(this + 1) + 24), 0);
    }

    else
    {
      v30 = llvm::APFloat::subtract(v35, v32, a3);
      v13 = v30 | llvm::APFloat::add(v35, v34, a3) | v13;
      llvm::APFloat::Storage::operator=((*(this + 1) + 24), v35);
    }

    llvm::APFloat::Storage::~Storage(v32);
    llvm::APFloat::Storage::~Storage(v34);
  }

  else
  {
    llvm::APFloat::Storage::operator=(*(this + 1), v35);
    llvm::APFloat::makeZero((*(this + 1) + 24), 0);
  }

  llvm::APFloat::Storage::~Storage(v35);
  llvm::APFloat::Storage::~Storage(v37);
  llvm::APFloat::Storage::~Storage(v38);
  llvm::APFloat::Storage::~Storage(v39);
  llvm::APFloat::Storage::~Storage(v40);
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t llvm::APFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::multiply(a1, a2, a3);
  }

  else
  {
    return llvm::detail::IEEEFloat::multiply(a1, a2, a3);
  }
}

uint64_t llvm::APFloat::fusedMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v25);
    llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v27, &v25);
    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }

    llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v22);
    llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v25, &v22);
    llvm::detail::DoubleAPFloat::bitcastToAPInt(a3, &v20);
    llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v24, &v20);
    llvm::APFloat::fusedMultiplyAdd(&v27, &v25, &v24, a4);
    llvm::APFloat::Storage::~Storage(&v24);
    if (v21 >= 0x41 && v20)
    {
      MEMORY[0x25F891010](v20, 0x1000C8000313F17);
    }

    llvm::APFloat::Storage::~Storage(&v25);
    if (v23 >= 0x41 && v22)
    {
      MEMORY[0x25F891010](v22, 0x1000C8000313F17);
    }

    llvm::APFloat::bitcastToAPInt(&v27, &v24);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v25, &llvm::semPPCDoubleDouble);
  }

  v8 = *(a1 + 20);
  *(a1 + 20) = *(a2 + 20) & 8 ^ v8;
  v9 = v8 & 6;
  v10 = v8 & 7;
  if (v9)
  {
    v11 = v10 == 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ((*(a2 + 20) & 6) != 0 ? (v12 = (*(a2 + 20) & 7) == 3) : (v12 = 1), v12 || (*(a3 + 20) & 6) == 0))
  {
    if (llvm::detail::IEEEFloat::multiplySpecials(a1, a2))
    {
      v15 = 1;
    }

    else
    {
      v15 = llvm::detail::IEEEFloat::addOrSubtract(a1, a3, a4, 0);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v27, a3);
    v13 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2, &v27, 0);
    if ((*(v27 + 8) - 64) <= 0xFFFFFF7F && v28)
    {
      MEMORY[0x25F891010](v28, 0x1000C8000313F17);
    }

    v14 = llvm::detail::IEEEFloat::normalize(a1, a4, v13);
    if (v13)
    {
      v15 = v14 | 0x10;
    }

    else
    {
      v15 = v14;
    }

    v16 = *(a1 + 20);
    if ((v16 & 7) == 3 && (v15 & 8) == 0 && ((*(a3 + 20) ^ v16) & 8) != 0)
    {
      v17 = v16 & 0xF3;
      *(a1 + 20) = v17 | (8 * (a4 == 3));
      if (*(*a1 + 20) != 2)
      {
        v17 |= 8 * (a4 == 3);
      }

      *(a1 + 20) = v17;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void llvm::detail::DoubleAPFloat::divide(llvm::detail::IEEEFloat **a1, llvm::detail::IEEEFloat **a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v7);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v9, &v7);
  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v5);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v7, &v5);
  llvm::APFloat::divide(v9, &v7, a3);
  llvm::APFloat::Storage::~Storage(&v7);
  if (v6 >= 0x41)
  {
    if (v5)
    {
      MEMORY[0x25F891010](v5, 0x1000C8000313F17);
    }
  }

  llvm::APFloat::bitcastToAPInt(v9, &v5);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v7, &llvm::semPPCDoubleDouble);
}

uint64_t llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(llvm::detail::IEEEFloat **this@<X0>, llvm::APInt *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::APFloat::bitcastToAPInt(this[1], &v9);
  if (v10 >= 0x41)
  {
    v4 = v9;
  }

  else
  {
    v4 = &v9;
  }

  v11 = *v4;
  llvm::APFloat::bitcastToAPInt((this[1] + 24), &v7);
  if (v8 > 0x40)
  {
    v12 = *v7;
    MEMORY[0x25F891010]();
  }

  else
  {
    v12 = v7;
  }

  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  *(a2 + 2) = 128;
  result = llvm::APInt::initFromArray(a2, &v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::APFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, uint64_t a3)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::divide(a1, a2, a3);
  }

  return llvm::detail::IEEEFloat::divide(a1, a2, a3);
}

void llvm::detail::DoubleAPFloat::mod(llvm::detail::IEEEFloat **this, llvm::detail::IEEEFloat **a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(this, &v5);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v7, &v5);
  if (v6 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v3);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(&v5, &v3);
  llvm::APFloat::mod(v7, &v5);
  llvm::APFloat::Storage::~Storage(&v5);
  if (v4 >= 0x41)
  {
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  llvm::APFloat::bitcastToAPInt(v7, &v3);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v5, &llvm::semPPCDoubleDouble);
}

uint64_t llvm::APFloat::mod(llvm::detail::IEEEFloat **this, llvm::detail::IEEEFloat **a2)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::mod(this, a2);
  }

  return llvm::detail::IEEEFloat::mod(this, a2);
}

void llvm::detail::DoubleAPFloat::makeLargest(void ***this, int a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6 = 64;
  v5 = 0x7FEFFFFFFFFFFFFFLL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v7, &v5);
  llvm::APFloat::Storage::operator=(this[1], v7);
  llvm::APFloat::Storage::~Storage(v7);
  v6 = 64;
  v5 = 0x7C8FFFFFFFFFFFFELL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(v7, &v5);
  llvm::APFloat::Storage::operator=(this[1] + 3, v7);
  llvm::APFloat::Storage::~Storage(v7);
  if (a2)
  {
    llvm::APFloat::changeSign(this[1]);
    llvm::APFloat::changeSign(this[1] + 3);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void llvm::APFloat::makeNaN(llvm::APFloat **this, char a2, char a3, const llvm::APInt *a4)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::APFloat::makeNaN(this[1], a2, a3, a4);
    v5 = (this[1] + 24);

    llvm::APFloat::makeZero(v5, 0);
  }

  else
  {

    llvm::detail::IEEEFloat::makeNaN(this, a2, a3, a4);
  }
}

uint64_t llvm::detail::DoubleAPFloat::compare(llvm::APFloat **this, const llvm::APFloat **a2)
{
  result = llvm::APFloat::compare(this[1], a2[1]);
  if (result == 1)
  {
    v5 = (this[1] + 24);
    v6 = (a2[1] + 24);

    return llvm::APFloat::compare(v5, v6);
  }

  return result;
}

uint64_t llvm::APFloat::compare(llvm::APFloat **this, const llvm::APFloat **a2)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::compare(this, a2);
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(this, a2);
  }
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(llvm::APFloat **this, const llvm::APFloat **a2)
{
  result = llvm::APFloat::bitwiseIsEqual(this[1], a2[1]);
  if (result)
  {
    v5 = (this[1] + 24);
    v6 = (a2[1] + 24);

    return llvm::APFloat::bitwiseIsEqual(v5, v6);
  }

  return result;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::DoubleAPFloat *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (v3)
  {
    v10 = llvm::hash_value(v3, a2);
    v9 = llvm::hash_value((*(this + 1) + 24), v4);
    memset(v12, 0, sizeof(v12));
    memset(v11, 0, sizeof(v11));
    v13 = 0;
    v14 = 0xFF51AFD7ED558CCDLL;
    result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v11, 0, v11, v12, &v10, &v9);
  }

  else
  {
    v6 = HIDWORD(*this) ^ 0xFF51AFD7ED558CCDLL;
    v7 = 0x9DDFEA08EB382D69 * (v6 ^ (8 * *this + 8));
    result = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, unint64_t *a4)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::hash_value(this, a2);
  }

  else
  {
    return llvm::detail::hash_value(this, a2, a3, a4);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v9, &llvm::semPPCDoubleDoubleLegacy);
  llvm::APFloat::convertFromString(v9, a2, a3, a4);
  llvm::APFloat::bitcastToAPInt(v9, &v7);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v8, &llvm::semPPCDoubleDouble);
}

void llvm::APFloat::convertFromString(llvm::detail::IEEEFloat *this@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, llvm *a5@<X8>)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString(this, a2, a3, a4);
  }

  llvm::detail::IEEEFloat::convertFromString(this, a2, a3, a4, a5);
}

uint64_t llvm::detail::DoubleAPFloat::convertToInteger(llvm::detail::IEEEFloat **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v16);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v18, &v16);
  v13 = llvm::APFloat::convertToInteger(v18, a2, a3, a4, a5, a6, a7);
  llvm::APFloat::Storage::~Storage(v18);
  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x25F891010](v16, 0x1000C8000313F17);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::convertToInteger(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertToInteger(a1, a2, a3, a4, a5, a6, a7);
  }
}

void llvm::detail::DoubleAPFloat::convertFromAPInt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  llvm::detail::IEEEFloat::IEEEFloat(v9, &llvm::semPPCDoubleDoubleLegacy);
  llvm::APFloat::convertFromAPInt(v9, a2, a3, a4);
  llvm::APFloat::bitcastToAPInt(v9, &v7);
  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v8, &llvm::semPPCDoubleDouble);
}

uint64_t llvm::APFloat::convertFromAPInt(llvm::APInt *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*this == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt(this, a2, a3, a4);
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(this, a2, a3, a4);
}

void llvm::detail::DoubleAPFloat::toString(llvm::detail::IEEEFloat **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v10);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v12, &v10);
  llvm::APFloat::toString(v12, a2, a3, a4, a5);
  llvm::APFloat::Storage::~Storage(v12);
  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x25F891010](v10, 0x1000C8000313F17);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void *llvm::APFloat::Storage::Storage(void *a1, uint64_t *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 == &llvm::semPPCDoubleDouble)
  {
    v4 = *a2;
    v7 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v7, a2);
    llvm::APFloat::APFloat(v9, &v7, v4);
    llvm::detail::IEEEFloat::IEEEFloat(v8, &llvm::semIEEEdouble);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1, &llvm::semPPCDoubleDouble);
  }

  *a1 = &llvm::semBogus;
  llvm::detail::IEEEFloat::operator=(a1, a2);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

llvm::detail::IEEEFloat *llvm::APFloat::APFloat(llvm::detail::IEEEFloat *a1, void *a2, char *a3, unint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = llvm::APFloat::Storage::Storage<>(a1, a2);
  llvm::APFloat::convertFromString(v7, a3, a4, 1, &v13);
  v8 = v14;
  if (v14)
  {
    v9 = v13;
    v13 = 0;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if ((v8 & 1) != 0 && v13)
  {
    (*(*v13 + 8))(v13);
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v14[3] = *MEMORY[0x277D85DE8];
  if (*a1 == a2)
  {
    v8 = 0;
    *a4 = 0;
LABEL_15:
    v10 = *MEMORY[0x277D85DE8];
    return v8;
  }

  if (*a1 == &llvm::semPPCDoubleDouble)
  {
    v8 = llvm::detail::IEEEFloat::convert(*(a1 + 8), a2, a3, a4);
    v9 = a1;
    if (*a1 == &llvm::semPPCDoubleDouble)
    {
      v9 = *(a1 + 8);
    }

    v11 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v11, v9);
    llvm::APFloat::APFloat(v14, &v11, a2);
    llvm::APFloat::Storage::operator=(a1, v14);
    llvm::APFloat::Storage::~Storage(v14);
    if ((v11[2] - 64) <= 0xFFFFFF7F && v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }

    goto LABEL_15;
  }

  if (a2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::IEEEFloat::convert(a1, &llvm::semPPCDoubleDoubleLegacy, a3, a4);
    llvm::detail::IEEEFloat::bitcastToAPInt(a1, &v13);
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, &llvm::semPPCDoubleDouble);
  }

  v6 = *MEMORY[0x277D85DE8];

  return llvm::detail::IEEEFloat::convert(a1, a2, a3, a4);
}

uint64_t llvm::APFloat::convertToInteger(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  v14 = v16;
  v15 = 0x400000000;
  llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(&v14, (v8 + 63) >> 6);
  v9 = llvm::APFloat::convertToInteger(a1, v14, v15, v8, (*(a2 + 12) & 1) == 0, a3, a4);
  v13 = v8;
  llvm::APInt::initFromArray(&v12, v14);
  if (*(a2 + 8) >= 0x41u && *a2)
  {
    MEMORY[0x25F891010](*a2, 0x1000C8000313F17);
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  v13 = 0;
  if (v14 != v16)
  {
    free(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

double llvm::APFloat::convertToDouble(llvm::APFloat *this)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (*this == &llvm::semIEEEdouble)
  {
    v5 = *MEMORY[0x277D85DE8];

    return llvm::detail::IEEEFloat::convertToDouble(this);
  }

  else
  {
    llvm::APFloat::Storage::Storage(v7, this);
    llvm::APFloat::convert(v7, &llvm::semIEEEdouble, 1, &v6);
    if (v7[0] == &llvm::semPPCDoubleDouble)
    {
      v1 = v7[1];
    }

    else
    {
      v1 = v7;
    }

    v2 = llvm::detail::IEEEFloat::convertToDouble(v1);
    llvm::APFloat::Storage::~Storage(v7);
    v3 = *MEMORY[0x277D85DE8];
    return v2;
  }
}

float llvm::APFloat::convertToFloat(llvm::APFloat *this)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (*this == &llvm::semIEEEsingle)
  {
    v5 = *MEMORY[0x277D85DE8];

    return llvm::detail::IEEEFloat::convertToFloat(this);
  }

  else
  {
    llvm::APFloat::Storage::Storage(v7, this);
    llvm::APFloat::convert(v7, &llvm::semIEEEsingle, 1, &v6);
    if (v7[0] == &llvm::semPPCDoubleDouble)
    {
      v1 = v7[1];
    }

    else
    {
      v1 = v7;
    }

    v2 = llvm::detail::IEEEFloat::convertToFloat(v1);
    llvm::APFloat::Storage::~Storage(v7);
    v3 = *MEMORY[0x277D85DE8];
    return v2;
  }
}

uint64_t llvm::APInt::clearUnusedBits(uint64_t this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    if (v1 >= 0x41)
    {
      v3 = (*this + 8 * (((v1 + 63) >> 6) - 1));
      goto LABEL_5;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = this;
LABEL_5:
  *v3 &= v2;
  return this;
}