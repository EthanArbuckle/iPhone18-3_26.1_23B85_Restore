uint64_t sub_1CAC39444(void *a1, uint64_t a2, char a3)
{
  v5 = [a1 length];
  v65 = 0;
  v66 = MEMORY[0x1E69E7CC0];
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = &v65;
  v6[4] = &v66;
  v6[5] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CAC3B7E4;
  *(v7 + 24) = v6;
  v63 = sub_1CAC3B7F0;
  v64 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v60 = 1107296256;
  v61 = sub_1CAC3B624;
  v62 = &block_descriptor_17;
  v8 = _Block_copy(&aBlock);

  v9 = a1;

  [v9 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v8}];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v11 = v66;

    v54 = *(v11 + 16);
    if (!v54)
    {

      return 0;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v52 = v11 + 32;
    v53 = v11;
    v15 = 0xE000000000000000;
    while (v12 < *(v11 + 16))
    {
      v27 = v52 + 24 * v12;
      v28 = *v27;
      v29 = *(v27 + 8);
      v58 = v13;
      v57 = v14;
      v56 = v12;
      if (*(v27 + 16))
      {
        v16 = v15;
        sub_1CAC3B818();

        sub_1CAD4D8F4();
        v17 = sub_1CAD4D454();
        v19 = v18;
        v21 = v20;
        v22 = v16;
        v23 = sub_1CAD4D3F4();
        v55 = v24;
        v26 = v25;
        sub_1CABA6128(v17, v19, v21 & 1);
      }

      else
      {
        v51 = v15;
        if (a3)
        {
          sub_1CAC3B818();
          if ((v29 & 0x2000000000000000) != 0)
          {
            v30 = HIBYTE(v29) & 0xF;
          }

          else
          {
            v30 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            v31 = 4 * v30;
            while (sub_1CAD4E144() != 10 || v32 != 0xE100000000000000)
            {
              v33 = sub_1CAD4E9E4();

              if ((v33 & 1) != 0 || v31 == sub_1CAD4E074() >> 14)
              {
                goto LABEL_22;
              }
            }
          }

LABEL_22:
          v35 = sub_1CAD4E164();
          v37 = v36;
          v39 = v38;
          v41 = v40;
          sub_1CAC3B820();
          v28 = MEMORY[0x1CCAA72A0](v35, v37, v39, v41);
          v34 = v42;
        }

        else
        {
          sub_1CAC3B818();

          v34 = v29;
        }

        aBlock = v28;
        v60 = v34;
        sub_1CABA6054();
        v43 = sub_1CAD4D444();
        v45 = v44;
        v47 = v46;
        v22 = v51;
        v23 = sub_1CAD4D3F4();
        v55 = v48;
        v26 = v49;
        sub_1CABA6128(v43, v45, v47 & 1);
      }

      v12 = v56 + 1;

      sub_1CAC3B820();
      sub_1CABA6128(v58, v22, v57 & 1);

      v13 = v23;
      v15 = v55;
      v14 = v26;
      v11 = v53;
      if (v56 + 1 == v54)
      {

        return v23;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1CAC3991C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4CC74();
  v13 = 1;
  sub_1CAC39AC8(a1, __src);
  memcpy(__dst, __src, 0x171uLL);
  memcpy(v15, __src, 0x171uLL);
  sub_1CAB23A9C(__dst, &v10, &qword_1EC465268);
  sub_1CAB21B68(v15, &qword_1EC465268);
  memcpy(&v12[7], __dst, 0x171uLL);
  v5 = v13;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  __src[4] = sub_1CAC39258;
  __src[5] = 0;
  __src[0] = MEMORY[0x1E69E9820];
  __src[1] = 1107296256;
  __src[2] = sub_1CAC3B6C4;
  __src[3] = &block_descriptor_2;
  v7 = _Block_copy(__src);
  [v6 initWithDynamicProvider_];
  _Block_release(v7);

  __src[0] = sub_1CAD4D7D4();
  v8 = sub_1CAD4DAA4();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  result = memcpy((a2 + 17), v12, 0x178uLL);
  *(a2 + 400) = v8;
  return result;
}

void sub_1CAC39AC8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1CAD4D8F4();
  sub_1CAC39360(a1);
  v6 = v5;
  v7 = [v5 calendarColor];

  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    v9 = CUIKAdjustedColorForColor(v8, 1);
    v10 = sub_1CAD4D7D4();

    v11 = sub_1CAD4CDA4();
    v12[0] = 0;
    sub_1CAC39CD8(a1, __src);
    memcpy(__dst, __src, 0x149uLL);
    memcpy(v15, __src, 0x149uLL);
    sub_1CAB23A9C(__dst, v16, &qword_1EC465270);
    sub_1CAB21B68(v15, &qword_1EC465270);
    memcpy(&v13[7], __dst, 0x149uLL);
    v16[0] = v11;
    v16[1] = 0x4008000000000000;
    LOBYTE(v16[2]) = 0;
    memcpy(&v16[2] + 1, v13, 0x150uLL);
    *a2 = v4;
    a2[1] = v10;
    memcpy(a2 + 2, v16, 0x161uLL);
    __src[0] = v11;
    __src[1] = 0x4008000000000000;
    LOBYTE(__src[2]) = 0;
    memcpy(&__src[2] + 1, v13, 0x150uLL);

    sub_1CAB23A9C(v16, v12, &qword_1EC465278);
    sub_1CAB21B68(__src, &qword_1EC465278);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CAC39CD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v226 = a1;
  v198 = a2;
  v241 = *MEMORY[0x1E69E9840];
  v227 = sub_1CAD4C404();
  v222 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v221 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CAD4D2F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v196 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  sub_1CAC39360(a1);
  v10 = v9;
  v11 = [v8 titleStringForResult_];

  v12 = sub_1CAD4DF94();
  v14 = v13;

  v239 = v12;
  v240 = v14;
  v217 = sub_1CABA6054();
  v15 = sub_1CAD4D444();
  v17 = v16;
  v19 = v18;
  sub_1CAD4D334();
  v20 = *(v5 + 104);
  LODWORD(v208) = *MEMORY[0x1E6980EA0];
  v207 = v5 + 104;
  v206 = v20;
  v20(v7);
  sub_1CAD4D314();

  v21 = *(v5 + 8);
  v209 = v7;
  v22 = v7;
  v23 = v8;
  v211 = v4;
  v210 = v5 + 8;
  v205 = v21;
  v21(v22, v4);
  v24 = v226;
  v203 = sub_1CAD4D424();
  v202 = v25;
  v199 = v26;
  v204 = v27;

  sub_1CABA6128(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v28 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
  sub_1CAC39360(v24);
  v30 = v29;
  v239 = v28;
  v31 = [v8 locationStringForResult:v29 outGlyphNames:&v239];

  v32 = v239;
  v237 = v23;
  v200 = v32;
  if (v31)
  {
    v239 = 0;
    result = sub_1CAD4E204();
    if (!v239)
    {
      __break(1u);
      goto LABEL_25;
    }

    v236 = 1;
    v34 = sub_1CAC39444(v31, v239, 1);
    v36 = v35;
    v38 = v37;

    sub_1CAD4D324();
    v39 = v209;
    v40 = v211;
    v206(v209, v208, v211);
    sub_1CAD4D314();

    v205(v39, v40);
    v41 = sub_1CAD4D424();
    v43 = v42;
    LOBYTE(v40) = v44;

    sub_1CABA6128(v34, v36, v38 & 1);

    v239 = sub_1CAD4D824();
    v45 = sub_1CAD4D3E4();
    v47 = v46;
    LOBYTE(v34) = v48;
    v50 = v49;

    sub_1CABA6128(v41, v43, v40 & 1);

    v51 = swift_getKeyPath();
    v235 = v45;
    v225 = v47;
    v223 = v34 & 1;
    sub_1CABA4F48(v45, v47, v34 & 1);
    v234 = v50;

    v224 = v51;

    v24 = v226;
  }

  else
  {
    v235 = 0;
    v225 = 0;
    v223 = 0;
    v234 = 0;
    v224 = 0;
    v236 = 0;
  }

  sub_1CAC39360(v24);
  v53 = v52;
  v54 = [v237 timeStringForResult:v52 usingTimeZone:0];

  if (v54)
  {
    v55 = sub_1CAD4DF94();
    v57 = v56;

    v239 = v55;
    v240 = v57;
    v58 = sub_1CAD4D444();
    v60 = v59;
    v62 = v61;
    sub_1CAD4D324();
    v63 = v209;
    v64 = v211;
    v206(v209, v208, v211);
    sub_1CAD4D314();

    v205(v63, v64);
    v65 = sub_1CAD4D424();
    v67 = v66;
    LOBYTE(v63) = v68;

    sub_1CABA6128(v58, v60, v62 & 1);

    v239 = sub_1CAD4D824();
    v69 = sub_1CAD4D3E4();
    v71 = v70;
    LOBYTE(v60) = v72;
    v74 = v73;
    v75 = v65;
    v24 = v226;
    sub_1CABA6128(v75, v67, v63 & 1);

    v76 = swift_getKeyPath();
    v232 = v71;
    v233 = v69;
    v229 = v60 & 1;
    sub_1CABA4F48(v69, v71, v60 & 1);
    v231 = v74;

    v230 = v76;

    v228 = 1;
  }

  else
  {
    v232 = 0;
    v233 = 0;
    v229 = 0;
    v231 = 0;
    v230 = 0;
    v228 = 0;
  }

  sub_1CAC39360(v24);
  v78 = v77;
  v79 = [v237 shouldShowOtherTimeZoneForResult_];

  if (!v79)
  {
    goto LABEL_13;
  }

  sub_1CAC39360(v24);
  v81 = v80;
  sub_1CAC39360(v24);
  v83 = v82;
  v84 = [v82 timeZone];

  if (v84)
  {
    v85 = v221;
    sub_1CAD4C3E4();

    v84 = sub_1CAD4C3D4();
    (*(v222 + 8))(v85, v227);
  }

  v86 = [v237 timeStringForResult:v81 usingTimeZone:v84];

  if (v86)
  {
    v87 = sub_1CAD4DF94();
    v89 = v88;

    v239 = v87;
    v240 = v89;
    v90 = sub_1CAD4D444();
    v92 = v91;
    LOBYTE(v89) = v93;
    sub_1CAD4D324();
    v94 = v209;
    v95 = v211;
    v206(v209, v208, v211);
    sub_1CAD4D314();

    v205(v94, v95);
    v96 = sub_1CAD4D424();
    v98 = v97;
    LOBYTE(v94) = v99;

    sub_1CABA6128(v90, v92, v89 & 1);

    v239 = sub_1CAD4D824();
    v100 = sub_1CAD4D3E4();
    v102 = v101;
    LOBYTE(v92) = v103;
    v105 = v104;
    v106 = v96;
    v24 = v226;
    sub_1CABA6128(v106, v98, v94 & 1);

    v107 = swift_getKeyPath();
    v222 = v100;
    v221 = v102;
    v219 = v92 & 1;
    sub_1CABA4F48(v100, v102, v92 & 1);
    v220 = v105;

    v218 = v107;

    v227 = 1;
  }

  else
  {
LABEL_13:
    v222 = 0;
    v221 = 0;
    v219 = 0;
    v220 = 0;
    v218 = 0;
    v227 = 0;
  }

  sub_1CAC39360(v24);
  v109 = v108;
  v110 = [v237 inviteeStringForResult_];

  if (v110)
  {
    v111 = sub_1CAD4DF94();
    v113 = v112;

    v239 = v111;
    v240 = v113;
    v114 = sub_1CAD4D444();
    v116 = v115;
    LOBYTE(v113) = v117;
    sub_1CAD4D324();
    v118 = v209;
    v119 = v211;
    v206(v209, v208, v211);
    sub_1CAD4D314();

    v205(v118, v119);
    v120 = sub_1CAD4D424();
    v122 = v121;
    LOBYTE(v118) = v123;

    sub_1CABA6128(v114, v116, v113 & 1);

    v239 = sub_1CAD4D824();
    v124 = sub_1CAD4D3E4();
    v126 = v125;
    LOBYTE(v116) = v127;
    v129 = v128;
    v130 = v120;
    v24 = v226;
    sub_1CABA6128(v130, v122, v118 & 1);

    v131 = swift_getKeyPath();
    v217 = v124;
    v216 = v126;
    v213 = v116 & 1;
    sub_1CABA4F48(v124, v126, v116 & 1);
    v215 = v129;

    v214 = v131;

    v212 = 1;
  }

  else
  {
    v217 = 0;
    v216 = 0;
    v213 = 0;
    v215 = 0;
    v214 = 0;
    v212 = 0;
  }

  v132 = v200;
  sub_1CAC39360(v24);
  v134 = v133;
  v135 = [v24 pasteboardResults];
  v136 = v135;
  if (v135)
  {
  }

  v239 = v132;
  v137 = [v237 foundInStringForResult:v134 pasteboardEvent:v136 != 0 outGlyphNames:&v239];

  v138 = v239;
  v197 = v138;
  if (!v137)
  {
    v226 = 0;
    v158 = 0;
    v211 = 0;
    v161 = 0;
    v210 = 0;
    v237 = 0;
    goto LABEL_23;
  }

  v239 = 0;
  result = sub_1CAD4E204();
  if (v239)
  {
    v237 = 1;
    v139 = sub_1CAC39444(v137, v239, 1);
    v141 = v140;
    v143 = v142;

    sub_1CAD4D324();
    v144 = v209;
    v145 = v211;
    v206(v209, v208, v211);
    sub_1CAD4D314();

    v205(v144, v145);
    v146 = sub_1CAD4D424();
    v148 = v147;
    LOBYTE(v145) = v149;

    sub_1CABA6128(v139, v141, v143 & 1);

    v239 = sub_1CAD4D824();
    v150 = sub_1CAD4D3E4();
    v152 = v151;
    v154 = v153;
    v156 = v155;

    v157 = v146;
    v158 = v152;
    sub_1CABA6128(v157, v148, v145 & 1);

    v159 = swift_getKeyPath();
    v160 = v154 & 1;
    v161 = v156;
    v226 = v150;
    v211 = v160;
    sub_1CABA4F48(v150, v158, v160);

    v210 = v159;

LABEL_23:
    v208 = v158;
    v209 = v161;
    v162 = v198;
    *(v198 + 40) = 1;
    v163 = v199 & 1;
    v164 = v203;
    *v162 = v203;
    v165 = v164;
    v166 = v202;
    *(v162 + 8) = v202;
    v167 = v166;
    *(v162 + 16) = v163;
    v168 = KeyPath;
    *(v162 + 24) = v204;
    *(v162 + 32) = v168;
    *(v162 + 48) = 0;
    v169 = v225;
    *(v162 + 56) = v235;
    *(v162 + 64) = v169;
    v225 = v169;
    v170 = v223;
    v171 = v234;
    *(v162 + 72) = v223;
    *(v162 + 80) = v171;
    v172 = v236;
    *(v162 + 88) = v224;
    *(v162 + 96) = v172;
    *(v162 + 104) = 0;
    v173 = v232;
    *(v162 + 112) = v233;
    *(v162 + 120) = v173;
    v174 = v231;
    *(v162 + 128) = v229;
    *(v162 + 136) = v174;
    v175 = v228;
    *(v162 + 144) = v230;
    *(v162 + 152) = v175;
    *(v162 + 160) = 0;
    v176 = v222;
    v177 = v221;
    *(v162 + 168) = v222;
    *(v162 + 176) = v177;
    v221 = v177;
    v178 = v220;
    *(v162 + 184) = v219;
    *(v162 + 192) = v178;
    v179 = v227;
    *(v162 + 200) = v218;
    *(v162 + 208) = v179;
    *(v162 + 216) = 0;
    v180 = v216;
    *(v162 + 224) = v217;
    *(v162 + 232) = v180;
    v181 = v215;
    *(v162 + 240) = v213;
    *(v162 + 248) = v181;
    v182 = v212;
    *(v162 + 256) = v214;
    *(v162 + 264) = v182;
    *(v162 + 272) = 0;
    *(v162 + 280) = v226;
    *(v162 + 288) = v158;
    *(v162 + 296) = v211;
    *(v162 + 304) = v161;
    v183 = v237;
    *(v162 + 312) = v210;
    *(v162 + 320) = v183;
    *(v162 + 328) = 0;
    LODWORD(v207) = v163;
    LOBYTE(v239) = v163;
    v238 = 0;
    sub_1CABA4F48(v165, v167, v163);

    sub_1CAC3B744(v235, v169, v170, v234);
    sub_1CAC3B744(v233, v232, v229, v231);
    v222 = v176;
    v184 = v219;
    v185 = v220;
    v227 = v179;
    sub_1CAC3B744(v176, v177, v219, v220);
    v186 = v217;
    v187 = v216;
    LOBYTE(v177) = v213;
    v188 = v215;
    sub_1CAC3B744(v217, v216, v213, v215);
    sub_1CAC3B744(v226, v208, v211, v209);
    sub_1CAC3B794(v186, v187, v177, v188);
    v189 = v176;
    v190 = v221;
    sub_1CAC3B794(v189, v221, v184, v185);
    sub_1CAC3B794(v233, v232, v229, v231);
    v191 = v225;
    LOBYTE(v179) = v223;
    sub_1CAC3B794(v235, v225, v223, v234);
    v192 = v226;
    v193 = v208;
    v194 = v211;
    v195 = v209;
    sub_1CAC3B794(v226, v208, v211, v209);
    sub_1CAC3B794(v192, v193, v194, v195);
    sub_1CAC3B794(v217, v216, v213, v215);
    sub_1CAC3B794(v222, v190, v219, v220);
    sub_1CAC3B794(v233, v232, v229, v231);
    sub_1CAC3B794(v235, v191, v179, v234);
    sub_1CABA6128(v203, v202, v207);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1CAC3B118(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1CAD4E9E4();
  }
}

uint64_t sub_1CAC3B16C()
{
  v1 = *(v0 + 16);
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  sub_1CAD4E054();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC3B1D0()
{
  MEMORY[0x1CCAA7D10](*(v0 + 16));

  return sub_1CAD4E054();
}

uint64_t sub_1CAC3B224()
{
  v1 = *(v0 + 16);
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  sub_1CAD4E054();
  return sub_1CAD4EAC4();
}

void sub_1CAC3B284(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, char **a7, id a8)
{
  if (!*(a1 + 16) || (v15 = *MEMORY[0x1E69DB5F8], sub_1CAC16304(*MEMORY[0x1E69DB5F8]), (v16 & 1) == 0))
  {
LABEL_15:
    v28 = [a8 attributedSubstringFromRange_];
    v29 = [v28 string];

    v30 = sub_1CAD4DF94();
    v32 = v31;

    v33 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1CAD35084(0, *(v33 + 2) + 1, 1, v33);
      *a7 = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1CAD35084((v35 > 1), v36 + 1, 1, v33);
      *a7 = v33;
    }

    *(v33 + 2) = v36 + 1;
    v37 = &v33[24 * v36];
    *(v37 + 4) = v30;
    *(v37 + 5) = v32;
    v37[48] = 0;
    return;
  }

  if (!*(a1 + 16))
  {
    return;
  }

  v17 = sub_1CAC16304(v15);
  if ((v18 & 1) == 0)
  {
    return;
  }

  sub_1CABD3CDC(*(a1 + 56) + 32 * v17, v47);
  sub_1CABD4070(0, &qword_1EC465280);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v19 = [v46 image];
  if (v19)
  {

    v20 = *a6;
    if (*a6 < 0)
    {
      __break(1u);
    }

    else if (v20 < *(a5 + 16))
    {
      v21 = a5 + 16 * v20;
      a3 = *(v21 + 32);
      a5 = *(v21 + 40);
      a2 = *a7;

      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a7 = a2;
      if (v22)
      {
LABEL_10:
        v24 = *(a2 + 2);
        v23 = *(a2 + 3);
        a8 = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          *a7 = sub_1CAD35084((v23 > 1), v24 + 1, 1, a2);
        }

        v25 = *a7;
        *(v25 + 2) = a8;
        v26 = &v25[24 * v24];
        *(v26 + 4) = a3;
        *(v26 + 5) = a5;
        v26[48] = 1;
        v27 = *a6 + 1;
        if (!__OFADD__(*a6, 1))
        {
LABEL_28:
          *a6 = v27;
          return;
        }

        __break(1u);
        goto LABEL_15;
      }

LABEL_32:
      a2 = sub_1CAD35084(0, *(a2 + 2) + 1, 1, a2);
      *a7 = a2;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_32;
  }

  [v46 bounds];
  v38 = [v46 imageForBounds:0 textContainer:a2 characterIndex:?];
  if (!v38)
  {

    return;
  }

  v39 = *a6;
  if (*a6 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v39 >= *(a5 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v40 = a5 + 16 * v39;
  a3 = *(v40 + 32);
  a5 = *(v40 + 40);
  a2 = *a7;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *a7 = a2;
  if ((v41 & 1) == 0)
  {
LABEL_35:
    a2 = sub_1CAD35084(0, *(a2 + 2) + 1, 1, a2);
    *a7 = a2;
  }

  v43 = *(a2 + 2);
  v42 = *(a2 + 3);
  if (v43 >= v42 >> 1)
  {
    *a7 = sub_1CAD35084((v42 > 1), v43 + 1, 1, a2);
  }

  v44 = *a7;
  *(v44 + 2) = v43 + 1;
  v45 = &v44[24 * v43];
  *(v45 + 4) = a3;
  *(v45 + 5) = a5;
  v45[48] = 1;
  v27 = *a6 + 1;
  if (!__OFADD__(*a6, 1))
  {
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_1CAC3B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1CAC3B828();
  v9 = sub_1CAD4DE94();
  v8(v9, a3, a4, a5);
}

id sub_1CAC3B6C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CAC3B744(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CABA4F48(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1CAC3B794(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CABA6128(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1CAC3B828()
{
  result = qword_1EC461E50;
  if (!qword_1EC461E50)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC461E50);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CAC3B8A0(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CAC3B8E8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1CAC3B948()
{
  result = qword_1EC465290;
  if (!qword_1EC465290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465298);
    sub_1CAB23B0C(&qword_1EC4652A0, &qword_1EC4652A8);
    sub_1CAB23B0C(&qword_1EC464168, &qword_1EC464170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465290);
  }

  return result;
}

unint64_t sub_1CAC3BA30()
{
  result = qword_1EC4652B0;
  if (!qword_1EC4652B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652B0);
  }

  return result;
}

uint64_t static CUIKSwiftUICrossPlatform.urlFor(date:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v8 - v3;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  MEMORY[0x1CCAA7330](0x3A776F68736C6163, 0xE800000000000000);
  sub_1CAD4C044();
  sub_1CAD4E314();
  sub_1CAD4BFE4();

  v5 = sub_1CAD4BFF4();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t static CUIKSwiftUICrossPlatform.calendar(useSystemTimeZone:)(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1CAD4C404();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1CAD4C324();
  if (a1)
  {
    goto LABEL_4;
  }

  CUIKOneIndexedWeekStart();
  sub_1CAD4C224();
  result = CalCopyTimeZone();
  if (result)
  {
    v7 = result;
    sub_1CAD4C3E4();

    sub_1CAD4C344();
LABEL_4:
    sub_1CAD4C184();
    v8 = sub_1CAD4C1D4();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    return sub_1CAD4C314();
  }

  __break(1u);
  return result;
}

id static CUIKSwiftUICrossPlatform.overlayCalendarID()()
{
  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v1 = result;
    v2 = [result overlayCalendarID];

    if (v2)
    {
      v3 = sub_1CAD4DF94();
      v5 = v4;

      if (v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 == 0xE000000000000000;
      }

      if (!v6 && (sub_1CAD4E9E4() & 1) == 0)
      {
        return v3;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1CAC3BE04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464728);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1CAC3BEDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_1CAD4C404();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1CAD4C374();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  sub_1CAD4C324();
  CUIKOneIndexedWeekStart();
  sub_1CAD4C224();
  result = CalCopyTimeZone();
  if (result)
  {
    v12 = result;
    sub_1CAD4C3E4();

    sub_1CAD4C344();
    sub_1CAD4C184();
    v13 = sub_1CAD4C1D4();
    (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
    sub_1CAD4C314();
    (*(v5 + 32))(v10, v8, v4);
    v14 = sub_1CAD4C284();
    v15 = CUIKOneIndexedWeekStart();
    v17 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
    }

    else if ((v17 & 0x8000000000000000) == 0)
    {
      v16 = *(v14 + 16);
      if (v16 >= v17)
      {
        if (v16 != v17)
        {
          sub_1CAC3BE04(v14, v14 + 32, 0, (2 * v17) | 1);
          v16 = *(v14 + 16);
          if (v16 >= v17)
          {
            goto LABEL_9;
          }

          __break(1u);
        }

        v16 = v17;
LABEL_9:
        if (!v17)
        {
LABEL_10:
          v22 = v14;
          sub_1CAD0F3D8(v15);
          (*(v5 + 8))(v10, v4);
          return v22;
        }

LABEL_14:
        v18 = v15;
        sub_1CAC3BE04(v14, v14 + 32, v17, (2 * v16) | 1);
        v20 = v19;

        v15 = v18;
        v14 = v20;
        goto LABEL_10;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t EventIntegrationModelObject.reminderListTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EventIntegrationModelObject.reminderListTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void EventIntegrationModelObject.color.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1CAC3C27C(v2, v3, v4, v5);
}

void sub_1CAC3C27C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1CABB8BB4(a3, a4);
  }
}

__n128 EventIntegrationModelObject.color.setter(uint64_t a1)
{
  sub_1CAC3C300(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

void sub_1CAC3C300(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1CABB8C1C(a3, a4);
  }
}

__n128 EventIntegrationModelObject.init(isCompleted:reminderListTitle:color:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  sub_1CAC3C300(0, 0, 0, 0);
  result = *a4;
  *(a5 + 40) = *(a4 + 16);
  *(a5 + 24) = result;
  return result;
}

void EventIntegrationModelObject.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5) & 1;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v11 = v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 24))(v18, v12, v13);
  v14 = v18[0];
  v15 = v18[1];
  v16 = v18[2];
  v17 = v18[3];
  sub_1CAC3C300(0, 0, 0, 0);
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;

  sub_1CAC3C27C(v14, v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);

  sub_1CAC3C300(v14, v15, v16, v17);
}

uint64_t EventIntegrationModelObject.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1CAD4EAA4();
  if (!v1)
  {
    sub_1CAD4EAA4();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1CAD4EAA4();
  }

  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (!v2)
  {
    return sub_1CAD4EAA4();
  }

LABEL_3:
  sub_1CAD4EAA4();
  sub_1CAD4E054();

  return sub_1CAD4C034();
}

uint64_t EventIntegrationModelObject.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1CAD4EA84();
  sub_1CAD4EAA4();
  if (!v1)
  {
    sub_1CAD4EAA4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1CAD4EAA4();
    return sub_1CAD4EAC4();
  }

  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  sub_1CAD4C034();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC3C6CC()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1CAC3C6FC(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1CAC3C27C(v2, v3, v4, v5);
}

uint64_t sub_1CAC3C710()
{
  sub_1CAD4EA84();
  EventIntegrationModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC3C774()
{
  sub_1CAD4EA84();
  EventIntegrationModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC3C7D4()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C706D6F437369;
  }
}

uint64_t sub_1CAC3C838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC3D3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC3C860(uint64_t a1)
{
  v2 = sub_1CAC3D06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC3C89C(uint64_t a1)
{
  v2 = sub_1CAC3D06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EventIntegrationModelObject.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4652B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC3D06C();
  sub_1CAD4EAE4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    LOBYTE(v24) = 0;
    v9 = sub_1CAD4E894();
    LOBYTE(v24) = 1;
    v10 = sub_1CAD4E824();
    v12 = v11;
    v23 = v10;
    v28 = 2;
    sub_1CAC3D0C0();
    sub_1CAD4E874();
    (*(v6 + 8))(v8, v5);
    v13 = v9 & 1;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    sub_1CAC3C300(0, 0, 0, 0);
    *a2 = v13;
    *(a2 + 8) = v23;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v17;

    sub_1CAC3C27C(v14, v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
  }

  sub_1CAC3C300(v18, v19, v20, v21);
}

uint64_t EventIntegrationModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4652D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = v1[1];
  v18 = v1[2];
  v19 = v7;
  v8 = v1[3];
  v16 = v1[4];
  v17 = v8;
  v9 = v1[6];
  v15 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC3D06C();
  sub_1CAD4EB04();
  LOBYTE(v21) = 0;
  v10 = v20;
  sub_1CAD4E944();
  if (!v10)
  {
    v13 = v15;
    v12 = v16;
    v14 = v17;
    LOBYTE(v21) = 1;
    sub_1CAD4E904();
    v21 = v14;
    v22 = v12;
    v23 = v13;
    v24 = v9;
    v25 = 2;
    sub_1CAC3C27C(v14, v12, v13, v9);
    sub_1CAC3D114();
    sub_1CAD4E924();
    sub_1CAC3C300(v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

BOOL _s13CalendarUIKit27EventIntegrationModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  v13 = a2[6];
  if (v4)
  {
    if (!v9 || (a1[1] != a2[1] || v4 != v9) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (!v7)
  {
    sub_1CAC3C27C(v5, 0, v6, v8);
    if (!v12)
    {
      sub_1CAC3C27C(v10, 0, v11, v13);
      sub_1CAC3C300(v5, 0, v6, v8);
      return 1;
    }

    sub_1CAC3C27C(v10, v12, v11, v13);
    goto LABEL_20;
  }

  if (!v12)
  {
    sub_1CAC3C27C(v5, v7, v6, v8);
    sub_1CAC3C27C(v10, 0, v11, v13);
    sub_1CAC3C27C(v5, v7, v6, v8);

    sub_1CABB8C1C(v6, v8);
LABEL_20:
    sub_1CAC3C300(v5, v7, v6, v8);
    v15 = v10;
    v16 = v12;
    v17 = v11;
    v18 = v13;
LABEL_21:
    sub_1CAC3C300(v15, v16, v17, v18);
    return 0;
  }

  if ((v5 != v10 || v7 != v12) && (sub_1CAD4E9E4() & 1) == 0)
  {
    sub_1CAC3C27C(v5, v7, v6, v8);
    sub_1CAC3C27C(v10, v12, v11, v13);
    sub_1CAC3C27C(v5, v7, v6, v8);
    sub_1CAC3C300(v10, v12, v11, v13);

    sub_1CABB8C1C(v6, v8);
    v15 = v5;
    v16 = v7;
    v17 = v6;
    v18 = v8;
    goto LABEL_21;
  }

  sub_1CAC3C27C(v5, v7, v6, v8);
  sub_1CAC3C27C(v10, v12, v11, v13);
  sub_1CAC3C27C(v5, v7, v6, v8);
  v14 = sub_1CAC57310(v6, v8, v11, v13);
  sub_1CAC3C300(v10, v12, v11, v13);

  sub_1CABB8C1C(v6, v8);
  sub_1CAC3C300(v5, v7, v6, v8);
  return (v14 & 1) != 0;
}

unint64_t sub_1CAC3D06C()
{
  result = qword_1EC4652C0;
  if (!qword_1EC4652C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652C0);
  }

  return result;
}

unint64_t sub_1CAC3D0C0()
{
  result = qword_1EC4652C8;
  if (!qword_1EC4652C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652C8);
  }

  return result;
}

unint64_t sub_1CAC3D114()
{
  result = qword_1EC4652D8;
  if (!qword_1EC4652D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652D8);
  }

  return result;
}

unint64_t sub_1CAC3D16C()
{
  result = qword_1EC4652E0;
  if (!qword_1EC4652E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CalendarUIKit21EventIntegrationColorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1CAC3D1F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1CAC3D250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1CAC3D2D4()
{
  result = qword_1EC4652E8;
  if (!qword_1EC4652E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652E8);
  }

  return result;
}

unint64_t sub_1CAC3D32C()
{
  result = qword_1EC4652F0;
  if (!qword_1EC4652F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652F0);
  }

  return result;
}

unint64_t sub_1CAC3D384()
{
  result = qword_1EC4652F8;
  if (!qword_1EC4652F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4652F8);
  }

  return result;
}

uint64_t sub_1CAC3D3D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706D6F437369 && a2 == 0xEB00000000646574;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD76230 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1CAC3D540()
{
  if (!qword_1EC465318)
  {
    v0 = sub_1CAD4C644();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC465318);
    }
  }
}

void sub_1CAC3D598(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CAD4DB14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1CAC3D5E4()
{
  if (!qword_1EC465328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467980);
    v0 = sub_1CAD4DB14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC465328);
    }
  }
}

uint64_t sub_1CAC3D664@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465330);
  sub_1CAD4C634();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465338);
  sub_1CAD4DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  sub_1CAD4DAE4();
  type metadata accessor for TitleEditor(0);
  type metadata accessor for ModernTitleView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465300);
  result = sub_1CAD4DAE4();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465300);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465300);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1CAC3D978()
{
  sub_1CAC3D540();
  if (v0 <= 0x3F)
  {
    sub_1CAC3D598(319, &qword_1EC465320);
    if (v1 <= 0x3F)
    {
      sub_1CAC3D598(319, &qword_1EC463108);
      if (v2 <= 0x3F)
      {
        sub_1CAC3D5E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1CAC3DA4C()
{
  result = qword_1EC465350;
  if (!qword_1EC465350)
  {
    type metadata accessor for ModernTitleView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465350);
  }

  return result;
}

uint64_t sub_1CAC3DAC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646B8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1CAD4D284();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1CAD4D2C4();
  sub_1CAB21B68(v2, &qword_1EC4646B8);
  sub_1CAD4D2B4();
  v4 = sub_1CAD4D2D4();

  qword_1EC47E060 = v4;
  return result;
}

uint64_t sub_1CAC3DBC4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465358);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465360);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - v7;
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  *&v32 = *(v1 + 56);
  *(&v32 + 1) = v9;
  LOBYTE(v33) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v31, v11);
  if (v31 == 1)
  {
    *v8 = sub_1CAD4CC94();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465378);
    sub_1CAC3DF30(v1, &v8[*(v12 + 44)]);
    sub_1CAB2FA80(v8, v5);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465368);
    sub_1CAB23B0C(&qword_1EC465370, &qword_1EC465360);
    sub_1CAC3E638();
    sub_1CAD4CE24();
    return sub_1CAB2FAF0(v8);
  }

  else
  {
    v30[1] = v6;
    v30[2] = a1;
    v14 = *(v1 + 40);
    v15 = *(v1 + 48);
    v32 = *(v1 + 24);
    v33 = v14;
    v34 = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465338);
    MEMORY[0x1CCAA6D30](&v31, v16);
    v32 = v31;
    sub_1CABA6054();
    v17 = sub_1CAD4D444();
    v19 = v18;
    v21 = v20;
    if (qword_1EC462F18 != -1)
    {
      swift_once();
    }

    v22 = sub_1CAD4D424();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_1CABA6128(v17, v19, v21 & 1);

    KeyPath = swift_getKeyPath();
    *v5 = v22;
    *(v5 + 1) = v24;
    v5[16] = v26 & 1;
    *(v5 + 3) = v28;
    *(v5 + 4) = KeyPath;
    *(v5 + 5) = 0;
    v5[48] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465368);
    sub_1CAB23B0C(&qword_1EC465370, &qword_1EC465360);
    sub_1CAC3E638();
    return sub_1CAD4CE24();
  }
}

