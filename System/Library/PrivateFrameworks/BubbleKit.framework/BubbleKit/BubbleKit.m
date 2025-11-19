void *sub_1D45EC730(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 1 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 1;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D45EC784(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *a1;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (qword_1EE08A5B0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE08A5B8;
  v14 = _s20BubblePathNSCacheKeyCMa();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_configuration];
  *v16 = v9;
  *(v16 + 1) = v11;
  *(v16 + 2) = v10;
  v16[24] = v12;
  v17 = &v15[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame];
  *v17 = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v495.receiver = v15;
  v495.super_class = v14;
  v18 = objc_msgSendSuper2(&v495, sel_init);
  v19 = [v13 objectForKey_];
  if (v19)
  {
    v20 = v19;

    v21 = *&v20[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D22BubblePathNSCacheValue_path];

    return v21;
  }

  if (*&v11 >> 62)
  {
    if (*&v11 >> 62 == 1)
    {
      v22 = a5 / 2.33925;
      v23 = a4 * 0.5;
    }

    else
    {
      v23 = a4 * 0.5;
      v22 = a5 * 0.5;
    }

    if (v23 < v22)
    {
      v22 = v23;
    }
  }

  else
  {
    v22 = a4 / 2.31844;
    if (a4 / 2.31844 >= a5 * 0.5)
    {
      v22 = a5 * 0.5;
    }
  }

  v505 = v9;
  if (v22 >= v9)
  {
    v24 = v9;
  }

  else
  {
    v24 = v22;
  }

  v506 = v11;
  v507 = v10;
  v477 = v10;
  LOBYTE(v508) = v12;
  v25 = _s9BubbleKit0A4PathV10tailInsets16forConfiguration02atA4SizeSo06UIEdgeE0VAC0G0V_So6CGSizeVtFZ_0(&v505);
  v29 = v26;
  v30 = v28;
  v31 = &off_1F4FD9C10;
  v476 = v24;
  v484 = v27;
  if (v12)
  {
    v492 = &type metadata for CircularCurveParameters;
    v493 = &off_1F4FD9C10;
    *v491 = v24;
    v489 = &type metadata for CircularCurveParameters;
    *v488 = v24;
  }

  else
  {
    v32 = fmin(((a4 - v26 - v28) * 0.5 / v24 + -1.528665) / -0.528665, 1.0);
    if (v32 < 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32;
    }

    v34 = fmin(((a5 - v27 - v25) * 0.5 / v24 + -1.528665) / -0.528665, 1.0);
    if (v34 < 0.0)
    {
      v34 = 0.0;
    }

    MaxX = v34;
    v492 = &type metadata for BlendedContinuousCurveParameters;
    v493 = &off_1F4FD9B50;
    v35 = swift_allocObject();
    v491[0] = v35;
    *(v35 + 16) = v24;
    *(v35 + 24) = v33;
    *(v35 + 56) = &type metadata for CircularCurveParameters;
    *(v35 + 64) = &off_1F4FD9C10;
    *(v35 + 32) = v24;
    *(v35 + 96) = &type metadata for IdealContinuousCurveParameters;
    *(v35 + 104) = &off_1F4FD9BB0;
    *(v35 + 72) = v24;
    v489 = &type metadata for BlendedContinuousCurveParameters;
    v36 = swift_allocObject();
    v488[0] = v36;
    v37 = MaxX;
    *(v36 + 16) = v24;
    *(v36 + 24) = v37;
    *(v36 + 56) = &type metadata for CircularCurveParameters;
    *(v36 + 64) = &off_1F4FD9C10;
    *(v36 + 32) = v24;
    *(v36 + 96) = &type metadata for IdealContinuousCurveParameters;
    *(v36 + 104) = &off_1F4FD9BB0;
    v31 = &off_1F4FD9B50;
    *(v36 + 72) = v24;
  }

  v490 = v31;
  if (v29 > v30)
  {
    v38 = v29;
  }

  else
  {
    v38 = v30;
  }

  v481 = v38;
  v514.origin.x = a2;
  v514.origin.y = a3;
  v514.size.width = a4;
  v514.size.height = a5;
  MaxX = CGRectGetMaxX(v514);
  v515.origin.x = a2;
  v515.origin.y = a3;
  v478 = a4;
  v479 = a5;
  v515.size.width = a4;
  v515.size.height = a5;
  MaxY = CGRectGetMaxY(v515);
  v39 = v489;
  v40 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v41 = (v40[2])(v39, v40) + a2;
  v42 = v489;
  v43 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v44 = (v43[11])(v42, v43) + a3;
  v45 = v489;
  v46 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v47 = a3;
  v48 = a2;
  v49 = (v46[5])(v45, v46) + a2;
  v50 = v489;
  v51 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v52 = (v51[8])(v50, v51) + v47;
  v53 = v489;
  v54 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v55 = (v54[3])(v53, v54) + v48;
  v56 = v489;
  v57 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v58 = (v57[10])(v56, v57) + v47;
  v59 = v489;
  v60 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v61 = (v60[4])(v59, v60);
  v482 = v48;
  v62 = v61 + v48;
  v63 = v489;
  v64 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v65 = (v64[9])(v63, v64);
  v483 = v47;
  v66 = v65 + v47;
  v67 = sub_1D45EEF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v69 = *(v67 + 2);
  v68 = *(v67 + 3);
  if (v69 >= v68 >> 1)
  {
    v67 = sub_1D45EEF94((v68 > 1), v69 + 1, 1, v67);
  }

  *(v67 + 2) = v69 + 1;
  v70 = &v67[72 * v69];
  *(v70 + 4) = v41;
  *(v70 + 5) = v44;
  *(v70 + 6) = v49;
  *(v70 + 7) = v52;
  *(v70 + 8) = v55;
  *(v70 + 9) = v58;
  *(v70 + 10) = v62;
  *(v70 + 11) = v66;
  v70[96] = 1;
  v71 = v492;
  v72 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v73 = (v72[8])(v71, v72) + v482;
  v74 = v492;
  v75 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v76 = (v75[5])(v74, v75) + v483;
  v77 = v489;
  v78 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v79 = (v78[6])(v77, v78) + v482;
  v80 = v489;
  v81 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v82 = (v81[7])(v80, v81) + v483;
  v83 = v492;
  v84 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v85 = (v84[7])(v83, v84) + v482;
  v86 = v489;
  v87 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v88 = (v87[6])(v86, v87) + v483;
  v90 = *(v67 + 2);
  v89 = *(v67 + 3);
  if (v90 >= v89 >> 1)
  {
    v67 = sub_1D45EEF94((v89 > 1), v90 + 1, 1, v67);
  }

  MaxX = MaxX - v481;
  *(v67 + 2) = v90 + 1;
  v91 = &v67[72 * v90];
  *(v91 + 4) = v49;
  *(v91 + 5) = v52;
  *(v91 + 6) = v73;
  *(v91 + 7) = v76;
  *(v91 + 8) = v79;
  *(v91 + 9) = v82;
  *(v91 + 10) = v85;
  *(v91 + 11) = v88;
  v91[96] = 2;
  v92 = v492;
  v93 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v94 = (v93[11])(v92, v93) + v482;
  v95 = v492;
  v96 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v97 = (v96[2])(v95, v96) + v483;
  v98 = v492;
  v99 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v100 = (v99[9])(v98, v99) + v482;
  v101 = v492;
  v102 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v103 = (v102[4])(v101, v102) + v483;
  v104 = v492;
  v105 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v106 = (v105[10])(v104, v105) + v482;
  v107 = v492;
  v108 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v109 = (v108[3])(v107, v108) + v483;
  v111 = *(v67 + 2);
  v110 = *(v67 + 3);
  if (v111 >= v110 >> 1)
  {
    v67 = sub_1D45EEF94((v110 > 1), v111 + 1, 1, v67);
  }

  *(v67 + 2) = v111 + 1;
  v112 = &v67[72 * v111];
  *(v112 + 4) = v73;
  *(v112 + 5) = v76;
  *(v112 + 6) = v94;
  *(v112 + 7) = v97;
  *(v112 + 8) = v100;
  *(v112 + 9) = v103;
  *(v112 + 10) = v106;
  *(v112 + 11) = v109;
  v112[96] = 3;
  v113 = v492;
  v114 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v115 = MaxX - (v114[11])(v113, v114);
  v116 = v492;
  v117 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v118 = (v117[2])(v116, v117) + v483;
  v119 = *(v112 + 6);
  v120 = *(v112 + 7);
  v121 = v492;
  v122 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v123 = MaxX - (v122[11])(v121, v122);
  v124 = v492;
  v125 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v126 = (v125[2])(v124, v125) + v483;
  v128 = *(v67 + 2);
  v127 = *(v67 + 3);
  if (v128 >= v127 >> 1)
  {
    v67 = sub_1D45EEF94((v127 > 1), v128 + 1, 1, v67);
  }

  *(v67 + 2) = v128 + 1;
  v129 = &v67[72 * v128];
  *(v129 + 4) = v94;
  *(v129 + 5) = v97;
  *(v129 + 6) = v115;
  *(v129 + 7) = v118;
  *(v129 + 8) = v119;
  *(v129 + 9) = v120;
  *(v129 + 10) = v123;
  *(v129 + 11) = v126;
  v129[96] = 4;
  v130 = v492;
  v131 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v132 = MaxX - (v131[8])(v130, v131);
  v133 = v492;
  v134 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v135 = (v134[5])(v133, v134) + v483;
  v136 = v492;
  v137 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v138 = MaxX - (v137[10])(v136, v137);
  v139 = v492;
  v140 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v141 = (v140[3])(v139, v140) + v483;
  v142 = v492;
  v143 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v144 = MaxX - (v143[9])(v142, v143);
  v145 = v492;
  v146 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v147 = (v146[4])(v145, v146) + v483;
  v149 = *(v67 + 2);
  v148 = *(v67 + 3);
  if (v149 >= v148 >> 1)
  {
    v67 = sub_1D45EEF94((v148 > 1), v149 + 1, 1, v67);
  }

  *(v67 + 2) = v149 + 1;
  v150 = &v67[72 * v149];
  *(v150 + 4) = v115;
  *(v150 + 5) = v118;
  *(v150 + 6) = v132;
  *(v150 + 7) = v135;
  *(v150 + 8) = v138;
  *(v150 + 9) = v141;
  *(v150 + 10) = v144;
  *(v150 + 11) = v147;
  v150[96] = 5;
  v151 = v489;
  v152 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v153 = MaxX - (v152[5])(v151, v152);
  v154 = v489;
  v155 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v156 = (v155[8])(v154, v155) + v483;
  v157 = v492;
  v158 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v159 = MaxX - (v158[7])(v157, v158);
  v160 = v492;
  v161 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v162 = (v161[6])(v160, v161) + v483;
  v163 = v492;
  v164 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v165 = MaxX - (v164[6])(v163, v164);
  v166 = v489;
  v167 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v168 = (v167[7])(v166, v167) + v483;
  v170 = *(v67 + 2);
  v169 = *(v67 + 3);
  if (v170 >= v169 >> 1)
  {
    v67 = sub_1D45EEF94((v169 > 1), v170 + 1, 1, v67);
  }

  v484 = MaxY - v484;
  *(v67 + 2) = v170 + 1;
  v171 = &v67[72 * v170];
  *(v171 + 4) = v132;
  *(v171 + 5) = v135;
  *(v171 + 6) = v153;
  *(v171 + 7) = v156;
  *(v171 + 8) = v159;
  *(v171 + 9) = v162;
  *(v171 + 10) = v165;
  *(v171 + 11) = v168;
  v171[96] = 6;
  v172 = v489;
  v173 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v174 = MaxX - (v173[2])(v172, v173);
  v175 = v489;
  v176 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v177 = (v176[11])(v175, v176) + v483;
  v178 = v489;
  v179 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v180 = MaxX - (v179[4])(v178, v179);
  v181 = v489;
  v182 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v183 = (v182[9])(v181, v182) + v483;
  v184 = v489;
  v185 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v186 = MaxX - (v185[3])(v184, v185);
  v187 = v489;
  v188 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v189 = (v188[10])(v187, v188) + v483;
  v191 = *(v67 + 2);
  v190 = *(v67 + 3);
  if (v191 >= v190 >> 1)
  {
    v67 = sub_1D45EEF94((v190 > 1), v191 + 1, 1, v67);
  }

  *(v67 + 2) = v191 + 1;
  v192 = &v67[72 * v191];
  *(v192 + 4) = v153;
  *(v192 + 5) = v156;
  *(v192 + 6) = v174;
  *(v192 + 7) = v177;
  *(v192 + 8) = v180;
  *(v192 + 9) = v183;
  *(v192 + 10) = v186;
  *(v192 + 11) = v189;
  v192[96] = 7;
  v193 = v489;
  v194 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v195 = MaxX - (v194[2])(v193, v194);
  v196 = v489;
  v197 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v198 = v484 - (v197[11])(v196, v197);
  v199 = *(v192 + 6);
  v200 = *(v192 + 7);
  v201 = v489;
  v202 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v203 = MaxX - (v202[2])(v201, v202);
  v204 = v489;
  v205 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v207 = v484 - (v205[11])(v204, v205);
  v209 = *(v67 + 2);
  v208 = *(v67 + 3);
  if (v209 >= v208 >> 1)
  {
    v67 = sub_1D45EEF94((v208 > 1), v209 + 1, 1, v67);
  }

  *(v67 + 2) = v209 + 1;
  v210 = &v67[72 * v209];
  *(v210 + 4) = v174;
  *(v210 + 5) = v177;
  *(v210 + 6) = v195;
  *(v210 + 7) = v198;
  *(v210 + 8) = v199;
  *(v210 + 9) = v200;
  *(v210 + 10) = v203;
  *(v210 + 11) = v207;
  v210[96] = 8;
  v494 = v67;
  v211 = *(v210 + 6);
  v212 = *(v210 + 7);
  if ((*&v11 & 0x8000000000000000) != 0)
  {
    v481 = *(v210 + 6);
    v215 = v489;
    v216 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v217 = MaxX - (v216[5])(v215, v216);
    v218 = v489;
    v219 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v220 = v484 - (v219[8])(v218, v219);
    v221 = v489;
    v222 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v223 = MaxX - (v222[3])(v221, v222);
    v224 = v489;
    v225 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v226 = v484 - (v225[10])(v224, v225);
    v227 = v489;
    v228 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v229 = MaxX - (v228[4])(v227, v228);
    v230 = v489;
    v231 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v232 = v484 - (v231[9])(v230, v231);
    v233 = sub_1D45EEF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v235 = *(v233 + 2);
    v234 = *(v233 + 3);
    if (v235 >= v234 >> 1)
    {
      v233 = sub_1D45EEF94((v234 > 1), v235 + 1, 1, v233);
    }

    *(v233 + 2) = v235 + 1;
    v236 = &v233[72 * v235];
    *(v236 + 4) = v481;
    *(v236 + 5) = v212;
    *(v236 + 6) = v217;
    *(v236 + 7) = v220;
    *(v236 + 8) = v223;
    *(v236 + 9) = v226;
    *(v236 + 10) = v229;
    *(v236 + 11) = v232;
    v236[96] = 9;
    v487 = v233;
    v237 = v492;
    v238 = v493;
    __swift_project_boxed_opaque_existential_1(v491, v492);
    v211 = MaxX - (v238[8])(v237, v238);
    v239 = v492;
    v240 = v493;
    __swift_project_boxed_opaque_existential_1(v491, v492);
    v213 = v484;
    v241 = v484 - (v240[5])(v239, v240);
    v242 = v492;
    v243 = v493;
    __swift_project_boxed_opaque_existential_1(v491, v492);
    v244 = MaxX - (v243[6])(v242, v243);
    v245 = v489;
    v246 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v247 = v484 - (v246[7])(v245, v246);
    v248 = v492;
    v249 = v493;
    __swift_project_boxed_opaque_existential_1(v491, v492);
    v212 = MaxX - (v249[7])(v248, v249);
    v250 = v489;
    v251 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v252 = (v251[6])(v250, v251);
    v505 = v217;
    v506 = v220;
    v507 = v211;
    v508 = v241;
    v509 = v244;
    v510 = v247;
    v511 = v212;
    v512 = v484 - v252;
    v513 = 12;
    v253 = sub_1D45EF384(&unk_1F4FD8108);

    sub_1D45EFB68(v254);
    v255 = v487;
    v256 = *(v487 + 2);

    if (v256)
    {
      v258 = *(v487 + 2);
      if (v256 <= v258)
      {
        v259 = &v487[72 * v256];
        v211 = *(v259 - 3);
        v260 = *(v259 - 2);
        v261 = v492;
        v262 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v195 = MaxX - (v262[11])(v261, v262);
        v263 = v492;
        v264 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v213 = v484;
        v198 = v484 - (v264[2])(v263, v264);
        v265 = v492;
        v266 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v199 = MaxX - (v266[9])(v265, v266);
        v267 = v492;
        v268 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v212 = v484 - (v268[4])(v267, v268);
        v269 = v492;
        v270 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v200 = MaxX - (v270[10])(v269, v270);
        v271 = v492;
        v272 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v273 = (v272[3])(v271, v272);
        v496 = v211;
        v497 = v260;
        v498 = v195;
        v499 = v198;
        v500 = v199;
        v501 = v212;
        v502 = v200;
        v503 = v484 - v273;
        v504 = 15;
        v274 = &unk_1F4FD8130;
LABEL_57:
        v326 = sub_1D45EF384(v274);
        sub_1D45EFB68(v326);
        v214 = v487;
        goto LABEL_58;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_82:
    v257 = sub_1D45EEF94((v258 > 1), v255, 1, v257);
    goto LABEL_54;
  }

  v213 = v477;
  if (v477 == 1.0)
  {
    v505 = v11;
    v506 = v477;
    v206.f64[0] = v476;
    v214 = sub_1D4604600(&v505, v491, v488, v211, v212, v206, v481, MaxX, v484, v482, v483, v478, v479);
    goto LABEL_58;
  }

  v206.f64[0] = v476;
  if (v477 != 0.0)
  {
    v505 = v11;
    v506 = v477;
    v308 = sub_1D4604600(&v505, v491, v488, v211, v212, v206, v481, MaxX, v484, v482, v483, v478, v479);
    v424 = v489;
    v425 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v220 = MaxX - (v425[5])(v424, v425);
    v426 = v489;
    v427 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v481 = v484 - (v427[8])(v426, v427);
    v428 = v489;
    v429 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v292 = MaxX - (v429[3])(v428, v429);
    v430 = v489;
    v431 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v298 = v484 - (v431[10])(v430, v431);
    v432 = v489;
    v433 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v301 = MaxX - (v433[4])(v432, v433);
    v434 = v489;
    v435 = v490;
    __swift_project_boxed_opaque_existential_1(v488, v489);
    v295 = v484 - (v435[9])(v434, v435);
    v309 = sub_1D45EEF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v305 = *(v309 + 2);
    v310 = *(v309 + 3);
    v307 = v305 + 1;
    if (v305 < v310 >> 1)
    {
      goto LABEL_75;
    }

    goto LABEL_85;
  }

  v275 = v489;
  v276 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v213 = MaxX - (v276[5])(v275, v276);
  v277 = v489;
  v278 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v220 = v484 - (v278[8])(v277, v278);
  v279 = v489;
  v280 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v241 = MaxX - (v280[3])(v279, v280);
  v281 = v489;
  v282 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v244 = v484 - (v282[10])(v281, v282);
  v283 = v489;
  v284 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v247 = MaxX - (v284[4])(v283, v284);
  v285 = v489;
  v286 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v217 = v484 - (v286[9])(v285, v286);
  v257 = sub_1D45EEF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v253 = *(v257 + 2);
  v258 = *(v257 + 3);
  v255 = v253 + 1;
  if (v253 >= v258 >> 1)
  {
    goto LABEL_82;
  }

LABEL_54:
  *(v257 + 2) = v255;
  v287 = &v257[72 * v253];
  *(v287 + 4) = v211;
  *(v287 + 5) = v212;
  *(v287 + 6) = v213;
  *(v287 + 7) = v220;
  *(v287 + 8) = v241;
  *(v287 + 9) = v244;
  *(v287 + 10) = v247;
  *(v287 + 11) = v217;
  v287[96] = 9;
  v487 = v257;
  v288 = v492;
  v289 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v211 = MaxX - (v289[8])(v288, v289);
  v290 = v492;
  v291 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v212 = v484;
  v292 = v484 - (v291[5])(v290, v291);
  v293 = v492;
  v294 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v295 = MaxX - (v294[6])(v293, v294);
  v296 = v489;
  v297 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v298 = v484 - (v297[7])(v296, v297);
  v299 = v492;
  v300 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v301 = MaxX - (v300[7])(v299, v300);
  v302 = v489;
  v303 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v304 = (v303[6])(v302, v303);
  v505 = v213;
  v506 = v220;
  v507 = v211;
  v508 = v292;
  v509 = v295;
  v510 = v298;
  v511 = v301;
  v512 = v484 - v304;
  v513 = 12;
  v305 = sub_1D45EF384(&unk_1F4FD8068);

  sub_1D45EFB68(v306);
  v307 = v487;
  v308 = *(v487 + 2);

  if (v308)
  {
    v310 = *(v487 + 2);
    if (v308 <= v310)
    {
      v311 = &v487[72 * v308];
      v211 = *(v311 - 3);
      v312 = *(v311 - 2);
      v313 = v492;
      v314 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v195 = MaxX - (v314[11])(v313, v314);
      v315 = v492;
      v316 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v213 = v484;
      v198 = v484 - (v316[2])(v315, v316);
      v317 = v492;
      v318 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v199 = MaxX - (v318[9])(v317, v318);
      v319 = v492;
      v320 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v212 = v484 - (v320[4])(v319, v320);
      v321 = v492;
      v322 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v200 = MaxX - (v322[10])(v321, v322);
      v323 = v492;
      v324 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v325 = (v324[3])(v323, v324);
      v496 = v211;
      v497 = v312;
      v498 = v195;
      v499 = v198;
      v500 = v199;
      v501 = v212;
      v502 = v200;
      v503 = v484 - v325;
      v504 = 15;
      v274 = &unk_1F4FD8090;
      goto LABEL_57;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_85:
  v309 = sub_1D45EEF94((v310 > 1), v307, 1, v309);
LABEL_75:
  *(v309 + 2) = v307;
  v436 = &v309[72 * v305];
  *(v436 + 4) = v211;
  *(v436 + 5) = v212;
  v437 = v481;
  *(v436 + 6) = v220;
  *(v436 + 7) = v437;
  *(v436 + 8) = v292;
  *(v436 + 9) = v298;
  *(v436 + 10) = v301;
  *(v436 + 11) = v295;
  v436[96] = 9;
  v487 = v309;
  v438 = v492;
  v439 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  MaxY = MaxX - (v439[8])(v438, v439);
  v440 = v492;
  v441 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v442 = v484 - (v441[5])(v440, v441);
  v443 = v492;
  v444 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v445 = MaxX - (v444[6])(v443, v444);
  v446 = v489;
  v447 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v448 = v484 - (v447[7])(v446, v447);
  v449 = v492;
  v450 = v493;
  __swift_project_boxed_opaque_existential_1(v491, v492);
  v451 = MaxX - (v450[7])(v449, v450);
  v452 = v489;
  v453 = v490;
  __swift_project_boxed_opaque_existential_1(v488, v489);
  v454 = (v453[6])(v452, v453);
  v505 = v220;
  v506 = v437;
  v507 = MaxY;
  v508 = v442;
  v509 = v445;
  v510 = v448;
  v511 = v451;
  v512 = v484 - v454;
  v513 = 12;
  sub_1D45EF384(&unk_1F4FD80B8);

  sub_1D45EFB68(v455);
  v456 = *(v487 + 2);

  if (v456)
  {
    v481 = v213;
    if (v456 <= *(v487 + 2))
    {
      v457 = &v487[72 * v456];
      v211 = *(v457 - 3);
      v458 = *(v457 - 2);
      v459 = v492;
      v460 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v195 = MaxX - (v460[11])(v459, v460);
      v461 = v492;
      v462 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v213 = v484;
      v198 = v484 - (v462[2])(v461, v462);
      v463 = v492;
      v464 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v199 = MaxX - (v464[9])(v463, v464);
      v465 = v492;
      v466 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v212 = v484 - (v466[4])(v465, v466);
      v467 = v492;
      v468 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v200 = MaxX - (v468[10])(v467, v468);
      v469 = v492;
      v470 = v493;
      __swift_project_boxed_opaque_existential_1(v491, v492);
      v471 = (v470[3])(v469, v470);
      v496 = v211;
      v497 = v458;
      v498 = v195;
      v499 = v198;
      v500 = v199;
      v501 = v212;
      v502 = v200;
      v503 = v484 - v471;
      v504 = 15;
      v472 = sub_1D45EF384(&unk_1F4FD80E0);
      v473 = sub_1D45EFB68(v472);
      v475[2] = MEMORY[0x1EEE9AC00](v473, 1.0 - v481);
      v474 = sub_1D46056B0(v308, v487, sub_1D4605ACC, v475);

      v214 = v474;
LABEL_58:
      sub_1D45EFB68(v214);
      v21 = v494;
      v327 = *(v494 + 2);
      if (v327)
      {
        v328 = &v494[72 * v327];
        v198 = *(v328 - 2);
        MaxX = *(v328 - 3);
        v329 = v492;
        v330 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v211 = (v330[11])(v329, v330);
        v331 = v492;
        v332 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v212 = (v332[2])(v331, v332);
        v199 = *(v328 - 3);
        v195 = *(v328 - 2);
        v333 = v492;
        v334 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v200 = (v334[11])(v333, v334);
        v335 = v492;
        v336 = v493;
        __swift_project_boxed_opaque_existential_1(v491, v492);
        v213 = (v336[2])(v335, v336);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_60:
          v337 = v211 + v482;
          v338 = v484 - v212;
          v339 = v200 + v482;
          v340 = v484 - v213;
          v342 = *(v21 + 2);
          v341 = *(v21 + 3);
          if (v342 >= v341 >> 1)
          {
            v21 = sub_1D45EEF94((v341 > 1), v342 + 1, 1, v21);
          }

          *(v21 + 2) = v342 + 1;
          v343 = &v21[72 * v342];
          *(v343 + 4) = MaxX;
          *(v343 + 5) = v198;
          *(v343 + 6) = v337;
          *(v343 + 7) = v338;
          *(v343 + 8) = v199;
          *(v343 + 9) = v195;
          *(v343 + 10) = v339;
          *(v343 + 11) = v340;
          v343[96] = 16;
          v344 = v492;
          v345 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v346 = (v345[8])(v344, v345);
          v347 = v482;
          v348 = v346 + v482;
          v349 = v492;
          v350 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v351 = (v350[5])(v349, v350);
          v352 = v484;
          v353 = v484 - v351;
          v354 = v492;
          v355 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v356 = (v355[10])(v354, v355) + v347;
          v357 = v492;
          v358 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v359 = v352 - (v358[3])(v357, v358);
          v360 = v492;
          v361 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v362 = (v361[9])(v360, v361) + v347;
          v363 = v492;
          v364 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v365 = v352 - (v364[4])(v363, v364);
          v367 = *(v21 + 2);
          v366 = *(v21 + 3);
          if (v367 >= v366 >> 1)
          {
            v21 = sub_1D45EEF94((v366 > 1), v367 + 1, 1, v21);
          }

          *(v21 + 2) = v367 + 1;
          v368 = &v21[72 * v367];
          *(v368 + 4) = v337;
          *(v368 + 5) = v338;
          *(v368 + 6) = v348;
          *(v368 + 7) = v353;
          *(v368 + 8) = v356;
          *(v368 + 9) = v359;
          *(v368 + 10) = v362;
          *(v368 + 11) = v365;
          v368[96] = 17;
          v369 = v489;
          v370 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v371 = (v370[5])(v369, v370);
          v372 = v482;
          v373 = v371 + v482;
          v374 = v489;
          v375 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v376 = (v375[8])(v374, v375);
          v377 = v484;
          v378 = v484 - v376;
          v379 = v492;
          v380 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v381 = (v380[7])(v379, v380) + v372;
          v382 = v492;
          v383 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v384 = v377 - (v383[6])(v382, v383);
          v385 = v492;
          v386 = v493;
          __swift_project_boxed_opaque_existential_1(v491, v492);
          v387 = (v386[6])(v385, v386) + v372;
          v388 = v489;
          v389 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v390 = v377 - (v389[7])(v388, v389);
          v392 = *(v21 + 2);
          v391 = *(v21 + 3);
          if (v392 >= v391 >> 1)
          {
            v21 = sub_1D45EEF94((v391 > 1), v392 + 1, 1, v21);
          }

          *(v21 + 2) = v392 + 1;
          v393 = &v21[72 * v392];
          *(v393 + 4) = v348;
          *(v393 + 5) = v353;
          *(v393 + 6) = v373;
          *(v393 + 7) = v378;
          *(v393 + 8) = v381;
          *(v393 + 9) = v384;
          *(v393 + 10) = v387;
          *(v393 + 11) = v390;
          v393[96] = 18;
          v394 = v489;
          v395 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v396 = (v395[2])(v394, v395);
          v397 = v482;
          v398 = v396 + v482;
          v399 = v489;
          v400 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v401 = (v400[11])(v399, v400);
          v402 = v484;
          v403 = v484 - v401;
          v404 = v489;
          v405 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v406 = (v405[4])(v404, v405) + v397;
          v407 = v489;
          v408 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v409 = v402 - (v408[9])(v407, v408);
          v410 = v489;
          v411 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v412 = (v411[3])(v410, v411) + v397;
          v413 = v489;
          v414 = v490;
          __swift_project_boxed_opaque_existential_1(v488, v489);
          v415 = v402 - (v414[10])(v413, v414);
          v417 = *(v21 + 2);
          v416 = *(v21 + 3);
          if (v417 >= v416 >> 1)
          {
            v21 = sub_1D45EEF94((v416 > 1), v417 + 1, 1, v21);
          }

          *(v21 + 2) = v417 + 1;
          v418 = &v21[72 * v417];
          *(v418 + 4) = v373;
          *(v418 + 5) = v378;
          *(v418 + 6) = v398;
          *(v418 + 7) = v403;
          *(v418 + 8) = v406;
          *(v418 + 9) = v409;
          *(v418 + 10) = v412;
          *(v418 + 11) = v415;
          v418[96] = 19;
          if (*&v11 & 0x8000000000000000) != 0 || (LOBYTE(v11))
          {
          }

          else
          {
            v419 = sub_1D45EFE94(v21, v482, v483, v478, v479);

            v21 = v419;
          }

          v420 = _s22BubblePathNSCacheValueCMa();
          v421 = objc_allocWithZone(v420);
          *&v421[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D22BubblePathNSCacheValue_path] = v21;
          v486.receiver = v421;
          v486.super_class = v420;
          v422 = objc_msgSendSuper2(&v486, sel_init);
          [v13 setObject:v422 forKey:v18];

          __swift_destroy_boxed_opaque_existential_1(v488);
          __swift_destroy_boxed_opaque_existential_1(v491);
          return v21;
        }
      }

      else
      {
        __break(1u);
      }

      v21 = sub_1D45EEF94(0, *(v21 + 2) + 1, 1, v21);
      goto LABEL_60;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D45EEDF0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t BubblePath.init(frame:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 24);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v13 = v10;
  result = sub_1D45EC784(v12, a3, a4, a5, a6);
  *(a2 + 64) = result;
  return result;
}

double _s9BubbleKit0A4PathV10tailInsets16forConfiguration02atA4SizeSo06UIEdgeE0VAC0G0V_So6CGSizeVtFZ_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    return 0.0;
  }

  return *MEMORY[0x1E69DDCE0];
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_1D45EEF94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 72 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1D45EF0C0(double a1, double a2, double a3)
{
  v6 = sub_1D45EF6CC(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B70);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * (v10 >> 3);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v8 + 3);

  if (v7 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v13 = v8 + 4;
  v14 = v11 >> 1;
  v15 = 0;
  v16 = 0;
  if (v7)
  {
    v14 -= v7;
    i = a1;
    while (1)
    {
      v18 = i;
      v19 = i <= a2;
      if (a3 > 0.0)
      {
        v19 = i >= a2;
      }

      if (v19)
      {
        if (v15 & 1 | (i != a2))
        {
          goto LABEL_50;
        }

        v15 = 1;
      }

      else
      {
        v20 = __OFADD__(v16++, 1);
        if (v20)
        {
          goto LABEL_51;
        }

        i = a1 + v16 * a3;
      }

      *v13++ = v18;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }
  }

  for (i = a1; ; i = v22)
  {
LABEL_21:
    v21 = i <= a2;
    if (a3 > 0.0)
    {
      v21 = i >= a2;
    }

    if (!v21)
    {
      v20 = __OFADD__(v16++, 1);
      if (v20)
      {
        goto LABEL_48;
      }

      v22 = a1 + v16 * a3;
      if (v14)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if ((i != a2) | v15 & 1)
    {
      break;
    }

    v15 = 1;
    v22 = i;
    if (v14)
    {
      v22 = i;
      goto LABEL_41;
    }

LABEL_29:
    v23 = *(v8 + 3);
    if (((v23 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B70);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size(v26);
    v28 = v27 - 32;
    if (v27 < 32)
    {
      v28 = v27 - 25;
    }

    v29 = v28 >> 3;
    *(v26 + 2) = v25;
    *(v26 + 3) = 2 * (v28 >> 3);
    v30 = (v26 + 4);
    v31 = *(v8 + 3) >> 1;
    if (*(v8 + 2))
    {
      v32 = v8 + 4;
      if (v26 != v8 || v30 >= v32 + 8 * v31)
      {
        memmove(v26 + 4, v32, 8 * v31);
      }

      v8[2] = 0.0;
    }

    v13 = (v30 + 8 * v31);
    v14 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

    v8 = v26;
LABEL_41:
    v20 = __OFSUB__(v14--, 1);
    if (v20)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *v13++ = i;
  }

  v33 = *(v8 + 3);
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v20 = __OFSUB__(v34, v14);
    v35 = v34 - v14;
    if (v20)
    {
      goto LABEL_53;
    }

    *(v8 + 2) = v35;
  }

  return v8;
}

uint64_t sub_1D45EF384(uint64_t a1)
{
  v4 = *(a1 + 16);
  if (v4 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B68);
    result = swift_allocObject();
    v22 = *(v1 + 32);
    v23 = *(v1 + 48);
    v24 = *v1;
    *(result + 48) = *(v1 + 16);
    *(result + 64) = v22;
    *(result + 80) = v23;
    *(result + 96) = *(v1 + 64);
    *(result + 16) = xmmword_1D4607CF0;
    *(result + 32) = v24;
    return result;
  }

  v5 = 1.0 / v4;
  if (v5 == 0.0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v3 = 1.0;
  v2 = sub_1D45EF0C0(0.0, 1.0, v5);
  v1 = *(v2 + 16);
  if (v1 == v4 + 1)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v1 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1D45FB868((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 16) = v1;
    *(v2 + 8 * v7 + 32) = 0x3FF0000000000000;
LABEL_8:
    if (*(v2 + 8 * v1 + 24) != v3)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = *(v2 + 16);
        if (v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v2 = sub_1D45F4270(v2);
        v8 = *(v2 + 16);
        if (v8)
        {
LABEL_11:
          *(v2 + 16) = v8 - 1;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_12:
            v10 = *(v2 + 16);
            v9 = *(v2 + 24);
            if (v10 >= v9 >> 1)
            {
              v2 = sub_1D45FB868((v9 > 1), v10 + 1, 1, v2);
            }

            *(v2 + 16) = v10 + 1;
            *(v2 + 8 * v10 + 32) = 0x3FF0000000000000;
            goto LABEL_15;
          }

LABEL_32:
          v2 = sub_1D45FB868(0, *(v2 + 16) + 1, 1, v2);
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:
    sub_1D4606C20();
    sub_1D4606BE0();
    v1 = &v25;
    sub_1D4606C10();
    v11 = *(v2 + 16);
    if (v11)
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v2 = sub_1D45FB868(0, v1 + 1, 1, v2);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v13 = v11 - 1;
  if (v11 == 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v14 = v2 + 40;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D4606BC0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D45EF740(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1D45EF740((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[40 * v17];
      v19 = v28;
      v20 = v29;
      v18[64] = v30;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  sub_1D45EF85C(v15);

  sub_1D45EFB50(v25, *(&v25 + 1), v26, *(&v26 + 1), v27);

  return v12;
}

uint64_t sub_1D45EF6CC(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

char *sub_1D45EF740(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D45EF85C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    do
    {
      v3 = *(v2 + 16);
      v5 = *v2;
      v6 = v3;
      v7 = *(v2 + 32);
      MEMORY[0x1EEE9AC00]();
      v8[0] = v5;
      v8[1] = v6;
      v9 = v7;
      sub_1D45EF950(v8, v4);
      sub_1D4606C00();
      result = sub_1D45EFAFC(&v5);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1D45EF9B8(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (*(result + 48) == 3)
  {
    v19 = *(result + 16);
    v20 = *result;
    v18 = *(result + 32);
    v5 = *a2;
    v6 = *(*a2 + 16);
    v7 = *a2 + 72 * v6;
    v8 = (v7 - 24);
    v9 = (v7 - 16);
    if (!v6)
    {
      v8 = a3;
      v9 = a3 + 1;
    }

    v10 = *v9;
    v11 = *v8;
    v12 = *(a4 + 16);
    if (v6 >= v12)
    {
      if (!v12)
      {
        __break(1u);
        return result;
      }

      v13 = 31;
    }

    else
    {
      v13 = 32;
      v12 = *(*a2 + 16);
    }

    v14 = *(a4 + v13 + v12);
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v5;
    if ((result & 1) == 0)
    {
      result = sub_1D45EEF94(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
      *a2 = result;
    }

    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1D45EEF94((v15 > 1), v16 + 1, 1, v5);
      v5 = result;
      *a2 = result;
    }

    *(v5 + 16) = v16 + 1;
    v17 = v5 + 72 * v16;
    *(v17 + 32) = v11;
    *(v17 + 40) = v10;
    *(v17 + 48) = v20;
    *(v17 + 64) = v19;
    *(v17 + 80) = v18;
    *(v17 + 96) = v14;
  }

  return result;
}

uint64_t sub_1D45EFB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1D45EFB68(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D45EEF94(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 72 * v7 + 32), (v6 + 32), 72 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D45EFCA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D45EFD00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

char *sub_1D45EFD7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 72 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1D45EFE94(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D45F00C0(0, v5, 0);
    v6 = v34;
    v12 = a1 + 48;
    do
    {
      v28 = *v12;
      v29 = *(v12 - 16);
      v30 = *(v12 + 8);
      v31 = *(v12 - 8);
      v26 = *(v12 + 32);
      v27 = *(v12 + 16);
      v32 = *(v12 + 40);
      v33 = *(v12 + 24);
      v13 = *(v12 + 48);
      v35.origin.x = a2;
      v35.origin.y = a3;
      v35.size.width = a4;
      v35.size.height = a5;
      MaxX = CGRectGetMaxX(v35);
      v36.origin.x = a2;
      v36.origin.y = a3;
      v36.size.width = a4;
      v36.size.height = a5;
      MinX = CGRectGetMinX(v36);
      v37.origin.x = a2;
      v37.origin.y = a3;
      v37.size.width = a4;
      v37.size.height = a5;
      v23 = CGRectGetMaxX(v37);
      v38.origin.x = a2;
      v38.origin.y = a3;
      v38.size.width = a4;
      v38.size.height = a5;
      v22 = CGRectGetMinX(v38);
      v39.origin.x = a2;
      v39.origin.y = a3;
      v39.size.width = a4;
      v39.size.height = a5;
      v14 = CGRectGetMaxX(v39);
      v40.origin.x = a2;
      v40.origin.y = a3;
      v40.size.width = a4;
      v40.size.height = a5;
      v15 = CGRectGetMinX(v40);
      v41.origin.x = a2;
      v41.origin.y = a3;
      v41.size.width = a4;
      v41.size.height = a5;
      v16 = CGRectGetMaxX(v41);
      v42.origin.x = a2;
      v42.origin.y = a3;
      v42.size.width = a4;
      v42.size.height = a5;
      v17 = CGRectGetMinX(v42);
      v19 = *(v34 + 16);
      v18 = *(v34 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D45F00C0((v18 > 1), v19 + 1, 1);
      }

      *(v34 + 16) = v19 + 1;
      v20 = v34 + 72 * v19;
      *(v20 + 32) = MinX + MaxX - v29;
      *(v20 + 40) = v31;
      *(v20 + 48) = v22 + v23 - v28;
      *(v20 + 56) = v30;
      v12 += 72;
      *(v20 + 64) = v15 + v14 - v27;
      *(v20 + 72) = v33;
      *(v20 + 80) = v17 + v16 - v26;
      *(v20 + 88) = v32;
      *(v20 + 96) = v13;
      --v5;
    }

    while (v5);
  }

  return v6;
}

char *sub_1D45F00C0(char *a1, int64_t a2, char a3)
{
  result = sub_1D45EFD7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D45F00E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D45F0104(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BubbleKit0A17ViewConfigurationV6StrokeVSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D45F0148()
{
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 193, 7);
}

uint64_t sub_1D45F01A0()
{
  type metadata accessor for BubbleView();
  sub_1D46069A0();
  sub_1D45F6AEC(&qword_1EC7D3B90, type metadata accessor for BubbleView);
  return swift_getWitnessTable();
}

uint64_t sub_1D45F023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BubbleViewConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D45F0308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BubbleViewConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_1D45F03E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4606A50();
  *a1 = result;
  return result;
}

uint64_t sub_1D45F0464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = _s13ContextSourceOMa(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D45F04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = _s13ContextSourceOMa(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D45F0558()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D45F0590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) >> 1) > 0x80000000)
    {
      return -(*(a1 + 8) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1D4606990();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 28);

    return v8(v9, a2, v7);
  }
}

uint64_t sub_1D45F063C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = 2 * -a2;
    *(result + 16) = 0;
  }

  else
  {
    v7 = sub_1D4606990();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t *sub_1D45F06E4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1] >> 62;
  v4 = 0;
  if (v3 == 1)
  {
    v4 = result[2];
  }

  if (!v3)
  {
    v4 = result[2];
  }

  *a2 = v4;
  a2[1] = v2;
  return result;
}

uint64_t *sub_1D45F0710(uint64_t *result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = a2[1];
  if (!(v4 >> 62))
  {
    v5 = a2[1] & 1;
    goto LABEL_5;
  }

  if (v4 >> 62 == 1)
  {
    v5 = a2[1] & 1 | 0x4000000000000000;
LABEL_5:
    a2[1] = v5;
    a2[2] = v3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D45F07AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BubbleViewConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E38);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D45F08C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BubbleViewConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E38);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D45F09E0()
{
  sub_1D46069A0();
  sub_1D4600534();
  return swift_getWitnessTable();
}

uint64_t sub_1D45F0A44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D45F0AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BubbleViewConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D45F0BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BubbleViewConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = a2;
  }

  return result;
}

double sub_1D45F0CAC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D45F0CB8()
{
  v1 = *(type metadata accessor for BubbleBackgroundGradientPositionTracker() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 32);
    if (*(v5 + 96))
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    }
  }

  if (*(v5 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 128);
  }

  v6 = *(type metadata accessor for BubbleViewConfiguration() + 28);
  v7 = sub_1D4606990();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D45F0E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BubbleViewConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E38);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D45F0F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BubbleViewConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E38);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D45F1034()
{
  v1 = type metadata accessor for BubbleBackground();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 32);
    if (*(v5 + 96))
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    }
  }

  if (*(v5 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 128);
  }

  v6 = *(type metadata accessor for BubbleViewConfiguration() + 28);
  v7 = sub_1D4606990();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D4606BB0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  j__swift_release();
  v10 = v5 + v1[7];
  sub_1D46032CC(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 33));
  v11 = v5 + v1[8];
  sub_1D46032D8(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D45F121C()
{
  v1 = type metadata accessor for BubbleBackground();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(*(v1 - 1) + 64) + v3;
  v5 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 32);
    if (*(v5 + 96))
    {
      __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    }
  }

  v6 = v4 + 7;
  if (*(v5 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 128);
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for BubbleViewConfiguration() + 28);
  v9 = sub_1D4606990();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D4606BB0();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  j__swift_release();
  v12 = v5 + v1[7];
  sub_1D46032CC(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 33));
  v13 = v5 + v1[8];
  sub_1D46032D8(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  if (*(v0 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 49, v2 | 7);
}

uint64_t sub_1D45F1430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BubbleViewConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E38);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D45F1548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for BubbleViewConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E38);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t BubbleMaterial.UserInterfaceStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D4606FC0();
  MEMORY[0x1DA6DB760](v1);
  return sub_1D4607010();
}

uint64_t _s9BubbleKit0A4PathV11CornerStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D4606FC0();
  MEMORY[0x1DA6DB760](v1);
  return sub_1D4607010();
}

