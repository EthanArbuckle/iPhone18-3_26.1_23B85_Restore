double sub_2189CCB7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v197 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v8 = sub_219534AD0(v197);
  v9 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + 24);
  v10 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v11 = [v9 scaledFontForFont_];

  v12 = sub_219BE8034();
  v13 = [v12 preferredContentSizeCategory];

  rect_24 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  v14 = *(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v15 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v15);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v250 = v8;
  [v8 pointSize];
  v16 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v16);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v11 pointSize];
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  LOBYTE(__src[0]) = v18;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v20 = [*(v19 + 16) identifier];
  v21 = sub_219BF5414();
  v23 = v22;

  MEMORY[0x21CECC330](v21, v23);

  MEMORY[0x21CECC330](0, 0xE000000000000000);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_21943359C();
  if (v24)
  {

    v25 = 0xE500000000000000;
    v26 = 0x65736C6166;
  }

  else
  {
    v25 = 0xE400000000000000;
    v26 = 1702195828;
  }

  MEMORY[0x21CECC330](v26, v25);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v31 = __dst[0];
    v32 = *(&__dst[1] + 1);
    v252 = *&__dst[1];
    v34 = *(&__dst[2] + 1);
    v33 = *&__dst[2];
    v36 = *(&__dst[3] + 1);
    v35 = *&__dst[3];
    v38 = *(&__dst[4] + 1);
    v37 = *&__dst[4];
    v40 = *(&__dst[5] + 1);
    v39 = *&__dst[5];
    v42 = *(&__dst[6] + 1);
    v41 = *&__dst[6];
    v43 = DWORD1(__dst[7]);
    v44 = __dst[7];
    v45 = *(&__dst[7] + 1);
    v47 = *(&__dst[8] + 1);
    v46 = *&__dst[8];
    v49 = *(&__dst[9] + 1);
    v48 = *&__dst[9];
    v50 = *(&__dst[10] + 1);
    v51 = *&__dst[10];
    v52 = *(&__dst[11] + 1);
    v53 = *&__dst[11];
    v55 = *(&__dst[12] + 1);
    v54 = *&__dst[12];
    v57 = *(&__dst[13] + 1);
    v56 = *&__dst[13];
    v58 = *(&__dst[14] + 1);
    v251 = *&__dst[14];
    rect_16 = *(&__dst[15] + 1);
    rect = *&__dst[15];
    v237 = *&__dst[16];
    v59 = *(&__dst[29] + 1);
    v60 = BYTE8(__dst[30]);
    v61 = BYTE9(__dst[30]);
    v232 = *(&__dst[16] + 1);
    rect_8 = *(&__dst[17] + 1);
    v227 = *&__dst[17];
    v239 = *(&__dst[18] + 1);
    v221 = *&__dst[18];
    v235 = *(&__dst[19] + 1);
    v214 = *&__dst[19];
    v230 = *(&__dst[20] + 1);
    v210 = *&__dst[20];
    v224 = *(&__dst[21] + 1);
    v206 = *&__dst[21];
    v218 = *(&__dst[22] + 1);
    v204 = *&__dst[22];
    v212 = *(&__dst[23] + 1);
    v202 = *&__dst[23];
    v208 = *(&__dst[24] + 1);
    v200 = *&__dst[24];
    rect_24a = *(&__dst[25] + 1);
    v198 = *&__dst[25];
    v195 = *(&__dst[26] + 1);
    v62 = *&__dst[26];
    v193 = *(&__dst[27] + 1);
    v63 = *&__dst[27];
    v188 = *(&__dst[28] + 1);
    v190 = *&__dst[28];
    v186 = *&__dst[29];
    v64 = *&__dst[30];
    goto LABEL_68;
  }

  if ((v197 & 1) == 0)
  {
    if (rect_24)
    {
      v28 = *(a2 + 48) + -24.0;
      v27 = 12.0;
      v30 = 4.0;
      v29 = 12.0;
      goto LABEL_13;
    }

    v27 = *(a2 + 56);
    v28 = *(a2 + 48) - (v27 + v27);
    v29 = 10.0;
    goto LABEL_12;
  }

  v27 = *(a2 + 56);
  v28 = 16.0;
  v29 = 6.0;
  v30 = 4.0;
  if ((rect_24 & 1) == 0)
  {
LABEL_12:
    v30 = 1.0;
  }

LABEL_13:
  rect_16a = *(a2 + 24) + 8.0;
  v225 = *(a2 + 40) + 8.0;
  v65 = sub_218C26730(a2);
  v59 = *(a2 + 72);
  sub_218E0FF40();
  v236 = v66;
  v67 = v14 - (rect_16a + v225) - v28 - v29 - v66;
  v68 = sub_218E1008C();
  v69 = *(v59 + 16);
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = (v69 + 32);
    v72 = 0.0;
    do
    {
      v73 = *v71++;
      if (v73 == 8)
      {
        v72 = v72 + 35.0;
      }

      --v70;
    }

    while (v70);
  }

  else
  {
    v72 = 0.0;
  }

  v228 = v29 + v28 + rect_16a;
  v231 = v67 - v68 - v72 - v65;
  v74 = sub_21943359C();
  v252 = v14;
  rect_8a = v67;
  if (!v75)
  {
    goto LABEL_40;
  }

  v76 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v76 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (!v76 || (*(a2 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) == 0)
  {

LABEL_40:
    v116 = 0.1;
    if ((rect_24 & 1) == 0)
    {
      v116 = 0.0;
    }

    v185 = LODWORD(v116);
    v117 = 2;
    if (rect_24)
    {
      v117 = 3;
    }

    v216 = v117;
    v118 = [*(v19 + 16) displayName];
    if (!v118)
    {
      sub_219BF5414();
      v118 = sub_219BF53D4();
    }

    sub_21899E550();
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_219C09BA0;
    v120 = *MEMORY[0x277D740A8];
    *(v119 + 32) = *MEMORY[0x277D740A8];
    *(v119 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(v119 + 40) = v250;
    v121 = v120;
    v122 = v250;
    sub_2188195F4(v119);
    swift_setDeallocating();
    sub_2189C3F7C(v119 + 32, sub_218819588);
    swift_deallocClassInstance();
    v123 = objc_allocWithZone(MEMORY[0x277CCA898]);
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v124 = sub_219BF5204();

    v125 = [v123 initWithString:v118 attributes:v124];

    sub_219BF67A4();
    v127 = v126;

    v42 = 0;
    v112 = ceil(v127);
    if (*(a2 + 48) > v27 + v27 + v112)
    {
      v114 = *(a2 + 48);
    }

    else
    {
      v114 = v27 + v27 + v112;
    }

    v240 = (v114 - v112) * 0.5;
    rectb = 0.0;
    v211 = 0.0;
    v207 = 0.0;
    v220 = v114 * 0.5;
    v223 = 0.0;
    v238 = 0.0;
    v234 = 0.0;
    v41 = v216;
    goto LABEL_50;
  }

  v233 = v30;
  recta = v27;
  v215 = v65;
  [v11 lineHeight];
  v78 = v77;
  sub_21899E550();
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C09BA0;
  v80 = *MEMORY[0x277D740A8];
  *(v79 + 32) = *MEMORY[0x277D740A8];
  v222 = sub_2186C6148(0, &qword_280E8DB00);
  *(v79 + 64) = v222;
  *(v79 + 40) = v11;
  v219 = v80;
  v81 = v11;
  sub_2188195F4(v79);
  swift_setDeallocating();
  sub_2189C3F7C(v79 + 32, sub_218819588);
  swift_deallocClassInstance();
  v82 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v83 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
  v84 = sub_219BF5204();

  v85 = [v82 initWithString:v83 attributes:v84];

  v86 = 0.1;
  if (rect_24)
  {
    v42 = 3;
  }

  else
  {
    v42 = 1;
  }

  if ((rect_24 & 1) == 0)
  {
    v86 = 0.0;
  }

  *(&v185 + 1) = v86;
  if (rect_24)
  {
    v87 = 3;
  }

  else
  {
    v87 = 2;
  }

  [v85 boundingRectWithSize:v87 options:0 context:{v67, v78 * v42}];
  v89 = v88;
  v90 = v67;
  v92 = v91;
  v94 = v93;
  v96 = v95;

  v256.origin.x = v89;
  v256.origin.y = v92;
  v256.size.width = v94;
  v256.size.height = v96;
  v97 = ceil(CGRectGetHeight(v256));
  [v250 lineHeight];
  v98 = [*(v19 + 16) displayName];
  if (!v98)
  {
    sub_219BF5414();
    v98 = sub_219BF53D4();
  }

  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_219C09BA0;
  *(v99 + 32) = v219;
  *(v99 + 64) = v222;
  *(v99 + 40) = v250;
  v100 = v250;
  sub_2188195F4(v99);
  swift_setDeallocating();
  sub_2189C3F7C(v99 + 32, sub_218819588);
  swift_deallocClassInstance();
  v101 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v102 = sub_219BF5204();

  v103 = [v101 initWithString:v98 attributes:v102];

  sub_219BF6784();
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v111 = v110;

  v257.origin.x = v105;
  v257.origin.y = v107;
  v257.size.width = v109;
  v257.size.height = v111;
  v112 = ceil(CGRectGetHeight(v257));
  v223 = v97;
  v113 = v97 + v233 + v112;
  if (*(a2 + 48) > recta + recta + v113)
  {
    v114 = *(a2 + 48);
  }

  else
  {
    v114 = recta + recta + v113;
  }

  v220 = v114 * 0.5;
  v258.origin.x = v228;
  v258.origin.y = v114 * 0.5 - v113 * 0.5;
  y = v258.origin.y;
  v258.size.width = v90;
  v258.size.height = v112;
  v238 = v233 + CGRectGetMaxY(v258);
  v259.origin.x = v228;
  v240 = y;
  v259.origin.y = y;
  v259.size.width = v90;
  v259.size.height = v112;
  rectb = v228;
  v211 = v233 + CGRectGetMaxY(v259);
  v207 = v231;
  LODWORD(v185) = HIDWORD(v185);
  v41 = v42;
  v234 = v90;
  v65 = v215;
LABEL_50:
  v128 = ceil((v114 - v28) * 0.5);
  v260.origin.x = rect_16a;
  v260.origin.y = v128;
  v260.size.width = v28;
  v260.size.height = v28;
  MinX = CGRectGetMinX(v260);
  v217 = v252 - v225;
  v129 = -sub_218E1008C() - v65;
  v130 = 0.0;
  v261.origin.y = 0.0;
  v226 = v252 - v225 - v236;
  v261.origin.x = v226;
  v261.size.width = v236;
  v261.size.height = v114;
  v262 = CGRectOffset(v261, v129, 0.0);
  x = v262.origin.x;
  v209 = v262.origin.y;
  height = v262.size.height;
  width = v262.size.width;
  v131 = *(v59 + 16);
  v132 = *(v131 + 16);
  if (v132)
  {
    v133 = (v131 + 32);
    v134 = 0.0;
    v135 = v250;
    v136 = v228;
    do
    {
      v137 = *v133++;
      if (v137 == 8)
      {
        v130 = v134 + 35.0;
        v134 = v134 + 35.0;
      }

      --v132;
    }

    while (v132);
  }

  else
  {
    v135 = v250;
    v136 = v228;
  }

  v138 = 0.0;
  v263.origin.x = v136;
  v263.origin.y = v240;
  v263.size.width = rect_8a;
  v263.size.height = v112;
  v264 = CGRectOffset(v263, v130, 0.0);
  v199 = v264.origin.y;
  v201 = v264.origin.x;
  v194 = v264.size.height;
  v196 = v264.size.width;
  v139 = *(v59 + 16);
  v140 = *(v139 + 16);
  v141 = 0.0;
  if (v140)
  {
    v142 = (v139 + 32);
    v143 = 0.0;
    do
    {
      v144 = *v142++;
      if (v144 == 8)
      {
        v141 = v143 + 35.0;
        v143 = v143 + 35.0;
      }

      --v140;
    }

    while (v140);
  }

  v229 = MinX + -12.0;
  v168 = ceil(v114);
  v265.origin.x = rectb;
  v265.origin.y = v238;
  v265.size.width = v234;
  v265.size.height = v223;
  v266 = CGRectOffset(v265, v141, 0.0);
  v189 = v266.origin.y;
  v192 = v266.origin.x;
  v187 = v266.size.width;
  v166 = v266.size.height;
  v145 = *(v59 + 16);
  v146 = *(v145 + 16);
  if (v146)
  {
    v147 = (v145 + 32);
    v138 = 0.0;
    v148 = 0.0;
    do
    {
      v149 = *v147++;
      if (v149 == 8)
      {
        v138 = v148 + 35.0;
        v148 = v148 + 35.0;
      }

      --v146;
    }

    while (v146);
  }

  v267.origin.x = rect_16a;
  v267.origin.y = v128;
  v267.size.width = v28;
  v267.size.height = v28;
  v268 = CGRectOffset(v267, v138, 0.0);
  v163 = v268.origin.y;
  v164 = v268.origin.x;
  v161 = v268.size.height;
  v162 = v268.size.width;
  v268.origin.x = v136;
  v268.origin.y = v240;
  v268.size.width = rect_8a;
  v268.size.height = v112;
  v269 = CGRectIntegral(v268);
  v183 = v269.origin.y;
  v184 = v269.origin.x;
  v181 = v269.size.height;
  v182 = v269.size.width;
  v269.origin.x = v136;
  v269.origin.y = v240;
  v269.size.width = v231;
  v269.size.height = v112;
  v270 = CGRectIntegral(v269);
  v150 = v270.origin.x;
  v157 = v270.origin.x;
  v179 = v270.size.width;
  v180 = v270.origin.y;
  v178 = v270.size.height;
  v270.origin.x = rectb;
  v270.origin.y = v238;
  v270.size.width = v234;
  v270.size.height = v223;
  v271 = CGRectIntegral(v270);
  v175 = v271.origin.x;
  v176 = v271.size.width;
  v177 = v271.origin.y;
  v173 = v271.size.height;
  v271.origin.x = rectb;
  v271.origin.y = v211;
  v271.size.width = v207;
  v271.size.height = v223;
  v272 = CGRectIntegral(v271);
  v174 = v272.origin.x;
  v171 = v272.origin.y;
  v151 = v272.size.width;
  v152 = v272.size.height;
  v272.origin.x = rect_16a;
  v272.origin.y = v128;
  v272.size.width = v28;
  v272.size.height = v28;
  v273 = CGRectIntegral(v272);
  v159 = v273.origin.y;
  v160 = v273.origin.x;
  v158 = v273.size.width;
  v172 = v273.size.height;
  v273.origin.x = rect_16a;
  v273.origin.y = v128;
  v273.size.width = v28;
  v273.size.height = v28;
  v170 = CGRectGetMinX(v273) + -1.0;
  v274.origin.x = rect_16a;
  v274.origin.y = v128;
  v274.size.width = v28;
  v274.size.height = v28;
  v251 = CGRectGetMinY(v274) + -1.0;
  v275.origin.x = rect_16a;
  v275.origin.y = v128;
  v275.size.width = v28;
  v275.size.height = v28;
  v169 = CGRectGetWidth(v275) + 2.0;
  v276.origin.x = rect_16a;
  v276.origin.y = v128;
  v276.size.width = v28;
  v276.size.height = v28;
  rect = CGRectGetHeight(v276) + 2.0;
  v277.size.width = 8.0;
  v277.size.height = 8.0;
  v277.origin.x = v229;
  v277.origin.y = (v28 + -8.0) * 0.5 + v128;
  v278 = CGRectIntegral(v277);
  rect_16 = v278.origin.x;
  v237 = v278.origin.y;
  v232 = v278.size.width;
  v227 = v278.size.height;
  v278.size.width = 0.0;
  v278.size.height = 0.0;
  v278.origin.x = v217;
  v278.origin.y = v220;
  v279 = CGRectIntegral(v278);
  rect_8 = v279.origin.x;
  v221 = v279.origin.y;
  v239 = v279.size.width;
  v214 = v279.size.height;
  v279.origin.y = 0.0;
  v279.origin.x = v226;
  v279.size.width = v236;
  v279.size.height = v114;
  v280 = CGRectIntegral(v279);
  v235 = v280.origin.x;
  v210 = v280.origin.y;
  v230 = v280.size.width;
  v206 = v280.size.height;
  v280.origin.x = x;
  v280.origin.y = v209;
  v280.size.height = height;
  v280.size.width = width;
  v281 = CGRectIntegral(v280);
  v224 = v281.origin.x;
  v202 = v281.size.height;
  v204 = v281.origin.y;
  v218 = v281.size.width;
  v281.origin.y = v199;
  v281.origin.x = v201;
  v281.size.height = v194;
  v281.size.width = v196;
  v282 = CGRectIntegral(v281);
  v212 = v282.origin.x;
  v198 = v282.size.height;
  v200 = v282.origin.y;
  v208 = v282.size.width;
  v282.origin.y = v189;
  v282.origin.x = v192;
  v282.size.width = v187;
  v282.size.height = v166;
  v283 = CGRectIntegral(v282);
  v153 = v283.origin.x;
  v165 = v283.size.height;
  v167 = v283.origin.y;
  v154 = v283.size.width;
  v283.origin.y = v163;
  v283.origin.x = v164;
  v283.size.height = v161;
  v283.size.width = v162;
  v284 = CGRectIntegral(v283);
  v60 = rect_24 & 1;
  __src[1] = 0;
  __src[0] = 0;
  *&__src[2] = v252;
  *&__src[3] = v168;
  *&__src[4] = v184;
  *&__src[5] = v183;
  *&__src[6] = v182;
  *&__src[7] = v181;
  *&__src[8] = v150;
  *&__src[9] = v180;
  *&__src[10] = v179;
  *&__src[11] = v178;
  __src[12] = v41;
  __src[13] = v42;
  __src[14] = v185;
  *&__src[15] = v175;
  *&__src[16] = v177;
  *&__src[17] = v176;
  *&__src[18] = v173;
  *&__src[19] = v174;
  *&__src[20] = v171;
  v50 = v151;
  *&__src[21] = v151;
  v155 = v152;
  *&__src[22] = v152;
  v54 = v159;
  v52 = v160;
  *&__src[23] = v160;
  *&__src[24] = v159;
  *&__src[25] = v158;
  *&__src[26] = v172;
  *&__src[27] = v170;
  *&__src[28] = v251;
  *&__src[29] = v169;
  *&__src[30] = rect;
  *&__src[31] = rect_16;
  *&__src[32] = v237;
  *&__src[33] = v232;
  *&__src[34] = v227;
  *&__src[35] = rect_8;
  *&__src[36] = v221;
  *&__src[37] = v239;
  *&__src[38] = v214;
  *&__src[39] = v235;
  *&__src[40] = v210;
  *&__src[41] = v230;
  *&__src[42] = v206;
  *&__src[43] = v224;
  *&__src[44] = v204;
  *&__src[45] = v218;
  *&__src[46] = v202;
  *&__src[47] = v212;
  *&__src[48] = v200;
  *&__src[49] = v208;
  *&__src[50] = v198;
  rect_24a = v153;
  *&__src[51] = v153;
  v62 = v167;
  *&__src[52] = v167;
  v193 = v284.origin.x;
  v195 = v154;
  *&__src[53] = v154;
  v63 = v165;
  *&__src[54] = v165;
  *&__src[55] = v284;
  v188 = v284.size.width;
  v190 = v284.origin.y;
  v186 = v284.size.height;
  __src[59] = v59;
  *&__src[60] = v168;
  LOBYTE(__src[61]) = v60;
  BYTE1(__src[61]) = v197;
  nullsub_1(__src);
  memcpy(v253, __src, sizeof(v253));
  swift_retain_n();

  sub_219BE2DE4();

  v61 = v197;

  v55 = v158;
  v53 = v155;
  v48 = v173;
  v49 = v174;
  v47 = v176;
  v46 = v177;
  v45 = v175;
  v40 = v178;
  v39 = v179;
  v38 = v180;
  v36 = v181;
  v37 = v157;
  v35 = v182;
  v34 = v183;
  v33 = v184;
  v32 = v168;
  v51 = v171;
  v56 = v172;
  v43 = HIDWORD(v185);
  v44 = v185;
  v58 = v169;
  v57 = v170;
  v31 = 0uLL;
  v64 = v168;
LABEL_68:
  *a4 = v31;
  *(a4 + 16) = v252;
  *(a4 + 24) = v32;
  *(a4 + 32) = v33;
  *(a4 + 40) = v34;
  *(a4 + 48) = v35;
  *(a4 + 56) = v36;
  *(a4 + 64) = v37;
  *(a4 + 72) = v38;
  *(a4 + 80) = v39;
  *(a4 + 88) = v40;
  *(a4 + 112) = v44;
  *(a4 + 116) = v43;
  *(a4 + 120) = v45;
  *(a4 + 128) = v46;
  *(a4 + 136) = v47;
  *(a4 + 144) = v48;
  *(a4 + 152) = v49;
  *(a4 + 160) = v51;
  *(a4 + 168) = v50;
  *(a4 + 176) = v53;
  *(a4 + 184) = v52;
  *(a4 + 192) = v54;
  *(a4 + 200) = v55;
  *(a4 + 208) = v56;
  *(a4 + 216) = v57;
  *(a4 + 224) = v251;
  *(a4 + 96) = v41;
  *(a4 + 104) = v42;
  *(a4 + 232) = v58;
  *(a4 + 240) = rect;
  *(a4 + 248) = rect_16;
  *(a4 + 256) = v237;
  *(a4 + 264) = v232;
  *(a4 + 272) = v227;
  *(a4 + 280) = rect_8;
  *(a4 + 288) = v221;
  *(a4 + 296) = v239;
  *(a4 + 304) = v214;
  *(a4 + 312) = v235;
  *(a4 + 320) = v210;
  *(a4 + 328) = v230;
  *(a4 + 336) = v206;
  *(a4 + 344) = v224;
  *(a4 + 352) = v204;
  *(a4 + 360) = v218;
  *(a4 + 368) = v202;
  *(a4 + 376) = v212;
  *(a4 + 384) = v200;
  *(a4 + 392) = v208;
  *(a4 + 400) = v198;
  *(a4 + 408) = rect_24a;
  *(a4 + 416) = v62;
  *(a4 + 424) = v195;
  *(a4 + 432) = v63;
  *(a4 + 440) = v193;
  *(a4 + 448) = v190;
  result = v186;
  *(a4 + 456) = v188;
  *(a4 + 464) = v186;
  *(a4 + 472) = v59;
  *(a4 + 480) = v64;
  *(a4 + 488) = v60;
  *(a4 + 489) = v61;
  return result;
}

double sub_2189CDF50(uint64_t a1, void *a2)
{
  v24[3] = &type metadata for FollowingFoodModel;
  v24[4] = &off_282A42E50;
  v4 = swift_allocObject();
  v24[0] = v4;
  v5 = *(a1 + 57);
  v6 = *(a1 + 16);
  v4[1] = *a1;
  v4[2] = v6;
  v4[3] = *(a1 + 32);
  *(v4 + 62) = *(a1 + 46);
  v7 = __swift_project_boxed_opaque_existential_1(v24, &type metadata for FollowingFoodModel);
  if (v5)
  {
    sub_2189CEE20(a1, v23);
    v8 = 0.0;
  }

  else
  {
    v9 = v7[5];
    v10 = v7[6];
    v11 = *(v7 + 56);
    v12 = *(v7 + 57);
    sub_2189CEE20(a1, v23);
    sub_2190D8F20(v9, v10, v11 | (v12 << 8));
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v14 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = a2;
    v15 = v14;
    v16 = a2;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_2189C3F7C(inited + 32, sub_218819588);
    v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v18 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v19 = sub_219BF5204();

    v20 = [v17 initWithString:v18 attributes:v19];

    sub_219BF6B94();
    sub_219BF6784();
    v8 = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v8;
}

double sub_2189CE1A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FollowingPuzzleHubModel();
  v22 = v4;
  v23 = &off_282A6F6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_2189C3FDC(a1, boxed_opaque_existential_1, type metadata accessor for FollowingPuzzleHubModel);
  v6 = __swift_project_boxed_opaque_existential_1(v21, v22);
  v7 = *(v4 + 40);
  if (*(boxed_opaque_existential_1 + v7))
  {
    v8 = *(v6 + v7);
    if (v8)
    {
      v9 = *(v6 + *(v4 + 36));
    }

    else
    {
      v9 = 0;
    }

    sub_2190D8F20(v8, v9, (v8 == 0) << 8);
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v11 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = a2;
    v12 = v11;
    v13 = a2;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_2189C3F7C(inited + 32, sub_218819588);
    v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v15 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v16 = sub_219BF5204();

    v17 = [v14 initWithString:v15 attributes:v16];

    sub_219BF6B94();
    sub_219BF6784();
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v19;
}

double sub_2189CE3E4(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a3(0);
  v25 = v9;
  v26 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_2189C3FDC(a1, boxed_opaque_existential_1, a5);
  v11 = __swift_project_boxed_opaque_existential_1(v24, v25);
  v12 = *(v9 + 40);
  if (*(boxed_opaque_existential_1 + v12 + 17) == 1)
  {
    v13 = 0.0;
  }

  else
  {
    sub_2190D8F20(*(v11 + v12), *(v11 + v12 + 8), *(v11 + v12 + 16) | (*(v11 + v12 + 17) << 8));
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v15 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = a2;
    v16 = v15;
    v17 = a2;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_2189C3F7C(inited + 32, sub_218819588);
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v20 = sub_219BF5204();

    v21 = [v18 initWithString:v19 attributes:v20];

    sub_219BF6B94();
    sub_219BF6784();
    v13 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v13;
}

double sub_2189CE614(uint64_t a1, void *a2)
{
  v23[3] = &type metadata for FollowingSharedWithYouModel;
  v23[4] = &off_282A8F9F0;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = *a1;
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a1 + 32);
  v7 = __swift_project_boxed_opaque_existential_1(v23, &type metadata for FollowingSharedWithYouModel);
  if (v5)
  {
    v8 = *v7;
    v9 = *v7 == 0;
    v10 = *v7 != 0;
    sub_2189CEED0(a1, v22);
    sub_2190D8F20(v8, 0, v10 | (v9 << 8));
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v12 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = a2;
    v13 = v12;
    v14 = a2;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_2189C3F7C(inited + 32, sub_218819588);
    v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v16 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v17 = sub_219BF5204();

    v18 = [v15 initWithString:v16 attributes:v17];

    sub_219BF6B94();
    sub_219BF6784();
    v20 = v19;
  }

  else
  {
    sub_2189CEED0(a1, v22);
    v20 = 0.0;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v20;
}

double sub_2189CE85C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26[3] = a3;
  v26[4] = a4;
  v7 = swift_allocObject();
  v26[0] = v7;
  v28 = *(a1 + 1);
  v27 = a1[3];
  v8 = *a1;
  v9 = *(a1 + 1);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  *(v7 + 48) = *(a1 + 32);
  v10 = __swift_project_boxed_opaque_existential_1(v26, a3);
  if (v8)
  {
    v11 = *v10;
    v12 = *v10 == 0;
    v13 = *v10 != 0;
    sub_2189D2C04(&v28, v25);
    sub_2189C3FDC(&v27, v25, sub_2186E352C);
    sub_2190D8F20(v11, 0, v13 | (v12 << 8));
    sub_21899E550();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    v15 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = a2;
    v16 = v15;
    v17 = a2;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_2189C3F7C(inited + 32, sub_218819588);
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v20 = sub_219BF5204();

    v21 = [v18 initWithString:v19 attributes:v20];

    sub_219BF6B94();
    sub_219BF6784();
    v23 = v22;
  }

  else
  {
    sub_2189D2C04(&v28, v25);
    sub_2189C3FDC(&v27, v25, sub_2186E352C);
    v23 = 0.0;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v23;
}

uint64_t sub_2189CEAE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a4;
  v36 = a3;
  v38 = sub_219BE9F64();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE8164();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a1 + 80) == 1;
  v13 = *(v10 + 16);
  v13(v12, a2, v9);
  type metadata accessor for TagViewLayoutOptions();
  v14 = swift_allocObject();
  v15 = sub_219BE8034();
  v16 = [v15 preferredContentSizeCategory];

  LOBYTE(v15) = sub_219BF6924();
  type metadata accessor for TagViewLayoutOptions.AccessoryOptions();
  v17 = swift_allocObject();
  __asm
  {
    FMOV            V0.2D, #22.0
    FMOV            V1.2D, #30.0
  }

  *(v17 + 32) = _Q0;
  *(v17 + 48) = _Q1;
  *(v17 + 64) = 0x4041800000000000;
  *(v17 + 16) = v36;
  *(v17 + 24) = v15 & 1;
  *(v14 + 72) = v17;
  v13((v14 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v12, v9);

  sub_219BE8154();
  v25 = v24;
  sub_219BE7FB4();
  sub_219BE9F54();
  v27 = v26;
  v28 = *(v6 + 8);
  v29 = v38;
  v28(v8, v38);
  v30 = v25 - v27;
  sub_219BE7FB4();
  sub_219BE9F54();
  v32 = v31;
  v28(v8, v29);
  (*(v10 + 8))(v12, v9);
  *(v14 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width) = v30 - v32;
  v33 = *(MEMORY[0x277D768C8] + 16);
  *(v14 + 16) = *MEMORY[0x277D768C8];
  *(v14 + 32) = v33;
  *&v33 = vdup_n_s32(v37);
  v34.i64[0] = v33;
  v34.i64[1] = DWORD1(v33);
  *(v14 + 48) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v34, 0x3FuLL)), xmmword_219C10460, xmmword_219C10450);
  *(v14 + 64) = 0x4028000000000000;
  *(v14 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) = v39;
  *(v14 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context) = 0;
  return v14;
}