uint64_t sub_1CAC3DF30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465300);
  MEMORY[0x1EEE9AC00](v3);
  v59 = v44 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DC0);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = v44 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465380);
  MEMORY[0x1EEE9AC00](v53);
  v47 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465388);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = v44 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465390);
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = v44 - v9;
  if (qword_1EC462B50 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC47D8D8;
  v11 = unk_1EC47D8E0;
  v12 = qword_1EC462F18;
  swift_bridgeObjectRetain_n();
  if (v12 != -1)
  {
    swift_once();
  }

  v45 = qword_1EC47E060;
  v68 = v10;
  v69 = v11;
  v14 = a1[4];
  v16 = a1[5];
  v15 = a1[6];
  v64 = a1[3];
  v13 = v64;
  v65 = v14;
  v66 = v16;
  v67 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465338);
  sub_1CAD4DAE4();
  v44[6] = v60;
  v44[5] = v61;
  v44[4] = v62;
  v44[3] = v63;
  type metadata accessor for ModernTitleView(0);
  v57 = a1;
  sub_1CAD4DAE4();
  v64 = v10;
  v65 = v11;
  v44[2] = sub_1CABA6054();
  v18 = sub_1CAD4D444();
  v20 = v19;
  v22 = v21;
  v44[1] = v23;
  v64 = v13;
  v65 = v14;
  v66 = v16;
  v67 = v15;
  MEMORY[0x1CCAA6D30](&v60, v17);
  v24 = v60;
  v25 = v61;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    if (qword_1EC462F20 != -1)
    {
      swift_once();
    }

    v27 = qword_1EC47E068;
  }

  else
  {
    v27 = sub_1CAD4D8B4();
  }

  v64 = v27;
  sub_1CAD4D3E4();
  sub_1CABA6128(v18, v20, v22 & 1);

  v28 = v46;
  sub_1CAD4DD44();
  KeyPath = swift_getKeyPath();
  v30 = v47;
  (*(v48 + 32))(v47, v28, v49);
  v31 = v53;
  v32 = (v30 + *(v53 + 36));
  v33 = v45;
  *v32 = KeyPath;
  v32[1] = v33;
  v34 = sub_1CAC3E6F0();

  v35 = v52;
  sub_1CAD4D7A4();
  sub_1CAB21B68(v30, &qword_1EC465380);
  v36 = v57[1];
  v37 = *(v57 + 16);
  v64 = *v57;
  v65 = v36;
  LOBYTE(v66) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465330);
  sub_1CAD4C634();
  v64 = v31;
  v65 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v50;
  v39 = v56;
  sub_1CAD4D704();

  (*(v55 + 8))(v35, v39);
  v40 = sub_1CAD4CD84();
  v41 = v58;
  (*(v51 + 32))(v58, v38, v54);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4653A0);
  v43 = (v41 + *(result + 36));
  *v43 = v40;
  v43[1] = sub_1CAC3E60C;
  v43[2] = 0;
  return result;
}

