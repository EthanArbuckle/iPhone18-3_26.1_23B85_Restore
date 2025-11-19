void *LTMComputeV2::LTMCompute::levelSmoothHFFCB(LTMComputeV2::LTMCompute *this, float *a2, const float *a3, const float *a4, int a5, int a6, uint64_t a7, __n128 a8)
{
  v261 = a8;
  v263 = a4;
  v267 = a2;
  v11 = this + 61440;
  MEMORY[0x1EEE9AC00](this);
  v266 = &v243 - 4 * v12;
  v265 = v13;
  v264 = v14;
  v15 = v13 * v14;
  v16 = 3 * v13 * v14;
  v17 = 6 * v13 * v14;
  LOBYTE(v12) = v11[1971];
  v280 = (v13 * v14);
  if (v12)
  {
    v18 = 0;
  }

  else
  {
    v11[1971] = 1;
    v18 = (this + 46464);
    if (v17 >= 2112)
    {
      v19 = 2112;
    }

    else
    {
      v19 = 6 * v15;
    }

    bzero(this + 46464, 4 * v19 + 24);
    v15 = v280;
  }

  v268 = v18;
  v20 = v15;
  LTMComputeV2::LTMCompute::HFFspatialMapCalc(this, v15, a3, &v18->f32[v17], v18);
  v21 = v264;
  v22 = v265;
  LTMComputeV2::LTMCompute::HFFspatialMapFilter(this, v264, v265, v268->f32, a3);
  v23 = v21;
  v24 = v268;
  LTMComputeV2::LTMCompute::HFFspatialMapFilter(this, v23, v22, v268->f32, a3);
  if (v11[1969])
  {
    v27 = 0;
  }

  else
  {
    v11[1969] = 1;
    v27 = this + 29520;
    if (v20 >= 2052)
    {
      v28 = 2052;
    }

    else
    {
      v28 = v20;
    }

    bzero(this + 29520, 4 * v28 + 264);
  }

  v29 = 0;
  LODWORD(v30) = 0;
  v260 = (v27 + 24);
  v31 = v20;
  v32 = v267;
  v33 = v266;
  v34 = v20;
  do
  {
    v35 = 0;
    v36 = v24;
    do
    {
      v37 = 0;
      v30 = v30;
      do
      {
        *&v27[4 * v30++ + 264] = v36[v37];
        v37 += 2;
      }

      while (v37 != 16);
      ++v35;
      v36 += 32;
    }

    while (v35 != 6);
    ++v29;
    v24 += v20;
  }

  while (v29 != 6);
  v38 = 0;
  LODWORD(v39) = 0;
  v40 = v263;
  do
  {
    v41 = 0;
    v39 = v39;
    do
    {
      *&v281[4 * v39++] = v40[v41];
      v41 += 2;
    }

    while (v41 != 16);
    ++v38;
    v40 += 32;
  }

  while (v38 != 6);
  v42 = v20 + 6;
  if (v11[1968])
  {
    v43 = 0;
  }

  else
  {
    v44 = v42 + 8 * v20;
    v11[1968] = 1;
    v43 = this + 21048;
    if (v44 >= 2118)
    {
      v44 = 2118;
    }

    bzero(this + 21048, 4 * v44);
    v34 = v280;
    v33 = v266;
    v32 = v267;
  }

  v45 = 5 * v34;
  if (v11[1972])
  {
    v262 = 0;
  }

  else
  {
    v11[1972] = 1;
    if (v45 >= 2118)
    {
      v46 = 2118;
    }

    else
    {
      v46 = 5 * v34;
    }

    v262 = (this + 54936);
    bzero(this + 54936, 4 * v46);
    v34 = v280;
    v33 = v266;
    v32 = v267;
  }

  if (a7 <= 0)
  {
    v241 = a7;
  }

  else
  {
    v244 = v11;
    v47 = 0;
    v48 = 0;
    v49 = v42 + 4 * v34;
    v50 = v42 + v34;
    v278 = &v43[4 * v42];
    v51 = v42 + v17;
    v52 = &v43[4 * v42 + 4 * v34];
    v257 = (v27 + 48);
    v53 = v42 + v16;
    v271 = &v43[4 * v49];
    v54 = v42 + v45;
    v270 = &v43[4 * v42 + 4 * v17];
    v55 = v42 - v34 + 8 * v34;
    v56 = &v43[8 * v34 + 4 * v42];
    v57 = &v43[4 * v53];
    v58 = &v43[4 * v54];
    v59 = v43;
    v60 = &v43[4 * v55];
    v61 = &v262->f32[v31];
    v250 = v262 + 8 * v34;
    v269 = &v262->i8[4 * v16];
    v275 = &v262[v34];
    v62 = v34 & 0xFFFFFFFC;
    v63 = v34 & 0xFFFFFFF8;
    v279 = v61;
    v249 = (v61 + 4);
    v256 = v275;
    v248 = (v275 + 16);
    v274 = v269;
    v64 = vdupq_n_s32(0x3E19999Au);
    v255 = v64;
    v272 = &v59[4 * v49];
    v246 = v272 + 1;
    v65 = 4 * a7;
    v66 = a7;
    v67 = v57;
    v252 = 8 * v34;
    v273 = &v59[4 * v51];
    v245 = v273 + 1;
    v68 = 8 * v66;
    v259 = v66;
    v243 = v66;
    v258 = v52;
    v277 = v57;
    v247 = vdupq_n_s32(0x3EA8F5C3u);
    v254 = &v59[4 * v50];
    v253 = v262 + v252;
    v251 = 8 * v66;
    do
    {
      v69 = 0;
      v70 = v56;
      v71 = v278;
      v72 = v47;
      do
      {
        v73 = 0;
        v74 = &v32[v72];
        v72 += v68;
        do
        {
          v64.n128_u32[0] = *v74;
          *&v71[v73] = *v74;
          *(v70 + v73) = v64.n128_u32[0];
          v74 = (v74 + v65);
          v73 += 4;
        }

        while (v73 != 32);
        ++v69;
        v71 += 32;
        v70 = (v70 + 32);
      }

      while (v69 != 6);
      v276 = v47;
      AuxCompute::levelSmooth3x3SinglePlane(v56, 6, 8, LTMComputeV2::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV2::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v25, v64, v26);
      v76 = *v56;
      v77 = *(v56 + 1);
      v78 = *(v56 + 3);
      *(v58 + 2) = *(v56 + 2);
      *(v58 + 3) = v78;
      *v58 = v76;
      *(v58 + 1) = v77;
      v79 = *(v56 + 4);
      v80 = *(v56 + 5);
      v81 = *(v56 + 7);
      *(v58 + 6) = *(v56 + 6);
      *(v58 + 7) = v81;
      *(v58 + 4) = v79;
      *(v58 + 5) = v80;
      v82 = *(v56 + 8);
      v83 = *(v56 + 9);
      v84 = *(v56 + 11);
      *(v58 + 10) = *(v56 + 10);
      *(v58 + 11) = v84;
      *(v58 + 8) = v82;
      *(v58 + 9) = v83;
      v85 = -4;
      v86 = v278;
      v87 = v56;
      v88 = v67;
      do
      {
        v89 = *v86++;
        v90 = v89;
        v91 = *v87++;
        v92 = v91;
        v93 = vsubq_f32(v90, v91);
        *v88++ = v93;
        v85 += 4;
      }

      while (v85 < 0x2C);
      AuxCompute::levelSmooth3x3SinglePlane(v58, 6, 8, LTMComputeV2::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV2::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v75, v93, v92);
      v94 = *v58;
      v95 = *(v58 + 1);
      v96 = *(v58 + 3);
      *(v60 + 2) = *(v58 + 2);
      *(v60 + 3) = v96;
      *v60 = v94;
      *(v60 + 1) = v95;
      v97 = *(v58 + 4);
      v98 = *(v58 + 5);
      v99 = *(v58 + 7);
      *(v60 + 6) = *(v58 + 6);
      *(v60 + 7) = v99;
      *(v60 + 4) = v97;
      *(v60 + 5) = v98;
      v100 = *(v58 + 8);
      v101 = *(v58 + 9);
      v102 = *(v58 + 11);
      *(v60 + 10) = *(v58 + 10);
      *(v60 + 11) = v102;
      *(v60 + 8) = v100;
      *(v60 + 9) = v101;
      v104.n128_f32[0] = AuxCompute::levelSmooth3x3SinglePlane(v60, 6, 8, LTMComputeV2::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV2::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v103, v100, v101);
      AuxCompute::levelSmooth3x3SinglePlane(v60, 6, 8, LTMComputeV2::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV2::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v105, v104, v106);
      v107 = 0;
      v108 = 0;
      v109 = v262;
      v110 = v274;
      v111 = v253;
      do
      {
        v112 = 0;
        v113 = flt_1C93341B4[v107];
        v114 = 1.0 - v113;
        v115 = v108;
        v116 = &LTMComputeV2::LTMCompute::upsampleHFFInterpsIndices + 4 * v108;
        v117 = &v110[4 * v108];
        v118 = &v111[4 * v108];
        v119 = v109->i64 + 4 * v108;
        do
        {
          v120 = dword_1C93341E4[v112];
          v121 = *&v116[4 * v112];
          v122 = 4 * v121;
          v123 = v122 + 4;
          v124 = (v120 * *(v60 + v122 + 4)) + ((1.0 - v120) * *(v60 + v122));
          v125 = (v122 + 32);
          v126 = *(v60 + v122 + 32);
          v122 += 36;
          *&v117[4 * v112] = (v113 * ((v120 * *(v60 + v122)) + ((1.0 - v120) * v126))) + (v114 * v124);
          *&v118[4 * v112] = (v113 * ((v120 * *&v58[v122]) + ((1.0 - v120) * *(v125 + v58)))) + (v114 * ((v120 * *&v58[v123]) + ((1.0 - v120) * *&v58[4 * v121])));
          *(v119 + 4 * v112++) = (v113 * ((v120 * *(v56 + v122)) + ((1.0 - v120) * *(v125 + v56)))) + (v114 * ((v120 * *(v56 + v123)) + ((1.0 - v120) * *(v56 + v121))));
        }

        while (v112 != 16);
        ++v107;
        v108 = v115 + 16;
      }

      while (v107 != 12);
      v127 = v277;
      if (v62 < 1)
      {
        v136 = 0;
        v132 = v280;
      }

      else
      {
        v128 = 0;
        v129 = v250;
        v130 = v269;
        v131 = v270;
        v132 = v280;
        do
        {
          v133 = *v129++;
          v134 = v133;
          v135 = *v130++;
          *v131++ = vsubq_f32(v134, v135);
          v128 += 4;
        }

        while (v128 < v62);
        v136 = v128;
      }

      if (v136 < v132)
      {
        v137 = v132 - v136;
        v138 = &v273->f32[v136];
        v139 = &v110[4 * v136];
        v140 = &v111[4 * v136];
        do
        {
          v141 = *v140++;
          v142 = v141;
          v143 = *v139++;
          *v138++ = v142 - v143;
          --v137;
        }

        while (v137);
      }

      if (v62 < 1)
      {
        v148 = 0;
        v147 = v252;
      }

      else
      {
        v144 = 0;
        v145 = v109;
        v146 = v271;
        v147 = v252;
        do
        {
          *v146++ = vsubq_f32(*v145, *(v145 + v147));
          v144 += 4;
          ++v145;
        }

        while (v144 < v62);
        v148 = v144;
      }

      if (v148 < v132)
      {
        v149 = v132 - v148;
        v150 = &v272->f32[v148];
        v151 = &v109->f32[v148];
        do
        {
          v152 = *(v151 + v147);
          v153 = *v151++;
          *v150++ = v153 - v152;
          --v149;
        }

        while (v149);
      }

      LTMComputeV2::LTMCompute::HFFHighFreqModulate(v125, v265, v264, v268->f32, v27 + 66, v127, v279, v27, v260, v257);
      v154 = 0;
      v155 = 0.0;
      v156 = 0.00000011921;
      do
      {
        v157 = *&v281[v154 * 4];
        v155 = v155 + (v157 * v127[v154]);
        v156 = v156 + v157;
        ++v154;
      }

      while (v154 != 48);
      v158 = 0;
      v159 = v275;
      v160 = v263;
      v161 = v155 / v156;
      v162 = v261.n128_f32[0];
      v163 = v280;
      v164 = v258;
      do
      {
        v165 = 0;
        do
        {
          *&v159[v165 * 4] = v161 * v160[v165];
          ++v165;
        }

        while ((v165 * 4) != 64);
        ++v158;
        v160 += 16;
        v159 += 64;
      }

      while (v158 != 12);
      if (v63 < 1)
      {
        v169 = 0;
      }

      else
      {
        v166 = 0;
        v167 = v249;
        do
        {
          v168 = vmulq_n_f32(*v167, v162);
          v167[-1] = vmulq_n_f32(v167[-1], v162);
          *v167 = v168;
          v166 += 8;
          v167 += 2;
        }

        while (v166 < v63);
        v169 = v166;
      }

      if (v169 < v163)
      {
        v170 = v163 - v169;
        v171 = &v279[v169];
        do
        {
          *v171 = *v171 * v162;
          ++v171;
          --v170;
        }

        while (v170);
      }

      if (v63 < 1)
      {
        v175 = 0;
      }

      else
      {
        v172 = 0;
        v173 = v248;
        do
        {
          v174 = vmulq_n_f32(*v173, v162);
          v173[-1] = vmulq_n_f32(v173[-1], v162);
          *v173 = v174;
          v172 += 8;
          v173 += 2;
        }

        while (v172 < v63);
        v175 = v172;
      }

      if (v175 < v163)
      {
        v176 = v163 - v175;
        v177 = &v256[4 * v175];
        do
        {
          *v177 = *v177 * v162;
          ++v177;
          --v176;
        }

        while (v176);
      }

      if (v63 < 1)
      {
        v182 = 0;
      }

      else
      {
        v178 = 0;
        v179 = v246;
        v180 = v247;
        do
        {
          v181 = vmulq_f32(*v179, v180);
          v179[-1] = vmulq_f32(v179[-1], v180);
          *v179 = v181;
          v178 += 8;
          v179 += 2;
        }

        while (v178 < v63);
        v182 = v178;
      }

      v183 = v255;
      if (v182 < v163)
      {
        v184 = v163 - v182;
        v185 = &v272->f32[v182];
        do
        {
          *v185 = *v185 * 0.33;
          ++v185;
          --v184;
        }

        while (v184);
      }

      if (v63 < 1)
      {
        v189 = 0;
      }

      else
      {
        v186 = 0;
        v187 = v245;
        do
        {
          v188 = vmulq_f32(*v187, v183);
          v187[-1] = vmulq_f32(v187[-1], v183);
          *v187 = v188;
          v186 += 8;
          v187 += 2;
        }

        while (v186 < v63);
        v189 = v186;
      }

      if (v189 < v163)
      {
        v190 = v163 - v189;
        v191 = &v273->f32[v189];
        do
        {
          *v191 = *v191 * 0.15;
          ++v191;
          --v190;
        }

        while (v190);
      }

      bzero(v164, 0x300uLL);
      if (v62 < 1)
      {
        v202 = 0;
        v32 = v267;
        v33 = v266;
        v203 = v280;
        v196 = v276;
        v197 = v164;
        v67 = v277;
        v198 = v254;
        v68 = v251;
      }

      else
      {
        v192 = 0;
        v193 = v269;
        v194 = v270;
        v195 = v164;
        v32 = v267;
        v33 = v266;
        v196 = v276;
        v197 = v164;
        v198 = v254;
        v68 = v251;
        do
        {
          v199 = *v193++;
          v200 = v199;
          v201 = *v194++;
          *v195++ = vaddq_f32(v200, v201);
          v192 += 4;
        }

        while (v192 < v62);
        v202 = v192;
        v203 = v280;
        v67 = v277;
      }

      if (v202 < v203)
      {
        v204 = v203 - v202;
        v205 = &v198[4 * v202];
        v206 = &v273->f32[v202];
        v207 = &v274[4 * v202];
        do
        {
          v208 = *v207++;
          v209 = v208;
          v210 = *v206++;
          *v205++ = v209 + v210;
          --v204;
        }

        while (v204);
      }

      if (v62 < 1)
      {
        v215 = 0;
      }

      else
      {
        v211 = 0;
        v212 = v197;
        v213 = v271;
        do
        {
          v214 = *v213++;
          *v212 = vaddq_f32(*v212, v214);
          ++v212;
          v211 += 4;
        }

        while (v211 < v62);
        v215 = v211;
      }

      if (v215 < v203)
      {
        v216 = v203 - v215;
        v217 = &v272->f32[v215];
        v218 = &v198[4 * v215];
        do
        {
          v219 = *v217++;
          *v218 = *v218 + v219;
          ++v218;
          --v216;
        }

        while (v216);
      }

      if (v62 < 1)
      {
        v224 = 0;
      }

      else
      {
        v220 = 0;
        v221 = v197;
        v222 = v279;
        do
        {
          v223 = *v222;
          v222 += 4;
          *v221 = vaddq_f32(*v221, v223);
          ++v221;
          v220 += 4;
        }

        while (v220 < v62);
        v224 = v220;
      }

      if (v224 < v203)
      {
        v225 = v203 - v224;
        v226 = &v279[v224];
        v227 = &v198[4 * v224];
        do
        {
          v228 = *v226++;
          *v227 = *v227 + v228;
          ++v227;
          --v225;
        }

        while (v225);
      }

      if (v62 < 1)
      {
        v233 = 0;
      }

      else
      {
        v229 = 0;
        v230 = v197;
        v231 = v275;
        do
        {
          v232 = *v231++;
          *v230 = vaddq_f32(*v230, v232);
          ++v230;
          v229 += 4;
        }

        while (v229 < v62);
        v233 = v229;
      }

      if (v233 < v203)
      {
        v234 = v203 - v233;
        v235 = &v256[4 * v233];
        v236 = &v198[4 * v233];
        do
        {
          v237 = *v235++;
          *v236 = *v236 + v237;
          ++v236;
          --v234;
        }

        while (v234);
      }

      v238 = 0;
      do
      {
        v239 = &v33[4 * v48];
        v240 = v197[v238 + 1];
        *v239 = v197[v238];
        *(v239 + 1) = v240;
        v64 = v197[v238 + 2];
        v26 = v197[v238 + 3];
        *(v239 + 2) = v64;
        *(v239 + 3) = v26;
        v48 += 16;
        v238 += 4;
      }

      while ((v238 * 16) != 768);
      v47 = v196 + 1;
    }

    while (v47 != v259);
    v11 = v244;
    v241 = v243;
  }

  result = memcpy(v32, v33, 768 * v241);
  *(v11 + 984) = 0;
  *(v11 + 1971) = 0;
  return result;
}

void *LTMComputeV2::LTMCompute::applyCBBlending(LTMComputeV2::LTMCompute *this, float *a2, const float *a3, __n128 a4, const float *a5, float a6)
{
  v51 = a4;
  v10 = memcpy(v52, a5, 0x300uLL);
  v11 = v51.n128_f32[0];
  v12 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v18 = vmulq_n_f32(*&v52[v12], v11);
    *&v52[v12] = v18;
    *&v52[v12 + 768] = vsubq_f32(_Q0, v18);
    v12 += 16;
  }

  while (v12 != 768);
  v19 = *(this + 5);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = 0;
      v23 = &a2[v21];
      v24 = &a3[v21];
      v21 += 192;
      do
      {
        v23[v22] = v23[v22] + ((((*&v52[v22 * 4 + 768] * v23[v22]) + (*&v52[v22 * 4] * v24[v22])) - v23[v22]) * a6);
        ++v22;
      }

      while (v22 != 192);
      ++v20;
    }

    while (v20 != v19);
  }

  MEMORY[0x1EEE9AC00](v10);
  v27 = (&v51 - 4 * v26);
  v28 = 0;
  v29 = 0;
  v30 = *(this + 5);
  v31 = a2 + 192;
  do
  {
    v32 = 0;
    v33 = v31;
    v34 = v29;
    do
    {
      v27->f32[v34] = a2[16 * v28 + v32];
      v29 = v34 + 1;
      if (v30 >= 2)
      {
        v35 = &v27->f32[v29];
        v36 = v30 - 1;
        v37 = v33;
        do
        {
          v38 = *v37;
          if (*v37 < v27->f32[v34])
          {
            v38 = v27->f32[v34];
          }

          *v35++ = v38;
          v37 += 192;
          ++v34;
          --v36;
        }

        while (v36);
        v29 = v34 + 1;
      }

      ++v32;
      ++v33;
      v34 = v29;
    }

    while (v32 != 16);
    ++v28;
    v31 += 16;
  }

  while (v28 != 12);
  v39 = (192 * v30);
  if (v39 < 1)
  {
    LODWORD(v40) = 0;
  }

  else
  {
    v40 = 0;
    v41 = v27;
    do
    {
      *v41 = vmaxq_f32(*v41, 0);
      ++v41;
      v40 += 4;
    }

    while (v40 < v39);
  }

  if (v40 < v39)
  {
    v42 = v39 - v40;
    v43 = &v27->f32[v40];
    do
    {
      v44 = *v43;
      if (*v43 < 0.0)
      {
        v44 = 0.0;
      }

      *v43++ = v44;
      --v42;
    }

    while (v42);
  }

  if (v39 < 1)
  {
    LODWORD(v45) = 0;
  }

  else
  {
    v45 = 0;
    v46 = v27;
    do
    {
      *v46 = vminq_f32(*v46, v25);
      ++v46;
      v45 += 4;
    }

    while (v45 < v39);
  }

  if (v45 < v39)
  {
    v47 = v39 - v45;
    v48 = &v27->f32[v45];
    do
    {
      v49 = *v48;
      if (*v48 > 1.0)
      {
        v49 = 1.0;
      }

      *v48++ = v49;
      --v47;
    }

    while (v47);
  }

  return memcpy(a2, v27, 768 * v30);
}

void LTMComputeV2::LTMCompute::levelSmoothHFF(LTMComputeV2::LTMCompute *this, float *a2, const float *a3, const float *a4, int a5, int a6, int a7)
{
  v11 = this + 61440;
  v12 = (a6 * a5);
  v13 = 6 * v12;
  if (*(this + 63411))
  {
    v14 = 0;
  }

  else
  {
    *(this + 63411) = 1;
    v14 = (this + 46464);
    if (v13 >= 2112)
    {
      v15 = 2112;
    }

    else
    {
      v15 = 6 * v12;
    }

    bzero(this + 46464, 4 * v15 + 24);
  }

  LTMComputeV2::LTMCompute::HFFspatialMapCalc(this, v12, a3, &v14->f32[6 * v12], v14);
  LTMComputeV2::LTMCompute::HFFspatialMapFilter(this, a5, a6, v14->f32, a3);
  LTMComputeV2::LTMCompute::HFFspatialMapFilter(this, a5, a6, v14->f32, a3);
  if (v11[1969])
  {
    v17 = 0;
  }

  else
  {
    v11[1969] = 1;
    v17 = this + 29520;
    if (v12 >= 2052)
    {
      v18 = 2052;
    }

    else
    {
      v18 = v12;
    }

    bzero(this + 29520, 4 * v18 + 264);
  }

  v19 = 0;
  LODWORD(v20) = 0;
  v21 = v14;
  do
  {
    v22 = 0;
    v23 = v21;
    do
    {
      v24 = 0;
      v20 = v20;
      do
      {
        *&v17[4 * v20++ + 264] = v23->i32[v24];
        v24 += 2;
      }

      while (v24 != 16);
      ++v22;
      v23 += 8;
    }

    while (v22 != 6);
    ++v19;
    v21 = (v21 + 4 * v12);
  }

  while (v19 != 6);
  v25 = 0;
  LODWORD(v26) = 0;
  v27 = a4;
  do
  {
    v28 = 0;
    v26 = v26;
    do
    {
      v190[v26++] = v27[v28];
      v28 += 2;
    }

    while (v28 != 16);
    ++v25;
    v27 += 32;
  }

  while (v25 != 6);
  v29 = v12 + 6;
  if (v11[1968])
  {
    v30 = 0;
  }

  else
  {
    v31 = v29 + v13;
    v11[1968] = 1;
    v30 = this + 21048;
    if (v29 + v13 >= 2118)
    {
      v31 = 2118;
    }

    bzero(this + 21048, 4 * v31);
  }

  v170 = v11;
  v180 = v14;
  if (v11[1972])
  {
    v32 = 0;
  }

  else
  {
    v33 = 4 * v12;
    v11[1972] = 1;
    if (4 * v12 >= 2118)
    {
      v33 = 2118;
    }

    bzero(this + 54936, 4 * v33);
    v32 = (this + 54936);
  }

  v184 = a7;
  v169 = a7 - 1;
  if (a7 >= 1)
  {
    v34 = 0;
    v35 = &v30[4 * v29 + 4 * v12];
    v36 = v29 + 3 * v12;
    v185 = &v30[16 * v12 + 4 * v29];
    v37 = v29 + 5 * v12;
    v38 = v29 + v12;
    v39 = &v32->f32[v12];
    v40 = v12 & 0xFFFFFFFC;
    v41 = v12 & 0xFFFFFFF8;
    v42 = 4 * v184;
    v43 = 8 * v184;
    v44 = (8 * v12);
    v172 = (v39 + 4);
    v173 = v44;
    v176 = v32 + 12 * v12;
    v45 = &v30[4 * v29];
    v46 = &v30[8 * v12 + 4 * v29];
    v47 = &v30[4 * v36];
    v48 = v30;
    v49 = &v30[4 * v37];
    v171 = (v44 + v32);
    v186 = &v48[4 * v38];
    v50 = vdupq_n_s32(0x3EA8F5C3u);
    v174 = v50;
    v177 = v39;
    v179 = v32;
    v178 = v35;
    v188 = v44 + v32;
    v189 = v45;
    v175 = vdupq_n_s32(0x3F28F5C3u);
    do
    {
      v51 = 0;
      v52 = v46;
      v53 = v45;
      v54 = v34;
      do
      {
        v55 = 0;
        v56 = &a2[v54];
        v54 += v43;
        do
        {
          v50.n128_f32[0] = *v56;
          *&v53[v55] = *v56;
          *&v52[v55] = v50.n128_u32[0];
          v56 = (v56 + v42);
          v55 += 4;
        }

        while (v55 != 32);
        ++v51;
        v53 += 32;
        v52 += 32;
      }

      while (v51 != 6);
      v187 = v34;
      AuxCompute::levelSmooth3x3SinglePlane(v46, 6, 8, LTMComputeV2::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV2::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v44, v50, v16);
      v58 = 0;
      v59 = *v46;
      v60 = *(v46 + 1);
      v61 = *(v46 + 3);
      *(v49 + 2) = *(v46 + 2);
      *(v49 + 3) = v61;
      *v49 = v59;
      *(v49 + 1) = v60;
      v62 = *(v46 + 4);
      v63 = *(v46 + 5);
      v64 = *(v46 + 7);
      *(v49 + 6) = *(v46 + 6);
      *(v49 + 7) = v64;
      *(v49 + 4) = v62;
      *(v49 + 5) = v63;
      v65 = *(v46 + 8);
      v66 = *(v46 + 9);
      v67 = *(v46 + 11);
      *(v49 + 10) = *(v46 + 10);
      *(v49 + 11) = v67;
      *(v49 + 8) = v65;
      *(v49 + 9) = v66;
      do
      {
        v66.i32[0] = *&v46[v58 * 4];
        v65.n128_f32[0] = *&v189[v58 * 4] - *v66.i32;
        v47[v58++] = v65.n128_f32[0];
      }

      while (v58 != 48);
      AuxCompute::levelSmooth3x3SinglePlane(v49, 6, 8, LTMComputeV2::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV2::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v57, v65, v66);
      v68 = 0;
      v69 = 0;
      do
      {
        v70 = 0;
        v71 = flt_1C93341B4[v68];
        v72 = 1.0 - v71;
        v73 = &LTMComputeV2::LTMCompute::upsampleHFFInterpsIndices + 4 * v69;
        v74 = &v188[4 * v69];
        v75 = &v179[v69 / 4u];
        v69 += 16;
        do
        {
          v76 = dword_1C93341E4[v70];
          v77 = *&v73[v70 * 4];
          v78 = 4 * v77;
          v79 = v78 + 4;
          v80 = (v76 * *(v49 + v78 + 4)) + ((1.0 - v76) * *(v49 + v78));
          v81 = v78 + 32;
          v82 = *(v49 + v78 + 32);
          v78 += 36;
          *&v74[v70 * 4] = (v71 * ((v76 * *(v49 + v78)) + ((1.0 - v76) * v82))) + (v72 * v80);
          v75->f32[v70++] = (v71 * ((v76 * *&v46[v78]) + ((1.0 - v76) * *&v46[v81]))) + (v72 * ((v76 * *&v46[v79]) + ((1.0 - v76) * *&v46[4 * v77])));
        }

        while (v70 != 16);
        ++v68;
      }

      while (v68 != 12);
      if (v40 < 1)
      {
        v87 = 0;
        v86 = 2 * v12;
      }

      else
      {
        v83 = 0;
        v84 = v179;
        v85 = v185;
        v86 = 2 * v12;
        do
        {
          *v85++ = vsubq_f32(*v84, *(v173 + v84));
          v83 += 4;
          ++v84;
        }

        while (v83 < v40);
        v87 = v83;
      }

      if (v87 < v12)
      {
        v88 = v12 - v87;
        v89 = &v185->f32[v87];
        v90 = &v179->f32[v87];
        do
        {
          v91 = v90[v86];
          v92 = *v90++;
          *v89++ = v92 - v91;
          --v88;
        }

        while (v88);
      }

      LTMComputeV2::LTMCompute::HFFHighFreqModulate(v12, a6, a5, v180, v17 + 66, v47, v39, v17, (v17 + 24), v17 + 3);
      v93 = 0;
      v94 = 0.0;
      v95 = 0.00000011921;
      do
      {
        v96 = v190[v93];
        v94 = v94 + (v96 * v47[v93]);
        v95 = v95 + v96;
        ++v93;
      }

      while (v93 != 48);
      v97 = 0;
      v98 = v176;
      v99 = a4;
      v100 = v94 / v95;
      do
      {
        v101 = 0;
        do
        {
          *&v98[v101 * 4] = v100 * v99[v101];
          ++v101;
        }

        while ((v101 * 4) != 64);
        ++v97;
        v99 += 16;
        v98 += 64;
      }

      while (v97 != 12);
      if (v41 < 1)
      {
        v105 = 0;
      }

      else
      {
        v102 = 0;
        v103 = v172;
        do
        {
          v104 = vmulq_f32(*v103, v175);
          v103[-1] = vmulq_f32(v103[-1], v175);
          *v103 = v104;
          v102 += 8;
          v103 += 2;
        }

        while (v102 < v41);
        v105 = v102;
      }

      if (v105 < v12)
      {
        v106 = v12 - v105;
        v107 = &v39[v105];
        do
        {
          *v107 = *v107 * 0.66;
          ++v107;
          --v106;
        }

        while (v106);
      }

      if (v41 < 1)
      {
        v111 = 0;
      }

      else
      {
        v108 = 0;
        v109 = (v176 + 16);
        do
        {
          v110 = vmulq_f32(*v109, v175);
          v109[-1] = vmulq_f32(v109[-1], v175);
          *v109 = v110;
          v108 += 8;
          v109 += 2;
        }

        while (v108 < v41);
        v111 = v108;
      }

      if (v111 < v12)
      {
        v112 = v12 - v111;
        v113 = &v176[4 * v111];
        do
        {
          *v113 = *v113 * 0.66;
          ++v113;
          --v112;
        }

        while (v112);
      }

      if (v41 < 1)
      {
        v117 = 0;
      }

      else
      {
        v114 = 0;
        v115 = v185 + 1;
        do
        {
          v116 = vmulq_f32(*v115, v174);
          v115[-1] = vmulq_f32(v115[-1], v174);
          *v115 = v116;
          v114 += 8;
          v115 += 2;
        }

        while (v114 < v41);
        v117 = v114;
      }

      if (v117 < v12)
      {
        v118 = v12 - v117;
        v119 = &v185->f32[v117];
        do
        {
          *v119 = *v119 * 0.33;
          ++v119;
          --v118;
        }

        while (v118);
      }

      bzero(v178, 0x300uLL);
      if (v40 < 1)
      {
        v131 = 0;
        v132 = v12;
        v124 = v187;
        v125 = v178;
        v39 = v177;
        v43 = 8 * v184;
        v126 = 16 * v184;
        v127 = v188;
      }

      else
      {
        v120 = 0;
        v121 = v171;
        v122 = v185;
        v123 = v178;
        v124 = v187;
        v125 = v178;
        v43 = 8 * v184;
        v126 = 16 * v184;
        v127 = v188;
        do
        {
          v128 = *v121++;
          v129 = v128;
          v130 = *v122++;
          v16 = v130;
          v50 = vaddq_f32(v129, v130);
          *v123++ = v50;
          v120 += 4;
        }

        while (v120 < v40);
        v131 = v120;
        v132 = v12;
        v39 = v177;
      }

      if (v131 < v132)
      {
        v133 = v12 - v131;
        v134 = &v186[4 * v131];
        v135 = &v185->f32[v131];
        v136 = &v127[4 * v131];
        do
        {
          v137 = *v136++;
          v138 = v137;
          v139 = *v135++;
          *v16.i32 = v139;
          *v134++ = v138 + v139;
          --v133;
        }

        while (v133);
      }

      if (v40 < 1)
      {
        v144 = 0;
      }

      else
      {
        v140 = 0;
        v141 = v125;
        v142 = v39;
        do
        {
          v143 = *v142++;
          v16 = *v141;
          v50 = vaddq_f32(*v141, v143);
          *v141++ = v50;
          v140 += 4;
        }

        while (v140 < v40);
        v144 = v140;
      }

      if (v144 < v132)
      {
        v145 = v12 - v144;
        v146 = &v39[v144];
        v147 = &v186[4 * v144];
        do
        {
          v148 = *v146++;
          *v16.i32 = v148;
          *v147 = *v147 + v148;
          ++v147;
          --v145;
        }

        while (v145);
      }

      if (v40 < 1)
      {
        v153 = 0;
      }

      else
      {
        v149 = 0;
        v150 = v125;
        v151 = v176;
        do
        {
          v152 = *v151++;
          v16 = *v150;
          v50 = vaddq_f32(*v150, v152);
          *v150++ = v50;
          v149 += 4;
        }

        while (v149 < v40);
        v153 = v149;
      }

      if (v153 < v132)
      {
        v154 = v12 - v153;
        v155 = &v176[4 * v153];
        v156 = &v186[4 * v153];
        do
        {
          v157 = *v155++;
          *v16.i32 = v157;
          *v156 = *v156 + v157;
          ++v156;
          --v154;
        }

        while (v154);
      }

      v158 = 0;
      v159 = v125;
      v160 = v124;
      do
      {
        v161 = 0;
        v162 = &a2[v160];
        v160 += v126;
        do
        {
          *v162 = v159->f32[v161];
          v162 = (v162 + v42);
          ++v161;
        }

        while ((v161 * 4) != 64);
        ++v158;
        v159 += 4;
      }

      while (v158 != 12);
      v34 = v124 + 1;
      v45 = v189;
    }

    while (v34 != v184);
  }

  v163 = 0;
  v164 = 0;
  do
  {
    v165 = v164 + 1;
    if (v184 >= 2)
    {
      v166 = &a2[v165];
      v167 = v169;
      do
      {
        v168 = a2[v164];
        if (*v166 < v168)
        {
          *v166 = v168;
        }

        ++v164;
        ++v166;
        --v167;
      }

      while (v167);
      v165 = v164 + 1;
    }

    ++v163;
    v164 = v165;
  }

  while (v163 != 192);
  *(v170 + 984) = 0;
  *(v170 + 1971) = 0;
}