uint64_t sub_1D45F17B4()
{
  v1 = *v0;
  sub_1D4606FC0();
  MEMORY[0x1DA6DB760](v1);
  return sub_1D4607010();
}

uint64_t BubbleMaterial.UserInterfaceStyle.uiUserInterfaceStyle.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1D45F1820()
{
  result = qword_1EC7D3A80;
  if (!qword_1EC7D3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3A80);
  }

  return result;
}

uint64_t _s18UserInterfaceStyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18UserInterfaceStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy80_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D45F19E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D45F1A04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D45F1A64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D45F1A84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D45F1B7C()
{
  sub_1D4606FC0();
  swift_getWitnessTable();
  sub_1D4606860();
  return sub_1D4607010();
}

uint64_t sub_1D45F1BE4()
{
  swift_getWitnessTable();

  return sub_1D4606850();
}

uint64_t sub_1D45F1CB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D45F1D24(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 BubblePath.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  result = *(v1 + 40);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

double BubblePath.path()@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1D4606C20();
    sub_1D4606BE0();
    v5 = v3 + 88;
    do
    {
      sub_1D4606C10();
      v5 += 72;
      --v4;
    }

    while (v4);
    sub_1D4606BD0();
  }

  else
  {
    sub_1D4606C20();
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

CGPathRef __swiftcall BubblePath.cgPath()()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  Mutable = CGPathCreateMutable();
  if (!v2)
  {
    return Mutable;
  }

  sub_1D4606F20();
  v4 = v1 + 88;
  do
  {
    sub_1D4606F30();
    v4 += 72;
    --v2;
  }

  while (v2);
  CGPathCloseSubpath(Mutable);
  result = MEMORY[0x1DA6DB8C0](Mutable);
  if (result)
  {
    v6 = result;

    return v6;
  }

  __break(1u);
  return result;
}