double sub_2189CEF80@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a4 + 16), *(a4 + 40));
  v9 = *(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v10 = sub_219534AD0(v9);
  v11 = *(*__swift_project_boxed_opaque_existential_1((a4 + 16), *(a4 + 40)) + 24);
  v12 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v13 = [v11 scaledFontForFont_];

  v14 = sub_219BE8034();
  v15 = [v14 preferredContentSizeCategory];

  v202 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  rect_16 = a3;
  v16 = *(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v10 pointSize];
  v18 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v18);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v204 = v13;
  [v13 pointSize];
  v19 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v19);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0x6546756F59726F46, 0xEA00000000006465);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v20 = a2;
  if (a2)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (a2)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v21, v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v29 = __dst[0];
    v30 = *(&__dst[1] + 1);
    rect_24 = *&__dst[1];
    v32 = *(&__dst[2] + 1);
    v31 = *&__dst[2];
    v34 = *(&__dst[3] + 1);
    v33 = *&__dst[3];
    v36 = *(&__dst[4] + 1);
    v35 = *&__dst[4];
    v38 = *(&__dst[5] + 1);
    v37 = *&__dst[5];
    v40 = *(&__dst[6] + 1);
    v39 = *&__dst[6];
    v41 = DWORD1(__dst[7]);
    v42 = __dst[7];
    v43 = *(&__dst[7] + 1);
    v45 = *(&__dst[8] + 1);
    v44 = *&__dst[8];
    v47 = *(&__dst[9] + 1);
    v46 = *&__dst[9];
    v48 = *(&__dst[10] + 1);
    v49 = *&__dst[10];
    v50 = *(&__dst[11] + 1);
    v51 = *&__dst[11];
    v53 = *(&__dst[12] + 1);
    v52 = *&__dst[12];
    v55 = *(&__dst[13] + 1);
    v54 = *&__dst[13];
    v56 = *(&__dst[14] + 1);
    rect_16a = *&__dst[14];
    rect_8 = *(&__dst[15] + 1);
    v249 = *&__dst[15];
    v244 = *&__dst[16];
    v57 = *(&__dst[29] + 1);
    v58 = BYTE8(__dst[30]);
    v59 = BYTE9(__dst[30]);
    v239 = *(&__dst[16] + 1);
    rect = *(&__dst[17] + 1);
    v235 = *&__dst[17];
    v246 = *(&__dst[18] + 1);
    v230 = *&__dst[18];
    v241 = *(&__dst[19] + 1);
    v224 = *&__dst[19];
    v237 = *(&__dst[20] + 1);
    v218 = *&__dst[20];
    v233 = *(&__dst[21] + 1);
    v214 = *&__dst[21];
    v227 = *(&__dst[22] + 1);
    v211 = *&__dst[22];
    v221 = *(&__dst[23] + 1);
    v209 = *&__dst[23];
    v216 = *(&__dst[24] + 1);
    v207 = *&__dst[24];
    v203 = *(&__dst[25] + 1);
    v205 = *&__dst[25];
    v200 = *(&__dst[26] + 1);
    v60 = *&__dst[26];
    v198 = *(&__dst[27] + 1);
    v61 = *&__dst[27];
    v193 = *(&__dst[28] + 1);
    v196 = *&__dst[28];
    v191 = *&__dst[29];
    v62 = *&__dst[30];
    goto LABEL_66;
  }

  v248 = v10;
  if (v9)
  {
    v23 = *(a3 + 56);
    v24 = 16.0;
    v25 = 6.0;
    v26 = 4.0;
    v27 = v202;
    v28 = v20;
    if (v202)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v27 = v202;
  v28 = v20;
  if ((v202 & 1) == 0)
  {
    v23 = *(a3 + 56);
    v24 = *(a3 + 48) - (v23 + v23);
    v25 = 10.0;
LABEL_15:
    v26 = 1.0;
    goto LABEL_16;
  }

  v24 = *(a3 + 48) + -24.0;
  v23 = 12.0;
  v26 = 4.0;
  v25 = 12.0;
LABEL_16:
  rect_8a = *(a3 + 24) + 8.0;
  v228 = *(a3 + 40) + 8.0;
  v63 = sub_218C26730(a3);
  v57 = *(a3 + 72);
  sub_218E0FF40();
  v242 = v64;
  v65 = v16 - (rect_8a + v228) - v24 - v25 - v64;
  v66 = sub_218E1008C();
  v67 = *(v57 + 16);
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = (v67 + 32);
    v70 = 0.0;
    do
    {
      v71 = *v69++;
      if (v71 == 8)
      {
        v70 = v70 + 35.0;
      }

      --v68;
    }

    while (v68);
  }

  else
  {
    v70 = 0.0;
  }

  rect_24 = v16;
  v231 = v9;
  v236 = v65 - v66 - v70 - v63;
  recta = v25 + v24 + rect_8a;
  v247 = v65;
  if (!v28)
  {
    goto LABEL_40;
  }

  v72 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v72 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v72 && (*(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    [v13 lineHeight];
    v74 = v73;
    sub_21899E550();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_219C09BA0;
    v76 = *MEMORY[0x277D740A8];
    *(v75 + 32) = *MEMORY[0x277D740A8];
    v225 = sub_2186C6148(0, &qword_280E8DB00);
    *(v75 + 64) = v225;
    *(v75 + 40) = v13;
    v219 = v76;
    v77 = v13;
    sub_2188195F4(v75);
    swift_setDeallocating();
    sub_2189C3F7C(v75 + 32, sub_218819588);
    swift_deallocClassInstance();
    v78 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v79 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v80 = sub_219BF5204();

    v81 = [v78 initWithString:v79 attributes:v80];

    v82 = 0.1;
    if (v27)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    if ((v27 & 1) == 0)
    {
      v82 = 0.0;
    }

    *(&v190 + 1) = v82;
    if (v27)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    [v81 boundingRectWithSize:v83 options:0 context:{v65, v74 * v40}];
    v85 = v84;
    v222 = v63;
    v86 = v65;
    v88 = v87;
    v90 = v89;
    v212 = v26;
    v92 = v91;

    v261.origin.x = v85;
    v261.origin.y = v88;
    v261.size.width = v90;
    v261.size.height = v92;
    v234 = ceil(CGRectGetHeight(v261));
    [v248 lineHeight];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_219C09BA0;
    *(v95 + 32) = v219;
    *(v95 + 64) = v225;
    *(v95 + 40) = v248;
    v96 = v248;
    sub_2188195F4(v95);
    swift_setDeallocating();
    sub_2189C3F7C(v95 + 32, sub_218819588);
    swift_deallocClassInstance();
    v97 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v98 = sub_219BF53D4();

    v99 = sub_219BF5204();

    v100 = [v97 initWithString:v98 attributes:{v99, 0x8000000219CDD400}];

    sub_219BF6784();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v262.origin.x = v102;
    v262.origin.y = v104;
    v262.size.width = v106;
    v262.size.height = v108;
    v109 = ceil(CGRectGetHeight(v262));
    v110 = v234 + v212 + v109;
    if (*(rect_16 + 48) > v23 + v23 + v110)
    {
      v111 = *(rect_16 + 48);
    }

    else
    {
      v111 = v23 + v23 + v110;
    }

    v226 = v111 * 0.5;
    v263.origin.x = recta;
    v263.origin.y = v111 * 0.5 - v110 * 0.5;
    y = v263.origin.y;
    v263.size.width = v86;
    v263.size.height = v109;
    v240 = v212 + CGRectGetMaxY(v263);
    v264.origin.x = recta;
    v245 = y;
    v264.origin.y = y;
    v264.size.width = v86;
    v264.size.height = v109;
    rect_16b = recta;
    v215 = v212 + CGRectGetMaxY(v264);
    v208 = v236;
    LODWORD(v190) = HIDWORD(v190);
    v173 = v40;
    v238 = v86;
    v63 = v222;
  }

  else
  {
LABEL_40:
    v113 = 0.1;
    HIDWORD(v190) = 0;
    if ((v27 & 1) == 0)
    {
      v113 = 0.0;
    }

    *&v190 = v113;
    v114 = 2;
    if (v27)
    {
      v114 = 3;
    }

    v173 = v114;
    type metadata accessor for Localized();
    v115 = swift_getObjCClassFromMetadata();
    v116 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_21899E550();
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_219C09BA0;
    v118 = *MEMORY[0x277D740A8];
    *(v117 + 32) = *MEMORY[0x277D740A8];
    *(v117 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(v117 + 40) = v10;
    v119 = v118;
    v120 = v10;
    sub_2188195F4(v117);
    swift_setDeallocating();
    sub_2189C3F7C(v117 + 32, sub_218819588);
    swift_deallocClassInstance();
    v121 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v122 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v123 = sub_219BF5204();

    v124 = [v121 initWithString:v122 attributes:{v123, 0x8000000219CDD400}];

    sub_219BF67A4();
    v126 = v125;

    v40 = 0;
    v109 = ceil(v126);
    if (*(rect_16 + 48) > v23 + v23 + v109)
    {
      v111 = *(rect_16 + 48);
    }

    else
    {
      v111 = v23 + v23 + v109;
    }

    v245 = (v111 - v109) * 0.5;
    v226 = v111 * 0.5;
    rect_16b = 0.0;
    v215 = 0.0;
    v208 = 0.0;
    v234 = 0.0;
    v240 = 0.0;
    v238 = 0.0;
  }

  v127 = ceil((v111 - v24) * 0.5);
  v265.origin.x = rect_8a;
  v265.origin.y = v127;
  v265.size.width = v24;
  v265.size.height = v24;
  MinX = CGRectGetMinX(v265);
  v220 = rect_24 - v228;
  v128 = -sub_218E1008C() - v63;
  v129 = 0.0;
  v266.origin.y = 0.0;
  v229 = rect_24 - v228 - v242;
  v266.origin.x = v229;
  v266.size.width = v242;
  v266.size.height = v111;
  v267 = CGRectOffset(v266, v128, 0.0);
  x = v267.origin.x;
  v217 = v267.origin.y;
  height = v267.size.height;
  width = v267.size.width;
  v130 = *(v57 + 16);
  v131 = *(v130 + 16);
  if (v131)
  {
    v132 = (v130 + 32);
    v133 = 0.0;
    v59 = v231;
    v134 = v248;
    v135 = v202;
    v136 = v247;
    do
    {
      v137 = *v132++;
      if (v137 == 8)
      {
        v129 = v133 + 35.0;
        v133 = v133 + 35.0;
      }

      --v131;
    }

    while (v131);
  }

  else
  {
    v59 = v231;
    v134 = v248;
    v135 = v202;
    v136 = v247;
  }

  v138 = 0.0;
  v139 = recta;
  v140 = v245;
  v141 = v109;
  v268 = CGRectOffset(*(&v136 - 2), v129, 0.0);
  v206 = v268.origin.x;
  v199 = v268.size.width;
  v201 = v268.origin.y;
  v197 = v268.size.height;
  v142 = *(v57 + 16);
  v143 = *(v142 + 16);
  v144 = 0.0;
  if (v143)
  {
    v145 = (v142 + 32);
    v146 = 0.0;
    do
    {
      v147 = *v145++;
      if (v147 == 8)
      {
        v144 = v146 + 35.0;
        v146 = v146 + 35.0;
      }

      --v143;
    }

    while (v143);
  }

  v232 = MinX + -12.0;
  v172 = ceil(v111);
  v269.origin.x = rect_16b;
  v269.origin.y = v240;
  v269.size.width = v238;
  v269.size.height = v234;
  v270 = CGRectOffset(v269, v144, 0.0);
  v192 = v270.origin.y;
  v195 = v270.origin.x;
  v168 = v270.size.height;
  v170 = v270.size.width;
  v148 = *(v57 + 16);
  v149 = *(v148 + 16);
  if (v149)
  {
    v150 = (v148 + 32);
    v138 = 0.0;
    v151 = 0.0;
    do
    {
      v152 = *v150++;
      if (v152 == 8)
      {
        v138 = v151 + 35.0;
        v151 = v151 + 35.0;
      }

      --v149;
    }

    while (v149);
  }

  v271.origin.x = rect_8a;
  v271.origin.y = v127;
  v271.size.width = v24;
  v271.size.height = v24;
  v272 = CGRectOffset(v271, v138, 0.0);
  v166 = v272.origin.y;
  v167 = v272.origin.x;
  v164 = v272.size.height;
  v165 = v272.size.width;
  v272.origin.x = recta;
  v272.size.width = v247;
  v272.origin.y = v245;
  v272.size.height = v109;
  v273 = CGRectIntegral(v272);
  v188 = v273.origin.y;
  v189 = v273.origin.x;
  v186 = v273.size.height;
  v187 = v273.size.width;
  v273.origin.x = recta;
  v273.origin.y = v245;
  v273.size.width = v236;
  v273.size.height = v109;
  v274 = CGRectIntegral(v273);
  v153 = v274.origin.x;
  v160 = v274.origin.x;
  v184 = v274.size.width;
  v185 = v274.origin.y;
  v183 = v274.size.height;
  v274.origin.x = rect_16b;
  v274.origin.y = v240;
  v274.size.width = v238;
  v274.size.height = v234;
  v275 = CGRectIntegral(v274);
  v180 = v275.origin.x;
  v181 = v275.size.width;
  v182 = v275.origin.y;
  v178 = v275.size.height;
  v275.origin.x = rect_16b;
  v275.origin.y = v215;
  v275.size.width = v208;
  v275.size.height = v234;
  v276 = CGRectIntegral(v275);
  v179 = v276.origin.x;
  v176 = v276.origin.y;
  v154 = v276.size.width;
  v155 = v276.size.height;
  v276.origin.x = rect_8a;
  v276.origin.y = v127;
  v276.size.width = v24;
  v276.size.height = v24;
  v277 = CGRectIntegral(v276);
  v162 = v277.origin.y;
  v163 = v277.origin.x;
  v161 = v277.size.width;
  v177 = v277.size.height;
  v277.origin.x = rect_8a;
  v277.origin.y = v127;
  v277.size.width = v24;
  v277.size.height = v24;
  v175 = CGRectGetMinX(v277) + -1.0;
  v278.origin.x = rect_8a;
  v278.origin.y = v127;
  v278.size.width = v24;
  v278.size.height = v24;
  rect_16a = CGRectGetMinY(v278) + -1.0;
  v279.origin.x = rect_8a;
  v279.origin.y = v127;
  v279.size.width = v24;
  v279.size.height = v24;
  v174 = CGRectGetWidth(v279) + 2.0;
  v280.origin.x = rect_8a;
  v280.origin.y = v127;
  v280.size.width = v24;
  v280.size.height = v24;
  v249 = CGRectGetHeight(v280) + 2.0;
  v281.size.width = 8.0;
  v281.size.height = 8.0;
  v281.origin.x = v232;
  v281.origin.y = (v24 + -8.0) * 0.5 + v127;
  v282 = CGRectIntegral(v281);
  rect_8 = v282.origin.x;
  v244 = v282.origin.y;
  v239 = v282.size.width;
  v235 = v282.size.height;
  v282.size.width = 0.0;
  v282.size.height = 0.0;
  v282.origin.x = v220;
  v282.origin.y = v226;
  v283 = CGRectIntegral(v282);
  rect = v283.origin.x;
  v230 = v283.origin.y;
  v246 = v283.size.width;
  v224 = v283.size.height;
  v283.origin.y = 0.0;
  v283.origin.x = v229;
  v283.size.width = v242;
  v283.size.height = v111;
  v284 = CGRectIntegral(v283);
  v241 = v284.origin.x;
  v218 = v284.origin.y;
  v237 = v284.size.width;
  v214 = v284.size.height;
  v284.origin.x = x;
  v284.origin.y = v217;
  v284.size.height = height;
  v284.size.width = width;
  v285 = CGRectIntegral(v284);
  v233 = v285.origin.x;
  v209 = v285.size.height;
  v211 = v285.origin.y;
  v227 = v285.size.width;
  v285.origin.x = v206;
  v285.size.width = v199;
  v285.origin.y = v201;
  v285.size.height = v197;
  v286 = CGRectIntegral(v285);
  v221 = v286.origin.x;
  v205 = v286.size.height;
  v207 = v286.origin.y;
  v216 = v286.size.width;
  v286.origin.y = v192;
  v286.origin.x = v195;
  v286.size.height = v168;
  v286.size.width = v170;
  v287 = CGRectIntegral(v286);
  v156 = v287.origin.x;
  v169 = v287.size.height;
  v171 = v287.origin.y;
  v157 = v287.size.width;
  v287.origin.y = v166;
  v287.origin.x = v167;
  v287.size.height = v164;
  v287.size.width = v165;
  v288 = CGRectIntegral(v287);
  v58 = v135 & 1;
  __src[1] = 0;
  __src[0] = 0;
  *&__src[2] = rect_24;
  *&__src[3] = v172;
  *&__src[4] = v189;
  *&__src[5] = v188;
  *&__src[6] = v187;
  *&__src[7] = v186;
  *&__src[8] = v153;
  *&__src[9] = v185;
  *&__src[10] = v184;
  *&__src[11] = v183;
  v39 = v173;
  __src[12] = v173;
  __src[13] = v40;
  __src[14] = v190;
  *&__src[15] = v180;
  *&__src[16] = v182;
  *&__src[17] = v181;
  *&__src[18] = v178;
  *&__src[19] = v179;
  *&__src[20] = v176;
  v48 = v154;
  *&__src[21] = v154;
  v158 = v155;
  *&__src[22] = v155;
  v52 = v162;
  v50 = v163;
  *&__src[23] = v163;
  *&__src[24] = v162;
  *&__src[25] = v161;
  *&__src[26] = v177;
  *&__src[27] = v175;
  *&__src[28] = rect_16a;
  *&__src[29] = v174;
  *&__src[30] = v249;
  *&__src[31] = rect_8;
  *&__src[32] = v244;
  *&__src[33] = v239;
  *&__src[34] = v235;
  *&__src[35] = rect;
  *&__src[36] = v230;
  *&__src[37] = v246;
  *&__src[38] = v224;
  *&__src[39] = v241;
  *&__src[40] = v218;
  *&__src[41] = v237;
  *&__src[42] = v214;
  *&__src[43] = v233;
  *&__src[44] = v211;
  *&__src[45] = v227;
  *&__src[46] = v209;
  *&__src[47] = v221;
  *&__src[48] = v207;
  *&__src[49] = v216;
  *&__src[50] = v205;
  v200 = v157;
  v203 = v156;
  *&__src[51] = v156;
  v60 = v171;
  *&__src[52] = v171;
  *&__src[53] = v157;
  v61 = v169;
  *&__src[54] = v169;
  v196 = v288.origin.y;
  v198 = v288.origin.x;
  *&__src[55] = v288;
  v191 = v288.size.height;
  v193 = v288.size.width;
  __src[59] = v57;
  *&__src[60] = v172;
  LOBYTE(__src[61]) = v58;
  BYTE1(__src[61]) = v59;
  nullsub_1(__src);
  memcpy(v258, __src, sizeof(v258));
  swift_retain_n();

  sub_219BE2DE4();

  v53 = v161;
  v51 = v158;
  v46 = v178;
  v47 = v179;
  v45 = v181;
  v44 = v182;
  v43 = v180;
  v38 = v183;
  v37 = v184;
  v36 = v185;
  v34 = v186;
  v35 = v160;
  v33 = v187;
  v32 = v188;
  v31 = v189;
  v30 = v172;
  v49 = v176;
  v54 = v177;
  v42 = v190;
  v56 = v174;
  v55 = v175;
  v41 = HIDWORD(v190);
  v29 = 0uLL;
  v62 = v172;
LABEL_66:
  *a5 = v29;
  *(a5 + 16) = rect_24;
  *(a5 + 24) = v30;
  *(a5 + 32) = v31;
  *(a5 + 40) = v32;
  *(a5 + 48) = v33;
  *(a5 + 56) = v34;
  *(a5 + 64) = v35;
  *(a5 + 72) = v36;
  *(a5 + 80) = v37;
  *(a5 + 88) = v38;
  *(a5 + 112) = v42;
  *(a5 + 116) = v41;
  *(a5 + 120) = v43;
  *(a5 + 128) = v44;
  *(a5 + 136) = v45;
  *(a5 + 144) = v46;
  *(a5 + 152) = v47;
  *(a5 + 160) = v49;
  *(a5 + 168) = v48;
  *(a5 + 176) = v51;
  *(a5 + 184) = v50;
  *(a5 + 192) = v52;
  *(a5 + 200) = v53;
  *(a5 + 208) = v54;
  *(a5 + 216) = v55;
  *(a5 + 224) = rect_16a;
  *(a5 + 96) = v39;
  *(a5 + 104) = v40;
  *(a5 + 232) = v56;
  *(a5 + 240) = v249;
  *(a5 + 248) = rect_8;
  *(a5 + 256) = v244;
  *(a5 + 264) = v239;
  *(a5 + 272) = v235;
  *(a5 + 280) = rect;
  *(a5 + 288) = v230;
  *(a5 + 296) = v246;
  *(a5 + 304) = v224;
  *(a5 + 312) = v241;
  *(a5 + 320) = v218;
  *(a5 + 328) = v237;
  *(a5 + 336) = v214;
  *(a5 + 344) = v233;
  *(a5 + 352) = v211;
  *(a5 + 360) = v227;
  *(a5 + 368) = v209;
  *(a5 + 376) = v221;
  *(a5 + 384) = v207;
  *(a5 + 392) = v216;
  *(a5 + 400) = v205;
  *(a5 + 408) = v203;
  *(a5 + 416) = v60;
  *(a5 + 424) = v200;
  *(a5 + 432) = v61;
  *(a5 + 440) = v198;
  *(a5 + 448) = v196;
  result = v191;
  *(a5 + 456) = v193;
  *(a5 + 464) = v191;
  *(a5 + 472) = v57;
  *(a5 + 480) = v62;
  *(a5 + 488) = v58;
  *(a5 + 489) = v59;
  return result;
}

double sub_2189D039C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a4 + 16), *(a4 + 40));
  v9 = *(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v10 = sub_219534AD0(v9);
  v11 = *(*__swift_project_boxed_opaque_existential_1((a4 + 16), *(a4 + 40)) + 24);
  v12 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v13 = [v11 scaledFontForFont_];

  v14 = sub_219BE8034();
  v15 = [v14 preferredContentSizeCategory];

  v202 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  rect_16 = a3;
  v16 = *(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v10 pointSize];
  v18 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v18);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v204 = v13;
  [v13 pointSize];
  v19 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v19);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0x4679726F74736948, 0xEB00000000646565);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v20 = a2;
  if (a2)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (a2)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v21, v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v29 = __dst[0];
    v30 = *(&__dst[1] + 1);
    rect_24 = *&__dst[1];
    v32 = *(&__dst[2] + 1);
    v31 = *&__dst[2];
    v34 = *(&__dst[3] + 1);
    v33 = *&__dst[3];
    v36 = *(&__dst[4] + 1);
    v35 = *&__dst[4];
    v38 = *(&__dst[5] + 1);
    v37 = *&__dst[5];
    v40 = *(&__dst[6] + 1);
    v39 = *&__dst[6];
    v41 = DWORD1(__dst[7]);
    v42 = __dst[7];
    v43 = *(&__dst[7] + 1);
    v45 = *(&__dst[8] + 1);
    v44 = *&__dst[8];
    v47 = *(&__dst[9] + 1);
    v46 = *&__dst[9];
    v48 = *(&__dst[10] + 1);
    v49 = *&__dst[10];
    v50 = *(&__dst[11] + 1);
    v51 = *&__dst[11];
    v53 = *(&__dst[12] + 1);
    v52 = *&__dst[12];
    v55 = *(&__dst[13] + 1);
    v54 = *&__dst[13];
    v56 = *(&__dst[14] + 1);
    rect_16a = *&__dst[14];
    rect_8 = *(&__dst[15] + 1);
    v249 = *&__dst[15];
    v244 = *&__dst[16];
    v57 = *(&__dst[29] + 1);
    v58 = BYTE8(__dst[30]);
    v59 = BYTE9(__dst[30]);
    v239 = *(&__dst[16] + 1);
    rect = *(&__dst[17] + 1);
    v235 = *&__dst[17];
    v246 = *(&__dst[18] + 1);
    v230 = *&__dst[18];
    v241 = *(&__dst[19] + 1);
    v224 = *&__dst[19];
    v237 = *(&__dst[20] + 1);
    v218 = *&__dst[20];
    v233 = *(&__dst[21] + 1);
    v214 = *&__dst[21];
    v227 = *(&__dst[22] + 1);
    v211 = *&__dst[22];
    v221 = *(&__dst[23] + 1);
    v209 = *&__dst[23];
    v216 = *(&__dst[24] + 1);
    v207 = *&__dst[24];
    v203 = *(&__dst[25] + 1);
    v205 = *&__dst[25];
    v200 = *(&__dst[26] + 1);
    v60 = *&__dst[26];
    v198 = *(&__dst[27] + 1);
    v61 = *&__dst[27];
    v193 = *(&__dst[28] + 1);
    v196 = *&__dst[28];
    v191 = *&__dst[29];
    v62 = *&__dst[30];
    goto LABEL_66;
  }

  v248 = v10;
  if (v9)
  {
    v23 = *(a3 + 56);
    v24 = 16.0;
    v25 = 6.0;
    v26 = 4.0;
    v27 = v202;
    v28 = v20;
    if (v202)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v27 = v202;
  v28 = v20;
  if ((v202 & 1) == 0)
  {
    v23 = *(a3 + 56);
    v24 = *(a3 + 48) - (v23 + v23);
    v25 = 10.0;
LABEL_15:
    v26 = 1.0;
    goto LABEL_16;
  }

  v24 = *(a3 + 48) + -24.0;
  v23 = 12.0;
  v26 = 4.0;
  v25 = 12.0;
LABEL_16:
  rect_8a = *(a3 + 24) + 8.0;
  v228 = *(a3 + 40) + 8.0;
  v63 = sub_218C26730(a3);
  v57 = *(a3 + 72);
  sub_218E0FF40();
  v242 = v64;
  v65 = v16 - (rect_8a + v228) - v24 - v25 - v64;
  v66 = sub_218E1008C();
  v67 = *(v57 + 16);
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = (v67 + 32);
    v70 = 0.0;
    do
    {
      v71 = *v69++;
      if (v71 == 8)
      {
        v70 = v70 + 35.0;
      }

      --v68;
    }

    while (v68);
  }

  else
  {
    v70 = 0.0;
  }

  rect_24 = v16;
  v231 = v9;
  v236 = v65 - v66 - v70 - v63;
  recta = v25 + v24 + rect_8a;
  v247 = v65;
  if (!v28)
  {
    goto LABEL_40;
  }

  v72 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v72 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v72 && (*(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    [v13 lineHeight];
    v74 = v73;
    sub_21899E550();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_219C09BA0;
    v76 = *MEMORY[0x277D740A8];
    *(v75 + 32) = *MEMORY[0x277D740A8];
    v225 = sub_2186C6148(0, &qword_280E8DB00);
    *(v75 + 64) = v225;
    *(v75 + 40) = v13;
    v219 = v76;
    v77 = v13;
    sub_2188195F4(v75);
    swift_setDeallocating();
    sub_2189C3F7C(v75 + 32, sub_218819588);
    swift_deallocClassInstance();
    v78 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v79 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v80 = sub_219BF5204();

    v81 = [v78 initWithString:v79 attributes:v80];

    v82 = 0.1;
    if (v27)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    if ((v27 & 1) == 0)
    {
      v82 = 0.0;
    }

    *(&v190 + 1) = v82;
    if (v27)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    [v81 boundingRectWithSize:v83 options:0 context:{v65, v74 * v40}];
    v85 = v84;
    v222 = v63;
    v86 = v65;
    v88 = v87;
    v90 = v89;
    v212 = v26;
    v92 = v91;

    v261.origin.x = v85;
    v261.origin.y = v88;
    v261.size.width = v90;
    v261.size.height = v92;
    v234 = ceil(CGRectGetHeight(v261));
    [v248 lineHeight];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_219C09BA0;
    *(v95 + 32) = v219;
    *(v95 + 64) = v225;
    *(v95 + 40) = v248;
    v96 = v248;
    sub_2188195F4(v95);
    swift_setDeallocating();
    sub_2189C3F7C(v95 + 32, sub_218819588);
    swift_deallocClassInstance();
    v97 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v98 = sub_219BF53D4();

    v99 = sub_219BF5204();

    v100 = [v97 initWithString:v98 attributes:{v99, 0x8000000219CDD4B0}];

    sub_219BF6784();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v262.origin.x = v102;
    v262.origin.y = v104;
    v262.size.width = v106;
    v262.size.height = v108;
    v109 = ceil(CGRectGetHeight(v262));
    v110 = v234 + v212 + v109;
    if (*(rect_16 + 48) > v23 + v23 + v110)
    {
      v111 = *(rect_16 + 48);
    }

    else
    {
      v111 = v23 + v23 + v110;
    }

    v226 = v111 * 0.5;
    v263.origin.x = recta;
    v263.origin.y = v111 * 0.5 - v110 * 0.5;
    y = v263.origin.y;
    v263.size.width = v86;
    v263.size.height = v109;
    v240 = v212 + CGRectGetMaxY(v263);
    v264.origin.x = recta;
    v245 = y;
    v264.origin.y = y;
    v264.size.width = v86;
    v264.size.height = v109;
    rect_16b = recta;
    v215 = v212 + CGRectGetMaxY(v264);
    v208 = v236;
    LODWORD(v190) = HIDWORD(v190);
    v173 = v40;
    v238 = v86;
    v63 = v222;
  }

  else
  {
LABEL_40:
    v113 = 0.1;
    HIDWORD(v190) = 0;
    if ((v27 & 1) == 0)
    {
      v113 = 0.0;
    }

    *&v190 = v113;
    v114 = 2;
    if (v27)
    {
      v114 = 3;
    }

    v173 = v114;
    type metadata accessor for Localized();
    v115 = swift_getObjCClassFromMetadata();
    v116 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_21899E550();
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_219C09BA0;
    v118 = *MEMORY[0x277D740A8];
    *(v117 + 32) = *MEMORY[0x277D740A8];
    *(v117 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(v117 + 40) = v10;
    v119 = v118;
    v120 = v10;
    sub_2188195F4(v117);
    swift_setDeallocating();
    sub_2189C3F7C(v117 + 32, sub_218819588);
    swift_deallocClassInstance();
    v121 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v122 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v123 = sub_219BF5204();

    v124 = [v121 initWithString:v122 attributes:{v123, 0x8000000219CDD4B0}];

    sub_219BF67A4();
    v126 = v125;

    v40 = 0;
    v109 = ceil(v126);
    if (*(rect_16 + 48) > v23 + v23 + v109)
    {
      v111 = *(rect_16 + 48);
    }

    else
    {
      v111 = v23 + v23 + v109;
    }

    v245 = (v111 - v109) * 0.5;
    v226 = v111 * 0.5;
    rect_16b = 0.0;
    v215 = 0.0;
    v208 = 0.0;
    v234 = 0.0;
    v240 = 0.0;
    v238 = 0.0;
  }

  v127 = ceil((v111 - v24) * 0.5);
  v265.origin.x = rect_8a;
  v265.origin.y = v127;
  v265.size.width = v24;
  v265.size.height = v24;
  MinX = CGRectGetMinX(v265);
  v220 = rect_24 - v228;
  v128 = -sub_218E1008C() - v63;
  v129 = 0.0;
  v266.origin.y = 0.0;
  v229 = rect_24 - v228 - v242;
  v266.origin.x = v229;
  v266.size.width = v242;
  v266.size.height = v111;
  v267 = CGRectOffset(v266, v128, 0.0);
  x = v267.origin.x;
  v217 = v267.origin.y;
  height = v267.size.height;
  width = v267.size.width;
  v130 = *(v57 + 16);
  v131 = *(v130 + 16);
  if (v131)
  {
    v132 = (v130 + 32);
    v133 = 0.0;
    v59 = v231;
    v134 = v248;
    v135 = v202;
    v136 = v247;
    do
    {
      v137 = *v132++;
      if (v137 == 8)
      {
        v129 = v133 + 35.0;
        v133 = v133 + 35.0;
      }

      --v131;
    }

    while (v131);
  }

  else
  {
    v59 = v231;
    v134 = v248;
    v135 = v202;
    v136 = v247;
  }

  v138 = 0.0;
  v139 = recta;
  v140 = v245;
  v141 = v109;
  v268 = CGRectOffset(*(&v136 - 2), v129, 0.0);
  v206 = v268.origin.x;
  v199 = v268.size.width;
  v201 = v268.origin.y;
  v197 = v268.size.height;
  v142 = *(v57 + 16);
  v143 = *(v142 + 16);
  v144 = 0.0;
  if (v143)
  {
    v145 = (v142 + 32);
    v146 = 0.0;
    do
    {
      v147 = *v145++;
      if (v147 == 8)
      {
        v144 = v146 + 35.0;
        v146 = v146 + 35.0;
      }

      --v143;
    }

    while (v143);
  }

  v232 = MinX + -12.0;
  v172 = ceil(v111);
  v269.origin.x = rect_16b;
  v269.origin.y = v240;
  v269.size.width = v238;
  v269.size.height = v234;
  v270 = CGRectOffset(v269, v144, 0.0);
  v192 = v270.origin.y;
  v195 = v270.origin.x;
  v168 = v270.size.height;
  v170 = v270.size.width;
  v148 = *(v57 + 16);
  v149 = *(v148 + 16);
  if (v149)
  {
    v150 = (v148 + 32);
    v138 = 0.0;
    v151 = 0.0;
    do
    {
      v152 = *v150++;
      if (v152 == 8)
      {
        v138 = v151 + 35.0;
        v151 = v151 + 35.0;
      }

      --v149;
    }

    while (v149);
  }

  v271.origin.x = rect_8a;
  v271.origin.y = v127;
  v271.size.width = v24;
  v271.size.height = v24;
  v272 = CGRectOffset(v271, v138, 0.0);
  v166 = v272.origin.y;
  v167 = v272.origin.x;
  v164 = v272.size.height;
  v165 = v272.size.width;
  v272.origin.x = recta;
  v272.size.width = v247;
  v272.origin.y = v245;
  v272.size.height = v109;
  v273 = CGRectIntegral(v272);
  v188 = v273.origin.y;
  v189 = v273.origin.x;
  v186 = v273.size.height;
  v187 = v273.size.width;
  v273.origin.x = recta;
  v273.origin.y = v245;
  v273.size.width = v236;
  v273.size.height = v109;
  v274 = CGRectIntegral(v273);
  v153 = v274.origin.x;
  v160 = v274.origin.x;
  v184 = v274.size.width;
  v185 = v274.origin.y;
  v183 = v274.size.height;
  v274.origin.x = rect_16b;
  v274.origin.y = v240;
  v274.size.width = v238;
  v274.size.height = v234;
  v275 = CGRectIntegral(v274);
  v180 = v275.origin.x;
  v181 = v275.size.width;
  v182 = v275.origin.y;
  v178 = v275.size.height;
  v275.origin.x = rect_16b;
  v275.origin.y = v215;
  v275.size.width = v208;
  v275.size.height = v234;
  v276 = CGRectIntegral(v275);
  v179 = v276.origin.x;
  v176 = v276.origin.y;
  v154 = v276.size.width;
  v155 = v276.size.height;
  v276.origin.x = rect_8a;
  v276.origin.y = v127;
  v276.size.width = v24;
  v276.size.height = v24;
  v277 = CGRectIntegral(v276);
  v162 = v277.origin.y;
  v163 = v277.origin.x;
  v161 = v277.size.width;
  v177 = v277.size.height;
  v277.origin.x = rect_8a;
  v277.origin.y = v127;
  v277.size.width = v24;
  v277.size.height = v24;
  v175 = CGRectGetMinX(v277) + -1.0;
  v278.origin.x = rect_8a;
  v278.origin.y = v127;
  v278.size.width = v24;
  v278.size.height = v24;
  rect_16a = CGRectGetMinY(v278) + -1.0;
  v279.origin.x = rect_8a;
  v279.origin.y = v127;
  v279.size.width = v24;
  v279.size.height = v24;
  v174 = CGRectGetWidth(v279) + 2.0;
  v280.origin.x = rect_8a;
  v280.origin.y = v127;
  v280.size.width = v24;
  v280.size.height = v24;
  v249 = CGRectGetHeight(v280) + 2.0;
  v281.size.width = 8.0;
  v281.size.height = 8.0;
  v281.origin.x = v232;
  v281.origin.y = (v24 + -8.0) * 0.5 + v127;
  v282 = CGRectIntegral(v281);
  rect_8 = v282.origin.x;
  v244 = v282.origin.y;
  v239 = v282.size.width;
  v235 = v282.size.height;
  v282.size.width = 0.0;
  v282.size.height = 0.0;
  v282.origin.x = v220;
  v282.origin.y = v226;
  v283 = CGRectIntegral(v282);
  rect = v283.origin.x;
  v230 = v283.origin.y;
  v246 = v283.size.width;
  v224 = v283.size.height;
  v283.origin.y = 0.0;
  v283.origin.x = v229;
  v283.size.width = v242;
  v283.size.height = v111;
  v284 = CGRectIntegral(v283);
  v241 = v284.origin.x;
  v218 = v284.origin.y;
  v237 = v284.size.width;
  v214 = v284.size.height;
  v284.origin.x = x;
  v284.origin.y = v217;
  v284.size.height = height;
  v284.size.width = width;
  v285 = CGRectIntegral(v284);
  v233 = v285.origin.x;
  v209 = v285.size.height;
  v211 = v285.origin.y;
  v227 = v285.size.width;
  v285.origin.x = v206;
  v285.size.width = v199;
  v285.origin.y = v201;
  v285.size.height = v197;
  v286 = CGRectIntegral(v285);
  v221 = v286.origin.x;
  v205 = v286.size.height;
  v207 = v286.origin.y;
  v216 = v286.size.width;
  v286.origin.y = v192;
  v286.origin.x = v195;
  v286.size.height = v168;
  v286.size.width = v170;
  v287 = CGRectIntegral(v286);
  v156 = v287.origin.x;
  v169 = v287.size.height;
  v171 = v287.origin.y;
  v157 = v287.size.width;
  v287.origin.y = v166;
  v287.origin.x = v167;
  v287.size.height = v164;
  v287.size.width = v165;
  v288 = CGRectIntegral(v287);
  v58 = v135 & 1;
  __src[1] = 0;
  __src[0] = 0;
  *&__src[2] = rect_24;
  *&__src[3] = v172;
  *&__src[4] = v189;
  *&__src[5] = v188;
  *&__src[6] = v187;
  *&__src[7] = v186;
  *&__src[8] = v153;
  *&__src[9] = v185;
  *&__src[10] = v184;
  *&__src[11] = v183;
  v39 = v173;
  __src[12] = v173;
  __src[13] = v40;
  __src[14] = v190;
  *&__src[15] = v180;
  *&__src[16] = v182;
  *&__src[17] = v181;
  *&__src[18] = v178;
  *&__src[19] = v179;
  *&__src[20] = v176;
  v48 = v154;
  *&__src[21] = v154;
  v158 = v155;
  *&__src[22] = v155;
  v52 = v162;
  v50 = v163;
  *&__src[23] = v163;
  *&__src[24] = v162;
  *&__src[25] = v161;
  *&__src[26] = v177;
  *&__src[27] = v175;
  *&__src[28] = rect_16a;
  *&__src[29] = v174;
  *&__src[30] = v249;
  *&__src[31] = rect_8;
  *&__src[32] = v244;
  *&__src[33] = v239;
  *&__src[34] = v235;
  *&__src[35] = rect;
  *&__src[36] = v230;
  *&__src[37] = v246;
  *&__src[38] = v224;
  *&__src[39] = v241;
  *&__src[40] = v218;
  *&__src[41] = v237;
  *&__src[42] = v214;
  *&__src[43] = v233;
  *&__src[44] = v211;
  *&__src[45] = v227;
  *&__src[46] = v209;
  *&__src[47] = v221;
  *&__src[48] = v207;
  *&__src[49] = v216;
  *&__src[50] = v205;
  v200 = v157;
  v203 = v156;
  *&__src[51] = v156;
  v60 = v171;
  *&__src[52] = v171;
  *&__src[53] = v157;
  v61 = v169;
  *&__src[54] = v169;
  v196 = v288.origin.y;
  v198 = v288.origin.x;
  *&__src[55] = v288;
  v191 = v288.size.height;
  v193 = v288.size.width;
  __src[59] = v57;
  *&__src[60] = v172;
  LOBYTE(__src[61]) = v58;
  BYTE1(__src[61]) = v59;
  nullsub_1(__src);
  memcpy(v258, __src, sizeof(v258));
  swift_retain_n();

  sub_219BE2DE4();

  v53 = v161;
  v51 = v158;
  v46 = v178;
  v47 = v179;
  v45 = v181;
  v44 = v182;
  v43 = v180;
  v38 = v183;
  v37 = v184;
  v36 = v185;
  v34 = v186;
  v35 = v160;
  v33 = v187;
  v32 = v188;
  v31 = v189;
  v30 = v172;
  v49 = v176;
  v54 = v177;
  v42 = v190;
  v56 = v174;
  v55 = v175;
  v41 = HIDWORD(v190);
  v29 = 0uLL;
  v62 = v172;
LABEL_66:
  *a5 = v29;
  *(a5 + 16) = rect_24;
  *(a5 + 24) = v30;
  *(a5 + 32) = v31;
  *(a5 + 40) = v32;
  *(a5 + 48) = v33;
  *(a5 + 56) = v34;
  *(a5 + 64) = v35;
  *(a5 + 72) = v36;
  *(a5 + 80) = v37;
  *(a5 + 88) = v38;
  *(a5 + 112) = v42;
  *(a5 + 116) = v41;
  *(a5 + 120) = v43;
  *(a5 + 128) = v44;
  *(a5 + 136) = v45;
  *(a5 + 144) = v46;
  *(a5 + 152) = v47;
  *(a5 + 160) = v49;
  *(a5 + 168) = v48;
  *(a5 + 176) = v51;
  *(a5 + 184) = v50;
  *(a5 + 192) = v52;
  *(a5 + 200) = v53;
  *(a5 + 208) = v54;
  *(a5 + 216) = v55;
  *(a5 + 224) = rect_16a;
  *(a5 + 96) = v39;
  *(a5 + 104) = v40;
  *(a5 + 232) = v56;
  *(a5 + 240) = v249;
  *(a5 + 248) = rect_8;
  *(a5 + 256) = v244;
  *(a5 + 264) = v239;
  *(a5 + 272) = v235;
  *(a5 + 280) = rect;
  *(a5 + 288) = v230;
  *(a5 + 296) = v246;
  *(a5 + 304) = v224;
  *(a5 + 312) = v241;
  *(a5 + 320) = v218;
  *(a5 + 328) = v237;
  *(a5 + 336) = v214;
  *(a5 + 344) = v233;
  *(a5 + 352) = v211;
  *(a5 + 360) = v227;
  *(a5 + 368) = v209;
  *(a5 + 376) = v221;
  *(a5 + 384) = v207;
  *(a5 + 392) = v216;
  *(a5 + 400) = v205;
  *(a5 + 408) = v203;
  *(a5 + 416) = v60;
  *(a5 + 424) = v200;
  *(a5 + 432) = v61;
  *(a5 + 440) = v198;
  *(a5 + 448) = v196;
  result = v191;
  *(a5 + 456) = v193;
  *(a5 + 464) = v191;
  *(a5 + 472) = v57;
  *(a5 + 480) = v62;
  *(a5 + 488) = v58;
  *(a5 + 489) = v59;
  return result;
}

double sub_2189D17C4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a4 + 16), *(a4 + 40));
  v9 = *(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context);
  v10 = sub_219534AD0(v9);
  v11 = *(*__swift_project_boxed_opaque_existential_1((a4 + 16), *(a4 + 40)) + 24);
  v12 = [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x277D74418]];
  v13 = [v11 scaledFontForFont_];

  v14 = sub_219BE8034();
  v15 = [v14 preferredContentSizeCategory];

  v202 = sub_219BF6924();
  *&__dst[0] = 0;
  *(&__dst[0] + 1) = 0xE000000000000000;
  sub_219BF7314();
  *(&__dst[31] + 8) = __dst[0];
  rect_16 = a3;
  v16 = *(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width);
  v17 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v10 pointSize];
  v18 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v18);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v204 = v13;
  [v13 pointSize];
  v19 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v19);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](0x6F42657069636552, 0xE900000000000078);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v20 = a2;
  if (a2)
  {
    v21 = 0x65736C6166;
  }

  else
  {
    v21 = 1702195828;
  }

  if (a2)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v21, v22);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BF7484();

  sub_219BE2DD4();

  memcpy(__dst, __src, 0x1EAuLL);
  if (sub_2189D2D5C(__dst) != 1)
  {

    v29 = __dst[0];
    v30 = *(&__dst[1] + 1);
    rect_24 = *&__dst[1];
    v32 = *(&__dst[2] + 1);
    v31 = *&__dst[2];
    v34 = *(&__dst[3] + 1);
    v33 = *&__dst[3];
    v36 = *(&__dst[4] + 1);
    v35 = *&__dst[4];
    v38 = *(&__dst[5] + 1);
    v37 = *&__dst[5];
    v40 = *(&__dst[6] + 1);
    v39 = *&__dst[6];
    v41 = DWORD1(__dst[7]);
    v42 = __dst[7];
    v43 = *(&__dst[7] + 1);
    v45 = *(&__dst[8] + 1);
    v44 = *&__dst[8];
    v47 = *(&__dst[9] + 1);
    v46 = *&__dst[9];
    v48 = *(&__dst[10] + 1);
    v49 = *&__dst[10];
    v50 = *(&__dst[11] + 1);
    v51 = *&__dst[11];
    v53 = *(&__dst[12] + 1);
    v52 = *&__dst[12];
    v55 = *(&__dst[13] + 1);
    v54 = *&__dst[13];
    v56 = *(&__dst[14] + 1);
    rect_16a = *&__dst[14];
    rect_8 = *(&__dst[15] + 1);
    v249 = *&__dst[15];
    v244 = *&__dst[16];
    v57 = *(&__dst[29] + 1);
    v58 = BYTE8(__dst[30]);
    v59 = BYTE9(__dst[30]);
    v239 = *(&__dst[16] + 1);
    rect = *(&__dst[17] + 1);
    v235 = *&__dst[17];
    v246 = *(&__dst[18] + 1);
    v230 = *&__dst[18];
    v241 = *(&__dst[19] + 1);
    v224 = *&__dst[19];
    v237 = *(&__dst[20] + 1);
    v218 = *&__dst[20];
    v233 = *(&__dst[21] + 1);
    v214 = *&__dst[21];
    v227 = *(&__dst[22] + 1);
    v211 = *&__dst[22];
    v221 = *(&__dst[23] + 1);
    v209 = *&__dst[23];
    v216 = *(&__dst[24] + 1);
    v207 = *&__dst[24];
    v203 = *(&__dst[25] + 1);
    v205 = *&__dst[25];
    v200 = *(&__dst[26] + 1);
    v60 = *&__dst[26];
    v198 = *(&__dst[27] + 1);
    v61 = *&__dst[27];
    v193 = *(&__dst[28] + 1);
    v196 = *&__dst[28];
    v191 = *&__dst[29];
    v62 = *&__dst[30];
    goto LABEL_66;
  }

  v248 = v10;
  if (v9)
  {
    v23 = *(a3 + 56);
    v24 = 16.0;
    v25 = 6.0;
    v26 = 4.0;
    v27 = v202;
    v28 = v20;
    if (v202)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v27 = v202;
  v28 = v20;
  if ((v202 & 1) == 0)
  {
    v23 = *(a3 + 56);
    v24 = *(a3 + 48) - (v23 + v23);
    v25 = 10.0;
LABEL_15:
    v26 = 1.0;
    goto LABEL_16;
  }

  v24 = *(a3 + 48) + -24.0;
  v23 = 12.0;
  v26 = 4.0;
  v25 = 12.0;
LABEL_16:
  rect_8a = *(a3 + 24) + 8.0;
  v228 = *(a3 + 40) + 8.0;
  v63 = sub_218C26730(a3);
  v57 = *(a3 + 72);
  sub_218E0FF40();
  v242 = v64;
  v65 = v16 - (rect_8a + v228) - v24 - v25 - v64;
  v66 = sub_218E1008C();
  v67 = *(v57 + 16);
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = (v67 + 32);
    v70 = 0.0;
    do
    {
      v71 = *v69++;
      if (v71 == 8)
      {
        v70 = v70 + 35.0;
      }

      --v68;
    }

    while (v68);
  }

  else
  {
    v70 = 0.0;
  }

  rect_24 = v16;
  v231 = v9;
  v236 = v65 - v66 - v70 - v63;
  recta = v25 + v24 + rect_8a;
  v247 = v65;
  if (!v28)
  {
    goto LABEL_40;
  }

  v72 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v72 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v72 && (*(a3 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) & 1) != 0)
  {
    [v13 lineHeight];
    v74 = v73;
    sub_21899E550();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_219C09BA0;
    v76 = *MEMORY[0x277D740A8];
    *(v75 + 32) = *MEMORY[0x277D740A8];
    v225 = sub_2186C6148(0, &qword_280E8DB00);
    *(v75 + 64) = v225;
    *(v75 + 40) = v13;
    v219 = v76;
    v77 = v13;
    sub_2188195F4(v75);
    swift_setDeallocating();
    sub_2189C3F7C(v75 + 32, sub_218819588);
    swift_deallocClassInstance();
    v78 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v79 = sub_219BF53D4();
    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v80 = sub_219BF5204();

    v81 = [v78 initWithString:v79 attributes:v80];

    v82 = 0.1;
    if (v27)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    if ((v27 & 1) == 0)
    {
      v82 = 0.0;
    }

    *(&v190 + 1) = v82;
    if (v27)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    [v81 boundingRectWithSize:v83 options:0 context:{v65, v74 * v40}];
    v85 = v84;
    v222 = v63;
    v86 = v65;
    v88 = v87;
    v90 = v89;
    v212 = v26;
    v92 = v91;

    v261.origin.x = v85;
    v261.origin.y = v88;
    v261.size.width = v90;
    v261.size.height = v92;
    v234 = ceil(CGRectGetHeight(v261));
    [v248 lineHeight];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v94 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_219C09BA0;
    *(v95 + 32) = v219;
    *(v95 + 64) = v225;
    *(v95 + 40) = v248;
    v96 = v248;
    sub_2188195F4(v95);
    swift_setDeallocating();
    sub_2189C3F7C(v95 + 32, sub_218819588);
    swift_deallocClassInstance();
    v97 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v98 = sub_219BF53D4();

    v99 = sub_219BF5204();

    v100 = [v97 initWithString:v98 attributes:{v99, 0x8000000219CDD4E0}];

    sub_219BF6784();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v262.origin.x = v102;
    v262.origin.y = v104;
    v262.size.width = v106;
    v262.size.height = v108;
    v109 = ceil(CGRectGetHeight(v262));
    v110 = v234 + v212 + v109;
    if (*(rect_16 + 48) > v23 + v23 + v110)
    {
      v111 = *(rect_16 + 48);
    }

    else
    {
      v111 = v23 + v23 + v110;
    }

    v226 = v111 * 0.5;
    v263.origin.x = recta;
    v263.origin.y = v111 * 0.5 - v110 * 0.5;
    y = v263.origin.y;
    v263.size.width = v86;
    v263.size.height = v109;
    v240 = v212 + CGRectGetMaxY(v263);
    v264.origin.x = recta;
    v245 = y;
    v264.origin.y = y;
    v264.size.width = v86;
    v264.size.height = v109;
    rect_16b = recta;
    v215 = v212 + CGRectGetMaxY(v264);
    v208 = v236;
    LODWORD(v190) = HIDWORD(v190);
    v173 = v40;
    v238 = v86;
    v63 = v222;
  }

  else
  {
LABEL_40:
    v113 = 0.1;
    HIDWORD(v190) = 0;
    if ((v27 & 1) == 0)
    {
      v113 = 0.0;
    }

    *&v190 = v113;
    v114 = 2;
    if (v27)
    {
      v114 = 3;
    }

    v173 = v114;
    type metadata accessor for Localized();
    v115 = swift_getObjCClassFromMetadata();
    v116 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_21899E550();
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_219C09BA0;
    v118 = *MEMORY[0x277D740A8];
    *(v117 + 32) = *MEMORY[0x277D740A8];
    *(v117 + 64) = sub_2186C6148(0, &qword_280E8DB00);
    *(v117 + 40) = v10;
    v119 = v118;
    v120 = v10;
    sub_2188195F4(v117);
    swift_setDeallocating();
    sub_2189C3F7C(v117 + 32, sub_218819588);
    swift_deallocClassInstance();
    v121 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v122 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_218748C68(&qword_280E8E118, type metadata accessor for Key);
    v123 = sub_219BF5204();

    v124 = [v121 initWithString:v122 attributes:{v123, 0x8000000219CDD4E0}];

    sub_219BF67A4();
    v126 = v125;

    v40 = 0;
    v109 = ceil(v126);
    if (*(rect_16 + 48) > v23 + v23 + v109)
    {
      v111 = *(rect_16 + 48);
    }

    else
    {
      v111 = v23 + v23 + v109;
    }

    v245 = (v111 - v109) * 0.5;
    v226 = v111 * 0.5;
    rect_16b = 0.0;
    v215 = 0.0;
    v208 = 0.0;
    v234 = 0.0;
    v240 = 0.0;
    v238 = 0.0;
  }

  v127 = ceil((v111 - v24) * 0.5);
  v265.origin.x = rect_8a;
  v265.origin.y = v127;
  v265.size.width = v24;
  v265.size.height = v24;
  MinX = CGRectGetMinX(v265);
  v220 = rect_24 - v228;
  v128 = -sub_218E1008C() - v63;
  v129 = 0.0;
  v266.origin.y = 0.0;
  v229 = rect_24 - v228 - v242;
  v266.origin.x = v229;
  v266.size.width = v242;
  v266.size.height = v111;
  v267 = CGRectOffset(v266, v128, 0.0);
  x = v267.origin.x;
  v217 = v267.origin.y;
  height = v267.size.height;
  width = v267.size.width;
  v130 = *(v57 + 16);
  v131 = *(v130 + 16);
  if (v131)
  {
    v132 = (v130 + 32);
    v133 = 0.0;
    v59 = v231;
    v134 = v248;
    v135 = v202;
    v136 = v247;
    do
    {
      v137 = *v132++;
      if (v137 == 8)
      {
        v129 = v133 + 35.0;
        v133 = v133 + 35.0;
      }

      --v131;
    }

    while (v131);
  }

  else
  {
    v59 = v231;
    v134 = v248;
    v135 = v202;
    v136 = v247;
  }

  v138 = 0.0;
  v139 = recta;
  v140 = v245;
  v141 = v109;
  v268 = CGRectOffset(*(&v136 - 2), v129, 0.0);
  v206 = v268.origin.x;
  v199 = v268.size.width;
  v201 = v268.origin.y;
  v197 = v268.size.height;
  v142 = *(v57 + 16);
  v143 = *(v142 + 16);
  v144 = 0.0;
  if (v143)
  {
    v145 = (v142 + 32);
    v146 = 0.0;
    do
    {
      v147 = *v145++;
      if (v147 == 8)
      {
        v144 = v146 + 35.0;
        v146 = v146 + 35.0;
      }

      --v143;
    }

    while (v143);
  }

  v232 = MinX + -12.0;
  v172 = ceil(v111);
  v269.origin.x = rect_16b;
  v269.origin.y = v240;
  v269.size.width = v238;
  v269.size.height = v234;
  v270 = CGRectOffset(v269, v144, 0.0);
  v192 = v270.origin.y;
  v195 = v270.origin.x;
  v168 = v270.size.height;
  v170 = v270.size.width;
  v148 = *(v57 + 16);
  v149 = *(v148 + 16);
  if (v149)
  {
    v150 = (v148 + 32);
    v138 = 0.0;
    v151 = 0.0;
    do
    {
      v152 = *v150++;
      if (v152 == 8)
      {
        v138 = v151 + 35.0;
        v151 = v151 + 35.0;
      }

      --v149;
    }

    while (v149);
  }

  v271.origin.x = rect_8a;
  v271.origin.y = v127;
  v271.size.width = v24;
  v271.size.height = v24;
  v272 = CGRectOffset(v271, v138, 0.0);
  v166 = v272.origin.y;
  v167 = v272.origin.x;
  v164 = v272.size.height;
  v165 = v272.size.width;
  v272.origin.x = recta;
  v272.size.width = v247;
  v272.origin.y = v245;
  v272.size.height = v109;
  v273 = CGRectIntegral(v272);
  v188 = v273.origin.y;
  v189 = v273.origin.x;
  v186 = v273.size.height;
  v187 = v273.size.width;
  v273.origin.x = recta;
  v273.origin.y = v245;
  v273.size.width = v236;
  v273.size.height = v109;
  v274 = CGRectIntegral(v273);
  v153 = v274.origin.x;
  v160 = v274.origin.x;
  v184 = v274.size.width;
  v185 = v274.origin.y;
  v183 = v274.size.height;
  v274.origin.x = rect_16b;
  v274.origin.y = v240;
  v274.size.width = v238;
  v274.size.height = v234;
  v275 = CGRectIntegral(v274);
  v180 = v275.origin.x;
  v181 = v275.size.width;
  v182 = v275.origin.y;
  v178 = v275.size.height;
  v275.origin.x = rect_16b;
  v275.origin.y = v215;
  v275.size.width = v208;
  v275.size.height = v234;
  v276 = CGRectIntegral(v275);
  v179 = v276.origin.x;
  v176 = v276.origin.y;
  v154 = v276.size.width;
  v155 = v276.size.height;
  v276.origin.x = rect_8a;
  v276.origin.y = v127;
  v276.size.width = v24;
  v276.size.height = v24;
  v277 = CGRectIntegral(v276);
  v162 = v277.origin.y;
  v163 = v277.origin.x;
  v161 = v277.size.width;
  v177 = v277.size.height;
  v277.origin.x = rect_8a;
  v277.origin.y = v127;
  v277.size.width = v24;
  v277.size.height = v24;
  v175 = CGRectGetMinX(v277) + -1.0;
  v278.origin.x = rect_8a;
  v278.origin.y = v127;
  v278.size.width = v24;
  v278.size.height = v24;
  rect_16a = CGRectGetMinY(v278) + -1.0;
  v279.origin.x = rect_8a;
  v279.origin.y = v127;
  v279.size.width = v24;
  v279.size.height = v24;
  v174 = CGRectGetWidth(v279) + 2.0;
  v280.origin.x = rect_8a;
  v280.origin.y = v127;
  v280.size.width = v24;
  v280.size.height = v24;
  v249 = CGRectGetHeight(v280) + 2.0;
  v281.size.width = 8.0;
  v281.size.height = 8.0;
  v281.origin.x = v232;
  v281.origin.y = (v24 + -8.0) * 0.5 + v127;
  v282 = CGRectIntegral(v281);
  rect_8 = v282.origin.x;
  v244 = v282.origin.y;
  v239 = v282.size.width;
  v235 = v282.size.height;
  v282.size.width = 0.0;
  v282.size.height = 0.0;
  v282.origin.x = v220;
  v282.origin.y = v226;
  v283 = CGRectIntegral(v282);
  rect = v283.origin.x;
  v230 = v283.origin.y;
  v246 = v283.size.width;
  v224 = v283.size.height;
  v283.origin.y = 0.0;
  v283.origin.x = v229;
  v283.size.width = v242;
  v283.size.height = v111;
  v284 = CGRectIntegral(v283);
  v241 = v284.origin.x;
  v218 = v284.origin.y;
  v237 = v284.size.width;
  v214 = v284.size.height;
  v284.origin.x = x;
  v284.origin.y = v217;
  v284.size.height = height;
  v284.size.width = width;
  v285 = CGRectIntegral(v284);
  v233 = v285.origin.x;
  v209 = v285.size.height;
  v211 = v285.origin.y;
  v227 = v285.size.width;
  v285.origin.x = v206;
  v285.size.width = v199;
  v285.origin.y = v201;
  v285.size.height = v197;
  v286 = CGRectIntegral(v285);
  v221 = v286.origin.x;
  v205 = v286.size.height;
  v207 = v286.origin.y;
  v216 = v286.size.width;
  v286.origin.y = v192;
  v286.origin.x = v195;
  v286.size.height = v168;
  v286.size.width = v170;
  v287 = CGRectIntegral(v286);
  v156 = v287.origin.x;
  v169 = v287.size.height;
  v171 = v287.origin.y;
  v157 = v287.size.width;
  v287.origin.y = v166;
  v287.origin.x = v167;
  v287.size.height = v164;
  v287.size.width = v165;
  v288 = CGRectIntegral(v287);
  v58 = v135 & 1;
  __src[1] = 0;
  __src[0] = 0;
  *&__src[2] = rect_24;
  *&__src[3] = v172;
  *&__src[4] = v189;
  *&__src[5] = v188;
  *&__src[6] = v187;
  *&__src[7] = v186;
  *&__src[8] = v153;
  *&__src[9] = v185;
  *&__src[10] = v184;
  *&__src[11] = v183;
  v39 = v173;
  __src[12] = v173;
  __src[13] = v40;
  __src[14] = v190;
  *&__src[15] = v180;
  *&__src[16] = v182;
  *&__src[17] = v181;
  *&__src[18] = v178;
  *&__src[19] = v179;
  *&__src[20] = v176;
  v48 = v154;
  *&__src[21] = v154;
  v158 = v155;
  *&__src[22] = v155;
  v52 = v162;
  v50 = v163;
  *&__src[23] = v163;
  *&__src[24] = v162;
  *&__src[25] = v161;
  *&__src[26] = v177;
  *&__src[27] = v175;
  *&__src[28] = rect_16a;
  *&__src[29] = v174;
  *&__src[30] = v249;
  *&__src[31] = rect_8;
  *&__src[32] = v244;
  *&__src[33] = v239;
  *&__src[34] = v235;
  *&__src[35] = rect;
  *&__src[36] = v230;
  *&__src[37] = v246;
  *&__src[38] = v224;
  *&__src[39] = v241;
  *&__src[40] = v218;
  *&__src[41] = v237;
  *&__src[42] = v214;
  *&__src[43] = v233;
  *&__src[44] = v211;
  *&__src[45] = v227;
  *&__src[46] = v209;
  *&__src[47] = v221;
  *&__src[48] = v207;
  *&__src[49] = v216;
  *&__src[50] = v205;
  v200 = v157;
  v203 = v156;
  *&__src[51] = v156;
  v60 = v171;
  *&__src[52] = v171;
  *&__src[53] = v157;
  v61 = v169;
  *&__src[54] = v169;
  v196 = v288.origin.y;
  v198 = v288.origin.x;
  *&__src[55] = v288;
  v191 = v288.size.height;
  v193 = v288.size.width;
  __src[59] = v57;
  *&__src[60] = v172;
  LOBYTE(__src[61]) = v58;
  BYTE1(__src[61]) = v59;
  nullsub_1(__src);
  memcpy(v258, __src, sizeof(v258));
  swift_retain_n();

  sub_219BE2DE4();

  v53 = v161;
  v51 = v158;
  v46 = v178;
  v47 = v179;
  v45 = v181;
  v44 = v182;
  v43 = v180;
  v38 = v183;
  v37 = v184;
  v36 = v185;
  v34 = v186;
  v35 = v160;
  v33 = v187;
  v32 = v188;
  v31 = v189;
  v30 = v172;
  v49 = v176;
  v54 = v177;
  v42 = v190;
  v56 = v174;
  v55 = v175;
  v41 = HIDWORD(v190);
  v29 = 0uLL;
  v62 = v172;