void LTMComputeV2::LTMCompute::generateLinearLTC(LTMComputeV2::LTMCompute *this, const sLtmComputeInput *a2, const sLtmComputeMeta *a3, sLtmComputeOutput *__dst)
{
  p_encodedExpRatio = &__dst->encodedExpRatio;
  v8 = *(this + 5);
  v9 = 48;
  v10 = __dst;
  do
  {
    memcpy(v10, this + 1064, 4 * v8);
    v8 = *(this + 5);
    v10 = (v10 + 4 * v8);
    --v9;
  }

  while (v9);
  memcpy(__dst->averageLTC, this + 1064, 4 * v8);
  v11 = *(p_encodedExpRatio + 4);
  memcpy(__dst->globalLUT, LTMComputeV2::LTMCompute::globalCurveInputs, sizeof(__dst->globalLUT));
  *(p_encodedExpRatio + 4) = v11 | 0xC;
  *p_encodedExpRatio = 1.0;
  gammaCurve = a3->gammaCurve;
  switch(gammaCurve)
  {
    case 0:
      rgbToneCurve = __dst->rgbToneCurve;
      memcpy(__dst->rgbToneCurve, LTMComputeV2::LTMCompute::globalCurveInputs, sizeof(__dst->rgbToneCurve));
      for (i = 0; i != 257; ++i)
      {
        v19 = rgbToneCurve[i];
        if (v19 >= 0.018)
        {
          v20 = (powf(v19, 0.45) * 1.099) + -0.099;
        }

        else
        {
          v20 = v19 * 4.5;
        }

        rgbToneCurve[i] = v20;
      }

      goto LABEL_18;
    case 1:
      v13 = __dst->rgbToneCurve;
      memcpy(__dst->rgbToneCurve, LTMComputeV2::LTMCompute::globalCurveInputs, sizeof(__dst->rgbToneCurve));
      for (j = 0; j != 257; ++j)
      {
        v15 = v13[j];
        if (v15 >= 0.0833)
        {
          v16 = (logf((v15 * 12.0) + -0.2847) * 0.17883) + 0.5599;
        }

        else
        {
          v16 = sqrtf(v15 * 3.0);
        }

        v13[j] = v16;
      }

      goto LABEL_18;
    case 2:
      memcpy(__dst->rgbToneCurve, LTMComputeV2::LTMCompute::globalCurveInputs, sizeof(__dst->rgbToneCurve));
LABEL_18:
      __dst->rgbToneCurveInputMode = 0;
      break;
  }

  *(this + 4) = &LTMComputeV2::LTMCompute::tuningParamsHLG;
  *(p_encodedExpRatio + 4) |= 0x10u;
}

void LTMComputeV2::LTMCompute::calculateSpatialCCM(LTMComputeV2::LTMCompute *this, const sLtmComputeInput *a2, const sLtmComputeMeta *a3, sLtmComputeOutput *a4)
{
  if (a3->useGlobalCCM)
  {
    *a4->spatialCCM = LTMComputeV2::sLtmTuningParams::desaturationCCM;
    *&a4->spatialCCM[4] = unk_1C9332EE0;
    a4->spatialCCM[8] = 0.2561;
    *(a4 + 222240) |= 2u;
  }

  if (a3->useSpatialCCM)
  {
    FigGetCFPreferenceDoubleWithDefault();
    v8 = v7;
    FigGetCFPreferenceDoubleWithDefault();
    v9 = 0;
    *&v10 = v10;
    v32 = v8;
    v33 = xmmword_1C9332D70;
    spatialCCM = a4->spatialCCM;
    v34 = 0;
    v35 = 0;
    v36 = LODWORD(v10);
    do
    {
      v12 = 0;
      v13 = a2->ccmWeights[v9] * a2->ccmMixFactor;
      do
      {
        v14 = v13 * *(&v32 + v12);
        if ((v12 & 0xB) == 0 || v12 == 8)
        {
          v14 = (1.0 - v13) + v14;
        }

        *(v30 + v12++) = v14;
      }

      while (v12 != 9);
      if (a3->useDigitalFlash && a3->useGlobalCCM)
      {
        v16 = 0;
        v17 = &LTMComputeV2::sLtmTuningParams::desaturationCCM;
        do
        {
          v18 = 0;
          v19 = v30;
          do
          {
            v20 = 0;
            v21 = 0.0;
            v22 = v19;
            do
            {
              v23 = *v22;
              v22 += 3;
              v21 = v21 + (*(v17 + v20) * v23);
              v20 += 4;
            }

            while (v20 != 12);
            v24 = v21;
            spatialCCM[3 * v16 + v18++] = v24;
            v19 = (v19 + 4);
          }

          while (v18 != 3);
          ++v16;
          v17 = (v17 + 12);
        }

        while (v16 != 3);
        spatialCCM += 9;
        v25 = 1;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 - 3;
      do
      {
        v27 = v30[0];
        v28 = v30[1];
        *(spatialCCM + 8) = v31;
        *spatialCCM = v27;
        *(spatialCCM + 1) = v28;
        spatialCCM += 9;
      }

      while (!__CFADD__(v26++, 1));
      ++v9;
    }

    while (v9 != 192);
    *(a4 + 222240) |= 2u;
  }
}

uint64_t LTMComputeV2::LTMCompute::Process(LTMComputeV2::LTMCompute *this, const sLtmComputeInput_SOFTISP *a2, const sLtmComputeMeta_SOFTISP *a3, sLtmComputeOutput *a4)
{
  if (a2->LTMHazeCorrectionOff)
  {
    LTMComputeV2::sLtmTuningParams::nFlareBins = 0;
  }

  p_eit = &a2->ltmComputeInput.eit;
  if (a3->ltmComputeMeta.useLinearLTCs)
  {
    LTMComputeV2::LTMCompute::generateLinearLTC(this, &a2->ltmComputeInput, &a3->ltmComputeMeta, a4);
  }

  else
  {
    LTMComputeV2::LTMCompute::generateSpatialLTC(this, a2, a3, a4);
  }

  LTMComputeV2::LTMCompute::calculateSpatialCCM(v8, &a2->ltmComputeInput, &a3->ltmComputeMeta, a4);
  if (a3->ltmComputeMeta.updateMixLUT)
  {
    memset_pattern16(a4->WMixLUT, &unk_1C9332DA0, 0x404uLL);
    *(a4 + 222240) |= 1u;
  }

  a4->eit = *p_eit;
  return 0;
}

void LTMComputeV2::LTMCompute::HFFspatialMapCalc(LTMComputeV2::LTMCompute *this, int a2, const float *a3, float *a4, float32x4_t *a5)
{
  v97 = this + 63408;
  if (*(this + 63409))
  {
    v10 = 0;
  }

  else
  {
    v10 = (this + 29520);
    v11 = 7 * a2;
    *(this + 63409) = 1;
    if (7 * a2 >= 2118)
    {
      v11 = 2118;
    }

    bzero(this + 29520, 4 * v11);
  }

  v12 = (this + 37992);
  v13 = (this + 21048);
  if (a2 >= 1)
  {
    v14 = a2;
    v15 = a3;
    v16 = v10;
    do
    {
      v17 = *v15++;
      *v16++ = v17;
      --v14;
    }

    while (v14);
  }

  qsort(v10, a2, 4uLL, compFloat);
  v18 = 0;
  v19 = 0;
  do
  {
    a4[v18] = v10[(v19 / 5.0)];
    v19 += a2 - 1;
    ++v18;
  }

  while (v18 != 6);
  v20 = v10[a2 - 1];
  v21 = *v10;
  v22 = (6 * a2);
  v23 = v97;
  if (*v97)
  {
    v13 = 0;
  }

  else
  {
    *v97 = 1;
    if (v22 >= 2118)
    {
      v24 = 2118;
    }

    else
    {
      v24 = 6 * a2;
    }

    bzero(v13, 4 * v24);
    v23 = v97;
  }

  v25 = v20 - v21;
  if (v23[2])
  {
    v12 = 0;
  }

  else
  {
    v23[2] = 1;
    if (v22 >= 2118)
    {
      v26 = 2118;
    }

    else
    {
      v26 = 6 * a2;
    }

    bzero(v12, 4 * v26);
  }

  v27 = 0;
  v28 = 0;
  v29 = (2.0 / v25) * (2.0 / v25);
  do
  {
    if (a2 >= 1)
    {
      v30 = &v13->f32[v28];
      v31 = &v12->i8[4 * v28];
      v28 += a2;
      v32 = a2;
      v33 = a3;
      v34 = a4[v27];
      do
      {
        *v30++ = v34;
        v35 = *v33++;
        *v31 = v35;
        v31 += 4;
        --v32;
      }

      while (v32);
    }

    ++v27;
  }

  while (v27 != 6);
  if (v29 < 0.00000011921)
  {
    v29 = 0.00000011921;
  }

  v36 = v22 & 0xFFFFFFFC;
  if (v36 < 1)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v37 = 0;
    v38 = v12;
    v39 = v13;
    do
    {
      v40 = *v39++;
      *v38 = vsubq_f32(*v38, v40);
      ++v38;
      v37 += 4;
    }

    while (v37 < v36);
  }

  if (v37 < v22)
  {
    v41 = v22 - v37;
    v42 = &v13->f32[v37];
    v43 = &v12->f32[v37];
    do
    {
      v44 = *v42++;
      *v43 = *v43 - v44;
      ++v43;
      --v41;
    }

    while (v41);
  }

  v45 = v22 & 0xFFFFFFF0;
  if (v45 < 1)
  {
    LODWORD(v46) = 0;
  }

  else
  {
    v46 = 0;
    v47 = v12 + 2;
    do
    {
      v48 = vmulq_f32(v47[-1], v47[-1]);
      v49 = vmulq_f32(*v47, *v47);
      v50 = vmulq_f32(v47[1], v47[1]);
      v47[-2] = vmulq_f32(v47[-2], v47[-2]);
      v47[-1] = v48;
      *v47 = v49;
      v47[1] = v50;
      v47 += 4;
      v46 += 16;
    }

    while (v46 < v45);
  }

  if (v46 < v22)
  {
    v51 = v22 - v46;
    v52 = &v12->f32[v46];
    do
    {
      *v52 = *v52 * *v52;
      ++v52;
      --v51;
    }

    while (v51);
  }

  v53 = v22 & 0xFFFFFFF8;
  v54 = 1.0 / v29;
  if (v53 < 1)
  {
    LODWORD(v55) = 0;
  }

  else
  {
    v55 = 0;
    v56 = v12 + 1;
    do
    {
      v57 = vmulq_n_f32(*v56, v54);
      v56[-1] = vmulq_n_f32(v56[-1], v54);
      *v56 = v57;
      v55 += 8;
      v56 += 2;
    }

    while (v55 < v53);
  }

  if (v55 < v22)
  {
    v58 = v22 - v55;
    v59 = &v12->f32[v55];
    do
    {
      *v59 = v54 * *v59;
      ++v59;
      --v58;
    }

    while (v58);
  }

  v60 = 0;
  v61 = 0;
  do
  {
    if (a2 >= 1)
    {
      v62 = &v12->f32[v61];
      v61 += a2;
      v63 = a2;
      do
      {
        v64 = 1016466288;
        if (*v62 <= 8888.2)
        {
          v65 = *v62 * 0.5 * 32.0;
          v66 = llroundf(v65);
          if (v66 >= 128)
          {
            v66 = 128;
          }

          v64 = LTMComputeV2::LTMCompute::invExpLutX4[v66];
        }

        *v62++ = v64;
        --v63;
      }

      while (v63);
    }

    ++v60;
  }

  while (v60 != 6);
  v67 = (v29 + v29) * 3.14159265;
  v68 = 1.0 / sqrtf(v67);
  if (v53 < 1)
  {
    LODWORD(v69) = 0;
  }

  else
  {
    v69 = 0;
    v70 = v12 + 1;
    do
    {
      v71 = vmulq_n_f32(*v70, v68);
      v70[-1] = vmulq_n_f32(v70[-1], v68);
      *v70 = v71;
      v69 += 8;
      v70 += 2;
    }

    while (v69 < v53);
  }

  if (v69 < v22)
  {
    v72 = v22 - v69;
    v73 = &v12->f32[v69];
    do
    {
      *v73 = v68 * *v73;
      ++v73;
      --v72;
    }

    while (v72);
  }

  if (a2 > 0)
  {
    memset_pattern16(&v10[v22], &unk_1C9332D80, 4 * a2);
  }

  v74 = 0;
  v75 = 0;
  do
  {
    if (a2 >= 1)
    {
      v76 = &v12->f32[v75];
      v77 = &a5->f32[v75];
      v75 += a2;
      v78 = a2;
      v79 = &v10[v22];
      do
      {
        v80 = *v76++;
        *v77++ = v80;
        *v79 = v80 + *v79;
        ++v79;
        --v78;
      }

      while (v78);
    }

    ++v74;
  }

  while (v74 != 6);
  v81 = 0;
  v82 = 0;
  do
  {
    if (a2 >= 1)
    {
      v83 = &v10[v82];
      v82 += a2;
      v84 = a2;
      v85 = &v10[v22];
      do
      {
        v86 = *v85++;
        *v83++ = v86;
        --v84;
      }

      while (v84);
    }

    ++v81;
  }

  while (v81 != 6);
  if (v36 < 1)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    v87 = 0;
    v88 = v10;
    v89 = a5;
    do
    {
      v90 = *v88++;
      v91 = vrecpeq_f32(v90);
      v92 = vmulq_f32(v91, vrecpsq_f32(v90, v91));
      *v89 = vmulq_f32(*v89, vmulq_f32(vrecpsq_f32(v90, v92), v92));
      ++v89;
      v87 += 4;
    }

    while (v87 < v36);
  }

  if (v87 < v22)
  {
    v93 = v22 - v87;
    v94 = &v10[v87];
    v95 = &a5->f32[v87];
    do
    {
      v96 = *v94++;
      *v95 = *v95 / v96;
      ++v95;
      --v93;
    }

    while (v93);
  }

  *v97 = 0;
  v97[2] = 0;
}

uint64_t compFloat(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

unint64_t LTMComputeV2::LTMCompute::HFFspatialMapFilter(LTMComputeV2::LTMCompute *this, int a2, int a3, float *__src, const float *a5)
{
  v10 = a3 * a2;
  if (*(this + 63409))
  {
    v11 = 0;
  }

  else
  {
    v12 = 6 * v10;
    *(this + 63409) = 1;
    v11 = this + 29520;
    if (6 * v10 >= 2118)
    {
      v12 = 2118;
    }

    bzero(this + 29520, 4 * v12);
  }

  result = memcpy(v11, __src, 24 * v10);
  v14 = 0;
  v15 = 0;
  do
  {
    if (a2 >= 1)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = v15;
        v19 = v17;
        v20 = v17 + 1;
        v21 = a5[v17] - a5[v20];
        v22 = llroundf((v21 * v21) * 32.0);
        if (v22 >= 128)
        {
          v22 = 128;
        }

        v23 = *&LTMComputeV2::LTMCompute::invExpLutX4[v22] * 0.33333;
        v24 = v15 + 1;
        __src[v15] = ((((*&v11[4 * v15] * 0.33333) + 0.0) + (*&v11[4 * v15] * 0.33333)) + (v23 * *&v11[4 * v24])) / (v23 + 0.66667);
        if (a3 < 3)
        {
          result = v20;
          v38 = v15 + 1;
        }

        else
        {
          v25 = 0;
          v26 = (v19 << 32) + 0x100000000;
          v27 = &a5[v19 + 2];
          v28 = (v18 << 32) + 0x100000000;
          v29 = &v11[4 * v18 + 4];
          do
          {
            v30 = *(v27 - 1);
            v31 = llroundf(((v30 - *(v27 - 2)) * (v30 - *(v27 - 2))) * 32.0);
            if (v31 >= 128)
            {
              v31 = 128;
            }

            v32 = *&LTMComputeV2::LTMCompute::invExpLutX4[v31] * 0.33333;
            v33 = *v27++;
            v34 = llroundf(((v30 - v33) * (v30 - v33)) * 32.0);
            v35 = ((v32 * *(v29 - 1)) + 0.0) + (*v29 * 0.33333);
            if (v34 >= 128)
            {
              v34 = 128;
            }

            v36 = v29[1];
            ++v29;
            v37 = *&LTMComputeV2::LTMCompute::invExpLutX4[v34] * 0.33333;
            __src[v18 + 1 + v25++] = (v35 + (v37 * v36)) / (((v32 + 0.00000011921) + 0.33333) + v37);
            v26 += 0x100000000;
            v28 += 0x100000000;
          }

          while (a3 - 2 != v25);
          result = (v19 + v25 + 1);
          v38 = v18 + v25 + 1;
          v20 = v26 >> 32;
          v24 = v28 >> 32;
        }

        v39 = llroundf(((a5[v20] - a5[v20 - 1]) * (a5[v20] - a5[v20 - 1])) * 32.0);
        if (v39 >= 128)
        {
          v39 = 128;
        }

        __src[v24] = (((((*&LTMComputeV2::LTMCompute::invExpLutX4[v39] * 0.33333) * *&v11[4 * v24 - 4]) + 0.0) + (*&v11[4 * v24] * 0.33333)) + (*&v11[4 * v24] * 0.33333)) / ((((*&LTMComputeV2::LTMCompute::invExpLutX4[v39] * 0.33333) + 0.00000011921) + 0.33333) + 0.33333);
        v17 = result + 1;
        v15 = v38 + 1;
        ++v16;
      }

      while (v16 != a2);
    }

    ++v14;
  }

  while (v14 != 6);
  v40 = 0;
  v41 = 0;
  do
  {
    if (v10 >= 1)
    {
      v42 = &__src[v41];
      v43 = &v11[4 * v41];
      v41 += v10;
      v44 = v10;
      do
      {
        v45 = *v42++;
        *v43 = v45;
        v43 += 4;
        --v44;
      }

      while (v44);
    }

    ++v40;
  }

  while (v40 != 6);
  v46 = 0;
  v47 = 0;
  do
  {
    if (a3 < 1)
    {
      v57 = 0;
    }

    else
    {
      v48 = &__src[v47];
      v49 = &v11[4 * v47 + 64];
      v47 += a3;
      result = a3;
      v50 = (a5 + 16);
      do
      {
        v51 = *(v49 - 16);
        v52 = *(v50 - 16);
        v53 = *v50++;
        v54 = llroundf(((v52 - v53) * (v52 - v53)) * 32.0);
        if (v54 >= 128)
        {
          v54 = 128;
        }

        v55 = *&LTMComputeV2::LTMCompute::invExpLutX4[v54] * 0.33333;
        v56 = *v49++;
        *v48++ = ((((v51 * 0.33333) + 0.0) + (v51 * 0.33333)) + (v55 * v56)) / (v55 + 0.66667);
        --result;
      }

      while (result);
      v57 = a3;
    }

    if (a2 >= 3)
    {
      v58 = 1;
      do
      {
        if (a3 >= 1)
        {
          v59 = &a5[v57];
          v57 += a3;
          v60 = &__src[v47];
          v61 = &v11[4 * v47];
          v47 += a3;
          v62 = a3;
          do
          {
            v63 = llroundf(((*v59 - *(v59 - 16)) * (*v59 - *(v59 - 16))) * 32.0);
            if (v63 >= 128)
            {
              v63 = 128;
            }

            v64 = *&LTMComputeV2::LTMCompute::invExpLutX4[v63];
            v65 = ((v64 * 0.33333) * *(v61 - 16)) + 0.0;
            v66 = ((v64 * 0.33333) + 0.00000011921) + 0.33333;
            v67 = llroundf(((*v59 - v59[16]) * (*v59 - v59[16])) * 32.0);
            if (v67 >= 128)
            {
              v67 = 128;
            }

            v68 = *&LTMComputeV2::LTMCompute::invExpLutX4[v67] * 0.33333;
            *v60++ = ((v65 + (*v61 * 0.33333)) + (v68 * v61[16])) / (v66 + v68);
            ++v59;
            ++v61;
            --v62;
          }

          while (v62);
        }

        result = (v58 + 1);
      }

      while (v58++ != a2 - 2);
    }

    if (a3 >= 1)
    {
      v70 = &v11[4 * v47];
      result = &__src[v47];
      v47 += a3;
      v71 = a3;
      v72 = &a5[v57];
      do
      {
        v73 = llroundf(((*v72 - *(v72 - 16)) * (*v72 - *(v72 - 16))) * 32.0);
        if (v73 >= 128)
        {
          v73 = 128;
        }

        v74 = *&LTMComputeV2::LTMCompute::invExpLutX4[v73];
        v75 = ((v74 * 0.33333) * *(v70 - 16)) + 0.0;
        v76 = *v70++;
        *result = ((v75 + (v76 * 0.33333)) + (v76 * 0.33333)) / ((((v74 * 0.33333) + 0.00000011921) + 0.33333) + 0.33333);
        result += 4;
        ++v72;
        --v71;
      }

      while (v71);
    }

    ++v46;
  }

  while (v46 != 6);
  *(this + 63409) = 0;
  return result;
}

void LTMComputeV2::LTMCompute::HFFHighFreqModulate(LTMComputeV2::LTMCompute *this, int a2, int a3, float *a4, float *a5, float *a6, float *a7, float32x4_t *a8, float32x4_t *a9, float32x4_t *a10)
{
  for (i = 0; i != 6; ++i)
  {
    v11 = 0;
    v12 = 0.0;
    v13 = 0.00000011921;
    do
    {
      v14 = *&a5[v11];
      v15 = vmulq_f32(v14, *&a6[v11]);
      v13 = (((v13 + v14.f32[0]) + COERCE_FLOAT(HIDWORD(*&a5[v11]))) + COERCE_FLOAT(*&a5[v11 + 2])) + v14.f32[3];
      v12 = (((v12 + v15.f32[0]) + v15.f32[1]) + v15.f32[2]) + v15.f32[3];
      v11 += 4;
    }

    while (v11 != 48);
    a9->f32[i] = v12;
    a10->f32[i] = v13;
    a5 += 48;
  }

  v16 = 0;
  v17 = vrecpeq_f32(*a10);
  v18 = vmulq_f32(v17, vrecpsq_f32(*a10, v17));
  *a8 = vmulq_f32(*a9, vmulq_f32(vrecpsq_f32(*a10, v18), v18));
  do
  {
    a8[1].f32[v16] = a9[1].f32[v16] / a10[1].f32[v16];
    ++v16;
  }

  while (v16 != 2);
  if (a3 >= 1)
  {
    v19 = 0;
    v20 = 0;
    LODWORD(v21) = 0;
    do
    {
      if (a2 >= 1)
      {
        v22 = 0;
        v21 = v21;
        v23 = v19;
        do
        {
          v24 = 0;
          a7[v21] = 0.0;
          v25 = 0.0;
          v26 = &a4[v23];
          do
          {
            v25 = v25 + (*v26 * a8->f32[v24]);
            a7[v21] = v25;
            v26 += (a3 * a2);
            ++v24;
          }

          while (v24 != 6);
          ++v21;
          ++v22;
          ++v23;
        }

        while (v22 != a2);
      }

      ++v20;
      v19 += a2;
    }

    while (v20 != a3);
  }
}