UIBezierPath __swiftcall BubblePath.bezierPath()()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v4 = v3;
  if (v2)
  {
    [v3 moveToPoint_];
    v5 = (v1 + 88);
    do
    {
      [v4 addCurveToPoint:*(v5 - 5) controlPoint1:*(v5 - 4) controlPoint2:{*(v5 - 3), *(v5 - 2), *(v5 - 1), *v5}];
      v5 += 9;
      --v2;
    }

    while (v2);
    [v4 closePath];
  }

  return v4;
}

double BubblePath.controlPointPath()@<D0>(uint64_t a1@<X8>)
{
  sub_1D45F4E74(*(v1 + 64), v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double BubblePath.tailInsets.getter()
{
  v1 = *(v0 + 40) >> 62;
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    return 0.0;
  }

  return *MEMORY[0x1E69DDCE0];
}

double static BubblePath.tailInsets(forConfiguration:correctedCornerRadius:)(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    return 0.0;
  }

  return *MEMORY[0x1E69DDCE0];
}

double static BubblePath.tailInsets(forConfiguration:atPillSize:)(uint64_t a1)
{
  if ((*(a1 + 8) & 0x8000000000000000) != 0)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  else
  {
    return 0.0;
  }
}

double sub_1D45F2190()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40) >> 62;
  v3 = 0.0;
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = sub_1D45F46C8(0xCu, *(v0 + 64));
      v5 = sub_1D45F46C8(0xDu, v1);
      v6 = *(v4 + 2);
      v7 = 0.0;
      if (v6)
      {
        v8 = v4 + 32;
        do
        {
          sub_1D45FBC6C(10);
          v3 = v3 + v9;
          v8 += 72;
          --v6;
        }

        while (v6);
      }

      v10 = *(v5 + 2);
      if (v10)
      {
        v11 = v5 + 32;
        v7 = 0.0;
        do
        {
          sub_1D45FBC6C(10);
          v7 = v7 + v12;
          v11 += 72;
          --v10;
        }

        while (v10);
      }

      return v3 + (v7 - v3) * 0.5;
    }
  }

  else
  {
    v13 = *(sub_1D45F46C8(0xBu, *(v0 + 64)) + 2);
    if (v13)
    {
      v14 = 32;
      do
      {
        sub_1D45FBC6C(10);
        v3 = v3 + v15;
        v14 += 72;
        --v13;
      }

      while (v13);
    }
  }

  return v3;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D45F2338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D45F2388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = 2 * -a2;
      *(result + 48) = 0;
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BubblePath.PointIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BubblePath.PointIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D45F2548()
{
  result = qword_1EC7D3AC0;
  if (!qword_1EC7D3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3AC0);
  }

  return result;
}

unint64_t sub_1D45F25A0()
{
  result = qword_1EC7D3AC8;
  if (!qword_1EC7D3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3AC8);
  }

  return result;
}

id BubbleMaterialFilter.caFilter.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 80);
  if (v3 > 1)
  {
    v9 = v0[4];
    v10 = v0[5];
    v12 = v0[6];
    v11 = v0[7];
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[10];
    v22 = *(v0 + 11);
    v24 = *(v0 + 13);
    v28 = *(v0 + 8);
    v16 = *(v0 + 1);
    v17 = v0[18];
    LODWORD(v26) = v0[15];
    HIDWORD(v26) = v0[19];
    if (v3 == 2)
    {
      v18 = MEMORY[0x1E6979880];
    }

    else
    {
      v18 = MEMORY[0x1E6979D78];
    }

    v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v29[0] = v2;
    v29[1] = v1;
    v30 = v16;
    v31 = v9;
    v32 = v10;
    v33 = v12;
    v34 = v11;
    v35 = v14;
    v36 = v13;
    v37 = v15;
    v38 = v22;
    v39 = v24;
    v40 = v26;
    v41 = v28;
    v42 = v17;
    v43 = HIDWORD(v26);
    v7 = [objc_opt_self() valueWithCAColorMatrix_];
    [v4 setValue:v7 forKey:{*MEMORY[0x1E6979AC0], v22, v24, v26, v28}];
  }

  else
  {
    if (*(v0 + 80))
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
      v19 = sub_1D4606EE0();
      [v4 setValue:v19 forKey:*MEMORY[0x1E6979C28]];

      v7 = sub_1D4606840();
      v8 = MEMORY[0x1E6979990];
    }

    else
    {
      v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
      v5 = sub_1D4606840();
      [v4 setValue:v5 forKey:*MEMORY[0x1E6979BA8]];

      v6 = sub_1D4606EF0();
      [v4 setValue:v6 forKey:*MEMORY[0x1E6979B78]];

      v7 = sub_1D4606ED0();
      v8 = MEMORY[0x1E6979BA0];
    }

    [v4 setValue:v7 forKey:{*v8, v21, v23, v25, v27}];
  }

  return v4;
}

uint64_t BubbleMaterialFilter.swiftUIFilter.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 80) > 1u)
  {
    if (*(v0 + 80) == 2)
    {
      sub_1D45F6B38(v6);
      return sub_1D4606DF0();
    }

    else
    {
      v6[0] = *v0;
      v6[1] = v1;
      v4 = *(v0 + 32);
      v7 = *(v0 + 16);
      v8 = v4;
      v5 = *(v0 + 64);
      v9 = *(v0 + 48);
      v10 = v5;
      v11 = 3;
      sub_1D45F2C48();
      return sub_1D4606DE0();
    }
  }

  if (!*(v0 + 80))
  {

    return sub_1D4606E00();
  }

  v3 = *(*v0 + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v3 == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 < 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 == 3)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  return sub_1D4606E10();
}

BOOL _s9BubbleKit0A14MaterialFilterO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v3;
  v4 = *(a1 + 48);
  v30 = *(a1 + 64);
  v5 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v6;
  v8 = *(a2 + 48);
  v35 = *(a2 + 64);
  v9 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v9;
  v37[0] = v27[0];
  v37[1] = v2;
  v10 = *(a1 + 64);
  v37[3] = v4;
  v37[4] = v10;
  v37[2] = v28;
  v41 = v33;
  v42 = v8;
  v43 = *(a2 + 64);
  v40 = v7;
  v31 = *(a1 + 80);
  v36 = *(a2 + 80);
  v38 = *(a1 + 80);
  v44 = *(a2 + 80);
  v39 = v32[0];
  v11 = *(v27 + 1);
  if (v31 > 1u)
  {
    if (v31 == 2)
    {
      if (v36 != 2)
      {
        goto LABEL_20;
      }
    }

    else if (v36 != 3)
    {
      goto LABEL_20;
    }

    sub_1D45F2E18(v37);
    v26[0] = v27[0];
    v19 = *(a1 + 32);
    v26[1] = *(a1 + 16);
    v26[2] = v19;
    v20 = *(a1 + 64);
    v26[3] = *(a1 + 48);
    v26[4] = v20;
    v21 = *(a2 + 48);
    v25[2] = *(a2 + 32);
    v25[3] = v21;
    v25[4] = *(a2 + 64);
    v22 = *(a2 + 16);
    v25[0] = *a2;
    v25[1] = v22;
    return _s9BubbleKit11ColorMatrixV2eeoiySbAC_ACtFZ_0(v26, v25);
  }

  if (v31)
  {
    if (v36 == 1)
    {
      v13 = *(*&v27[0] + 16);
      if (v13 == *(*&v32[0] + 16))
      {
        v12 = *(v32 + 1);
        if (!v13 || *&v32[0] == *&v27[0])
        {
LABEL_15:
          sub_1D45F2DE0(v32, v26);
          sub_1D45F2DE0(v27, v26);
          goto LABEL_16;
        }

        v14 = (*&v27[0] + 32);
        v15 = (*&v32[0] + 32);
        while (*v14 == *v15)
        {
          ++v14;
          ++v15;
          if (!--v13)
          {
            goto LABEL_15;
          }
        }
      }

      sub_1D45F2DE0(v32, v26);
      v23 = v27;
LABEL_21:
      sub_1D45F2DE0(v23, v26);
      sub_1D45F2E18(v37);
      return 0;
    }

LABEL_20:
    v23 = v32;
    goto LABEL_21;
  }

  if (v36)
  {
    goto LABEL_20;
  }

  v11 = *v32;
  v12 = *v27;