unint64_t sub_1CAC3E638()
{
  result = qword_1EC4621C0;
  if (!qword_1EC4621C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465368);
    sub_1CAB23B0C(&qword_1EC462020, &qword_1EC4644A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621C0);
  }

  return result;
}

unint64_t sub_1CAC3E6F0()
{
  result = qword_1EC465398;
  if (!qword_1EC465398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465380);
    sub_1CAB23B0C(&qword_1EC464DC8, &qword_1EC464DC0);
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465398);
  }

  return result;
}

unint64_t sub_1CAC3E7D4()
{
  result = qword_1EC4653A8;
  if (!qword_1EC4653A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4653B0);
    sub_1CAB23B0C(&qword_1EC465370, &qword_1EC465360);
    sub_1CAC3E638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4653A8);
  }

  return result;
}

id sub_1CAC3E894@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = type metadata accessor for DocumentPickerViewCoordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13CalendarUIKit29DocumentPickerViewCoordinator_parent];
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1CAC3E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAC3F26C();

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1CAC3E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAC3F26C();

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1CAC3E9F0()
{
  sub_1CAC3F26C();
  sub_1CAD4D144();
  __break(1u);
}

void sub_1CAC3EA18(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventAttachmentModelObject();
  v38 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v34 - v9);
  v11 = sub_1CAD4BFF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  v21 = [a1 presentingViewController];
  if (v21)
  {
    v22 = v21;
    [v21 dismissViewControllerAnimated:1 completion:0];
  }

  if (*(a2 + 16))
  {
    (*(v12 + 16))(v20, a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  sub_1CABD4DAC(v20, v18);
  if ((*(v12 + 48))(v18, 1, v11) == 1)
  {
    sub_1CAC3F2C0(v20);
    v20 = v18;
LABEL_14:
    sub_1CAC3F2C0(v20);
    return;
  }

  (*(v12 + 32))(v14, v18, v11);
  v23 = objc_allocWithZone(MEMORY[0x1E6966960]);
  v37 = v14;
  v24 = sub_1CAD4BFB4();
  v25 = [v23 initWithFilepath_];

  if (v25)
  {
    v34 = v25;
    sub_1CACA07A0(v34, v10);
    v26 = v3 + OBJC_IVAR____TtC13CalendarUIKit29DocumentPickerViewCoordinator_parent;
    v28 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit29DocumentPickerViewCoordinator_parent);
    v27 = *(v26 + 8);
    v29 = *(v26 + 16);
    sub_1CAC3F328(v10, v39);
    v44 = v28;
    v45 = v27;
    v46 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458);
    MEMORY[0x1CCAA6D30](&v47);
    v30 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v10;
    v36 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_1CAD34AC0(0, v30[2] + 1, 1, v30);
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v30 = sub_1CAD34AC0(v32 > 1, v33 + 1, 1, v30);
    }

    v30[2] = v33 + 1;
    sub_1CAC3F38C(v39, v30 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v33);
    v41 = v28;
    v42 = v27;
    v43 = v29;
    v40 = v30;
    sub_1CAD4DAC4();

    [v36 dismissViewControllerAnimated:1 completion:0];

    sub_1CAC3F3F0(v35);
    (*(v12 + 8))(v37, v11);
    goto LABEL_14;
  }

  __break(1u);
}

id sub_1CAC3EF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentPickerViewCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CAC3F018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CAC3F060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CAC3F0B4()
{
  result = qword_1EC465430;
  if (!qword_1EC465430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465430);
  }

  return result;
}

id sub_1CAC3F108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465438);
  sub_1CAD4C524();
  *(swift_allocObject() + 16) = xmmword_1CAD58380;
  sub_1CAD4C514();
  v0 = objc_allocWithZone(MEMORY[0x1E69DC968]);
  v1 = sub_1CAD4E1F4();

  v2 = [v0 initForOpeningContentTypes:v1 asCopy:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465440);
  sub_1CAD4D174();
  [v2 setDelegate_];

  [v2 setAllowsMultipleSelection_];
  return v2;
}

unint64_t sub_1CAC3F26C()
{
  result = qword_1EC465448;
  if (!qword_1EC465448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465448);
  }

  return result;
}

uint64_t sub_1CAC3F2C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAC3F328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttachmentModelObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC3F38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttachmentModelObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC3F3F0(uint64_t a1)
{
  v2 = type metadata accessor for EventAttachmentModelObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAC3F478@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for UIAlarm(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1CAC407F4(v12, v10, type metadata accessor for UIAlarm);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1CAC4052C(v10, type metadata accessor for UIAlarm);
      }

      if (v14)
      {
        break;
      }

      sub_1CAC4052C(v10, type metadata accessor for UIAlarm);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1CAC408F8(v10, v18, type metadata accessor for UIAlarm);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1CAC3F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465460);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = sub_1CACE2350();
  v9 = v8[2];
  if (v9)
  {
    v19 = a1;
    v20 = a2;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1CACBA18C(0, v9, 0);
    v10 = v21;
    v11 = *(type metadata accessor for UIAlarm(0) - 8);
    v12 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      sub_1CAC407F4(v12, &v7[*(v4 + 48)], type metadata accessor for UIAlarm);
      sub_1CAD4C114();
      v21 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1CACBA18C(v14 > 1, v15 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v15 + 1;
      sub_1CAC40354(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15);
      v12 += v13;
      --v9;
    }

    while (v9);

    a1 = v19;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = v10;
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CAC403C4;
  *(v16 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465468);
  type metadata accessor for AlarmPicker();
  sub_1CAB23B0C(&qword_1EC465470, &qword_1EC465468);
  sub_1CAC40474(&qword_1EC465478, MEMORY[0x1E69695A8]);
  sub_1CAC40474(&qword_1EC465480, type metadata accessor for AlarmPicker);
  return sub_1CAD4DB64();
}

double sub_1CAC3F9A4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for EventAlarmModelObject();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = type metadata accessor for UIAlarm(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC407F4(a1, v17, type metadata accessor for UIAlarm);
  v18 = type metadata accessor for AlarmPicker();
  v19 = *(v18 + 20);
  v30 = a3;
  sub_1CAC407F4(v17, a3 + v19, type metadata accessor for UIAlarm);
  sub_1CAC404BC(v17, v14);
  v20 = *(v7 + 48);
  v21 = v20(v14, 1, v6);
  v31 = a2;

  sub_1CAB21B68(v14, &qword_1EC465488);
  if (v21 == 1)
  {
    if (v17[*(v15 + 20)])
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    sub_1CAD4EA84();
    sub_1CAC404BC(v17, v12);
    if (v20(v12, 1, v6) == 1)
    {
      sub_1CAD4EAA4();
    }

    else
    {
      v23 = v29;
      sub_1CAC408F8(v12, v29, type metadata accessor for EventAlarmModelObject);
      sub_1CAD4EAA4();
      EventAlarmTrigger.hash(into:)();
      sub_1CAD4EAA4();
      sub_1CAC4052C(v23, type metadata accessor for EventAlarmModelObject);
    }

    sub_1CAD4EAA4();
    v22 = sub_1CAD4EAC4();
  }

  v24 = *(v18 + 24);
  v33 = v22;
  sub_1CAD4D984();
  sub_1CAC4052C(v17, type metadata accessor for UIAlarm);
  result = *&v32;
  v27 = v30;
  v26 = v31;
  *(v30 + v24) = v32;
  *v27 = v26;
  return result;
}

uint64_t sub_1CAC3FCF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for AlarmPicker();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v3);
  if (qword_1EC462B90 != -1)
  {
    swift_once();
  }

  v5 = unk_1EC47D960;
  v17 = qword_1EC47D958;
  v6 = (v1 + *(v3 + 24));
  v8 = *v6;
  v23 = v6[1];
  v7 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654C8);
  sub_1CAD4D9B4();
  v16 = v20;
  v9 = v21;
  v10 = sub_1CACE139C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654D0);
  v11 = swift_allocObject();
  *(v11 + 16) = v20;
  v12 = v17;
  *(v11 + 32) = v9;
  *(v11 + 40) = v12;
  *(v11 + 48) = v5;
  *(v11 + 56) = xmmword_1CAD5FDC0;
  *(v11 + 72) = 0;
  *(v11 + 80) = v10;
  *(v11 + 88) = 1;
  *(v11 + 96) = 0;
  v22 = v11;
  *&v20 = v8;
  *(&v20 + 1) = v7;
  sub_1CAD4D994();
  sub_1CAC407F4(v2, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmPicker);
  v13 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v14 = swift_allocObject();
  sub_1CAC408F8(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AlarmPicker);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654D8);
  sub_1CAB23B0C(&qword_1EC4654E0, &qword_1EC4654D8);
  sub_1CAD4D764();
}

uint64_t sub_1CAC3FFC0()
{
  sub_1CAD4DCD4();
  sub_1CAD4C834();
}

uint64_t sub_1CAC4002C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654E8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = *(type metadata accessor for AlarmPicker() + 20);
  v9 = sub_1CACE139C();
  v13 = a1;
  sub_1CAC3F478(sub_1CAC408D8, v9, v7);

  sub_1CAC407F4(a1 + v8, v5, type metadata accessor for UIAlarm);
  v10 = type metadata accessor for UIAlarm(0);
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  sub_1CACE36C8(v7, v5);
  sub_1CAB21B68(v5, &qword_1EC4654E8);
  return sub_1CAB21B68(v7, &qword_1EC4654E8);
}

BOOL sub_1CAC401CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  sub_1CAC404BC(a1, v11 - v5);
  v7 = type metadata accessor for EventAlarmModelObject();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_1CAB21B68(v6, &qword_1EC465488);
  if (v8 == 1)
  {
    if (*(a1 + *(type metadata accessor for UIAlarm(0) + 20)))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    sub_1CAD4EA84();
    sub_1CACE4DD0();
    v9 = sub_1CAD4EAC4();
  }

  v11[0] = *(a2 + *(type metadata accessor for AlarmPicker() + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654C8);
  sub_1CAD4D994();
  return v9 == v12;
}

uint64_t sub_1CAC40354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC403CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465460);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t type metadata accessor for AlarmPicker()
{
  result = qword_1EC465490;
  if (!qword_1EC465490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAC40474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAC404BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC4052C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CAC405B4()
{
  type metadata accessor for AlarmViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIAlarm(319);
    if (v1 <= 0x3F)
    {
      sub_1CAC40650();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CAC40650()
{
  if (!qword_1EC4654A0)
  {
    v0 = sub_1CAD4D9C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4654A0);
    }
  }
}

unint64_t sub_1CAC406A0()
{
  result = qword_1EC4654A8;
  if (!qword_1EC4654A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4654B0);
    sub_1CAC40724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4654A8);
  }

  return result;
}

unint64_t sub_1CAC40724()
{
  result = qword_1EC4654B8;
  if (!qword_1EC4654B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4654C0);
    sub_1CAC40474(&qword_1EC465480, type metadata accessor for AlarmPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4654B8);
  }

  return result;
}

uint64_t sub_1CAC407F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC4085C()
{
  type metadata accessor for AlarmPicker();

  return sub_1CAC3FFC0();
}

uint64_t sub_1CAC408F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CalendarColor.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  CalendarColor.Symbolic.init(rawValue:)(v6);
  *&v7 = v31;
  if (v31 == 7)
  {
    v8 = sub_1CAD4E124();
    v9 = v8 & 1;
    v10 = sub_1CAD4E064();
    v11 = 6;
    if (v8)
    {
      v11 = 7;
    }

    if (v10 == v11)
    {
      goto LABEL_8;
    }

    v12 = sub_1CAD4E064();
    v13 = 8;
    if (v8)
    {
      v13 = 9;
    }

    if (v12 == v13)
    {
LABEL_8:
      v14 = sub_1CAC40FA0(v9, 2);
      v16 = v15;
      v17 = v14;
      if (v9)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      if (v9)
      {
        v19 = 5;
      }

      else
      {
        v19 = 4;
      }

      v20 = sub_1CAC40FA0(v18, 2);
      v22 = v21;
      v23 = v20;
      v24 = sub_1CAC40FA0(v19, 2);
      v26 = v25;

      if (v16)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = v17 / 255.0;
      }

      if (v22)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23 / 255.0;
      }

      if (v26)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24 / 255.0;
      }

      v30 = 1;
    }

    else
    {

      v28 = 0.0;
      v29 = 0.0;
      v30 = 0;
      *&v7 = 6;
    }
  }

  else
  {

    v28 = 0.0;
    v29 = 0.0;
    v30 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v28;
  *(a3 + 16) = v29;
  *(a3 + 24) = v30;
  return result;
}