float32x4_t *LTMComputeV2::LTMCompute::LTCGridCalcAlgo(LTMComputeV2::LTMCompute *this, const sLtmComputeInput *a2, const sLtmComputeMeta *a3, sLtmComputeOutput *a4, int32x2_t a5, const float *a6, const float *a7, float a8, const float *a9, float a10, float a11)
{
  averageLTC = a4->averageLTC;
  v14 = this + 63408;
  v15 = (this + 18888);
  v238 = (this + 13768);
  LTCBright = a4->LTCBright;
  result = a2->localHist;
  v17 = (this + 4156);
  v18 = (this + 4348);
  v246 = v14;
  if (v14[4])
  {
    v19 = 0;
  }

  else
  {
    v19 = (this + 54936);
    v14[4] = 1;
  }

  v20 = *(this + 5);
  v21 = *(this + 6);
  v22 = (6 * v21);
  v239 = &v19[v22];
  v23 = &v239->f32[v20];
  v24 = v20;
  v250 = v23 + 24;
  faceWeightForTone = a2->faceWeightForTone;
  v25 = &v15[134].f32[1];
  v26 = vld1q_dup_f32(v25);
  v27 = &v19[v22 + 4 + v24];
  v28 = &a2->faceWeightForTone[4];
  v29 = -8;
  do
  {
    v30 = vaddq_f32(vmulq_f32(v26, *v28), 0);
    v27[-1] = vaddq_f32(vmulq_f32(v26, v28[-1]), 0);
    *v27 = v30;
    v29 += 8;
    v27 += 2;
    v28 += 2;
  }

  while (v29 < 0x28);
  v31 = &v19[(2 * v21)];
  v252 = v23 + 12;
  v32 = (*(this + 4) + 4);
  v33 = vld1q_dup_f32(v32);
  v34 = v24 * 4 + 4 * v22;
  v35 = -4;
  v36 = v34;
  do
  {
    *(v19 + v36) = vminq_f32(v33, *(v19 + v36));
    v35 += 4;
    v36 += 16;
  }

  while (v35 < 0x2C);
  v37 = v23[9];
  v260 = &v19[(3 * v21)];
  v23[20] = v23[8];
  v23[21] = v37;
  v38 = v23[11];
  v23[22] = v23[10];
  v23[23] = v38;
  v39 = v23[5];
  v23[16] = v23[4];
  v23[17] = v39;
  v40 = v23[7];
  v23[18] = v23[6];
  v23[19] = v40;
  v41 = v23[1];
  *v252 = *v23;
  v23[13] = v41;
  v42 = v23[3];
  v23[14] = v23[2];
  v23[15] = v42;
  v43 = (v19 + v34 + 208);
  v44 = -8;
  v45 = vdupq_lane_s32(a5, 0);
  do
  {
    v46 = vaddq_f32(v45, *v43);
    v43[-1] = vaddq_f32(v45, v43[-1]);
    *v43 = v46;
    v44 += 8;
    v43 += 2;
  }

  while (v44 < 0x28);
  v263 = &v19[v21];
  v47 = -8;
  __asm { FMOV            V0.4S, #0.25 }

  v53 = v23;
  do
  {
    v54 = vaddq_f32(vmulq_f32(v53[1], _Q0), 0);
    v53[24] = vaddq_f32(vmulq_f32(*v53, _Q0), 0);
    v53[25] = v54;
    v47 += 8;
    v53 += 2;
  }

  while (v47 < 0x28);
  v55 = (*(this + 4) + 8);
  v56 = vld1q_dup_f32(v55);
  v57 = (v19 + v34 + 400);
  v58 = -8;
  do
  {
    v59 = vaddq_f32(v56, *v57);
    v57[-1] = vaddq_f32(v56, v57[-1]);
    *v57 = v59;
    v58 += 8;
    v57 += 2;
  }

  while (v58 < 0x28);
  v60 = (*(this + 4) + 4);
  v61 = vld1q_dup_f32(v60);
  v62 = v34 + 384;
  v63 = -4;
  do
  {
    *(v19 + v62) = vminq_f32(v61, *(v19 + v62));
    v63 += 4;
    v62 += 16;
  }

  while (v63 < 0x2C);
  v255 = (v23 + 36);
  if (a3->faceLTMVer == 1)
  {
    v64 = (v19 + v34 + 592);
    v65 = &a2->faceWeightForHistBlend[4];
    v66 = -8;
    v67 = vdupq_n_s32(0x3E4CCCCDu);
    do
    {
      v68 = vaddq_f32(vmulq_f32(*v65, v67), 0);
      v64[-1] = vaddq_f32(vmulq_f32(v65[-1], v67), 0);
      *v64 = v68;
      v66 += 8;
      v64 += 2;
      v65 += 2;
    }

    while (v66 < 0x28);
    faceFraction = a2->faceFraction;
    v70 = (-1.0 / (fabsf(sqrtf(faceFraction)) * 0.22361)) + 1.0;
    if (faceFraction == -INFINITY)
    {
      v67.f32[0] = 1.0;
    }

    else
    {
      v67.f32[0] = v70;
    }

    v67.f32[0] = fminf(fmaxf(v67.f32[0], 0.0), 1.0);
    v67.f32[0] = fmaxf(fminf(v67.f32[0] + (((1.0 - v67.f32[0]) + (1.0 - v67.f32[0])) * (a2->faceExposureRatio + -1.0)), 1.0), 0.0);
    v71 = vdupq_lane_s32(*v67.f32, 0);
    v72 = -4;
    v73 = v255;
    do
    {
      *v73 = vminq_f32(v71, *v73);
      ++v73;
      v72 += 4;
    }

    while (v72 < 0x2C);
  }

  v74 = 0;
  thumbnailHist = a2->thumbnailHist;
  v259 = (this + 6600);
  v248 = (1.0 - a11) + (a11 * 0.8);
  LODWORD(v75) = *(this + 6);
  v240 = &v19[v22];
  v244 = a4->averageLTC;
  v237 = vdupq_n_s32(0x3F4CCCCDu);
  __asm { FMOV            V0.4S, #1.0 }

  v236 = _Q0;
  v77 = a4;
  v251 = (this + 4156);
  v241 = 1.0 - a10;
  v242 = a10;
  v249 = v31;
  do
  {
    v264 = v17;
    thumbHistBlendingWeight = a2->thumbHistBlendingWeight;
    v79 = 1.0 - thumbHistBlendingWeight;
    v80 = v75 & 0xFFFFFFFC;
    if (v80 < 1)
    {
      v88 = 0;
    }

    else
    {
      v81 = 0;
      v82 = result;
      v83 = thumbnailHist;
      v84 = v19;
      do
      {
        v85 = *v82++;
        v86 = v85;
        v87 = *v83++;
        *v84++ = vaddq_f32(vmulq_n_f32(v86, v79), vmulq_n_f32(v87, thumbHistBlendingWeight));
        v81 += 4;
      }

      while (v81 < v80);
      v88 = v81;
    }

    v265 = v77;
    v89 = a3;
    if (v88 < v75)
    {
      v90 = v75 - v88;
      v91 = &v19[v88];
      v92 = &thumbnailHist[v88];
      v93 = &result->f32[v88];
      do
      {
        v94 = *v93++;
        v95 = v94;
        v96 = *v92++;
        *v91++ = (thumbHistBlendingWeight * v96) + (v95 * v79);
        --v90;
      }

      while (v90);
    }

    v262 = result;
    v15[132].i32[2] = *(v252 + v74);
    v15[132].i32[3] = *(v250 + v74);
    memcpy(v31, a6, 4 * *(this + 6));
    memcpy(v260, a7, 4 * *(this + 6));
    memcpy(v263, v259, 4 * *(this + 6));
    v97 = (this + 20940);
    if (v89->CBVer == 1)
    {
      v98 = *(this + 6);
      v99 = v98 & 0xFFFFFFF0;
      if (v89->gammaCurve == 1)
      {
        if (v99 < 1)
        {
          v105 = 0;
        }

        else
        {
          v100 = 0;
          v101 = v263 + 2;
          do
          {
            v102 = vmulq_f32(v101[-1], v237);
            v103 = vmulq_f32(*v101, v237);
            v104 = vmulq_f32(v101[1], v237);
            v101[-2] = vmulq_f32(v101[-2], v237);
            v101[-1] = v102;
            *v101 = v103;
            v101[1] = v104;
            v101 += 4;
            v100 += 16;
          }

          while (v100 < v99);
          v105 = v100;
        }

        if (v105 < v98)
        {
          v112 = v98 - v105;
          v113 = &v263->f32[v105];
          do
          {
            *v113 = *v113 * 0.8;
            ++v113;
            --v112;
          }

          while (v112);
        }
      }

      else
      {
        if (v99 < 1)
        {
          v111 = 0;
        }

        else
        {
          v106 = 0;
          v107 = v263 + 2;
          do
          {
            v108 = vmulq_n_f32(v107[-1], v248);
            v109 = vmulq_n_f32(*v107, v248);
            v110 = vmulq_n_f32(v107[1], v248);
            v107[-2] = vmulq_n_f32(v107[-2], v248);
            v107[-1] = v108;
            *v107 = v109;
            v107[1] = v110;
            v107 += 4;
            v106 += 16;
          }

          while (v106 < v99);
          v111 = v106;
        }

        if (v111 < v98)
        {
          v114 = v98 - v111;
          v115 = &v263->f32[v111];
          do
          {
            *v115 = v248 * *v115;
            ++v115;
            --v114;
          }

          while (v114);
        }
      }
    }

    if (v89->faceLTMVer == 1 && v255->f32[v74] > 0.001)
    {
      if (*v246)
      {
        v116 = 0;
      }

      else
      {
        *v246 = 1;
        v116 = &v15[135];
      }

      v117 = *(this + 6);
      v118 = v117;
      if ((v117 & 0xFFFFFFF8) < 1)
      {
        v119 = 0;
      }

      else
      {
        v119 = 0;
        v120 = (v116 + 16);
        v121 = &unk_1EC397518;
        do
        {
          v122 = vaddq_f32(vmulq_n_f32(*v121, v118), 0);
          v120[-1] = vaddq_f32(vmulq_n_f32(v121[-1], v118), 0);
          *v120 = v122;
          v119 += 8;
          v120 += 2;
          v121 += 2;
        }

        while (v119 < (v117 & 0xFFFFFFF8));
        v119 = v119;
      }

      if (v119 < v117)
      {
        v123 = v117 - v119;
        v124 = &v116[4 * v119];
        v125 = &LTMComputeV2::LTMCompute::globalHist2 + v119;
        do
        {
          v126 = *v125++;
          *v124++ = (v126 * v118) + 0.0;
          --v123;
        }

        while (v123);
      }

      v127 = *(this + 6);
      if ((v127 & 0xFFFFFFFC) < 1)
      {
        v130 = 0;
      }

      else
      {
        v128 = 0;
        v129 = v116;
        do
        {
          *v129 = vminq_f32(*v129, v236);
          ++v129;
          v128 += 4;
        }

        while (v128 < (v127 & 0xFFFFFFFC));
        v130 = v128;
      }

      if (v130 < v127)
      {
        v131 = v127 - v130;
        v132 = &v116[4 * v130];
        do
        {
          v133 = *v132;
          if (*v132 > 1.0)
          {
            v133 = 1.0;
          }

          *v132++ = v133;
          --v131;
        }

        while (v131);
      }

      v134 = v255->f32[v74];
      v135 = 1.0 - v134;
      v136 = *(this + 6);
      if ((v136 & 0xFFFFFFF8) < 1)
      {
        v141 = 0;
      }

      else
      {
        v137 = 0;
        v138 = (v116 + 16);
        v139 = v263 + 1;
        do
        {
          v140 = vaddq_f32(vmulq_n_f32(*v139, v135), vmulq_n_f32(*v138, v134));
          v139[-1] = vaddq_f32(vmulq_n_f32(v139[-1], v135), vmulq_n_f32(v138[-1], v134));
          *v139 = v140;
          v137 += 8;
          v138 += 2;
          v139 += 2;
        }

        while (v137 < (v136 & 0xFFFFFFF8));
        v141 = v137;
      }

      if (v141 < v136)
      {
        v142 = v136 - v141;
        v143 = &v116[4 * v141];
        v144 = &v263->f32[v141];
        do
        {
          v145 = *v143++;
          *v144 = (v134 * v145) + (*v144 * v135);
          ++v144;
          --v142;
        }

        while (v142);
      }

      v146 = v255->f32[v74];
      v147 = 1.0 - v146;
      v148 = *(this + 6);
      if ((v148 & 0xFFFFFFFC) < 1)
      {
        v156 = 0;
      }

      else
      {
        v149 = 0;
        v150 = a6;
        v151 = v238;
        v152 = v31;
        do
        {
          v153 = *v150;
          v150 += 4;
          v154 = v153;
          v155 = *v151++;
          *v152++ = vaddq_f32(vmulq_n_f32(v154, v147), vmulq_n_f32(v155, v146));
          v149 += 4;
        }

        while (v149 < (v148 & 0xFFFFFFFC));
        v156 = v149;
      }

      if (v156 < v148)
      {
        v157 = v148 - v156;
        v158 = &v31->f32[v156];
        v159 = (this + 4 * v156 + 13768);
        v160 = &a6[v156];
        do
        {
          v161 = *v160++;
          v162 = v161;
          v163 = *v159++;
          *v158++ = (v146 * v163) + (v162 * v147);
          --v157;
        }

        while (v157);
      }

      *v246 = 0;
      if (v89->CBVer == 1)
      {
        v164 = v255->f32[v74];
        v165 = 1.0 - v164;
        v166 = *(this + 6);
        if ((v166 & 0xFFFFFFFC) < 1)
        {
          v174 = 0;
        }

        else
        {
          v167 = 0;
          v168 = a7;
          v169 = v15;
          v170 = v260;
          do
          {
            v171 = *v168;
            v168 += 4;
            v172 = v171;
            v173 = *v169++;
            *v170++ = vaddq_f32(vmulq_n_f32(v172, v165), vmulq_n_f32(v173, v164));
            v167 += 4;
          }

          while (v167 < (v166 & 0xFFFFFFFC));
          v174 = v167;
        }

        if (v174 < v166)
        {
          v175 = v166 - v174;
          v176 = &v260->f32[v174];
          v177 = (this + 4 * v174 + 18888);
          v178 = &a7[v174];
          do
          {
            v179 = *v178++;
            v180 = v179;
            v181 = *v177++;
            *v176++ = (v164 * v181) + (v180 * v165);
            --v175;
          }

          while (v175);
        }
      }
    }

    v182 = v89;
    gammaCurve = v89->gammaCurve;
    if (gammaCurve == 1)
    {
      v184 = faceWeightForTone[v74];
      v185 = powf(fmaxf(v15[129].f32[2] + -1.0, 0.0), 0.25);
      v97 = (this + 20940);
      v15[134].f32[0] = fmaxf(fminf(v15[134].f32[2] * (1.0 - (v15[130].f32[1] / (((v184 * v185) * 20.0) + 1.0))), 0.45) + (a8 * 0.25), a8);
    }

    v261 = v74;
    v186 = v97;
    LTMComputeV2::LTMCompute::allocateTone(this, v265, 0, v19, *(this + 4), (this + 2092), v251, this + 1906, *v264, *v18, v15[129].f32[1], v263, v31->f32, v97, this + 4978, 1, gammaCurve == 1);
    a3 = v182;
    if (v182->CBVer)
    {
      LTMComputeV2::LTMCompute::allocateTone(this, LTCBright, 0, v19, *(this + 4), (this + 2092), v251, this + 1906, *v264, *v18, v15[129].f32[1], v259, v260->f32, v186, this + 4978, 1, v182->gammaCurve == 1);
      LTCBright += *(this + 5);
      a3 = v182;
      v188 = v261;
      v187 = v262;
      v31 = v249;
      v189 = v265;
    }

    else
    {
      v190 = *(this + 5);
      if ((v190 & 0xFFFFFFFC) < 1)
      {
        v200 = 0;
        v195 = v241;
        v196 = v242;
        v188 = v261;
        v187 = v262;
        v31 = v249;
        v189 = v265;
      }

      else
      {
        v191 = 0;
        v189 = v265;
        v192 = v265;
        v193 = a9;
        v194 = v239;
        v195 = v241;
        v196 = v242;
        v188 = v261;
        v187 = v262;
        do
        {
          v197 = *v192++;
          v198 = v197;
          v199 = *v193;
          v193 += 4;
          *v194++ = vmaxq_f32(v198, v199);
          v191 += 4;
        }

        while (v191 < (v190 & 0xFFFFFFFC));
        v200 = v191;
        v31 = v249;
      }

      if (v200 < v190)
      {
        v201 = v190 - v200;
        v202 = &v240->f32[v200];
        v203 = &a9[v200];
        v204 = &v189[v200];
        do
        {
          v205 = *v204++;
          v206 = v205;
          v207 = *v203++;
          v208 = v207;
          if (v206 <= v207)
          {
            v206 = v208;
          }

          *v202++ = v206;
          --v201;
        }

        while (v201);
      }

      v209 = *(this + 5);
      if ((v209 & 0xFFFFFFF8) < 1)
      {
        v210 = 0;
      }

      else
      {
        v210 = 0;
        v211 = (v189 + 4);
        v212 = v240 + 1;
        do
        {
          v213 = vaddq_f32(vmulq_n_f32(*v211, v195), vmulq_n_f32(*v212, v196));
          v211[-1] = vaddq_f32(vmulq_n_f32(v211[-1], v195), vmulq_n_f32(v212[-1], v196));
          *v211 = v213;
          v210 += 8;
          v212 += 2;
          v211 += 2;
        }

        while (v210 < (v209 & 0xFFFFFFF8));
        v210 = v210;
      }

      if (v210 < v209)
      {
        v214 = v209 - v210;
        v215 = &v240->f32[v210];
        v216 = &v189[v210];
        do
        {
          v217 = *v215++;
          *v216 = (v217 * v196) + (*v216 * v195);
          ++v216;
          --v214;
        }

        while (v214);
      }
    }

    v218 = *(this + 5);
    if ((v218 & 0xFFFFFFFC) < 1)
    {
      v219 = 0;
    }

    else
    {
      v219 = 0;
      v220 = averageLTC;
      v221 = v189;
      do
      {
        v222 = *v221++;
        *v220 = vaddq_f32(*v220, v222);
        ++v220;
        v219 += 4;
      }

      while (v219 < (v218 & 0xFFFFFFFC));
      v219 = v219;
    }

    if (v219 < v218)
    {
      v223 = v218 - v219;
      v224 = &v189[v219];
      v225 = &v244[v219];
      do
      {
        v226 = *v224++;
        *v225 = *v225 + v226;
        ++v225;
        --v223;
      }

      while (v223);
    }

    v227 = *(this + 5);
    v75 = *(this + 6);
    v77 = &v189[v227];
    result = (v187 + 4 * v75);
    v17 = v264 + 1;
    ++v18;
    v74 = v188 + 1;
  }

  while (v74 != 48);
  v246[4] = 0;
  if ((v227 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v228) = 0;
    v231 = a4;
  }

  else
  {
    v228 = 0;
    v229 = (averageLTC + 4);
    v230 = vdupq_n_s32(0x3CAAAAABu);
    v231 = a4;
    do
    {
      v232 = vmulq_f32(*v229, v230);
      v229[-1] = vmulq_f32(v229[-1], v230);
      *v229 = v232;
      v228 += 8;
      v229 += 2;
    }

    while (v228 < (v227 & 0xFFFFFFF8));
  }

  if (v228 < v227)
  {
    v233 = v227 - v228;
    v234 = &v231->averageLTC[v228];
    do
    {
      *v234 = *v234 * 0.020833;
      ++v234;
      --v233;
    }

    while (v233);
  }

  *(v231 + 222240) |= 4u;
  return result;
}

LTMDriverV2 *LTMDriverV2::LTMDriver::LTMDriver(LTMDriverV2 *this, int a2)
{
  *this = &unk_1F48DEC50;
  *(this + 912) = a2;
  if (a2)
  {
    v2 = 257;
  }

  else
  {
    v2 = 65;
  }

  *(this + 229) = v2;
  if (a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 64;
  }

  *(this + 230) = v3;
  return this;
}

uint64_t LTMDriverV2::LTMDriver::UpdateLocalMetaData(uint64_t this, const sRefDriverInputs_SOFTISP *a2)
{
  ltmProcMode = a2->ltmProcMode;
  *(this + 24) = a2->gammaCurve;
  *(this + 17) = a2->useSpatialCCM;
  *(this + 19) = ltmProcMode == 1;
  v3 = ltmProcMode == 1 && !a2->bLTMSingleFrameMode;
  v4 = 0;
  *(this + 18) = v3;
  *(this + 20) = a2->flashStatus;
  p_hdrRatio = &a2[1].hdrRatio;
  do
  {
    v6 = (this + 32 + v4 * 2);
    *v6 = *&p_hdrRatio[v4];
    v7 = *&p_hdrRatio[v4 + 8];
    v8 = *&p_hdrRatio[v4 + 16];
    v9 = *&p_hdrRatio[v4 + 32];
    v6[3] = *&p_hdrRatio[v4 + 24];
    v6[4] = v9;
    v6[1] = v7;
    v6[2] = v8;
    v10 = *&p_hdrRatio[v4 + 40];
    v11 = *&p_hdrRatio[v4 + 48];
    v12 = *&p_hdrRatio[v4 + 64];
    v6[7] = *&p_hdrRatio[v4 + 56];
    v6[8] = v12;
    v6[5] = v10;
    v6[6] = v11;
    v4 += 72;
  }

  while (v4 != 432);
  *(this + 896) = a2[1].flashMixPercentage[398];
  *(this + 897) = a2->channel;
  *(this + 898) = *(this + 912);
  return this;
}

uint64_t LTMDriverV2::LTMDriver::ComputeThumbnailHistogram(uint64_t this, const sCLRProcHITHStat_SOFTISP *a2, float a3, float a4, sLtmComputeInput *a5, double a6, double a7, double a8, double a9, double a10, float a11)
{
  thumbnailHist = a5->thumbnailHist;
  thumbnailDownsampleY = a2->thumbnailDownsampleY;
  if (thumbnailDownsampleY <= 1)
  {
    thumbnailDownsampleY = 1;
  }

  v14 = a2->thumbnailWindow / thumbnailDownsampleY;
  thumbnailDownsampleX = a2->thumbnailDownsampleX;
  if (thumbnailDownsampleX <= 1)
  {
    thumbnailDownsampleX = 1;
  }

  v16 = HIWORD(a2->thumbnailWindow) / thumbnailDownsampleX * v14;
  v17 = v16;
  v18 = *(this + 920);
  if (v16)
  {
    v19 = 0;
    v20 = a3 / (65536.0 / v18);
    thumbnailStat = a2->thumbnailStat;
    thumbnailTotal = a2->thumbnailTotal;
    v22 = v18 - 1;
    thumbnailLumaHist = a5->thumbnailLumaHist;
    do
    {
      v24 = thumbnailStat + v19;
      v25 = *v24;
      v26 = v25;
      v27 = vcvtms_s32_f32(v20 * v25);
      if (v22 < v27)
      {
        v27 = v18 - 1;
      }

      LOWORD(a11) = v24[4];
      a11 = thumbnailLumaHist[v27] + (LODWORD(a11) * a3);
      v28 = v27;
      v29 = v25 >> 4;
      a5->thumbnailHist[v27] = a5->thumbnailHist[v27] + 1.0;
      v30 = vcvtms_s32_f32(v20 * (v26 * a4));
      thumbnailLumaHist[v27] = a11;
      if (v22 >= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v18 - 1;
      }

      if (v29 <= 0xFFE)
      {
        v28 = v31;
      }

      a5->thumbnailHistEV0[v28] = a5->thumbnailHistEV0[v28] + 1.0;
      v19 += thumbnailTotal;
      --v16;
    }

    while (v16);
  }

  v32 = 1.0 / v17;
  if (*thumbnailHist > 0.00000011921)
  {
    a5->bin0Ratio = a5->thumbnailHistEV0[0] / *thumbnailHist;
  }

  if ((v18 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v33) = 0;
  }

  else
  {
    v33 = 0;
    thumbnailStat = &a5->thumbnailHist[4];
    do
    {
      v34 = vmulq_n_f32(*thumbnailStat, v32);
      thumbnailStat[-1] = vmulq_n_f32(thumbnailStat[-1], v32);
      *thumbnailStat = v34;
      v33 += 8;
      thumbnailStat += 2;
    }

    while (v33 < (v18 & 0xFFFFFFF8));
  }

  if (v33 < v18)
  {
    v35 = v18 - v33;
    v36 = &a5->thumbnailHist[v33];
    do
    {
      *v36 = v32 * *v36;
      ++v36;
      --v35;
    }

    while (v35);
  }

  v37 = *(this + 920);
  if ((v37 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v38) = 0;
  }

  else
  {
    v38 = 0;
    thumbnailStat = &a5->thumbnailLumaHist[4];
    do
    {
      v39 = vmulq_n_f32(*thumbnailStat, v32);
      thumbnailStat[-1] = vmulq_n_f32(thumbnailStat[-1], v32);
      *thumbnailStat = v39;
      v38 += 8;
      thumbnailStat += 2;
    }

    while (v38 < (v37 & 0xFFFFFFF8));
  }

  if (v38 < v37)
  {
    v40 = v37 - v38;
    v41 = &a5->thumbnailLumaHist[v38];
    do
    {
      *v41 = v32 * *v41;
      ++v41;
      --v40;
    }

    while (v40);
  }

  if (a4 < 1.0)
  {
    v42 = *(this + 920);
    LODWORD(thumbnailStat) = vcvtps_s32_f32(v42 * a4);
    v43 = v42 - thumbnailStat;
    if (v42 > thumbnailStat)
    {
      v44 = 0.0;
      v45 = 0.0;
      if (thumbnailStat >= 1)
      {
        thumbnailHistEV0 = a5->thumbnailHistEV0;
        v47 = thumbnailStat;
        do
        {
          v48 = *thumbnailHistEV0++;
          v45 = v45 + v48;
          v47 = (v47 - 1);
        }

        while (v47);
      }

      v49 = v32 * v45;
      v50 = thumbnailStat;
      v51 = (&LTMDriverV2::LTMDriver::defaultHist + 4 * thumbnailStat);
      do
      {
        v52 = *v51++;
        v44 = v44 + v52;
        LODWORD(thumbnailStat) = thumbnailStat + 1;
      }

      while (v42 > thumbnailStat);
      v53 = ((1.0 - v49) * v17) / v44;
      v54 = v43 & 0xFFFFFFF8;
      if (*(this + 912) == 1)
      {
        if (v54 < 1)
        {
          LODWORD(v55) = 0;
        }

        else
        {
          v55 = 0;
          v56 = &a5->thumbnailHistEV0[v50 + 4];
          v57 = (&LTMDriverV2::LTMDriver::defaultHistHiRes + 4 * v50 + 16);
          do
          {
            v58 = vaddq_f32(vmulq_n_f32(*v57, v53), 0);
            *(v56 - 1) = vaddq_f32(vmulq_n_f32(v57[-1], v53), 0);
            *v56 = v58;
            v55 += 8;
            v56 += 8;
            v57 += 2;
          }

          while (v55 < v54);
        }

        if (v55 < v43)
        {
          v63 = v43 - v55;
          v64 = 4 * v50 + 4 * v55;
          v65 = (a5->thumbnailHistEV0 + v64);
          v66 = (&LTMDriverV2::LTMDriver::defaultHistHiRes + v64);
          do
          {
            v67 = *v66++;
            *v65++ = (v67 * v53) + 0.0;
            --v63;
          }

          while (v63);
        }
      }

      else
      {
        if (v54 < 1)
        {
          LODWORD(v59) = 0;
        }

        else
        {
          v59 = 0;
          v60 = &a5->thumbnailHistEV0[v50 + 4];
          v61 = (&LTMDriverV2::LTMDriver::defaultHist + 4 * v50 + 16);
          do
          {
            v62 = vaddq_f32(vmulq_n_f32(*v61, v53), 0);
            *(v60 - 1) = vaddq_f32(vmulq_n_f32(v61[-1], v53), 0);
            *v60 = v62;
            v59 += 8;
            v60 += 8;
            v61 += 2;
          }

          while (v59 < v54);
        }

        if (v59 < v43)
        {
          v68 = v43 - v59;
          v69 = 4 * v50 + 4 * v59;
          v70 = (a5->thumbnailHistEV0 + v69);
          v71 = (&LTMDriverV2::LTMDriver::defaultHist + v69);
          do
          {
            v72 = *v71++;
            *v70++ = (v72 * v53) + 0.0;
            --v68;
          }

          while (v68);
        }
      }
    }
  }

  v73 = a5->thumbnailHistEV0;
  v74 = *(this + 920);
  v75 = a5->thumbnailHistEV0[(v74 - 1)];
  v76 = v17 - v75;
  v77 = fminf(v75, 1.0);
  v78 = v76 + v77;
  a5->thumbnailHistEV0[(v74 - 1)] = v77;
  a5->pixelCountRatio = (v76 + v77) / v17;
  if (*(this + 912) == 1)
  {
    v79 = 0;
    v80 = 0;
    do
    {
      v81 = &v73[v80];
      v80 += 16;
      v88 = vld4q_f32(v81);
      *&v73[v79] = vaddq_f32(vaddq_f32(vaddq_f32(v88.val[0], v88.val[1]), v88.val[2]), v88.val[3]);
      v79 += 4;
    }

    while (v79 != 64);
  }

  v82 = 2.0 / (v78 + v17);
  if ((v74 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v83) = 0;
  }

  else
  {
    v83 = 0;
    v84 = &a5->thumbnailHistEV0[4];
    do
    {
      v85 = vmulq_n_f32(*v84, v82);
      v84[-1] = vmulq_n_f32(v84[-1], v82);
      *v84 = v85;
      v83 += 8;
      v84 += 2;
    }

    while (v83 < (v74 & 0xFFFFFFF8));
  }

  if (v83 < v74)
  {
    v86 = v74 - v83;
    v87 = &a5->thumbnailHistEV0[v83];
    do
    {
      *v87 = v82 * *v87;
      ++v87;
      --v86;
    }

    while (v86);
  }

  return this;
}

uint64_t LTMDriverV2::LTMDriver::Process(LTMDriverV2::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, sRefDriverInputs_SOFTISP *a3, sLtmComputeInput_SOFTISP *a4)
{
  p_CBLowlightDampWeight = &a4->ltmComputeInput.CBLowlightDampWeight;
  p_faceFraction = &a4->ltmComputeInput.faceFraction;
  *(this + 2) = 0;
  *(this + 3) = 0;
  bzero(a4, 0xFC84uLL);
  LTMDriverV2::LTMDriver::UpdateLocalMetaData(this, a3);
  LTMDriverV2::LTMDriver::ComputeLocalHistograms(this, a2, &a4->ltmComputeInput, 1.0);
  LTMDriverV2::LTMDriver::computeGlobalHistogram(v10, a2->globalHistStat, a4->ltmComputeInput.globalHist, HIWORD(a2->globalHistWindow), a2->globalHistWindow, 4, 0x100u, v11);
  *(this + 14) = a3[1].flashMixPercentage[402];
  globalFaceHistWindow = a2->globalFaceHistWindow;
  numFaces = a3->faceInfo.numFaces;
  if (!numFaces || globalFaceHistWindow < 0x10000 || !a2->globalFaceHistWindow)
  {
    *(this + 28) = 0;
  }

  *v49 = 0x600000008;
  v16 = LTMDriverV2::LTMDriver::computeFaceWeight(v12, &a3->localHistGridConfig, v13, a3->faceInfo.rectArray, numFaces, a4->ltmComputeInput.faceWeightForTone, v49, 1.0);
  if (*(this + 28))
  {
    LTMDriverV2::LTMDriver::computeGlobalHistogram(v16, a2->globalFaceHistStat + 192, a4->ltmComputeInput.globalHist2, HIWORD(globalFaceHistWindow), globalFaceHistWindow, 1, 0x40u, v17);
    *p_faceFraction = (HIWORD(globalFaceHistWindow) * globalFaceHistWindow);
    v16 = LTMDriverV2::LTMDriver::computeFaceWeight(v18, &a3->localHistGridConfig, v19, &a3->faceInfo.rectArray[a3->faceInfo.primaryFaceIndex], 1, a4->ltmComputeInput.faceWeightForHistBlend, v49, 1.0);
  }

  LTMDriverV2::LTMDriver::computeFaceWeightForToneHFF(v16, a3, &a4->ltmComputeInput);
  LTMDriverV2::LTMDriver::UpdateColorInformation(this, &a4->ltmComputeInput, a3, a2);
  *(p_CBLowlightDampWeight + 6) = *&a3->LTMHazeCorrectionOff;
  p_CBLowlightDampWeight[1] = *&a3[1].flashMixPercentage[400];
  v21 = AuxCompute::CalcTotalGainDown(a3, v20);
  exposureTime = a3->exposureTime;
  LOWORD(v23) = a3->gainDigiSensor.v16;
  *&v24 = v23;
  *&v25 = exposureTime * *&v24;
  LOWORD(v24) = a3->gainAnal.v16;
  softIspDGain = a3->softIspDGain;
  p_faceFraction[216] = (a3->hardIspDGain * (*&v25 * v24)) / v21;
  gainDigi = a3->gainDigi;
  HIWORD(v25) = 22900;
  *&v28 = (gainDigi * exposureTime * a3->gainAnal.v16 * a3->overflowDGain * a3->ev0Ratio) / 4.295e15;
  p_faceFraction[217] = *&v28;
  LOWORD(v28) = a3->gainDigiSensor.v16;
  LOWORD(v25) = a3->gainAnal.v16;
  p_CBLowlightDampWeight[4] = ((v28 * v25) * gainDigi) * 0.000000059605;
  p_faceFraction[1] = fmaxf(a3->luxLevel, 0.0001);
  p_faceFraction[10] = 1.0 - fminf(fmaxf(softIspDGain + -12.0, 0.0) / 20.0, 1.0);
  v30 = AuxCompute::CalcExposureRatio(a3, v29);
  hardIspDGain = a3->hardIspDGain;
  v32 = v30 / hardIspDGain;
  p_faceFraction[4] = v32;
  expBias = a3->expBias;
  realizedExpBias = a3->realizedExpBias;
  if (expBias > 0xFF)
  {
    if (expBias >= realizedExpBias)
    {
      expBias = a3->realizedExpBias;
    }

    v35 = fmaxf(vcvts_n_f32_u32(expBias, 8uLL), 1.0);
  }

  else
  {
    if (expBias <= realizedExpBias)
    {
      expBias = a3->realizedExpBias;
    }

    v35 = fminf(vcvts_n_f32_u32(expBias, 8uLL), 1.0);
  }

  p_faceFraction[5] = v35;
  p_faceFraction[6] = v32 / fmaxf(v35, 1.0);
  v36 = fmaxf(p_faceFraction[217] * 0.5, 1.0);
  p_faceFraction[7] = fmaxf(a3->faceExpRatioFiltered, 1.0);
  p_faceFraction[8] = v36;
  p_faceFraction[9] = powf(fmaxf(((a3->overflowDGain * a3->gainDigi) / 65535.0) + -16.0, 0.0) / 80.0, 1.5);
  LTMDriverV2::LTMDriver::ComputeLumaFromThumbnail(v37, a2, hardIspDGain, 1.0, &a4->ltmComputeInput);
  LTMDriverV2::LTMDriver::HFFThumbnailDownscaleConvert(this, a2, &a4->ltmComputeInput, a3->hardIspDGain, 1.0, *(this + 29), *(this + 19));
  *p_faceFraction = *p_faceFraction / (HIWORD(a2->thumbnailWindow) * a2->thumbnailWindow);
  LTMDriverV2::LTMDriver::ComputeThumbnailHistogram(this, a2, 1.0, p_faceFraction[6], &a4->ltmComputeInput, v38, v39, v40, v41, v42, v43);
  if (*(this + 29) == 1)
  {
    v44 = (p_faceFraction[1] + -15.0) / 30.0;
    v45 = v44 <= 0.0;
    v46 = v44 < 1.0 || v44 <= 0.0;
    if (v44 >= 1.0)
    {
      v45 = 1;
    }

    if (v46)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 1.0;
    }

    if (v45)
    {
      v44 = v47;
    }

    *p_CBLowlightDampWeight = v44;
  }

  return 0;
}

void LTMDriverV2::LTMDriver::ComputeLocalHistograms(LTMDriverV2::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, sLtmComputeInput *a3, float a4)
{
  v7 = (a2->localHistBlockSizeY * a2->localHistBlockSizeX) >> (a2->localHistCountBitShift + 1);
  localHistBinSize = a2->localHistBinSize;
  localHistStat = a2->localHistStat;
  v10 = malloc_type_malloc(2 * *(this + 230), 0x1000040BDFB0063uLL);
  v11 = 0;
  localHist = a3->localHist;
  v13 = 1.0 / v7;
  v14 = ((a4 * 65535.0) * 0.00097656);
  v15 = *(this + 230);
  do
  {
    memcpy(v10, localHistStat + 2, 2 * v15);
    v16 = *v10 + *localHistStat;
    *v10 = v16;
    *v10 = v16 + localHistStat[1];
    v17 = *(this + 230);
    v18 = (v17 - 1);
    v19 = v10[v18] + localHistStat[(localHistBinSize - 1)];
    v10[v18] = v19;
    v10[v18] = v19 + localHistStat[(localHistBinSize - 2)];
    v20 = 0;
    if (v17 != 1)
    {
      v21 = v10;
      v22 = localHist;
      v23 = (v17 - 1);
      do
      {
        v24 = *v21++;
        v20 += v24;
        *v22++ = v13 * v24;
        --v23;
      }

      while (v23);
    }

    v25 = fmax((v7 - v20), 0.0) * v13;
    localHist[v18] = v25;
    if (a4 < 1.0 && v18 > v14)
    {
      localHist[v18] = localHist[v14];
      localHist[v14] = 0.0;
    }

    if ((v17 & 0xFFFFFFFC) < 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      averageLocalHist = a3->averageLocalHist;
      v28 = localHist;
      do
      {
        v29 = *v28++;
        *averageLocalHist = vaddq_f32(*averageLocalHist, v29);
        ++averageLocalHist;
        v26 += 4;
      }

      while (v26 < (v17 & 0xFFFFFFFC));
      v26 = v26;
    }

    if (v26 < v17)
    {
      v30 = v17 - v26;
      v31 = &localHist[v26];
      v32 = &a3->averageLocalHist[v26];
      do
      {
        v33 = *v31++;
        *v32 = *v32 + v33;
        ++v32;
        --v30;
      }

      while (v30);
    }

    localHistStat += localHistBinSize;
    v15 = *(this + 230);
    localHist += v15;
    ++v11;
  }

  while (v11 != 48);
  if ((v15 & 0xFFFFFFF8) < 1)
  {
    LODWORD(v34) = 0;
    v35 = a3;
  }

  else
  {
    v34 = 0;
    v35 = a3;
    v36 = &a3->averageLocalHist[4];
    v37 = vdupq_n_s32(0x3CAAAAABu);
    do
    {
      v38 = vmulq_f32(*v36, v37);
      v36[-1] = vmulq_f32(v36[-1], v37);
      *v36 = v38;
      v34 += 8;
      v36 += 2;
    }

    while (v34 < (v15 & 0xFFFFFFF8));
  }

  if (v34 < v15)
  {
    v39 = v15 - v34;
    v40 = &v35->averageLocalHist[v34];
    do
    {
      *v40 = *v40 * 0.020833;
      ++v40;
      --v39;
    }

    while (v39);
  }

  free(v10);
}

float LTMDriverV2::LTMDriver::computeGlobalHistogram(LTMDriverV2::LTMDriver *this, const unsigned int *a2, float *a3, int a4, int a5, int a6, unsigned int a7, float result)
{
  if (a6)
  {
    v8 = 0;
    v9 = (a5 * a4) >> 1;
    result = 1.0 / v9;
    v10 = 4 * a7;
    do
    {
      if (a7 == 1)
      {
        v12 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = a2[v11];
          v12 += v13;
          a3[v11++] = result * v13;
        }

        while (a7 - 1 != v11);
      }

      v14 = fmax((v9 - v12), 0.0) * result;
      a3[a7 - 1] = v14;
      a3 = (a3 + v10);
      ++v8;
      a2 = (a2 + v10);
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t LTMDriverV2::LTMDriver::computeFaceWeight(LTMDriverV2::LTMDriver *this, const sBTRect *a2, sLtmComputeInput *a3, const sCIspFDRect *a4, int a5, float *a6, const int *a7, float a8)
{
  v95 = a4;
  if (LTMDriverV2::LTMDriver::computeFaceWeight(sBTRect const*,sLtmComputeInput *,sCIspFDRect const*,int,float *,int const*,float)::onceToken != -1)
  {
    LTMDriverV2::LTMDriver::computeFaceWeight();
  }

  v13 = a2->width / a8;
  v14 = a2->height / a8;
  v15 = llroundf(v13 * 0.5);
  v16 = (floorf(v13) * 0.5);
  if (v15 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = llroundf(v14 * 0.5);
  v19 = (floorf(v14) * 0.5);
  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  x = a2->x;
  y = a2->y;
  v23 = *a7;
  MEMORY[0x1EEE9AC00]();
  v25 = (&v89 - ((v24 + 15) & 0x7FFFFFFF0));
  bzero(v25, 4 * v26);
  v27 = *(a7 + 1);
  MEMORY[0x1EEE9AC00]();
  v29 = (&v89 - ((v28 + 15) & 0x7FFFFFFF0));
  bzero(v29, 4 * v30);
  if (a5 >= 1)
  {
    v33 = 0;
    v93 = ((v13 + v17) * 0.5) + x;
    v92 = ((v14 + v20) * 0.5) + y;
    *&v31 = sqrtf(v13 * v14);
    *&v32 = v13 / *&v31;
    v101 = v32;
    v94 = a5;
    v34 = vdupq_n_s64(v23 - 1);
    v108 = vdupq_n_s64(v27 - 1);
    v109 = v34;
    v91 = v25 + 2;
    v90 = v29 + 2;
    v97 = xmmword_1C932FAE0;
    v96 = xmmword_1C932FAF0;
    __asm { FMOV            V1.4S, #1.0 }

    v107 = _Q1;
    v40 = vdupq_n_s64(4uLL);
    v100 = v40;
    *&v31 = v14 / *&v31;
    v99 = v31;
    do
    {
      v98 = v33;
      v41 = &v95[v33];
      height = v41->height;
      v43 = v41->y;
      if (v23 >= 1)
      {
        v44 = 0;
        v45 = v41->width / v13;
        *v40.i32 = v45 * 0.5;
        *v34.i32 = (v45 * 0.5) + ((v41->x - v93) / v13);
        v103 = vdupq_lane_s32(*v40.i8, 0);
        v46 = sqrtf(fminf(v45, 1.0));
        v102 = vdupq_lane_s32(*v34.i8, 0);
        v47 = v91;
        v34 = v96;
        v48 = v97;
        do
        {
          v105 = v48;
          v49 = vorr_s8(vdup_n_s32(v44), 0x300000002);
          v106 = v34;
          v50 = vcgeq_u64(v109, v34);
          v51 = vmovn_s64(v50);
          *v50.i8 = vuzp1_s16(v51, v49);
          v104 = v50;
          v50.i32[0] = v44;
          v50.i32[1] = v44 + 1;
          v50.u64[1] = v49;
          v111 = vaddq_f32(vmulq_n_f32(vmaxnmq_f32(vsubq_f32(vabdq_f32(vcvtq_f32_u32(v50), v102), v103), 0), *&v101), v107);
          *&v52 = powf(v111.f32[1], 4.0);
          v110 = v52;
          *&v53 = powf(v111.f32[0], 4.0);
          DWORD1(v53) = v110;
          v110 = v53;
          v54 = powf(v111.f32[2], 4.0);
          v55 = v110;
          *(&v55 + 2) = v54;
          v110 = v55;
          v56 = powf(v111.f32[3], 4.0);
          v57 = v110;
          *(&v57 + 3) = v56;
          v58 = *v104.i8;
          if (v104.i8[0])
          {
            *v58.i32 = v46 / *&v110;
            *(v47 - 2) = v46 / *&v110;
          }

          v59 = v105;
          if (vuzp1_s16(v51, v58).i8[2])
          {
            *(v47 - 1) = v46 / *(&v57 + 1);
          }

          v60 = vmovn_s64(vcgeq_u64(v109, v59));
          *v40.i8 = vuzp1_s16(v60, v60);
          v61 = v106;
          if (v40.i8[4])
          {
            *v47 = v46 / *(&v57 + 2);
          }

          if (vuzp1_s16(v60, v60).i8[6])
          {
            v47[1] = v46 / *(&v57 + 3);
          }

          v44 += 4;
          v48 = vaddq_s64(v59, v100);
          v34 = vaddq_s64(v61, v100);
          v47 += 4;
        }

        while (((v23 + 3) & 0xFFFFFFFC) != v44);
      }

      if (v27 >= 1)
      {
        v62 = 0;
        v63 = height / v14;
        *v34.i32 = v63 * 0.5;
        *v40.i32 = (v63 * 0.5) + ((v43 - v92) / v14);
        v103 = vdupq_lane_s32(*v34.i8, 0);
        v64 = sqrtf(fminf(v63, 1.0));
        v102 = vdupq_lane_s32(*v40.i8, 0);
        v65 = v90;
        v34 = v96;
        v66 = v97;
        do
        {
          v105 = v66;
          v67 = vorr_s8(vdup_n_s32(v62), 0x300000002);
          v106 = v34;
          v68 = vcgeq_u64(v108, v34);
          v69 = vmovn_s64(v68);
          *v68.i8 = vuzp1_s16(v69, v67);
          v104 = v68;
          v68.i32[0] = v62;
          v68.i32[1] = v62 + 1;
          v68.u64[1] = v67;
          v111 = vaddq_f32(vmulq_n_f32(vmaxnmq_f32(vsubq_f32(vabdq_f32(vcvtq_f32_u32(v68), v102), v103), 0), *&v99), v107);
          *&v70 = powf(v111.f32[1], 4.0);
          v110 = v70;
          *&v71 = powf(v111.f32[0], 4.0);
          DWORD1(v71) = v110;
          v110 = v71;
          v72 = powf(v111.f32[2], 4.0);
          v73 = v110;
          *(&v73 + 2) = v72;
          v110 = v73;
          v74 = powf(v111.f32[3], 4.0);
          v75 = v110;
          *(&v75 + 3) = v74;
          v76 = *v104.i8;
          if (v104.i8[0])
          {
            *v76.i32 = v64 / *&v110;
            *(v65 - 2) = v64 / *&v110;
          }

          v77 = v105;
          if (vuzp1_s16(v69, v76).i8[2])
          {
            *(v65 - 1) = v64 / *(&v75 + 1);
          }

          v78 = vmovn_s64(vcgeq_u64(v108, v77));
          *v40.i8 = vuzp1_s16(v78, v78);
          v79 = v106;
          if (v40.i8[4])
          {
            *v65 = v64 / *(&v75 + 2);
          }

          if (vuzp1_s16(v78, v78).i8[6])
          {
            v65[1] = v64 / *(&v75 + 3);
          }

          v62 += 4;
          v80 = vdupq_n_s64(4uLL);
          v66 = vaddq_s64(v77, v80);
          v34 = vaddq_s64(v79, v80);
          v65 += 4;
        }

        while (((v27 + 3) & 0xFFFFFFFC) != v62);
        v81 = 0;
        v82 = 0;
        do
        {
          if (v23 >= 1)
          {
            v83 = &a6[v82];
            v82 += v23;
            v84 = v23;
            v85 = v29[v81];
            v86 = v25;
            do
            {
              v87 = *v86++;
              *v83 = *v83 + (v87 * v85);
              ++v83;
              --v84;
            }

            while (v84);
          }

          ++v81;
        }

        while (v81 != v27);
      }

      v33 = v98 + 1;
    }

    while (v98 + 1 != v94);
  }

  return 0;
}

uint64_t LTMDriverV2::LTMDriver::computeFaceWeightForToneHFF(LTMDriverV2::LTMDriver *this, const sRefDriverInputs_SOFTISP *a2, sLtmComputeInput *a3)
{
  if (LTMDriverV2::LTMDriver::computeFaceWeightForToneHFF(sRefDriverInputs_SOFTISP const*,sLtmComputeInput *)::onceToken != -1)
  {
    LTMDriverV2::LTMDriver::computeFaceWeightForToneHFF();
  }

  *v40 = 0xC00000010;
  fmapHFF = a3->fmapHFF;
  v6 = LTMDriverV2::LTMDriver::computeFaceWeight(this, &a2->localHistGridConfig, a3, a2->faceInfo.rectArray, a2->faceInfo.numFaces, a3->fmapHFF, v40, 2.0);
  MEMORY[0x1EEE9AC00](v6);
  memcpy(v39, a3->fmapHFF, 0x300uLL);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = v8;
    v10 = *&v39[4 * v8 + 4];
    fmapHFF[v8] = (((*&v39[4 * v8] * 0.22561) + 0.0) + (*&v39[4 * v8] * 0.54882)) + (v10 * 0.22561);
    v11 = (v8 << 32) + 0x100000000;
    v12 = 14;
    do
    {
      v13 = &v39[4 * v9];
      v14 = ((*v13 * 0.22561) + 0.0) + (v10 * 0.54882);
      v10 = v13[2];
      a3->fmapHFF[++v9] = v14 + (v10 * 0.22561);
      v11 += 0x100000000;
      --v12;
    }

    while (v12);
    *(fmapHFF + (v11 >> 30)) = (((*&v39[(v11 >> 30) - 4] * 0.22561) + 0.0) + (*&v39[v11 >> 30] * 0.54882)) + (*&v39[v11 >> 30] * 0.22561);
    v8 = v9 + 2;
    ++v7;
  }

  while (v7 != 12);
  memcpy(v39, a3->fmapHFF, 0x300uLL);
  v15 = 0;
  v16 = &v39[64];
  v17 = vdupq_n_s32(0x3E67064Fu);
  v18 = vdupq_n_s32(0x3F0C7F35u);
  do
  {
    v19 = vmlaq_f32(vmlaq_f32(0, v17, v16[-4]), v18, v16[-4]);
    v20 = *v16++;
    *&fmapHFF[v15] = vmlaq_f32(v19, v17, v20);
    v15 += 4;
  }

  while (v15 != 16);
  v21 = &v39[128];
  f32 = &a3->fmapHFF[32];
  v23 = &v39[64];
  v24 = &a3->fmapHFF[16];
  v25 = vdupq_n_s32(0x3E67064Fu);
  v26 = vdupq_n_s32(0x3F0C7F35u);
  v27 = 1;
  do
  {
    v28 = v21;
    v29 = f32;
    v30 = v24;
    v31 = v23;
    v32 = 16;
    do
    {
      *v30++ = vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v25, v31[-4]), v26, *v31), v25, v31[4]);
      ++v31;
      v32 -= 4;
    }

    while (v32);
    ++v27;
    v21 = v28 + 4;
    f32 = v29[4].f32;
    v23 += 4;
    v24 += 16;
  }

  while (v27 != 11);
  v33 = 16;
  v34 = vdupq_n_s32(0x3E67064Fu);
  v35 = vdupq_n_s32(0x3F0C7F35u);
  do
  {
    v36 = vmlaq_f32(0, v34, v28[-4]);
    v37 = *v28++;
    *v29++ = vmlaq_f32(vmlaq_f32(v36, v35, v37), v34, v37);
    v33 -= 4;
  }

  while (v33);
  return 0;
}

void LTMDriverV2::LTMDriver::UpdateColorInformation(LTMDriverV2::LTMDriver *this, sLtmComputeInput *a2, const sRefDriverInputs_SOFTISP *a3, const sCLRProcHITHStat_SOFTISP *a4)
{
  v7 = &a2->thumbnailLumaHist[92];
  if (a3->awbColorspace)
  {
    v8 = LTMDriverV2::LTMDriver::GamutBoundaryRatio(this, a4);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 930) = v8;
  v9 = 59208;
  v10 = 1140;
  HIWORD(v11) = -14464;
  HIWORD(v12) = 14720;
  do
  {
    v13 = *(&a3->HROn + v10);
    v14 = v13;
    if (*(&a3->HROn + v10) < 0)
    {
      v14 = v13 + -65536.0;
    }

    *(&a2->rotationMagnitude + v9) = v14 * 0.00024414;
    v9 += 4;
    v10 += 2;
  }

  while (v10 != 1158);
  if (a3->useSpatialCCM)
  {
    LOWORD(v11) = *(&a3->isLEDMainFlashforAWB + 1);
    v15 = v11;
    if (a3->isLEDMainFlashforAWB)
    {
      LOWORD(v12) = *(&a3->awbGainsSkinOnly.b.v16 + 1);
      *&v16 = v12;
      *&v17 = *&v16 / v15;
      v7[463] = *&v17;
      LOWORD(v17) = *(&a3->awbGainsFlashProj.gb.v16 + 1);
      LOWORD(v16) = *(&a3->awbGains.gb.v16 + 1);
      v7[464] = v17 / v16;
      v7[667] = 1.0;

      LTMDriverV2::LTMDriver::CalculateSpatialCCMWeightMapForLEDFlash(v8, a3, a2);
    }

    else
    {
      LOWORD(v12) = *(&a3->awbGains.b.v16 + 1);
      *&v18 = v12;
      *&v19 = *&v18 / v15;
      v7[463] = *&v19;
      LOWORD(v19) = *(&a3->awbGainsSkinOnly.gb.v16 + 1);
      LOWORD(v18) = *(&a3->awbGains.gb.v16 + 1);
      v7[464] = v19 / v18;
      v7[667] = a3->fdAWBChistMixFactor * 0.0039062;
      calculatedOnPortraitOrientation = a4->calculatedOnPortraitOrientation;

      LTMDriverV2::LTMDriver::ComputeSpatialCCMWeightMap(v8, a3, calculatedOnPortraitOrientation, a2);
    }
  }
}

unsigned __int16 *LTMDriverV2::LTMDriver::ComputeLumaFromThumbnail(LTMDriverV2::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, float a3, float a4, sLtmComputeInput *a5)
{
  v5 = 0;
  v6 = 0;
  thumbnailDownsampleY = a2->thumbnailDownsampleY;
  if (thumbnailDownsampleY <= 1)
  {
    thumbnailDownsampleY = 1;
  }

  v8 = a2->thumbnailWindow / thumbnailDownsampleY;
  thumbnailDownsampleX = a2->thumbnailDownsampleX;
  if (thumbnailDownsampleX <= 1)
  {
    thumbnailDownsampleX = 1;
  }

  v10 = HIWORD(a2->thumbnailWindow) / thumbnailDownsampleX;
  v11 = a3 / 65535.0;
  thumbnailStat = a2->thumbnailStat;
  v13 = ((v8 - 24) / 2);
  tMaxArray = a5->tMaxArray;
  nLumArray = a5->nLumArray;
  do
  {
    if (v13 <= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v13;
    }

    if (v8 >= v13 + 6)
    {
      v17 = v13 + 6;
    }

    else
    {
      v17 = v8;
    }

    v18 = v16 - 2;
    v19 = v5;
    v5 += 8;
    v20 = ((v10 - 32) / 2);
    v21 = 34 * v16 - 70;
    do
    {
      if (v20 <= 2)
      {
        result = 2;
      }

      else
      {
        result = v20;
      }

      v23 = 0.0;
      v24 = 0.0;
      if (v18 < v17)
      {
        v25 = 0;
        v26 = 0;
        v27 = v21 + result;
        v28 = result - 1;
        v29 = result - 2;
        v30 = v20 + 6;
        if (v10 < v20 + 6)
        {
          v30 = v10;
        }

        thumbnailTotal = a2->thumbnailTotal;
        v32 = v30;
        v33 = thumbnailTotal * v27;
        result = (17 * thumbnailTotal);
        v34 = v18;
        do
        {
          v35 = v33;
          v36 = v28;
          if (v29 < v32)
          {
            do
            {
              result = &thumbnailStat[2 * v35];
              v37 = result[2];
              if (result[1] > v37)
              {
                v37 = result[1];
              }

              v38 = result[3];
              if (v38 <= v37)
              {
                v38 = v37;
              }

              if (v38 > v26)
              {
                v25 = *result;
                v26 = v38;
              }

              v36 = (v36 + 1);
              v35 += thumbnailTotal;
            }

            while (v36 < v32);
          }

          ++v34;
          v33 += 34 * thumbnailTotal;
        }

        while (v34 < v17);
        v23 = v26;
        v24 = v25;
      }

      tMaxArray[v19] = fminf(v11 * v23, 1.0);
      nLumArray[v19++] = fminf(v24 * a4, 65535.0) / 65535.0;
      v20 += 4;
    }

    while (v5 != v19);
    v13 += 4;
    ++v6;
  }

  while (v6 != 6);
  return result;
}

void LTMDriverV2::LTMDriver::HFFThumbnailDownscaleConvert(LTMDriverV2::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2, sLtmComputeInput *a3, float a4, float a5, int a6, int a7)
{
  thumbnailStat = a2->thumbnailStat;
  ltcGridScaleLogLumaThumb = a3->ltcGridScaleLogLumaThumb;
  blendingMaskInputTh = a3->blendingMaskInputTh;
  v16 = a4 / 65535.0;
  bzero(a3->ltcGridScaleLogLumaThumb, 0xF00uLL);
  thumbnailTotal = a2->thumbnailTotal;
  v19 = blendingMaskInputTh;
  for (i = 1; i != 25; ++i)
  {
    v21 = 0;
    v22 = thumbnailTotal * ((34 * i) | 1);
    do
    {
      LOWORD(v17) = thumbnailStat[v22];
      v17 = fminf(fminf(v16 * LODWORD(v17), 1.0) * a5, 1.0);
      v23 = ((8 * i - 8) & 0x7FFFFFF0) + ((v21 + ((v21 & 0x80) >> 7)) >> 1);
      ltcGridScaleLogLumaThumb[v23] = ltcGridScaleLogLumaThumb[v23] + v17;
      v19[v21] = v17;
      v22 += thumbnailTotal;
      ++v21;
    }

    while (v21 != 32);
    v19 += 32;
  }

  v24 = 0;
  __asm { FMOV            V0.4S, #0.25 }

  v37 = _Q0;
  do
  {
    v30.i64[0] = 0x3400000034000000;
    v30.i64[1] = 0x3400000034000000;
    v41 = vaddq_f32(vmulq_f32(*&ltcGridScaleLogLumaThumb[v24], v37), v30);
    v38 = logf(v41.f32[1]);
    *&v31 = logf(v41.f32[0]);
    *(&v31 + 1) = v38;
    v39 = v31;
    v32 = logf(v41.f32[2]);
    v33 = v39;
    *(&v33 + 2) = v32;
    v40 = v33;
    v35 = logf(v41.f32[3]);
    v36 = v40;
    *(&v36 + 3) = v35;
    *&ltcGridScaleLogLumaThumb[v24] = v36;
    v24 += 4;
  }

  while (v24 != 192);
  if (a6 == 1)
  {
    LTMDriverV2::LTMDriver::calcBlendingMask(this, a3->CBBrightMap, blendingMaskInputTh, 24, 32, *(this + 6) == 1);
  }

  LTMDriverV2::LTMDriver::calcHFFDampWeight(v34, &a3->HFFDampWeight, blendingMaskInputTh, a7);
}

float LTMDriverV2::LTMDriver::calcBlendingMask(LTMDriverV2::LTMDriver *this, float *a2, const float *a3, int a4, int a5, int a6)
{
  v124 = a6;
  v121 = a4;
  v122 = a3;
  v8 = (a5 * a4);
  MEMORY[0x1EEE9AC00](this);
  v10 = MEMORY[0x1EEE9AC00](&v120[-((v9 + 15) & 0x7FFFFFFF0)]);
  v12 = &v120[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v120[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v120[-v17];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v120[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v120[-v23];
  v125 = v22;
  bzero(v22, 4 * v8);
  bzero(v12, 4 * v8);
  bzero(v15, 4 * v8);
  bzero(v18, 4 * v8);
  bzero(v21, 4 * v8);
  v123 = 4 * v8;
  v25 = v15;
  v26 = v121;
  bzero(v24, v123);
  LTMDriverV2::LTMDriver::average3x3(v27, v122, v25, v26, a5);
  LODWORD(v122) = a5;
  LTMDriverV2::LTMDriver::average3x3(v28, v25, v18, v26, a5);
  if (v8 >= 1)
  {
    v30 = v8;
    v31 = v18;
    v32 = v24;
    do
    {
      v33 = *v31++;
      v34 = fabsf(sqrtf(v33));
      if (v33 == -INFINITY)
      {
        v35 = INFINITY;
      }

      else
      {
        v35 = v34;
      }

      *v32++ = v35;
      --v30;
    }

    while (v30);
  }

  v36 = v8 & 0xFFFFFFFC;
  if (v36 < 1)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v37 = 0;
    v38 = v25;
    v39 = v18;
    v40 = v21;
    do
    {
      v41 = *v38++;
      v42 = v41;
      v43 = *v39++;
      *v40++ = vsubq_f32(v42, v43);
      v37 += 4;
    }

    while (v37 < v36);
  }

  if (v37 < v8)
  {
    v44 = v8 - v37;
    v45 = &v21[v37];
    v46 = &v18[v37];
    v47 = &v25[v37];
    do
    {
      v48 = *v47++;
      v49 = v48;
      v50 = *v46++;
      *v45++ = v49 - v50;
      --v44;
    }

    while (v44);
  }

  if (v8 >= 1)
  {
    v51 = v8;
    v52 = v125;
    v53 = v12;
    do
    {
      v54 = *v18++;
      v55 = *v21 / (v54 + 0.001);
      *v21++ = v55;
      v56 = *v24++;
      v57 = v56;
      v58 = ((1.0 - v56) * 0.05) + (v55 * -0.95);
      v59 = v58 <= 0.0;
      v60 = v58 < 1.0 || v58 <= 0.0;
      if (v58 >= 1.0)
      {
        v59 = 1;
      }

      if (v60)
      {
        v61 = 0.0;
      }

      else
      {
        v61 = 1.0;
      }

      if (v59)
      {
        v58 = v61;
      }

      *v52++ = v58;
      v62 = (v57 * 0.1) + (v55 * 0.9);
      v63 = v62 <= 0.0;
      v64 = v62 < 1.0 || v62 <= 0.0;
      if (v62 >= 1.0)
      {
        v63 = 1;
      }

      if (v64)
      {
        v65 = 0.0;
      }

      else
      {
        v65 = 1.0;
      }

      if (v63)
      {
        v62 = v65;
      }

      *v53++ = v62;
      --v51;
    }

    while (v51);
  }

  MEMORY[0x1EEE9AC00](v29);
  v66 = (4 * v8 + 15) & 0x7FFFFFFF0;
  v67 = v125;
  v68 = v123;
  v69 = memcpy(&v120[-v66], v125, v123);
  v70 = v122;
  LTMDriverV2::LTMDriver::average3x3(v69, &v120[-v66], v67, v26, v122);
  MEMORY[0x1EEE9AC00](v71);
  v72 = memcpy(&v120[-v66], v12, v68);
  LTMDriverV2::LTMDriver::average3x3(v72, &v120[-v66], v12, v26, v70);
  v73 = v8 & 0xFFFFFFF0;
  if (v124)
  {
    if (v73 < 1)
    {
      LODWORD(v74) = 0;
    }

    else
    {
      v74 = 0;
      v75 = (v67 + 8);
      v76 = vdupq_n_s32(0x3ECCCCCDu);
      do
      {
        v77 = vmulq_f32(v75[-1], v76);
        v78 = vmulq_f32(*v75, v76);
        v79 = vmulq_f32(v75[1], v76);
        v75[-2] = vmulq_f32(v75[-2], v76);
        v75[-1] = v77;
        *v75 = v78;
        v75[1] = v79;
        v75 += 4;
        v74 += 16;
      }

      while (v74 < v73);
    }

    if (v74 < v8)
    {
      v86 = v8 - v74;
      v87 = &v67[v74];
      do
      {
        *v87 = *v87 * 0.4;
        ++v87;
        --v86;
      }

      while (v86);
    }

    if (v73 < 1)
    {
      LODWORD(v88) = 0;
    }

    else
    {
      v88 = 0;
      v89 = (v12 + 8);
      v90 = vdupq_n_s32(0x3EE66666u);
      do
      {
        v91 = vmulq_f32(v89[-1], v90);
        v92 = vmulq_f32(*v89, v90);
        v93 = vmulq_f32(v89[1], v90);
        v89[-2] = vmulq_f32(v89[-2], v90);
        v89[-1] = v91;
        *v89 = v92;
        v89[1] = v93;
        v89 += 4;
        v88 += 16;
      }

      while (v88 < v73);
    }

    v102 = 0.25;
    if (v88 < v8)
    {
      v103 = v8 - v88;
      v104 = &v12[v88];
      do
      {
        *v104 = *v104 * 0.45;
        ++v104;
        --v103;
      }

      while (v103);
    }
  }

  else
  {
    if (v73 < 1)
    {
      LODWORD(v80) = 0;
    }

    else
    {
      v80 = 0;
      v81 = (v67 + 8);
      v82 = vdupq_n_s32(0x3EB33333u);
      do
      {
        v83 = vmulq_f32(v81[-1], v82);
        v84 = vmulq_f32(*v81, v82);
        v85 = vmulq_f32(v81[1], v82);
        v81[-2] = vmulq_f32(v81[-2], v82);
        v81[-1] = v83;
        *v81 = v84;
        v81[1] = v85;
        v81 += 4;
        v80 += 16;
      }

      while (v80 < v73);
    }

    if (v80 < v8)
    {
      v94 = v8 - v80;
      v95 = &v67[v80];
      do
      {
        *v95 = *v95 * 0.35;
        ++v95;
        --v94;
      }

      while (v94);
    }

    if (v73 < 1)
    {
      LODWORD(v96) = 0;
    }

    else
    {
      v96 = 0;
      v97 = (v12 + 8);
      v98.i64[0] = 0x3F0000003F000000;
      v98.i64[1] = 0x3F0000003F000000;
      do
      {
        v99 = vmulq_f32(v97[-1], v98);
        v100 = vmulq_f32(*v97, v98);
        v101 = vmulq_f32(v97[1], v98);
        v97[-2] = vmulq_f32(v97[-2], v98);
        v97[-1] = v99;
        *v97 = v100;
        v97[1] = v101;
        v97 += 4;
        v96 += 16;
      }

      while (v96 < v73);
    }

    v102 = 0.3;
    if (v96 < v8)
    {
      v105 = v8 - v96;
      v106 = &v12[v96];
      do
      {
        *v106 = *v106 * 0.5;
        ++v106;
        --v105;
      }

      while (v105);
    }
  }

  if (v8 >= 1)
  {
    v107 = v67;
    do
    {
      v108 = *v12++;
      *v107 = *v107 * (1.0 / (v102 + (v108 + *v107)));
      ++v107;
      --v8;
    }

    while (v8);
  }

  bzero(a2, 0x300uLL);
  if (v26 > 0)
  {
    v109 = 0;
    v110 = 0;
    do
    {
      if (v70 >= 1)
      {
        v111 = 0;
        do
        {
          a2[((8 * v109) & 0x7FFFFFF0) + (v111 >> 1)] = v67[v110 + v111] + a2[((8 * v109) & 0x7FFFFFF0) + (v111 >> 1)];
          ++v111;
        }

        while (v70 != v111);
        v110 += v111;
      }

      ++v109;
    }

    while (v109 != v26);
  }

  v112 = 0;
  __asm { FMOV            V0.4S, #0.25 }

  do
  {
    *&a2[v112] = vmulq_f32(*&a2[v112], _Q0);
    v112 += 4;
  }

  while (v112 != 192);
  v118 = memcpy(v126, a2, 0x300uLL);
  return LTMDriverV2::LTMDriver::average3x3(v118, v126, a2, 12, 16);
}

void LTMDriverV2::LTMDriver::calcHFFDampWeight(LTMDriverV2::LTMDriver *this, float *a2, const float *__src, int a4)
{
  if (a4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      *v6.i32 = (((*v6.i32 + COERCE_FLOAT(*&__src[v5])) + COERCE_FLOAT(HIDWORD(*&__src[v5]))) + COERCE_FLOAT(*&__src[v5 + 2])) + COERCE_FLOAT(HIDWORD(*&__src[v5]));
      v5 += 4;
    }

    while (v5 != 768);
    v7 = 0;
    *v6.i32 = *v6.i32 / 768.0;
    v8 = vdupq_lane_s32(v6, 0);
    v9 = 0.0;
    do
    {
      v10 = vsubq_f32(*&__src[v7], v8);
      v11 = vmulq_f32(v10, v10);
      v9 = (((v9 + v11.f32[0]) + v11.f32[1]) + v11.f32[2]) + v11.f32[3];
      v7 += 4;
    }

    while (v7 != 768);
    v12 = v9 / 768.0;
    v13 = fabsf(sqrtf(v9 / 768.0)) + -0.001;
    memcpy(v16, __src, sizeof(v16));
    qsort(v16, 0x300uLL, 4uLL, compFloat);
    v14 = fminf(fmaxf(((v16[767] / v16[751]) + -1.5) / 3.0, 0.0), 1.0);
    v15 = (v13 / -0.0399) + 1.0;
    if (v12 == -INFINITY)
    {
      v15 = -INFINITY;
    }

    *a2 = fmaxf(v14, fminf(fmaxf(v15, 0.0), 1.0));
  }

  else
  {
    *a2 = 1.0;
  }
}

unsigned int LTMDriverV2::LTMDriver::GamutBoundaryRatio(LTMDriverV2::LTMDriver *this, const sCLRProcHITHStat_SOFTISP *a2)
{
  if (a2->thumbnailDownsampleY)
  {
    v11 = a2->thumbnailWindow / a2->thumbnailDownsampleY;
  }

  else
  {
    v11 = 0;
  }

  if (a2->thumbnailDownsampleX)
  {
    v12 = HIWORD(a2->thumbnailWindow) / a2->thumbnailDownsampleX;
  }

  else
  {
    v12 = 0;
  }

  v48 = v9;
  v49 = v8;
  v50 = v7;
  v51 = v6;
  v52 = v5;
  v53 = v4;
  v54 = v3;
  v55 = v2;
  thumbnailStat = a2->thumbnailStat;
  memset(v47, 0, sizeof(v47));
  if (v11)
  {
    v14 = 0;
    v15 = 0;
    HIWORD(v16) = 14208;
    do
    {
      if (v12)
      {
        thumbnailTotal = a2->thumbnailTotal;
        v18 = thumbnailTotal * v14;
        v19 = v12;
        do
        {
          v20 = &thumbnailStat[2 * v18];
          LOWORD(v16) = *(v20 + 1);
          v21 = LODWORD(v16);
          LOWORD(v10) = *(v20 + 2);
          v22 = LODWORD(v10);
          LOWORD(v2) = *(v20 + 3);
          *&v2 = v2;
          v23 = ((v22 * -0.22499) + (v21 * 1.225)) + (*&v2 * -0.000005);
          v24 = ((v22 * 1.0421) + (v21 * -0.042061)) + (*&v2 * -0.000001);
          v10 = v22 * -0.078641;
          v16 = v10 + (v21 * -0.019641);
          v25 = v16 + (*&v2 * 1.0983);
          if (v23 < 0.0)
          {
            v26 = -1;
          }

          else
          {
            v26 = 0;
          }

          if (v23 > 65535.0)
          {
            v26 = 1;
          }

          v28 = v24 > 65535.0 && v25 > 65535.0;
          if (v23 < 0.0 && !v28)
          {
            v26 = -1;
          }

          if (v25 > 65535.0 || (v24 <= 65535.0 ? (v29 = v26 == 0) : (v29 = 0), !v29))
          {
            v30 = ((v24 * 0.17757) + (v23 * 0.82243)) + (v25 * 0.000004);
            v10 = vabds_f32(v23, v30);
            v31 = 0.0;
            if (v26 == 1)
            {
              v31 = (v23 + -65535.0) / v10;
            }

            v32 = ((v24 * 0.9668) + (v23 * 0.033196)) + (v25 * 0.000001);
            if (v24 > 65535.0)
            {
              v31 = fmaxf(v31, (v24 + -65535.0) / vabds_f32(v24, v32));
            }

            *&v2 = ((v24 * 0.072402) + (v23 * 0.017085)) + (v25 * 0.91051);
            if (v25 > 65535.0)
            {
              v31 = fmaxf(v31, (v25 + -65535.0) / vabds_f32(v25, *&v2));
            }

            if (v26 == -1)
            {
              v10 = -v23 / v10;
              v31 = fmaxf(v31, v10);
            }

            v16 = fminf(v31, 1.0);
            if (v16 > 0.0)
            {
              v33 = fmaxf(fminf(v23, 65535.0), 0.0);
              v34 = fmaxf(fminf(v24, 65535.0), 0.0);
              v35 = fmaxf(fminf(v25, 65535.0), 0.0);
              v36 = (((vabds_f32(v30, fmaxf(fminf(((v34 * 0.17757) + (v33 * 0.82243)) + (v35 * 0.000004), 65535.0), 0.0)) * 27.217) + (vabds_f32(v32, fmaxf(fminf(((v34 * 0.9668) + (v33 * 0.033196)) + (v35 * 0.000001), 65535.0), 0.0)) * 6.7213)) + (vabds_f32(*&v2, fmaxf(fminf(((v34 * 0.072402) + (v33 * 0.017085)) + (v35 * 0.91051), 65535.0), 0.0)) * 50.482)) * 0.000015259;
              v37 = llroundf(v16 * 15.0);
              v38 = (v36 * v36) / (v16 + 1.0);
              v10 = *(v47 + v37);
              v16 = v38 + v10;
              *(v47 + v37) = v16;
            }
          }

          v18 += thumbnailTotal;
          --v19;
        }

        while (v19);
      }

      ++v15;
      v14 += v12;
    }

    while (v15 != v11);
  }

  v39 = 0;
  v40 = 0.0;
  do
  {
    v40 = (((v40 + COERCE_FLOAT(v47[v39])) + COERCE_FLOAT(HIDWORD(*&v47[v39]))) + COERCE_FLOAT(*(&v47[v39] + 1))) + COERCE_FLOAT(HIDWORD(v47[v39]));
    ++v39;
  }

  while (v39 != 4);
  v41 = 0.0;
  if (v40 > 1.0)
  {
    v42 = 0.0;
    v43 = 15;
    while (1)
    {
      v44 = v42 + *(v47 + v43);
      if (v44 > 1.0)
      {
        break;
      }

      --v43;
      v42 = v44;
      if (v43 == -1)
      {
        v45 = 16.0;
        v42 = v44;
        goto LABEL_49;
      }
    }

    v45 = v43;
LABEL_49:
    v41 = vcvts_n_f32_s32((v45 - ((1.0 - v42) / (v44 - v42))), 4uLL) * 10.0;
  }

  return llroundf(v41);
}

void LTMDriverV2::LTMDriver::ComputeSpatialCCMWeightMap(LTMDriverV2::LTMDriver *this, const sRefDriverInputs_SOFTISP *a2, unsigned int a3, sLtmComputeInput *a4)
{
  numFaces = a2->faceInfo.numFaces;
  AuxCompute::CalcLTMspatialCCMSize(&a2->tileStatsRegion, a3, v52);
  if (a3)
  {
    v8 = 12;
  }

  else
  {
    v8 = 16;
  }

  if (a3)
  {
    v9 = 16;
  }

  else
  {
    v9 = 12;
  }

  if (numFaces < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = (v52[4] * v8);
    v12 = (v52[5] * v9);
    v13 = v53;
    v14 = v54;
    v15 = v8;
    v16 = v9;
    v17 = 0.0;
    do
    {
      v18 = &a2->faceInfo.rectArray[v10];
      x = v18->x;
      y = v18->y;
      width = v18->width;
      height = v18->height;
      if (a3)
      {
        v23 = width;
        v24 = x;
      }

      else
      {
        v23 = height;
        height = width;
        v24 = y;
        y = x;
      }

      v25 = 0;
      LODWORD(v26) = 0;
      v27 = fmaxf((y - v13) / v11, 0.0);
      v28 = fmaxf((v24 - v14) / v12, 0.0);
      v29 = v27 * v15;
      v30 = v28 * v16;
      v31 = (fminf(height / v11, 1.0) + v27) * v15;
      v32 = (fminf(v23 / v12, 1.0) + v28) * v16;
      v33 = (v29 + v31) * 0.5;
      v34 = (v30 + v32) * 0.5;
      v35 = (fmaxf(v33, v15 - v33) + -0.5) + (fmaxf(v34, v16 - v34) + -0.5);
      do
      {
        v36 = 0;
        v37 = v25;
        v38 = v25 + 0.5;
        if (v38 <= v34)
        {
          v39 = (v34 - v25) + -0.5;
        }

        else
        {
          v39 = v38 - v34;
        }

        v40 = v32 < v37 || v30 > v37;
        v41 = fminf(++v25, v32) - fmaxf(v37, v30);
        v26 = v26;
        do
        {
          v42 = v36;
          v43 = v36 + 0.5;
          if (v43 <= v33)
          {
            v44 = (v33 - v36) + -0.5;
          }

          else
          {
            v44 = v43 - v33;
          }

          v45 = fmaxf(fminf(1.0 - ((v39 + v44) / v35), 1.0), 0.0);
          v46 = v29 > v42 || v40;
          if ((v46 & 1) != 0 || v31 < v42)
          {
            ++v36;
          }

          else
          {
            v47 = v41 * (fminf(++v36, v31) - fmaxf(v42, v29));
            if (v47 > v45)
            {
              v45 = v47;
            }
          }

          if (v45 > v17)
          {
            v17 = v45;
          }

          a4->ccmWeights[v26] = fmaxf(v45, a4->ccmWeights[v26]);
          ++v26;
        }

        while (v36 != v8);
      }

      while (v25 != v9);
      ++v10;
    }

    while (v10 != numFaces);
  }

  v48 = 0;
  for (i = 0; i != v9; ++i)
  {
    v50 = &a4->ccmWeights[v48];
    v51 = v8;
    do
    {
      if (v17 > 0.0)
      {
        *v50 = *v50 / v17;
      }

      ++v50;
      --v51;
    }

    while (v51);
    v48 += v8;
  }
}

_DWORD *LTMDriverV2::LTMDriver::CalculateSpatialCCMWeightMapForLEDFlash(LTMDriverV2::LTMDriver *this, const sRefDriverInputs_SOFTISP *a2, sLtmComputeInput *a3)
{
  v3 = 0;
  flashMixPercentage = a2->flashMixPercentage;
  v5.i64[0] = 0x1000100010001;
  v5.i64[1] = 0x1000100010001;
  do
  {
    v5 = vmaxq_u16(*&flashMixPercentage[v3], v5);
    v3 += 8;
  }

  while (v3 != 256);
  v6 = 0;
  v5.i16[0] = vmaxvq_u16(v5);
  *v5.i32 = v5.u32[0];
  p_flashProjMixWeighting = &a2->flashProjMixWeighting;
  v8 = vdupq_lane_s32(*v5.i8, 0);
  v9 = vld1q_dup_f32(p_flashProjMixWeighting);
  do
  {
    v10 = *flashMixPercentage;
    flashMixPercentage += 8;
    v11 = &v39[v6 + 17];
    *v11 = vmulq_f32(v9, vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v10.i8)), v8));
    v11[1] = vmulq_f32(v9, vdivq_f32(vcvtq_f32_u32(vmovl_high_u16(v10)), v8));
    v6 += 8;
  }

  while (v6 != 256);
  v12 = 0;
  v13 = xmmword_1C932FAF0;
  v14 = vdupq_n_s64(0x11uLL);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v14, v13)).u8[0])
    {
      *&v39[v12] = vcvts_n_f32_u32(v12, 4uLL);
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11uLL), *&v13)).i32[1])
    {
      *&v39[v12 + 1] = vcvts_n_f32_u32(v12 + 1, 4uLL);
    }

    v12 += 2;
    v13 = vaddq_s64(v13, v15);
  }

  while (v12 != 18);
  v16 = 0;
  v39[0] = 0;
  v39[16] = 1065353216;
  v17 = xmmword_1C932FAF0;
  v18 = vdupq_n_s64(0x11uLL);
  v19 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v18, v17)).u8[0])
    {
      *&v38[v16] = vcvts_n_f32_u32(v16, 4uLL);
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x11uLL), *&v17)).i32[1])
    {
      *&v38[v16 + 1] = vcvts_n_f32_u32(v16 + 1, 4uLL);
    }

    v16 += 2;
    v17 = vaddq_s64(v17, v19);
  }

  while (v16 != 18);
  LODWORD(v20) = 0;
  v21 = 0;
  v22 = 0;
  v38[0] = 0;
  v38[16] = 1065353216;
  ccmWeights = a3->ccmWeights;
  do
  {
    ++v22;
    v24 = v21;
    do
    {
      if ((v22 / 12.0) <= *&v38[v24])
      {
        break;
      }

      ++v24;
    }

    while (v24 != 17);
    v25 = 0;
    v26 = 0;
    if (v24 >= 16)
    {
      LODWORD(v24) = 16;
    }

    v20 = v20;
    result = &v39[16 * v21 + 17];
    do
    {
      ++v26;
      LODWORD(v28) = v25;
      if (v25 <= 16)
      {
        v29 = vcvts_n_f32_u32(v26, 4uLL);
        v28 = v25;
        do
        {
          if (v29 <= *&v39[v28])
          {
            break;
          }

          ++v28;
        }

        while (v28 != 17);
      }

      if (v28 >= 16)
      {
        LODWORD(v28) = 16;
      }

      if (v21 >= v24)
      {
        v37 = NAN;
      }

      else
      {
        v30 = 0;
        v31 = &result[v25];
        v32 = 0.0;
        v33 = v21;
        do
        {
          if (v28 > v25)
          {
            v34 = v28 - v25;
            v35 = v31;
            do
            {
              v36 = *v35++;
              v32 = v32 + v36;
              --v34;
            }

            while (v34);
            v30 += v28 - v25;
          }

          ++v33;
          v31 += 16;
        }

        while (v33 != v24);
        v37 = v32 / v30;
      }

      v25 = v28 - 1;
      ccmWeights[v20++] = v37;
    }

    while (v26 != 16);
    v21 = v24 - 1;
  }

  while (v22 != 12);
  return result;
}