LABEL_16:
  sub_1D45F2E18(v37);
  return v11 == v12;
}

unint64_t sub_1D45F2C48()
{
  result = qword_1EC7D3AD0;
  if (!qword_1EC7D3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3AD0);
  }

  return result;
}

unint64_t sub_1D45F2CA0()
{
  result = qword_1EC7D3AD8;
  if (!qword_1EC7D3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3AD8);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D45F2D24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D45F2D6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D45F2E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 BubbleBackgroundView.pathConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

__n128 BubbleBackgroundView.pathConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 24);
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1D45F2FF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

__n128 BubbleBackgroundView.init(pathConfiguration:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 105) = 0u;
  *a2 = v2;
  result = *(a1 + 1);
  *(a2 + 8) = result;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D45F30B0()
{
  sub_1D45F37BC(v0 + 32, &v8, &qword_1EC7D3AE8);
  if (v9)
  {
    sub_1D45F406C(&v8, v10);
    v1 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v3 = MEMORY[0x1EEE9AC00](v1, v2);
    (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v6 = sub_1D4606930();
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v6;
  }

  else
  {
    sub_1D45F400C(&v8, &qword_1EC7D3AE8);
    v10[0] = sub_1D4606CC0();
    return sub_1D4606930();
  }
}

double BubbleBackgroundView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = sub_1D45F30B0();
  v8 = sub_1D4606E90();
  v10 = v9;
  sub_1D45F33E8(v1, &v18);
  v28[5] = v23;
  v28[6] = v24;
  v28[7] = v25;
  v28[8] = v26;
  *&v27[102] = v24;
  *&v27[118] = v25;
  v28[2] = v20;
  v28[3] = v21;
  *&v27[134] = v26;
  *&v27[38] = v20;
  v28[4] = v22;
  *&v27[54] = v21;
  *&v27[70] = v22;
  v28[0] = v18;
  *&v27[86] = v23;
  *&v27[6] = v18;
  v28[1] = v19;
  *&v29 = v8;
  *(&v29 + 1) = v10;
  *&v27[22] = v19;
  *&v27[150] = v29;
  v30[2] = v20;
  v30[3] = v21;
  v30[0] = v18;
  v30[1] = v19;
  v30[7] = v25;
  v30[8] = v26;
  v30[5] = v23;
  v30[6] = v24;
  v30[4] = v22;
  v31 = v8;
  v32 = v10;
  sub_1D45F37BC(v28, &v17, &qword_1EC7D3AF8);
  sub_1D45F400C(v30, &qword_1EC7D3AF8);
  *a1 = v3;
  v11 = *&v27[96];
  *(a1 + 154) = *&v27[112];
  v12 = *&v27[144];
  *(a1 + 170) = *&v27[128];
  *(a1 + 186) = v12;
  v13 = *&v27[32];
  *(a1 + 90) = *&v27[48];
  v14 = *&v27[80];
  *(a1 + 106) = *&v27[64];
  *(a1 + 122) = v14;
  *(a1 + 138) = v11;
  result = *v27;
  v16 = *&v27[16];
  *(a1 + 42) = *v27;
  *(a1 + 58) = v16;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = 256;
  *(a1 + 200) = *&v27[158];
  *(a1 + 74) = v13;
  return result;
}

__n128 sub_1D45F33E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D45F37BC(a1 + 72, &v46, &qword_1EC7D3AF0);
  if (*(&v47 + 1))
  {
    v53 = v49;
    v50 = v46;
    v51 = v47;
    v52 = v48;
    if (v49 == 1)
    {
      sub_1D45F3F10(a1, &v57);
      sub_1D45F3F48(&v50, &v38);
      v4 = swift_allocObject();
      v5 = *&v60[32];
      *(v4 + 80) = *&v60[16];
      *(v4 + 96) = v5;
      *(v4 + 112) = *&v60[48];
      *(v4 + 121) = *&v60[57];
      v6 = v58;
      *(v4 + 16) = v57;
      *(v4 + 32) = v6;
      v7 = *v60;
      *(v4 + 48) = v59;
      *(v4 + 64) = v7;
      v8 = v38;
      v9 = v39;
      v10 = v40;
      *(v4 + 192) = v41;
      *(v4 + 160) = v9;
      *(v4 + 176) = v10;
      *(v4 + 144) = v8;
      *&v57 = sub_1D45F3FA4;
      *(&v57 + 1) = v4;
      sub_1D45F3FB0(&v57);
    }

    else
    {
      sub_1D46068E0();
      v11 = *a1;
      v13 = *(a1 + 8);
      v12 = *(a1 + 16);
      v14 = *(a1 + 24);
      *(v37 + 7) = v54;
      *(&v37[1] + 7) = v55;
      *(&v37[2] + 7) = v56;
      v15 = sub_1D4606E90();
      v27 = v16;
      v28 = v15;
      v17 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v19 = MEMORY[0x1EEE9AC00](v17, v18);
      (*(v21 + 16))(&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      v22 = sub_1D4606930();
      *&v57 = v11;
      *&v59 = v11;
      *&v60[9] = v37[0];
      *(&v57 + 1) = v13;
      v58.n128_u64[0] = v12;
      v58.n128_u8[8] = v14;
      *(&v59 + 1) = v13;
      *v60 = v12;
      v60[8] = v14;
      *&v60[25] = v37[1];
      *&v60[40] = *(&v37[1] + 15);
      *&v60[56] = 256;
      *&v60[64] = v28;
      *&v60[72] = v27;
      *&v60[80] = v22;
      sub_1D45F3D84(&v57);
    }

    v35 = *&v60[48];
    v36[0] = *&v60[64];
    *(v36 + 9) = *&v60[73];
    v31 = v59;
    v32 = *v60;
    v33 = *&v60[16];
    v34 = *&v60[32];
    v29 = v57;
    v30 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B30);
    sub_1D45F3E74(&qword_1EC7D3B38, &qword_1EC7D3B28);
    sub_1D45F3D90();
    sub_1D4606AD0();
    v35 = v44;
    v36[0] = v45[0];
    *(v36 + 9) = *(v45 + 9);
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v29 = v38;
    v30 = v39;
    nullsub_1(&v29);
    sub_1D45F3EBC(&v50);
    *&v60[48] = v35;
    *&v60[64] = v36[0];
    *&v60[73] = *(v36 + 9);
    v59 = v31;
    *v60 = v32;
    *&v60[16] = v33;
    *&v60[32] = v34;
    v57 = v29;
    v58 = v30;
  }

  else
  {
    sub_1D45F400C(&v46, &qword_1EC7D3AF0);
    sub_1D45F3D60(&v57);
  }

  v23 = *&v60[64];
  *(a2 + 96) = *&v60[48];
  *(a2 + 112) = v23;
  *(a2 + 121) = *&v60[73];
  v24 = *v60;
  *(a2 + 32) = v59;
  *(a2 + 48) = v24;
  v25 = *&v60[32];
  *(a2 + 64) = *&v60[16];
  *(a2 + 80) = v25;
  result = v58;
  *a2 = v57;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D45F37BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1D45F3840@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1D4606AE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4606B20();
  sub_1D4606940();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  *&v40 = *a1;
  v19 = v40;
  *(&v40 + 1) = v20;
  *&v41 = v21;
  BYTE8(v41) = v22;
  v23 = sub_1D45EC784(&v40, v12, v14, v16, v18);
  *&v40 = v12;
  *(&v40 + 1) = v14;
  *&v41 = v16;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  *(&v42 + 1) = v20;
  *&v43 = v21;
  BYTE8(v43) = v22;
  v44 = v23;
  v36[2] = v42;
  v36[3] = v43;
  v37 = v23;
  v36[1] = v41;
  v36[0] = v40;
  sub_1D45F4924(v36, v38);
  sub_1D45F3FB8(&v40);
  *&v35[7] = v38[0];
  *&v35[23] = v38[1];
  *&v35[39] = v39;
  v24 = sub_1D4606E90();
  v26 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  (*(v31 + 16))(&v35[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)], v29);
  v32 = sub_1D4606930();
  *a3 = v19;
  *(a3 + 32) = v19;
  v33 = *&v35[16];
  *(a3 + 57) = *v35;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 40) = v20;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  *(a3 + 73) = v33;
  result = *&v35[31];
  *(a3 + 88) = *&v35[31];
  *(a3 + 104) = 256;
  *(a3 + 112) = v24;
  *(a3 + 120) = v26;
  *(a3 + 128) = v32;
  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D45F3B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D45F3BC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D45F3C34()
{
  result = qword_1EC7D3B00;
  if (!qword_1EC7D3B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3B08);
    sub_1D45F3E74(&qword_1EC7D3B10, &qword_1EC7D3B18);
    sub_1D45F3E74(&qword_1EC7D3B20, &qword_1EC7D3AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3B00);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double sub_1D45F3D60(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -1;
  return result;
}

unint64_t sub_1D45F3D90()
{
  result = qword_1EC7D3B40;
  if (!qword_1EC7D3B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3B30);
    sub_1D45F3E74(&qword_1EC7D3B48, &qword_1EC7D3B50);
    sub_1D45F3E74(&qword_1EC7D3B58, &qword_1EC7D3B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3B40);
  }

  return result;
}

uint64_t sub_1D45F3E74(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D45F400C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D45F406C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BubbleInteractionCollection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BubbleInteractionCollection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

BOOL static BubbleMaterial.BackgroundContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_1D45F4184(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s17BackgroundContentOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17BackgroundContentOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D45F4224(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D45F4240(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1D45F42C0(uint64_t a1, const CGFloat *a2, CGColorRef *a3)
{
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  if (v5)
  {
    v6 = v5;
    v7 = CGColorCreate(v5, a2);
    if (!v7)
    {
      if (qword_1EE08A468 != -1)
      {
        swift_once();
      }

      v7 = qword_1EE08A5C8;
    }

    v8 = v7;
  }

  else
  {
    if (qword_1EE08A468 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE08A5C8;
  }

  *a3 = v8;
}

CGColorRef sub_1D45F442C(uint64_t a1, const CGFloat *a2, const CGFloat *a3, const CGFloat *a4, const CGFloat *a5)
{
  sub_1D45FA770(&v19);
  if (v19)
  {
    sub_1D45FAAAC(&v18);
    v9 = v18;
    v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    v11 = v10;
    if (v9)
    {
      if (v10)
      {
        v12 = CGColorCreate(v10, a5);
        if (!v12)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (v10)
    {
      v12 = CGColorCreate(v10, a4);
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_1D45FAAAC(&v17);
    v13 = v17;
    v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    v11 = v14;
    if (v13)
    {
      if (v14)
      {
        v12 = CGColorCreate(v14, a3);
        if (!v12)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (v14)
    {
      v12 = CGColorCreate(v14, a2);
      if (!v12)
      {
LABEL_15:
        if (qword_1EE08A468 != -1)
        {
          swift_once();
        }

        v12 = qword_1EE08A5C8;
      }

LABEL_18:
      v15 = v12;

      return v15;
    }
  }

  if (qword_1EE08A468 != -1)
  {
    swift_once();
  }

  return qword_1EE08A5C8;
}

uint64_t BubblePath.TailEdge.debugDisplayName.getter()
{
  if (*v0)
  {
    return 0x7468676952;
  }

  else
  {
    return 1952867660;
  }
}

uint64_t BubblePath.CornerStyle.debugDisplayName.getter()
{
  if (*v0)
  {
    return 0x72616C7563726943;
  }

  else
  {
    return 0x6F756E69746E6F43;
  }
}

uint64_t BubblePath.CornerStyle.roundedCornerStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D4606AB0();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E697F480];
  if (!v3)
  {
    v6 = MEMORY[0x1E697F468];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

id BubblePath.CornerStyle.cornerCurve.getter()
{
  v1 = MEMORY[0x1E69796E0];
  if (!*v0)
  {
    v1 = MEMORY[0x1E69796E8];
  }

  return *v1;
}

char *sub_1D45F46C8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a1;
  v4 = v2 - 1;
  v5 = (a2 + 96);
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v4;
    v13 = *(v5 - 4);
    v14 = *(v5 - 3);
    v15 = *(v5 - 2);
    v16 = *(v5 - 1);
    v8 = *v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D45EEF94(0, *(v6 + 2) + 1, 1, v6);
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = sub_1D45EEF94((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    v11 = &v6[72 * v10];
    *(v11 + 4) = v15;
    *(v11 + 5) = v16;
    *(v11 + 2) = v13;
    *(v11 + 3) = v14;
    v11[96] = v8;
    if (v8 == v3)
    {
      break;
    }

    v5 += 72;
    v4 = v7 - 1;
  }

  while (v7);
  return v6;
}

double sub_1D45F47D8(char a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 16);
  if (a1)
  {
    if (v3)
    {
      v11 = *(a2 + 32 + 72 * v3 - 56);
      v12 = *(a2 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1D45EEF94(0, v3 + 1, 1, v2);
      }

      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      v3 = v5 + 1;
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1D45EEF94((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v3;
      v6 = &v2[72 * v5];
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
      *(v6 + 4) = v11;
      *(v6 + 5) = v12;
      v6[96] = 20;
      goto LABEL_9;
    }

LABEL_13:
    v7 = 0.0;
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_9:
  v7 = 0.0;
  v8 = 32;
  do
  {
    sub_1D45FBC6C(10);
    v7 = v7 + v9;
    v8 += 72;
    --v3;
  }

  while (v3);
LABEL_14:

  return v7;
}

double sub_1D45F4924@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v23 = a1[2];
  v24 = v4;
  v25 = *(a1 + 8);
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  if (*(v2 + 48) == 1)
  {
    v6 = a1[3];
    v18 = a1[2];
    v19 = v6;
    v20 = *(a1 + 8);
    v7 = a1[1];
    v16 = *a1;
    v17 = v7;
    sub_1D45FAF04(&v16);
    v9 = v8;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_1D45F4CC8(&v21, v15);
    sub_1D45FB0F0(&v16, &v21, v9);
    sub_1D45F3FB8(&v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B78);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D4607CF0;
    *(v10 + 32) = v9;
  }

  sub_1D46068E0();
  v11 = *(&v16 + 1);
  v13 = v17;
  result = *&v17;
  v14 = v18;
  *a2 = v16;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_1D45F4AA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t BubbleViewConfiguration.Stroke.style.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1D45F406C(a1, v1);
}

uint64_t BubbleViewConfiguration.Stroke.init(style:width:isDashed:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  result = sub_1D45F406C(a1, a3);
  *(a3 + 40) = a4;
  *(a3 + 48) = a2;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D45F4C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D45F4C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D45F4D34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D4606C20();
    sub_1D4606BE0();
    v5 = a1 + 88;
    do
    {
      sub_1D4606C10();
      v5 += 72;
      --v3;
    }

    while (v3);
    sub_1D4606BD0();
  }

  else
  {
    sub_1D4606C20();
  }

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1D45F4DCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  Mutable = CGPathCreateMutable();
  if (!v2)
  {
    return Mutable;
  }

  sub_1D4606F20();
  v4 = a1 + 88;
  do
  {
    sub_1D4606F30();
    v4 += 72;
    --v2;
  }

  while (v2);
  CGPathCloseSubpath(Mutable);
  result = MEMORY[0x1DA6DB8C0](Mutable);
  if (result)
  {
    v6 = result;

    return v6;
  }

  __break(1u);
  return result;
}

double sub_1D45F4E74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D4606C20();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 48;
    do
    {
      sub_1D4606BE0();
      sub_1D4606BF0();
      sub_1D4606BE0();
      sub_1D4606BF0();
      v5 += 72;
      --v4;
    }

    while (v4);
  }

  sub_1D4606BD0();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1D45F5038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D45F50B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3AE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BubbleViewConfiguration.Style.init(background:foreground:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 128) = 0;
  v3 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v3;
  *(a3 + 64) = a1[4];
  *(a3 + 75) = *(a1 + 75);
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 112) = 0u;
  *(a3 + 96) = 0u;
  return sub_1D45F50B0(a2, a3 + 96);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D45F51BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D45F5218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t BubblePath.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = round(*(v0 + 32) * 100.0) / 100.0;
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x1DA6DB780](*&v8);
  if (!(v6 >> 62))
  {
    v9 = 0;
    goto LABEL_7;
  }

  if (v6 >> 62 == 1)
  {
    v9 = 1;
LABEL_7:
    MEMORY[0x1DA6DB760](v9);
    MEMORY[0x1DA6DB760](v6 & 1);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1DA6DB780](v10);
    goto LABEL_12;
  }

  MEMORY[0x1DA6DB760](2);
LABEL_12:
  MEMORY[0x1DA6DB760](v7);
  v11 = round(v2 * 100.0) / 100.0;
  v12 = round(v1 * 100.0) / 100.0;
  v13 = round(v4 * 100.0) / 100.0;
  v14 = round(v3 * 100.0) / 100.0;

  return sub_1D45F562C(v11, v12, v13, v14);
}

uint64_t BubblePath.hashValue.getter()
{
  sub_1D4606FC0();
  BubblePath.hash(into:)();
  return sub_1D4607010();
}

uint64_t sub_1D45F53EC()
{
  sub_1D4606FC0();
  BubblePath.hash(into:)();
  return sub_1D4607010();
}

uint64_t sub_1D45F5430()
{
  sub_1D4606FC0();
  BubblePath.hash(into:)();
  return sub_1D4607010();
}

uint64_t BubblePath.Configuration.hash(into:)()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = round(*v0 * 100.0) / 100.0;
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA6DB780](*&v4);
  if (v2 >> 62)
  {
    if (v2 >> 62 != 1)
    {
      MEMORY[0x1DA6DB760](2);
      return MEMORY[0x1DA6DB760](v3);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1DA6DB760](v5);
  MEMORY[0x1DA6DB760](v2 & 1);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1DA6DB780](v6);
  return MEMORY[0x1DA6DB760](v3);
}

uint64_t BubblePath.Configuration.hashValue.getter()
{
  sub_1D4606FC0();
  BubblePath.Configuration.hash(into:)();
  return sub_1D4607010();
}

uint64_t sub_1D45F5574()
{
  sub_1D4606FC0();
  BubblePath.Configuration.hash(into:)();
  return sub_1D4607010();
}

uint64_t sub_1D45F55D4()
{
  sub_1D4606FC0();
  BubblePath.Configuration.hash(into:)();
  return sub_1D4607010();
}

uint64_t sub_1D45F562C(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1DA6DB780](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1DA6DB780](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1DA6DB780](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1DA6DB780](*&v9);
}

BOOL _s9BubbleKit0A4PathV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v27 = v11;
  v28 = v10;
  v29 = v9;
  v30 = v8;
  v31 = v7;
  v32 = v6;
  v33 = v5;
  v34 = v4;
  v35 = v2;
  v36 = v3;
  v13 = *a1;
  v12 = *(a1 + 8);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v17 = *a2;
  v16 = *(a2 + 8);
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = *(a2 + 56);
  v21 = *(a1 + 56);
  v22 = *(a1 + 40);
  v25 = *(a2 + 40);
  v26 = v22;
  v23 = _s9BubbleKit0A4PathV9TailStyleO2eeoiySbAE_AEtFZ_0(&v26, &v25);
  result = 0;
  if (v23 && ((v20 ^ v21) & 1) == 0)
  {
    return vabdd_f64(v13, v17) < 0.001 && vabdd_f64(v12, v16) < 0.001 && vabdd_f64(v15, v19) < 0.001 && vabdd_f64(v14, v18) < 0.001;
  }

  return result;
}

unint64_t sub_1D45F579C()
{
  result = qword_1EC7D3B80;
  if (!qword_1EC7D3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3B80);
  }

  return result;
}