LABEL_66:
  *a5 = v29;
  *(a5 + 16) = rect_24;
  *(a5 + 24) = v30;
  *(a5 + 32) = v31;
  *(a5 + 40) = v32;
  *(a5 + 48) = v33;
  *(a5 + 56) = v34;
  *(a5 + 64) = v35;
  *(a5 + 72) = v36;
  *(a5 + 80) = v37;
  *(a5 + 88) = v38;
  *(a5 + 112) = v42;
  *(a5 + 116) = v41;
  *(a5 + 120) = v43;
  *(a5 + 128) = v44;
  *(a5 + 136) = v45;
  *(a5 + 144) = v46;
  *(a5 + 152) = v47;
  *(a5 + 160) = v49;
  *(a5 + 168) = v48;
  *(a5 + 176) = v51;
  *(a5 + 184) = v50;
  *(a5 + 192) = v52;
  *(a5 + 200) = v53;
  *(a5 + 208) = v54;
  *(a5 + 216) = v55;
  *(a5 + 224) = rect_16a;
  *(a5 + 96) = v39;
  *(a5 + 104) = v40;
  *(a5 + 232) = v56;
  *(a5 + 240) = v249;
  *(a5 + 248) = rect_8;
  *(a5 + 256) = v244;
  *(a5 + 264) = v239;
  *(a5 + 272) = v235;
  *(a5 + 280) = rect;
  *(a5 + 288) = v230;
  *(a5 + 296) = v246;
  *(a5 + 304) = v224;
  *(a5 + 312) = v241;
  *(a5 + 320) = v218;
  *(a5 + 328) = v237;
  *(a5 + 336) = v214;
  *(a5 + 344) = v233;
  *(a5 + 352) = v211;
  *(a5 + 360) = v227;
  *(a5 + 368) = v209;
  *(a5 + 376) = v221;
  *(a5 + 384) = v207;
  *(a5 + 392) = v216;
  *(a5 + 400) = v205;
  *(a5 + 408) = v203;
  *(a5 + 416) = v60;
  *(a5 + 424) = v200;
  *(a5 + 432) = v61;
  *(a5 + 440) = v198;
  *(a5 + 448) = v196;
  result = v191;
  *(a5 + 456) = v193;
  *(a5 + 464) = v191;
  *(a5 + 472) = v57;
  *(a5 + 480) = v62;
  *(a5 + 488) = v58;
  *(a5 + 489) = v59;
  return result;
}