float LTMDriverV2::LTMDriver::average3x3(LTMDriverV2::LTMDriver *this, const float *a2, float *a3, int a4, int a5)
{
  if (a5 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a5;
  }

  if (a4 <= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a4;
  }

  MEMORY[0x1EEE9AC00](this);
  v14 = &v42 - v13;
  v15 = 0;
  v16 = 0;
  v17 = (&v42 - v13);
  do
  {
    v18 = v16;
    v19 = v16 + 1;
    a3[v16] = (*(v9 + 4 * v19) + (*(v9 + 4 * v16) + (*(v9 + 4 * v16) + 0.0))) / 3.0;
    if (v11 < 3)
    {
      v22 = v16 + 1;
    }

    else
    {
      v20 = (v9 + 8 + 4 * v16);
      v21 = (v10 + 4 + 4 * v16);
      v22 = v16 + 1;
      v23 = v7 - 2;
      v24 = (v18 << 32) + 0x100000000;
      do
      {
        v25 = *(v20 - 1) + (*(v20 - 2) + 0.0);
        v26 = *v20++;
        *v21++ = (v26 + v25) / 3.0;
        v24 += 0x100000000;
        ++v22;
        --v23;
      }

      while (v23);
      v19 = v24 >> 32;
    }

    a3[v19] = (*(v9 + 4 * v19) + (*(v9 + 4 * v19) + (*(v9 + 4 * v19 - 4) + 0.0))) / 3.0;
    v16 = v22 + 1;
    ++v15;
  }

  while (v15 != v8);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  memcpy(&v42 - v13, a3, 4 * v12);
  v27 = 0;
  do
  {
    a3[v27] = (v17[v7] + (*v17 + (*v17 + 0.0))) / 3.0;
    ++v17;
    ++v27;
  }

  while (v7 != v27);
  v28 = v7;
  if (a4 >= 3)
  {
    v29 = 1;
    v30 = v7;
    do
    {
      v31 = &v14[4 * v30];
      v32 = v30 << 32;
      v33 = v7;
      v34 = &a3[v30];
      do
      {
        *v34++ = (v31[v7] + (*v31 + (v31[-v7] + 0.0))) / 3.0;
        ++v31;
        v30 = (v30 + 1);
        v32 += 0x100000000;
        --v33;
      }

      while (v33);
    }

    while (v29++ != v8 - 2);
    v28 = v32 >> 32;
  }

  v36 = -1 * v7;
  v37 = &v14[4 * v28];
  result = 0.0;
  v39 = &a3[v28];
  do
  {
    v40 = v37[v36] + 0.0;
    v41 = *v37++;
    *v39++ = (v41 + (v41 + v40)) / 3.0;
    LODWORD(v7) = v7 - 1;
  }

  while (v7);
  return result;
}