unint64_t sub_1D45F57F4()
{
  result = qword_1EC7D3B88;
  if (!qword_1EC7D3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3B88);
  }

  return result;
}

size_t BubblePath.generateMaskImage(scale:additionalPadding:)(CGFloat a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = sub_1D45F4DCC(*(v5 + 64));
  v14 = ceil((v12 + a3 + a5) * a1);
  result = CGColorSpaceCreateDeviceRGB();
  if (v14 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = result;
  result = v14;
  if ((v14 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = ceil((v11 + a2 + a4) * a1);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v18 = __CGBitmapContextCreate(result, v17, 4 * result, v16);
  if (v18)
  {
    v19 = v18;
    CGContextTranslateCTM(v18, 0.0, v17);
    CGContextScaleCTM(v19, a1, -a1);
    CGContextTranslateCTM(v19, a3, a2);
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    CGContextSetFillColorWithColor(v19, GenericRGB);
    CGContextAddPath(v19, v13);
    CGContextDrawPath(v19, kCGPathFill);
    Image = CGBitmapContextCreateImage(v19);
  }

  else
  {

    return 0;
  }

  return Image;
}

uint64_t View.bubble(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BubbleView();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D45F5BA4(a1, v9);
  v10 = &v9[*(v6 + 20)];
  v14 = xmmword_1D4607F20;
  v15 = 0;
  sub_1D4606D80();
  v11 = v17;
  v12 = v18;
  *v10 = v16;
  v10[16] = v11;
  *(v10 + 3) = v12;
  MEMORY[0x1DA6DB400](v9, a2, v6, a3);
  return sub_1D45F5C08(v9);
}

uint64_t type metadata accessor for BubbleView()
{
  result = qword_1EC7D3B98;
  if (!qword_1EC7D3B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D45F5BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleViewConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D45F5C08(uint64_t a1)
{
  v2 = type metadata accessor for BubbleView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D45F5C8C()
{
  type metadata accessor for BubbleViewConfiguration();
  if (v0 <= 0x3F)
  {
    sub_1D45F5D10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D45F5D10()
{
  if (!qword_1EC7D3BA8)
  {
    v0 = sub_1D4606DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7D3BA8);
    }
  }
}

uint64_t sub_1D45F5D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BB0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BB8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BC0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v60 = &v59 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BC8);
  MEMORY[0x1EEE9AC00](v62, v17);
  v61 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BD0);
  v64 = *(v19 - 8);
  v65 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v63 = &v59 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BD8);
  (*(*(v22 - 8) + 16))(v9, a1, v22);
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BE0) + 36)] = 256;
  v23 = &v9[*(v6 + 44)];
  sub_1D45F5BA4(v2, v23);
  KeyPath = swift_getKeyPath();
  v25 = type metadata accessor for BubbleContentPadding();
  *(v23 + *(v25 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BE8);
  swift_storeEnumTagMultiPayload();
  v26 = swift_getKeyPath();
  v27 = v23 + *(v25 + 24);
  *v27 = v26;
  *(v27 + 8) = 0;
  sub_1D45F5038(v2 + 128, &v69);
  v28 = *(&v70 + 1);
  sub_1D45F400C(&v69, &qword_1EC7D3AE8);
  if (!v28)
  {
    *&v69 = sub_1D4606CC0();
    v35 = sub_1D4606930();
    goto LABEL_5;
  }

  result = sub_1D45F5038(v3 + 128, &v69);
  if (*(&v70 + 1))
  {
    v30 = __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    v32 = MEMORY[0x1EEE9AC00](v30, v31);
    (*(v34 + 16))(&v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
    v35 = sub_1D4606930();
    __swift_destroy_boxed_opaque_existential_1(&v69);
LABEL_5:
    sub_1D45F6540(v9, v13, &qword_1EC7D3BB0);
    *&v13[*(v10 + 36)] = v35;
    v36 = v60;
    v37 = &v60[*(v14 + 36)];
    sub_1D45F5BA4(v3, v37);
    v38 = swift_getKeyPath();
    v39 = type metadata accessor for BubbleBackground();
    *(v37 + v39[5]) = v38;
    swift_storeEnumTagMultiPayload();
    v40 = swift_getKeyPath();
    v41 = swift_getKeyPath();
    v42 = swift_getKeyPath();
    v43 = v37 + v39[6];
    *v43 = v40;
    *(v43 + 8) = 0;
    v44 = v37 + v39[7];
    *v44 = v41;
    *(v44 + 8) = 0;
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    v45 = v37 + v39[8];
    *v45 = v42;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0;
    *(v37 + v39[9]) = 0;
    sub_1D45F6540(v13, v36, &qword_1EC7D3BB8);
    v46 = v61;
    v47 = &v61[*(v62 + 36)];
    sub_1D45F5BA4(v3, v47);
    v48 = swift_getKeyPath();
    v49 = type metadata accessor for BubbleClipShape();
    *(v47 + *(v49 + 20)) = v48;
    swift_storeEnumTagMultiPayload();
    v50 = swift_getKeyPath();
    v51 = v47 + *(v49 + 24);
    *v51 = v50;
    *(v51 + 8) = 0;
    sub_1D45F6540(v36, v46, &qword_1EC7D3BC0);
    type metadata accessor for BubbleViewConfiguration();
    sub_1D45F65A8();
    v52 = v63;
    sub_1D4606C60();
    sub_1D45F400C(v46, &qword_1EC7D3BC8);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3C38);
    v54 = v66;
    v55 = v66 + *(v53 + 36);
    sub_1D45F5BA4(v3, v55);
    v56 = v55 + *(type metadata accessor for BubbleBackgroundGradientPositionTracker() + 20);
    type metadata accessor for CGRect(0);
    v67 = 0u;
    v68 = 0u;
    sub_1D4606D80();
    v57 = v71;
    v58 = v70;
    *v56 = v69;
    *(v56 + 16) = v58;
    *(v56 + 32) = v57;
    return (*(v64 + 32))(v54, v52, v65);
  }

  __break(1u);
  return result;
}

double sub_1D45F63F8@<D0>(uint64_t a1@<X8>)
{
  sub_1D45F69A0();
  sub_1D4606A90();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1D45F64A4@<D0>(_OWORD *a1@<X8>)
{
  sub_1D45F694C();
  sub_1D4606A90();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D45F6540(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D45F65A8()
{
  result = qword_1EC7D3BF0;
  if (!qword_1EC7D3BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3BC8);
    sub_1D45F6664();
    sub_1D45F6AEC(&qword_1EC7D3C30, type metadata accessor for BubbleClipShape);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3BF0);
  }

  return result;
}

unint64_t sub_1D45F6664()
{
  result = qword_1EC7D3BF8;
  if (!qword_1EC7D3BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3BC0);
    sub_1D45F6720();
    sub_1D45F6AEC(&qword_1EC7D3C28, type metadata accessor for BubbleBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3BF8);
  }

  return result;
}

unint64_t sub_1D45F6720()
{
  result = qword_1EC7D3C00;
  if (!qword_1EC7D3C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3BB8);
    sub_1D45F67D8();
    sub_1D45F3E74(&qword_1EC7D3B58, &qword_1EC7D3B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C00);
  }

  return result;
}

unint64_t sub_1D45F67D8()
{
  result = qword_1EC7D3C08;
  if (!qword_1EC7D3C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3BB0);
    sub_1D45F6894();
    sub_1D45F6AEC(&qword_1EC7D3C20, type metadata accessor for BubbleContentPadding);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C08);
  }

  return result;
}

unint64_t sub_1D45F6894()
{
  result = qword_1EC7D3C10;
  if (!qword_1EC7D3C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3BE0);
    sub_1D45F3E74(&qword_1EC7D3C18, &qword_1EC7D3BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C10);
  }

  return result;
}

unint64_t sub_1D45F694C()
{
  result = qword_1EC7D3C40;
  if (!qword_1EC7D3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C40);
  }

  return result;
}

unint64_t sub_1D45F69A0()
{
  result = qword_1EC7D3C48;
  if (!qword_1EC7D3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C48);
  }

  return result;
}

unint64_t sub_1D45F69F4()
{
  result = qword_1EC7D3C50;
  if (!qword_1EC7D3C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3BC8);
    sub_1D45F65A8();
    swift_getOpaqueTypeConformance2();
    sub_1D45F6AEC(&qword_1EC7D3C58, type metadata accessor for BubbleBackgroundGradientPositionTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C50);
  }

  return result;
}

uint64_t sub_1D45F6AEC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1D45F6B38@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  result = *(v1 + 64);
  *(a1 + 64) = result;
  return result;
}

void __swiftcall ColorMatrix.init(caColorMatrix:)(BubbleKit::ColorMatrix *__return_ptr retstr, __C::CAColorMatrix *caColorMatrix)
{
  v2 = *&caColorMatrix->m15;
  *&retstr->m11 = *&caColorMatrix->m11;
  *&retstr->m15 = v2;
  v3 = *&caColorMatrix->m33;
  *&retstr->m24 = *&caColorMatrix->m24;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&caColorMatrix->m42;
}

BOOL _s9BubbleKit11ColorMatrixV2eeoiySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(*a1, *a2), vceqq_f32(a1[1], a2[1])), vuzp1q_s16(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 1) != 0 && a1[4].f32[0] == a2[4].f32[0] && a1[4].f32[1] == a2[4].f32[1] && a1[4].f32[2] == a2[4].f32[2])
  {
    return a1[4].f32[3] == a2[4].f32[3];
  }

  return result;
}

size_t sub_1D45F6FC8()
{
  v1 = sub_1D4606E20();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4606C90();
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D4606E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[13];
  v72 = v0[12];
  v73 = v14;
  v74 = *(v0 + 28);
  v15 = v0[9];
  v68 = v0[8];
  v69 = v15;
  v16 = v0[11];
  v70 = v0[10];
  v71 = v16;
  v17 = v0[5];
  v64 = v0[4];
  v65 = v17;
  v18 = v0[7];
  v66 = v0[6];
  v67 = v18;
  v19 = v0[1];
  v60 = *v0;
  v61 = v19;
  v20 = v0[3];
  v62 = v0[2];
  v63 = v20;
  v21 = sub_1D45FB664();
  v22 = *(v21 + 2);
  if (!v22)
  {

LABEL_19:
    (*(v58 + 104))(v57, *MEMORY[0x1E69814D8], v6);
    sub_1D4606D00();
    sub_1D4606E30();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3C60);
    v50 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1D4607CF0;
    (*(v10 + 32))(v51 + v50, v13, v9);
    return v51;
  }

  v53 = v6;
  v54 = v13;
  v55 = v10;
  v56 = v9;
  v23 = v21;
  v59 = MEMORY[0x1E69E7CC0];
  result = sub_1D45F74B8(0, v22, 0);
  v25 = v59;
  v52 = v23;
  v26 = v23 + 56;
  while (1)
  {
    v28 = *(v26 - 6);
    v27 = *(v26 - 5);
    v29 = *(v26 - 2);
    if (v26[56] > 1u)
    {
      v32 = *(v26 - 2);
      v31 = *(v26 - 1);
      v34 = *v26;
      v33 = *(v26 + 1);
      v36 = *(v26 + 2);
      v35 = *(v26 + 3);
      v38 = *(v26 + 4);
      v37 = *(v26 + 5);
      v40 = *(v26 + 6);
      v39 = *(v26 + 7);
      v42 = *(v26 + 8);
      v41 = *(v26 + 9);
      v44 = *(v26 + 10);
      v43 = *(v26 + 11);
      v46 = *(v26 + 12);
      v45 = *(v26 + 13);
      if (v26[56] == 2)
      {
        v75 = *(v26 - 6);
        v76 = v27;
        v77 = v29;
        v78 = v32;
        v79 = v31;
        v80 = v34;
        v81 = v33;
        v82 = v36;
        v83 = v35;
        v84 = v38;
        v85 = v37;
        v86 = v40;
        v87 = v39;
        v88 = v42;
        v89 = v41;
        v90 = v44;
        v91 = v43;
        v92 = v46;
        v93 = v45;
        sub_1D4606DF0();
      }

      else
      {
        *&v60 = __PAIR64__(v27, v28);
        *(&v60 + 1) = v29;
        *&v61 = __PAIR64__(v31, v32);
        *(&v61 + 1) = __PAIR64__(v33, v34);
        *&v62 = __PAIR64__(v35, v36);
        *(&v62 + 1) = __PAIR64__(v37, v38);
        *&v63 = __PAIR64__(v39, v40);
        *(&v63 + 1) = __PAIR64__(v41, v42);
        *&v64 = __PAIR64__(v43, v44);
        *(&v64 + 1) = __PAIR64__(v45, v46);
        LOBYTE(v65) = 3;
        sub_1D45F2C48();
        sub_1D4606DE0();
      }

      goto LABEL_14;
    }

    v30 = v28 | (v27 << 32);
    if (!v26[56])
    {
      sub_1D4606E00();
      goto LABEL_14;
    }

    v47 = *(v30 + 16);
    if (!v47)
    {
      break;
    }

    if (v47 == 1)
    {
      goto LABEL_21;
    }

    if (v47 < 3)
    {
      goto LABEL_22;
    }

    if (v47 == 3)
    {
      goto LABEL_23;
    }

    sub_1D4606E10();
LABEL_14:
    v59 = v25;
    v49 = *(v25 + 16);
    v48 = *(v25 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_1D45F74B8(v48 > 1, v49 + 1, 1);
      v25 = v59;
    }

    v26 += 88;
    *(v25 + 16) = v49 + 1;
    result = (*(v2 + 32))(v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v49, v5, v1);
    if (!--v22)
    {

      v10 = v55;
      v9 = v56;
      v6 = v53;
      v13 = v54;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

size_t sub_1D45F74B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D45F74D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D45F74D8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3C68);
  v10 = *(sub_1D4606E20() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1D4606E20() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

float64x2_t sub_1D45F76B0@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = vaddq_f64(*(v3 + 16), vmulq_n_f64(vsubq_f64(a1[1], *(v3 + 16)), a3));
  *a2 = vaddq_f64(*v3, vmulq_n_f64(vsubq_f64(*a1, *v3), a3));
  *(a2 + 16) = v4;
  v5 = vaddq_f64(*(v3 + 32), vmulq_n_f64(vsubq_f64(a1[2], *(v3 + 32)), a3));
  v6 = *(v3 + 64);
  result = vaddq_f64(*(v3 + 48), vmulq_n_f64(vsubq_f64(a1[3], *(v3 + 48)), a3));
  *(a2 + 32) = v5;
  *(a2 + 48) = result;
  *(a2 + 64) = v6;
  return result;
}

uint64_t BubbleMaterial.AccessibilityContrast.hashValue.getter()
{
  v1 = *v0;
  sub_1D4606FC0();
  MEMORY[0x1DA6DB760](v1);
  return sub_1D4607010();
}

uint64_t BubbleMaterial.AccessibilityContrast.init(colorSchemeContrast:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1D4606AC0();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x1E697F600])
  {
    goto LABEL_5;
  }

  if (result != *MEMORY[0x1E697F608])
  {
    result = (*(v5 + 8))(a1, v4);
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  *a2 = v7;
  return result;
}

uint64_t BubbleMaterial.AccessibilityContrast.colorSchemeContrast.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D4606AC0();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E697F608];
  if (!v3)
  {
    v6 = MEMORY[0x1E697F600];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

unint64_t sub_1D45F7914()
{
  result = qword_1EC7D3C70;
  if (!qword_1EC7D3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C70);
  }

  return result;
}