uint64_t sub_2189D2C04(uint64_t a1, uint64_t a2)
{
  sub_2189D2C8C(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2189D2C8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2189D2CDC(uint64_t a1)
{
  sub_2189D2C8C(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189D2D5C(uint64_t a1)
{
  v1 = *(a1 + 472);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2189D2D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189D2DDC()
{
  v0 = sub_219BED164();
  __swift_allocate_value_buffer(v0, qword_27CCD81D0);
  *__swift_project_value_buffer(v0, qword_27CCD81D0) = 250;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void __swiftcall InterludeModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for InterludeViewController();
  if (!sub_219BE1E24())
  {
    __break(1u);
  }
}

uint64_t InterludeModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2189D2F1C()
{
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  type metadata accessor for InterludeViewController();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189D2FC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5700);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for ArticleLinkActionHandler();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_2186CB1F0(&v11, v8 + 24);
    sub_2186CB1F0(&v9, v8 + 64);
    *(v8 + 104) = v6;
    a2[3] = v7;
    result = sub_2189D3EEC(qword_280EC2B78, 255, type metadata accessor for ArticleLinkActionHandler);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2189D31A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8E30);
  result = sub_219BE1E34();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8B60);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for ArticleRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v13, v8 + 24);
    sub_2186CB1F0(&v11, v8 + 64);
    *(v8 + 104) = v5;
    sub_2186CB1F0(&v9, v8 + 112);
    *(v8 + 152) = v6;
    a2[3] = v7;
    result = sub_2189D3EEC(qword_280EDE4F8, 255, type metadata accessor for ArticleRouter);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2189D33D0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8DBC8);
  v3 = sub_219BE1E24();
  v4 = v3;
  if (v3 && (v5 = [v3 articleHostViewController]) != 0 && (v6 = v5, sub_219BDDE34(), v8 = sub_219BF65D4(), v6, v8))
  {

    v7 = v8;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BDDE34();
    v9 = sub_219BE1E24();

    v7 = v9;
    if (!v9)
    {
      return;
    }
  }

  v10 = v7;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2189D3510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8E30);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8B60);
  result = sub_219BE1E34();
  if (v9)
  {
    v6 = type metadata accessor for CampaignLandingPageRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v12, v7 + 24);
    *(v7 + 64) = v5;
    sub_2186CB1F0(&v10, v7 + 72);
    sub_2186CB1F0(&v8, v7 + 112);
    a2[3] = v6;
    result = sub_2189D3EEC(&qword_280EBF500, 255, type metadata accessor for CampaignLandingPageRouter);
    a2[4] = result;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2189D36C0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BDEC14();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2189D3740@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (v5)
  {
    return sub_2186CB1F0(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189D37C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBC480);
  result = sub_219BE1E34();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ED3FB0);
    result = sub_219BE1E34();
    if (v6)
    {
      sub_2186CB1F0(&v7, a2);
      return sub_2186CB1F0(&v5, a2 + 40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189D38B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280ED3940);
    result = sub_219BE1E34();
    if (v9)
    {
      a2[3] = &type metadata for FeedOptionsProvider;
      a2[4] = sub_2189D3E98();
      v7 = swift_allocObject();
      *a2 = v7;
      *(v7 + 16) = v5;
      *(v7 + 24) = v6;
      return sub_2186CB1F0(&v8, v7 + 32);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189D3A5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    a4[3] = a2;
    result = a3();
    a4[4] = result;
    *a4 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189D3ADC()
{
  sub_219BDD854();
  swift_allocObject();
  sub_219BDD844();
  v0 = sub_219BDD834();

  return v0;
}

id sub_2189D3B2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E7C0);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = [result debugAdvertisementSettings];
    v3 = [objc_allocWithZone(MEMORY[0x277D55080]) initWithDebugSettings_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2189D3BE0()
{
  sub_219BDC2C4();
  sub_2189D3EEC(&qword_280EDB4E8, v0, type metadata accessor for ArticleAssembly);
  sub_219BDC7D4();

  return [objc_allocWithZone(MEMORY[0x277D550B8]) initWithLineBalancingEnabled_];
}

void sub_2189D3CB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  v1 = sub_219BE1E24();
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 articleAccessChecker];

  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

unint64_t sub_2189D3D48()
{
  result = qword_27CC0C290;
  if (!qword_27CC0C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C290);
  }

  return result;
}