LTMComputeV1 *LTMComputeV1::LTMCompute::LTMCompute(LTMComputeV1::LTMCompute *this, int a2)
{
  *this = &unk_1F48DECA0;
  *(this + 1) = a2;
  bzero(this + 3352, 0x1564uLL);
  *(this + 2) = &LTMComputeV1::LTMCompute::tuningParamsSDR;
  dword_1EDD777C4 = 1034147594;
  return this;
}

void LTMComputeV1::LTMCompute::computeLocalLuma(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmTuningParams *a3, const sLtmDisplayParams *a4, sLtmFrameParams *a5)
{
  v5 = 0;
  var1 = a5->var1;
  v7 = &a2->localHist[4156];
  v8.i32[1] = 0;
  v9.i32[1] = 872415232;
  v10 = &a2->localHist[4204];
  p_var2 = &a4[-1].var2;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = a5;
  do
  {
    v16 = v7[v5];
    v17 = 0.0;
    v18 = 0.0;
    if (v16 >= 0.00000011921)
    {
      v19 = v10[v5];
      v20 = 1.0 - (*a3 * fmaxf(v19 + -0.2, 0.0));
      v17 = (v19 / v16) * v20;
      v15->var0[0] = v17;
      v18 = v10[v5] * v20;
    }

    *var1 = v18;
    v21 = fmaxf(v18, fminf(v17, 1.0));
    v15->var0[0] = v21;
    if (v21 <= 0.0)
    {
      v25 = a4->var0[0];
    }

    else if (v21 >= 1.0)
    {
      v25 = a4->var0[64];
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = v22;
        v24 = *(&LTMComputeV1::LTMCompute::localCurveInputs + v22++);
      }

      while (v23 <= 0x40 && v24 < v21);
      v25 = 0.0;
      if (v22 != 1)
      {
        v26 = (v22 - 2);
        v27 = *(&LTMComputeV1::LTMCompute::localCurveInputs + v26);
        if (vabds_f32(v24, v27) >= 0.00000011921)
        {
          v25 = a4->var0[v26] + (((v21 - v27) / (v24 - v27)) * (*&p_var2[4 * v22] - a4->var0[v26]));
        }

        else
        {
          v25 = *&p_var2[4 * v22];
        }
      }
    }

    v28 = v25 * a4->var0[130];
    v15->var0[0] = v28;
    v15 = (v15 + 4);
    v29 = v7[v5];
    v12 = v12 + v29;
    v13 = v13 + (v28 * v29);
    v14 = v14 + (v18 * v29);
    ++var1;
    ++v5;
  }

  while (v5 != 48);
  if (v12 <= 0.0)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = v13 / v12;
  }

  a5->var2 = v30;
  if (v12 <= 0.0)
  {
    v31 = 1.0;
  }

  else
  {
    v31 = v14 / v12;
  }

  *v9.i32 = v30 * 0.3;
  v32 = vdupq_lane_s32(v9, 0);
  a5->var3 = v31;
  v33 = &a5->var0[4];
  v34 = -8;
  v35 = vdupq_n_s32(0x3F333333u);
  do
  {
    v36 = vaddq_f32(v32, vmulq_f32(*v33, v35));
    v33[-1] = vaddq_f32(v32, vmulq_f32(v33[-1], v35));
    *v33 = v36;
    v34 += 8;
    v33 += 2;
  }

  while (v34 < 0x28);
  *v8.i32 = a5->var3 * 0.3;
  v37 = vdupq_lane_s32(v8, 0);
  v38 = &a5->var1[4];
  v39 = -8;
  v40 = vdupq_n_s32(0x3F333333u);
  do
  {
    v41 = vaddq_f32(v37, vmulq_f32(*v38, v40));
    v38[-1] = vaddq_f32(v37, vmulq_f32(v38[-1], v40));
    *v38 = v41;
    v39 += 8;
    v38 += 2;
  }

  while (v39 < 0x28);
}

void LTMComputeV1::LTMCompute::calculateDisplayModel(LTMComputeV1::LTMCompute *this, float a2, float a3, const float *a4, float *a5)
{
  v8 = 0;
  v9 = a2 * 0.015625;
  *(a5 + 14) = 0u;
  *(a5 + 15) = 0u;
  *(a5 + 12) = 0u;
  *(a5 + 13) = 0u;
  *(a5 + 10) = 0u;
  *(a5 + 11) = 0u;
  *(a5 + 8) = 0u;
  *(a5 + 9) = 0u;
  *(a5 + 6) = 0u;
  *(a5 + 7) = 0u;
  *(a5 + 4) = 0u;
  *(a5 + 5) = 0u;
  *(a5 + 2) = 0u;
  *(a5 + 3) = 0u;
  *a5 = 0u;
  *(a5 + 1) = 0u;
  a5[64] = 0.0;
  do
  {
    v10 = 0;
    v11 = v8++;
    v12 = a3 + (v8 * v9);
    do
    {
      v13 = a3 + (v10 * v9);
      v14 = vabds_f32(v13, v12);
      if (v13 >= v12)
      {
        v15 = 8.22;
        v16 = v14 / (v12 + 0.39);
      }

      else
      {
        v15 = -7.07;
        v16 = (v14 * 0.945) / ((v13 + 0.39) + (v14 * 0.055));
      }

      a5[v10] = a5[v10] + ((v15 * log10f((v16 * 6.58) + 1.0)) * a4[v11]);
      ++v10;
    }

    while (v10 != 65);
  }

  while (v8 != 64);
  v17 = vld1q_dup_f32(a5);
  for (i = 1; i != 65; i += 4)
  {
    *&a5[i] = vsubq_f32(*&a5[i], v17);
  }

  *a5 = 0.0;
}

uint64_t LTMComputeV1::LTMCompute::calculateSceneModel(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmTuningParams *a3, sLtmFrameParams *a4)
{
  var5 = a4->var5;
  v8 = this + 0x2000;
  if (*(this + 8825))
  {
    v9 = 0;
  }

  else
  {
    *(this + 8825) = 1;
    v9 = this + 4720;
  }

  v10 = &a2->localHist[4092];
  v11 = 0;
  v12 = (logf(0.00024414 / fmaxf(a4->var6[68], 1.0)) * 3.0) / -8.3178;
  do
  {
    v13 = vcvts_n_f32_u32(v11, 4uLL);
    *&v9[4 * v11++] = fmaxf(powf(v13, v12) * a4->var6[68], v13 * v13);
  }

  while (v11 != 17);
  v14 = a4->var6[74];
  v15 = (*(a3 + 17) * (1.0 - a4->var6[71])) + (*(a3 + 16) * a4->var6[71]);
  v16 = fmaxf(v10[405], 1.0);
  v17 = a4->var6[73];
  v18 = *(a3 + 18) * v17;
  v69 = v8;
  if (v8[632])
  {
    v19 = 0;
  }

  else
  {
    v8[632] = 1;
    v19 = (this + 3352);
  }

  v20 = 0;
  v73 = v14 * v15;
  v21 = v19 + 16;
  v22 = 0.0;
  v70 = v17 * v18;
  v71 = (v14 * 0.015625) * v16;
  do
  {
    v23 = LTMComputeV1::LTMCompute::localCurveInputs[v20 + 1];
    v24 = 1.0 / *(a3 + 19);
    v25 = powf(v23, v24);
    v21->f32[v20++] = v25 - powf(v22, v24);
    v22 = v23;
  }

  while (v20 != 64);
  v27 = v19 + 17;
  v28 = -8;
  v29 = 1.0 / v19[16].f32[0];
  do
  {
    v30 = vmulq_n_f32(*v27, v29);
    v27[-1] = vmulq_n_f32(v27[-1], v29);
    *v27 = v30;
    v28 += 8;
    v27 += 2;
  }

  while (v28 < 0x38);
  v31 = &a2->localHist[4316];
  v32 = -4;
  v33 = v19 + 16;
  v34 = &a2->localHist[4316];
  do
  {
    v35 = *v34;
    v34 += 4;
    *v33 = vminq_f32(*v33, v35);
    ++v33;
    v32 += 4;
  }

  while (v32 < 0x3C);
  v36 = fmaxf((a4->var6[73] * 1.5) + -0.5, 0.0);
  v37 = -4;
  do
  {
    v38 = *v31;
    v31 += 4;
    v21[-16] = vaddq_f32(vmulq_n_f32(v38, v36), vmulq_n_f32(*v21, 1.0 - v36));
    v37 += 4;
    ++v21;
  }

  while (v37 < 0x3C);
  v39 = 0;
  v40 = 0.0;
  do
  {
    v40 = (((v40 + COERCE_FLOAT(*&v19[v39])) + COERCE_FLOAT(HIDWORD(v19[v39].i64[0]))) + COERCE_FLOAT(v19[v39].i64[1])) + COERCE_FLOAT(HIDWORD(*&v19[v39]));
    ++v39;
  }

  while (v39 != 16);
  v41 = 0;
  v42 = fmaxf(((-(1.0 - v10[403]) * 0.5) + 1.0) - v40, 0.0);
  do
  {
    v19->f32[v41] = v19->f32[v41] + (v42 * *&LTMComputeV1::LTMCompute::defaultHist[v41]);
    ++v41;
  }

  while (v41 != 64);
  v43 = 0;
  *(v9 + 100) = 0u;
  *(v9 + 116) = 0u;
  *(v9 + 68) = 0u;
  *(v9 + 84) = 0u;
  *(v9 + 33) = 0;
  do
  {
    v44 = v43 + 1;
    if (v19->f32[v43] > 0.00000011921)
    {
      v45 = v73 + ((v44 - v70) * v71);
      v46 = 17;
      v47 = (v9 + 68);
      do
      {
        v48 = v73 + (*(v47 - 17) * a4->var6[74]);
        v49 = vabds_f32(v48, v45);
        if (v48 >= v45)
        {
          v51 = 8.22;
          v50 = v49 / (v45 + 0.39);
        }

        else
        {
          v50 = (v49 * 0.945) / ((v48 + 0.39) + (v49 * 0.055));
          v51 = -7.07;
        }

        *v47 = *v47 + ((v51 * log10f((v50 * 6.58) + 1.0)) * v19->f32[v43]);
        ++v47;
        --v46;
      }

      while (v46);
    }

    ++v43;
  }

  while (v44 != 64);
  v69[632] = 0;
  LTMComputeV2::LTMCompute::interpolate(v26, v9, v9 + 17, 17, LTMComputeV1::LTMCompute::localCurveInputs, v9 + 34, 65);
  v53 = (var5 + 64);
  v54 = (v9 + 140);
  v55 = -4;
  v56 = (v9 + 140);
  do
  {
    *v53++ = vsubq_f32(*v56, *(v56 - 4));
    v55 += 4;
    ++v56;
  }

  while (v55 < 0x3C);
  v57 = LTMComputeV2::LTMCompute::interpolate(v52, v9, v9 + 17, 17, LTMComputeV1::LTMCompute::localCurveInputs, v9 + 34, 65, a4->var6[68]);
  v58 = -4;
  v59 = var5;
  do
  {
    *v59++ = vsubq_f32(*v54, *(v54 - 4));
    v58 += 4;
    ++v54;
  }

  while (v58 < 0x3C);
  v60 = v9 + 396;
  result = LTMComputeV2::LTMCompute::interpolate(v57, v9, v9 + 17, 17, a4->var4, v9 + 34, 65, a4->var6[68]);
  v62 = (v9 + 136);
  v63 = vld1q_dup_f32(v62);
  v64 = 16;
  v65 = (v9 + 396);
  do
  {
    v66 = v65[-16];
    *v65++ = vabdq_f32(v66, vextq_s8(v63, v66, 0xCuLL));
    v63 = v66;
    --v64;
  }

  while (v64 * 4);
  do
  {
    *&v60[v64 * 4] = fminf(var5[v64] * 3.0, *&v60[v64 * 4]);
    ++v64;
  }

  while (v64 != 64);
  for (i = 0; i != 64; ++i)
  {
    v68 = var5[i];
    if (v68 <= *&v60[i * 4])
    {
      v68 = *&v60[i * 4];
    }

    var5[i] = v68;
  }

  v69[633] = 0;
  return result;
}

void LTMComputeV1::LTMCompute::calculateHighlightSceneModel(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmTuningParams *a3, int a4, sLtmFrameParams *a5, double a6, double a7, double a8)
{
  v10 = 0;
  v11 = (this + 3352);
  v115 = (this + 3352);
  var5 = a5->var5;
  v117 = &a2->localHist[4092];
  v118 = a5->var5;
  v13 = a5->var6[74];
  v14 = v13 + 10.553;
  v15 = ((178.42 / (v13 + 12.131)) + 184.34) * 0.00097656;
  do
  {
    v135[v10] = ((((-285.53 / v14) + 3.1761) * 0.00097656) * *&LTMComputeV1::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV1::sLtmTuningParams const*,BOOL,LTMComputeV1::sLtmFrameParams *)::bvec2[v10]) + (*&LTMComputeV1::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV1::sLtmTuningParams const*,BOOL,LTMComputeV1::sLtmFrameParams *)::bvec1[v10] * v15);
    ++v10;
  }

  while (v10 != 17);
  v16 = 0;
  v17 = a5->var6[68];
  v18 = v135[0];
  v19 = v138;
  do
  {
    v20 = (LTMComputeV1::LTMCompute::localCurveInputs[v16] * v17) * 0.125;
    if (v20 <= 1.0)
    {
      *&a8 = v18;
      if (v20 > 0.0)
      {
        *&a8 = v19;
        if (v20 < 1.0)
        {
          v21 = 0;
          do
          {
            v22 = v21;
            v23 = LTMComputeV1::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV1::sLtmTuningParams const*,BOOL,LTMComputeV1::sLtmFrameParams *)::xgHigh[v21++];
          }

          while (v22 <= 0x10 && v23 < v20);
          a8 = 0.0;
          if (v21 != 1)
          {
            v24 = (v21 - 2);
            v25 = LTMComputeV1::LTMCompute::calculateHighlightSceneModel(sLtmComputeInput const*,LTMComputeV1::sLtmTuningParams const*,BOOL,LTMComputeV1::sLtmFrameParams *)::xgHigh[v24];
            if (vabds_f32(v23, v25) >= 0.00000011921)
            {
              *&a8 = v135[v24] + (((v20 - v25) / (v23 - v25)) * (v135[v21 - 1] - v135[v24]));
            }

            else
            {
              *&a8 = v135[v21 - 1];
            }
          }
        }
      }
    }

    else
    {
      *&a8 = powf(v20, 0.25) * v19;
    }

    v132[v16++] = *&a8;
  }

  while (v16 != 65);
  if (v17 < 1.0)
  {
    v26 = 0;
    v134 = v136 + ((v137 - v136) * 0.63636);
    do
    {
      v27 = vcvts_n_f32_u32(v26, 6uLL);
      v132[v26] = ((v27 * v27) * (v27 * v134)) + (v132[v26] * (1.0 - (v27 * v27)));
      ++v26;
    }

    while (v26 != 65);
  }

  v28 = v118;
  v29 = v118 + 192;
  v30 = &v133;
  v31 = -4;
  v32 = (v118 + 192);
  do
  {
    v33 = vsubq_f32(*v30, *(v30 - 4));
    *v32++ = v33;
    v31 += 4;
    ++v30;
  }

  while (v31 < 0x3C);
  v33.i32[0] = LODWORD(a5->var6[68]);
  if (v33.f32[0] > 8.0)
  {
    v34 = vcvtms_s32_f32((8.0 / v33.f32[0]) * 64.0);
    v35 = v34 <= 1 ? 1 : v34;
    if (v34 <= 63)
    {
      v36 = 0;
      v37.i32[1] = 1023410176;
      v33.f32[0] = (v33.f32[0] * 0.03125) + -0.25;
      *v37.i32 = v35;
      *&a8 = (64 - v35);
      v38 = vdupq_n_s64(63 - v35);
      v123 = vdupq_lane_s32(v37, 0);
      v124 = vdupq_lane_s32(*v33.f32, 0);
      v122 = vdupq_lane_s32(*&a8, 0);
      v39 = &a5->var5[v35 + 195];
      __asm
      {
        FMOV            V1.4S, #1.0
        FMOV            V0.4S, #0.25
      }

      v120 = _Q0;
      v121 = _Q1;
      v119 = vdupq_n_s32(0x3E91EB85u);
      v46 = v35;
      v125 = v38;
      do
      {
        v47 = vdupq_n_s64(v36);
        v48 = vcgeq_u64(v38, vorrq_s8(v47, xmmword_1C932FAF0));
        v49 = vmovn_s64(v48);
        v126 = vuzp1_s16(v49, *v48.i8).u8[0];
        v127 = v47;
        v47.i32[0] = v46;
        v47.i32[1] = v46 + 1;
        v47.u64[1] = vadd_s32(vdup_n_s32(v46), 0x300000002);
        v131 = vmlaq_f32(v120, v124, vdivq_f32(vaddq_f32(vsubq_f32(vcvtq_f32_u32(v47), v123), v121), v122));
        v128 = powf(v131.f32[1], 1.25);
        v50.f32[0] = powf(v131.f32[0], 1.25);
        v50.f32[1] = v128;
        v129 = v50;
        v51 = powf(v131.f32[2], 1.25);
        v52 = v129;
        v52.f32[2] = v51;
        v130 = v52;
        v53 = powf(v131.f32[3], 1.25);
        v54 = v130;
        v54.f32[3] = v53;
        v55 = vdivq_f32(v119, v54);
        v54.i64[0] = 0x3400000034000000;
        v54.i64[1] = 0x3400000034000000;
        v56 = vmaxnmq_f32(v55, v54);
        if (v126)
        {
          *(v39 - 3) = v56.f32[0];
        }

        if (vuzp1_s16(v49, *&v56).i8[2])
        {
          *(v39 - 2) = v56.f32[1];
        }

        v38 = v125;
        if (vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v125, vorrq_s8(v127, xmmword_1C932FAE0)))).i32[1])
        {
          *(v39 - 1) = v56.i64[1];
        }

        v36 += 4;
        v46 += 4;
        v39 += 4;
      }

      while (((67 - v35) & 0xFFFFFFFFFFFFFFFCLL) != v36);
      v57 = v35;
      v58 = v29[(v35 - 1)] / v29[v35];
      v28 = v118;
      do
      {
        v29[v57] = v58 * v29[v57];
        ++v57;
      }

      while (v57 != 64);
    }
  }

  v59 = a5->var6[69];
  v60 = ((a5->var6[73] * 0.5) + 1.0) / v59;
  if (a4)
  {
    v60 = (v60 * a5->var6[71]) + (((((2.0 - a5->var6[71]) * 0.5) + 1.0) / sqrtf(v59)) * (1.0 - a5->var6[71]));
  }

  if (*(this + 8824))
  {
    v11 = 0;
  }

  else
  {
    *(this + 8824) = 1;
  }

  v61 = -4;
  v62 = var5;
  v63 = v11;
  do
  {
    v64 = v62[48];
    v65 = *v62++;
    *v63++ = vsubq_f32(v64, v65);
    v61 += 4;
  }

  while (v61 < 0x3C);
  v66 = -4;
  v67 = v11;
  do
  {
    *v67 = vmaxq_f32(*v67, 0);
    ++v67;
    v66 += 4;
  }

  while (v66 < 0x3C);
  v68 = fminf(v60, 1.0) * (1.0 - v117[403]);
  v69 = v11 + 1;
  v70 = v28 + 1;
  v71 = -8;
  do
  {
    v72 = vaddq_f32(*v70, vmulq_n_f32(*v69, v68));
    v70[-1] = vaddq_f32(v70[-1], vmulq_n_f32(v69[-1], v68));
    *v70 = v72;
    v71 += 8;
    v69 += 2;
    v70 += 2;
  }

  while (v71 < 0x38);
  v73 = -4;
  v74 = v11;
  do
  {
    v75 = *(var5 + 192);
    v76 = *var5;
    var5 += 4;
    *v74++ = vsubq_f32(v75, v76);
    v73 += 4;
  }

  while (v73 < 0x3C);
  v77 = -4;
  v78 = v11;
  do
  {
    *v78 = vmaxq_f32(*v78, 0);
    ++v78;
    v77 += 4;
  }

  while (v77 < 0x3C);
  v79 = v28 + 32;
  v80 = &a5->var6[79];
  v81 = vld1q_dup_f32(v80);
  v82 = -4;
  do
  {
    v83 = *v11++;
    *v79 = vaddq_f32(vmulq_f32(v81, v79[-32]), vmulq_n_f32(v83, v60));
    ++v79;
    v82 += 4;
  }

  while (v82 < 0x3C);
  *(this + 8824) = 1;
  if (a5->var6[82] > 1.0)
  {
    v84 = fminf(0.18 / v117[406], 1.0) * 64.0;
    if (v84 < 2.0)
    {
      if (v84 >= 1.0)
      {
        v86 = ((((v84 * v84) * -38.75) + (powf(v84, 3.0) * 9.375)) + (v84 * 54.375)) + -24.5;
      }

      else
      {
        v85 = powf(v84, 5.0);
        v86 = (v85 * 4.5) / (v85 + 8.0);
      }

      v84 = fminf(v84, v86);
    }

    v87 = 0;
    v88 = floorf(v84);
    v89 = ceilf(v84);
    v90 = (this + 3352);
    do
    {
      v91 = v87;
      v92 = 1.0;
      if (v88 <= v87)
      {
        v92 = 0.0;
        if (v89 > v91)
        {
          v92 = v84 - v91;
        }
      }

      if (v90)
      {
        *v90++ = v92;
      }

      ++v87;
    }

    while (v87 != 64);
    v93 = a5->var6[82] + -1.0;
    v94 = v115 + 1;
    v95 = -8;
    do
    {
      v96 = vmulq_n_f32(*v94, v93);
      v94[-1] = vmulq_n_f32(v94[-1], v93);
      *v94 = v96;
      v95 += 8;
      v94 += 2;
    }

    while (v95 < 0x38);
    v97 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      *(this + v97 + 3352) = vaddq_f32(*(this + v97 + 3352), _Q0);
      v97 += 16;
    }

    while (v97 != 256);
    v99 = 0;
    v100 = -16;
    do
    {
      v101 = &a5->var5[v99 + 4];
      v102 = &a5->var5[v99 + 8];
      v103 = &a5->var5[v99 + 12];
      v104 = vmulq_f32(*v101, *(this + v99 * 4 + 3368));
      v105 = vmulq_f32(*v102, *(this + v99 * 4 + 3384));
      v106 = vmulq_f32(*v103, *(this + v99 * 4 + 3400));
      *&a5->var5[v99] = vmulq_f32(*&a5->var5[v99], *(this + v99 * 4 + 3352));
      *v101 = v104;
      *v102 = v105;
      *v103 = v106;
      v100 += 16;
      v99 += 16;
    }

    while (v100 < 0x30);
    v107 = 0;
    v108 = -16;
    do
    {
      v109 = &a5->var5[v107 + 132];
      v110 = &a5->var5[v107 + 136];
      v111 = &a5->var5[v107 + 140];
      v112 = vmulq_f32(*v109, *(this + v107 * 4 + 3368));
      v113 = vmulq_f32(*v110, *(this + v107 * 4 + 3384));
      v114 = vmulq_f32(*v111, *(this + v107 * 4 + 3400));
      *&a5->var5[v107 + 128] = vmulq_f32(*&a5->var5[v107 + 128], *(this + v107 * 4 + 3352));
      *v109 = v112;
      *v110 = v113;
      *v111 = v114;
      v108 += 16;
      v107 += 16;
    }

    while (v108 < 0x30);
  }

  *(this + 8824) = 0;
}