double sub_1D45F7978(uint64_t a1)
{
  v2 = sub_1D4606A80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D4606E60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s13ContextSourceOMa(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0.0;
  if ((*(a1 + 8) & 1) == 0)
  {
    v17 = _s7ContextVMa(0);
    sub_1D45F9384(a1 + *(v17 + 20), v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D45F93E8(v15);
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    }

    else
    {
      (*(v8 + 32))(v11, v15, v7);
      sub_1D4606E50();
      IsReduceTransparencyEnabled = sub_1D4606A40();
      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    result = 40.0;
    if ((IsReduceTransparencyEnabled & 1) == 0)
    {
      return 12.0;
    }
  }

  return result;
}

void sub_1D45F7BC0(uint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  v5 = *v2;
  if ((*(a1 + 8) & 1) == 0)
  {
    v8 = *a1;
    v54 = *v2;
    sub_1D45F8CD0(a1, v57, v8);
    if (!v54)
    {
      v36 = v57[3];
      a2[2] = v57[2];
      a2[3] = v36;
      a2[4] = v57[4];
      v38 = v57[0];
      v37 = v57[1];
LABEL_21:
      *a2 = v38;
      a2[1] = v37;
      a2[5].i8[0] = 0;
      return;
    }

    if (v54 == 1)
    {
      v9 = sub_1D45F43E4(a1);
      sub_1D45F8080();
      v11 = v23;
      v64 = xmmword_1D46081C0;
      v65 = xmmword_1D46081D0;
      v66 = xmmword_1D46081E0;
      v67 = xmmword_1D46081F0;
      v68 = xmmword_1D4608200;
      v27 = sub_1D45F81E0(v24, v25, v26, 1.0);
      v59 = xmmword_1D4608210;
      v60 = xmmword_1D4608220;
      v61 = xmmword_1D4608230;
      v62 = xmmword_1D4608240;
      v63 = xmmword_1D4608200;
      v19 = sub_1D45F81E0(((v8 * -0.1) + 0.05) + v27, v28, v29, v30);
      v22 = -0.3;
    }

    else
    {
      if (v54 != 2)
      {
        sub_1D45F8080();
        v11 = v40;
        v64 = xmmword_1D46081C0;
        v65 = xmmword_1D46081D0;
        v66 = xmmword_1D46081E0;
        v67 = xmmword_1D46081F0;
        v68 = xmmword_1D4608200;
        v44 = sub_1D45F81E0(v41, v42, v43, 1.0);
        v59 = xmmword_1D4608210;
        v60 = xmmword_1D4608220;
        v61 = xmmword_1D4608230;
        v62 = xmmword_1D4608240;
        v63 = xmmword_1D4608200;
        v48 = sub_1D45F81E0(((v8 * -0.1) + 0.05) + v44, v45, v46, v47) + -0.22;
        v50 = v49 + -0.22;
        v52 = v51 + -0.22;
        CAColorMatrixMakeSaturation();
        v55 = xmmword_1D4608250;
        *v56 = v48;
        *&v56[4] = xmmword_1D4608260;
        *&v56[20] = v50;
        *&v56[24] = xmmword_1D4608270;
        *&v56[40] = v52;
        *&v56[44] = xmmword_1D4608280;
        *&v56[60] = 0;
        CAColorMatrixConcat();
        goto LABEL_20;
      }

      v9 = sub_1D45F439C(a1);
      sub_1D45F8080();
      v11 = v10;
      v64 = xmmword_1D46081C0;
      v65 = xmmword_1D46081D0;
      v66 = xmmword_1D46081E0;
      v67 = xmmword_1D46081F0;
      v68 = xmmword_1D4608200;
      v15 = sub_1D45F81E0(v12, v13, v14, 1.0);
      v59 = xmmword_1D4608210;
      v60 = xmmword_1D4608220;
      v61 = xmmword_1D4608230;
      v62 = xmmword_1D4608240;
      v63 = xmmword_1D4608200;
      v19 = sub_1D45F81E0(((v8 * -0.1) + 0.05) + v15, v16, v17, v18);
      v22 = -0.22;
    }

    v31 = v19 + v22;
    v32 = v20 + v22;
    v33 = v21 + v22;
    CAColorMatrixMakeSaturation();
    v55 = xmmword_1D4608250;
    *v56 = v31;
    *&v56[4] = xmmword_1D4608260;
    *&v56[20] = v32;
    *&v56[24] = xmmword_1D4608270;
    *&v56[40] = v33;
    *&v56[44] = xmmword_1D4608280;
    *&v56[60] = 0;
    CAColorMatrixConcat();

LABEL_20:
    sub_1D45F82F0(v57, v58, &v55, v11);
    v53 = *&v56[32];
    a2[2] = *&v56[16];
    a2[3] = v53;
    a2[4] = *&v56[48];
    v38 = v55;
    v37 = *v56;
    goto LABEL_21;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_1D45F4408(a1);
      v7 = sub_1D45F43E4(a1);
      goto LABEL_11;
    }

    if (v5 == 2)
    {
      v6 = sub_1D45F43C0(a1);
      v7 = sub_1D45F439C(a1);
LABEL_11:
      a2->i64[0] = v6;
      a2->i64[1] = v7;
      a2[5].i8[0] = 2;
      return;
    }

    a2->i64[0] = v5;
    a2[5].i8[0] = 1;

    v39 = v5;
  }

  else
  {
    v34 = [objc_opt_self() secondarySystemFillColor];
    v35 = sub_1D45FA3F0(a1);

    a2->i64[0] = v35;
    a2[5].i8[0] = 1;
  }
}

void sub_1D45F8080()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, v0, 0);
  if (CopyByMatchingToColorSpace && (v3 = CopyByMatchingToColorSpace, (v4 = sub_1D4606F00()) != 0) && *(v4 + 16) == 4)
  {
  }

  else
  {
    sub_1D4606FB0();
    __break(1u);
  }
}

float sub_1D45F81E0(float a1, float a2, float a3, float a4)
{
  v5 = a1 / a4;
  v6 = a2 / a4;
  v7 = a3 / a4;
  v8 = v4[19] + ((((v5 * v4[15]) + (v6 * v4[16])) + (v7 * v4[17])) + (v4[18] * a4));
  return fminf(fmaxf((v4[4] + ((((v5 * *v4) + (v6 * v4[1])) + (v7 * v4[2])) + (v4[3] * a4))) * v8, 0.0), 1.0) + (v5 * (1.0 - fminf(fmaxf(v8, 0.0), 1.0)));
}

float32x4_t sub_1D45F82F0@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>)
{
  v4 = vaddq_f32(a1[1], vmulq_n_f32(vsubq_f32(a2[1], a1[1]), a4));
  *a3 = vaddq_f32(*a1, vmulq_n_f32(vsubq_f32(*a2, *a1), a4));
  a3[1] = v4;
  v5 = vaddq_f32(a1[3], vmulq_n_f32(vsubq_f32(a2[3], a1[3]), a4));
  a3[2] = vaddq_f32(a1[2], vmulq_n_f32(vsubq_f32(a2[2], a1[2]), a4));
  a3[3] = v5;
  result = vaddq_f32(a1[4], vmulq_n_f32(vsubq_f32(a2[4], a1[4]), a4));
  a3[4] = result;
  return result;
}

uint64_t BubbleMaterial.hash(into:)()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x1DA6DB760](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1DA6DB760](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1DA6DB760](v2);
  }

  MEMORY[0x1DA6DB760](3);
  type metadata accessor for CGColor(0);
  sub_1D45F8920();
  return sub_1D4606860();
}

uint64_t BubbleMaterial.hashValue.getter()
{
  sub_1D4606FC0();
  sub_1D45F8978();
  sub_1D4606EC0();
  return sub_1D4607010();
}

uint64_t sub_1D45F8448()
{
  sub_1D4606FC0();
  sub_1D4606EC0();
  return sub_1D4607010();
}

uint64_t sub_1D45F84AC()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x1DA6DB760](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1DA6DB760](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1DA6DB760](v2);
  }

  MEMORY[0x1DA6DB760](3);
  type metadata accessor for CGColor(0);
  sub_1D45F8920();
  return sub_1D4606860();
}

uint64_t sub_1D45F853C()
{
  sub_1D4606FC0();
  sub_1D4606EC0();
  return sub_1D4607010();
}

uint64_t sub_1D45F859C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_1D45F7978(a1);
  if (*(a1 + 8) & 1) != 0 || v5 || ((sub_1D45FA770(&v38), !v38.i8[0]) ? (v7 = &unk_1F4FD8618) : (v7 = &unk_1F4FD8648), v8 = sub_1D45F9260(v7), (v10))
  {
    sub_1D45F92C0(&unk_1F4FD8678);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v14 = v8;
    v12 = v9;
  }

  *v36 = v5;
  sub_1D45F7BC0(a1, &v38);
  v15 = v38.i64[0];
  if (v47)
  {
    if (v47 == 1)
    {
      v37 = 1;
      sub_1D45F934C(&v38, v36);
      v16 = v15;
      v17 = 0;
      LODWORD(v18) = 0;
      v34 = 0;
      v35 = 0;
      v27 = 0;
      v19 = v37;
    }

    else
    {
      v20 = v38.i64[0];
      v17 = 0;
      LODWORD(v18) = 0;
      v34 = 0;
      v35 = 0;
      v27 = 0;
      v19 = 1;
    }

    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v19 = 0;
    v28 = v46;
    v29 = v45;
    v30 = v44;
    v31 = v43;
    v32 = v42;
    v33 = v41;
    v34 = v40;
    v18 = HIDWORD(v38.i64[0]);
    v17 = v38.i32[0];
    v27 = v39;
    v35 = v38.i64[1];
    v15 = 0;
  }

  *v36 = v5;
  v21 = sub_1D45F8BE4(a1);
  sub_1D45FA770(v36);

  result = sub_1D45F931C(&v38);
  v23 = v36[0] == 0;
  v24 = -1.0;
  if (v36[0])
  {
    v24 = 1.0;
  }

  *a2 = v17;
  *(a2 + 4) = v18;
  v25 = 0.33333;
  if (!v23)
  {
    v25 = -0.33333;
  }

  *(a2 + 8) = v35;
  *(a2 + 16) = v27;
  v26 = -0.8;
  if (!v23)
  {
    v26 = 0.375;
  }

  *(a2 + 24) = v34;
  *(a2 + 32) = v33;
  *(a2 + 40) = v32;
  *(a2 + 48) = v31;
  *(a2 + 56) = v30;
  *(a2 + 64) = v29;
  *(a2 + 72) = v28;
  *(a2 + 80) = v19;
  *(a2 + 88) = v6;
  *(a2 + 96) = v15;
  *(a2 + 112) = v14;
  *(a2 + 120) = v12;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = v21;
  *(a2 + 152) = xmmword_1D4608290;
  *(a2 + 168) = v24;
  *(a2 + 172) = xmmword_1D46082A0;
  *(a2 + 188) = v24;
  *(a2 + 192) = xmmword_1D4608200;
  *(a2 + 208) = v24;
  *(a2 + 212) = v25;
  *(a2 + 216) = v25;
  *(a2 + 220) = v25;
  *(a2 + 224) = v26;
  *(a2 + 228) = 0;
  return result;
}

uint64_t _s9BubbleKit0A8MaterialO2eeoiySbAC_ACtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      type metadata accessor for CGColor(0);
      sub_1D45F9444(v3);
      sub_1D45F9444(v2);
      sub_1D45F8920();
      v4 = sub_1D4606850();
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
LABEL_11:
    sub_1D45F9444(*a2);
    sub_1D45F9444(v2);
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
  v2 = 2;
LABEL_12:
  sub_1D45F9454(v2);
  sub_1D45F9454(v3);
  return v4 & 1;
}

unint64_t sub_1D45F8920()
{
  result = qword_1EC7D3C78;
  if (!qword_1EC7D3C78)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C78);
  }

  return result;
}

unint64_t sub_1D45F8978()
{
  result = qword_1EC7D3C80;
  if (!qword_1EC7D3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C80);
  }

  return result;
}