unint64_t sub_2189D3D9C()
{
  result = qword_27CC0C298;
  if (!qword_27CC0C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C298);
  }

  return result;
}

unint64_t sub_2189D3DF0()
{
  result = qword_27CC0C2A0;
  if (!qword_27CC0C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C2A0);
  }

  return result;
}

unint64_t sub_2189D3E44()
{
  result = qword_27CC0C2A8;
  if (!qword_27CC0C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C2A8);
  }

  return result;
}

unint64_t sub_2189D3E98()
{
  result = qword_27CC0C2B0;
  if (!qword_27CC0C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C2B0);
  }

  return result;
}

uint64_t sub_2189D3EEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2189D3F40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 328))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2189D3F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 328) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 328) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2189D4054(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x446873696C627570;
      break;
    case 2:
      result = 0x49656C6369747261;
      break;
    case 3:
      result = 0x73726F68747561;
      break;
    case 4:
      result = 0x646961507369;
      break;
    case 5:
    case 20:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000027;
      break;
    case 11:
    case 12:
    case 13:
      result = 0x69616E626D756874;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2189D42CC(void *a1)
{
  v3 = v1;
  sub_2189D5E68(0, &qword_27CC0C2B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189D48AC();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BF7794();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_219BF77C4();
    v12 = *(v3 + 32);
    HIBYTE(v11) = 2;
    sub_2186D0BA8();
    sub_2187531B0(&unk_280E8EE00);
    sub_219BF77E4();
    v12 = *(v3 + 40);
    HIBYTE(v11) = 3;
    sub_219BF77E4();
    LOBYTE(v12) = 4;
    sub_219BF77A4();
    LOBYTE(v12) = 5;
    sub_219BF7794();
    LOBYTE(v12) = 6;
    sub_219BF7794();
    LOBYTE(v12) = 7;
    sub_219BF7794();
    LOBYTE(v12) = 8;
    sub_219BF7794();
    LOBYTE(v12) = 9;
    sub_219BF7794();
    LOBYTE(v12) = 10;
    sub_219BF7794();
    LOBYTE(v12) = 11;
    sub_219BF7794();
    LOBYTE(v12) = 12;
    sub_219BF7794();
    LOBYTE(v12) = 13;
    sub_219BF7794();
    LOBYTE(v12) = 14;
    sub_219BF77C4();
    LOBYTE(v12) = 15;
    sub_219BF77C4();
    LOBYTE(v12) = 16;
    sub_219BF77C4();
    LOBYTE(v12) = 17;
    sub_219BF77C4();
    LOBYTE(v12) = 18;
    sub_219BF7794();
    LOBYTE(v12) = 19;
    sub_219BF7794();
    LOBYTE(v12) = 20;
    sub_219BF7794();
    LOBYTE(v12) = 21;
    sub_219BF7794();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2189D479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2189D4900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2189D47D0(uint64_t a1)
{
  v2 = sub_2189D48AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189D480C(uint64_t a1)
{
  v2 = sub_2189D48AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2189D4848@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2189D4FBC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x148uLL);
  }

  return result;
}

unint64_t sub_2189D48AC()
{
  result = qword_27CC0C2C0;
  if (!qword_27CC0C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C2C0);
  }

  return result;
}

uint64_t sub_2189D4900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49656C6369747261 && a2 == 0xEA00000000007344 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726F68747561 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CDD590 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CDD5B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CDD5D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000219CDD5F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CDD610 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000219CDD630 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEE006C6C616D536CLL || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEF6D756964654D6CLL || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEE00656772614C6CLL || (sub_219BF78F4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CDD660 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CDD680 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CDD6A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CDD6C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CDD6E0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CDD700 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CDD720 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219CDD740 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

void *sub_2189D4FBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2189D5E68(0, &qword_27CC0C2C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = a1[3];
  v148 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2189D48AC();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v148);
  }

  v89 = v7;
  v87 = a2;
  LOBYTE(v91[0]) = 0;
  v12 = sub_219BF7694();
  v86 = v13;
  LOBYTE(v91[0]) = 1;
  v14 = sub_219BF76C4();
  v88 = 0;
  v16 = v89;
  v17 = v14;
  v147 = v15 & 1;
  sub_2186D0BA8();
  LOBYTE(v90[0]) = 2;
  sub_2187531B0(&qword_280E8EDD0);
  v18 = v88;
  sub_219BF76E4();
  if (!v18)
  {
    v84 = v91[0];
    LOBYTE(v90[0]) = 3;
    sub_219BF76E4();
    v83 = v91[0];
    LOBYTE(v91[0]) = 4;
    v19 = sub_219BF76A4();
    LOBYTE(v91[0]) = 5;
    v20 = sub_219BF7694();
    v82 = v21;
    LOBYTE(v91[0]) = 6;
    v85 = sub_219BF7694();
    v81 = v22;
    LOBYTE(v91[0]) = 7;
    v72 = sub_219BF7694();
    v80 = v23;
    LOBYTE(v91[0]) = 8;
    v73 = sub_219BF7694();
    v88 = 0;
    v24 = v19;
    v79 = v25;
    LOBYTE(v91[0]) = 9;
    v26 = sub_219BF7694();
    v78 = v27;
    v88 = 0;
    v28 = v26;
    LOBYTE(v91[0]) = 10;
    v71 = sub_219BF7694();
    v77 = v29;
    v88 = 0;
    LOBYTE(v91[0]) = 11;
    v70 = sub_219BF7694();
    v76 = v30;
    v88 = 0;
    LOBYTE(v91[0]) = 12;
    v69 = sub_219BF7694();
    v75 = v31;
    v88 = 0;
    LOBYTE(v91[0]) = 13;
    v68 = sub_219BF7694();
    v74 = v32;
    v88 = 0;
    LOBYTE(v91[0]) = 14;
    v67 = sub_219BF76C4();
    v88 = 0;
    v144 = v33 & 1;
    LOBYTE(v91[0]) = 15;
    v66 = sub_219BF76C4();
    v88 = 0;
    v142 = v34 & 1;
    LOBYTE(v91[0]) = 16;
    v65 = sub_219BF76C4();
    v88 = 0;
    v140 = v35 & 1;
    LOBYTE(v91[0]) = 17;
    v63 = sub_219BF76C4();
    v88 = 0;
    v138 = v36 & 1;
    LOBYTE(v91[0]) = 18;
    v61 = sub_219BF7694();
    v62 = v37;
    v64 = 0;
    LOBYTE(v91[0]) = 19;
    v58 = sub_219BF7694();
    v60 = v38;
    v88 = 0;
    LOBYTE(v91[0]) = 20;
    v57 = sub_219BF7694();
    v59 = v39;
    v88 = 0;
    v136 = 21;
    v40 = sub_219BF7694();
    v55 = v41;
    v56 = v40;
    v88 = 0;
    (*(v89 + 8))(v9, v6);
    v90[0] = v12;
    v90[1] = v86;
    v53 = v17;
    v90[2] = v17;
    v51 = v24;
    v52 = v147;
    LOBYTE(v90[3]) = v147;
    *(&v90[3] + 1) = *v146;
    HIDWORD(v90[3]) = *&v146[3];
    v90[4] = v84;
    v90[5] = v83;
    LOBYTE(v90[6]) = v24;
    *(&v90[6] + 1) = *v145;
    HIDWORD(v90[6]) = *&v145[3];
    v42 = v20;
    v43 = v81;
    v44 = v82;
    v90[7] = v20;
    v90[8] = v82;
    v90[9] = v85;
    v90[10] = v81;
    v45 = v72;
    v46 = v80;
    v90[11] = v72;
    v90[12] = v80;
    v90[13] = v73;
    v90[14] = v79;
    v54 = v28;
    v90[15] = v28;
    v90[16] = v78;
    v90[17] = v71;
    v90[18] = v77;
    v90[19] = v70;
    v90[20] = v76;
    v90[21] = v69;
    v90[22] = v75;
    v90[23] = v68;
    v90[24] = v74;
    v90[25] = v67;
    LODWORD(v89) = v144;
    LOBYTE(v90[26]) = v144;
    *(&v90[26] + 1) = *v143;
    HIDWORD(v90[26]) = *&v143[3];
    v90[27] = v66;
    LODWORD(v64) = v142;
    LOBYTE(v90[28]) = v142;
    *(&v90[28] + 1) = *v141;
    HIDWORD(v90[28]) = *&v141[3];
    v90[29] = v65;
    HIDWORD(v90[30]) = *&v139[3];
    *(&v90[30] + 1) = *v139;
    *(&v90[32] + 1) = *v137;
    v49 = v140;
    LOBYTE(v90[30]) = v140;
    v47 = v63;
    v90[31] = v63;
    HIDWORD(v90[32]) = *&v137[3];
    v50 = v138;
    LOBYTE(v90[32]) = v138;
    v90[33] = v61;
    v90[34] = v62;
    v90[35] = v58;
    v90[36] = v60;
    v90[37] = v57;
    v90[38] = v59;
    v90[39] = v56;
    v90[40] = v55;
    sub_2189D5ECC(v90, v91);
    __swift_destroy_boxed_opaque_existential_1(v148);
    v91[0] = v12;
    v91[1] = v86;
    v91[2] = v53;
    v92 = v52;
    v94 = v84;
    v95 = v83;
    v96 = v51;
    v98 = v42;
    v99 = v44;
    v100 = v85;
    v101 = v43;
    v102 = v45;
    v103 = v46;
    *v93 = *v146;
    *&v93[3] = *&v146[3];
    *v97 = *v145;
    *&v97[3] = *&v145[3];
    v104 = v73;
    v105 = v79;
    v106 = v54;
    v107 = v78;
    v108 = v71;
    v109 = v77;
    v110 = v70;
    v111 = v76;
    v112 = v69;
    v113 = v75;
    v114 = v68;
    v115 = v74;
    v116 = v67;
    v117 = v89;
    *v118 = *v143;
    *&v118[3] = *&v143[3];
    v119 = v66;
    v120 = v64;
    *v121 = *v141;
    *&v121[3] = *&v141[3];
    v122 = v65;
    v123 = v49;
    *v124 = *v139;
    *&v124[3] = *&v139[3];
    v125 = v47;
    v126 = v50;
    *v127 = *v137;
    *&v127[3] = *&v137[3];
    v128 = v61;
    v129 = v62;
    v130 = v58;
    v131 = v60;
    v132 = v57;
    v133 = v59;
    v134 = v56;
    v135 = v55;
    sub_2189D5F04(v91);
    return memcpy(v87, v90, 0x148uLL);
  }

  v88 = v18;
  (*(v16 + 8))(v9, v6);
  LODWORD(v87) = 0;
  LODWORD(v85) = 0;
  LODWORD(v89) = 0;
  __swift_destroy_boxed_opaque_existential_1(v148);

  if (v87)
  {
  }

  if (v85)
  {

    if ((v89 & 1) == 0)
    {
      return result;
    }
  }

  if (v89)
  {
  }

  return result;
}