void LTMComputeV1::LTMCompute::computeThumbnailLuma(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, sLtmFrameParams *a3)
{
  if (*(this + 8825))
  {
    v6 = 0;
  }

  else
  {
    *(this + 8825) = 1;
    v6 = (this + 4720);
  }

  v7 = 0;
  v8 = fminf(64.0 / a3->var6[69], 64.0);
  v9 = &a3->var4[65];
  v10 = floorf(v8);
  v11 = ceilf(v8);
  v12 = v6;
  do
  {
    v13 = v7;
    v14 = 1.0;
    if (v10 <= v7)
    {
      v14 = 0.0;
      if (v11 > v13)
      {
        v14 = v8 - v13;
      }
    }

    if (v9)
    {
      *v9++ = v14;
    }

    if (v12)
    {
      *v12++ = 1.0 - v14;
    }

    ++v7;
  }

  while (v7 != 64);
  memcpy(&v6[16], LTMComputeV1::LTMCompute::localCurveInputs, 0x104uLL);
  v15 = &v6[16].f32[1];
  v16 = &a2->localHist[4253];
  v17 = 63;
  do
  {
    if (*v16 > 0.00000011921)
    {
      *v15 = v16[128] / (*v16 * 65535.0);
    }

    ++v15;
    ++v16;
    --v17;
  }

  while (v17);
  v6[32].i32[0] = 1065353216;
  v18 = -4;
  v19 = LTMComputeV1::LTMCompute::localCurveInputs;
  v20 = v6 + 16;
  var4 = a3->var4;
  do
  {
    v22 = *v19;
    v19 += 4;
    v23 = v22;
    v24 = *v20++;
    *var4++ = vminq_f32(v23, v24);
    v18 += 4;
  }

  while (v18 < 0x3C);
  v25 = 0;
  v26 = v6[32].f32[0];
  if (v26 > 1.0)
  {
    v26 = 1.0;
  }

  a3->var4[64] = v26;
  v27 = -16;
  do
  {
    v28 = vmulq_f32(*&LTMComputeV1::LTMCompute::localCurveInputs[v25 / 4 + 4], *&a3->var4[v25 / 4 + 69]);
    v29 = vmulq_f32(*&LTMComputeV1::LTMCompute::localCurveInputs[v25 / 4 + 8], *&a3->var4[v25 / 4 + 73]);
    v30 = vmulq_f32(*&LTMComputeV1::LTMCompute::localCurveInputs[v25 / 4 + 12], *&a3->var4[v25 / 4 + 77]);
    *(&v6[v25 / 0x10 + 32] + 4) = vmulq_f32(*&LTMComputeV1::LTMCompute::localCurveInputs[v25 / 4], *&a3->var4[v25 / 4 + 65]);
    *(&v6[v25 / 0x10 + 33] + 4) = v28;
    *(&v6[v25 / 0x10 + 34] + 4) = v29;
    *(&v6[v25 / 0x10 + 35] + 4) = v30;
    v27 += 16;
    v25 += 64;
  }

  while (v27 < 0x30);
  v31 = v6 + 2;
  v32 = -16;
  v33 = a3->var4;
  do
  {
    v34 = v31[-2];
    v35 = v31[-1];
    v36 = *v31;
    v37 = v31[1];
    v31 += 4;
    v38 = vmulq_f32(v33[1], v35);
    v39 = vmulq_f32(v33[2], v36);
    v40 = vmulq_f32(v33[3], v37);
    *v33 = vmulq_f32(*v33, v34);
    v33[1] = v38;
    v33[2] = v39;
    v33[3] = v40;
    v32 += 16;
    v33 += 4;
  }

  while (v32 < 0x30);
  v41 = -4;
  v42 = a3->var4;
  v43 = v6;
  do
  {
    v44 = *v42;
    v42 += 4;
    v43[16] = vaddq_f32(v44, *(v43 + 516));
    v41 += 4;
    ++v43;
  }

  while (v41 < 0x3C);
  v45 = 0;
  v46 = v6[16].f32[0];
  v47 = &v6[16].i8[4];
  do
  {
    v46 = fmaxf(*&v47[v45], v46);
    *&v47[v45] = v46;
    v45 += 4;
  }

  while (v45 != 256);
  LTMComputeV1::LTMCompute::smoothHistogramMiddle(this, v6[16].f32, a3->var4, 65, &a3->var6[65], 6, 0);
  *(this + 8825) = 0;
}

void LTMComputeV1::LTMCompute::smoothHistogramMiddle(LTMComputeV1::LTMCompute *this, float *__src, float *__dst, int a4, const float *a5, int a6, int a7)
{
  if (*(this + 8824))
  {
    v14 = 0;
    if (!__dst)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 8824) = 1;
    v14 = (this + 3352);
    bzero(this + 3352, 0x404uLL);
    if (!__dst)
    {
LABEL_16:
      v20 = __src;
      goto LABEL_17;
    }
  }

  if (a6 < 1)
  {
    goto LABEL_16;
  }

  v15 = 0;
  v16 = (a4 - 1);
  v17 = v16;
  v18 = v16 - 1;
  v19 = __dst;
  do
  {
    v20 = v19;
    v19 = v14;
    if (a4 >= 3)
    {
      v21 = v20 + 1;
      v22 = __src + 2;
      v23 = v18;
      do
      {
        v24 = (*(v22 - 1) * a5[1]) + (*(v22 - 2) * *a5);
        v25 = *v22++;
        *v21++ = v24 + (v25 * a5[2]);
        --v23;
      }

      while (v23);
    }

    v26 = *__src;
    if (a7)
    {
      *v20 = (__src[1] * a5[2]) + (v26 * (*a5 + a5[1]));
      v27 = (__src[a4 - 2] * *a5) + (__src[v17] * (a5[1] + a5[2]));
    }

    else
    {
      *v20 = v26;
      v27 = __src[v17];
    }

    v20[v17] = v27;
    if (!v14)
    {
      break;
    }

    ++v15;
    v14 = v20;
    __src = v20;
  }

  while (v15 < a6);
LABEL_17:
  if (v20 != __dst)
  {
    memcpy(__dst, v20, 4 * a4);
  }

  *(this + 8824) = 0;
}

float LTMComputeV1::LTMCompute::calculateSceneFlare(LTMComputeV1::LTMCompute *this, const float *a2, int a3, int *a4, double a5, float a6, float *a7, float *a8, float *a9)
{
  v9 = this + 8824;
  v10 = 0.0;
  v11 = 0.0;
  if (a3 >= 1)
  {
    v12 = a3;
    v13 = &a2[a4[3] * a3];
    do
    {
      v14 = *v13++;
      v11 = v11 + v14;
      --v12;
    }

    while (v12);
    v11 = v11 * 0.99;
  }

  v15 = 0;
  v16 = -1;
  do
  {
    v17 = v10;
    v18 = a2[a4[3] * a3 + v15];
    ++v16;
    if (v15 >= a3)
    {
      break;
    }

    v10 = v10 + v18;
    ++v15;
  }

  while ((v17 + v18) < v11);
  v19 = ((v11 - v17) / v18) + v16;
  if (a3 == v16)
  {
    v19 = a3 + -1.0;
  }

  v20 = v19 / a3;
  *a9 = v20;
  LODWORD(v15) = llroundf(fminf(a6, fmaxf(roundf(v20 * a6), 1.0)));
  if (v15 >= 113)
  {
    v21 = 113;
  }

  else
  {
    v21 = v15;
  }

  if (*(this + 8827))
  {
    v22 = 0;
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(this + 8827) = 1;
    v22 = (this + 7456);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  v23 = 0;
  v24 = vdupq_n_s64(v15);
  v25 = xmmword_1C932FAE0;
  v26 = xmmword_1C932FAF0;
  v27 = v22 + 2;
  v28 = vdupq_n_s64(4uLL);
  do
  {
    v29 = vmovn_s64(vcgeq_u64(v24, v26));
    if (vuzp1_s16(v29, *&a5).u8[0])
    {
      *(v27 - 2) = v23;
    }

    if (vuzp1_s16(v29, *&a5).i8[2])
    {
      *(v27 - 1) = (v23 + 1);
    }

    if (vuzp1_s16(*&a5, vmovn_s64(vcgeq_u64(v24, *&v25))).i32[1])
    {
      *v27 = (v23 + 2);
      v27[1] = (v23 + 3);
    }

    v23 += 4;
    v25 = vaddq_s64(v25, v28);
    v26 = vaddq_s64(v26, v28);
    v27 += 4;
  }

  while ((v15 & 0x7FFFFFFC) + 4 != v23);
LABEL_25:
  v30 = 0;
  *v9 = 1;
  *(this + 838) = 0;
  *(this + 952) = 0;
  *(this + 1066) = 0;
  v31 = (v21 + 1);
  v32 = (this + 3356);
  do
  {
    if (v15 >= 1)
    {
      v33 = *(this + 114 * v30 + 838);
      v34 = &a2[a4[v30] * a3];
      v35 = v31 - 1;
      v36 = v32;
      do
      {
        v37 = *v34++;
        v33 = v33 + v37;
        *v36++ = v33;
        --v35;
      }

      while (v35);
    }

    ++v30;
    v32 += 114;
  }

  while (v30 != 3);
  if (*(this + 8825))
  {
    v38 = 0;
  }

  else
  {
    *(this + 8825) = 1;
    v38 = (this + 4720);
  }

  *v38 = 0;
  v39 = (v38 + 1);
  v40 = v21 & 0xFFFFFFFC;
  if (v40 < 1)
  {
    LODWORD(v41) = 0;
  }

  else
  {
    v41 = 0;
    v42 = (this + 3812);
    v43 = (v38 + 1);
    do
    {
      v44 = (v42 - 456);
      v45 = *v42++;
      *v43++ = vaddq_f32(*v44, v45);
      v41 += 4;
    }

    while (v41 < v40);
  }

  if (v41 < v21)
  {
    v46 = v21 - v41;
    v47 = &v38[v41 + 1];
    v48 = (this + 4 * v41 + 3356);
    do
    {
      *v47++ = *v48 + v48[114];
      ++v48;
      --v46;
    }

    while (v46);
  }

  if (v40 < 1)
  {
    LODWORD(v49) = 0;
  }

  else
  {
    v49 = 0;
    v50 = (this + 4268);
    do
    {
      v51 = *v50++;
      *v39 = vaddq_f32(*v39, v51);
      ++v39;
      v49 += 4;
    }

    while (v49 < v40);
  }

  if (v49 < v21)
  {
    v52 = v21 - v49;
    v53 = (this + 4 * v49 + 4268);
    v54 = &v38[v49 + 1];
    do
    {
      v55 = *v53++;
      *v54 = *v54 + v55;
      ++v54;
      --v52;
    }

    while (v52);
  }

  v56 = v15 + 1;
  if (*&a5 <= 0.0)
  {
    v60 = *v22;
  }

  else if (*&v38[v15] <= *&a5)
  {
    v60 = v22[v15];
  }

  else
  {
    v57 = 0;
    do
    {
      v58 = v57;
      v59 = *&v38[v57++];
    }

    while (v58 < v56 && v59 < *&a5);
    v60 = 0.0;
    if (v57 != 1)
    {
      v61 = (v57 - 2);
      v62 = *&v38[v61];
      if (vabds_f32(v59, v62) >= 0.00000011921)
      {
        v60 = v22[v61] + (((*&a5 - v62) / (v59 - v62)) * (v22[v57 - 1] - v22[v61]));
      }

      else
      {
        v60 = v22[v57 - 1];
      }
    }
  }

  if (*(this + 8826))
  {
    v63 = 0;
  }

  else
  {
    *(this + 8826) = 1;
    v63 = (this + 6088);
  }

  *v63 = 0.0;
  if (v15 < 1)
  {
    v67 = 0.0;
  }

  else
  {
    v64 = *v63;
    v65 = 4 * v31;
    v66 = 4;
    do
    {
      v64 = v64 + *&v38[v66 / 4];
      v63[v66 / 4] = v64;
      v66 += 4;
    }

    while (v65 != v66);
    v67 = *v63;
  }

  if (v67 >= *&a5)
  {
    v71 = *v22;
  }

  else if (v63[v15] <= *&a5)
  {
    v71 = v22[v15];
  }

  else
  {
    v68 = 0;
    do
    {
      v69 = v68;
      v70 = v63[v68++];
    }

    while (v69 < v56 && v70 < *&a5);
    v71 = 0.0;
    if (v68 != 1)
    {
      v72 = (v68 - 2);
      v73 = v63[v72];
      if (vabds_f32(v70, v73) >= 0.00000011921)
      {
        v71 = v22[v72] + (((*&a5 - v73) / (v70 - v73)) * (v22[v68 - 1] - v22[v72]));
      }

      else
      {
        v71 = v22[v68 - 1];
      }
    }
  }

  *a7 = v71;
  v74 = 0.0;
  if (v60 > 0.00000011921)
  {
    v74 = fminf(v71 / v60, 1.0) * 0.85;
  }

  *a8 = v74;
  v75 = a3 + 63;
  if (a3 < -63)
  {
    v75 = a3 + 126;
  }

  result = fminf(*a7, a6) / (v75 >> 6);
  *a7 = result;
  *v9 = 0;
  return result;
}

LTMComputeV2::LTMCompute *LTMComputeV1::LTMCompute::calculateGlobalLUTandModifySceneModels(LTMComputeV1::LTMCompute *this, uint64_t a2, const sLtmComputeInput *a3, const sLtmComputeMeta *a4, const sLtmTuningParams *a5, const sLtmDisplayParams *a6, sLtmFrameParams *a7, sLtmComputeOutput *a8)
{
  v8 = a8;
  v10 = a6;
  if (a2 != 2)
  {
    v15 = -1.0;
    if (a4->useDigitalFlash)
    {
      goto LABEL_7;
    }

LABEL_20:
    memcpy(&a8->LTC[3185], &LTMComputeV1::LTMCompute::globalCurveInputs, 0x404uLL);
LABEL_136:
    result = memcpy(a7->var6, &v10->var0[65], 0x104uLL);
    goto LABEL_137;
  }

  if (!a4->useDigitalFlash)
  {
    goto LABEL_20;
  }

  v15 = -1.0;
  if (a7->var6[70] > 1.0 && !a4->useGlobalCCM)
  {
    v16 = fmaxf((a7->var6[73] * -5.0) + 1.03, 0.0);
    v15 = fminf(v16 * v16, 1.0);
  }

LABEL_7:
  v17 = &a8->LTC[3189];
  v161 = (this + 6088);
  if (*(this + 8826))
  {
    v18 = 0;
  }

  else
  {
    v18 = (this + 6088);
  }

  *v18 = 0.0;
  v19 = v18 + 1;
  v156 = &a7->var5[64];
  v20 = 0.0;
  for (i = 419; i != 483; ++i)
  {
    v20 = v20 + a7->var0[i];
    *v19++ = v20;
  }

  v22 = a7->var6[84];
  v23 = 0.0;
  if (v22 > 0.0)
  {
    if (v18[63] <= v22)
    {
      v23 = 0.98438;
    }

    else
    {
      v24 = 0;
      do
      {
        v25 = v24;
        v26 = v18[v24++];
      }

      while (v25 <= 0x3F && v26 < v22);
      if (v24 != 1)
      {
        v27 = (v24 - 2);
        v28 = v18[v27];
        if (vabds_f32(v26, v28) >= 0.00000011921)
        {
          v23 = LTMComputeV1::LTMCompute::localCurveInputs[v27] + (((v22 - v28) / (v26 - v28)) * (LTMComputeV1::LTMCompute::localCurveInputs[v24 - 1] - LTMComputeV1::LTMCompute::localCurveInputs[v27]));
        }

        else
        {
          v23 = LTMComputeV1::LTMCompute::localCurveInputs[v24 - 1];
        }
      }
    }
  }

  v29 = 0;
  v30 = fminf(v23 * 64.0, a7->var6[83]);
  *(this + 8826) = 1;
  v31 = floorf(v30);
  v32 = ceilf(v30);
  v33 = (this + 6088);
  do
  {
    v34 = v29;
    v35 = 1.0;
    if (v31 <= v29)
    {
      v35 = 0.0;
      if (v32 > v34)
      {
        v35 = v30 - v34;
      }
    }

    if (v33)
    {
      *v33++ = v35;
    }

    ++v29;
  }

  while (v29 != 64);
  v158 = v15;
  if (*(this + 8827))
  {
    v36 = 0;
  }

  else
  {
    *(this + 8827) = 1;
    v36 = (this + 7456);
  }

  memset_pattern16(v36, &unk_1C9332D90, 0x100uLL);
  if (*(this + 8825))
  {
    v37 = 0;
  }

  else
  {
    *(this + 8825) = 1;
    v37 = (this + 4720);
  }

  v160 = &a6->var0[65];
  v155 = v156;
  v157 = v37;
  LTMComputeV1::LTMCompute::allocateTone(this, v37, 0, &a3->localHist[4316], a5, a6, a7, v36, a7->var2, a7->var3, 1.0, v161, v155, flt_1C9335A08, &a6->var0[65], 1, a4->gammaCurve == 1);
  *(this + 8827) = 0;
  v38 = a7->var6[69];
    ;
  }

  if (fabsf(0.3125 + -0.29688) >= 0.00000011921)
  {
    v40 = a6->var0[19] + ((0.003125 / (0.3125 + -0.29688)) * (a6->var0[20] - a6->var0[19]));
  }

  else
  {
    v40 = a6->var0[20];
  }

  v41 = fminf(11.52 / v38, 1.0);
  v42 = a6->var0[130];
  v43 = v40 * v42;
  v44 = a7->var5[0];
  v45 = 1.0;
  if (v43 < v44)
  {
    v46 = v43 / v44;
    v47 = (v41 * v43) / v42;
    if (v47 <= 0.0)
    {
      v51 = *v160;
    }

    else if (v47 >= 0.98438)
    {
      v51 = a6->var0[128];
    }

    else
    {
      v48 = 0;
      do
      {
        v49 = v48;
        v50 = LTMComputeV1::LTMCompute::localCurveInputs[v48++];
      }

      while (v49 <= 0x3F && v50 < v47);
      v51 = 0.0;
      if (v48 != 1)
      {
        v52 = (v48 - 2);
        v53 = LTMComputeV1::LTMCompute::localCurveInputs[v52];
        v54 = &a6->var0[v48];
        if (vabds_f32(v50, v53) >= 0.00000011921)
        {
          v51 = v160[v52] + (((v47 - v53) / (v50 - v53)) * (v54[64] - v160[v52]));
        }

        else
        {
          v51 = v54[64];
        }
      }
    }

    v55 = (v41 * (v43 * v46)) / v42;
    if (v55 <= 0.0)
    {
      v59 = *v160;
    }

    else if (v55 >= 0.98438)
    {
      v59 = a6->var0[128];
    }

    else
    {
      v56 = 0;
      do
      {
        v57 = v56;
        v58 = LTMComputeV1::LTMCompute::localCurveInputs[v56++];
      }

      while (v57 <= 0x3F && v58 < v55);
      v59 = 0.0;
      if (v56 != 1)
      {
        v60 = (v56 - 2);
        v61 = LTMComputeV1::LTMCompute::localCurveInputs[v60];
        v62 = &a6->var0[v56];
        if (vabds_f32(v58, v61) >= 0.00000011921)
        {
          v59 = v160[v60] + (((v55 - v61) / (v58 - v61)) * (v62[64] - v160[v60]));
        }

        else
        {
          v59 = v62[64];
        }
      }
    }

    v63 = logf(v51);
    v45 = fminf(fmaxf(v63 / logf(v59), 0.5), 1.0);
  }

  v64 = 0;
  var5 = a7->var5;
  v66 = (fmaxf(v45, 0.9) * 1.2) * (((fminf(fmaxf(v38 + -4.0, 0.0) * 0.25, 1.0) * -0.2) * *(this + 819)) + 1.0);
  v67 = &a8->LTC[3185];
  do
  {
    v67[v64] = powf(*(&LTMComputeV1::LTMCompute::globalCurveInputs + v64 * 4), v66);
    ++v64;
  }

  while (v64 != 257);
  v69 = 0;
  *(this + 8826) = 1;
  *(this + 1522) = 0;
  v70 = 0.0;
  do
  {
    v70 = v70 + var5[v69];
    *(this + v69 * 4 + 6092) = v70;
    ++v69;
  }

  while (v69 != 64);
  v71 = -8;
  v72 = (this + 6104);
  v73 = 1.0 / *(this + 1586);
  do
  {
    v74 = vmulq_n_f32(*v72, v73);
    v72[-1] = vmulq_n_f32(v72[-1], v73);
    *v72 = v74;
    v71 += 8;
    v72 += 2;
  }

  while (v71 < 0x38);
  *(this + 1586) = v73 * *(this + 1586);
  if (*(this + 8827))
  {
    v75 = 0;
  }

  else
  {
    *(this + 8827) = 1;
    v75 = (this + 7456);
  }

  LTMComputeV2::LTMCompute::interpolate(v68, LTMComputeV1::LTMCompute::localCurveInputs, v160, 65, v161->f32, v75, 65);
  if (*(this + 8824))
  {
    v77 = 0;
  }

  else
  {
    *(this + 8824) = 1;
    v77 = (this + 3352);
  }

  LTMComputeV2::LTMCompute::interpolate(v76, v67, &LTMComputeV1::LTMCompute::globalCurveInputs, 257, v75, v77, 65);
  LTMComputeV2::LTMCompute::interpolate(v78, LTMComputeV1::LTMCompute::localCurveInputs, a6->var0, 65, v77, v75, 65);
  v80 = 0;
  *(this + 8824) = 1;
  v81 = (this + 3352);
  v82 = *(this + 1522);
  do
  {
    v83 = v81[685];
    *v81++ = fmaxf(v75[v80 + 1] - v75[v80], 0.00000011921) / fmaxf(v83 - v82, 0.00000011921);
    ++v80;
    v82 = v83;
  }

  while (v80 != 64);
  v84 = 0;
  v85 = -16;
  do
  {
    v86 = &a7->var5[v84 + 4];
    v87 = &a7->var5[v84 + 8];
    v88 = &a7->var5[v84 + 12];
    v89 = vmulq_f32(*v86, *(this + v84 * 4 + 3368));
    v90 = vmulq_f32(*v87, *(this + v84 * 4 + 3384));
    v91 = vmulq_f32(*v88, *(this + v84 * 4 + 3400));
    *&a7->var5[v84] = vmulq_f32(*&a7->var5[v84], *(this + v84 * 4 + 3352));
    *v86 = v89;
    *v87 = v90;
    *v88 = v91;
    v85 += 16;
    v84 += 16;
  }

  while (v85 < 0x30);
  v92 = 0;
  v93 = -16;
  do
  {
    v94 = &a7->var5[v92 + 132];
    v95 = &a7->var5[v92 + 136];
    v96 = &a7->var5[v92 + 140];
    v97 = vmulq_f32(*v94, *(this + v92 * 4 + 3368));
    v98 = vmulq_f32(*v95, *(this + v92 * 4 + 3384));
    v99 = vmulq_f32(*v96, *(this + v92 * 4 + 3400));
    *&a7->var5[v92 + 128] = vmulq_f32(*&a7->var5[v92 + 128], *(this + v92 * 4 + 3352));
    *v94 = v97;
    *v95 = v98;
    *v96 = v99;
    v93 += 16;
    v92 += 16;
  }

  while (v93 < 0x30);
  v100 = 0;
  *(this + 8824) = 0;
  *(this + 1522) = 0;
  v101 = 0.0;
  do
  {
    v101 = v101 + var5[v100];
    *(this + v100 * 4 + 6092) = v101;
    ++v100;
  }

  while (v100 != 64);
  v102 = -8;
  v103 = (this + 6104);
  v104 = 1.0 / *(this + 1586);
  do
  {
    v105 = vmulq_n_f32(*v103, v104);
    v103[-1] = vmulq_n_f32(v103[-1], v104);
    *v103 = v105;
    v102 += 8;
    v103 += 2;
  }

  while (v102 < 0x38);
  *(this + 1586) = v104 * *(this + 1586);
  LTMComputeV2::LTMCompute::interpolate(v79, LTMComputeV1::LTMCompute::localCurveInputs, v160, 65, v161->f32, v75, 65);
  *(this + 8826) = 0;
  v107 = v41 * 0.015625;
  if ((v41 * 0.015625) <= 0.0)
  {
    v112 = *v75;
    v108 = v157;
  }

  else
  {
    v108 = v157;
    if (v107 >= 1.0)
    {
      v112 = v75[64];
    }

    else
    {
      v109 = 0;
      do
      {
        v110 = v109;
        v111 = LTMComputeV1::LTMCompute::localCurveInputs[v109++];
      }

      while (v110 <= 0x40 && v111 < v107);
      v112 = 0.0;
      if (v109 != 1)
      {
        v113 = (v109 - 2);
        v114 = LTMComputeV1::LTMCompute::localCurveInputs[v113];
        v115 = &v75[v109];
        if (vabds_f32(v111, v114) >= 0.00000011921)
        {
          v112 = v75[v113] + (((v107 - v114) / (v111 - v114)) * (*(v115 - 1) - v75[v113]));
        }

        else
        {
          v112 = *(v115 - 1);
        }
      }
    }
  }

  LODWORD(var5) = vcvtms_s32_f32(fminf(v112, 0.5) * 256.0);
  v116 = vcvts_n_f32_s32(var5, 8uLL);
  v117 = 0.0;
  if (*v75 < v116)
  {
    if (v75[63] <= v116)
    {
      v117 = 0.98438;
    }

    else
    {
      v118 = 0;
      do
      {
        v119 = v118;
        v120 = v75[v118++];
      }

      while (v119 <= 0x3F && v120 < v116);
      if (v118 != 1)
      {
        v121 = (v118 - 2);
        v122 = v75[v121];
        if (vabds_f32(v120, v122) >= 0.00000011921)
        {
          v117 = LTMComputeV1::LTMCompute::localCurveInputs[v121] + (((v116 - v122) / (v120 - v122)) * (LTMComputeV1::LTMCompute::localCurveInputs[v118 - 1] - LTMComputeV1::LTMCompute::localCurveInputs[v121]));
        }

        else
        {
          v117 = LTMComputeV1::LTMCompute::localCurveInputs[v118 - 1];
        }
      }
    }
  }

  if (v116 <= 0.0)
  {
    v126 = *v67;
  }

  else if (v116 >= 1.0)
  {
    v126 = a8->LTC[3441];
  }

  else
  {
    v123 = 0;
    do
    {
      v124 = v123;
      v125 = *(&LTMComputeV1::LTMCompute::globalCurveInputs + v123++);
    }

    while (v124 <= 0x100 && v125 < v116);
    v126 = 0.0;
    if (v123 != 1)
    {
      v127 = (v123 - 2);
      v128 = *(&LTMComputeV1::LTMCompute::globalCurveInputs + v127);
      if (vabds_f32(v125, v128) >= 0.00000011921)
      {
        v126 = v67[v127] + (((v116 - v128) / (v125 - v128)) * (a8->LTC[v123 + 3184] - v67[v127]));
      }

      else
      {
        v126 = a8->LTC[v123 + 3184];
      }
    }
  }

  v129 = a7->var6[69];
  v130 = v117 * v129;
  if ((v117 * v129) <= 0.0)
  {
    v134 = *v108;
  }

  else if (v130 >= 0.98438)
  {
    v134 = v108[63];
  }

  else
  {
    v131 = 0;
    do
    {
      v132 = v131;
      v133 = LTMComputeV1::LTMCompute::localCurveInputs[v131++];
    }

    while (v132 <= 0x3F && v133 < v130);
    v134 = 0.0;
    if (v131 != 1)
    {
      v135 = (v131 - 2);
      v136 = LTMComputeV1::LTMCompute::localCurveInputs[v135];
      if (vabds_f32(v133, v136) >= 0.00000011921)
      {
        v134 = v108[v135] + (((v130 - v136) / (v133 - v136)) * (v108[v131 - 1] - v108[v135]));
      }

      else
      {
        v134 = v108[v131 - 1];
      }
    }
  }

  LTMComputeV2::LTMCompute::interpolate(v106, v75, LTMComputeV1::LTMCompute::localCurveInputs, 64, &LTMComputeV1::LTMCompute::globalCurveInputs, v163, var5);
  result = LTMComputeV2::LTMCompute::interpolate(v137, LTMComputeV1::LTMCompute::localCurveInputs, v108, 65, v163, v67, var5, v129);
  v139 = var5 & 0xFFFFFFF8;
  v140 = v126 / v134;
  if (v139 < 1)
  {
    LODWORD(v141) = 0;
    v142 = v158;
  }

  else
  {
    v141 = 0;
    v142 = v158;
    do
    {
      v143 = vmulq_n_f32(*v17, v140);
      v17[-1] = vmulq_n_f32(v17[-1], v140);
      *v17 = v143;
      v141 += 8;
      v17 += 2;
    }

    while (v141 < v139);
  }

  v8 = a8;
  if (v141 < var5)
  {
    v144 = var5 - v141;
    v145 = &a8->LTC[v141 + 3185];
    do
    {
      *v145 = v140 * *v145;
      ++v145;
      --v144;
    }

    while (v144);
  }

  *(this + 8825) = 0;
  *(this + 8827) = 0;
  if (v142 >= 0.0)
  {
    *(this + 8825) = 1;
    *(this + 8827) = 1;
    v146 = 1.0 - v142;
    v147 = -4;
    v148 = &LTMComputeV1::LTMCompute::globalCurveInputs;
    v149 = &LTMComputeV1::LTMCompute::liftedGTC;
    v150 = (this + 4720);
    do
    {
      v151 = *v149++;
      v152 = v151;
      v153 = *v148++;
      *v150++ = vaddq_f32(vmulq_n_f32(v152, v142), vmulq_n_f32(v153, v146));
      v147 += 4;
    }

    while (v147 < 0xFC);
    *(this + 1436) = v142 + v146;
    LTMComputeV2::LTMCompute::interpolate(result, this + 1180, &LTMComputeV1::LTMCompute::globalCurveInputs, 257, v160, a7->var6, 65);
    LTMComputeV2::LTMCompute::interpolate(v154, &LTMComputeV1::LTMCompute::globalCurveInputs, this + 1180, 257, v67, this + 1864, 257);
    result = memcpy(v67, this + 7456, 0x404uLL);
    v142 = v158;
    *(this + 8825) = 0;
    *(this + 8827) = 0;
  }

  v10 = a6;
  if (v142 < 0.0)
  {
    goto LABEL_136;
  }

LABEL_137:
  LOBYTE(v8->LTC[9145]) |= 8u;
  return result;
}