CalendarUIKit::CalendarColor::Symbolic_optional __swiftcall CalendarColor.Symbolic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CAD4E7F4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CalendarColor.Symbolic.rawValue.getter()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x656C70727570;
  if (v1 != 5)
  {
    v3 = 0x6E776F7262;
  }

  v4 = 0x6E65657267;
  if (v1 != 3)
  {
    v4 = 1702194274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65676E61726FLL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C6579;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1CAC40C40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579570;
  v5 = 0xE600000000000000;
  v6 = 0x656C70727570;
  v7 = 0xE500000000000000;
  if (v2 != 5)
  {
    v6 = 0x6E776F7262;
    v5 = 0xE500000000000000;
  }

  v8 = 0x6E65657267;
  if (v2 != 3)
  {
    v8 = 1702194274;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x65676E61726FLL;
  if (v2 != 1)
  {
    v9 = 0x776F6C6C6579;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1CAC40D04()
{
  sub_1CAD4E054();
}

uint64_t sub_1CAC40DF4()
{
  sub_1CAD4EA84();
  sub_1CAD4E054();

  return sub_1CAD4EAC4();
}

unsigned __int8 *sub_1CAC40FA0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    return 0;
  }

  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:

    return 0;
  }

  if (sub_1CAD4E064() < a1 + a2)
  {
    return 0;
  }

  v3 = sub_1CAD4E0A4();
  if (sub_1CAD4E0A4() >> 14 < v3 >> 14)
  {
    goto LABEL_98;
  }

  v4 = sub_1CAD4E164();
  v5 = MEMORY[0x1CCAA72A0](v4);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_99;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    if ((v7 & 0x2000000000000000) != 0)
    {
      v33[0] = v5;
      v33[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (v8)
        {
          if (--v8)
          {
            v12 = 0;
            v23 = v33 + 1;
            while (1)
            {
              v24 = *v23;
              v25 = v24 - 48;
              if ((v24 - 48) >= 0xA)
              {
                if ((v24 - 65) < 6)
                {
                  v25 = v24 - 55;
                }

                else
                {
                  if ((v24 - 97) > 5)
                  {
                    goto LABEL_92;
                  }

                  v25 = v24 - 87;
                }
              }

              if ((v12 - 0x800000000000000) >> 60 != 15)
              {
                break;
              }

              v16 = __OFADD__(16 * v12, v25);
              v12 = 16 * v12 + v25;
              if (v16)
              {
                break;
              }

              ++v23;
              if (!--v8)
              {
                goto LABEL_93;
              }
            }
          }

          goto LABEL_92;
        }

LABEL_105:
        __break(1u);
        return result;
      }

      if (v5 != 45)
      {
        if (v8)
        {
          v12 = 0;
          v28 = v33;
          while (1)
          {
            v29 = *v28;
            v30 = v29 - 48;
            if ((v29 - 48) >= 0xA)
            {
              if ((v29 - 65) < 6)
              {
                v30 = v29 - 55;
              }

              else
              {
                if ((v29 - 97) > 5)
                {
                  goto LABEL_92;
                }

                v30 = v29 - 87;
              }
            }

            if ((v12 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v16 = __OFADD__(16 * v12, v30);
            v12 = 16 * v12 + v30;
            if (v16)
            {
              break;
            }

            ++v28;
            if (!--v8)
            {
              goto LABEL_93;
            }
          }
        }

        goto LABEL_92;
      }

      if (v8)
      {
        if (--v8)
        {
          v12 = 0;
          v17 = v33 + 1;
          while (1)
          {
            v18 = *v17;
            v19 = v18 - 48;
            if ((v18 - 48) >= 0xA)
            {
              if ((v18 - 65) < 6)
              {
                v19 = v18 - 55;
              }

              else
              {
                if ((v18 - 97) > 5)
                {
                  goto LABEL_92;
                }

                v19 = v18 - 87;
              }
            }

            if ((v12 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v16 = __OFSUB__(16 * v12, v19);
            v12 = 16 * v12 - v19;
            if (v16)
            {
              break;
            }

            ++v17;
            if (!--v8)
            {
              goto LABEL_93;
            }
          }
        }

        goto LABEL_92;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1CAD4E714();
      }

      v11 = *result;
      if (v11 == 43)
      {
        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            if (result)
            {
              v12 = 0;
              v20 = result + 1;
              while (1)
              {
                v21 = *v20;
                v22 = v21 - 48;
                if ((v21 - 48) >= 0xA)
                {
                  if ((v21 - 65) < 6)
                  {
                    v22 = v21 - 55;
                  }

                  else
                  {
                    if ((v21 - 97) > 5)
                    {
                      goto LABEL_92;
                    }

                    v22 = v21 - 87;
                  }
                }

                if ((v12 - 0x800000000000000) >> 60 != 15)
                {
                  goto LABEL_92;
                }

                v16 = __OFADD__(16 * v12, v22);
                v12 = 16 * v12 + v22;
                if (v16)
                {
                  goto LABEL_92;
                }

                ++v20;
                if (!--v8)
                {
                  goto LABEL_93;
                }
              }
            }

            goto LABEL_80;
          }

          goto LABEL_92;
        }

        goto LABEL_104;
      }

      if (v11 != 45)
      {
        if (v9)
        {
          if (result)
          {
            v12 = 0;
            while (1)
            {
              v26 = *result;
              v27 = v26 - 48;
              if ((v26 - 48) >= 0xA)
              {
                if ((v26 - 65) < 6)
                {
                  v27 = v26 - 55;
                }

                else
                {
                  if ((v26 - 97) > 5)
                  {
                    goto LABEL_92;
                  }

                  v27 = v26 - 87;
                }
              }

              if ((v12 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_92;
              }

              v16 = __OFADD__(16 * v12, v27);
              v12 = 16 * v12 + v27;
              if (v16)
              {
                goto LABEL_92;
              }

              ++result;
              if (!--v9)
              {
                LOBYTE(v8) = 0;
                goto LABEL_93;
              }
            }
          }

          goto LABEL_80;
        }

LABEL_92:
        v12 = 0;
        LOBYTE(v8) = 1;
        goto LABEL_93;
      }

      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          if (result)
          {
            v12 = 0;
            v13 = result + 1;
            while (1)
            {
              v14 = *v13;
              v15 = v14 - 48;
              if ((v14 - 48) >= 0xA)
              {
                if ((v14 - 65) < 6)
                {
                  v15 = v14 - 55;
                }

                else
                {
                  if ((v14 - 97) > 5)
                  {
                    goto LABEL_92;
                  }

                  v15 = v14 - 87;
                }
              }

              if ((v12 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_92;
              }

              v16 = __OFSUB__(16 * v12, v15);
              v12 = 16 * v12 - v15;
              if (v16)
              {
                goto LABEL_92;
              }

              ++v13;
              if (!--v8)
              {
                goto LABEL_93;
              }
            }
          }

LABEL_80:
          v12 = 0;
          LOBYTE(v8) = 0;
LABEL_93:
          v34 = v8;
          v31 = v8;
          goto LABEL_94;
        }

        goto LABEL_92;
      }

      __break(1u);
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v12 = sub_1CAC42CA8(v5, v7, 16);
  v31 = v32;
LABEL_94:

  if (v31)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t CalendarColor.init(dataRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CAD4BEC4();
  swift_allocObject();
  sub_1CAD4BEB4();
  sub_1CAC17344();
  sub_1CAD4BEA4();
  sub_1CABB8C1C(a1, a2);

  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  return result;
}

uint64_t CalendarColor.dataRepresentation.getter()
{
  sub_1CAD4BEF4();
  swift_allocObject();
  sub_1CAD4BEE4();
  sub_1CAC173EC();
  v0 = sub_1CAD4BED4();

  return v0;
}

uint64_t CalendarColor.stringRepresentation.getter()
{
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
    result = swift_allocObject();
    *(result + 16) = xmmword_1CAD5A590;
    v5 = round(v3 * 255.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        v6 = MEMORY[0x1E69E6530];
        v7 = MEMORY[0x1E69E65A8];
        *(result + 56) = MEMORY[0x1E69E6530];
        *(result + 64) = v7;
        *(result + 32) = v5;
        v8 = round(v2 * 255.0);
        if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -9.22337204e18)
          {
            if (v8 < 9.22337204e18)
            {
              *(result + 96) = v6;
              *(result + 104) = v7;
              *(result + 72) = v8;
              v9 = round(v1 * 255.0);
              if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v9 > -9.22337204e18)
                {
                  if (v9 < 9.22337204e18)
                  {
                    *(result + 136) = v6;
                    *(result + 144) = v7;
                    *(result + 112) = v9;
                    return sub_1CAD4DFA4();
                  }

                  goto LABEL_33;
                }

LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                return result;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  v10 = *v0;
  v11 = 6579570;
  v12 = 0x656C70727570;
  if (v10 != 5)
  {
    v12 = 0x6E776F7262;
  }

  v13 = 0x6E65657267;
  if (v10 != 3)
  {
    v13 = 1702194274;
  }

  if (*v0 <= 4u)
  {
    v12 = v13;
  }

  v14 = 0x65676E61726FLL;
  if (v10 != 1)
  {
    v14 = 0x776F6C6C6579;
  }

  if (*v0)
  {
    v11 = v14;
  }

  if (*v0 <= 2u)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

uint64_t CalendarColor.displayColor.getter()
{
  v1 = sub_1CAD4D7E4();
  MEMORY[0x1EEE9AC00](v1);
  if (*(v0 + 24))
  {
    (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D0]);
    return sub_1CAD4D8C4();
  }

  else
  {
    v5 = sub_1CAD4DF54();

    CUIKSymbolicColorWithName(v5);

    return sub_1CAD4D7D4();
  }
}

id CalendarColor.platformColor.getter()
{
  if (*(v0 + 24))
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    v3 = *v0;
    v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    return [v4 initWithRed:v3 green:v2 blue:v1 alpha:1.0];
  }

  else
  {
    v6 = sub_1CAD4DF54();

    v7 = CUIKSymbolicColorWithName(v6);

    return v7;
  }
}

uint64_t sub_1CAC41BA8()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x63696C6F626D7973;
  }
}

uint64_t sub_1CAC41BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63696C6F626D7973 && a2 == 0xE800000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CAC41CB8(uint64_t a1)
{
  v2 = sub_1CAC43704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC41CF4(uint64_t a1)
{
  v2 = sub_1CAC43704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAC41D30()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_1CAC41D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC438A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC41DA0(uint64_t a1)
{
  v2 = sub_1CAC43758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC41DDC(uint64_t a1)
{
  v2 = sub_1CAC43758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAC41E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CAD4E9E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CAC41EA4(uint64_t a1)
{
  v2 = sub_1CAC437AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC41EE0(uint64_t a1)
{
  v2 = sub_1CAC437AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalendarColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654F0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654F8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465500);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *v1;
  v11 = *(v1 + 24);
  v12 = a1[3];
  v13 = a1;
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1CAC43704();
  sub_1CAD4EB04();
  if (v11)
  {
    v33 = 1;
    sub_1CAC43758();
    v16 = v24;
    sub_1CAD4E8F4();
    v32 = 0;
    v18 = v26;
    v17 = v27;
    sub_1CAD4E954();
    if (v17)
    {
      (*(v25 + 8))(v16, v18);
      return (*(v9 + 8))(v15, v8);
    }

    v31 = 1;
    sub_1CAD4E954();
    v30 = 2;
    sub_1CAD4E954();
    (*(v25 + 8))(v16, v18);
  }

  else
  {
    v29 = 0;
    sub_1CAC437AC();
    sub_1CAD4E8F4();
    v28 = v10;
    sub_1CAC43800();
    v20 = v23;
    sub_1CAD4E984();
    (*(v22 + 8))(v7, v20);
  }

  return (*(v9 + 8))(v15, v8);
}

uint64_t CalendarColor.hash(into:)()
{
  v1 = *v0;
  if (v0[3])
  {
    v3 = v0[1];
    v2 = v0[2];
    MEMORY[0x1CCAA7D10](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1CCAA7D30](v4);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1CCAA7D30](v5);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x1CCAA7D30](v6);
  }

  else
  {
    MEMORY[0x1CCAA7D10](0);
    sub_1CAD4E054();
  }
}

uint64_t CalendarColor.hashValue.getter()
{
  sub_1CAD4EA84();
  CalendarColor.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t CalendarColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465528);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465530);
  *&v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465538);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35[-v11];
  v13 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1CAC43704();
  v14 = v42;
  sub_1CAD4EAE4();
  if (!v14)
  {
    *&v37 = v6;
    v15 = v40;
    v16 = v41;
    v42 = v10;
    v17 = sub_1CAD4E8D4();
    v18 = (2 * *(v17 + 16)) | 1;
    v45 = v17;
    v46 = v17 + 32;
    v47 = 0;
    v48 = v18;
    v19 = sub_1CAC2CC0C();
    if (v19 == 2 || v47 != v48 >> 1)
    {
      v23 = sub_1CAD4E704();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465018);
      *v25 = &type metadata for CalendarColor;
      sub_1CAD4E814();
      sub_1CAD4E6F4();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v42 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v19;
      if (v19)
      {
        v44 = 1;
        sub_1CAC43758();
        sub_1CAD4E804();
        v20 = v16;
        v44 = 0;
        v21 = v5;
        sub_1CAD4E8A4();
        v22 = v42;
        v29 = v28;
        v44 = 1;
        sub_1CAD4E8A4();
        v30 = v39;
        v38 = v31;
        v44 = 2;
        sub_1CAD4E8A4();
        v37 = v32;
        (*(v30 + 8))(v21, v15);
        (*(v22 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v33 = v29;
        *&v34 = v38;
        *(&v34 + 1) = v37;
      }

      else
      {
        v44 = 0;
        sub_1CAC437AC();
        sub_1CAD4E804();
        v20 = v16;
        sub_1CAC43854();
        v27 = v37;
        sub_1CAD4E8C4();
        (*(v38 + 8))(v8, v27);
        (*(v42 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v33 = v44;
        v34 = 0uLL;
      }

      *v20 = v33;
      *(v20 + 8) = v34;
      *(v20 + 24) = v36 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1CAC42A08()
{
  sub_1CAD4EA84();
  CalendarColor.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC42A68()
{
  sub_1CAD4EA84();
  CalendarColor.hash(into:)();
  return sub_1CAD4EAC4();
}

id CUIKCalendarColor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CUIKCalendarColor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKCalendarColor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CUIKCalendarColor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKCalendarColor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unsigned __int8 *sub_1CAC42CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1CAD4E154();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1CAC43234();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CAD4E714();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1CAC43234()
{
  v0 = sub_1CAD4E164();
  v4 = sub_1CAC432B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1CAC432B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1CAD4E4F4();
    if (!v9 || (v10 = v9, v11 = sub_1CAD39B78(v9, 0), v12 = sub_1CAC4340C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1CAD4E044();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1CAD4E044();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1CAD4E714();
LABEL_4:

  return sub_1CAD4E044();
}

unint64_t sub_1CAC4340C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1CAC4362C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1CAD4E104();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1CAD4E714();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1CAC4362C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1CAD4E0E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CAC4362C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CAD4E114();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCAA7370](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s13CalendarUIKit0A5ColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return sub_1CACA05C4(LOBYTE(v4), LOBYTE(v5));
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v4 == v5;
  if (v7 != *(a2 + 8))
  {
    v8 = 0;
  }

  return v6 == *(a2 + 16) && v8;
}

unint64_t sub_1CAC43704()
{
  result = qword_1EC465508;
  if (!qword_1EC465508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465508);
  }

  return result;
}

unint64_t sub_1CAC43758()
{
  result = qword_1EC465510;
  if (!qword_1EC465510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465510);
  }

  return result;
}

unint64_t sub_1CAC437AC()
{
  result = qword_1EC465518;
  if (!qword_1EC465518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465518);
  }

  return result;
}

unint64_t sub_1CAC43800()
{
  result = qword_1EC465520;
  if (!qword_1EC465520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465520);
  }

  return result;
}

unint64_t sub_1CAC43854()
{
  result = qword_1EC465540;
  if (!qword_1EC465540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465540);
  }

  return result;
}

uint64_t sub_1CAC438A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id _s13CalendarUIKit17CUIKCalendarColorC011deserializeD0ySo7UIColorCSg10Foundation4DataVFZ_0()
{
  sub_1CAD4BEC4();
  swift_allocObject();
  sub_1CAD4BEB4();
  sub_1CAC17344();
  sub_1CAD4BEA4();

  return CalendarColor.platformColor.getter();
}

unint64_t sub_1CAC43AA4()
{
  result = qword_1EC465548;
  if (!qword_1EC465548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465548);
  }

  return result;
}

unint64_t sub_1CAC43AFC()
{
  result = qword_1EC465550;
  if (!qword_1EC465550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465550);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CalendarColor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarColor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CalendarColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1CAC43C8C()
{
  result = qword_1EC465558;
  if (!qword_1EC465558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465558);
  }

  return result;
}

unint64_t sub_1CAC43CE4()
{
  result = qword_1EC465560;
  if (!qword_1EC465560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465560);
  }

  return result;
}

unint64_t sub_1CAC43D3C()
{
  result = qword_1EC465568;
  if (!qword_1EC465568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465568);
  }

  return result;
}

unint64_t sub_1CAC43D94()
{
  result = qword_1EC465570;
  if (!qword_1EC465570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465570);
  }

  return result;
}

unint64_t sub_1CAC43DEC()
{
  result = qword_1EC465578;
  if (!qword_1EC465578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465578);
  }

  return result;
}

unint64_t sub_1CAC43E44()
{
  result = qword_1EC465580;
  if (!qword_1EC465580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465580);
  }

  return result;
}

unint64_t sub_1CAC43E9C()
{
  result = qword_1EC465588;
  if (!qword_1EC465588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465588);
  }

  return result;
}

unint64_t sub_1CAC43EF4()
{
  result = qword_1EC465590;
  if (!qword_1EC465590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465590);
  }

  return result;
}

unint64_t sub_1CAC43F4C()
{
  result = qword_1EC465598;
  if (!qword_1EC465598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465598);
  }

  return result;
}

unint64_t sub_1CAC43FA0()
{
  result = qword_1EC4655A0;
  if (!qword_1EC4655A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4655A0);
  }

  return result;
}

uint64_t CodableViaTransform.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v8 = sub_1CAD4E4D4();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v27 = a3;
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAD4EAD4();
  if (!v4)
  {
    v21 = v8;
    v22 = v10;
    v23 = a1;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v14 = v27;
    v15 = v31;
    swift_getAssociatedConformanceWitness();
    sub_1CAD4E9F4();
    v16 = v22;
    (*(v14 + 48))(v13, v15, v14);
    v17 = v26;
    v18 = *(v15 - 8);
    if ((*(v18 + 48))(v16, 1, v15) != 1)
    {
      (*(v17 + 8))(v13, AssociatedTypeWitness);
      (*(v18 + 32))(v25, v16, v15);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v19 = v23;
      return __swift_destroy_boxed_opaque_existential_1(v19);
    }

    (*(v24 + 8))(v16, v21);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1CAD4E694();
    MEMORY[0x1CCAA7330](0xD000000000000024, 0x80000001CAD76340);
    sub_1CAD4E9C4();
    MEMORY[0x1CCAA7330](39, 0xE100000000000000);
    sub_1CAD4E704();
    swift_allocError();
    sub_1CAD4E6E4();

    swift_willThrow();
    (*(v17 + 8))(v13, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v30);
    a1 = v23;
  }

  v19 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t CodableViaTransform.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14[-v10 - 8];
  result = (*(a3 + 56))(v3, a2, a3);
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CAD4EAF4();
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    swift_getAssociatedConformanceWitness();
    sub_1CAD4EA04();
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1CAC445FC(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v8 = 0;
  v12 = a1;
  v9 = *(a2 + 16);
  while (v9 != v8)
  {
    v10 = *(type metadata accessor for EventCalendarModelObject() - 8);
    sub_1CAC44C4C(&v12, a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++, a3, a4);
    if (v4)
    {
    }
  }

  return v12;
}