void sub_2189D5E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189D48AC();
    v7 = a3(a1, &type metadata for SearchRecipeMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchRecipeMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchRecipeMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2189D6088()
{
  result = qword_27CC0C2D0;
  if (!qword_27CC0C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C2D0);
  }

  return result;
}

unint64_t sub_2189D60E0()
{
  result = qword_27CC0C2D8;
  if (!qword_27CC0C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C2D8);
  }

  return result;
}

unint64_t sub_2189D6138()
{
  result = qword_27CC0C2E0;
  if (!qword_27CC0C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C2E0);
  }

  return result;
}

uint64_t sub_2189D618C(void *a1)
{
  sub_2189D854C(0, &qword_27CC0C328, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189D84F8();
  sub_219BF7B44();
  v13 = 0;
  sub_219BF7814();
  if (!v1)
  {
    v12 = 1;
    sub_219BF7814();
    v11 = 2;
    sub_219BF7844();
    v10 = 3;
    sub_219BF7844();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2189D6350()
{
  v1 = 0x736B63696C63;
  v2 = 0x756F43746E657665;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x6973736572706D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2189D63D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2189D7D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2189D6400(uint64_t a1)
{
  v2 = sub_2189D84F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189D643C(uint64_t a1)
{
  v2 = sub_2189D84F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189D6478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2189D7EAC(a1);
  if (!v2)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

uint64_t sub_2189D64C8()
{
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BE4D74();
  sub_2189D7CF0(&qword_27CC1ACE0, MEMORY[0x277D34A70]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2189D6570()
{
  sub_219BF5524();
  sub_219BE4D74();
  sub_2189D7CF0(&qword_27CC1ACE0, MEMORY[0x277D34A70]);
  return sub_219BF52F4();
}

uint64_t sub_2189D65FC()
{
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BE4D74();
  sub_2189D7CF0(&qword_27CC1ACE0, MEMORY[0x277D34A70]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2189D66A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v28 = _s9DataStoreC10CaptureKeyVMa();
  MEMORY[0x28223BE20](v28);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a3;
  v9 = [*(a3 + 16) allAggregates];
  sub_2189D843C();
  v10 = MEMORY[0x277D837D0];
  v27 = sub_219BF5214();

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v25 = qword_280F61728;
  v24[1] = sub_219BF6214();
  sub_2189D7B10(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C0B8C0;
  v31 = 0;
  v32 = 0xE000000000000000;
  v12 = sub_219BE4D74();
  sub_219BF7484();
  v13 = v31;
  v14 = v32;
  *(v11 + 56) = v10;
  v15 = sub_2186FC3BC();
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  *(v11 + 96) = v10;
  *(v11 + 104) = v15;
  v16 = v29;
  *(v11 + 64) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = a2;
  v17 = v27;
  v31 = *(v27 + 16);

  v18 = sub_219BF7894();
  *(v11 + 136) = v10;
  *(v11 + 144) = v15;
  *(v11 + 112) = v18;
  *(v11 + 120) = v19;
  sub_219BE5314();

  (*(*(v12 - 8) + 16))(v8 + *(v28 + 20), a4, v12);
  *v8 = v16;
  v8[1] = a2;

  v20 = sub_2189D80C0(v17);

  v21 = v26;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + 32);
  *(v21 + 32) = 0x8000000000000000;
  sub_21948BF10(v20, v8, isUniquelyReferenced_nonNull_native);
  sub_2189D7C94(v8);
  *(v21 + 32) = v30;
  return swift_endAccess();
}

uint64_t sub_2189D69A0()
{
  v1 = v0;
  v2 = [*(v0 + 16) allAggregates];
  sub_2189D843C();
  v3 = MEMORY[0x277D837D0];
  v4 = sub_219BF5214();

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2189D7B10(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v6 = sub_219BF7894();
  v8 = v7;
  *(v5 + 56) = v3;
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_219BE5314();

  v9 = sub_2189D80C0(v4);

  *(v1 + 40) = v9;
}

uint64_t sub_2189D6B48(uint64_t a1)
{
  v71 = _s9DataStoreC10CaptureKeyVMa();
  v2 = MEMORY[0x28223BE20](v71);
  v65 = (&v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v68 = (&v62 - v4);
  v70 = sub_219BE4DA4();
  v75 = *(v70 - 8);
  v5 = MEMORY[0x28223BE20](v70);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v62 - v7;
  v8 = sub_219BE4DB4();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v62 - v11;
  v12 = sub_219BE4DC4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189D7B10(0, &qword_27CC0C308, MEMORY[0x277D34AA8], MEMORY[0x277D83D88]);
  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2189D7B10(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C09BA0;
  sub_2189D7B74(a1, v22);
  v63 = v22;
  v64 = v17;
  v24 = a1;
  v25 = sub_219BF5484();
  v27 = v26;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_2186FC3BC();
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  sub_219BE5314();

  v28 = v24;
  sub_2189D7B74(v24, v20);
  v29 = *(v13 + 48);
  if (v29(v20, 1, v12) == 1)
  {
    v31 = v72;
    v30 = v73;
    (*(v72 + 104))(v15, *MEMORY[0x277D34A88], v73);
    v32 = *MEMORY[0x277D34AA0];
    (*(v13 + 104))(v15, *MEMORY[0x277D34AA0], v12);
    if (v29(v20, 1, v12) != 1)
    {
      sub_2189D7C08(v20);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v20, v12);
    v32 = *MEMORY[0x277D34AA0];
    v31 = v72;
    v30 = v73;
  }

  v33 = (*(v13 + 88))(v15, v12);
  v34 = v75;
  if (v33 != v32)
  {
    if (v33 == *MEMORY[0x277D34A98])
    {
      (*(v13 + 96))(v15, v12);
      v39 = v74;
      v40 = v70;
      (*(v34 + 32))(v74, v15, v70);
      v41 = *(v34 + 16);
      v42 = v69;
      v41(v69, v39, v40);
      v43 = sub_219BE4D94();
      v44 = v68;
      *v68 = v43;
      v44[1] = v45;
      sub_219BE4D84();
      v46 = *(v34 + 8);
      v46(v42, v40);
      v47 = v76;
      swift_beginAccess();
      v48 = *(v47 + 32);
      if (*(v48 + 16))
      {
        v49 = sub_21931E9C0(v44);
        if (v50)
        {
          v51 = *(v48 + 56);
          v52 = v44;
          v38 = *(v51 + 8 * v49);
          swift_endAccess();

          sub_2189D7C94(v52);
          v46(v74, v40);
          return v38;
        }
      }

      swift_endAccess();
      sub_2189D7C94(v44);
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD00000000000001BLL, 0x8000000219CDD860);
      sub_2189D7B74(v28, v63);
      v55 = sub_219BF5484();
      MEMORY[0x21CECC330](v55);

      MEMORY[0x21CECC330](0xD000000000000029, 0x8000000219CDD880);
      v56 = v69;
      v41(v69, v74, v40);
      v57 = sub_219BE4D94();
      v58 = v65;
      *v65 = v57;
      *(v58 + 8) = v59;
      sub_219BE4D84();
      v46(v56, v40);
      sub_219BF7484();
      sub_2189D7C94(v58);
      MEMORY[0x21CECC330](0xD000000000000012, 0x8000000219CDD8B0);
      sub_2189D7CF0(&qword_27CC0C310, _s9DataStoreC10CaptureKeyVMa);

      v60 = sub_219BF5274();
      MEMORY[0x21CECC330](v60);
    }

    else
    {
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_219BF7314();

      v77 = 0xD00000000000002FLL;
      v78 = 0x8000000219CDD830;
      sub_2189D7B74(v28, v63);
      v61 = sub_219BF5484();
      MEMORY[0x21CECC330](v61);
    }

    while (1)
    {
LABEL_21:
      sub_219BF7514();
      __break(1u);
    }
  }

  (*(v13 + 96))(v15, v12);
  v35 = v67;
  (*(v31 + 32))(v67, v15, v30);
  v36 = v66;
  (*(v31 + 16))(v66, v35, v30);
  v37 = (*(v31 + 88))(v36, v30);
  if (v37 != *MEMORY[0x277D34A90])
  {
    if (v37 == *MEMORY[0x277D34A88])
    {
      v38 = *(v76 + 40);
      if (v38)
      {
        v53 = *(v31 + 8);

        v53(v35, v30);
        return v38;
      }
    }

    else
    {
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000046, 0x8000000219CDD8D0);
      sub_219BF7484();
    }

    goto LABEL_21;
  }

  (*(v31 + 8))(v35, v30);
  v38 = *(v76 + 24);

  return v38;
}

uint64_t sub_2189D7594@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  *&v26 = a1;
  v28 = a2;
  sub_2189D7B10(0, &qword_27CC0C308, MEMORY[0x277D34AA8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2189D7B10(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_219BE4DD4();
  sub_219BF7484();
  v6 = v29;
  v7 = v30;
  v8 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v10 = v26;
  sub_2189D7B74(v26, v4);
  v11 = sub_219BF5484();
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  sub_219BE5314();

  v13 = sub_2189D6B48(v10);
  v14 = sub_21923DB34();
  if (!*(v13 + 16))
  {

    goto LABEL_7;
  }

  v16 = sub_21870F700(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_7:

    v22 = 0uLL;
    v24 = 1;
    v23 = 0uLL;
    goto LABEL_8;
  }

  v19 = (*(v13 + 56) + 32 * v16);
  v20 = *v19;
  v26 = v19[1];
  v27 = v20;

  v23 = v26;
  v22 = v27;
  v24 = 0;
LABEL_8:
  v25 = v28;
  *v28 = v22;
  v25[1] = v23;
  *(v25 + 32) = v24;
  return result;
}

uint64_t sub_2189D7830()
{

  return swift_deallocClassInstance();
}

uint64_t _s9DataStoreC10CaptureKeyVMa()
{
  result = qword_27CC0C2E8;
  if (!qword_27CC0C2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2189D7918()
{
  result = sub_219BE4D74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2189D79EC(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = 0, (sub_219BF78F4() & 1) != 0))
  {
    _s9DataStoreC10CaptureKeyVMa();
    sub_219BE4D74();
    sub_2189D7CF0(&qword_27CC0C300, MEMORY[0x277D34A70]);
    sub_219BF5874();
    sub_219BF5874();
    if (v7 == v5 && v8 == v6)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_219BF78F4();
    }
  }

  return v3 & 1;
}

void sub_2189D7B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2189D7B74(uint64_t a1, uint64_t a2)
{
  sub_2189D7B10(0, &qword_27CC0C308, MEMORY[0x277D34AA8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189D7C08(uint64_t a1)
{
  sub_2189D7B10(0, &qword_27CC0C308, MEMORY[0x277D34AA8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189D7C94(uint64_t a1)
{
  v2 = _s9DataStoreC10CaptureKeyVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189D7CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189D7D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B63696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F43746E657665 && a2 == 0xEA0000000000746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2189D7EAC(void *a1)
{
  sub_2189D854C(0, &qword_27CC0C318, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2189D84F8();
  sub_219BF7B34();
  if (!v1)
  {
    v10[15] = 0;
    sub_219BF7714();
    v10[14] = 1;
    sub_219BF7714();
    v10[13] = 2;
    v8 = sub_219BF7744();
    v10[12] = 3;
    sub_219BF7744();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_2189D80C0(uint64_t a1)
{
  sub_2189D8488();
  result = sub_219BF7584();
  v3 = 0;
  v31 = result;
  v32 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v30 = result + 64;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v32 + 48) + 16 * v14);
      v16 = v15[1];
      v33 = *v15;
      v17 = *(*(v32 + 56) + 8 * v14);

      v18 = v17;
      [v18 clicks];
      v20 = v19;
      [v18 impressions];
      v22 = v21;
      v23 = [v18 eventCount];
      v24 = [v18 timestamp];

      result = v31;
      *(v30 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v25 = (v31[6] + 16 * v14);
      *v25 = v33;
      v25[1] = v16;
      v26 = (v31[7] + 32 * v14);
      *v26 = v20;
      v26[1] = v22;
      v26[2] = v23;
      v26[3] = v24;
      v27 = v31[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v31[2] = v29;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2189D8288(void *a1)
{
  v2 = v1;
  v1[4] = MEMORY[0x277D84F98];
  v1[5] = 0;
  v1[2] = a1;
  v3 = [a1 allAggregates];
  sub_2189D843C();
  v4 = MEMORY[0x277D837D0];
  v5 = sub_219BF5214();

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2189D7B10(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  v7 = sub_219BF7894();
  v9 = v8;
  *(v6 + 56) = v4;
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_219BE5314();

  v10 = sub_2189D80C0(v5);

  v2[3] = v10;
  return v2;
}

unint64_t sub_2189D843C()
{
  result = qword_280E8DCC0;
  if (!qword_280E8DCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DCC0);
  }

  return result;
}

void sub_2189D8488()
{
  if (!qword_280E8D220)
  {
    v0 = sub_219BF75C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D220);
    }
  }
}

unint64_t sub_2189D84F8()
{
  result = qword_27CC0C320;
  if (!qword_27CC0C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C320);
  }

  return result;
}

void sub_2189D854C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189D84F8();
    v7 = a3(a1, &_s9DataStoreC4DataV9AggregateV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189D85C4()
{
  result = qword_27CC0C330;
  if (!qword_27CC0C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C330);
  }

  return result;
}

unint64_t sub_2189D861C()
{
  result = qword_27CC0C338;
  if (!qword_27CC0C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C338);
  }

  return result;
}

unint64_t sub_2189D8674()
{
  result = qword_27CC0C340;
  if (!qword_27CC0C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C340);
  }

  return result;
}

uint64_t type metadata accessor for ChannelPickerDetailViewController()
{
  result = qword_27CC0C368;
  if (!qword_27CC0C368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2189D8814()
{
  result = type metadata accessor for ChannelPickerElementModel();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2189D88C8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v2);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47.receiver = v0;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_viewDidLoad);
  sub_218980A74(&v0[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_model], v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = v4[9];
      *v45 = v4[8];
      *&v45[16] = v12;
      v46 = v4[10];
      v13 = v4[5];
      v41 = v4[4];
      v42 = v13;
      v14 = v4[7];
      v43 = v4[6];
      v44 = v14;
      v15 = v4[1];
      v37 = *v4;
      v16 = v4[2];
      v40 = v4[3];
      v38 = v15;
      v39 = v16;
      v17 = sub_219BF65B4();
      v18 = sub_219BF53D4();
      [v17 setTitle_];

      sub_218980B3C(&v37);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_7:
    sub_2189DA478(v4);
    goto LABEL_10;
  }

  v6 = v4[7];
  v43 = v4[6];
  v44 = v6;
  *v45 = v4[8];
  *&v45[9] = *(v4 + 137);
  v7 = v4[3];
  v39 = v4[2];
  v40 = v7;
  v8 = v4[5];
  v41 = v4[4];
  v42 = v8;
  v9 = v4[1];
  v37 = *v4;
  v38 = v9;
  v10 = sub_219BF65B4();
  if (*(&v38 + 1))
  {

    v11 = sub_219BF53D4();
    sub_218980B90(&v37);
  }

  else
  {
    sub_218980B90(&v37);
    v11 = 0;
  }

  [v10 setTitle_];

LABEL_10:
  v19 = *&v0[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_blueprintViewController];
  [v0 addChildViewController_];
  v20 = [v0 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v19 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  [v21 addSubview_];

  [v19 didMoveToParentViewController_];
  v24 = [v19 view];
  if (!v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v24;
  v26 = [v0 view];
  if (v26)
  {
    v27 = v26;
    [v26 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v25 setFrame_];
    v36 = [v0 traitCollection];
    sub_2189DA2F0();

    return;
  }

LABEL_18:
  __break(1u);
}

void sub_2189D8E2C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_eventHandler) + 48), *(*(v0 + OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_eventHandler) + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_2189D8EF0()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200();
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = *MEMORY[0x277D6D9C8];
  v13 = sub_219BE73A4();
  (*(*(v13 - 8) + 104))(&v6[v11], v12, v13);
  v14 = sub_219BE6C74();
  v15 = MEMORY[0x277D6D7C0];
  v10[3] = v14;
  v10[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C24();
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2189D9204()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2189D93E0()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_27CC08A20 != -1)
  {
    swift_once();
  }

  v7 = qword_27CCD9078;
  v8 = sub_219BE9334();
  v9 = MEMORY[0x277D6E550];
  v6[3] = v8;
  v6[4] = v9;
  *v6 = v7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v6[5] = v13;
  v6[6] = v15;
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC80], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECB0], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2189D96DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 40))(ObjectType, v10);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    return (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_2189D98D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5888](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2189D9938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5810](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2189D99A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5800](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D99F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5808](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D9A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5838](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2189D9AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5848](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D9B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5850](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D9BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5828](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D9C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5858](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D9C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5830](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D9CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5868](a1, a2, ObjectType, a4);
}

uint64_t sub_2189D9D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5878](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2189D9DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5820](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2189D9E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57E8](a1, ObjectType, a3);
}

uint64_t sub_2189D9E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57D8](a1, ObjectType, a3);
}

uint64_t sub_2189D9EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57F8](a1, ObjectType, a3);
}

uint64_t sub_2189D9F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57D0](a1, ObjectType, a3);
}

uint64_t sub_2189D9F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57C8](a1, ObjectType, a3);
}

uint64_t sub_2189D9FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5860](a1, a2, ObjectType, a4);
}

uint64_t sub_2189DA008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5870](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_2189DA070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57F0](a1, a2, ObjectType, a4);
}

uint64_t sub_2189DA0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D57E0](a1, a2, ObjectType, a4);
}

uint64_t sub_2189DA120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5840](a1, a2, ObjectType, a4);
}

unint64_t sub_2189DA1A8()
{
  result = qword_27CC0AEE0;
  if (!qword_27CC0AEE0)
  {
    type metadata accessor for ChannelPickerElementModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AEE0);
  }

  return result;
}

void sub_2189DA200()
{
  if (!qword_280EE5A00)
  {
    sub_219BE66C4();
    sub_2189DA28C();
    sub_219BE73A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280EE5A00);
    }
  }
}

unint64_t sub_2189DA28C()
{
  result = qword_280EE4FC8;
  if (!qword_280EE4FC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE4FC8);
  }

  return result;
}

void sub_2189DA2F0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI233ChannelPickerDetailViewController_styler], v10);
  v3 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v10);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setAlwaysBounceVertical_];

    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v9 = [v1 navigationItem];
    sub_218ADD96C(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2189DA478(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerElementModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_2189DA4F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189DA54C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v53 = a3;
  sub_2189DB024(0, &qword_27CC0C380, MEMORY[0x277D6DF88]);
  v6 = v5;
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = v44 - v7;
  sub_2189DADA8();
  v55 = v8;
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189DAE04();
  MEMORY[0x28223BE20](v11 - 8);
  sub_2189DB024(0, &qword_27CC0AF28, MEMORY[0x277D6D710]);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v56 = v44 - v14;
  sub_2189DAEF8();
  MEMORY[0x28223BE20](v15 - 8);
  sub_2189DB024(0, &qword_27CC0AF58, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v16);
  v54 = v44 - v19;
  v20 = v3[4];
  v21 = v3[5];
  v22 = v3[6];
  v61 = v20;
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_2189520BC();
    sub_218952110();
    v39 = v51;
    sub_219BE85C4();
    a2(v39);
    return (*(v52 + 8))(v39, v6);
  }

  v48 = v20;
  v49 = v17;
  v37 = v18;
  v38 = sub_219BF7214();
  v18 = v37;
  v17 = v49;
  if (!v38)
  {
    goto LABEL_12;
  }

LABEL_3:
  v45 = v18;
  v46 = v13;
  v48 = v6;
  v49 = v17;
  v47 = a2;

  sub_2189DAC6C();
  v24 = v23;
  v25 = sub_2189DAFC4(&qword_27CC0C3A8);
  v26 = sub_2189DAFC4(&qword_27CC0C3B0);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v57, v25, v26);
  v27 = sub_2189520BC();
  sub_218952110();
  sub_219BEB2D4();
  v58 = *(v24 + 16);
  v59 = v21;
  v60 = v22;
  v28 = sub_2189DAEB4(&qword_27CC0C390);
  v29 = sub_2189DAEB4(&qword_27CC0C398);
  swift_unknownObjectRetain();

  v30 = v55;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v55, v28, v29);
  v44[0] = v27;
  sub_219BE6924();
  v58 = v24;
  v44[1] = v24;

  sub_219BE5FB4();
  sub_219BE6994();
  v31 = *(v50 + 8);
  result = v31(v10, v30);
  v33 = v61;
  if (v61 >> 62)
  {
    result = sub_219BF7214();
    v34 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v34 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_14;
    }
  }

  if (v34 < 1)
  {
    __break(1u);
    return result;
  }

  v35 = 0;
  do
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x21CECE0F0](v35, v33);
    }

    else
    {
      v36 = *(v33 + 8 * v35 + 32);
    }

    ++v35;
    v58 = v36;

    sub_219BE5FB4();
    sub_219BE6994();

    v31(v10, v55);
  }

  while (v34 != v35);