void LTMComputeV1::LTMCompute::allocateTone(LTMComputeV1::LTMCompute *this, float32x4_t *a2, float32x4_t *a3, const float *a4, const sLtmTuningParams *a5, const sLtmDisplayParams *a6, const sLtmFrameParams *a7, float32x4_t *a8, float a9, float a10, float a11, float32x4_t *a12, const float *a13, const float *a14, float *a15, BOOL a16, BOOL a17)
{
  v26 = 0;
  v27 = a13;
  v145 = this + 0x2000;
  memset(v185, 0, 240);
  v184 = 0u;
  memset(__src, 0, 260);
  v182 = 0u;
  memset(v181, 0, sizeof(v181));
  memset(v180, 0, sizeof(v180));
  memset(v179, 0, sizeof(v179));
  v177 = 0u;
  memset(v178, 0, sizeof(v178));
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v162 = 0u;
  memset(&v161, 0, 256);
  memset(v160, 0, sizeof(v160));
  v28 = &a7->var6[75];
  v29 = vld1q_dup_f32(v28);
  v30 = -4;
  do
  {
    v181[v26 / 4] = vminq_f32(v29, *&a4[v26]);
    v30 += 4;
    v26 += 4;
  }

  while (v30 < 0x3C);
  LTMComputeV1::LTMCompute::smoothHistogramMiddle(this, v181, &v184, 64, a14, *(a5 + 3), 1);
  v31 = v185;
  v32 = -8;
  v33 = vdupq_n_s32(0x42800000u);
  do
  {
    v34 = vmulq_f32(*v31, v33);
    v31[-1] = vmulq_f32(v31[-1], v33);
    *v31 = v34;
    v32 += 8;
    v31 += 2;
  }

  while (v32 < 0x38);
  v35 = -4;
  v36 = &v184;
  __asm { FMOV            V1.4S, #1.0 }

  do
  {
    *v36 = vminq_f32(*v36, _Q1);
    ++v36;
    v35 += 4;
  }

  while (v35 < 0x3C);
  v153 = _Q1;
  v42 = -4;
  v43 = &v184;
  v44 = vdupq_n_s32(0x2EDBE6FFu);
  do
  {
    *v43 = vmaxq_f32(*v43, v44);
    ++v43;
    v42 += 4;
  }

  while (v42 < 0x3C);
  LTMComputeV1::LTMCompute::smoothHistogramMiddle(this, &v184, v181, 64, a14, *(a5 + 3), !a17);
  v46.i32[0] = LODWORD(a6->var0[130]);
  v47.i32[0] = *(a5 + 24);
  if (*v47.i32 >= 1.0)
  {
    v148 = v46;
  }

  else
  {
    *v47.i32 = fminf(*v46.i32 * (((*v47.i32 * *(&v182 + 3)) + 1.0) - *(&v182 + 3)), a7->var6[76]);
    v148 = v47;
  }

  v48 = 0;
  *v45.i32 = fminf(64.0 / a11, 64.0);
  v49 = &a7->var6[81];
  v50 = vld1q_dup_f32(v49);
  v152 = v50;
  v51 = xmmword_1C93323B0;
  v52 = &a7->var6[80];
  v50.f32[0] = *v45.i32 + *v45.i32;
  v144 = *v45.i32;
  v150 = vdupq_lane_s32(*v50.f32, 0);
  v151 = vdupq_lane_s32(v45, 0);
  v53 = vld1q_dup_f32(v52);
  v149 = v53;
  do
  {
    v154 = v51;
    v54 = vminnmq_f32(vdivq_f32(vmaxnmq_f32(vsubq_f32(vaddq_f32(vcvtq_f32_u32(v51), v153), v151), 0), v150), v153);
    v158 = v181[v48];
    v159 = vmlaq_f32(vmulq_f32(v54, v152), vsubq_f32(v153, v54), v149);
    v155 = powf(COERCE_FLOAT(HIDWORD(*&v181[v48])), v159.f32[1]);
    *&v55 = powf(*&v158, v159.f32[0]);
    *(&v55 + 1) = v155;
    v156 = v55;
    v56 = powf(*(&v158 + 2), v159.f32[2]);
    v57 = v156;
    *(&v57 + 2) = v56;
    v157 = v57;
    v58 = powf(*(&v158 + 3), v159.f32[3]);
    v59 = v157;
    *(&v59 + 3) = v58;
    v181[v48] = v59;
    v60.i64[0] = 0x400000004;
    v60.i64[1] = 0x400000004;
    v51 = vaddq_s32(v154, v60);
    ++v48;
  }

  while (v48 != 16);
  v61 = 0;
  v62 = floorf(v144);
  v63 = ceilf(v144);
  v64 = &v161;
  do
  {
    v65 = v61;
    v66 = 1.0;
    if (v62 <= v61)
    {
      v66 = 0.0;
      if (v63 > v65)
      {
        v66 = v144 - v65;
      }
    }

    if (v64)
    {
      v64->f32[0] = v66;
      v64 = (v64 + 4);
    }

    ++v61;
  }

  while (v61 != 64);
  if (a17)
  {
    v67 = 0;
    v68 = 0.0;
    do
    {
      v68 = (((v68 + COERCE_FLOAT(*&a4[v67])) + COERCE_FLOAT(HIDWORD(*&a4[v67]))) + COERCE_FLOAT(*&a4[v67 + 2])) + COERCE_FLOAT(HIDWORD(*&a4[v67]));
      v67 += 4;
    }

    while (v67 != 64);
    v69 = 0;
    v70 = v68 * 0.18;
    v71 = 0.0;
    do
    {
      v72 = v71;
      v73 = v69;
      v74 = a4[v69++];
      if (v73 > 0x3F)
      {
        break;
      }

      v71 = v71 + v74;
    }

    while ((v72 + v74) < v70);
    if (v69 == 65)
    {
      v75 = 63.0;
    }

    else
    {
      v75 = ((v70 - v72) / v74) + (v69 - 1);
    }

    v76 = fminf(v75, a7->var6[85]);
    v77 = ceilf(v76);
    if (v77 > 0.0)
    {
      v78 = 0;
      v79 = fminf(a4[vcvtms_s32_f32(v75)], 1.0);
      do
      {
        v161.f32[v78] = (v79 * a12->f32[v78]) + (a8->f32[v78] * (1.0 - v79));
        ++v78;
      }

      while (v77 > v78);
    }

    v80 = fmaxf(v77 + -1.0, 0.0);
    v161.f32[v80] = ((1.0 - ((v76 + 1.0) - v77)) * a8->f32[v80]) + (v161.f32[v80] * ((v76 + 1.0) - v77));
  }

  if (a10 >= 1.0)
  {
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
  }

  else
  {
    v81 = 0;
    v82 = floorf(a10 * 64.0);
    v83 = ceilf(a10 * 64.0);
    v84 = v160;
    do
    {
      v85 = v81;
      v86 = 1.0;
      if (v82 <= v81)
      {
        v86 = 0.0;
        if (v83 > v85)
        {
          v86 = (a10 * 64.0) - v85;
        }
      }

      if (v84)
      {
        v84->f32[0] = 1.0 - v86;
        v84 = (v84 + 4);
      }

      ++v81;
    }

    while (v81 != 64);
    v87 = 0;
    v88 = -4;
    do
    {
      v179[v87] = vminq_f32(v160[v87], a8[v87]);
      v88 += 4;
      ++v87;
    }

    while (v88 < 0x3C);
    v89 = 0;
    v90 = -4;
    do
    {
      v91 = vminq_f32(v181[v89], v179[v89]);
      v180[v89] = v91;
      v90 += 4;
      ++v89;
    }

    while (v90 < 0x3C);
    v91.f32[0] = fmaxf(*v148.i32 - a9, 0.0);
    LTMComputeV1::LTMCompute::scaleToFitRange(this, &v162, v179, v180, a13, v91, v160, 0.0, 0);
  }

  if (a12)
  {
    for (i = 0; i != 16; ++i)
    {
      v181[i] = vbslq_s8(vcgtq_f32(v181[i], a12[i]), v181[i], a12[i]);
    }

    v93 = 0;
    v94 = 0.0;
    do
    {
      v95 = vmulq_f32(a12[v93 / 4], *&a13[v93]);
      v94 = (((v94 + v95.f32[0]) + v95.f32[1]) + v95.f32[2]) + v95.f32[3];
      v93 += 4;
    }

    while (v93 != 64);
    v96 = (fminf(*v148.i32 * 0.5, v94) / v94) * a7->var6[86];
    if (v145[632])
    {
      v97 = 0;
    }

    else
    {
      v145[632] = 1;
      v97 = (this + 3352);
    }

    v98 = v97 + 1;
    v99 = a12 + 1;
    v100 = -8;
    do
    {
      v101 = vaddq_f32(vmulq_n_f32(*v99, v96), 0);
      v98[-1] = vaddq_f32(vmulq_n_f32(v99[-1], v96), 0);
      *v98 = v101;
      v100 += 8;
      v98 += 2;
      v99 += 2;
    }

    while (v100 < 0x38);
    for (j = 0; j != 16; ++j)
    {
      *(&v162 + j * 16) = vbslq_s8(vcgtq_f32(v97[j], *(&v162 + j * 16)), v97[j], *(&v162 + j * 16));
    }

    v145[632] = 0;
  }

  v103 = 0;
  v104 = 0.0;
  do
  {
    v105 = vmulq_f32(*(&v162 + v103 * 4), *&a13[v103]);
    v104 = (((v104 + v105.f32[0]) + v105.f32[1]) + v105.f32[2]) + v105.f32[3];
    v103 += 4;
  }

  while (v103 != 64);
  if (v104 > *v148.i32)
  {
    v106 = &v163;
    v107 = -8;
    v108 = *v148.i32 / v104;
    do
    {
      v109 = vmulq_n_f32(*v106, v108);
      v106[-1] = vmulq_n_f32(v106[-1], v108);
      *v106 = v109;
      v107 += 8;
      v106 += 2;
    }

    while (v107 < 0x38);
    v104 = *v148.i32;
  }

  v105.i32[0] = v148.i32[0];
  LTMComputeV1::LTMCompute::scaleToFitRange(this, v178, a8, v181, a13, v105, &v161, v104, &v162);
  v111 = 0;
  v112 = a13 + 12;
  v113 = -16;
  do
  {
    v114 = vmulq_f32(v178[v111 / 0x10 + 1], *&v112[v111 / 4 - 8]);
    v115 = vmulq_f32(v178[v111 / 0x10 + 2], *&v112[v111 / 4 - 4]);
    v116 = vmulq_f32(v178[v111 / 0x10 + 3], *&v112[v111 / 4]);
    v117 = &v185[v111 / 0x10 - 1];
    *v117 = vmulq_f32(v178[v111 / 0x10], *&a13[v111 / 4]);
    v117[1] = v114;
    v117[2] = v115;
    v117[3] = v116;
    v113 += 16;
    v111 += 64;
  }

  while (v113 < 0x30);
  v118 = 0;
  LODWORD(__src[0]) = 0;
  v119 = 0.0;
  do
  {
    v119 = v119 + *(&v185[-1] + v118);
    *(__src + v118 + 4) = v119;
    v118 += 4;
  }

  while (v118 != 256);
  v120 = vdupq_lane_s32(v148, 0);
  v121 = -4;
  v122 = __src;
  do
  {
    *v122 = vminq_f32(v120, *v122);
    ++v122;
    v121 += 4;
  }

  while (v121 < 0x3C);
  v123 = *&__src[16];
  if (*&__src[16] > *v148.i32)
  {
    v123 = *v148.i32;
  }

  *&__src[16] = v123;
  if (a3)
  {
    if (v145[635])
    {
      v124 = 0;
    }

    else
    {
      v145[635] = 1;
      *(this + 466) = 0u;
      v124 = (this + 7456);
      *(this + 467) = 0u;
      *(this + 468) = 0u;
      *(this + 469) = 0u;
      *(this + 470) = 0u;
      *(this + 471) = 0u;
      *(this + 472) = 0u;
      *(this + 473) = 0u;
      *(this + 474) = 0u;
      *(this + 475) = 0u;
      *(this + 476) = 0u;
      *(this + 477) = 0u;
      *(this + 478) = 0u;
      *(this + 479) = 0u;
      *(this + 480) = 0u;
      *(this + 481) = 0u;
      *(this + 1928) = 0;
    }

    v125 = (__src + 4);
    v126 = -4;
    v127 = v124;
    do
    {
      *v127++ = vsubq_f32(*v125, *(v125 - 4));
      v126 += 4;
      ++v125;
    }

    while (v126 < 0x3C);
    v128 = -4;
    do
    {
      v129 = *v27;
      v27 += 4;
      v130 = v129;
      v131 = *v124++;
      v132 = vrecpeq_f32(v130);
      v133 = vmulq_f32(v132, vrecpsq_f32(v130, v132));
      *a3++ = vmulq_f32(v131, vmulq_f32(vrecpsq_f32(v130, v133), v133));
      v128 += 4;
    }

    while (v128 < 0x3C);
    v145[635] = 0;
  }

  if (a2)
  {
    v134 = &__src[1];
    v135 = -8;
    v136 = 1.0 / a6->var0[130];
    do
    {
      v137 = vmulq_n_f32(*v134, v136);
      v134[-1] = vmulq_n_f32(v134[-1], v136);
      *v134 = v137;
      v135 += 8;
      v134 += 2;
    }

    while (v135 < 0x38);
    *&__src[16] = v136 * *&__src[16];
    if (a16)
    {
      LTMComputeV2::LTMCompute::interpolate(v110, LTMComputeV1::LTMCompute::localCurveInputs, a15, 65, __src, a2->f32, 65);
      v138 = -4;
      v139 = a2;
      do
      {
        *v139 = vminq_f32(*v139, v153);
        ++v139;
        v138 += 4;
      }

      while (v138 < 0x3C);
      v140 = a2[16].f32[0];
      if (v140 > 1.0)
      {
        v140 = 1.0;
      }

      a2[16].f32[0] = v140;
      v141 = -4;
      v142 = a2;
      do
      {
        *v142 = vmaxq_f32(*v142, 0);
        ++v142;
        v141 += 4;
      }

      while (v141 < 0x3C);
      v143 = a2[16].f32[0];
      if (v143 < 0.0)
      {
        v143 = 0.0;
      }

      a2[16].f32[0] = v143;
      a2->i32[0] = 0;
    }

    else
    {
      memcpy(a2, __src, 0x104uLL);
    }
  }
}

float32x4_t LTMComputeV1::LTMCompute::scaleToFitRange(LTMComputeV1::LTMCompute *this, float *a2, float32x4_t *a3, const float *a4, const float *a5, float32x4_t result, float32x4_t *a7, float a8, const float *a9)
{
  v9 = (this + 3352);
  if (a8 <= 0.0)
  {
    v11 = *(a4 + 13);
    v100[11] = *(a4 + 12);
    v100[12] = v11;
    v12 = *(a4 + 15);
    v100[13] = *(a4 + 14);
    v100[14] = v12;
    v13 = *(a4 + 9);
    v100[7] = *(a4 + 8);
    v100[8] = v13;
    v14 = *(a4 + 11);
    v100[9] = *(a4 + 10);
    v100[10] = v14;
    v15 = *(a4 + 5);
    v100[3] = *(a4 + 4);
    v100[4] = v15;
    v16 = *(a4 + 7);
    v100[5] = *(a4 + 6);
    v100[6] = v16;
    v17 = *(a4 + 1);
    v99 = *a4;
    v100[0] = v17;
    v18 = *(a4 + 3);
    v100[1] = *(a4 + 2);
    v100[2] = v18;
  }

  else
  {
    if (*(this + 8824))
    {
      v10 = 0;
    }

    else
    {
      *(this + 8824) = 1;
      v10 = (this + 3352);
    }

    v19 = -4;
    v20 = a4;
    v21 = a9;
    v22 = v10;
    do
    {
      v23 = *v20;
      v20 += 4;
      v24 = v23;
      v25 = *v21;
      v21 += 4;
      *v22++ = vsubq_f32(v24, v25);
      v19 += 4;
    }

    while (v19 < 0x3C);
    v26 = -4;
    v27 = &v99;
    do
    {
      v28 = *v10++;
      *v27++ = vmaxq_f32(v28, 0);
      v26 += 4;
    }

    while (v26 < 0x3C);
    *(this + 8824) = 0;
  }

  v29 = 0;
  v30 = 0.0;
  do
  {
    v31 = vmulq_f32(v100[v29 / 4 - 1], *&a5[v29]);
    v30 = (((v30 + v31.f32[0]) + v31.f32[1]) + v31.f32[2]) + v31.f32[3];
    v29 += 4;
  }

  while (v29 != 64);
  if (v30 > 0.0 && (v32 = (result.f32[0] - a8) / v30, v32 < 1.0))
  {
    v93 = a2 + 4;
    v94 = v100;
    v95 = -8;
    result = 0uLL;
    do
    {
      v96 = vaddq_f32(vmulq_n_f32(*v94, v32), 0);
      *(v93 - 1) = vaddq_f32(vmulq_n_f32(v94[-1], v32), 0);
      *v93 = v96;
      v95 += 8;
      v93 += 8;
      v94 += 2;
    }

    while (v95 < 0x38);
    if (a8 > 0.0)
    {
      v97 = -4;
      do
      {
        v98 = *a9;
        a9 += 4;
        result = vaddq_f32(v98, *a2);
        *a2 = result;
        a2 += 4;
        v97 += 4;
      }

      while (v97 < 0x3C);
    }
  }

  else
  {
    if (a8 <= 0.0)
    {
      v35 = *a4;
      v36 = *(a4 + 1);
      v37 = *(a4 + 3);
      *(a2 + 2) = *(a4 + 2);
      *(a2 + 3) = v37;
      *a2 = v35;
      *(a2 + 1) = v36;
      v38 = *(a4 + 4);
      v39 = *(a4 + 5);
      v40 = *(a4 + 7);
      *(a2 + 6) = *(a4 + 6);
      *(a2 + 7) = v40;
      *(a2 + 4) = v38;
      *(a2 + 5) = v39;
      v41 = *(a4 + 8);
      v42 = *(a4 + 9);
      v43 = *(a4 + 11);
      *(a2 + 10) = *(a4 + 10);
      *(a2 + 11) = v43;
      *(a2 + 8) = v41;
      *(a2 + 9) = v42;
      v44 = *(a4 + 12);
      v45 = *(a4 + 13);
      v46 = *(a4 + 15);
      *(a2 + 14) = *(a4 + 14);
      *(a2 + 15) = v46;
      *(a2 + 12) = v44;
      *(a2 + 13) = v45;
    }

    else if (a9)
    {
      for (i = 0; i != 64; ++i)
      {
        v34 = a4[i];
        if (v34 <= a9[i])
        {
          v34 = a9[i];
        }

        a2[i] = v34;
      }
    }

    v47 = 0;
    v48 = v30 + a8;
    if (*(this + 8824))
    {
      v49 = 0;
    }

    else
    {
      v49 = this + 3352;
    }

    do
    {
      v50 = a2[v47];
      if (v50 <= a3->f32[v47])
      {
        v50 = a3->f32[v47];
      }

      *&v49[v47 * 4] = v50;
      ++v47;
    }

    while (v47 != 64);
    v51 = 0;
    v52 = 0.0;
    do
    {
      v53 = vmulq_f32(*&v49[v51 * 4], *&a5[v51]);
      v52 = (((v52 + v53.f32[0]) + v53.f32[1]) + v53.f32[2]) + v53.f32[3];
      v51 += 4;
    }

    while (v51 != 64);
    v54 = v52 - v48;
    if (v54 > 0.00000011921)
    {
      v55 = fminf((result.f32[0] - v48) / v54, 1.0);
      *(this + 8824) = 1;
      v56 = -4;
      v57 = a2;
      v58 = (this + 3352);
      do
      {
        v59 = *a3++;
        v60 = v59;
        v61 = *v57;
        v57 += 4;
        *v58++ = vsubq_f32(v60, v61);
        v56 += 4;
      }

      while (v56 < 0x3C);
      v62 = -4;
      v63 = (this + 3352);
      do
      {
        *v63 = vmaxq_f32(*v63, 0);
        ++v63;
        v62 += 4;
      }

      while (v62 < 0x3C);
      v64 = fmaxf(v55, 0.0);
      v65 = (this + 3368);
      v66 = -8;
      do
      {
        v67 = vmulq_n_f32(*v65, v64);
        v65[-1] = vmulq_n_f32(v65[-1], v64);
        *v65 = v67;
        v66 += 8;
        v65 += 2;
      }

      while (v66 < 0x38);
      v68 = -4;
      v69 = (this + 3352);
      v70 = a2;
      do
      {
        v71 = *v69++;
        *v70 = vaddq_f32(v71, *v70);
        ++v70;
        v68 += 4;
      }

      while (v68 < 0x3C);
      *(this + 8824) = 0;
      if (v64 < 1.0)
      {
        return result;
      }

      v48 = v48 + (v54 * v64);
    }

    for (j = 0; j != 64; ++j)
    {
      v73 = a2[j];
      if (v73 <= a7->f32[j])
      {
        v73 = a7->f32[j];
      }

      v9->f32[j] = v73;
    }

    v74 = 0;
    v75 = 0.0;
    do
    {
      v76 = vmulq_f32(v9[v74 / 4], *&a5[v74]);
      v75 = (((v75 + v76.f32[0]) + v76.f32[1]) + v76.f32[2]) + v76.f32[3];
      v74 += 4;
    }

    while (v74 != 64);
    *(this + 8824) = 0;
    v77 = v75 - v48;
    if (v77 > 0.00000011921)
    {
      *(this + 8824) = 1;
      v78 = -4;
      v79 = a2;
      v80 = (this + 3352);
      v81 = (result.f32[0] - v48) / v77;
      do
      {
        v82 = *a7++;
        v83 = v82;
        v84 = *v79;
        v79 += 4;
        *v80++ = vsubq_f32(v83, v84);
        v78 += 4;
      }

      while (v78 < 0x3C);
      v85 = -4;
      v86 = (this + 3352);
      do
      {
        *v86 = vmaxq_f32(*v86, 0);
        ++v86;
        v85 += 4;
      }

      while (v85 < 0x3C);
      v87 = fminf(v81, 1.0);
      v88 = (this + 3368);
      v89 = -8;
      do
      {
        v90 = vmulq_n_f32(*v88, v87);
        v88[-1] = vmulq_n_f32(v88[-1], v87);
        *v88 = v90;
        v89 += 8;
        v88 += 2;
      }

      while (v89 < 0x38);
      v91 = -4;
      do
      {
        v92 = *v9++;
        result = vaddq_f32(v92, *a2);
        *a2 = result;
        a2 += 4;
        v91 += 4;
      }

      while (v91 < 0x3C);
      *(this + 8824) = 0;
    }
  }

  return result;
}

void *LTMComputeV1::LTMCompute::makeScaleGTC(LTMComputeV1::LTMCompute *this, float *__dst, float *__src, float a4, float a5)
{
  if (a4 <= 0.00000011921)
  {
    return memcpy(__dst, __src, 0x404uLL);
  }

  v5 = 1.0 - a5;
  if (a4 >= 1.0)
  {
    v9 = __src[256];
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = v6;
      v8 = *(&LTMComputeV1::LTMCompute::globalCurveInputs + v6++);
    }

    while (v7 <= 0x100 && v8 < a4);
    v9 = 0.0;
    if (v6 != 1)
    {
      v10 = (v6 - 2);
      v11 = *(&LTMComputeV1::LTMCompute::globalCurveInputs + v10);
      if (vabds_f32(v8, v11) >= 0.00000011921)
      {
        v9 = __src[v10] + (((a4 - v11) / (v8 - v11)) * (__src[v6 - 1] - __src[v10]));
      }

      else
      {
        v9 = __src[v6 - 1];
      }
    }
  }

  v13 = v5 * v9;
  v14 = (1.0 - v13) / fmaxf(1.0 - v9, 0.00000011921);
  v15 = v9;
  v16 = v13;
  v17 = 1.0 / fmax((v15 + v15) * v15 - v15 * v15, 2.22044605e-16);
  v18 = (v15 + v15) * v17 * v13 + -(v15 * v15) * v17 * v14;
  if (v18 >= 0.0)
  {
    v19 = v17 * v15 * v14 - v17 * v16;
  }

  else
  {
    v19 = v16 / fmax((v9 * v9), 2.22044605e-16);
    v18 = 0.0;
  }

  v20 = 0;
  *__dst = 0.0;
  do
  {
    __dst[v20 + 1] = (__src[v20 + 1] * v14) - (v14 + -1.0);
    ++v20;
  }

  while (v20 != 256);
  v21 = fminf(ceilf(a4 * 256.0), 257.0);
  if (v21 >= 2)
  {
    v23 = __dst + 1;
    v24 = __src + 1;
    v25 = v21 - 1;
    do
    {
      v26 = *v24++;
      v22 = v19;
      *v23++ = v26 * (v18 + (v22 * v26));
      --v25;
    }

    while (v25);
  }

  return result;
}