uint64_t sub_1CAC446E4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1CAC4C5E8(a1, &v11 - v5, type metadata accessor for EventCalendarModelObject);
  v7 = type metadata accessor for EventCalendarModelObject();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  v12 = v2;
  sub_1CAC4E334(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v12 = v2;
  swift_getKeyPath();
  sub_1CAD4C444();

  v8 = v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v9 = type metadata accessor for EventModelObject();
  sub_1CAC44BDC(v6, v8 + *(v9 + 104));
  swift_endAccess();
  v12 = v2;
  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CAC448E0()
{
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    v4 = *(v0 + 264);
    if (!v4)
    {
      if (qword_1EC462CE8 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EC47DC08;
      goto LABEL_23;
    }

    v5 = *(v0 + 256);
    v6 = qword_1EC462CE0;

    if (v6 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1CAD58380;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1CABC6340();
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    v3 = sub_1CAD4DF64();
  }

  else
  {
    if (v1 == 1)
    {
      if (*(v0 + 246))
      {
        if (qword_1EC462CD0 != -1)
        {
          swift_once();
        }

        v2 = &qword_1EC47DBD8;
      }

      else
      {
        if (qword_1EC462CD8 != -1)
        {
          swift_once();
        }

        v2 = &qword_1EC47DBE8;
      }

      goto LABEL_23;
    }

    if (!v1 && (*(v0 + 246) & 1) != 0)
    {
      if (qword_1EC462CC8 != -1)
      {
        swift_once();
      }

      v2 = &qword_1EC47DBC8;
LABEL_23:
      v3 = *v2;

      return v3;
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1CAC44B00()
{
  if (*(v0 + 88) == 255)
  {
    return 0;
  }

  else
  {
    return CalendarColor.displayColor.getter();
  }
}

uint64_t sub_1CAC44B58(uint64_t a1)
{
  *(a1 + 8) = sub_1CAC4E334(&qword_1EC4655A8, type metadata accessor for EventCalendarModelObject);
  result = sub_1CAC4E334(&qword_1EC464CF8, type metadata accessor for EventCalendarModelObject);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CAC44BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC44C4C(uint64_t *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v40 = a4;
  v7 = type metadata accessor for EventCalendarModelObject();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = *(a2 + 184);
  v15 = *(a2 + 216);
  v52 = *(a2 + 200);
  v53[0] = v15;
  *(v53 + 10) = *(a2 + 226);
  v16 = *(a2 + 120);
  v17 = *(a2 + 152);
  v48 = *(a2 + 136);
  v49 = v17;
  v50 = *(a2 + 168);
  v51 = v14;
  v46 = *(a2 + 104);
  v47 = v16;
  v18 = *(a2 + 184);
  v19 = *(a2 + 216);
  v60 = *(a2 + 200);
  v61[0] = v19;
  *(v61 + 10) = *(a2 + 226);
  v20 = *(a2 + 120);
  v21 = *(a2 + 152);
  v56 = *(a2 + 136);
  v57 = v21;
  v58 = *(a2 + 168);
  v59 = v18;
  v54 = *(a2 + 104);
  v55 = v20;
  result = sub_1CABED4EC(&v54);
  if (result != 1)
  {
    v44[6] = v60;
    v45[0] = v61[0];
    *(v45 + 10) = *(v61 + 10);
    v44[2] = v56;
    v44[3] = v57;
    v44[4] = v58;
    v44[5] = v59;
    v44[0] = v54;
    v44[1] = v55;
    if ((*(a2 + 244) & 1) != 0 || (v56 - 5) <= 1)
    {
      sub_1CAC4C5E8(a2, v13, type metadata accessor for EventCalendarModelObject);
      v23 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_1CAD351F0(0, v23[2] + 1, 1, v23);
        *a3 = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1CAD351F0(v25 > 1, v26 + 1, 1, v23);
        *a3 = v23;
      }

      v23[2] = v26 + 1;
      return sub_1CAC17500(v13, v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26);
    }

    else
    {
      v27 = v54;
      v28 = *a1;
      v29 = *(*a1 + 16);
      swift_bridgeObjectRetain_n();
      v39 = v27;
      if (v29 && (v30 = sub_1CAC1628C(v27, *(&v27 + 1)), (v31 & 1) != 0))
      {
        v32 = *(*(v28 + 56) + 8 * v30);
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      sub_1CAC4C5E8(a2, v11, type metadata accessor for EventCalendarModelObject);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1CAD351F0(0, v32[2] + 1, 1, v32);
      }

      v34 = v32[2];
      v33 = v32[3];
      if (v34 >= v33 >> 1)
      {
        sub_1CAD351F0(v33 > 1, v34 + 1, 1, v32);
      }

      *(v27 + 16) = v34 + 1;
      sub_1CAC17500(v11, v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v34);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *&v42[0] = *a1;
      v36 = v39;
      sub_1CAC79060(v27, v39, *(&v27 + 1), v35);

      *a1 = *&v42[0];
      v42[6] = v52;
      v43[0] = v53[0];
      *(v43 + 10) = *(v53 + 10);
      v42[2] = v48;
      v42[3] = v49;
      v42[4] = v50;
      v42[5] = v51;
      v42[0] = v46;
      v42[1] = v47;
      sub_1CAC17240(v42, v41);
      v37 = v40;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = *v37;
      *v37 = 0x8000000000000000;
      sub_1CAC78E5C(v44, v36, *(&v27 + 1), v38);

      *v37 = v41[0];
    }
  }

  return result;
}

BOOL sub_1CAC45064(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if (v2 == -1)
  {
    if ((v3 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else if (v3 == -1)
  {
    if (v2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  else
  {
    if (v2 < v3)
    {
      return 1;
    }

    if (v3 < v2)
    {
      return 0;
    }
  }

  sub_1CABA6054();
  return sub_1CAD4E514() == -1;
}

uint64_t sub_1CAC4512C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v8;
  v9 = sub_1CAD4C404();
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CAD4C1E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CAD4C374();
  v36 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 392);
  v39 = v2;
  v19 = v18(a1, a2);
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  v33 = v15;
  v40 = v19;
  swift_getAssociatedTypeWitness();
  sub_1CAD4E294();
  swift_getWitnessTable();
  if (sub_1CAD4E3B4())
  {

LABEL_4:
    v21 = 0;
    return v21 & 1;
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E6969868], v11);
  sub_1CAD4C1F4();
  (*(v12 + 8))(v14, v11);
  v22 = *(a2 + 216);
  v23 = v39;
  v32 = a1;
  v24 = a1;
  v25 = v38;
  v22(v24, a2);
  v26 = v37;
  v27 = *(v37 + 48);
  if (v27(v25, 1, v9) != 1)
  {
    (*(v26 + 32))(v35, v25, v9);
LABEL_10:
    v31 = sub_1CAD4C344();
    v40 = v20;
    MEMORY[0x1EEE9AC00](v31);
    *(&v32 - 4) = v32;
    *(&v32 - 3) = a2;
    *(&v32 - 2) = v17;
    *(&v32 - 1) = v23;
    swift_getWitnessTable();
    v21 = sub_1CAD4E174();

    (*(v36 + 8))(v17, v33);
    return v21 & 1;
  }

  v28 = v34;
  sub_1CAD4C3C4();
  result = (v27)(v28, 1, v9);
  if (result != 1)
  {
    (*(v26 + 32))(v35, v28, v9);
    v30 = v27(v25, 1, v9);
    v23 = v39;
    if (v30 != 1)
    {
      sub_1CAB21B68(v25, &qword_1EC4635D0);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

BOOL sub_1CAC45614(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CAD4E4D4();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v8;
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1CAD4E4D4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v28 - v17;
  v19 = *(a2 + 336);
  v32 = v2;
  v19(a1, a2);
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v16 + 32))(v18, v15, v10);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = EventCalendarModel.isLocalCalendar.getter(v10, AssociatedConformanceWitness);
    (*(v16 + 8))(v18, v10);
    if (!v21)
    {
      return 0;
    }
  }

  v22 = v31;
  (*(a2 + 408))(a1, a2);
  v23 = v33;
  if ((*(v33 + 48))(v22, 1, AssociatedTypeWitness) == 1)
  {
    (*(v29 + 8))(v22, v30);
    return 1;
  }

  v24 = v28;
  (*(v23 + 32))(v28, v22, AssociatedTypeWitness);
  v25 = swift_getAssociatedConformanceWitness();
  v26 = (*(v25 + 16))(AssociatedTypeWitness, v25);
  (*(v23 + 8))(v24, AssociatedTypeWitness);
  return v26 == 1;
}

uint64_t sub_1CAC45A40(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6)
{
  v64 = a6;
  v65 = a3;
  v63 = a5;
  v9 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(a2, &v114, &qword_1EC464C80);
  if (v115)
  {
    sub_1CAB284E0(&v114, v116);
    v12 = *(a1 + 184);
    v13 = *(a1 + 216);
    v108 = *(a1 + 200);
    v109[0] = v13;
    *(v109 + 10) = *(a1 + 226);
    v14 = *(a1 + 120);
    v15 = *(a1 + 152);
    v104 = *(a1 + 136);
    v105 = v15;
    v106 = *(a1 + 168);
    v107 = v12;
    v102 = *(a1 + 104);
    v103 = v14;
    v17 = *(&v102 + 1);
    v16 = v102;
    v18 = *(a1 + 200);
    v88 = *(a1 + 184);
    v89 = v18;
    v90[0] = *(a1 + 216);
    *(v90 + 10) = *(a1 + 226);
    v19 = *(a1 + 136);
    v84 = *(a1 + 120);
    v85 = v19;
    v20 = *(a1 + 168);
    v86 = *(a1 + 152);
    v87 = v20;
    v21 = *(a1 + 152);
    v113[1] = *(a1 + 168);
    v113[0] = v21;
    v22 = *(a1 + 120);
    v112 = *(a1 + 136);
    v111 = v22;
    *(&v113[4] + 10) = *(a1 + 226);
    v113[4] = *(a1 + 216);
    v23 = *(a1 + 184);
    v113[3] = *(a1 + 200);
    v113[2] = v23;
    v110 = v102;
    if (sub_1CABED4EC(&v110) == 1)
    {
      v99 = __PAIR128__(v17, v16);
      v101[3] = v88;
      v101[4] = v89;
      v101[5] = v90[0];
      *(&v101[5] + 10) = *(v90 + 10);
      v100 = v84;
      v101[0] = v85;
      v101[1] = v86;
      v101[2] = v87;
      sub_1CAB23A9C(&v102, v91, &unk_1EC4679A0);
      sub_1CAB21B68(&v99, &unk_1EC4679A0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v99 = __PAIR128__(v17, v16);
      v101[3] = v88;
      v101[4] = v89;
      v101[5] = v90[0];
      *(&v101[5] + 10) = *(v90 + 10);
      v100 = v84;
      v101[0] = v85;
      v101[1] = v86;
      v101[2] = v87;
      sub_1CAB23A9C(&v102, v91, &unk_1EC4679A0);

      sub_1CAC1729C(&v99);
    }

    v34 = v117;
    v35 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v36 = (*(v35 + 24))(v34, v35);
    if (v17)
    {
      if (v16 == v36 && v17 == v37)
      {

        v38 = v64;
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(v116);
        v33 = v65;
        goto LABEL_14;
      }

      v39 = sub_1CAD4E9E4();

      v38 = v64;
      if (v39)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v116);
    goto LABEL_25;
  }

  v62 = a4;
  sub_1CAB21B68(&v114, &qword_1EC464C80);
  v24 = *(a1 + 184);
  v25 = *(a1 + 216);
  v108 = *(a1 + 200);
  v109[0] = v25;
  *(v109 + 10) = *(a1 + 226);
  v26 = *(a1 + 120);
  v27 = *(a1 + 152);
  v104 = *(a1 + 136);
  v105 = v27;
  v106 = *(a1 + 168);
  v107 = v24;
  v102 = *(a1 + 104);
  v103 = v26;
  v28 = *(a1 + 120);
  v67 = *(a1 + 104);
  v68 = v28;
  *v69 = *(a1 + 136);
  *&v69[16] = *(a1 + 152);
  v29 = BYTE8(v27);
  v30 = *(a1 + 209);
  v86 = *(a1 + 193);
  v87 = v30;
  v88 = *(a1 + 225);
  LOBYTE(v89) = *(a1 + 241);
  v31 = *(a1 + 177);
  v84 = *(a1 + 161);
  v85 = v31;
  *&v113[0] = *(a1 + 152);
  v112 = *(a1 + 136);
  v32 = *(a1 + 104);
  v111 = *(a1 + 120);
  v110 = v32;
  *(&v113[1] + 9) = *(a1 + 177);
  *(v113 + 9) = *(a1 + 161);
  BYTE9(v113[5]) = *(a1 + 241);
  *(&v113[4] + 9) = *(a1 + 225);
  *(&v113[3] + 9) = *(a1 + 209);
  *(&v113[2] + 9) = *(a1 + 193);
  BYTE8(v113[0]) = BYTE8(v27);
  if (sub_1CABED4EC(&v110) == 1)
  {
    v99 = v67;
    v100 = v68;
    v101[0] = *v69;
    *(&v101[3] + 9) = v86;
    *(&v101[4] + 9) = v87;
    *(&v101[5] + 9) = v88;
    *(&v101[1] + 9) = v84;
    *&v101[1] = *&v69[16];
    BYTE8(v101[1]) = v29;
    BYTE9(v101[6]) = v89;
    *(&v101[2] + 9) = v85;
    sub_1CAB23A9C(&v102, v91, &unk_1EC4679A0);
    sub_1CAB21B68(&v99, &unk_1EC4679A0);
    v33 = v65;
  }

  else
  {
    v99 = v67;
    v100 = v68;
    v101[0] = *v69;
    *(&v101[3] + 9) = v86;
    *(&v101[4] + 9) = v87;
    *(&v101[5] + 9) = v88;
    *(&v101[1] + 9) = v84;
    *&v101[1] = *&v69[16];
    BYTE8(v101[1]) = v29;
    BYTE9(v101[6]) = v89;
    *(&v101[2] + 9) = v85;
    sub_1CAB23A9C(&v102, v91, &unk_1EC4679A0);
    sub_1CAC1729C(&v99);
    v33 = v65;
    if (v29)
    {
LABEL_30:
      v44 = 0;
      return v44 & 1;
    }
  }

  v45 = *(a1 + 120);
  v99 = *(a1 + 104);
  v100 = v45;
  v46 = *(a1 + 176);
  *(&v101[3] + 8) = *(a1 + 192);
  v47 = *(a1 + 224);
  *(&v101[4] + 8) = *(a1 + 208);
  *(&v101[5] + 8) = v47;
  v48 = *(a1 + 160);
  *(v101 + 8) = *(a1 + 144);
  *(&v101[1] + 8) = v48;
  v49 = *(a1 + 136);
  WORD4(v101[6]) = *(a1 + 240);
  *(&v101[2] + 8) = v46;
  *&v101[0] = v49;
  if (sub_1CABED4EC(&v99) != 1 && (v33 & 1) != 0 && v49 == 6)
  {
    goto LABEL_30;
  }

  v51 = *(a1 + 184);
  v52 = *(a1 + 216);
  v90[0] = *(a1 + 200);
  v90[1] = v52;
  *(&v90[1] + 10) = *(a1 + 226);
  v53 = *(a1 + 120);
  v54 = *(a1 + 152);
  v86 = *(a1 + 136);
  v87 = v54;
  v88 = *(a1 + 168);
  v89 = v51;
  v84 = *(a1 + 104);
  v85 = v53;
  v55 = *(a1 + 120);
  v81 = *(a1 + 104);
  v82 = v55;
  v83[0] = *(a1 + 136);
  *(v83 + 9) = *(a1 + 145);
  v56 = BYTE9(v54);
  v57 = *(a1 + 178);
  v58 = *(a1 + 210);
  v78 = *(a1 + 194);
  v79 = v58;
  v80 = *(a1 + 226);
  v76 = *(a1 + 162);
  v77 = v57;
  *&v92[9] = *(a1 + 145);
  v59 = *(a1 + 136);
  v60 = *(a1 + 104);
  v91[1] = *(a1 + 120);
  *v92 = v59;
  v91[0] = v60;
  v94 = *(a1 + 162);
  v98 = *(a1 + 226);
  v97 = *(a1 + 210);
  v96 = *(a1 + 194);
  v95 = *(a1 + 178);
  v93 = BYTE9(v54);
  if (sub_1CABED4EC(v91) == 1)
  {
    v67 = v81;
    v68 = v82;
    *v69 = v83[0];
    *&v69[9] = *(v83 + 9);
    v72 = v77;
    v73 = v78;
    v74 = v79;
    v75 = v80;
    v70 = v56;
    v71 = v76;
    sub_1CAB23A9C(&v84, v66, &unk_1EC4679A0);
    sub_1CAB21B68(&v67, &unk_1EC4679A0);
    v38 = v64;
    goto LABEL_14;
  }

  v67 = v81;
  v68 = v82;
  *v69 = v83[0];
  *&v69[9] = *(v83 + 9);
  v72 = v77;
  v73 = v78;
  v74 = v79;
  v75 = v80;
  v70 = v56;
  v71 = v76;
  sub_1CAB23A9C(&v84, v66, &unk_1EC4679A0);
  sub_1CAC1729C(&v67);
  v38 = v64;
  if ((v62 & 1) == 0)
  {
LABEL_14:
    if ((v33 & 1) == 0)
    {
LABEL_23:
      v44 = 1;
      return v44 & 1;
    }

    goto LABEL_15;
  }

  v44 = v56 ^ 1;
  if (v56 & 1) == 0 && (v33)
  {
LABEL_15:
    if (*(a1 + 89) == 1)
    {
      v40 = *(v63 + 16);
      if (v40)
      {
        v41 = v63 + 32;
        while (1)
        {
          sub_1CAB299C0(v41, &v110);
          sub_1CAC4C5E8(a1, v11, type metadata accessor for EventCalendarModelObject);
          v42 = (v38 & 1) != 0 ? 125 : 121;
          v43 = sub_1CAC48E0C(&v110, v11, v42);
          sub_1CAC13820(v11);
          __swift_destroy_boxed_opaque_existential_1(&v110);
          if (!v43)
          {
            goto LABEL_25;
          }

          v41 += 40;
          if (!--v40)
          {
            goto LABEL_23;
          }
        }
      }

      goto LABEL_23;
    }

LABEL_25:
    v44 = 0;
  }

  return v44 & 1;
}

uint64_t sub_1CAC46250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a1;
  v44 = a3;
  v8 = sub_1CAD4BDC4();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAD4C374();
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_1CAD4C0F4();
  v37 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v35 - v21;
  (*(v11 + 16))(v13, a2, v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v38;
  v25 = AssociatedTypeWitness;
  v26 = v16;
  EventRecurrenceRuleModel.dateComponents.getter(v25, AssociatedConformanceWitness);
  v27 = *(a5 + 176);
  v42 = a4;
  v43 = a5;
  v27(a4, a5);
  sub_1CAD4C2B4();
  v28 = v37;
  v29 = *(v37 + 8);
  v29(v20, v17);
  (*(v40 + 8))(v24, v41);
  (*(v36 + 8))(v13, v35);
  v30 = *(v28 + 48);
  if (v30(v26, 1, v17) == 1)
  {
    v31 = v39;
    sub_1CAD4C054();
    if (v30(v26, 1, v17) != 1)
    {
      sub_1CAB21B68(v26, &unk_1EC465A70);
    }
  }

  else
  {
    v32 = v39;
    (*(v28 + 32))(v39, v26, v17);
    v31 = v32;
  }

  (*(v43 + 184))(v42);
  v33 = sub_1CAD4C094();
  v29(v20, v17);
  v29(v31, v17);
  return v33 & 1;
}

uint64_t sub_1CAC46688(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CACED4B0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CAC4679C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1CAC466F4(void **a1)
{
  v2 = *(type metadata accessor for EventCalendarModelObject() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CACED4C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1CAC46894(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1CAC4679C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAD4E9A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1CAD4E244();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CAC46EEC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CAC469C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CAC46894(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAD4E9A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EventCalendarModelObject();
        v6 = sub_1CAD4E244();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EventCalendarModelObject() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CAC47900(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CAC46C3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CAC469C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 144 * a3 - 144;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 176);
      v12 = *(v10 + 32);
      if (v11 > 4)
      {
        if (v11 != 5)
        {
          if (v11 == 6)
          {
            if ((v12 - 5) >= 2)
            {
              goto LABEL_4;
            }

            goto LABEL_30;
          }

LABEL_15:
          v13 = 1;
          v11 = 1;
          if (v12 > 4)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }

        v13 = 0;
        v11 = 1000;
        if (v12 > 4)
        {
LABEL_18:
          if (v12 == 5)
          {
            v12 = 1000;
            if (v11 < 0x3E8)
            {
              goto LABEL_31;
            }

            goto LABEL_29;
          }

          if (v12 == 6)
          {
            if (v13)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v11)
        {
          if (v11 == 4)
          {
            v13 = 1;
            v11 = 999;
            if (v12 > 4)
            {
              goto LABEL_18;
            }

            goto LABEL_23;
          }

          goto LABEL_15;
        }

        v13 = 1;
        if (v12 > 4)
        {
          goto LABEL_18;
        }
      }

LABEL_23:
      if (!v12)
      {
        goto LABEL_28;
      }

      if (v12 == 4)
      {
        v12 = 999;
        if (v11 < 0x3E7)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

LABEL_27:
      v12 = 1;
LABEL_28:
      if (v11 < v12)
      {
        goto LABEL_31;
      }

LABEL_29:
      if (v12 < v11)
      {
        goto LABEL_4;
      }

LABEL_30:
      sub_1CABA6054();
      result = sub_1CAD4E514();
      if (result != -1)
      {
        goto LABEL_4;
      }

LABEL_31:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v25 = *(v10 + 224);
      v26 = *(v10 + 240);
      *v27 = *(v10 + 256);
      *&v27[10] = *(v10 + 266);
      v21 = *(v10 + 160);
      v22 = *(v10 + 176);
      v23 = *(v10 + 192);
      v24 = *(v10 + 208);
      v20 = *(v10 + 144);
      v14 = *(v10 + 80);
      *(v10 + 208) = *(v10 + 64);
      *(v10 + 224) = v14;
      v15 = *(v10 + 128);
      v16 = *(v10 + 48);
      *(v10 + 176) = *(v10 + 32);
      *(v10 + 192) = v16;
      v17 = *(v10 + 16);
      *(v10 + 144) = *v10;
      *(v10 + 160) = v17;
      v18 = *(v10 + 112);
      *(v10 + 240) = *(v10 + 96);
      *(v10 + 256) = v18;
      *(v10 + 272) = v15;
      *(v10 + 64) = v24;
      *(v10 + 80) = v25;
      *(v10 + 96) = v26;
      *(v10 + 112) = *v27;
      *(v10 + 16) = v21;
      *(v10 + 32) = v22;
      *(v10 + 48) = v23;
      *v10 = v20;
      *(v10 + 122) = *&v27[10];
      v10 -= 144;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v7 += 144;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1CAC46C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = type metadata accessor for EventCalendarModelObject();
  v8 = MEMORY[0x1EEE9AC00](v42);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v31 - v12);
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = (&v31 - v16);
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v32 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v36 = v20;
      v37 = a3;
      v34 = v23;
      v35 = v22;
      v24 = v20;
      while (1)
      {
        sub_1CAC4C5E8(v23, v17, type metadata accessor for EventCalendarModelObject);
        sub_1CAC4C5E8(v24, v13, type metadata accessor for EventCalendarModelObject);
        v25 = v17[7];
        v26 = v13[7];
        if (v25 == -1)
        {
          break;
        }

        if (v26 == -1)
        {
          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_15;
          }
        }

        else if (v25 >= v26)
        {
          if (v26 < v25)
          {
            goto LABEL_4;
          }

LABEL_15:
          v27 = v17[6];
          v40 = v17[5];
          v41 = v27;
          v28 = v13[6];
          v38 = v13[5];
          v39 = v28;
          sub_1CABA6054();
          v29 = sub_1CAD4E514();
          sub_1CAC13820(v13);
          result = sub_1CAC13820(v17);
          if (v29 != -1)
          {
            goto LABEL_5;
          }

          if (!v18)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        sub_1CAC13820(v13);
        result = sub_1CAC13820(v17);
        if (!v18)
        {
LABEL_22:
          __break(1u);
          return result;
        }

LABEL_19:
        sub_1CAC17500(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1CAC17500(v10, v24);
        v24 += v21;
        v23 += v21;
        if (__CFADD__(v22++, 1))
        {
          goto LABEL_5;
        }
      }

      if ((v26 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
      {
LABEL_4:
        sub_1CAC13820(v13);
        result = sub_1CAC13820(v17);
LABEL_5:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v22 = v35 - 1;
        v23 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        continue;
      }

      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1CAC46EEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_170:
    v7 = *v95;
    if (!*v95)
    {
      goto LABEL_208;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_172;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_73;
    }

    v10 = *v5;
    v11 = *(*v5 + 144 * v7 + 32);
    v12 = *(*v5 + 144 * v9 + 32);
    if (v11 <= 4)
    {
      if (!v11)
      {
        v13 = 1;
        if (v12 > 4)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      if (v11 == 4)
      {
        v13 = 1;
        v11 = 999;
        if (v12 > 4)
        {
LABEL_9:
          if (v12 == 5)
          {
            v12 = 1000;
            if (v11 < 0x3E8)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

          if (v12 == 6)
          {
            if (v13)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }

          goto LABEL_27;
        }

LABEL_18:
        if (!v12)
        {
          goto LABEL_28;
        }

        if (v12 == 4)
        {
          v12 = 999;
          if (v11 < 0x3E7)
          {
LABEL_29:
            v14 = 1;
            goto LABEL_30;
          }

LABEL_21:
          if (v12 >= v11)
          {
            goto LABEL_22;
          }

          goto LABEL_16;
        }

LABEL_27:
        v12 = 1;
LABEL_28:
        if (v11 < v12)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

LABEL_17:
      v13 = 1;
      v11 = 1;
      if (v12 > 4)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    if (v11 == 5)
    {
      v13 = 0;
      v11 = 1000;
      if (v12 > 4)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    if (v11 != 6)
    {
      goto LABEL_17;
    }

    if ((v12 - 5) < 2)
    {
LABEL_22:
      sub_1CABA6054();
      result = sub_1CAD4E514();
      v14 = result == -1;
      goto LABEL_30;
    }

LABEL_16:
    v14 = 0;
LABEL_30:
    v7 = v9 + 2;
    if (v9 + 2 >= v6)
    {
      goto LABEL_64;
    }

    v15 = v10 + 144 * v9 + 336;
    do
    {
      v16 = *(v15 - 16);
      v17 = *(v15 - 160);
      if (v16 > 4)
      {
        if (v16 != 5)
        {
          if (v16 == 6)
          {
            if ((v17 - 5) >= 2)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

LABEL_46:
          v18 = 1;
          v16 = 1;
          if (v17 <= 4)
          {
            goto LABEL_47;
          }

          goto LABEL_38;
        }

        v18 = 0;
        v16 = 1000;
        if (v17 <= 4)
        {
LABEL_47:
          if (v17)
          {
            if (v17 == 4)
            {
              v17 = 999;
              if (v16 < 0x3E7)
              {
                goto LABEL_32;
              }

              goto LABEL_57;
            }

LABEL_55:
            v17 = 1;
          }

          if (v16 < v17)
          {
            goto LABEL_32;
          }

LABEL_57:
          if (v17 < v16)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }
      }

      else
      {
        if (v16)
        {
          if (v16 == 4)
          {
            v18 = 1;
            v16 = 999;
            if (v17 <= 4)
            {
              goto LABEL_47;
            }

            goto LABEL_38;
          }

          goto LABEL_46;
        }

        v18 = 1;
        if (v17 <= 4)
        {
          goto LABEL_47;
        }
      }

LABEL_38:
      if (v17 == 5)
      {
        v17 = 1000;
        if (v16 < 0x3E8)
        {
LABEL_32:
          if (!v14)
          {
            goto LABEL_73;
          }

          goto LABEL_33;
        }

        goto LABEL_57;
      }

      if (v17 != 6)
      {
        goto LABEL_55;
      }

      if (v18)
      {
        goto LABEL_32;
      }

LABEL_58:
      sub_1CABA6054();
      result = sub_1CAD4E514();
      if (result == -1)
      {
        goto LABEL_32;
      }

LABEL_59:
      if (v14)
      {
        goto LABEL_65;
      }

LABEL_33:
      ++v7;
      v15 += 144;
    }

    while (v6 != v7);
    v7 = v6;
LABEL_64:
    if (v14)
    {
LABEL_65:
      if (v7 >= v9)
      {
        if (v9 < v7)
        {
          v19 = 144 * v7 - 144;
          v20 = 144 * v9;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v9 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_205;
              }

              v24 = (v23 + v19);
              v108 = *(v23 + v20 + 80);
              v110 = *(v23 + v20 + 96);
              *v112 = *(v23 + v20 + 112);
              *&v112[10] = *(v23 + v20 + 122);
              v100 = *(v23 + v20 + 16);
              v102 = *(v23 + v20 + 32);
              v104 = *(v23 + v20 + 48);
              v106 = *(v23 + v20 + 64);
              v98 = *(v23 + v20);
              result = memmove((v23 + v20), (v23 + v19), 0x90uLL);
              v24[5] = v108;
              v24[6] = v110;
              v24[7] = *v112;
              *(v24 + 122) = *&v112[10];
              v24[1] = v100;
              v24[2] = v102;
              v24[3] = v104;
              v24[4] = v106;
              *v24 = v98;
            }

            ++v9;
            v19 -= 144;
            v20 += 144;
          }

          while (v9 < v21);
          v5 = a3;
          v9 = v22;
        }

        goto LABEL_73;
      }

LABEL_201:
      __break(1u);
LABEL_202:
      result = sub_1CACED054(v8);
      v8 = result;
LABEL_172:
      v89 = *(v8 + 2);
      if (v89 >= 2)
      {
        while (1)
        {
          v90 = *v5;
          if (!*v5)
          {
            goto LABEL_206;
          }

          v5 = *&v8[16 * v89];
          v91 = *&v8[16 * v89 + 24];
          sub_1CAC483A0((v90 + 144 * v5), (v90 + 144 * *&v8[16 * v89 + 16]), (v90 + 144 * v91), v7);
          if (v4)
          {
          }

          if (v91 < v5)
          {
            goto LABEL_195;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1CACED054(v8);
          }

          if (v89 - 2 >= *(v8 + 2))
          {
            goto LABEL_196;
          }

          v92 = &v8[16 * v89];
          *v92 = v5;
          *(v92 + 1) = v91;
          result = sub_1CACECFC8(v89 - 1);
          v89 = *(v8 + 2);
          v5 = a3;
          if (v89 <= 1)
          {
          }
        }
      }
    }

LABEL_73:
    v25 = *(v5 + 8);
    if (v7 >= v25)
    {
      goto LABEL_117;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_198;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_117;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_199;
    }

    if (v9 + a4 >= v25)
    {
      v26 = *(v5 + 8);
    }

    else
    {
      v26 = (v9 + a4);
    }

    if (v26 < v9)
    {
LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

    if (v7 == v26)
    {
LABEL_117:
      if (v7 < v9)
      {
        goto LABEL_197;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1CACED068(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v43 = *(v8 + 2);
      v42 = *(v8 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_1CACED068((v42 > 1), v43 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v44;
      v45 = &v8[16 * v43];
      *(v45 + 4) = v9;
      *(v45 + 5) = v7;
      v46 = *v95;
      if (!*v95)
      {
        goto LABEL_207;
      }

      if (!v43)
      {
LABEL_3:
        v6 = *(v5 + 8);
        if (v7 >= v6)
        {
          goto LABEL_170;
        }

        continue;
      }

      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_137:
          if (v51)
          {
            goto LABEL_186;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_189;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_192;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_193;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_158;
          }

          goto LABEL_151;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_151:
        if (v69)
        {
          goto LABEL_188;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_191;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_158:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (!*v5)
        {
          goto LABEL_204;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        sub_1CAC483A0((*v5 + 144 * v86), (*v5 + 144 * *&v8[16 * v47 + 32]), (*v5 + 144 * v87), v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_182;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1CACED054(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_183;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_1CACECFC8(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_184;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_185;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_187;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_190;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_194;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_158;
      }

      goto LABEL_137;
    }

    break;
  }

  v27 = v9;
  v28 = *v5;
  v29 = *v5 + 144 * v7 - 144;
  v93 = v27;
  v30 = v27 - v7;
  v96 = v26;
  while (2)
  {
    v31 = v30;
    v32 = v29;
LABEL_85:
    v33 = *(v32 + 176);
    v34 = *(v32 + 32);
    if (v33 > 4)
    {
      if (v33 == 5)
      {
        v35 = 0;
        v33 = 1000;
        if (v34 <= 4)
        {
          goto LABEL_98;
        }

        goto LABEL_89;
      }

      if (v33 == 6)
      {
        if ((v34 - 5) >= 2)
        {
          goto LABEL_83;
        }

        goto LABEL_109;
      }

      goto LABEL_97;
    }

    if (!v33)
    {
      v35 = 1;
      if (v34 <= 4)
      {
        goto LABEL_98;
      }

      goto LABEL_89;
    }

    if (v33 != 4)
    {
LABEL_97:
      v35 = 1;
      v33 = 1;
      if (v34 <= 4)
      {
        goto LABEL_98;
      }

LABEL_89:
      if (v34 == 5)
      {
        v34 = 1000;
        if (v33 >= 0x3E8)
        {
          goto LABEL_108;
        }

        goto LABEL_110;
      }

      if (v34 == 6)
      {
        if (v35)
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      }

      goto LABEL_106;
    }

    v35 = 1;
    v33 = 999;
    if (v34 > 4)
    {
      goto LABEL_89;
    }

LABEL_98:
    if (!v34)
    {
LABEL_107:
      if (v33 < v34)
      {
        goto LABEL_110;
      }

      goto LABEL_108;
    }

    if (v34 != 4)
    {
LABEL_106:
      v34 = 1;
      goto LABEL_107;
    }

    v34 = 999;
    if (v33 < 0x3E7)
    {
      goto LABEL_110;
    }

LABEL_108:
    if (v34 < v33)
    {
      goto LABEL_83;
    }

LABEL_109:
    sub_1CABA6054();
    result = sub_1CAD4E514();
    if (result != -1)
    {
      goto LABEL_83;
    }

LABEL_110:
    if (v28)
    {
      v109 = *(v32 + 224);
      v111 = *(v32 + 240);
      *v113 = *(v32 + 256);
      *&v113[10] = *(v32 + 266);
      v101 = *(v32 + 160);
      v103 = *(v32 + 176);
      v105 = *(v32 + 192);
      v107 = *(v32 + 208);
      v99 = *(v32 + 144);
      v36 = *(v32 + 80);
      *(v32 + 208) = *(v32 + 64);
      *(v32 + 224) = v36;
      v37 = *(v32 + 128);
      v38 = *(v32 + 48);
      *(v32 + 176) = *(v32 + 32);
      *(v32 + 192) = v38;
      v39 = *(v32 + 16);
      *(v32 + 144) = *v32;
      *(v32 + 160) = v39;
      v40 = *(v32 + 112);
      *(v32 + 240) = *(v32 + 96);
      *(v32 + 256) = v40;
      *(v32 + 272) = v37;
      *(v32 + 64) = v107;
      *(v32 + 80) = v109;
      *(v32 + 96) = v111;
      *(v32 + 112) = *v113;
      *(v32 + 16) = v101;
      *(v32 + 32) = v103;
      *(v32 + 48) = v105;
      *v32 = v99;
      *(v32 + 122) = *&v113[10];
      v32 -= 144;
      if (__CFADD__(v31++, 1))
      {
LABEL_83:
        ++v7;
        v29 += 144;
        --v30;
        if (v7 == v96)
        {
          v7 = v96;
          v5 = a3;
          v9 = v93;
          goto LABEL_117;
        }

        continue;
      }

      goto LABEL_85;
    }

    break;
  }

  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
  return result;
}

uint64_t sub_1CAC47900(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v5;
  v120 = a1;
  v121 = a4;
  v132 = type metadata accessor for EventCalendarModelObject();
  v128 = *(v132 - 8);
  v8 = MEMORY[0x1EEE9AC00](v132);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v131 = &v114 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v114 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v114 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v114 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  result = MEMORY[0x1EEE9AC00](v22);
  v129 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_118:
    a3 = *v120;
    if (!*v120)
    {
      goto LABEL_160;
    }

    v4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_154:
      result = sub_1CACED054(v4);
    }

    v137 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*v129)
      {
        v110 = *(result + 16 * v4);
        v111 = result;
        v112 = *(result + 16 * (v4 - 1) + 40);
        sub_1CAC48820(*v129 + *(v128 + 72) * v110, *v129 + *(v128 + 72) * *(result + 16 * (v4 - 1) + 32), *v129 + *(v128 + 72) * v112, a3);
        if (v6)
        {
        }

        if (v112 < v110)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_1CACED054(v111);
        }

        if (v4 - 2 >= *(v111 + 2))
        {
          goto LABEL_148;
        }

        v113 = &v111[16 * v4];
        *v113 = v110;
        *(v113 + 1) = v112;
        v137 = v111;
        sub_1CACECFC8(v4 - 1);
        result = v137;
        v4 = *(v137 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_158;
    }
  }

  v117 = &v114 - v24;
  v118 = v26;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v116 = v25;
  while (1)
  {
    v124 = v29;
    if (v28 + 1 >= v27)
    {
      v41 = v28 + 1;
      v44 = v121;
      goto LABEL_34;
    }

    v130 = v27;
    v30 = *v129;
    v4 = *(v128 + 72);
    a3 = *v129 + v4 * (v28 + 1);
    v127 = type metadata accessor for EventCalendarModelObject;
    v31 = v117;
    sub_1CAC4C5E8(a3, v117, type metadata accessor for EventCalendarModelObject);
    v125 = v30;
    v32 = v30 + v4 * v28;
    v33 = v28;
    v34 = v118;
    sub_1CAC4C5E8(v32, v118, v127);
    LODWORD(v126) = sub_1CAC45064(v31, v34);
    if (v6)
    {
      sub_1CAC13820(v34);
      sub_1CAC13820(v31);
    }

    sub_1CAC13820(v34);
    result = sub_1CAC13820(v31);
    v119 = v33;
    v35 = v33 + 2;
    v36 = v125 + v4 * (v33 + 2);
    v37 = v116;
    v38 = v4;
    v127 = v4;
    while (1)
    {
      v41 = v130;
      if (v130 == v35)
      {
        break;
      }

      sub_1CAC4C5E8(v36, v21, type metadata accessor for EventCalendarModelObject);
      sub_1CAC4C5E8(a3, v37, type metadata accessor for EventCalendarModelObject);
      v42 = v21[7];
      v43 = v37[7];
      if (v42 == -1)
      {
        if ((v43 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }
      }

      else if (v43 == -1)
      {
        if (v42 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_17:
          v4 = 1;
          goto LABEL_9;
        }
      }

      else
      {
        if (v42 < v43)
        {
          goto LABEL_17;
        }

        if (v43 < v42)
        {
LABEL_15:
          v4 = 0;
          goto LABEL_9;
        }
      }

      v39 = v21[6];
      v135 = v21[5];
      v136 = v39;
      v40 = v37[6];
      v133 = v37[5];
      v134 = v40;
      sub_1CABA6054();
      v4 = sub_1CAD4E514() == -1;
LABEL_9:
      sub_1CAC13820(v37);
      result = sub_1CAC13820(v21);
      ++v35;
      v38 = v127;
      v36 += v127;
      a3 += v127;
      if ((v126 ^ v4))
      {
        v41 = v35 - 1;
        break;
      }
    }

    v44 = v121;
    v28 = v119;
    if ((v126 & 1) == 0)
    {
      goto LABEL_34;
    }

    if (v41 < v119)
    {
      goto LABEL_153;
    }

    if (v119 < v41)
    {
      v114 = v21;
      v115 = 0;
      v45 = v41;
      v4 = v38 * (v41 - 1);
      v46 = v41 * v38;
      v130 = v41;
      v47 = v119;
      v48 = v119 * v38;
      do
      {
        if (v47 != --v45)
        {
          v49 = *v129;
          if (!*v129)
          {
            goto LABEL_157;
          }

          a3 = v49 + v48;
          sub_1CAC17500(v49 + v48, v123);
          if (v48 < v4 || a3 >= v49 + v46)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v48 != v4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1CAC17500(v123, v49 + v4);
          v44 = v121;
          v38 = v127;
        }

        ++v47;
        v4 -= v38;
        v46 -= v38;
        v48 += v38;
      }

      while (v47 < v45);
      v6 = v115;
      v21 = v114;
      v28 = v119;
      v41 = v130;
    }

LABEL_34:
    v50 = v129[1];
    if (v41 >= v50)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v41, v28))
    {
      goto LABEL_150;
    }

    if (v41 - v28 >= v44)
    {
LABEL_43:
      a3 = v41;
      if (v41 < v28)
      {
        goto LABEL_149;
      }

      goto LABEL_44;
    }

    if (__OFADD__(v28, v44))
    {
      goto LABEL_151;
    }

    if (v28 + v44 >= v50)
    {
      a3 = v129[1];
    }

    else
    {
      a3 = v28 + v44;
    }

    if (a3 < v28)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    if (v41 == a3)
    {
      goto LABEL_43;
    }

    v114 = v21;
    v115 = v6;
    v97 = v28;
    v98 = *v129;
    v99 = *(v128 + 72);
    v100 = (*v129 + v99 * (v41 - 1));
    v101 = -v99;
    v119 = v97;
    v102 = v97 - v41;
    v122 = v99;
    v103 = v98 + v41 * v99;
    v125 = a3;
LABEL_97:
    v130 = v41;
    v104 = v103;
    v126 = v102;
    v127 = v100;
LABEL_98:
    v4 = type metadata accessor for EventCalendarModelObject;
    sub_1CAC4C5E8(v104, v17, type metadata accessor for EventCalendarModelObject);
    sub_1CAC4C5E8(v100, v14, type metadata accessor for EventCalendarModelObject);
    v105 = v17[7];
    v106 = v14[7];
    if (v105 != -1)
    {
      break;
    }

    if ((v106 | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
    {
      goto LABEL_106;
    }

LABEL_95:
    sub_1CAC13820(v14);
    sub_1CAC13820(v17);
LABEL_96:
    v41 = v130 + 1;
    v100 = (v127 + v122);
    v102 = v126 - 1;
    v103 += v122;
    a3 = v125;
    if (v130 + 1 != v125)
    {
      goto LABEL_97;
    }

    v6 = v115;
    v21 = v114;
    v28 = v119;
    if (v125 < v119)
    {
      goto LABEL_149;
    }

LABEL_44:
    result = swift_isUniquelyReferenced_nonNull_native();
    v125 = a3;
    if (result)
    {
      v29 = v124;
    }

    else
    {
      result = sub_1CACED068(0, *(v124 + 2) + 1, 1, v124);
      v29 = result;
    }

    a3 = *(v29 + 2);
    v51 = *(v29 + 3);
    v4 = a3 + 1;
    if (a3 >= v51 >> 1)
    {
      result = sub_1CACED068((v51 > 1), a3 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 2) = v4;
    v52 = &v29[16 * a3];
    v53 = v125;
    *(v52 + 4) = v28;
    *(v52 + 5) = v53;
    v130 = *v120;
    if (!v130)
    {
      goto LABEL_159;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v4 - 1;
        if (v4 >= 4)
        {
          v58 = &v29[16 * v4 + 32];
          v59 = *(v58 - 64);
          v60 = *(v58 - 56);
          v64 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          if (v64)
          {
            goto LABEL_136;
          }

          v63 = *(v58 - 48);
          v62 = *(v58 - 40);
          v64 = __OFSUB__(v62, v63);
          v56 = v62 - v63;
          v57 = v64;
          if (v64)
          {
            goto LABEL_137;
          }

          v65 = &v29[16 * v4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v64 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v64)
          {
            goto LABEL_139;
          }

          v64 = __OFADD__(v56, v68);
          v69 = v56 + v68;
          if (v64)
          {
            goto LABEL_142;
          }

          if (v69 >= v61)
          {
            v87 = &v29[16 * a3 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v64 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v64)
            {
              goto LABEL_146;
            }

            if (v56 < v90)
            {
              a3 = v4 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v57)
            {
              goto LABEL_138;
            }

            v70 = &v29[16 * v4];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_141;
            }

            v76 = &v29[16 * a3 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_144;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_145;
            }

            if (v74 + v79 < v56)
            {
              goto LABEL_77;
            }

            if (v56 < v79)
            {
              a3 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v54 = *(v29 + 4);
            v55 = *(v29 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
            goto LABEL_63;
          }

          v80 = &v29[16 * v4];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_77:
          if (v75)
          {
            goto LABEL_140;
          }

          v83 = &v29[16 * a3];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_143;
          }

          if (v86 < v74)
          {
            break;
          }
        }

        v91 = a3 - 1;
        if (a3 - 1 >= v4)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v129)
        {
          goto LABEL_156;
        }

        v92 = v21;
        v93 = v29;
        v4 = *&v29[16 * v91 + 32];
        v94 = *&v29[16 * a3 + 40];
        sub_1CAC48820(*v129 + *(v128 + 72) * v4, *v129 + *(v128 + 72) * *&v29[16 * a3 + 32], *v129 + *(v128 + 72) * v94, v130);
        if (v6)
        {
        }

        if (v94 < v4)
        {
          goto LABEL_134;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v95 = v93;
        }

        else
        {
          v95 = sub_1CACED054(v93);
        }

        if (v91 >= *(v95 + 2))
        {
          goto LABEL_135;
        }

        v21 = v92;
        v96 = &v95[16 * v91];
        *(v96 + 4) = v4;
        *(v96 + 5) = v94;
        v137 = v95;
        result = sub_1CACECFC8(a3);
        v29 = v137;
        v4 = *(v137 + 16);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = v129[1];
    v28 = v125;
    if (v125 >= v27)
    {
      goto LABEL_118;
    }
  }

  if (v106 == -1)
  {
    if (v105 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_106;
    }

    goto LABEL_109;
  }

  if (v105 < v106)
  {
LABEL_109:
    sub_1CAC13820(v14);
    result = sub_1CAC13820(v17);
    if (!v98)
    {
      goto LABEL_155;
    }

    goto LABEL_110;
  }

  if (v106 < v105)
  {
    goto LABEL_95;
  }

LABEL_106:
  v107 = v17[6];
  v135 = v17[5];
  v136 = v107;
  v108 = v14[6];
  v133 = v14[5];
  v134 = v108;
  sub_1CABA6054();
  v4 = sub_1CAD4E514();
  sub_1CAC13820(v14);
  result = sub_1CAC13820(v17);
  if (v4 != -1)
  {
    goto LABEL_96;
  }

  if (v98)
  {
LABEL_110:
    v4 = v131;
    sub_1CAC17500(v104, v131);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CAC17500(v4, v100);
    v100 = (v100 + v101);
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t sub_1CAC483A0(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 144;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 144;
  if (v9 < v11)
  {
    v12 = 144 * v9;
    if (__src != __dst || &__dst[v12] <= __src)
    {
      memmove(__src, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 144 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_83;
    }

    while (1)
    {
      v14 = *(v6 + 4);
      v15 = *(v4 + 4);
      if (v14 > 4)
      {
        if (v14 != 5)
        {
          if (v14 == 6)
          {
            if ((v15 - 5) >= 2)
            {
              goto LABEL_32;
            }

            goto LABEL_31;
          }

LABEL_19:
          v16 = 1;
          v14 = 1;
          if (v15 <= 4)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }

        v16 = 0;
        v14 = 1000;
        if (v15 <= 4)
        {
LABEL_20:
          if (v15)
          {
            if (v15 == 4)
            {
              v15 = 999;
              if (v14 < 0x3E7)
              {
                goto LABEL_36;
              }

              goto LABEL_30;
            }

LABEL_28:
            v15 = 1;
          }

          if (v14 < v15)
          {
            goto LABEL_36;
          }

LABEL_30:
          if (v15 < v14)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v14)
        {
          if (v14 == 4)
          {
            v16 = 1;
            v14 = 999;
            if (v15 <= 4)
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }

          goto LABEL_19;
        }

        v16 = 1;
        if (v15 <= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_11:
      if (v15 == 5)
      {
        v15 = 1000;
        if (v14 < 0x3E8)
        {
LABEL_36:
          v17 = v6;
          v18 = v7 == v6;
          v6 += 144;
          if (v18)
          {
            goto LABEL_38;
          }

LABEL_37:
          memmove(v7, v17, 0x90uLL);
          goto LABEL_38;
        }

        goto LABEL_30;
      }

      if (v15 != 6)
      {
        goto LABEL_28;
      }

      if (v16)
      {
        goto LABEL_36;
      }

LABEL_31:
      sub_1CABA6054();
      if (sub_1CAD4E514() == -1)
      {
        goto LABEL_36;
      }

LABEL_32:
      v17 = v4;
      v18 = v7 == v4;
      v4 += 144;
      if (!v18)
      {
        goto LABEL_37;
      }

LABEL_38:
      v7 += 144;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_83;
      }
    }
  }

  v19 = 144 * v11;
  if (__src != a2 || &a2[v19] <= __src)
  {
    memmove(__src, a2, 144 * v11);
  }

  v13 = &v4[v19];
  if (v10 >= 144 && v6 > v7)
  {
LABEL_46:
    v5 -= 144;
    while (1)
    {
      v20 = *(v13 - 14);
      v21 = *(v6 - 14);
      if (v20 > 4)
      {
        break;
      }

      if (!v20)
      {
        v22 = 1;
        if (v21 <= 4)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v20 != 4)
      {
        goto LABEL_60;
      }

      v22 = 1;
      v20 = 999;
      if (v21 <= 4)
      {
        goto LABEL_61;
      }

LABEL_52:
      if (v21 == 5)
      {
        v21 = 1000;
        if (v20 < 0x3E8)
        {
LABEL_76:
          v24 = v6 - 144;
          if (v5 + 144 != v6)
          {
            memmove(v5, v6 - 144, 0x90uLL);
          }

          if (v13 <= v4 || (v6 -= 144, v24 <= v7))
          {
            v6 = v24;
            goto LABEL_83;
          }

          goto LABEL_46;
        }

        goto LABEL_71;
      }

      if (v21 != 6)
      {
        goto LABEL_69;
      }

      if (v22)
      {
        goto LABEL_76;
      }

LABEL_72:
      sub_1CABA6054();
      if (sub_1CAD4E514() == -1)
      {
        goto LABEL_76;
      }

LABEL_73:
      v23 = (v13 - 144);
      if (v5 + 144 != v13)
      {
        memmove(v5, v13 - 144, 0x90uLL);
      }

      v5 -= 144;
      v13 -= 144;
      if (v23 <= v4)
      {
        v13 = v23;
        goto LABEL_83;
      }
    }

    if (v20 == 5)
    {
      v22 = 0;
      v20 = 1000;
      if (v21 <= 4)
      {
LABEL_61:
        if (v21)
        {
          if (v21 == 4)
          {
            v21 = 999;
            if (v20 < 0x3E7)
            {
              goto LABEL_76;
            }

            goto LABEL_71;
          }

LABEL_69:
          v21 = 1;
        }

        if (v20 < v21)
        {
          goto LABEL_76;
        }

LABEL_71:
        if (v21 < v20)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      goto LABEL_52;
    }

    if (v20 == 6)
    {
      if ((v21 - 5) >= 2)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

LABEL_60:
    v22 = 1;
    v20 = 1;
    if (v21 <= 4)
    {
      goto LABEL_61;
    }

    goto LABEL_52;
  }

LABEL_83:
  v25 = 144 * ((v13 - v4) / 144);
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_1CAC48820(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v59 = type metadata accessor for EventCalendarModelObject();
  v10 = MEMORY[0x1EEE9AC00](v59);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v53 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v53 - v15);
  result = MEMORY[0x1EEE9AC00](v14);
  v20 = (v53 - v19);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_82;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_83;
  }

  v24 = (a2 - a1) / v22;
  v66 = a1;
  v65 = a4;
  v53[1] = v5;
  if (v24 < v23 / v22)
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v25;
    v64 = a4 + v25;
    if (v25 < 1 || a2 >= a3)
    {
      goto LABEL_80;
    }

    while (1)
    {
      sub_1CAC4C5E8(a2, v20, type metadata accessor for EventCalendarModelObject);
      sub_1CAC4C5E8(a4, v16, type metadata accessor for EventCalendarModelObject);
      v29 = v20[7];
      v30 = v16[7];
      if (v29 == -1)
      {
        if ((v30 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
        {
          goto LABEL_26;
        }
      }

      else if (v30 == -1)
      {
        if (v29 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_33:
          sub_1CAC13820(v16);
          sub_1CAC13820(v20);
LABEL_34:
          if (a1 < a2 || a1 >= a2 + v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v22;
          goto LABEL_42;
        }
      }

      else
      {
        if (v29 < v30)
        {
          goto LABEL_33;
        }

        if (v30 < v29)
        {
LABEL_26:
          sub_1CAC13820(v16);
          sub_1CAC13820(v20);
          goto LABEL_29;
        }
      }

      v31 = v20[6];
      v62 = v20[5];
      v63 = v31;
      v32 = v16[6];
      v60 = v16[5];
      v61 = v32;
      sub_1CABA6054();
      v33 = sub_1CAD4E514();
      sub_1CAC13820(v16);
      sub_1CAC13820(v20);
      if (v33 == -1)
      {
        goto LABEL_34;
      }

LABEL_29:
      if (a1 < a4 || a1 >= a4 + v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v65 = a4 + v22;
      a4 += v22;
LABEL_42:
      a1 += v22;
      v66 = a1;
      if (a4 >= v27 || a2 >= a3)
      {
        goto LABEL_80;
      }
    }
  }

  v26 = v23 / v22 * v22;
  v57 = v18;
  v58 = v13;
  if (a4 < a2 || a2 + v26 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v34 = a4 + v26;
  if (v26 < 1)
  {
    goto LABEL_78;
  }

  v35 = -v22;
  v36 = v34;
  v55 = a4;
  while (2)
  {
    while (2)
    {
      v53[0] = v34;
      v37 = a2 + v35;
      v56 = a2;
      while (1)
      {
        if (a2 <= a1)
        {
          v66 = a2;
          v64 = v53[0];
          goto LABEL_80;
        }

        v39 = a3;
        v54 = v34;
        v40 = v35;
        v41 = v36 + v35;
        v42 = v58;
        sub_1CAC4C5E8(v41, v58, type metadata accessor for EventCalendarModelObject);
        v43 = v57;
        sub_1CAC4C5E8(v37, v57, type metadata accessor for EventCalendarModelObject);
        v44 = v43;
        v45 = *(v42 + 56);
        v46 = v43[7];
        if (v45 == -1)
        {
          if ((v46 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_59;
          }
        }

        else if (v46 == -1)
        {
          if (v45 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_64:
            v47 = 1;
            goto LABEL_65;
          }
        }

        else
        {
          if (v45 < v46)
          {
            goto LABEL_64;
          }

          if (v46 < v45)
          {
LABEL_59:
            v47 = 0;
LABEL_65:
            v48 = v58;
            goto LABEL_66;
          }
        }

        v48 = v58;
        v49 = *(v58 + 6);
        v62 = *(v58 + 5);
        v63 = v49;
        v50 = v43[6];
        v60 = v43[5];
        v61 = v50;
        sub_1CABA6054();
        v51 = sub_1CAD4E514() == -1;
        v44 = v57;
        v47 = v51;
LABEL_66:
        a3 = v39 + v40;
        sub_1CAC13820(v44);
        sub_1CAC13820(v48);
        if (v47)
        {
          break;
        }

        v34 = v41;
        if (v39 < v36 || a3 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v39 != v36)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v36 = v41;
        a2 = v56;
        v38 = v41 > v55;
        v35 = v40;
        if (!v38)
        {
          goto LABEL_78;
        }
      }

      a2 = v37;
      if (v39 >= v56 && a3 < v56)
      {
        v34 = v54;
        v52 = v55;
        v35 = v40;
        if (v39 != v56)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v36 <= v52)
        {
          goto LABEL_78;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v34 = v54;
    v35 = v40;
    if (v36 > v55)
    {
      continue;
    }

    break;
  }

LABEL_78:
  v66 = a2;
  v64 = v34;
LABEL_80:
  sub_1CACE84CC(&v66, &v65, &v64);
  return 1;
}

BOOL sub_1CAC48E0C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventCalendarModelObject();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - v10;
  sub_1CAC4C5E8(a2, &v46 - v10, type metadata accessor for EventCalendarModelObject);
  if (v11[247] != 1)
  {
    sub_1CAC13820(v11);
    return 0;
  }

  v47 = v9;
  v46 = a3;
  v12 = a1[3];
  v13 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 336);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1CAD4E4D4();
  v49 = &v46;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - v18;
  v14(v12, v13);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    sub_1CAC13820(v11);
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  *(&v51 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v52 = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
  (*(v20 + 32))(boxed_opaque_existential_1, v19, AssociatedTypeWitness);
  sub_1CAB284E0(&v50, v58);
  v24 = v59;
  v25 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  if ((*(AssociatedConformanceWitness + 40))(v24, v25) == *v11 && v26 == *(v11 + 1))
  {

    v29 = v48;
  }

  else
  {
    v28 = sub_1CAD4E9E4();

    v29 = v48;
    if ((v28 & 1) == 0)
    {
      v30 = v48[3];
      v31 = v48[4];
      __swift_project_boxed_opaque_existential_1(v48, v30);
      if (EventModel.isSelfOrganizedInvitation.getter(v30, v31))
      {
        v32 = *(v11 + 184);
        v33 = *(v11 + 216);
        v56 = *(v11 + 200);
        v57[0] = v33;
        *(v57 + 10) = *(v11 + 226);
        v34 = *(v11 + 120);
        v35 = *(v11 + 152);
        v52 = *(v11 + 136);
        v53 = v35;
        v54 = *(v11 + 168);
        v55 = v32;
        v36 = *(v11 + 104);
        v51 = v34;
        v50 = v36;
        if (sub_1CABED4EC(&v50) == 1 || (v37 = BYTE8(v57[0]), BYTE8(v57[0]) == 2))
        {
          if (qword_1EC462F58 != -1)
          {
            swift_once();
          }

          v37 = qword_1EC4676B0;
        }

        if (v37)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v38 = v47;
  sub_1CAC4C5E8(v11, v47, type metadata accessor for EventCalendarModelObject);
  if ((sub_1CAC49350(v29, v58, v38) & 1) == 0)
  {
    sub_1CAC13820(v38);
LABEL_29:
    sub_1CAC13820(v11);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return 0;
  }

  v39 = sub_1CAC49620(v29, v58, v38);
  if (v39)
  {
    v40 = 4;
  }

  else
  {
    v40 = 0;
  }

  if (sub_1CAC49DC4(v29, v58, v38))
  {
    v40 |= 8uLL;
  }

  if (sub_1CAC4AD88(v29, v58, v38))
  {
    v41 = v40 | 0x20;
    if (v39)
    {
      sub_1CAC13820(v38);
    }

    else
    {
      v43 = sub_1CAC4B350(v29, v58, v38);
      sub_1CAC13820(v38);
      if (v43)
      {
        v41 = v40 | 0x30;
      }
    }
  }

  else
  {
    v42 = sub_1CAC4B16C(v29, v58, v38);
    sub_1CAC13820(v38);
    if (v42)
    {
      v41 = v40 | 0x40;
    }

    else
    {
      v41 = v40;
    }
  }

  sub_1CAC13820(v11);
  if (v41 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v41;
  }

  v45 = (~v46 & v44) == 0;
  __swift_destroy_boxed_opaque_existential_1(v58);
  return v45;
}

uint64_t sub_1CAC49350(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC4C5E8(a3, v8, type metadata accessor for EventCalendarModelObject);
  if ((v8[89] & 1) == 0)
  {
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    if (((*(v20 + 496))(v19, v20) & 1) == 0 || (v8[245] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (EventModel.isPrivate.getter(v9, v10))
  {
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    if (EventCalendarModel.isSharedToMe.getter(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v13);
    if (EventCalendarModel.isDelegate.getter(v13, v14))
    {
      goto LABEL_16;
    }
  }

  v15 = *(v8 + 184);
  v16 = *(v8 + 216);
  v31[6] = *(v8 + 200);
  v32[0] = v16;
  *(v32 + 10) = *(v8 + 226);
  v17 = *(v8 + 120);
  v18 = *(v8 + 152);
  v31[2] = *(v8 + 136);
  v31[3] = v18;
  v31[4] = *(v8 + 168);
  v31[5] = v15;
  v31[0] = *(v8 + 104);
  v31[1] = v17;
  if (sub_1CABED4EC(v31) == 1 || BYTE8(v32[0]) == 2)
  {
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    if ((qword_1EC4676B0 & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    if ((sub_1CAC4512C(v21, v22) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v23 = 0;
    goto LABEL_22;
  }

  if (BYTE9(v32[0]))
  {
    goto LABEL_15;
  }

LABEL_17:
  v24 = *(v8 + 184);
  v25 = *(v8 + 216);
  v29[6] = *(v8 + 200);
  v30[0] = v25;
  *(v30 + 10) = *(v8 + 226);
  v26 = *(v8 + 120);
  v27 = *(v8 + 152);
  v29[2] = *(v8 + 136);
  v29[3] = v27;
  v29[4] = *(v8 + 168);
  v29[5] = v24;
  v29[0] = *(v8 + 104);
  v29[1] = v26;
  if ((sub_1CABED4EC(v29) == 1 || BYTE8(v30[0]) == 2) && qword_1EC462F58 != -1)
  {
    swift_once();
  }

  v23 = 1;
LABEL_22:
  sub_1CAC13820(v8);
  return v23;
}

uint64_t sub_1CAC49620(void *a1, void *a2, uint64_t a3)
{
  v67 = type metadata accessor for EventCalendarModelObject();
  v68 = sub_1CAC4E334(&qword_1EC4655C8, type metadata accessor for EventCalendarModelObject);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  sub_1CAC4C5E8(a3, boxed_opaque_existential_1, type metadata accessor for EventCalendarModelObject);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  if (((*(v8 + 88))(v7, v8) & 1) == 0)
  {
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    if (((*(v10 + 136))(v9, v10) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if ((EventModel.hasAttendees.getter(v11, v12) & 1) == 0)
  {
    goto LABEL_35;
  }

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  LOBYTE(v14) = sub_1CAC45614(v13, v14);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = EventModel.isCurrentUserInvitedAttendee.getter(v15, v16);
  if ((v14 & 1) == 0)
  {
    if (!v17)
    {
      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      if (EventModel.currentUserMayActAsOrganizer.getter(v18, v19))
      {
        goto LABEL_35;
      }
    }

    v20 = a2[3];
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v20);
    if (EventCalendarModel.isSharedToMe.getter(v20, v21) || boxed_opaque_existential_1[12] == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CAD5A0D0;
      sub_1CAB299C0(a2, inited + 32);
      sub_1CAB299C0(v66, inited + 72);
      v23 = sub_1CAC4C680(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D8);
      swift_arrayDestroy();
      if (v23)
      {
        v24 = a2[3];
        v25 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v24);
        if (!EventCalendarModel.isSharedToMe.getter(v24, v25) || (v26 = a2[3], v27 = a2[4], __swift_project_boxed_opaque_existential_1(a2, v26), ((*(v27 + 160))(v26, v27) & 1) != 0))
        {
          if (boxed_opaque_existential_1[12] != 2 || (boxed_opaque_existential_1[31] & 1) != 0)
          {
            goto LABEL_35;
          }
        }
      }

      goto LABEL_33;
    }

    v28 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v28);
    v30 = *(v29 + 104);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v32 = sub_1CAD4E4D4();
    v60[0] = v60;
    v33 = *(v32 - 8);
    MEMORY[0x1EEE9AC00](v32);
    v35 = v60 - v34;
    v30(v28, v29);
    v36 = *(AssociatedTypeWitness - 8);
    if ((*(v36 + 48))(v35, 1, AssociatedTypeWitness) == 1)
    {
      (*(v33 + 8))(v35, v32);
      v60[0] = 0;
      v37 = 0;
    }

    else
    {
      v65[3] = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v65[4] = AssociatedConformanceWitness;
      v39 = __swift_allocate_boxed_opaque_existential_1(v65);
      (*(v36 + 32))(v39);
      v60[0] = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v37 = v40;
      __swift_destroy_boxed_opaque_existential_1(v65);
    }

    v41 = __swift_project_boxed_opaque_existential_1(v66, v67);
    v42 = swift_getAssociatedTypeWitness();
    v43 = sub_1CAD4E4D4();
    v44 = *(v43 - 8);
    MEMORY[0x1EEE9AC00](v43);
    v46 = v60 - v45;
    v47 = *(v41 + 23);
    v48 = *(v41 + 27);
    v63[6] = *(v41 + 25);
    v64[0] = v48;
    *(v64 + 10) = *(v41 + 226);
    v49 = *(v41 + 15);
    v50 = *(v41 + 19);
    v63[2] = *(v41 + 17);
    v63[3] = v50;
    v63[4] = *(v41 + 21);
    v63[5] = v47;
    v63[0] = *(v41 + 13);
    v63[1] = v49;
    memmove(v60 - v45, v41 + 13, 0x8AuLL);
    v51 = *(v42 - 8);
    if ((*(v51 + 48))(v46, 1, v42) == 1)
    {
      sub_1CAB23A9C(v63, v61, &unk_1EC4679A0);
      (*(v44 + 8))(v46, v43);
      if (!v37)
      {
        goto LABEL_35;
      }

LABEL_32:

      goto LABEL_33;
    }

    v62[3] = v42;
    v52 = swift_getAssociatedConformanceWitness();
    v62[4] = v52;
    __swift_allocate_boxed_opaque_existential_1(v62);
    (*(v51 + 32))();
    v53 = *(v52 + 24);
    sub_1CAB23A9C(v63, v61, &unk_1EC4679A0);
    v54 = v53(v42, v52);
    v56 = v55;
    __swift_destroy_boxed_opaque_existential_1(v62);
    if (v37)
    {
      if (!v56)
      {
        goto LABEL_32;
      }

      if (v60[0] == v54 && v37 == v56)
      {
      }

      else
      {
        v58 = sub_1CAD4E9E4();

        if ((v58 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v56)
    {
      goto LABEL_32;
    }

LABEL_35:
    v57 = 0;
    goto LABEL_36;
  }

  if (!v17 || boxed_opaque_existential_1[12] != 2 && boxed_opaque_existential_1[2] != 2)
  {
    goto LABEL_35;
  }

LABEL_33:
  v57 = 1;
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v57;
}

uint64_t sub_1CAC49DC4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1CAD4C0F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v86 - v11;
  v104[3] = type metadata accessor for EventCalendarModelObject();
  v104[4] = sub_1CAC4E334(&qword_1EC4655C8, type metadata accessor for EventCalendarModelObject);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  sub_1CAC4C5E8(a3, boxed_opaque_existential_1, type metadata accessor for EventCalendarModelObject);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if (EventModel.isPrivate.getter(v14, v15))
  {
    memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
    if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
    {
      if (qword_1EC462F58 != -1)
      {
LABEL_102:
        swift_once();
      }

      if ((qword_1EC4676B0 & 0x1000000) == 0)
      {
        goto LABEL_99;
      }
    }

    else if ((v92 & 1) == 0)
    {
      goto LABEL_99;
    }

    if (boxed_opaque_existential_1[12] == 2)
    {
      goto LABEL_99;
    }
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if ((*(v17 + 360))(v16, v17))
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655E0);
    v18 = sub_1CAD4E784();

    v19 = *(v18 + 16);

    if (v19 >= 2)
    {
      memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
      if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
      {
        if (qword_1EC462F58 != -1)
        {
          swift_once();
        }

        if ((qword_1EC4676B0 & 0x10000000000) == 0)
        {
          goto LABEL_99;
        }
      }

      else if ((v94 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  if (EventModel.hasAbsoluteAlarms.getter(v20, v21))
  {
    memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
    if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
    {
      if (qword_1EC462F58 != -1)
      {
        swift_once();
      }

      if ((qword_1EC4676B0 & 0x100000000) == 0)
      {
        goto LABEL_99;
      }
    }

    else if ((v93 & 1) == 0)
    {
      goto LABEL_99;
    }
  }

  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (!EventModel.isRecurring.getter(v22, v23))
  {
    goto LABEL_35;
  }

  memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
  if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
  {
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    if ((qword_1EC4676B0 & 0x1000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v95 & 1) == 0)
  {
    goto LABEL_35;
  }

  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 176))(v24, v25);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 176))(v26, v27);
  sub_1CAC4E334(&unk_1EC465A80, MEMORY[0x1E6969530]);
  v28 = sub_1CAD4DED4();
  v29 = *(v7 + 8);
  v7 += 8;
  v29(v10, v6);
  v29(v12, v6);
  if ((v28 & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_35:
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  if (EventModel.hasURL.getter(v30, v31))
  {
    memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
    if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
    {
      if (qword_1EC462F58 != -1)
      {
        swift_once();
      }

      if ((qword_1EC4676B0 & 0x100000000000000) == 0)
      {
        goto LABEL_99;
      }
    }

    else if ((v96 & 1) == 0)
    {
      goto LABEL_99;
    }
  }

  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  if ((*(v33 + 440))(v32, v33))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1CAD5A0D0;
    sub_1CAB299C0(a2, v34 + 32);
    sub_1CAB299C0(v104, v34 + 72);
    v35 = sub_1CAC4CC78(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v35 & 1) == 0)
    {
      goto LABEL_99;
    }
  }

  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  if ((*(v37 + 232))(v36, v37))
  {
    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    if (((*(v39 + 200))(v38, v39) & 1) == 0)
    {
      memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
      if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
      {
        if (qword_1EC462F58 != -1)
        {
          swift_once();
        }

        if ((dword_1EC4676B8 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      else if ((v97 & 1) == 0)
      {
        goto LABEL_99;
      }
    }
  }

  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  if ((*(v41 + 416))(v40, v41))
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C40);
    v42 = sub_1CAD4E784();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1CAD5A0D0;
    sub_1CAB299C0(a2, v6 + 32);
    sub_1CAB299C0(v104, v6 + 72);
    v10 = sub_1CAC4CC78(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4655D8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if ((v10 & 1) == 0)
    {
      v63 = v42 + 32;
      v12 = -*(v42 + 16);
      v64 = -1;
      while (v12 + v64 != -1)
      {
        if (++v64 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_102;
        }

        v65 = v63 + 40;
        sub_1CAB299C0(v63, &__dst);
        v10 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v6 = sub_1CAC4D138(&__dst, v104);
        __swift_destroy_boxed_opaque_existential_1(&__dst);
        v63 = v65;
        if ((v6 & 1) == 0)
        {

          goto LABEL_99;
        }
      }
    }

    v43 = a2[3];
    v44 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v43);
    if (EventCalendarModel.isLocalCalendar.getter(v43, v44) && (boxed_opaque_existential_1[2] | 2) != 2)
    {
      v66 = a1[3];
      v67 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v66);
      v86[1] = v67 + 408;
      v68 = *(v67 + 408);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v70 = sub_1CAD4E4D4();
      v87 = v86;
      v71 = *(v70 - 8);
      MEMORY[0x1EEE9AC00](v70);
      v73 = v86 - v72;
      v68(v66, v67);
      v74 = *(AssociatedTypeWitness - 8);
      if ((*(v74 + 48))(v73, 1, AssociatedTypeWitness) != 1)
      {
        v89 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v90 = AssociatedConformanceWitness;
        __swift_allocate_boxed_opaque_existential_1(&__dst);
        (*(v74 + 32))();
        v76 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
        __swift_destroy_boxed_opaque_existential_1(&__dst);
        if (v76 != 1)
        {
          goto LABEL_99;
        }

        goto LABEL_51;
      }

      (*(v71 + 8))(v73, v70);
LABEL_99:
      v54 = 1;
      goto LABEL_100;
    }
  }

LABEL_51:
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = *(v46 + 400);
  v48 = swift_getAssociatedTypeWitness();
  v49 = sub_1CAD4E4D4();
  v87 = v86;
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = v86 - v51;
  v47(v45, v46);
  v53 = *(v48 - 8);
  if ((*(v53 + 48))(v52, 1, v48) != 1)
  {
    v89 = v48;
    v55 = swift_getAssociatedConformanceWitness();
    v90 = v55;
    v56 = __swift_allocate_boxed_opaque_existential_1(&__dst);
    (*(v53 + 32))(v56, v52, v48);
    sub_1CAB284E0(&__dst, v101);
    v57 = v102;
    v58 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    if ((*(v55 + 48))(v57, v58) == 2)
    {
      v59 = v102;
      v60 = v103;
      __swift_project_boxed_opaque_existential_1(v101, v102);
      v61 = (*(v60 + 80))(v59, v60);
      if (v61)
      {
        v62 = *(v61 + 16);

        if (v62 >= 2)
        {
          memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
          if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
          {
            if (qword_1EC462F58 != -1)
            {
              swift_once();
            }

            if ((dword_1EC4676B8 & 0x100) != 0)
            {
              goto LABEL_98;
            }
          }

          else if (v98)
          {
            goto LABEL_98;
          }
        }
      }
    }

    v77 = v102;
    v78 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    if ((*(v78 + 48))(v77, v78) == 3)
    {
      v79 = v102;
      v80 = v103;
      __swift_project_boxed_opaque_existential_1(v101, v102);
      v81 = (*(v80 + 104))(v79, v80);
      if (v81)
      {
        v82 = *(v81 + 16);

        if (v82 >= 2)
        {
          memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
          if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
          {
            if (qword_1EC462F58 != -1)
            {
              swift_once();
            }

            if ((dword_1EC4676B8 & 0x10000) != 0)
            {
              goto LABEL_98;
            }
          }

          else if (v99)
          {
            goto LABEL_98;
          }
        }
      }
    }

    v83 = v102;
    v84 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    if ((*(v84 + 48))(v83, v84) == 3)
    {
      memmove(&__dst, boxed_opaque_existential_1 + 13, 0x8AuLL);
      if (sub_1CABED4EC(&__dst) == 1 || v91 == 2)
      {
        if (qword_1EC462F58 != -1)
        {
          swift_once();
        }

        if ((dword_1EC4676B8 & 0x1000000) != 0)
        {
          goto LABEL_98;
        }
      }

      else if (v100)
      {
LABEL_98:
        __swift_destroy_boxed_opaque_existential_1(v101);
        goto LABEL_99;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v101);
    v54 = 0;
    goto LABEL_100;
  }

  (*(v50 + 8))(v52, v49);
  v54 = 0;
LABEL_100:
  __swift_destroy_boxed_opaque_existential_1(v104);
  return v54;
}