unint64_t sub_1D45F89D0()
{
  result = qword_1EC7D3C88;
  if (!qword_1EC7D3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BubbleKit0A8MaterialO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D45F8A48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D45F8AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D45F8AF4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D45F8B30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D45F8B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D45F8BE4(uint64_t a1)
{
  if (*v1 - 1 < 2)
  {
    goto LABEL_2;
  }

  if (*v1)
  {
    if (CGColorGetAlpha(*v1) <= 0.5)
    {
      return sub_1D45F8BE4(a1);
    }

    goto LABEL_2;
  }

  sub_1D45FA770(&v4);
  if (v4)
  {
LABEL_2:
    if (qword_1EE08A460 != -1)
    {
      swift_once();
    }

    return qword_1EE08A5C0;
  }

  if (qword_1EE08A470 != -1)
  {
    swift_once();
  }

  return qword_1EE08A5D0;
}

double sub_1D45F8CD0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, float a3@<S0>)
{
  *&v34 = sub_1D4606A80();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v7);
  v9 = &v35[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4606E60();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v35[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s13ContextSourceOMa(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D45FA770(v37);
  if (v37[0])
  {
    v19 = powf((a3 * -1.5) + 1.0, 3.0);
    if (v19 < 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v19;
    }

    v21 = (a3 * -0.3) + 0.75;
    v22 = 0.125 - (a3 * 0.125);
    v23 = (a3 * 0.0) + 0.8;
    sub_1D45FAAAC(v37);
    if (v37[0] == 1)
    {
      v21 = (v22 + v21) * 0.5;
    }
  }

  else
  {
    sub_1D45FAAAC(v37);
    if (v37[0])
    {
      v22 = 0.85;
    }

    else
    {
      v22 = 0.7;
    }

    v21 = 1.0;
    v23 = 0.5;
    v20 = 0.0;
  }

  v24 = _s7ContextVMa(0);
  sub_1D45F9384(a1 + *(v24 + 20), v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D45F93E8(v18);
    IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1D4606E50();
    IsReduceTransparencyEnabled = sub_1D4606A40();
    (*(v6 + 8))(v9, v34);
    (*(v11 + 8))(v14, v10);
  }

  v26 = (v22 + v21) * 0.5;
  v27 = v26 + -0.1;
  v28 = v26 + 0.1;
  if ((IsReduceTransparencyEnabled & 1) == 0)
  {
    v27 = v22;
    v28 = v21;
  }

  *v37 = v28 - v27;
  *&v37[4] = 0;
  *&v37[12] = 0;
  *&v37[16] = v27;
  *&v37[20] = 0x3F80000000000000uLL;
  *&v37[36] = 0;
  *&v37[44] = 0x3F80000000000000;
  memset(&v37[52], 0, 20);
  *&v37[72] = 1065353216;
  *v36 = xmmword_1D46081C0;
  *&v36[16] = xmmword_1D46081D0;
  *&v36[32] = xmmword_1D46081E0;
  v34 = xmmword_1D4608200;
  *&v36[48] = xmmword_1D46081F0;
  *&v36[64] = xmmword_1D4608200;
  CAColorMatrixConcat();
  memset(&v37[4], 0, 20);
  *v37 = 1065353216;
  *&v37[28] = 0;
  *&v37[24] = v23;
  *&v37[36] = 0.5 - (v23 * 0.5);
  *&v37[40] = 0;
  *&v37[48] = v23;
  *&v37[52] = 0;
  *&v37[56] = *&v37[36];
  *&v37[60] = xmmword_1D4608280;
  *&v37[76] = 0;
  *v36 = v35[0];
  *&v36[16] = v35[1];
  *&v36[32] = v35[2];
  *&v36[48] = v35[3];
  *&v36[64] = v35[4];
  CAColorMatrixConcat();
  *v37 = xmmword_1D4608210;
  *&v37[16] = xmmword_1D4608220;
  *&v37[32] = xmmword_1D4608230;
  *&v37[48] = xmmword_1D4608240;
  *&v37[64] = v34;
  *v36 = *&v35[0];
  *&v36[8] = (v20 * 0.063) + *(v35 + 2);
  *&v36[12] = *(v35 + 12);
  *&v36[28] = *(&v35[1] + 12);
  *&v36[44] = *(&v35[2] + 12);
  *&v36[60] = *(&v35[3] + 12);
  *&v36[76] = HIDWORD(v35[4]);
  CAColorMatrixConcat();
  result = *v35;
  v30 = v35[1];
  v31 = v35[2];
  v32 = v35[3];
  v33 = v35[4];
  *a2 = v35[0];
  a2[1] = v30;
  a2[2] = v31;
  a2[3] = v32;
  a2[4] = v33;
  return result;
}

uint64_t sub_1D45F9260(uint64_t a1)
{
  if (*(a1 + 16) >= 4uLL)
  {
    v2 = *(a1 + 32);

    return v2;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D45F92C0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D45F9384(uint64_t a1, uint64_t a2)
{
  v4 = _s13ContextSourceOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D45F93E8(uint64_t a1)
{
  v2 = _s13ContextSourceOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D45F9444(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1D45F9454(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1D45F9464(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_1D45F2DE0(v27, v14);
    sub_1D45F2DE0(v32, v14);
    v12 = _s9BubbleKit0A14MaterialFilterO2eeoiySbAC_ACtFZ_0(&v21, &v15);
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_1D45F99C0(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_1D45F99C0(v39);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t BubbleMaterialConfiguration.Resolved.outlineColorMatrixFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v10 = *(v1 + 80);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 112);
  v6 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D45F2DE0(v9, v8);
}

uint64_t BubbleMaterialConfiguration.Resolved.caFilters.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1D4606F80();
    v4 = v1 + 32;
    do
    {
      BubbleMaterialFilter.caFilter.getter();
      sub_1D4606F60();
      sub_1D4606F90();
      sub_1D4606FA0();
      sub_1D4606F70();
      v4 += 88;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

BOOL _s9BubbleKit0A21MaterialConfigurationV8ResolvedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v4;
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v5 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v5;
  v6 = *a2;
  v7 = *(a2 + 16);
  v41 = *(a2 + 112);
  v8 = *(a2 + 96);
  v39 = *(a2 + 80);
  v40 = v8;
  v9 = *(a2 + 64);
  v10 = v2 == v6;
  v11 = *(a2 + 32);
  v37 = *(a2 + 48);
  v38 = v9;
  v36 = v11;
  if (v10 && (type metadata accessor for CGColor(0), sub_1D45F8920(), (sub_1D4606850() & 1) != 0) && (sub_1D45F9464(v3, v7) & 1) != 0 && (sub_1D4606850() & 1) != 0)
  {
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    v16 = v38;
    v17 = v39;
    v18 = v40;
    v19 = v41;
    v14 = v36;
    v15 = v37;
    sub_1D45F2DE0(&v30, v28);
    sub_1D45F2DE0(&v36, v28);
    v12 = _s9BubbleKit0A14MaterialFilterO2eeoiySbAC_ACtFZ_0(&v20, &v14);
    v26[2] = v16;
    v26[3] = v17;
    v26[4] = v18;
    v27 = v19;
    v26[0] = v14;
    v26[1] = v15;
    sub_1D45F99C0(v26);
    v28[2] = v22;
    v28[3] = v23;
    v28[4] = v24;
    v29 = v25;
    v28[0] = v20;
    v28[1] = v21;
    sub_1D45F99C0(v28);
  }

  else
  {
    return 0;
  }

  return v12;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D45F9908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D45F9950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 BubblePath.Configuration.init(radius:tailStyle:cornerStyle:)@<Q0>(__n128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *a2;
  *a3 = a4;
  result = *a1;
  *(a3 + 8) = *a1;
  *(a3 + 24) = v4;
  return result;
}

__n128 BubblePath.Configuration.tailStyle.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 BubblePath.Configuration.tailStyle.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t BubblePath.TailStyle.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *v0 >> 62;
  if (v3)
  {
    if (v3 != 1)
    {
      return MEMORY[0x1DA6DB760](2);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1DA6DB760](v4);
  MEMORY[0x1DA6DB760](v2 & 1);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1DA6DB780](v5);
}

uint64_t BubblePath.TailStyle.hashValue.getter()
{
  sub_1D4606FC0();
  BubblePath.TailStyle.hash(into:)();
  return sub_1D4607010();
}

uint64_t sub_1D45F9BB0()
{
  sub_1D4606FC0();
  BubblePath.TailStyle.hash(into:)();
  return sub_1D4607010();
}

uint64_t sub_1D45F9C00()
{
  sub_1D4606FC0();
  BubblePath.TailStyle.hash(into:)();
  return sub_1D4607010();
}

BOOL _s9BubbleKit0A4PathV9TailStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = *(a2 + 1);
  v4 = *a1 >> 62;
  if (!v4)
  {
    if (v3 >> 62)
    {
      return 0;
    }

LABEL_6:
    if (((v3 ^ *a1) & 1) == 0)
    {
      return *(a1 + 8) == v2;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v3 >> 62 != 1)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return v3 >> 62 == 2 && v3 == 0x8000000000000000 && *&v2 == 0;
}

uint64_t _s9BubbleKit0A4PathV13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  v6 = *(a1 + 8);
  v8 = *(a2 + 8);
  v9 = v6;
  if (_s9BubbleKit0A4PathV9TailStyleO2eeoiySbAE_AEtFZ_0(&v9, &v8))
  {
    return v4 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D45F9DA4()
{
  result = qword_1EC7D3C90;
  if (!qword_1EC7D3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3C90);
  }

  return result;
}

unint64_t sub_1D45F9E2C()
{
  result = qword_1EC7D3CA8;
  if (!qword_1EC7D3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3CA8);
  }

  return result;
}

unint64_t sub_1D45F9E84()
{
  result = qword_1EC7D3CB0;
  if (!qword_1EC7D3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3CB0);
  }

  return result;
}

uint64_t sub_1D45F9F08(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D45F9F60()
{
  result = qword_1EC7D3CC8;
  if (!qword_1EC7D3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3CC8);
  }

  return result;
}

unint64_t sub_1D45F9FB8()
{
  result = qword_1EC7D3CD0;
  if (!qword_1EC7D3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3CD0);
  }

  return result;
}

uint64_t sub_1D45FA00C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D45FA05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s9TailStyleOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t _s9TailStyleOwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = 2 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D45FA144(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 1 | (2 * *(a1 + 8))) + 2;
  }
}

unint64_t sub_1D45FA234()
{
  result = sub_1D4606E60();
  if (v1 <= 0x3F)
  {
    result = sub_1D45FA2A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D45FA2A8()
{
  result = qword_1EE08A458;
  if (!qword_1EE08A458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08A458);
  }

  return result;
}

uint64_t sub_1D45FA33C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D45FA374()
{
  result = _s13ContextSourceOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D45FA3F0(uint64_t a1)
{
  v30 = a1;
  v1 = sub_1D46068C0();
  v29 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D4606A80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4606E60();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s13ContextSourceOMa(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = _s7ContextVMa(0);
  sub_1D45F9384(v30 + *(v19 + 20), v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = v11;
    (*(v11 + 32))(v14, v18, v10);
    sub_1D4606E50();
    sub_1D4606A10();
    (*(v6 + 8))(v9, v5);
    v22 = v29;
    v23 = (*(v29 + 88))(v4, v1);
    if (v23 != *MEMORY[0x1E697DBB8])
    {
      if (v23 == *MEMORY[0x1E697DBA8])
      {
        v24 = 2;
LABEL_8:
        v20 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        (*(v21 + 8))(v14, v10);
        goto LABEL_9;
      }

      (*(v22 + 8))(v4, v1);
    }

    v24 = 1;
    goto LABEL_8;
  }

  v20 = *v18;
LABEL_9:
  v25 = [v31 resolvedColorWithTraitCollection_];
  v26 = [v25 CGColor];

  return v26;
}

void sub_1D45FA770(BOOL *a1@<X8>)
{
  v30 = a1;
  v2 = sub_1D46068C0();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4606A80();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D4606E60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s13ContextSourceOMa(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = _s7ContextVMa(0);
  sub_1D45F9384(v1 + *(v20 + 20), v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v19;
    v22 = [*v19 userInterfaceStyle];

    *v30 = v22 == 2;
  }

  else
  {
    v23 = v30;
    (*(v12 + 32))(v15, v19, v11);
    sub_1D4606E50();
    sub_1D4606A10();
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
    v25 = v28;
    v24 = v29;
    v26 = (*(v28 + 88))(v5, v29);
    if (v26 == *MEMORY[0x1E697DBB8])
    {
      *v23 = 0;
    }

    else if (v26 == *MEMORY[0x1E697DBA8])
    {
      *v23 = 1;
    }

    else
    {
      *v23 = 0;
      (*(v25 + 8))(v5, v24);
    }
  }
}

void sub_1D45FAAAC(_BYTE *a1@<X8>)
{
  v31 = a1;
  v30 = sub_1D4606A80();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D4606AC0();
  v29 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v7);
  v12 = &v28 - v11;
  v13 = sub_1D4606E60();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s13ContextSourceOMa(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = _s7ContextVMa(0);
  sub_1D45F9384(v1 + *(v22 + 20), v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    sub_1D4606E50();
    sub_1D4606A20();
    (*(v28 + 8))(v4, v30);
    (*(v14 + 8))(v17, v13);
    v26 = v29;
    (*(v29 + 32))(v9, v12, v5);
    v27 = (*(v26 + 88))(v9, v5);
    if (v27 != *MEMORY[0x1E697F600])
    {
      if (v27 == *MEMORY[0x1E697F608])
      {
        LOBYTE(v25) = 1;
        goto LABEL_9;
      }

      (*(v26 + 8))(v9, v5);
    }

LABEL_8:
    LOBYTE(v25) = 0;
    goto LABEL_9;
  }

  v23 = *v21;
  v24 = [*v21 accessibilityContrast];

  if (v24 + 1 > 2)
  {
    goto LABEL_8;
  }

  v25 = 4u >> ((v24 + 1) & 7);
LABEL_9:
  *v31 = v25 & 1;
}

void BubblePath.strokeDashLength(forDesiredDashLength:)()
{
  v1 = *(v0 + 48);
  v3[2] = *(v0 + 32);
  v3[3] = v1;
  v4 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3[0] = *v0;
  v3[1] = v2;
  sub_1D45FAF04(v3);
}

double BubblePath.strokeDashPhase(forDashLength:)(double a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 48);
  v14 = *(v1 + 32);
  v15 = v4;
  v5 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v5;
  v6 = *(v1 + 48);
  v11[2] = v14;
  v11[3] = v6;
  v16 = *(v1 + 64);
  v12 = *(v1 + 64);
  v11[0] = v13[0];
  v11[1] = v3;
  sub_1D45F4CC8(v13, v10);
  sub_1D45FB0F0(v11, v13, a1);
  v8 = v7;
  sub_1D45F3FB8(v13);
  return v8;
}

void sub_1D45FAF04(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (!(v6 >> 62))
  {
    if (v7 != 0.0 && v7 != 1.0)
    {
      v10 = *(a1 + 40) & 1;
      v20 = *(a1 + 32);
      goto LABEL_14;
    }

LABEL_13:
    sub_1D45F47D8(1, *(a1 + 64));
    return;
  }

  if (v6 >> 62 != 1)
  {
    goto LABEL_13;
  }

  if (v7 == 0.0 || v7 == 1.0)
  {
    goto LABEL_13;
  }

  v20 = *(a1 + 32);
  v10 = v6 & 1 | 0x4000000000000000;
LABEL_14:
  v21 = *&v10;
  v22 = 0;
  LOBYTE(v23) = v8;
  *v17 = v2;
  *&v17[1] = v1;
  *&v17[2] = v4;
  *&v17[3] = v3;
  *&v17[4] = v5;
  v17[5] = v10;
  v17[6] = 0;
  v18 = v8;
  v19 = sub_1D45EC784(&v20, v2, v1, v4, v3);
  v20 = v5;
  v21 = *&v10;
  v22 = 0x3FF0000000000000;
  LOBYTE(v23) = v8;
  v12 = sub_1D45EC784(&v20, v2, v1, v4, v3);
  v20 = v2;
  v21 = v1;
  v22 = *&v4;
  v23 = v3;
  v24 = v5;
  v25 = v10;
  v26 = 0x3FF0000000000000;
  v27 = v8;
  v28 = v12;
  sub_1D45F47D8(1, v19);
  sub_1D45F3FB8(v17);
  sub_1D45F47D8(1, v12);
  sub_1D45F3FB8(&v20);
  __asm { FMOV            V1.2D, #0.5 }
}

void sub_1D45FB0F0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  if (v9 >> 62)
  {
    if (v9 >> 62 == 1 && v10 != 0.0 && v10 != 1.0)
    {
      v13 = v11 & 1;
      v29 = *(a1 + 32);
      v14 = v9 & 1 | 0x4000000000000000;
      goto LABEL_15;
    }
  }

  else if (v10 != 0.0 && v10 != 1.0)
  {
    v13 = v11 & 1;
    v29 = *(a1 + 32);
    v14 = v9 & 1;
LABEL_15:
    v30 = *&v14;
    v31 = 0;
    LOBYTE(v32) = v13;
    *v26 = v5;
    *&v26[1] = v4;
    *&v26[2] = v7;
    *&v26[3] = v6;
    *&v26[4] = v8;
    v26[5] = v14;
    v26[6] = 0;
    v27 = v13;
    v28 = sub_1D45EC784(&v29, v5, v4, v7, v6);
    v29 = v8;
    v30 = *&v14;
    v31 = 0x3FF0000000000000;
    LOBYTE(v32) = v13;
    v18 = sub_1D45EC784(&v29, v5, v4, v7, v6);
    v29 = v5;
    v30 = v4;
    v31 = *&v7;
    v32 = v6;
    v33 = v8;
    v34 = v14;
    v35 = 0x3FF0000000000000;
    v36 = v13;
    *&v37[7] = v18;
    v19 = *(a2 + 40) >> 62;
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = sub_1D45F2190();
        sub_1D45F3FB8(v26);
        v21 = a3 + a3;
        fmod(v20, a3 + a3);
        v22 = sub_1D45F2190();
        sub_1D45F3FB8(&v29);
        fmod(v22, v21);
      }

      else
      {
        sub_1D45F3FB8(v26);
        sub_1D45F3FB8(&v29);
      }
    }

    else
    {
      v23 = sub_1D45F2190();
      sub_1D45F3FB8(v26);
      v24 = a3 + a3;
      fmod(v23, v24);
      v25 = sub_1D45F2190();
      sub_1D45F3FB8(&v29);
      fmod(v25, v24);
    }

    return;
  }

  if ((*(a2 + 40) >> 62) <= 1)
  {
    v29 = *a1;
    v30 = v4;
    v31 = *&v7;
    v32 = v6;
    v33 = v8;
    v34 = v9;
    v35 = *&v10;
    v36 = v11;
    *v37 = *(a1 + 57);
    *&v37[7] = *(a1 + 64);
    v16 = sub_1D45F2190();
    fmod(v16, a3 + a3);
  }
}

uint64_t platformSpecificValue<A>(_:default:iOS:macOS:watchOS:visionOS:)@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a2;
  v29 = a1;
  v30 = a4;
  v9 = sub_1D4606F40();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15, v12);
  v18 = v28 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v16);
  v22 = v28 - v21;
  v23 = *(a8 - 8);
  v24 = (*(v23 + 56))(v28 - v21, 1, 1, a8, v20);
  a3(v24);
  v25 = *(v10 + 8);
  v25(v22, v9);
  (*(v10 + 32))(v22, v18, v9);
  (*(v10 + 16))(v14, v22, v9);
  if ((*(v23 + 48))(v14, 1, a8) == 1)
  {
    v26 = (v25)(v14, v9);
    v29(v26);
    return (v25)(v22, v9);
  }

  else
  {
    v25(v22, v9);
    return (*(v23 + 32))(v30, v14, a8);
  }
}

char *sub_1D45FB664()
{
  v26 = v0[2];
  v27 = v0[3];
  v28 = v0[4];
  v24 = *v0;
  v25 = v0[1];
  v1 = *(v0 + 80);
  v2 = *(v0 + 11);
  v3 = v0[7];
  v4 = *(v0 + 120);
  v5 = *(v0 + 16);
  v6 = *(v0 + 136);
  result = sub_1D45FB96C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(result + 2);
  v8 = *(result + 3);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    result = sub_1D45FB96C((v8 > 1), v9 + 1, 1, result);
  }

  *(result + 2) = v10;
  v11 = &result[88 * v9];
  *(v11 + 4) = v2;
  v11[112] = 0;
  if ((v6 & 1) == 0)
  {
    v12 = v4;
    v13 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B78);
    v14 = swift_allocObject();
    result = v13;
    *(v14 + 16) = xmmword_1D4608810;
    *(v14 + 32) = vcvtq_f64_f32(v3);
    *(v14 + 48) = vcvtq_f64_f32(v12);
    v15 = *(v13 + 3);
    if (v10 >= v15 >> 1)
    {
      result = sub_1D45FB96C((v15 > 1), v9 + 2, 1, v13);
    }

    *(result + 2) = v9 + 2;
    v16 = &result[88 * v10];
    *(v16 + 4) = v14;
    *(v16 + 5) = v5;
    *(v16 + 5) = v22;
    *(v16 + 6) = v23;
    *(v16 + 3) = v20;
    *(v16 + 4) = v21;
    v16[112] = 1;
  }

  if ((v1 & 1) == 0)
  {
    v18 = *(result + 2);
    v17 = *(result + 3);
    if (v18 >= v17 >> 1)
    {
      result = sub_1D45FB96C((v17 > 1), v18 + 1, 1, result);
    }

    *(result + 2) = v18 + 1;
    v19 = &result[88 * v18];
    *(v19 + 2) = v24;
    *(v19 + 5) = v27;
    *(v19 + 6) = v28;
    *(v19 + 3) = v25;
    *(v19 + 4) = v26;
    v19[112] = 2;
  }

  return result;
}

char *sub_1D45FB868(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D45FB96C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 __swift_memcpy232_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1D45FBADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D45FBB24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D45FBBD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 65))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 0x15;
  v5 = v3 - 21;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D45FBC14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 20;
    }
  }

  return result;
}

void sub_1D45FBC6C(uint64_t a1)
{
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;
    v4 = v1[1];
    v20 = v1[4];
    v21 = a1;
    v18 = v1[6];
    v19 = v1[5];
    v16 = v1[2];
    v17 = v1[7];
    v15 = v1[3];
    v5 = 0.0;
    v6 = 1;
    v22 = v4;
    v23 = v3;
    while (1)
    {
      v7 = v4;
      v8 = v3;
      v9 = v6 / v21;
      v10 = pow(1.0 - v9, 3.0);
      v11 = v9 * ((1.0 - v9) * (1.0 - v9) * 3.0);
      v12 = v9 * v9 * ((1.0 - v9) * 3.0);
      v13 = pow(v9, 3.0);
      v3 = v16 * v13 + v18 * v12 + v23 * v10 + v20 * v11;
      v4 = v15 * v13 + v17 * v12 + v22 * v10 + v19 * v11;
      v5 = v5 + hypot(v8 - v3, v7 - v4);
      if (a1 == v6)
      {
        break;
      }

      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return;
      }
    }
  }
}