void LTMComputeV1::LTMCompute::computeRGBToneCurve(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmTuningParams *a3, const sLtmFrameParams *a4, sLtmComputeOutput *a5)
{
  v8 = 0;
  v9 = this + 0x2000;
  v63 = &a2->localHist[4092];
  v10 = fminf(a4->var6[77] / a2->localHist[4496], 32.0);
  v11 = vcvtms_s32_f32(v10);
  v12 = v10 - floorf(v10);
  if (v11 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  v14 = (v13 - 1);
  v15 = 0.0;
  v16 = a2;
  v17 = 0.0;
  do
  {
    v18 = v12 * *(&a2->rotationMagnitude + 64 * v8 + v11);
    v19 = v14;
    p_rotationMagnitude = &v16->rotationMagnitude;
    if (v11 >= 2)
    {
      do
      {
        v21 = *p_rotationMagnitude++;
        v18 = v18 + v21;
        --v19;
      }

      while (v19);
    }

    v22 = &a5->LTC[65 * v8 + v11];
    v23 = *v22 + ((v22[1] - *v22) * v12);
    v24 = (v18 * v23) + 0.001;
    v17 = v17 + (v23 * v24);
    v15 = v15 + v24;
    ++v8;
    v16 = (v16 + 256);
  }

  while (v8 != 48);
  v25 = v17 / v15;
  v26 = &a5->LTC[3185];
  if (v25 <= 0.0)
  {
    v30 = *v26;
  }

  else if (v25 >= 1.0)
  {
    v30 = a5->LTC[3441];
  }

  else
  {
    v27 = 0;
    do
    {
      v28 = v27;
      v29 = *(&LTMComputeV1::LTMCompute::globalCurveInputs + v27++);
    }

    while (v28 <= 0x100 && v29 < v25);
    v30 = 0.0;
    if (v27 != 1)
    {
      v31 = (v27 - 2);
      v32 = *(&LTMComputeV1::LTMCompute::globalCurveInputs + v31);
      if (vabds_f32(v29, v32) >= 0.00000011921)
      {
        v30 = v26[v31] + (((v25 - v32) / (v29 - v32)) * (a5->LTC[v27 + 3184] - v26[v31]));
      }

      else
      {
        v30 = a5->LTC[v27 + 3184];
      }
    }
  }

  if (*(this + 8825))
  {
    v33 = 0;
  }

  else
  {
    *(this + 8825) = 1;
    v33 = (this + 4720);
  }

  LTMComputeV1::LTMCompute::makeScaleGTC(this, v33, &LTMComputeV1::LTMCompute::globalCurveInputs, v30, a4->var6[78]);
  v34 = 0;
  v35 = *(this + 2);
  do
  {
    v36 = powf(v33[v34], (a4->var6[72] * 1.1) / *(v35 + 16));
    v33[v34++] = powf(v36, (sqrtf(v36) * -0.1) + 1.2);
  }

  while (v34 != 257);
  if (v9[635])
  {
    v38 = 0;
  }

  else
  {
    v9[635] = 1;
    v38 = (this + 7456);
  }

  if (v9[632])
  {
    v39 = 0;
  }

  else
  {
    v9[632] = 1;
    v39 = (this + 3352);
  }

  if (v9[634])
  {
    v40 = 0;
  }

  else
  {
    v9[634] = 1;
    v40 = (this + 6088);
  }

  ScaleGTC = LTMComputeV1::LTMCompute::makeScaleGTC(v37, v38, &LTMComputeV1::LTMCompute::globalCurveInputs, a4->var6[89], 0.28);
  v42 = 256;
  v43 = v39;
  do
  {
    *v43++ = 1.0 - v38[v42--];
  }

  while (v42 != -1);
  LTMComputeV2::LTMCompute::interpolate(ScaleGTC, v39, &LTMComputeV1::LTMCompute::globalCurveInputs, 257, &LTMComputeV1::LTMCompute::globalCurveInputs, v40, 257);
  v44 = powf(a4->var6[89], 0.8);
  v45 = powf(1.0 / ((0.4704 / v44) + 0.5146), 1.25);
  LTMComputeV1::LTMCompute::makeScaleGTC(v46, v38, &LTMComputeV1::LTMCompute::globalCurveInputs, v45, 0.12);
  v47 = 0;
  v48 = v38 + 256;
  do
  {
    v49 = *v48--;
    v39[v47++] = 1.0 - v49;
  }

  while (v47 != 257);
  v9[635] = 1;
  v50 = memcpy(this + 7456, &a5->LTC[3185], 0x404uLL);
  LTMComputeV2::LTMCompute::interpolate(v50, &LTMComputeV1::LTMCompute::globalCurveInputs, v40, 257, this + 1864, &a5->LTC[3185], 257);
  v51 = 0;
  v52 = *(this + 2);
  do
  {
    v26[v51] = powf(v26[v51], *(v52 + 16));
    ++v51;
  }

  while (v51 != 257);
  v54 = &a5->LTC[3442];
  if (*(v63 + 2473))
  {
    memcpy(&a5->LTC[3442], &LTMComputeV1::LTMCompute::globalCurveInputs, 0x404uLL);
    for (i = 0; i != 257; ++i)
    {
      v56 = v54[i];
      if (v56 >= 0.018)
      {
        v57 = (powf(v56, 0.45) * 1.099) + -0.099;
      }

      else
      {
        v57 = v56 * 4.5;
      }

      v54[i] = v57;
    }
  }

  else
  {
    LTMComputeV2::LTMCompute::interpolate(v53, &LTMComputeV1::LTMCompute::globalCurveInputs, v40, 257, v33, &a5->LTC[3442], 257);
    LTMComputeV2::LTMCompute::interpolate(v58, v40, &a5->LTC[3442], 257, &LTMComputeV1::LTMCompute::globalCurveInputs, this + 1864, 257);
    LTMComputeV2::LTMCompute::interpolate(v59, &LTMComputeV1::LTMCompute::globalCurveInputs, v39, 257, this + 1864, &a5->LTC[3442], 257);
    for (j = 0; j != 257; ++j)
    {
      v61 = v54[j];
      if (v61 >= 0.0031308)
      {
        v62 = (powf(v61, 0.41667) * 1.055) + -0.055;
      }

      else
      {
        v62 = v61 * 12.92;
      }

      v54[j] = v62;
    }
  }

  LOBYTE(a5->LTC[9145]) |= 0x10u;
  *(v9 + 158) = 0;
}

void LTMComputeV1::LTMCompute::adaptForHLG(LTMComputeV1::LTMCompute *this, sLtmComputeOutput *a2)
{
  if (*(this + 8824))
  {
    v4 = 0;
  }

  else
  {
    *(this + 8824) = 1;
    v4 = this + 3352;
  }

  v5 = memcpy(v4, &a2->LTC[3185], 0x404uLL);
  LTMComputeV2::LTMCompute::interpolate(v5, LTMComputeV1::LTMCompute::globalCurveInputs, LTMComputeV1::LTMCompute::gpre, 257, v4, &a2->LTC[3185], 257);
  v6 = 0;
  v7 = &a2->LTC[3442];
  do
  {
    v7[v6] = powf(v7[v6], 2.2);
    ++v6;
  }

  while (v6 != 257);
  LTMComputeV2::LTMCompute::interpolate(v8, LTMComputeV1::LTMCompute::globalCurveInputs, LTMComputeV1::LTMCompute::gpre, 257, v7, v4, 257);
  LTMComputeV2::LTMCompute::interpolate(v9, LTMComputeV1::LTMCompute::gpre, v4, 257, LTMComputeV1::LTMCompute::globalCurveInputs, v7, 257);
  for (i = 0; i != 257; ++i)
  {
    v11 = v7[i];
    if (v11 >= 0.0833)
    {
      v12 = (logf((v11 * 12.0) + -0.2847) * 0.17883) + 0.5599;
    }

    else
    {
      v12 = sqrtf(v11 * 3.0);
    }

    v7[i] = v12;
  }

  *(this + 8824) = 0;
}

void LTMComputeV1::LTMCompute::generateSpatialLTC(LTMComputeV1::LTMCompute *this, const sLtmComputeInput *a2, const sLtmComputeMeta_SOFTISP *a3, sLtmComputeOutput *a4)
{
  if (LTMComputeV1::LTMCompute::generateSpatialLTC(sLtmComputeInput const*,sLtmComputeMeta_SOFTISP const*,sLtmComputeOutput *)::onceToken != -1)
  {
    LTMComputeV1::LTMCompute::generateSpatialLTC();
  }

  *(this + 2) = &LTMComputeV1::LTMCompute::tuningParamsSDR;
  gammaCurve = a3->ltmComputeMeta.gammaCurve;
  if (a3->ltmComputeMeta.useDigitalFlash)
  {
    if (gammaCurve == 1)
    {
      v9 = &LTMComputeV1::LTMCompute::tuningParamsHLG;
      v10 = 4;
    }

    else
    {
      v9 = &LTMComputeV1::LTMCompute::tuningParamsDigitalFlash;
      if (*(this + 1) == 2)
      {
        v9 = &LTMComputeV1::LTMCompute::tuningParamsDigitalFlashFFC;
      }

      v10 = 2;
    }

    goto LABEL_11;
  }

  if (gammaCurve == 1)
  {
    v9 = &LTMComputeV1::LTMCompute::tuningParamsHLG;
    v10 = 1;
LABEL_11:
    *(this + 2) = v9;
    goto LABEL_13;
  }

  v10 = 0;
  v9 = &LTMComputeV1::LTMCompute::tuningParamsSDR;
LABEL_13:
  v171 = this + 8824;
  if (LOBYTE(a3[1].tuningParametersOverride[3].nonFaceRatioFloor) == 1)
  {
    v11 = &a3->ltmComputeMeta.useLinearLTCs + 144 * v10;
    *(v9 + 2) = *(v11 + 8);
    *v9 = vrev64_s32(*(v11 + 36));
    *&v12 = *(v11 + 44);
    v13 = *(v11 + 52);
    LODWORD(v14) = *(v11 + 15);
    *(v9 + 27) = *(v11 + 17);
    v15 = *(v11 + 9);
    *(v9 + 7) = *(v11 + 20);
    LODWORD(v16) = *(v11 + 21);
    *(v9 + 28) = *(v11 + 22);
    LODWORD(v17) = *(v11 + 23);
    DWORD2(v12) = *(v11 + 24);
    HIDWORD(v12) = *(v11 + 16);
    *(v9 + 92) = v12;
    *(v9 + 9) = *(v11 + 26);
    *(v9 + 22) = *(v11 + 27);
    DWORD1(v17) = *(v11 + 28);
    *(&v17 + 1) = v15;
    DWORD1(v14) = *(v11 + 25);
    *(v9 + 12) = v17;
    DWORD1(v16) = *(v11 + 29);
    *(&v16 + 1) = *(v11 + 18);
    *(v9 + 5) = v16;
    *&v12 = *(v11 + 19);
    *(&v12 + 1) = v13;
    *(v9 + 7) = v12;
    *(&v14 + 1) = *(v11 + 20);
    *(v9 + 9) = v14;
    v9 = *(this + 2);
  }

  v170 = &a4->LTC[0x2000];
  *(v9 + 8) = LODWORD(a2->localHist[4759]);
  LTMComputeV1::LTMCompute::calculateDisplayModel(this, *(v9 + 20), *(v9 + 21), LTMComputeV1::LTMCompute::uniformLocalHistogram, this + 6);
  v19 = *(this + 70);
  *(this + 136) = v19;
  v20 = (this + 40);
  v21 = -8;
  v22 = 1.0 / v19;
  do
  {
    v23 = vmulq_n_f32(*v20, v22);
    v20[-1] = vmulq_n_f32(v20[-1], v22);
    *v20 = v23;
    v21 += 8;
    v20 += 2;
  }

  while (v21 < 0x38);
  *(this + 70) = v22 * *(this + 70);
  v24 = this + 284;
  LTMComputeV2::LTMCompute::interpolate(v18, this + 6, LTMComputeV1::LTMCompute::localCurveInputs, 65, LTMComputeV1::LTMCompute::localCurveInputs, this + 71, 65);
  bzero(this + 548, 0xAF4uLL);
  v26 = *(this + 2);
  v27 = *(v26 + 104);
  *(this + 837) = v27;
  if (!a3->ltmComputeMeta.useDigitalFlash)
  {
    *(this + 837) = fminf(v27 + (((0.65 - v27) * fmaxf(a2->localHist[4497] + -1.0, 0.0)) * 0.25), 0.65);
  }

  LTMComputeV1::LTMCompute::computeLocalLuma(v25, a2, v26, (this + 24), (this + 548));
  *(this + 818) = 1065353216;
  v28 = a2->localHist[4496];
  v29 = 1.0;
  if (!a3->ltmComputeMeta.useFlash && v28 > 1.0)
  {
    v30 = a2->localHist[4499];
    if (a3->ltmComputeMeta.gammaCurve == 1)
    {
      v29 = (((v30 + -1.0) * fmaxf(*(*(this + 2) + 36), v28 / v30)) * *(*(this + 2) + 32)) + 1.0;
    }

    else
    {
      v29 = powf(v30, fminf(fmaxf(*(*(this + 2) + 36), (v28 + -1.0) / v30) * *(*(this + 2) + 32), 1.0));
    }

    *(this + 818) = v29;
  }

  v31 = a2->localHist[4497];
  v32 = fminf((v28 * v29) * fminf(v31, 1.0), 80.0);
  *(this + 816) = v32;
  *(this + 830) = v29 * v31;
  v33 = fmaxf(v32, 1.0);
  *(this + 817) = v33;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 3276) = _D0;
  v39 = a2->localHist[4493];
  v40 = *(this + 2);
  v41 = fmaxf(a2->localHist[4500] * *(v40 + 28), 1.0);
  if (a3->ltmComputeMeta.useDigitalFlash)
  {
    v42 = *(v40 + 44);
    v43 = fminf(fmaxf(15.0 / a2->localHist[4709], v39 + v39) / v42, 1.0);
    *(this + 819) = v43;
    v44 = fmaxf(v39, (v39 + v42) * 0.5);
    if (v39 < v42)
    {
      v39 = v44;
    }

    *(this + 820) = fminf(fminf((((1.0 - (1.0 / fmaxf(powf(v41, 3.0), 1.0))) * 0.4) * (1.0 - sqrtf(v43))) + 1.0, *(v40 + 24)), *(v40 + 20) + (v43 * 50.0));
  }

  *(this + 829) = *(v40 + 8);
  v45 = fmaxf(v39, *(v40 + 40));
  *(this + 822) = v45 / 3.14;
  v46 = fminf(fmaxf((v45 + -4.0) / 1019.0, 0.0), 1.0);
  *(this + 821) = v46;
  v47 = fabsf(sqrtf(v46));
  *(this + 824) = *(this + 136) * (v47 + (*(v40 + 100) * (1.0 - v47)));
  v48 = exp2f((v33 * -0.435) + -1.3651);
  *(this + 813) = v48;
  *(this + 814) = (v48 * -2.0) + 1.0;
  *(this + 815) = v48;
  v178 = (this + 548);
  LTMComputeV1::LTMCompute::computeThumbnailLuma(this, a2, (this + 548));
  v49 = *(this + 2);
  *(this + 823) = fmaxf(*(v49 + 112) * *(this + 821), 0.015625);
  v187[0] = 0.0;
  *(this + 825) = 0;
  *(this + 826) = 0;
  v50 = (this + 3300);
  HIDWORD(v51) = 1;
  *v186 = xmmword_1C93323B0;
  LODWORD(v51) = *(v49 + 88);
  LTMComputeV1::LTMCompute::calculateSceneFlare(this, &a2->localHist[3132], 256, v186, v51, LTMComputeV1::sLtmTuningParams::nFlareBins, this + 825, this + 826, v187);
  v52 = LTMComputeV1::sLtmTuningParams::nFlareBins;
  *&v53 = fminf(*(this + 825), LTMComputeV1::sLtmTuningParams::nFlareBins);
  *(this + 825) = LODWORD(v53);
  v173 = &a2->localHist[4092];
  if (a2->localHist[4502] < 1.0)
  {
    memset(v186, 0, 16);
    v185 = 0;
    v183 = 0;
    LODWORD(v53) = 1025758986;
    LTMComputeV1::LTMCompute::calculateSceneFlare(this, &a2->localHist[4316], 64, v186, v53, v52, &v185, &v183, &v184);
    v53 = COERCE_DOUBLE(vmla_n_f32(vmul_n_f32(vmaxnm_f32(*v50, __PAIR64__(v183, v185)), 1.0 - a2->localHist[4502]), *v50, a2->localHist[4502]));
    *v50 = v53;
  }

  v54 = *(this + 2);
  if (a3->ltmComputeMeta.useDigitalFlash)
  {
    v50->f32[0] = fmaxf(*&v53, (1.0 - (1.0 / v41)) * *(v54 + 108));
  }

  LTMComputeV1::LTMCompute::calculateSceneModel(this, a2, v54, v178);
  v58 = 0.0;
  LODWORD(v59) = *(this + 821);
  *(this + 827) = (((((1.0 - v187[0]) * 0.0) + 1.0) * 0.2) * fmaxf(*&v59, 0.22108)) + 1.0;
  useDigitalFlash = a3->ltmComputeMeta.useDigitalFlash;
  if (useDigitalFlash)
  {
    LODWORD(v57) = 1053609165;
  }

  else
  {
    v61 = ((*(this + 819) * -0.8) + 1.0) * fminf(*(this + 817) * 0.125, 1.0);
    *&v57 = v61 + ((1.0 - v61) * 0.4);
  }

  v180 = (this + 3252);
  *&v56 = (1.0 - *&v59) * *&v57;
  LODWORD(v57) = 0.5;
  *&v56 = *&v56 + (*&v59 * 0.5);
  *(this + 828) = LODWORD(v56);
  LTMComputeV1::LTMCompute::calculateHighlightSceneModel(this, a2, v55, useDigitalFlash, v178, v56, v59, v57);
  *(this + 831) = 1094210028;
  v185 = 0;
  v183 = 0;
  v184 = 0.0;
  *v186 = xmmword_1C93323B0;
  LTMComputeV1::LTMCompute::calculateSceneFlare(this, &a2->localHist[3132], 256, v186, COERCE_DOUBLE(0x13E19999ALL), 46.08, &v185, &v184, &v183);
  v62 = *&v185 / *(this + 831);
  *&v185 = v62;
  if (*(this + 71) >= 0.18)
  {
    v63 = &a2->localHist[4092];
  }

  else
  {
    v63 = &a2->localHist[4092];
    if (*(this + 134) <= 0.18)
    {
      v58 = 0.98438;
    }

    else
    {
      v64 = 0;
      do
      {
        v65 = v64;
        v66 = *&v24[4 * v64++];
      }

      while (v65 <= 0x3F && v66 < 0.18);
      if (v64 != 1)
      {
        v67 = (v64 - 2);
        v68 = *&v24[4 * v67];
        if (vabds_f32(v66, v68) >= 0.00000011921)
        {
          v58 = LTMComputeV1::LTMCompute::localCurveInputs[v67] + (((0.18 - v68) / (v66 - v68)) * (LTMComputeV1::LTMCompute::localCurveInputs[v64 - 1] - LTMComputeV1::LTMCompute::localCurveInputs[v67]));
        }

        else
        {
          v58 = LTMComputeV1::LTMCompute::localCurveInputs[v64 - 1];
        }
      }
    }
  }

  v69 = 0;
  *(this + 832) = v58 * *(this + 136);
  v70 = (this + 3352);
  if (*v171)
  {
    v70 = 0;
  }

  *v70 = 0.0;
  v71 = a3->ltmComputeMeta.gammaCurve;
  v72 = 1968;
  if (v71 == 1)
  {
    v72 = 2480;
  }

  v73 = this + v72;
  v74 = 0.0;
  do
  {
    v74 = v74 + *&v73[v69 * 4];
    v70[++v69] = v74;
  }

  while (v69 != 64);
  v75 = *(this + 832);
  v76 = 0.0;
  if (v75 > 0.0)
  {
    if (v70[63] <= v75)
    {
      v76 = 0.98438;
    }

    else
    {
      v77 = 0;
      do
      {
        v78 = v77;
        v79 = v70[v77++];
      }

      while (v78 <= 0x3F && v79 < v75);
      v76 = 0.0;
      if (v77 != 1)
      {
        v80 = (v77 - 2);
        v81 = v70[v80];
        if (vabds_f32(v79, v81) >= 0.00000011921)
        {
          v76 = LTMComputeV1::LTMCompute::localCurveInputs[v80] + (((v75 - v81) / (v79 - v81)) * (LTMComputeV1::LTMCompute::localCurveInputs[v77 - 1] - LTMComputeV1::LTMCompute::localCurveInputs[v80]));
        }

        else
        {
          v76 = LTMComputeV1::LTMCompute::localCurveInputs[v77 - 1];
        }
      }
    }
  }

  v82 = v76 * 64.0;
  *(this + 833) = v76 * 64.0;
  *v171 = 0;
  v83 = fmaxf(fminf(((v62 + -0.08) * v184) * 3.0, 1.0), 0.0);
  *(this + 834) = v83;
  if (v71 == 1)
  {
    v84 = *(this + 821);
    v85 = fminf(fmaxf((v84 + 0.9) + (fminf(1.0 - v63[403], 0.1) * -10.0), 0.7), 1.0) * 0.8;
    *(this + 836) = v85;
    *(this + 834) = fmaxf((1.0 - v84) * v85, v83);
  }

  v86 = 0;
  v87 = (this + 1456);
  v88 = floorf(v82);
  v89 = ceilf(v82);
  v181 = (this + 1456);
  do
  {
    v90 = v86;
    v91 = 1.0;
    if (v88 <= v86)
    {
      v91 = 0.0;
      if (v89 > v90)
      {
        v91 = v82 - v90;
      }
    }

    if (v87)
    {
      *v87++ = v91;
    }

    ++v86;
  }

  while (v86 != 64);
  LTMComputeV1::LTMCompute::calculateGlobalLUTandModifySceneModels(this, *(this + 1), a2, &a3->ltmComputeMeta, *(this + 2), (this + 24), v178, a4);
  if (*(this + 8825))
  {
    v92 = 0;
  }

  else
  {
    *(this + 8825) = 1;
    v92 = (this + 4720);
  }

  v93 = 0;
  v94 = -4;
  do
  {
    v92[v93 / 4] = vsubq_f32(*&a2->localHist[v93 + 4252], *&a2->localHist[v93 + 3068]);
    v94 += 4;
    v93 += 4;
  }

  while (v94 < 0x3C);
  v95 = -16;
  v96 = 75;
  do
  {
    v97 = &v92[v96 - 74];
    v98 = &v92[v96 - 73];
    v99 = &v92[v96 - 72];
    v100 = vmulq_f32(*v97, *(this + v96 * 16 + 16));
    v101 = vmulq_f32(*v98, *(this + v96 * 16 + 32));
    v102 = vmulq_f32(*v99, *(this + v96 * 16 + 48));
    v92[v96 - 75] = vmulq_f32(v92[v96 - 75], *(this + v96 * 16));
    *v97 = v100;
    *v98 = v101;
    *v99 = v102;
    v95 += 16;
    v96 += 4;
  }

  while (v95 < 0x30);
  v103 = -4;
  v104 = 768;
  do
  {
    v92[v104 - 768] = vaddq_f32(v92[v104 - 768], *(&a2->rotationMagnitude + v104 * 16));
    v103 += 4;
    ++v104;
  }

  while (v103 < 0x3C);
  memset_pattern16(&v92[16], &unk_1C9332D90, 0x100uLL);
  v105 = (this + 1968);
  if (a3->ltmComputeMeta.gammaCurve == 1)
  {
    v105 = (this + 2480);
  }

  v177 = (this + 2992);
  LTMComputeV1::LTMCompute::allocateTone(this, 0, this + 107, v92->f32, *(this + 2), (this + 24), v178, v92 + 16, *(this + 233), *(this + 234), *(this + 817), v181, v105, v180, this + 748, 0, a3->ltmComputeMeta.gammaCurve == 1);
  v106 = -4;
  v107 = (this + 1456);
  do
  {
    *v107 = vminq_f32(*v107, v107[16]);
    ++v107;
    v106 += 4;
  }

  while (v106 < 0x3C);
  if (a3->ltmComputeMeta.gammaCurve != 1)
  {
    v108 = -16;
    v109 = (this + 1456);
    do
    {
      v110 = vmulq_f32(v109[1], v109[33]);
      v111 = vmulq_f32(v109[2], v109[34]);
      v112 = vmulq_f32(v109[3], v109[35]);
      *v109 = vmulq_f32(*v109, v109[32]);
      v109[1] = v110;
      v109[2] = v111;
      v109[3] = v112;
      v108 += 16;
      v109 += 4;
    }

    while (v108 < 0x30);
    v113 = -4;
    v114 = (this + 1456);
    do
    {
      v115 = v114[64];
      v116 = vrecpeq_f32(v115);
      v117 = vmulq_f32(v116, vrecpsq_f32(v115, v116));
      *v114 = vmulq_f32(*v114, vmulq_f32(vrecpsq_f32(v115, v117), v117));
      ++v114;
      v113 += 4;
    }

    while (v113 < 0x3C);
  }

  v118 = 0;
  v119 = -4;
  do
  {
    v92[v118 / 4] = vsubq_f32(*&a2->localHist[v118 + 4252], *&a2->localHist[v118 + 3068]);
    v119 += 4;
    v118 += 4;
  }

  while (v119 < 0x3C);
  v120 = -16;
  v121 = 107;
  do
  {
    v122 = &v92[v121 - 106];
    v123 = &v92[v121 - 105];
    v124 = &v92[v121 - 104];
    v125 = vmulq_f32(*v122, *(this + v121 * 16 + 16));
    v126 = vmulq_f32(*v123, *(this + v121 * 16 + 32));
    v127 = vmulq_f32(*v124, *(this + v121 * 16 + 48));
    v92[v121 - 107] = vmulq_f32(v92[v121 - 107], *(this + v121 * 16));
    *v122 = v125;
    *v123 = v126;
    *v124 = v127;
    v120 += 16;
    v121 += 4;
  }

  while (v120 < 0x30);
  v128 = -4;
  v129 = 768;
  do
  {
    v92[v129 - 768] = vaddq_f32(v92[v129 - 768], *(&a2->rotationMagnitude + v129 * 16));
    v128 += 4;
    ++v129;
  }

  while (v128 < 0x3C);
  v130 = 0;
  v131 = -4;
  do
  {
    v92[v130 + 32] = vsubq_f32(*(this + v130 * 16 + 2736), *(this + v130 * 16 + 1968));
    v131 += 4;
    ++v130;
  }

  while (v131 < 0x3C);
  v132 = -4;
  v133 = 32;
  do
  {
    v92[v133] = vmaxq_f32(v92[v133], 0);
    v132 += 4;
    ++v133;
  }

  while (v132 < 0x3C);
  v134 = (this + 3308);
  v135 = vld1q_dup_f32(v134);
  v136 = -4;
  v137 = 123;
  do
  {
    v92[v137 - 75] = vaddq_f32(vmulq_f32(v135, *(this + v137 * 16)), vmulq_f32(v135, v92[v137 - 91]));
    v136 += 4;
    ++v137;
  }

  while (v136 < 0x3C);
  v172 = a2;
  if (*(this + 8826))
  {
    v138 = 0;
  }

  else
  {
    *(this + 8826) = 1;
    v138 = (this + 6088);
  }

  v179 = a3;
  LTMComputeV1::LTMCompute::allocateTone(this, v138, 0, v92->f32, *(this + 2), (this + 24), v178, v92 + 16, *(this + 233), *(this + 234), *(this + 817), v181, v92[48].f32, v180, v177, 1, a3->ltmComputeMeta.gammaCurve == 1);
  v139 = 0;
  *(this + 8825) = 0;
  v140 = v63[407];
  v141 = *(*(this + 2) + 4) - ((*(*(this + 2) + 4) - *(this + 828)) / (fmaxf((v140 * v140) + -1.0, 0.0) + 1.0));
  v142 = fmaxf(v140 + -1.0, 0.0);
  *(this + 835) = fminf((v142 * v142) * 25.0, 4.0);
  v143 = *(this + 834);
  v144 = (this + 740);
  p_rotationMagnitude = &v172->rotationMagnitude;
  v182 = &v172->localHist[4445];
  v146 = &a4->LTC[4];
  v147 = (this + 548);
  v148 = a4;
  v176 = a4;
  v174 = 1.0 - (*(this + 821) * 0.5);
  v175 = *(this + 821) * 0.5;
  do
  {
    v149 = *(this + 2);
    v150 = *(v149 + 4);
    v151 = fminf(v150, v182[v139] * *(this + 835));
    *(this + 828) = v141 + v151;
    *(this + 829) = fminf(v150, *(v149 + 8) + (v151 * 0.25));
    v152 = v179->ltmComputeMeta.gammaCurve;
    if (v152 == 1)
    {
      *(this + 834) = fmaxf(fminf(*(this + 836) * (1.0 - (*(this + 821) / (((v182[v139] * powf(fmaxf(*(this + 818) + -1.0, 0.0), 0.25)) * 20.0) + 1.0))), 0.45) + (v143 * 0.25), v143);
    }

    LTMComputeV1::LTMCompute::allocateTone(this, v148, 0, p_rotationMagnitude, v149, (this + 24), v178, this + 107, *v147, *v144, *(this + 817), v181, this + 620, v180, v177, 1, v152 == 1);
    for (i = 0; i != 65; ++i)
    {
      v154 = v148->f32[i];
      if (v154 <= v138->f32[i])
      {
        v154 = v138->f32[i];
      }

      v138[16].f32[i + 1] = v154;
    }

    v155 = -8;
    v156 = v146;
    v157 = (v138 + 276);
    do
    {
      v158 = vaddq_f32(vmulq_n_f32(*v156, v174), vmulq_n_f32(*v157, v175));
      v156[-1] = vaddq_f32(vmulq_n_f32(v156[-1], v174), vmulq_n_f32(v157[-1], v175));
      *v156 = v158;
      v155 += 8;
      v157 += 2;
      v156 += 2;
    }

    while (v155 < 0x38);
    v159 = 0;
    v148[16].f32[0] = (v175 * v138[32].f32[1]) + (v148[16].f32[0] * v174);
    v160 = -4;
    do
    {
      *&v176->LTC[v159 / 4 + 3120] = vaddq_f32(*&v176->LTC[v159 / 4 + 3120], v148[v159 / 0x10]);
      v160 += 4;
      v159 += 16;
    }

    while (v160 < 0x3C);
    v176->LTC[3184] = v176->LTC[3184] + v148[16].f32[0];
    v148 = (v148 + 260);
    p_rotationMagnitude += 64;
    ++v147;
    ++v144;
    ++v139;
    v146 += 65;
  }

  while (v139 != 48);
  *(this + 8826) = 0;
  v161 = &v176->LTC[3124];
  v162 = -8;
  v163 = vdupq_n_s32(0x3CAAAAABu);
  do
  {
    v164 = vmulq_f32(*v161, v163);
    v161[-1] = vmulq_f32(v161[-1], v163);
    *v161 = v164;
    v162 += 8;
    v161 += 2;
  }

  while (v162 < 0x38);
  v176->LTC[3184] = v176->LTC[3184] * 0.020833;
  *(v170 + 3812) |= 4u;
  LTMComputeV1::LTMCompute::levelSmoothHFF(this, v176->LTC, &v172->localHist[4711], 6, 8);
  if (v179->ltmComputeMeta.useDigitalFlash)
  {
    for (j = 0; j != 257; ++j)
    {
      v176->LTC[j + 3185] = powf(v176->LTC[j + 3185], 1.0 / *(this + 820));
    }
  }

  LTMComputeV1::LTMCompute::computeRGBToneCurve(this, v172, v165, v178, v176);
  v167 = v179->ltmComputeMeta.gammaCurve;
  if (v167 == 2)
  {
    memcpy(&v176->LTC[3442], LTMComputeV1::LTMCompute::globalCurveInputs, 0x101uLL);
  }

  else if (v167 == 1)
  {
    LTMComputeV1::LTMCompute::adaptForHLG(this, v176);
  }

  v168 = v173[404];
  v170[952] = v168;
  if (v179->ltmComputeMeta.useDigitalFlash && v179->ltmComputeMeta.useGlobalCCM)
  {
    v170[948] = fminf(v173[409], v169) / v168;
  }
}

void LTMComputeV1::LTMCompute::levelSmoothHFF(LTMComputeV1::LTMCompute *this, float *a2, const float *a3, int a4, int a5)
{
  v10 = this + 0x2000;
  v142 = (a5 * a4);
  v11 = 6 * v142;
  if (*(this + 8827))
  {
    v12 = 0;
  }

  else
  {
    *(this + 8827) = 1;
    v12 = (this + 7456);
    if (v11 >= 336)
    {
      v13 = 336;
    }

    else
    {
      v13 = 6 * v142;
    }

    bzero(this + 7456, 4 * v13 + 24);
  }

  LTMComputeV1::LTMCompute::HFFspatialMapCalc(this, v142, a3, &v12->f32[v11], v12);
  LTMComputeV1::LTMCompute::HFFspatialMapFilter(this, a4, a5, v12->f32, a3);
  v17 = v142;
  v18 = v142 + 6;
  if (v10[632])
  {
    v19 = 0;
  }

  else
  {
    v20 = v18 + v11;
    v10[632] = 1;
    if (v18 + v11 >= 342)
    {
      v20 = 342;
    }

    bzero(this + 3352, 4 * v20);
    v19 = this + 3352;
    v17 = v142;
  }

  v129 = &v19[4 * v18];
  v21 = v18 + v17;
  v136 = &v19[4 * v21];
  v22 = v18 + 2 * v17;
  v140 = &v19[4 * v22];
  v23 = &v19[12 * v142 + 4 * v18];
  v24 = v18 + 4 * v17;
  v134 = v12;
  v135 = &v19[4 * v24];
  v25 = v18 + 5 * v17;
  v127 = v10;
  if (v10[633])
  {
    v133 = 0;
  }

  else
  {
    v10[633] = 1;
    v15 = 0uLL;
    *(this + 295) = 0u;
    v133 = this + 4720;
    *(this + 296) = 0u;
    *(this + 297) = 0u;
    *(this + 298) = 0u;
    *(this + 598) = 0;
  }

  v26 = 0;
  v27 = v17 & 0xFFFFFFFC;
  v28 = v17 & 0xFFFFFFF8;
  v139 = &v19[4 * v18];
  v29 = &v19[4 * v22];
  v30 = &v19[16 * v17 + 16];
  v128 = (v30 + 24);
  v137 = &v19[4 * v24];
  v138 = v30 + 8;
  v31 = &v19[4 * v21];
  v131 = &v19[4 * v25];
  __n = 4 * v17;
  v32 = 65 * a5;
  v130 = vdupq_n_s32(0x3F19999Au);
  do
  {
    while (1)
    {
      if (a4 >= 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = v26;
        do
        {
          if (a5 >= 1)
          {
            v36 = &v139[4 * v34];
            v37 = &v29[4 * v34];
            v38 = &v31[4 * v34];
            v34 += a5;
            v39 = &a2[v35];
            v35 += v32;
            v40 = a5;
            do
            {
              v41 = *v39;
              *v36 = *v39;
              v36 += 4;
              *v37 = v41;
              v37 += 4;
              v15.n128_f32[0] = *v39;
              *v38 = *v39;
              v38 += 4;
              v39 += 65;
              --v40;
            }

            while (v40);
          }

          ++v33;
        }

        while (v33 != a4);
      }

      v141 = v26;
      AuxCompute::levelSmooth3x3SinglePlane(v140, 6, 8, LTMComputeV1::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV1::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v14, v15, v16);
      memcpy(v131, v140, __n);
      if (v27 < 1)
      {
        v53 = 0;
        v49 = v142;
      }

      else
      {
        v45 = 0;
        v46 = v129;
        v47 = v140;
        v48 = v23;
        v49 = v142;
        do
        {
          v50 = *v46++;
          v51 = v50;
          v52 = *v47++;
          v44 = v52;
          v43 = vsubq_f32(v51, v52);
          *v48++ = v43;
          v45 += 4;
        }

        while (v45 < v27);
        v53 = v45;
      }

      if (v53 < v49)
      {
        v54 = v49 - v53;
        v55 = &v138[4 * v53];
        v56 = &v29[4 * v53];
        v57 = &v139[4 * v53];
        do
        {
          v58 = *v57++;
          v59 = v58;
          v60 = *v56++;
          *v44.i32 = v60;
          v43.n128_f32[0] = v59 - v60;
          *v55 = v43.n128_u32[0];
          v55 += 4;
          --v54;
        }

        while (v54);
      }

      AuxCompute::levelSmooth3x3SinglePlane(v131, 6, 8, LTMComputeV1::sLtmTuningParams::ltc3x3VertFilterCoeffs, LTMComputeV1::sLtmTuningParams::ltc3x3HorzFilterCoeffs, v42, v43, v44);
      if (v27 < 1)
      {
        v69 = 0;
      }

      else
      {
        v62 = 0;
        v63 = v140;
        v64 = v131;
        v65 = v135;
        do
        {
          v66 = *v63++;
          v67 = v66;
          v68 = *v64++;
          *v65++ = vsubq_f32(v67, v68);
          v62 += 4;
        }

        while (v62 < v27);
        v69 = v62;
      }

      if (v69 < v142)
      {
        v70 = v142 - v69;
        v71 = &v137->f32[v69];
        v72 = &v131[4 * v69];
        v73 = &v29[4 * v69];
        do
        {
          v74 = *v73++;
          v75 = v74;
          v76 = *v72++;
          *v71++ = v75 - v76;
          --v70;
        }

        while (v70);
      }

      LTMComputeV1::LTMCompute::HFFHighFreqModulate(v61, a5, a4, v134, v23, v133, (v133 + 24), v133 + 3);
      if (v28 < 1)
      {
        v81 = 0;
        v82 = v142;
        v79 = v141;
      }

      else
      {
        v77 = 0;
        v78 = v128;
        v79 = v141;
        v80.i64[0] = 0x3F0000003F000000;
        v80.i64[1] = 0x3F0000003F000000;
        do
        {
          v15 = vmulq_f32(v78[-1], v80);
          v16 = vmulq_f32(*v78, v80);
          v78[-1] = v15;
          *v78 = v16;
          v77 += 8;
          v78 += 2;
        }

        while (v77 < v28);
        v81 = v77;
        v82 = v142;
      }

      if (v81 < v82)
      {
        v83 = v82 - v81;
        v84 = &v138[4 * v81];
        do
        {
          v15.n128_f32[0] = *v84 * 0.5;
          *v84++ = v15.n128_f32[0];
          --v83;
        }

        while (v83);
      }

      if (v28 < 1)
      {
        v87 = 0;
      }

      else
      {
        v85 = 0;
        v86 = v137 + 1;
        do
        {
          v15 = vmulq_f32(v86[-1], v130);
          v16 = vmulq_f32(*v86, v130);
          v86[-1] = v15;
          *v86 = v16;
          v85 += 8;
          v86 += 2;
        }

        while (v85 < v28);
        v87 = v85;
      }

      if (v87 < v82)
      {
        v88 = v82 - v87;
        v89 = &v137->f32[v87];
        do
        {
          v15.n128_f32[0] = *v89 * 0.6;
          *v89++ = v15.n128_f32[0];
          --v88;
        }

        while (v88);
      }

      if (v27 < 1)
      {
        v97 = 0;
      }

      else
      {
        v90 = 0;
        v91 = v131;
        v92 = v135;
        v93 = v136;
        do
        {
          v94 = *v91++;
          v95 = v94;
          v96 = *v92++;
          v16 = v96;
          v15 = vaddq_f32(v95, v96);
          *v93++ = v15;
          v90 += 4;
        }

        while (v90 < v27);
        v97 = v90;
      }

      if (v97 < v82)
      {
        v98 = v82 - v97;
        v99 = &v31[4 * v97];
        v100 = &v137->f32[v97];
        v101 = &v131[4 * v97];
        do
        {
          v102 = *v101++;
          v103 = v102;
          v104 = *v100++;
          *v16.i32 = v104;
          v15.n128_f32[0] = v103 + v104;
          *v99 = v15.n128_u32[0];
          v99 += 4;
          --v98;
        }

        while (v98);
      }

      if (v27 < 1)
      {
        v109 = 0;
      }

      else
      {
        v105 = 0;
        v106 = v136;
        v107 = v23;
        do
        {
          v108 = *v107++;
          v16 = *v106;
          v15 = vaddq_f32(*v106, v108);
          *v106++ = v15;
          v105 += 4;
        }

        while (v105 < v27);
        v109 = v105;
      }

      if (v109 < v82)
      {
        v110 = v82 - v109;
        v111 = &v138[4 * v109];
        v112 = &v31[4 * v109];
        do
        {
          v113 = *v111++;
          *v16.i32 = v113;
          v15.n128_f32[0] = *v112 + v113;
          *v112++ = v15.n128_f32[0];
          --v110;
        }

        while (v110);
      }

      if (a4 >= 1)
      {
        break;
      }

      v26 = v79 + 1;
      if (v26 == 65)
      {
        goto LABEL_88;
      }
    }

    v114 = 0;
    v115 = 0;
    v116 = v79;
    do
    {
      if (a5 >= 1)
      {
        v117 = &v31[4 * v115];
        v115 += a5;
        v118 = &a2[v116];
        v116 += v32;
        v119 = a5;
        do
        {
          v120 = *v117++;
          v15.n128_f32[0] = fminf(v120, 1.0);
          *v118 = v15.n128_f32[0];
          v118 += 65;
          --v119;
        }

        while (v119);
      }

      ++v114;
    }

    while (v114 != a4);
    v26 = v79 + 1;
  }

  while (v26 != 65);
  v121 = 0;
  v122 = 0;
  do
  {
    if (a5 >= 1)
    {
      v123 = 0;
      do
      {
        v124 = 0;
        v125 = &a2[v122 + 1];
        do
        {
          v126 = a2[v122];
          if (v125[v124] < v126)
          {
            v125[v124] = v126;
          }

          ++v122;
          ++v124;
        }

        while ((v124 * 4) != 256);
        ++v122;
        ++v123;
      }

      while (v123 != a5);
    }

    ++v121;
  }

  while (v121 != a4);
LABEL_88:
  *(v127 + 316) = 0;
  v127[635] = 0;
}