LABEL_14:

  v40 = v56;
  v41 = v49;
  v42 = v54;
  sub_219BEB1E4();
  v43 = v51;
  sub_219BE85C4();
  v47(v43);

  (*(v52 + 8))(v43, v48);
  (*(v46 + 8))(v40, v57);
  return (*(v45 + 8))(v42, v41);
}

void sub_2189DAC6C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_219BF7214())
  {
    if (sub_219BF7214())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x21CECE0F0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_219BF7214();
LABEL_13:
      if (v3)
      {
        sub_218950770(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

unint64_t sub_2189DAD4C()
{
  result = qword_27CC0C378;
  if (!qword_27CC0C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C378);
  }

  return result;
}

void sub_2189DADA8()
{
  if (!qword_27CC0AF68)
  {
    sub_218952110();
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF68);
    }
  }
}

void sub_2189DAE04()
{
  if (!qword_27CC0C388)
  {
    sub_2189DADA8();
    sub_2189DAEB4(&qword_27CC0C390);
    sub_2189DAEB4(&qword_27CC0C398);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C388);
    }
  }
}

uint64_t sub_2189DAEB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2189DADA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2189DAEF8()
{
  if (!qword_27CC0C3A0)
  {
    sub_2189DB024(255, &qword_27CC0AF28, MEMORY[0x277D6D710]);
    sub_2189DAFC4(&qword_27CC0C3A8);
    sub_2189DAFC4(&qword_27CC0C3B0);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C3A0);
    }
  }
}

uint64_t sub_2189DAFC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2189DB024(255, &qword_27CC0AF28, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2189DB024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsNavigationSectionDescriptor;
    v8[1] = &type metadata for SportsNavigationModel;
    v8[2] = sub_2189520BC();
    v8[3] = sub_218952110();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2189DB0D0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2189DB20C();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2189DB2F8();
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      type metadata accessor for AudioHScrollBlueprintAnimator();
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v5;
      sub_2189DB9D8(qword_280EB1620, type metadata accessor for AudioHScrollBlueprintAnimator);
      sub_219BE9344();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2189DB20C()
{
  if (!qword_280EE53A8)
  {
    sub_219BF33A4();
    sub_219BF13A4();
    sub_2189DB9D8(&qword_280E90190, MEMORY[0x277D33DA8]);
    sub_2189DB9D8(&unk_280E908E0, MEMORY[0x277D33320]);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE53A8);
    }
  }
}

void sub_2189DB2F8()
{
  if (!qword_280EE4E58)
  {
    sub_2189DB464();
    sub_2189DB4B0();
    sub_2189DB76C();
    sub_2189DB8EC();
    sub_219BF2AE4();
    sub_2189DB9D8(&unk_280EE3E20, sub_2189DB4B0);
    sub_2189DB9D8(&qword_280EE42B0, sub_2189DB76C);
    sub_2189DB9D8(&unk_280EE3CE8, sub_2189DB8EC);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4E58);
    }
  }
}

unint64_t sub_2189DB464()
{
  result = qword_280E8E4C0;
  if (!qword_280E8E4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E4C0);
  }

  return result;
}

void sub_2189DB4B0()
{
  if (!qword_280EE3E18)
  {
    sub_2189DB20C();
    sub_2189DB680();
    sub_219BF44A4();
    sub_219BED554();
    sub_2189DB9D8(&unk_280EE53B0, sub_2189DB20C);
    sub_2189DB9D8(&qword_280EE4B58, sub_2189DB680);
    sub_2189DB9D8(&qword_280E8FE08, MEMORY[0x277D34440]);
    sub_2189DB9D8(&unk_280E92730, MEMORY[0x277D31BB8]);
    sub_2189DB9D8(&qword_280E90518, MEMORY[0x277D33740]);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3E18);
    }
  }
}

void sub_2189DB680()
{
  if (!qword_280EE4B50)
  {
    sub_219BF4084();
    sub_219BF20C4();
    sub_2189DB9D8(&unk_280E8FF20, MEMORY[0x277D342C0]);
    sub_2189DB9D8(&unk_280E90520, MEMORY[0x277D33740]);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4B50);
    }
  }
}

void sub_2189DB76C()
{
  if (!qword_280EE42A8)
  {
    sub_2189DB20C();
    sub_2189DB680();
    sub_219BF2AE4();
    sub_2189DB9D8(&unk_280EE53B0, sub_2189DB20C);
    sub_2189DB9D8(&qword_280EE4B58, sub_2189DB680);
    sub_2189DB9D8(&qword_280E902F8, MEMORY[0x277D33AB8]);
    sub_2189DB9D8(&qword_280E90518, MEMORY[0x277D33740]);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE42A8);
    }
  }
}

void sub_2189DB8EC()
{
  if (!qword_280EE3CE0)
  {
    sub_2189DB20C();
    sub_2189DB680();
    sub_2189DB9D8(&unk_280EE53B0, sub_2189DB20C);
    sub_2189DB9D8(&qword_280EE4B58, sub_2189DB680);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3CE0);
    }
  }
}