double BubblePath.stretchableImageCornerInsets.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v48 = *(v0 + 40);
  v6 = *(v0 + 56);
  v45 = v1;
  v46 = v2;
  *v47 = v3;
  *&v47[1] = v4;
  *&v47[2] = v5;
  LOBYTE(v49) = v6;
  *(&v49 + 1) = *(v0 + 57);
  *(&v49 + 1) = *(v0 + 64);
  v39 = BubblePath.tailInsets.getter();
  v8 = UIEdgeInsetsInsetRect(v1, v2, v3, v4, v39, v7);
  v12 = v10 * 0.5;
  if (v10 * 0.5 >= v11 * 0.5)
  {
    v12 = v11 * 0.5;
  }

  if (v12 >= v5)
  {
    v12 = v5;
  }

  if (v6)
  {
    v13 = v12;
  }

  else
  {
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v38 = *&v12;
    Width = CGRectGetWidth(*&v8);
    v52.origin.x = v14;
    v52.origin.y = v15;
    v52.size.width = v16;
    v52.size.height = v17;
    v18.f64[0] = CGRectGetHeight(v52);
    v18.f64[1] = Width;
    __asm { FMOV            V1.2D, #0.5 }

    v24 = vdivq_f64(vaddq_f64(vdivq_f64(vmulq_f64(v18, _Q1), vdupq_lane_s64(v38, 0)), vdupq_n_s64(0xBFF875696E58A32FLL)), vdupq_n_s64(0xBFE0EAD2DCB1465ELL));
    __asm { FMOV            V1.2D, #1.0 }

    v26 = vminnmq_f64(v24, _Q1);
    v27 = vmovn_s64(vcgezq_f64(v26));
    if (v27.i8[4])
    {
      v28 = v26.f64[1];
    }

    else
    {
      v28 = 0.0;
    }

    v45 = *&v38;
    v46 = v28;
    *&v48 = &type metadata for CircularCurveParameters;
    *(&v48 + 1) = &off_1F4FD9C10;
    v47[0] = v38;
    if (v27.i8[0])
    {
      v29 = v26.f64[0];
    }

    else
    {
      v29 = 0.0;
    }

    v50 = &type metadata for IdealContinuousCurveParameters;
    v51 = &off_1F4FD9BB0;
    *&v49 = v38;
    v40[0] = v38;
    *&v40[1] = v29;
    v41[3] = &type metadata for CircularCurveParameters;
    v41[4] = &off_1F4FD9C10;
    v41[0] = v38;
    v43 = &type metadata for IdealContinuousCurveParameters;
    v44 = &off_1F4FD9BB0;
    v42[0] = v38;
    __swift_project_boxed_opaque_existential_1(v47, &type metadata for CircularCurveParameters);
    v30 = off_1F4FD9C68[0];
    off_1F4FD9C68[0]();
    v31 = v50;
    v32 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    (v32[11])(v31, v32);
    __swift_project_boxed_opaque_existential_1(v41, &type metadata for CircularCurveParameters);
    v33 = v30();
    v34 = v43;
    v35 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v13 = v29 * v33 + (1.0 - v29) * (v35[11])(v34, v35);
    sub_1D45FC0E8(v40);
    sub_1D45FC0E8(&v45);
  }

  return v39 + v13;
}

double BubblePath.stretchableCornerContentsImageCornerRadius.getter()
{
  result = BubblePath.stretchableImageCornerInsets.getter();
  if (v1 <= v3)
  {
    v1 = v3;
  }

  if (v1 > result)
  {
    result = v1;
  }

  if (result <= v2)
  {
    return v2;
  }

  return result;
}

double BubblePath.stretchableCornerContentsImageAdditionalPadding.getter()
{
  v0 = BubblePath.stretchableImageCornerInsets.getter();
  v1 = BubblePath.stretchableImageCornerInsets.getter();
  if (v2 <= v4)
  {
    v2 = v4;
  }

  if (v2 > v1)
  {
    v1 = v2;
  }

  if (v1 > v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  return v5 - v0;
}

uint64_t BubblePath.minimizedStretchableBubblePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 56);
  v17 = *(v1 + 4);
  v4 = v17;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21[0] = *(v1 + 57);
  *(v21 + 7) = *(v1 + 8);
  v8 = BubblePath.stretchableImageCornerInsets.getter();
  v11 = v9 + v10;
  v13 = v8 + v12;
  *&v15 = v17;
  *(&v15 + 1) = v5;
  *&v16 = v6;
  BYTE8(v16) = v7 & 1;
  result = sub_1D45EC784(&v15, 0.0, 0.0, v9 + v10, v8 + v12);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7 & 1;
  *(a1 + 64) = result;
  return result;
}

uint64_t BubbleViewConfiguration.init(pathConfiguration:style:contentInsetBehavior:dynamicTypeSize:scaleBubblePaddingWithFont:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 24);
  v10 = *a3;
  *a6 = *a1;
  *(a6 + 8) = *(a1 + 8);
  *(a6 + 24) = v9;
  v11 = *(a2 + 112);
  *(a6 + 128) = *(a2 + 96);
  *(a6 + 144) = v11;
  *(a6 + 160) = *(a2 + 128);
  v12 = *(a2 + 48);
  *(a6 + 64) = *(a2 + 32);
  *(a6 + 80) = v12;
  v13 = *(a2 + 80);
  *(a6 + 96) = *(a2 + 64);
  *(a6 + 112) = v13;
  v14 = *(a2 + 16);
  *(a6 + 32) = *a2;
  *(a6 + 48) = v14;
  *(a6 + 168) = v10;
  v15 = type metadata accessor for BubbleViewConfiguration();
  v16 = *(v15 + 28);
  v17 = sub_1D4606990();
  result = (*(*(v17 - 8) + 32))(a6 + v16, a4, v17);
  *(a6 + *(v15 + 32)) = a5;
  return result;
}

uint64_t type metadata accessor for BubbleViewConfiguration()
{
  result = qword_1EC7D3D70;
  if (!qword_1EC7D3D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 BubbleViewConfiguration.pathConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

__n128 BubbleViewConfiguration.pathConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 24);
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t BubbleViewConfiguration.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BubbleViewConfiguration() + 28);
  v4 = sub_1D4606990();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BubbleViewConfiguration.dynamicTypeSize.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BubbleViewConfiguration() + 28);
  v4 = sub_1D4606990();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BubbleViewConfiguration.scaleBubblePaddingWithFont.setter(char a1)
{
  result = type metadata accessor for BubbleViewConfiguration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

double static BubbleViewConfiguration.defaultSentBlue.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EC7D3A30 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EC7D3CE8;
  v3 = MEMORY[0x1E697E3E0];
  *(a1 + 56) = MEMORY[0x1E697E3F0];
  *(a1 + 64) = v3;
  v4 = swift_allocObject();
  *(a1 + 32) = v4;
  *(v4 + 16) = v2;
  v5 = *(&xmmword_1EC7D3CE8 + 8);
  *(v4 + 40) = unk_1EC7D3D00;
  *(v4 + 24) = v5;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 256;
  *(a1 + 122) = 0;

  v6 = sub_1D4606CD0();
  v12[3] = MEMORY[0x1E69815C0];
  v12[4] = MEMORY[0x1E6981568];
  v12[0] = v6;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  sub_1D45F50B0(v12, a1 + 128);
  v7 = type metadata accessor for BubbleViewConfiguration();
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x1E697E6E8];
  v10 = sub_1D4606990();
  (*(*(v10 - 8) + 104))(a1 + v8, v9, v10);
  *a1 = 0x4034000000000000;
  result = 2.0;
  *(a1 + 8) = xmmword_1D46088B0;
  *(a1 + 24) = 0;
  *(a1 + 168) = 0;
  *(a1 + *(v7 + 32)) = 1;
  return result;
}

double static BubbleViewConfiguration.defaultReceivedGray.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14 = sub_1D45FD324;
  v15 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D45FDDA0;
  v13 = &block_descriptor;
  v3 = _Block_copy(v12);
  [v2 initWithDynamicProvider_];
  _Block_release(v3);

  v4 = sub_1D4606C80();
  v5 = MEMORY[0x1E6981568];
  *(a1 + 56) = MEMORY[0x1E69815C0];
  *(a1 + 64) = v5;
  *(a1 + 32) = v4;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 119) = 0;
  v6 = sub_1D4606B10();
  v13 = MEMORY[0x1E697FE80];
  v14 = MEMORY[0x1E697FE70];
  LODWORD(v12[0]) = v6;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  sub_1D45F50B0(v12, a1 + 128);
  v7 = type metadata accessor for BubbleViewConfiguration();
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x1E697E6E8];
  v10 = sub_1D4606990();
  (*(*(v10 - 8) + 104))(a1 + v8, v9, v10);
  *a1 = 0x4034000000000000;
  result = 2.0;
  *(a1 + 8) = xmmword_1D46088C0;
  *(a1 + 24) = 0;
  *(a1 + 168) = 0;
  *(a1 + *(v7 + 32)) = 1;
  return result;
}

uint64_t static Color.lightGrayBubble.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v3[4] = sub_1D45FD324;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1D45FDDA0;
  v3[3] = &block_descriptor_3;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return sub_1D4606C80();
}

double sub_1D45FCB60@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D4606890();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, a2);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_1D4606D10();
  v13 = MEMORY[0x1E69815C0];
  v14 = MEMORY[0x1E6981568];
  *(a3 + 56) = MEMORY[0x1E69815C0];
  *(a3 + 64) = v14;
  *(a3 + 32) = v12;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 119) = 0;
  v15 = sub_1D4606CD0();
  v22[3] = v13;
  v22[4] = v14;
  v22[0] = v15;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 128) = 0u;
  sub_1D45F50B0(v22, a3 + 128);
  v16 = type metadata accessor for BubbleViewConfiguration();
  v17 = *(v16 + 28);
  v18 = *MEMORY[0x1E697E6E8];
  v19 = sub_1D4606990();
  (*(*(v19 - 8) + 104))(a3 + v17, v18, v19);
  *a3 = 0x4034000000000000;
  result = 2.0;
  *(a3 + 8) = xmmword_1D46088B0;
  *(a3 + 24) = 0;
  *(a3 + 168) = 0;
  *(a3 + *(v16 + 32)) = 1;
  return result;
}

double static BubbleViewConfiguration.inCallSentGray.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D4606E80();
  v3 = MEMORY[0x1E6981AD0];
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
  __swift_allocate_boxed_opaque_existential_1((a1 + 32));
  sub_1D4606DD0();
  *(a1 + 119) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  v4 = sub_1D4606B10();
  v11 = MEMORY[0x1E697FE80];
  v12 = MEMORY[0x1E697FE70];
  v10[0] = v4;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  sub_1D45F50B0(v10, a1 + 128);
  v5 = type metadata accessor for BubbleViewConfiguration();
  v6 = *(v5 + 28);
  v7 = *MEMORY[0x1E697E6E8];
  v8 = sub_1D4606990();
  (*(*(v8 - 8) + 104))(a1 + v6, v7, v8);
  *a1 = 0x4034000000000000;
  *&result = 1;
  *(a1 + 8) = xmmword_1D46088D0;
  *(a1 + 24) = 0;
  *(a1 + 168) = 0;
  *(a1 + *(v5 + 32)) = 1;
  return result;
}

double static BubbleViewConfiguration.inCallReceivedGray.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D4606CC0();
  v3 = MEMORY[0x1E6981568];
  *(a1 + 56) = MEMORY[0x1E69815C0];
  *(a1 + 64) = v3;
  *(a1 + 32) = v2;
  v4 = sub_1D4606E80();
  v5 = MEMORY[0x1E6981AD0];
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
  __swift_allocate_boxed_opaque_existential_1((a1 + 72));
  sub_1D4606DD0();
  *(a1 + 112) = 0x4000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  v6 = sub_1D4606B10();
  v13 = MEMORY[0x1E697FE80];
  v14 = MEMORY[0x1E697FE70];
  v12[0] = v6;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  sub_1D45F50B0(v12, a1 + 128);
  v7 = type metadata accessor for BubbleViewConfiguration();
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x1E697E6E8];
  v10 = sub_1D4606990();
  (*(*(v10 - 8) + 104))(a1 + v8, v9, v10);
  *a1 = 0x4034000000000000;
  result = 0.0;
  *(a1 + 8) = xmmword_1D46088E0;
  *(a1 + 24) = 0;
  *(a1 + 168) = 0;
  *(a1 + *(v7 + 32)) = 1;
  return result;
}

uint64_t static BubbleViewConfiguration.materialSentBlue(onBackgroundWithAverageLuminance:percentTailVisible:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v6 = sub_1D4606E80();
  v7 = MEMORY[0x1E6981AD0];
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  __swift_allocate_boxed_opaque_existential_1((a2 + 32));
  sub_1D45FDEBC();
  sub_1D4606E70();
  *(a2 + 119) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  v13[3] = MEMORY[0x1E69815C0];
  v13[4] = MEMORY[0x1E6981568];
  v13[0] = a1;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;

  sub_1D45F50B0(v13, a2 + 128);
  v8 = type metadata accessor for BubbleViewConfiguration();
  v9 = *(v8 + 28);
  v10 = *MEMORY[0x1E697E6E8];
  v11 = sub_1D4606990();
  result = (*(*(v11 - 8) + 104))(a2 + v9, v10, v11);
  *a2 = 0x4034000000000000;
  *(a2 + 8) = 0x4000000000000001;
  *(a2 + 16) = a3;
  *(a2 + 24) = 0;
  *(a2 + 168) = 0;
  *(a2 + *(v8 + 32)) = 1;
  return result;
}

uint64_t static BubbleViewConfiguration.materialReceivedGray(onBackgroundWithAverageLuminance:percentTailVisible:textColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v6 = sub_1D4606E80();
  v7 = MEMORY[0x1E6981AD0];
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  __swift_allocate_boxed_opaque_existential_1((a2 + 32));
  sub_1D45FDF10();
  sub_1D4606E70();
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  __swift_allocate_boxed_opaque_existential_1((a2 + 72));
  sub_1D4606DD0();
  *(a2 + 112) = 0x3FF8000000000000;
  *(a2 + 120) = 0;
  v8 = MEMORY[0x1E69815C0];
  *(a2 + 122) = 0;
  v14[3] = v8;
  v14[4] = MEMORY[0x1E6981568];
  v14[0] = a1;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;

  sub_1D45F50B0(v14, a2 + 128);
  v9 = type metadata accessor for BubbleViewConfiguration();
  v10 = *(v9 + 28);
  v11 = *MEMORY[0x1E697E6E8];
  v12 = sub_1D4606990();
  result = (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  *a2 = 0x4034000000000000;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = a3;
  *(a2 + 24) = 0;
  *(a2 + 168) = 0;
  *(a2 + *(v9 + 32)) = 1;
  return result;
}

id static UIColor.lightGrayBubble.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4[4] = sub_1D45FD324;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D45FDDA0;
  v4[3] = &block_descriptor_6;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

id sub_1D45FD324(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 secondarySystemFillColor];
  v4 = [v3 resolvedColorWithTraitCollection_];

  v5 = [v2 systemBackgroundColor];
  v6 = [v5 resolvedColorWithTraitCollection_];

  v7 = sub_1D45FD3F0(v4);
  return v7;
}

id sub_1D45FD3F0(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0.0;
  v11[0] = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  [v1 getRed:v11 green:&v10 blue:&v9 alpha:&v8];
  v6 = 0.0;
  v7 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  [a1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];
  return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v7 * v4 + v11[0] * v8 * (1.0 - v4) green:v4 * v6 + (1.0 - v4) * (v8 * v10) blue:v4 * v5 + (1.0 - v4) * (v8 * v9) alpha:v4 + v8 * (1.0 - v4)];
}

double sub_1D45FD52C()
{
  v0 = sub_1D4606890();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3D80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D46088F0;
  if (qword_1EC7D3A50 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC7D6020);
  v7 = *(v1 + 16);
  v7(v4, v6, v0);
  *(v5 + 32) = sub_1D4606D10();
  if (qword_1EC7D3A58 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EC7D6038);
  v7(v4, v8, v0);
  *(v5 + 40) = sub_1D4606D10();
  sub_1D4606EA0();
  sub_1D4606EB0();
  MEMORY[0x1DA6DB550](v5);
  sub_1D4606980();
  result = *&v11;
  xmmword_1EC7D3CE8 = v11;
  unk_1EC7D3CF8 = v12;
  qword_1EC7D3D08 = v13;
  return result;
}

uint64_t static LinearGradient.blueBubbleGradient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7D3A30 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_1EC7D3CE8;
  *(a1 + 8) = *(&xmmword_1EC7D3CE8 + 8);
  *(a1 + 24) = unk_1EC7D3D00;
}

double sub_1D45FD7BC()
{
  v0 = sub_1D4606890();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3D80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D46088F0;
  if (qword_1EC7D3A70 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC7D6080);
  v7 = *(v1 + 16);
  v7(v4, v6, v0);
  *(v5 + 32) = sub_1D4606D10();
  if (qword_1EC7D3A78 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EC7D6098);
  v7(v4, v8, v0);
  *(v5 + 40) = sub_1D4606D10();
  sub_1D4606EA0();
  sub_1D4606EB0();
  MEMORY[0x1DA6DB550](v5);
  sub_1D4606980();
  result = *&v11;
  xmmword_1EC7D3D10 = v11;
  unk_1EC7D3D20 = v12;
  qword_1EC7D3D30 = v13;
  return result;
}

uint64_t static LinearGradient.greenBubbleGradient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7D3A38 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_1EC7D3D10;
  *(a1 + 8) = *(&xmmword_1EC7D3D10 + 8);
  *(a1 + 24) = unk_1EC7D3D28;
}

double sub_1D45FDA4C()
{
  v0 = sub_1D4606890();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3D80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D46088F0;
  if (qword_1EC7D3A60 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC7D6050);
  v7 = *(v1 + 16);
  v7(v4, v6, v0);
  *(v5 + 32) = sub_1D4606D10();
  if (qword_1EC7D3A68 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EC7D6068);
  v7(v4, v8, v0);
  *(v5 + 40) = sub_1D4606D10();
  sub_1D4606EA0();
  sub_1D4606EB0();
  MEMORY[0x1DA6DB550](v5);
  sub_1D4606980();
  result = *&v11;
  xmmword_1EC7D3D38 = v11;
  unk_1EC7D3D48 = v12;
  qword_1EC7D3D58 = v13;
  return result;
}

uint64_t static LinearGradient.darkGrayBubbleGradient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7D3A40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_1EC7D3D38;
  *(a1 + 8) = *(&xmmword_1EC7D3D38 + 8);
  *(a1 + 24) = unk_1EC7D3D50;
}

void sub_1D45FDCDC(uint64_t a1)
{
  if (*(v1 + *(type metadata accessor for BubbleViewConfiguration() + 32)) == 1)
  {
    if (!a1)
    {
      sub_1D4606BA0();
    }

    v3 = sub_1D4606B90();
    CTFontGetLeading(v3);
    CTFontGetAscent(v3);
    CTFontGetDescent(v3);
  }
}

id sub_1D45FDDA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1D45FDEBC()
{
  result = qword_1EC7D3D60;
  if (!qword_1EC7D3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3D60);
  }

  return result;
}

unint64_t sub_1D45FDF10()
{
  result = qword_1EC7D3D68;
  if (!qword_1EC7D3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3D68);
  }

  return result;
}