uint64_t sub_2189DB9D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189DBA30()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F61E58);
  __swift_project_value_buffer(v0, qword_280F61E58);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2189DBBE0()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F61E28);
  v1 = __swift_project_value_buffer(v0, qword_280F61E28);
  if (qword_280ECFF68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280F61E40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2189DBCA8()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280F61E40);
  __swift_project_value_buffer(v0, qword_280F61E40);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2189DBE58()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD81E8);
  __swift_project_value_buffer(v0, qword_27CCD81E8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2189DC008()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8200);
  __swift_project_value_buffer(v0, qword_27CCD8200);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2189DC1B8()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8218);
  __swift_project_value_buffer(v0, qword_27CCD8218);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2189DC440@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_219BF1584();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2189DC4FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2189DC544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2189DC5A0()
{
  v1 = [*v0 *off_278242240[*(v0 + 8)]];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_2189DC604()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2189DC6FC(id a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = [a1 title];
      v4 = sub_219BF5414();
      v6 = v5;

      v7 = [a1 coverDate];
      v8 = sub_219BF5414();
      v10 = v9;

      v11 = sub_2189DCA74(v8, v10, v4, v6);

      return v11;
    }

    else
    {
      swift_getObjectType();
      return sub_2189DCC20();
    }
  }

  else
  {
    v13 = [a1 titleCompact];
    if (v13 || (v13 = [a1 title]) != 0)
    {
      v14 = v13;
      v15 = sub_219BF5414();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = [a1 sourceChannel];
    if (v18)
    {
      v19 = [v18 name];
      swift_unknownObjectRelease();
      v20 = sub_219BF5414();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = sub_2189DC8C8(v20, v22, v15, v17);

    return v23;
  }
}

uint64_t sub_2189DC8C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186E7B4C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09EC0;
    v12 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v13 = sub_2186FC3BC();
    *(v11 + 32) = a3;
    *(v11 + 40) = a4;
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 64) = v13;
    *(v11 + 72) = a1;
    *(v11 + 80) = a2;

    a3 = sub_219BF53E4();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_2189DCA74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186E7B4C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09EC0;
    v12 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v13 = sub_2186FC3BC();
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 64) = v13;
    *(v11 + 72) = a3;
    *(v11 + 80) = a4;

    a3 = sub_219BF53E4();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_2189DCC20()
{
  sub_2189DCE40(v0);
  v2 = v1;
  v19 = 0x2B7377654EBFA3EFLL;
  v20 = 0xA900000000000020;
  v3 = [objc_msgSend(v0 puzzleType)];
  swift_unknownObjectRelease();
  v4 = sub_219BF5414();
  v6 = v5;

  MEMORY[0x21CECC330](v4, v6);

  v7 = 0;
  v18[0] = v2;
  v18[1] = 0x2B7377654EBFA3EFLL;
  v18[2] = 0xA900000000000020;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = &v18[2 * v7];
  while (++v7 != 3)
  {
    v10 = v9 + 2;
    v11 = *v9;
    v9 += 2;
    if (v11)
    {
      v12 = *(v10 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_218840D24(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_218840D24((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_2;
    }
  }

  sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  v19 = v8;
  sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
  sub_2189DD328();
  v16 = sub_219BF5324();

  return v16;
}

uint64_t sub_2189DCE40(void *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E7B4C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = 0;
  v13 = 0;
  if (([a1 behaviorFlags] & 2) == 0)
  {
    v14 = [a1 publishDate];
    if (v14)
    {
      v15 = v14;
      sub_219BDBCA4();

      (*(v3 + 56))(v11, 0, 1, v2);
    }

    else
    {
      (*(v3 + 56))(v11, 1, 1, v2);
    }

    sub_2187D96F4(v11, v9);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      sub_2189DD39C(v11);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v17 = sub_219BF53D4();
      [v16 setDateFormat_];

      v18 = sub_219BDBC04();
      v19 = [v16 stringFromDate_];

      v12 = sub_219BF5414();
      v13 = v20;

      (*(v3 + 8))(v5, v2);
      sub_2189DD39C(v11);
    }
  }

  v21 = [a1 subtitle];
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v23 = sub_219BF5414();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

LABEL_14:
    v27 = 0;
    v28 = 0;
    goto LABEL_15;
  }

  v40 = 10256610;
  v41 = 0xA300000000000000;
  MEMORY[0x21CECC330](v23, v25);

  MEMORY[0x21CECC330](10322146, 0xA300000000000000);
  v27 = v40;
  v28 = v41;
LABEL_15:
  v29 = 0;
  v42 = v12;
  v43[0] = v13;
  v43[1] = v27;
  v43[2] = v28;
  v30 = MEMORY[0x277D84F90];
LABEL_16:
  v31 = &v43[2 * v29];
  while (++v29 != 3)
  {
    v32 = v31 + 2;
    v33 = *v31;
    v31 += 2;
    if (v33)
    {
      v34 = *(v32 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_218840D24(0, *(v30 + 2) + 1, 1, v30);
      }

      v36 = *(v30 + 2);
      v35 = *(v30 + 3);
      if (v36 >= v35 >> 1)
      {
        v30 = sub_218840D24((v35 > 1), v36 + 1, 1, v30);
      }

      *(v30 + 2) = v36 + 1;
      v37 = &v30[16 * v36];
      *(v37 + 4) = v34;
      *(v37 + 5) = v33;
      goto LABEL_16;
    }
  }

  sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  if (*(v30 + 2))
  {
    v40 = v30;
    sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
    sub_2189DD328();
    v38 = sub_219BF5324();
  }

  else
  {

    return 0;
  }

  return v38;
}

unint64_t sub_2189DD328()
{
  result = qword_280E8EDF0;
  if (!qword_280E8EDF0)
  {
    sub_2186DEEEC(255, &qword_280E8EE20, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EDF0);
  }

  return result;
}

uint64_t sub_2189DD39C(uint64_t a1)
{
  sub_2186E7B4C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI228OfflineIssuePruningConditionO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_2189DD444(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[33])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2189DD488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2189DD550@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_2186EDF0C(0, qword_280EBE768, type metadata accessor for ForYouAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = &v76 - v4;
  sub_2186EDF0C(0, qword_280EBC960, type metadata accessor for UpNextAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v76 - v6;
  v86 = type metadata accessor for AudioFeedGroupKnobs();
  v95 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v94 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v76 - v11;
  v103 = type metadata accessor for AudioFeedKnobsConfig();
  v92 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v97 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v76 - v14;
  sub_2186EDF0C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v15 - 8);
  v84 = &v76 - v16;
  v99 = type metadata accessor for AudioFeedConfig();
  v89 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v88 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for AudioFeedContentConfig();
  MEMORY[0x28223BE20](v96);
  v98 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  MEMORY[0x28223BE20](v19 - 8);
  v101 = &v76 - v20;
  sub_2186EDF0C(0, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  sub_2186EDF0C(0, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v102 = (&v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v100 = &v76 - v30;
  sub_2189E02A4(0, &qword_280E8CE68, MEMORY[0x277D844C8]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v35 = &v76 - v34;
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E0250();
  v37 = v104;
  sub_219BF7B34();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v88;
  v79 = v33;
  v81 = 0;
  v104 = v24;
  v107 = 0;
  sub_218786228(&qword_280EDB408, type metadata accessor for AudioFeedConfig);
  v41 = v99;
  v40 = v100;
  sub_219BF7674();
  v106 = 1;
  sub_218786228(&qword_280ECF550, type metadata accessor for AudioFeedKnobsConfig);
  v82 = v26;
  sub_219BF7674();
  type metadata accessor for LegacyAudioFeedConfiguration();
  v105 = 2;
  sub_218786228(&qword_280EB40E0, type metadata accessor for LegacyAudioFeedConfiguration);
  sub_219BF7674();
  v42 = v40;
  v43 = v102;
  sub_2189E0164(v42, v102, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
  v44 = *(v89 + 48);
  v45 = v44(v43, 1, v41);
  v80 = v32;
  v78 = v35;
  v77 = v36;
  if (v45 == 1)
  {
    v46 = sub_219BDBD34();
    v47 = v84;
    (*(*(v46 - 8) + 56))(v84, 1, 1, v46);
    v48 = sub_219BEE5B4();
    v49 = v85;
    (*(*(v48 - 8) + 56))(v85, 1, 1, v48);
    sub_218734714(v47, 0, v49, v39);
    v50 = v44(v102, 1, v99);
    v51 = v91;
    v53 = v93;
    v52 = v94;
    if (v50 != 1)
    {
      sub_21872C260(v102, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    }
  }

  else
  {
    sub_218735428(v102, v39, type metadata accessor for AudioFeedConfig);
    v51 = v91;
    v53 = v93;
    v52 = v94;
  }

  v54 = v98;
  sub_218735428(v39, v98, type metadata accessor for AudioFeedConfig);
  v55 = v82;
  v56 = v104;
  sub_2189E0164(v82, v104, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
  v57 = *(v92 + 48);
  v58 = v57(v56, 1, v103);
  v59 = v95;
  if (v58 == 1)
  {
    v102 = v57;
    v60 = v86;
    (*(v95 + 56))(v53, 1, 1, v86);
    sub_2189E0164(v53, v52, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
    v61 = *(v59 + 48);
    v62 = v61(v52, 1, v60);
    v63 = v97;
    if (v62 == 1)
    {
      AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
      (*(*(AudioFeedGroupKnobs - 8) + 56))(v51, 1, 1, AudioFeedGroupKnobs);
      v65 = type metadata accessor for ForYouAudioFeedGroupKnobs();
      v66 = v83;
      (*(*(v65 - 8) + 56))(v83, 1, 1, v65);
      v67 = v60;
      v68 = v87;
      v69 = v66;
      v54 = v98;
      sub_21872B268(v51, v69, 0, v87);
      sub_21872C260(v53, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      v70 = v61(v52, 1, v67);
      v71 = v101;
      if (v70 != 1)
      {
        sub_21872C260(v52, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      }
    }

    else
    {
      sub_21872C260(v53, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      v68 = v87;
      sub_218735428(v52, v87, type metadata accessor for AudioFeedGroupKnobs);
      v71 = v101;
    }

    sub_218735428(v68, v63, type metadata accessor for AudioFeedGroupKnobs);
    v73 = v103;
    *(v63 + *(v103 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    sub_21872C260(v82, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C260(v100, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    (*(v79 + 8))(v78, v80);
    v74 = v104;
    v75 = v102(v104, 1, v73);
    v72 = v96;
    if (v75 != 1)
    {
      sub_21872C260(v74, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    }
  }

  else
  {
    sub_21872C260(v55, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C260(v100, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    (*(v79 + 8))(v78, v80);
    v63 = v97;
    sub_218735428(v56, v97, type metadata accessor for AudioFeedKnobsConfig);
    v72 = v96;
    v71 = v101;
  }

  sub_218735428(v63, v54 + *(v72 + 20), type metadata accessor for AudioFeedKnobsConfig);
  sub_2189E01D0(v71, v54 + *(v72 + 24));
  sub_218735428(v54, v90, type metadata accessor for AudioFeedContentConfig);
  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_2189DE2E0(void *a1)
{
  sub_2189E02A4(0, &qword_27CC0C3B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E0250();
  sub_219BF7B44();
  v9[15] = 0;
  type metadata accessor for AudioFeedConfig();
  sub_218786228(&qword_27CC0C3C0, type metadata accessor for AudioFeedConfig);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for AudioFeedContentConfig();
    v9[14] = 1;
    type metadata accessor for AudioFeedKnobsConfig();
    sub_218786228(&qword_27CC0C3C8, type metadata accessor for AudioFeedKnobsConfig);
    sub_219BF7834();
    v9[13] = 2;
    type metadata accessor for LegacyAudioFeedConfiguration();
    sub_218786228(&qword_27CC0C3D0, type metadata accessor for LegacyAudioFeedConfiguration);
    sub_219BF77E4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2189DE568(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x8000000219CD67B0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000219CD67B0;
  }

  else
  {
    v6 = 0x8000000219CD67D0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6565466F69647561;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEF6769666E6F4364;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000015;
    v4 = 0x8000000219CD67D0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6565466F69647561;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF6769666E6F4364;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2189DE650()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2189DE708()
{
  sub_219BF5524();
}

uint64_t sub_2189DE7AC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2189DE860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2189E0420();
  *a1 = result;
  return result;
}

void sub_2189DE890(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6769666E6F4364;
  v4 = 0xD000000000000010;
  v5 = 0x8000000219CD67B0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v5 = 0x8000000219CD67D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6565466F69647561;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2189DE904()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6565466F69647561;
  }
}

uint64_t sub_2189DE974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2189E0420();
  *a1 = result;
  return result;
}

uint64_t sub_2189DE99C(uint64_t a1)
{
  v2 = sub_2189E0250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189DE9D8(uint64_t a1)
{
  v2 = sub_2189E0250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189DEA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_2186EDF0C(0, qword_280EBE768, type metadata accessor for ForYouAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v72 - v5;
  sub_2186EDF0C(0, qword_280EBC960, type metadata accessor for UpNextAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v72 - v7;
  v77 = type metadata accessor for AudioFeedGroupKnobs();
  v87 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v85 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - v12;
  v13 = type metadata accessor for AudioFeedKnobsConfig();
  v88 = *(v13 - 8);
  v89 = v13;
  MEMORY[0x28223BE20](v13);
  v83 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v15 - 8);
  v76 = &v72 - v16;
  sub_2186EDF0C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v17 - 8);
  v75 = &v72 - v18;
  v19 = type metadata accessor for AudioFeedConfig();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v80 = (&v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186EDF0C(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - v23;
  sub_2186EDF0C(0, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v86 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v72 - v28;
  sub_2186EDF0C(0, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v72 - v34;
  sub_2189E00FC(a1, &v72 - v34, type metadata accessor for AudioFeedConfig);
  (*(v20 + 56))(v35, 0, 1, v19);
  v36 = type metadata accessor for AudioFeedContentConfig();
  sub_2189E00FC(v2 + *(v36 + 20), v29, type metadata accessor for AudioFeedKnobsConfig);
  v37 = *(v88 + 7);
  v81 = v29;
  v37(v29, 0, 1, v89);
  v82 = v36;
  sub_2189E0164(v2 + *(v36 + 24), v24, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  sub_2189E0164(v35, v33, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
  v38 = *(v20 + 48);
  if (v38(v33, 1, v19) == 1)
  {
    v39 = sub_219BDBD34();
    v40 = v75;
    (*(*(v39 - 8) + 56))(v75, 1, 1, v39);
    v41 = sub_219BEE5B4();
    v42 = v76;
    (*(*(v41 - 8) + 56))(v76, 1, 1, v41);
    v43 = v80;
    sub_218734714(v40, 0, v42, v80);
    v44 = v38(v33, 1, v19);
    v45 = v43;
    if (v44 != 1)
    {
      sub_21872C260(v33, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    }
  }

  else
  {
    v45 = v80;
    sub_218735428(v33, v80, type metadata accessor for AudioFeedConfig);
  }

  v46 = v84;
  sub_218735428(v45, v84, type metadata accessor for AudioFeedConfig);
  v47 = v81;
  v48 = v86;
  sub_2189E0164(v81, v86, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
  v49 = v89;
  v50 = *(v88 + 6);
  v51 = v50(v48, 1, v89);
  v52 = v87;
  v53 = v85;
  if (v51 == 1)
  {
    v88 = v50;
    v54 = v79;
    v55 = v77;
    (*(v87 + 56))(v79, 1, 1, v77);
    sub_2189E0164(v54, v53, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
    v57 = *(v52 + 48);
    v56 = v52 + 48;
    v80 = v57;
    if ((v57)(v53, 1, v55) == 1)
    {
      AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
      v59 = v73;
      (*(*(AudioFeedGroupKnobs - 8) + 56))(v73, 1, 1, AudioFeedGroupKnobs);
      v60 = type metadata accessor for ForYouAudioFeedGroupKnobs();
      v61 = v24;
      v62 = v74;
      (*(*(v60 - 8) + 56))(v74, 1, 1, v60);
      v87 = v56;
      v63 = v78;
      v64 = v59;
      v65 = v85;
      v66 = v62;
      v24 = v61;
      sub_21872B268(v64, v66, 0, v78);
      sub_21872C260(v79, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      if ((v80)(v65, 1, v55) != 1)
      {
        sub_21872C260(v65, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      }
    }

    else
    {
      sub_21872C260(v54, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      v63 = v78;
      sub_218735428(v53, v78, type metadata accessor for AudioFeedGroupKnobs);
    }

    v68 = v83;
    sub_218735428(v63, v83, type metadata accessor for AudioFeedGroupKnobs);
    *(v68 + *(v49 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    sub_21872C260(v47, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C260(v35, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    v69 = v86;
    if (v88(v86, 1, v49) != 1)
    {
      sub_21872C260(v69, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    }
  }

  else
  {
    sub_21872C260(v47, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C260(v35, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    v67 = v48;
    v68 = v83;
    sub_218735428(v67, v83, type metadata accessor for AudioFeedKnobsConfig);
  }

  v70 = v82;
  sub_218735428(v68, v46 + *(v82 + 20), type metadata accessor for AudioFeedKnobsConfig);
  return sub_2189E01D0(v24, v46 + *(v70 + 24));
}

uint64_t sub_2189DF524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a1;
  v79 = a2;
  sub_2186EDF0C(0, qword_280EBE768, type metadata accessor for ForYouAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v68 - v5;
  sub_2186EDF0C(0, qword_280EBC960, type metadata accessor for UpNextAudioFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v68 - v7;
  v72 = type metadata accessor for AudioFeedGroupKnobs();
  v82 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v80 = &v68 - v12;
  v13 = type metadata accessor for AudioFeedKnobsConfig();
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = &v68 - v16;
  sub_2186EDF0C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v17 - 8);
  v70 = &v68 - v18;
  v19 = type metadata accessor for AudioFeedConfig();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDF0C(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v68 - v24;
  sub_2186EDF0C(0, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v81 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v68 - v29;
  sub_2186EDF0C(0, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v68 - v35;
  sub_2189E00FC(v3, &v68 - v35, type metadata accessor for AudioFeedConfig);
  (*(v20 + 56))(v36, 0, 1, v19);
  v75 = type metadata accessor for AudioFeedContentConfig();
  sub_2189E00FC(v3 + *(v75 + 20), v30, type metadata accessor for AudioFeedKnobsConfig);
  v37 = *(v83 + 7);
  v77 = v13;
  v37(v30, 0, 1, v13);
  sub_2189E00FC(v76, v25, type metadata accessor for LegacyAudioFeedConfiguration);
  v38 = type metadata accessor for LegacyAudioFeedConfiguration();
  v39 = *(*(v38 - 8) + 56);
  v76 = v25;
  v39(v25, 0, 1, v38);
  sub_2189E0164(v36, v34, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
  v40 = *(v20 + 48);
  if (v40(v34, 1, v19) == 1)
  {
    v41 = sub_219BDBD34();
    v42 = v70;
    (*(*(v41 - 8) + 56))(v70, 1, 1, v41);
    v43 = sub_219BEE5B4();
    v44 = v71;
    (*(*(v43 - 8) + 56))(v71, 1, 1, v43);
    sub_218734714(v42, 0, v44, v22);
    if (v40(v34, 1, v19) != 1)
    {
      sub_21872C260(v34, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    }
  }

  else
  {
    sub_218735428(v34, v22, type metadata accessor for AudioFeedConfig);
  }

  v45 = v79;
  sub_218735428(v22, v79, type metadata accessor for AudioFeedConfig);
  v46 = v81;
  sub_2189E0164(v30, v81, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
  v47 = *(v83 + 6);
  v48 = v77;
  v49 = v47(v46, 1, v77);
  v50 = v82;
  v51 = v80;
  if (v49 == 1)
  {
    v83 = v47;
    v52 = v72;
    (*(v82 + 56))(v80, 1, 1, v72);
    v53 = v74;
    sub_2189E0164(v51, v74, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
    v56 = *(v50 + 48);
    v55 = v50 + 48;
    v54 = v56;
    if (v56(v53, 1, v52) == 1)
    {
      AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
      v58 = v68;
      (*(*(AudioFeedGroupKnobs - 8) + 56))(v68, 1, 1, AudioFeedGroupKnobs);
      v59 = type metadata accessor for ForYouAudioFeedGroupKnobs();
      v60 = v69;
      (*(*(v59 - 8) + 56))(v69, 1, 1, v59);
      v82 = v55;
      v61 = v73;
      v62 = v58;
      v63 = v74;
      sub_21872B268(v62, v60, 0, v73);
      sub_21872C260(v80, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      if (v54(v63, 1, v52) != 1)
      {
        sub_21872C260(v63, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      }
    }

    else
    {
      sub_21872C260(v51, qword_280ED1F00, type metadata accessor for AudioFeedGroupKnobs);
      v61 = v73;
      sub_218735428(v53, v73, type metadata accessor for AudioFeedGroupKnobs);
    }

    v64 = v78;
    sub_218735428(v61, v78, type metadata accessor for AudioFeedGroupKnobs);
    *(v64 + *(v48 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    sub_21872C260(v30, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C260(v36, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    v65 = v81;
    if (v83(v81, 1, v48) != 1)
    {
      sub_21872C260(v65, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    }
  }

  else
  {
    sub_21872C260(v30, qword_280ECF510, type metadata accessor for AudioFeedKnobsConfig);
    sub_21872C260(v36, qword_280EDB3C0, type metadata accessor for AudioFeedConfig);
    v64 = v78;
    sub_218735428(v46, v78, type metadata accessor for AudioFeedKnobsConfig);
  }

  v66 = v75;
  sub_218735428(v64, v45 + *(v75 + 20), type metadata accessor for AudioFeedKnobsConfig);
  return sub_2189E01D0(v76, v45 + *(v66 + 24));
}

uint64_t sub_2189E00FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189E0164(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186EDF0C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2189E01D0(uint64_t a1, uint64_t a2)
{
  sub_2186EDF0C(0, qword_280EB4090, type metadata accessor for LegacyAudioFeedConfiguration);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189E0250()
{
  result = qword_280EC8F70;
  if (!qword_280EC8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8F70);
  }

  return result;
}

void sub_2189E02A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189E0250();
    v7 = a3(a1, &type metadata for AudioFeedContentConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189E031C()
{
  result = qword_27CC0C3D8;
  if (!qword_27CC0C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C3D8);
  }

  return result;
}

unint64_t sub_2189E0374()
{
  result = qword_280EC8F60;
  if (!qword_280EC8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8F60);
  }

  return result;
}

unint64_t sub_2189E03CC()
{
  result = qword_280EC8F68;
  if (!qword_280EC8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8F68);
  }

  return result;
}

uint64_t sub_2189E0420()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2189E0494@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E0998(0, &qword_27CC0C3E0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E0944();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189E06E8(void *a1)
{
  sub_2189E0998(0, &qword_27CC0C3F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E0944();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2189E09FC();
  sub_219BF7834();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2189E089C(uint64_t a1)
{
  v2 = sub_2189E0944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189E08D8(uint64_t a1)
{
  v2 = sub_2189E0944();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2189E0944()
{
  result = qword_27CC0C3E8;
  if (!qword_27CC0C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C3E8);
  }

  return result;
}

void sub_2189E0998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189E0944();
    v7 = a3(a1, &type metadata for RecipeListRecipeBoxFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189E09FC()
{
  result = qword_27CC0C3F8;
  if (!qword_27CC0C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C3F8);
  }

  return result;
}

unint64_t sub_2189E0A64()
{
  result = qword_27CC0C400;
  if (!qword_27CC0C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C400);
  }

  return result;
}

unint64_t sub_2189E0ABC()
{
  result = qword_27CC0C408;
  if (!qword_27CC0C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C408);
  }

  return result;
}

unint64_t sub_2189E0B14()
{
  result = qword_27CC0C410;
  if (!qword_27CC0C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C410);
  }

  return result;
}

uint64_t type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter()
{
  result = qword_27CC0C418;
  if (!qword_27CC0C418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189E0BDC()
{
  sub_2187015C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_2189E0C90@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2189E0C9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2189E0D44(a1, a2);
}

uint64_t sub_2189E0D44(uint64_t a1, uint64_t a2)
{
  v3[191] = v2;
  v3[185] = a2;
  v3[179] = a1;
  v4 = sub_219BDBD64();
  v3[197] = v4;
  v3[203] = *(v4 - 8);
  v3[209] = swift_task_alloc();
  type metadata accessor for RecipeBoxFeedGroup();
  v3[215] = swift_task_alloc();
  v5 = *(type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter() - 8);
  v3[221] = v5;
  v3[227] = *(v5 + 64);
  v3[233] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2189E0E98, 0, 0);
}

uint64_t sub_2189E0E98()
{
  v1 = v0[233];
  v2 = v0[221];
  v3 = v0[185];
  sub_2189E3564(v0[191], v1, type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[239] = v5;
  *(v5 + 16) = v3;
  sub_2189E2300(v1, v5 + v4);

  v0[240] = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  swift_asyncLet_begin();

  type metadata accessor for RecipeBoxFeedPool.SavedRecipes();
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 167, sub_2189E0FE8, v0 + 162);
}

uint64_t sub_2189E0FE8()
{
  v1[241] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2189E167C, 0, 0);
  }

  else
  {
    v1[242] = v1[167];

    return MEMORY[0x282200930](v1 + 82, v1 + 173, sub_2189E1098, v1 + 180);
  }
}

uint64_t sub_2189E1098()
{
  *(v1 + 1944) = v0;
  if (v0)
  {
    v2 = sub_2189E1798;
  }

  else
  {
    v2 = sub_2189E10CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2189E10CC()
{
  v1 = *(v0[173] + 16);
  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[242];
    v3 = v0[215];
    v4 = v0[209];
    v5 = v0[203];
    v6 = v0[197];
    v7 = v0[179];

    sub_219BDBD54();
    v8 = sub_219BDBD44();
    v10 = v9;
    (*(v5 + 8))(v4, v6);
    v11 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
    v12 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
    v13 = *(v12 + 20);
    v14 = sub_219BED8D4();
    (*(*(v14 - 8) + 16))(v3 + v13, v2 + v11, v14);

    *v3 = v8;
    v3[1] = v10;
    *(v3 + *(v12 + 24)) = v1;
    sub_2189E3564(v3, v7, type metadata accessor for RecipeBoxFeedGroup);

    return MEMORY[0x282200930](v0 + 2, v0 + 167, sub_2189E1444, v0 + 198);
  }

  v15 = sub_219BEEDD4();
  sub_21870170C(&qword_280E917E0, MEMORY[0x277D32430]);
  v0[244] = swift_allocError();
  (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D323A8], v15);
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 82, v0 + 173, sub_2189E1348, v0 + 228);
}

uint64_t sub_2189E13A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E1444()
{
  *(v1 + 1960) = v0;
  if (v0)
  {
    v2 = sub_2189E1900;
  }

  else
  {
    sub_2189E33B4();
    *(v1 + 1968) = *(v3 + 48);
    v2 = sub_2189E14CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2189E14CC()
{
  v1 = *(v0 + 1720);
  v2 = (*(v0 + 1432) + *(v0 + 1968));
  v3 = *(v0 + 1336);
  v2[3] = *(v0 + 1920);
  *v2 = v3;

  sub_2189E35CC(v1, type metadata accessor for RecipeBoxFeedGroup);
  sub_2189E3424();
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x282200920](v0 + 656, v0 + 1384, sub_2189E1588, v0 + 1728);
}

uint64_t sub_2189E15E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E16F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E1798()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1384, sub_2189E1804, v0 + 1488);
}

uint64_t sub_2189E185C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E1900()
{
  v1 = *(v0 + 1432);
  sub_2189E35CC(*(v0 + 1720), type metadata accessor for RecipeBoxFeedGroup);
  sub_2189E35CC(v1, type metadata accessor for RecipeBoxFeedGroup);

  return MEMORY[0x282200920](v0 + 656, v0 + 1384, sub_2189E1994, v0 + 1632);
}

uint64_t sub_2189E19EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E1A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2187608D4;

  return MEMORY[0x28218FC58](a1, a2, a3, a4, a5);
}

uint64_t sub_2189E1B5C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_2189E1B94@<X0>(uint64_t a1@<X8>)
{
  sub_2187015C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2189E1BFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  a2[4] = sub_21870170C(&qword_27CC0C478, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  a2[5] = sub_21870170C(&qword_27CC0C480, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2189E3564(v2 + v4, boxed_opaque_existential_1, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
}

uint64_t sub_2189E1CD0()
{
  sub_2187015C4();

  return sub_219BEDCA4();
}

uint64_t sub_2189E1CFC@<X0>(uint64_t *a1@<X8>)
{
  sub_2186ECB3C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2187015C4();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2189E35CC(inited + 32, sub_2188317B0);
  sub_2189E362C(0);
  a1[3] = v5;
  a1[4] = sub_21870170C(&qword_27CC0C490, sub_2189E362C);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2189E1E80()
{
  sub_21870170C(&qword_27CC0C438, type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2189E2054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2189E2078, 0, 0);
}

uint64_t sub_2189E2078()
{
  v1 = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_2189E2160;
  v4 = *(v0 + 16);

  return MEMORY[0x282190858](v4, v1, &unk_219C11508, v2, v1);
}

uint64_t sub_2189E2160()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2189E229C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2189E229C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E2300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189E2364(uint64_t a1)
{
  v4 = *(type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_2189E2054(a1, v6, v1 + v5);
}

uint64_t sub_2189E2448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186ECB3C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186ECB3C(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  v3[7] = swift_task_alloc();
  sub_2186ECB3C(0, &qword_27CC0C468, sub_2187148B8, v4);
  v3[8] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_2186F97D4(0);
  v3[12] = swift_task_alloc();
  v6 = sub_219BEF554();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData();
  v3[17] = swift_task_alloc();
  v7 = sub_219BED8D4();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2189E2758, 0, 0);
}

uint64_t sub_2189E2758()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v22 = v0[5];
  v4 = v0[3];
  v21 = v0[6];
  v5 = type metadata accessor for RecipeListRecipeBoxFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((v4 + *(v5 + 24)), *(v4 + *(v5 + 24) + 24));
  sub_2187015C4();
  sub_219BEDD14();
  sub_219BEDCC4();
  sub_219BEDCC4();
  v6 = sub_219BEE5D4();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_2189E3564(v4 + *(v5 + 20), v3, type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs);
  sub_2187148B8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 32))(v2, v3, v7);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = sub_219BF35D4();
  (*(*(v10 - 8) + 56))(v21, 1, 1, v10);
  sub_2187018A8(0, &qword_27CC0C470, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v11 = sub_219BF2774();
  (*(*(v11 - 8) + 56))(v22, 1, 1, v11);
  v12 = qword_280E8D7B8;
  *MEMORY[0x277D30B80];
  if (v12 != -1)
  {
    swift_once();
  }

  qword_280F616E8;
  sub_219BF2A84();
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_2189E2B04;
  v14 = v0[21];
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v18 = v0[12];
  v19 = MEMORY[0x277D84F90];

  return sub_218F0A5B4(v14, v15, 0x657069636572, 0xE600000000000000, v16, v17, v19, v18);
}

uint64_t sub_2189E2B04()
{
  v14 = *(*v1 + 136);
  v13 = *(*v1 + 128);
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v8 = *(*v1 + 72);
  *(*v1 + 184) = v0;

  (*(v7 + 8))(v6, v8);
  sub_2189E35CC(v5, sub_2186F97D4);
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v13, v4);
  v10 = sub_219BF1934();
  (*(*(v10 - 8) + 8))(v14, v10);
  if (v0)
  {
    v11 = sub_2189E2EF0;
  }

  else
  {
    v11 = sub_2189E2D90;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2189E2D90()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[2];
  v4 = *(v0[19] + 32);
  v4(v1, v0[21], v2);
  type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v5 = swift_allocObject();
  v4(v5 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v1, v2);
  *v3 = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_2189E2EF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E2FDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_2189E2FFC, 0, 0);
}

uint64_t sub_2189E2FFC()
{
  sub_219BEF164();
  v1 = *(v0[2] + 16);
  v0[5] = v1;

  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = type metadata accessor for RecipeBoxFeedPool.SavedRecipes();
  v4 = sub_2186CFDE4(0, &qword_280E8B580);
  *v2 = v0;
  v2[1] = sub_2189E313C;
  v5 = v0[3];
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v1, v3, v4, v6);
}

uint64_t sub_2189E313C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2189E32B4;
  }

  else
  {
    v2 = sub_2189E3250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2189E3250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E32B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189E3318(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2189E2FDC(a1, v1);
}

void sub_2189E33B4()
{
  if (!qword_27CC0C450)
  {
    type metadata accessor for RecipeBoxFeedGroup();
    sub_21880702C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C450);
    }
  }
}

void sub_2189E3424()
{
  if (!qword_27CC0C458)
  {
    type metadata accessor for RecipeBoxFeedGroup();
    sub_21870170C(&qword_27CC0C460, type metadata accessor for RecipeBoxFeedGroup);
    v0 = sub_219BEF1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C458);
    }
  }
}

uint64_t sub_2189E34B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_2189E2448(a1, v5, v4);
}

uint64_t sub_2189E3564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189E35CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189E3688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189E3D60();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187148B8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E3DB8(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for RecipeBoxFeedServiceConfig();
    sub_21871462C(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
    sub_219BEE974();
    sub_2189E3E1C(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189E3E1C(v6);
    }
  }

  else
  {
    sub_2189E3E1C(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2189E38CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189E3D60();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E3ECC(0, &qword_27CC0C498, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E3E78();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2187148B8(0);
    sub_21871462C(&qword_27CC0C4A8, sub_2187148B8);
    sub_219BF7674();
    sub_2189E3688(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189E3ABC(uint64_t a1)
{
  v2 = sub_2189E3E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189E3AF8(uint64_t a1)
{
  v2 = sub_2189E3E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189E3B4C(void *a1)
{
  sub_2189E3ECC(0, &qword_27CC0C4B0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E3E78();
  sub_219BF7B44();
  sub_2187148B8(0);
  sub_21871462C(&qword_27CC0C4B8, sub_2187148B8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2189E3CD4()
{
  type metadata accessor for RecipeBoxFeedServiceConfig();
  sub_21871462C(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);

  return sub_219BEE9F4();
}

void sub_2189E3D60()
{
  if (!qword_27CC0C468)
  {
    sub_2187148B8(255);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C468);
    }
  }
}

uint64_t sub_2189E3DB8(uint64_t a1, uint64_t a2)
{
  sub_2189E3D60();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189E3E1C(uint64_t a1)
{
  sub_2189E3D60();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2189E3E78()
{
  result = qword_27CC0C4A0;
  if (!qword_27CC0C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C4A0);
  }

  return result;
}

void sub_2189E3ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189E3E78();
    v7 = a3(a1, &type metadata for RecipeListRecipeBoxFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189E3F44()
{
  result = qword_27CC0C4C0;
  if (!qword_27CC0C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C4C0);
  }

  return result;
}

unint64_t sub_2189E3F9C()
{
  result = qword_27CC0C4C8;
  if (!qword_27CC0C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C4C8);
  }

  return result;
}

unint64_t sub_2189E3FF4()
{
  result = qword_27CC0C4D0;
  if (!qword_27CC0C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C4D0);
  }

  return result;
}

uint64_t sub_2189E4118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_219BED8D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2189E41B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_2189E4D1C(0);
  v31 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED8D4();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E4E64(0, &qword_27CC0C518, MEMORY[0x277D844C8]);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E4D50();
  v35 = v10;
  v14 = v36;
  sub_219BF7B34();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v7;
  v27 = v13;
  v16 = v32;
  v17 = v5;
  v40 = 0;
  v18 = sub_219BF76F4();
  v20 = v19;
  v21 = v27;
  *v27 = v18;
  v21[1] = v19;
  v39 = 1;
  sub_2189E4BA4(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  v36 = v20;
  (*(v16 + 32))(v27 + *(v11 + 20), v15, v17);
  v38 = 2;
  sub_2189E4BA4(&qword_27CC0C528, sub_2189E4D1C);
  v23 = v30;
  v22 = v31;
  v26 = 0;
  sub_219BF7734();
  sub_219BE3384();
  (*(v28 + 8))(v23, v22);
  (*(v33 + 8))(v35, v34);
  v24 = v27;
  *(v27 + *(v11 + 24)) = v37;
  sub_2189E4DA4(v24, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2189E4E08(v24);
}

uint64_t sub_2189E4684(void *a1)
{
  v2 = v1;
  sub_2189E4D1C(0);
  v5 = v4;
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E4E64(0, &qword_27CC0C530, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189E4D50();
  sub_219BF7B44();
  v24 = 0;
  v13 = v20;
  sub_219BF77F4();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v20 = v10;
  v18 = v7;
  v15 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  v23 = 1;
  sub_219BED8D4();
  sub_2189E4BA4(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  v21 = *(v2 + *(v15 + 24));
  sub_218799754(0);
  sub_2189E4BA4(&qword_280E8EB10, sub_218799754);

  v16 = v18;
  sub_219BE33E4();
  v22 = 2;
  sub_2189E4BA4(&qword_27CC0C538, sub_2189E4D1C);
  sub_219BF7834();
  v17 = v20;
  (*(v19 + 8))(v16, v5);
  return (*(v17 + 8))(v12, v9);
}

uint64_t sub_2189E4A1C(uint64_t a1)
{
  v2 = sub_2189E4BA4(&qword_27CC0C4D8, type metadata accessor for RecipeListRecipeBoxFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2189E4AF8(void *a1)
{
  a1[1] = sub_2189E4BA4(&qword_27CC0C4D8, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  a1[2] = sub_2189E4BA4(&qword_27CC0C4E0, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  result = sub_2189E4BA4(&qword_27CC0C4E8, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_2189E4BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189E4CC4(uint64_t a1)
{
  result = sub_2189E4BA4(&qword_27CC0C508, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2189E4D50()
{
  result = qword_27CC0C520;
  if (!qword_27CC0C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C520);
  }

  return result;
}

uint64_t sub_2189E4DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189E4E08(uint64_t a1)
{
  v2 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189E4E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189E4D50();
    v7 = a3(a1, &type metadata for RecipeListRecipeBoxFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2189E4ED8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x724774616D726F66;
  v4 = 0xEB0000000070756FLL;
  if (v2 != 1)
  {
    v3 = 0x73657069636572;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x724774616D726F66;
  v8 = 0xEB0000000070756FLL;
  if (*a2 != 1)
  {
    v7 = 0x73657069636572;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2189E4FEC()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2189E509C()
{
  sub_219BF5524();
}

uint64_t sub_2189E5138()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2189E51E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2189E5490();
  *a1 = result;
  return result;
}

void sub_2189E5214(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xEB0000000070756FLL;
  v5 = 0x724774616D726F66;
  if (v2 != 1)
  {
    v5 = 0x73657069636572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2189E5280()
{
  v1 = 0x724774616D726F66;
  if (*v0 != 1)
  {
    v1 = 0x73657069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2189E52E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2189E5490();
  *a1 = result;
  return result;
}

uint64_t sub_2189E5310(uint64_t a1)
{
  v2 = sub_2189E4D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189E534C(uint64_t a1)
{
  v2 = sub_2189E4D50();

  return MEMORY[0x2821FE720](a1, v2);
}