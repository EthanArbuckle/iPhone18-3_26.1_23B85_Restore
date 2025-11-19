void sub_1C471D870()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBC74();
  sub_1C43FD2C8(v10);
  v243 = sub_1C4EFDE88();
  v11 = sub_1C43FCDF8(v243);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v221 - v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v221 - v22;
  v24 = sub_1C4EFDE68();
  v25 = sub_1C43FBD18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v28);
  v246 = sub_1C4EFDE98();
  v29 = sub_1C43FCDF8(v246);
  v253 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v249 = v34;
  v35 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  sub_1C43FBD18(v35);
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v221 - v39;
  v41 = MEMORY[0x1E69E7CC0];
  v268 = MEMORY[0x1E69E7CC0];
  v269 = sub_1C4EFF048();
  *&v270 = v42;
  v43 = sub_1C4F01438();
  v257 = v44;
  v245 = v3;
  v45 = v3[15];
  v254 = v5;
  v258[2] = v5;
  LODWORD(v230) = sub_1C479B59C(sub_1C47236D0, v258, v45);
  if (v230)
  {
    v46 = v23;
    objc_opt_self();
    sub_1C4418370();
    v47 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = sub_1C444B0E8(v47, sel_featureValueWithInt64_);
    sub_1C4414A14();
    v51 = *(v49 + 16);
    v50 = *(v49 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_1C4413090(v50);
      sub_1C458B504();
    }

    sub_1C43FBDF0();
    *(v52 + 16) = v51 + 1;
    v53 = (v52 + 40 * v51);
    v53[4] = 0xD000000000000012;
    v53[5] = v54;
    v55 = v257;
    v53[6] = v43;
    v53[7] = v55;
    v53[8] = v48;
    v268 = v52;
    v23 = v46;
  }

  v267[2] = v41;
  v267[3] = v41;
  v267[0] = 0;
  v267[1] = 0;
  v265 = 0;
  v266 = 0;
  v264 = 0;
  v263 = 0;
  v262[1] = 0;
  v262[0] = 0;
  type metadata accessor for GraphTriple(0);
  v261 = 0;
  v260 = 0;
  sub_1C43FCF64();
  sub_1C440BAA8(v56, v57, v58, v59);
  v259 = 0;
  v248 = *(v1 + 16);
  v60 = sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v61 = sub_1C4EFF0C8();
  sub_1C43FCDF8(v61);
  v63 = v62;
  v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v66 = v65 + *(v64 + 72);
  v224 = *(v62 + 80);
  v227 = v60;
  v223 = v66;
  v67 = swift_allocObject();
  v247 = xmmword_1C4F0D130;
  *(v67 + 16) = xmmword_1C4F0D130;
  v68 = *(v63 + 16);
  v225 = v65;
  v228 = v61;
  v226 = (v63 + 16);
  v222 = v68;
  v68(v67 + v65, v254, v61);
  sub_1C4D51ABC();
  v234 = v69;
  v70 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v71 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v71);
  v256 = v43;
  v241 = v40;
  v73 = *(v72 + 72);
  v75 = *(v74 + 80);
  v244 = v1;
  v76 = (v75 + 32) & ~v75;
  v229 = v73;
  v242 = v75;
  v235 = v70;
  v232 = v76 + v73;
  *(swift_allocObject() + 16) = v247;
  v240 = v76;
  sub_1C4EFEA18();
  sub_1C4597A90();
  v233 = v77;
  LODWORD(v65) = *MEMORY[0x1E69A95C0];
  v78 = *(v13 + 104);
  v79 = v243;
  (v78)(v23, *MEMORY[0x1E69A95C0], v243);
  sub_1C440BC84(&v271 + 8);
  sub_1C4422A88();
  v78();
  sub_1C4422A88();
  v78();
  sub_1C4410278(v272);
  sub_1C4422A88();
  v78();
  v80 = v23;
  v81 = v255;
  v237 = v65;
  sub_1C4422A88();
  v236 = v78;
  v238 = v13 + 104;
  v78();
  v218 = v81;
  v219 = 0;
  sub_1C44141C8();
  sub_1C44623AC();

  v82 = *(v13 + 8);
  (v82)(v81, v79);
  v83 = sub_1C4402B58();
  v82(v83);
  v239 = v19;
  (v82)(v19, v79);
  v84 = sub_1C44057DC();
  v82(v84);
  v85 = sub_1C4414550();
  v234 = v13 + 8;
  v82(v85);
  v86 = v249;
  sub_1C4EFDEA8();
  v87 = sub_1C4EFD678();
  v88 = v252;
  sub_1C43FCF64();
  v92 = sub_1C440BAA8(v89, v90, v91, v87);
  MEMORY[0x1EEE9AC00](v92);
  *(&v221 - 6) = &v259;
  *(&v221 - 5) = &v268;
  v217 = v244;
  v218 = v256;
  v219 = v257;
  v220 = v245;
  sub_1C444C238(v86, v88, sub_1C47236F0, (&v221 - 8));
  sub_1C4420C3C(v88, &unk_1EC0C07E0, &unk_1C4F168F0);
  v93 = v253 + 8;
  v94 = *(v253 + 8);
  v94(v86, v246);
  if (v259 == 1)
  {
    v95 = v241;
    v96 = v256;
    v97 = [objc_opt_self() featureValueWithInt64_];
    v98 = v268;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v211 = *(v98 + 16);
      sub_1C43FCEC0();
      sub_1C458B504();
      v98 = v212;
    }

    v99 = v257;
    v101 = *(v98 + 16);
    v100 = *(v98 + 24);
    if (v101 >= v100 >> 1)
    {
      sub_1C4413090(v100);
      sub_1C458B504();
      v98 = v213;
    }

    *(v98 + 16) = v101 + 1;
    sub_1C4409C0C(v98 + 40 * v101);
    v102[6] = v96;
    v102[7] = v99;
    v102[8] = v97;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v95, &unk_1EC0BC900, &unk_1C4F142D0);
  }

  else
  {
    v103 = swift_allocObject();
    v253 = v93;
    v104 = sub_1C443FBE0(v103);
    v222(v105 + v225, v254, v228, v104);
    sub_1C4D51ABC();
    v228 = v94;
    v227 = v106;
    sub_1C441DCCC();
    *(swift_allocObject() + 16) = xmmword_1C4F23100;
    v233 = v87;
    sub_1C4EFE3D8();
    sub_1C4EFE3A8();
    sub_1C4EFE318();
    sub_1C4EFE2C8();
    sub_1C4EFEBF8();
    sub_1C4EFEE68();
    sub_1C4EFEAC8();
    sub_1C4EFE3D8();
    sub_1C4EFE788();
    sub_1C4597A90();
    v229 = v107;
    v108 = v237;
    v109 = v236;
    (v236)(v80, v237, v79);
    v110 = sub_1C440BC84(&v271 + 8);
    (v109)(v110, v108, v79);
    (v109)(v239, v108, v79);
    v111 = sub_1C4410278(v272);
    (v109)(v111, v108, v79);
    sub_1C4422A7C(v274);
    sub_1C447F008();
    v109();
    v218 = v108;
    v219 = 0;
    sub_1C44141C8();
    sub_1C44623AC();

    (v82)(v108, v79);
    v112 = sub_1C4402B58();
    v82(v112);
    v113 = sub_1C4414550();
    v82(v113);
    v114 = sub_1C44057DC();
    v82(v114);
    v231 = v80;
    (v82)(v80, v79);
    v115 = v249;
    sub_1C4EFDEA8();
    v116 = v252;
    sub_1C43FCF64();
    v120 = sub_1C440BAA8(v117, v118, v119, v233);
    MEMORY[0x1EEE9AC00](v120);
    v121 = v241;
    *(&v221 - 12) = v241;
    *(&v221 - 11) = &v263;
    *(&v221 - 10) = v262;
    *(&v221 - 9) = v267;
    *(&v221 - 8) = &v265;
    *(&v221 - 7) = &v268;
    v122 = v256;
    v123 = v257;
    *(&v221 - 6) = v256;
    *(&v221 - 5) = v123;
    v220 = &v260;
    sub_1C444C238(v115, v116, sub_1C4723700, (&v221 - 14));
    sub_1C4420C3C(v116, &unk_1EC0C07E0, &unk_1C4F168F0);
    v228(v115, v246);
    v124 = v261;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44057DC();
    v125 = v245;
    sub_1C4721DF8();
    v126 = &v268;
    sub_1C49D3A70(v127);
    sub_1C4722278();
    sub_1C49D3A70(v128);
    v219 = v125;
    v230 = v266;
    v217 = v265;
    v218 = v266;
    v129 = sub_1C44057DC();
    v229 = v130;
    v227 = v131;
    v244 = v132;
    v137 = sub_1C4720C44(v129, v133, v134, v130, v135, v131, v136, v132, v217, v218, v219);
    sub_1C49D3A70(v137);
    v138 = *v125;
    if (*v125)
    {
      v225 = v124;
      v226 = v82;
      v139 = *(v125 + 72);
      v140 = *(v125 + 80);
      v270 = *(v125 + 8);
      v271 = *(v125 + 24);
      v272[0] = *(v125 + 40);
      v272[1] = *(v125 + 56);
      v269 = v138;
      v273 = v139;
      v274[0] = v140;
      v141 = v254;
      sub_1C483644C();
      v143 = v142;
      v144 = objc_opt_self();
      v224 = v139;
      if (v143)
      {
        v145 = [v144 featureValueWithInt64_];
      }

      else
      {
        v145 = [v144 featureValueWithInt64_];
      }

      v146 = v145;
      v147 = v268;
      sub_1C4418370();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v214 = *(v147 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v147 = v215;
      }

      v149 = *(v147 + 16);
      v148 = *(v147 + 24);
      if (v149 >= v148 >> 1)
      {
        sub_1C43FCFE8(v148);
        sub_1C458B504();
        v147 = v216;
      }

      *(v147 + 16) = v149 + 1;
      sub_1C4409C0C(v147 + 40 * v149);
      v150 = v257;
      v151[6] = v122;
      v151[7] = v150;
      v151[8] = v146;
      v268 = v147;
      v152 = sub_1C44E5514(v141, v140);
      v153 = v243;
      if (v152)
      {
        v154 = v152;
        v155 = *(v152 + 16);
        if (v155)
        {
          v126 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
          v245 = v154;
          v156 = (v154 + 40);
          sub_1C4418370();
          do
          {
            v157 = *(v156 - 1);
            v158 = *v156;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v159 = sub_1C4594E18();
            v161 = *(v147 + 16);
            v160 = *(v147 + 24);
            if (v161 >= v160 >> 1)
            {
              sub_1C43FCFE8(v160);
              sub_1C458B504();
              v147 = v164;
            }

            *(v147 + 16) = v161 + 1;
            v162 = (v147 + 40 * v161);
            v162[4] = 0xD00000000000001DLL;
            v162[5] = 0x80000001C4F94F10;
            v163 = v257;
            v162[6] = v122;
            v162[7] = v163;
            v162[8] = v159;
            v156 += 2;
            --v155;
          }

          while (v155);

          v268 = v147;
          v153 = v243;
          v141 = v254;
        }

        else
        {
        }
      }

      if (sub_1C44E5514(v141, v224))
      {
        sub_1C471FCF4();
        v166 = v165;

        v126 = &v268;
        sub_1C49D3A70(v166);
      }

      else
      {
        sub_1C4418370();
      }

      v167 = v236;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459740C();
      v254 = v168;
      v169 = swift_allocObject();
      sub_1C443FBE0(v169);
      sub_1C4EFE418();
      sub_1C4597A90();
      sub_1C43FEF2C();
      sub_1C44236A4();
      v167();
      v170 = v250;
      sub_1C44236A4();
      v167();
      sub_1C4410278(&v264);
      sub_1C44236A4();
      v167();
      v171 = v251;
      sub_1C44236A4();
      v167();
      v172 = v255;
      sub_1C44236A4();
      v167();
      v218 = v172;
      v219 = v126;
      v173 = v254;
      v217 = v254;
      sub_1C43FEAF8();
      v174 = v170;
      sub_1C4EFDE58();

      v175 = v226;
      (v226)(v172, v153);
      (v175)(v171, v153);
      v176 = sub_1C4402B58();
      v175(v176);
      (v175)(v174, v153);
      (v175)(v231, v153);
      sub_1C4EFDEA8();
      sub_1C440BC84(v272 + 8);
      sub_1C43FCF64();
      v180 = sub_1C440BAA8(v177, v178, v179, v233);
      MEMORY[0x1EEE9AC00](v180);
      sub_1C4441908();
      *(v181 - 32) = v182;
      *(v181 - 24) = &v268;
      v183 = v257;
      *(v181 - 16) = v256;
      *(v181 - 8) = v183;
      v184 = sub_1C440CAF0();
      sub_1C444C238(v184, v185, v186, v187);
      sub_1C4420C3C(v173, &unk_1EC0C07E0, &unk_1C4F168F0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459740C();
      v254 = v188;
      sub_1C441DCCC();
      v189 = swift_allocObject();
      sub_1C443FBE0(v189);
      sub_1C4EFE418();
      sub_1C4597A90();
      *&v247 = v190;
      sub_1C447F008();
      v191 = v236;
      v236();
      sub_1C440BC84(&v271 + 8);
      sub_1C447F008();
      v191();
      v192 = v239;
      sub_1C447F008();
      v191();
      sub_1C4410278(v272);
      sub_1C447F008();
      v191();
      v193 = v255;
      sub_1C447F008();
      v191();
      v218 = v193;
      v219 = v247;
      v217 = v254;
      v194 = v231;
      sub_1C43FEAF8();
      sub_1C44623AC();

      (v175)(v255, v153);
      v195 = sub_1C4402B58();
      v175(v195);
      (v175)(v192, v153);
      v196 = sub_1C44057DC();
      v175(v196);
      (v175)(v194, v153);
      sub_1C441B388(&v251);
      sub_1C4EFDEA8();
      sub_1C440BC84(v272 + 8);
      sub_1C43FCF64();
      v200 = sub_1C440BAA8(v197, v198, v199, v233);
      MEMORY[0x1EEE9AC00](v200);
      sub_1C4441908();
      *(v201 - 32) = v202;
      *(v201 - 24) = &v268;
      v203 = v257;
      *(v201 - 16) = v256;
      *(v201 - 8) = v203;
      v204 = sub_1C43FBEF8();
      sub_1C444C238(v204, v205, v206, v207);

      sub_1C4420C3C(v173, &unk_1EC0C07E0, &unk_1C4F168F0);
      v208 = v153;
      v209 = v246;
      v210 = v228;
      v228(v208, v246);
      v210(v249, v209);
      v121 = v241;
    }

    else
    {
      sub_1C4418370();
      swift_bridgeObjectRelease_n();
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v121, &unk_1EC0BC900, &unk_1C4F142D0);
  }

  sub_1C43FE9F0();
}

void sub_1C471EDFC(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32[1] = a6;
  v32[2] = a7;
  v32[0] = a5;
  v32[3] = a3;
  v35 = a2;
  v8 = sub_1C4EFEEF8();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GraphTriple(0);
  v11 = *(v33 + 44);
  v38 = a1;
  v12 = (a1 + v11);
  v13 = *v12;
  v14 = v12[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = objc_autoreleasePoolPush();
  v41 = v13;
  v42 = v14;
  v39 = 30;
  v40 = 0xE100000000000000;
  sub_1C4415EA8();
  v16 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v15);
  v17 = (v16 + 40);
  v18 = -*(v16 + 16);
  v19 = -1;
  do
  {
    v20 = v18 + v19;
    if (v18 + v19 == -1)
    {
      break;
    }

    if (++v19 >= *(v16 + 16))
    {
      __break(1u);
      return;
    }

    v22 = *(v17 - 1);
    v21 = *v17;
    v23 = qword_1EDDFBC98;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v23 != -1)
    {
      swift_once();
    }

    v17 += 2;
    v24 = type metadata accessor for SourceIdPrefix();
    v25 = sub_1C442B738(v24, qword_1EDE2DD40);
    v27 = *v25;
    v26 = v25[1];
    v41 = v27;
    v42 = v26;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](58, 0xE100000000000000);
    v28 = sub_1C4F013E8();
  }

  while ((v28 & 1) != 0);

  v29 = v34;
  *v35 = v20 == -1;
  v30 = *(v33 + 28);
  sub_1C4EFE518();
  LOBYTE(v30) = sub_1C44DBB50(v38 + v30, v29);
  (*(v36 + 8))(v29, v37);
  if (v30)
  {
    sub_1C47217E4();
    sub_1C49D3A70(v31);
  }
}

uint64_t sub_1C471F088(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, char a12, void *a13)
{
  v76 = a7;
  v77 = a8;
  v78 = a6;
  v79 = a5;
  v80 = a4;
  v81 = a3;
  v15 = sub_1C4EFEEF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  v23 = type metadata accessor for GraphTriple(0);
  (*(v16 + 16))(v22, a1 + *(v23 + 20), v15);
  sub_1C4EFE3D8();
  sub_1C450229C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
  v24 = sub_1C4F010B8();
  v25 = *(v16 + 8);
  v25(v19, v15);
  if (v24)
  {
    v25(v22, v15);
    sub_1C4420C3C(a2, &unk_1EC0BC900, &unk_1C4F142D0);
    sub_1C4709E74(a1, a2);
    sub_1C440BAA8(a2, 0, 1, v23);
    return 1;
  }

  v26 = v23;
  v75 = a1;
  sub_1C4EFE3A8();
  v27 = sub_1C4F010B8();
  v25(v19, v15);
  if (v27)
  {
    v25(v22, v15);
    v28 = (v75 + *(v23 + 32));
    v30 = *v28;
    v29 = v28[1];
    v31 = v81;
LABEL_11:
    v38 = v31[1];
    *v31 = v30;
    v31[1] = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return 1;
  }

  sub_1C4EFEBF8();
  v32 = sub_1C4F010B8();
  v25(v19, v15);
  if (v32)
  {
    v25(v22, v15);
    v33 = (v75 + *(v26 + 32));
    v30 = *v33;
    v29 = v33[1];
    v31 = v80;
    goto LABEL_11;
  }

  sub_1C4EFEE68();
  v34 = sub_1C4F010B8();
  v25(v19, v15);
  if (v34)
  {
    v25(v22, v15);
    v35 = (v75 + *(v26 + 32));
    v30 = *v35;
    v29 = v35[1];
    v31 = v79;
    goto LABEL_11;
  }

  sub_1C4EFE2C8();
  v36 = sub_1C4F010B8();
  v25(v19, v15);
  if (v36)
  {
    v25(v22, v15);
    v37 = (v75 + *(v26 + 32));
    v30 = *v37;
    v29 = v37[1];
    v31 = v78;
    goto LABEL_11;
  }

  sub_1C4EFE318();
  v40 = sub_1C4F010B8();
  v25(v19, v15);
  if (v40)
  {
    v25(v22, v15);
    v41 = [objc_opt_self() featureValueWithInt64_];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v42 = v76;
    sub_1C4588E20();
    v43 = *(*v42 + 16);
    sub_1C4589A10();
    v44 = *v42;
    *(v44 + 16) = v43 + 1;
    v45 = (v44 + 40 * v43);
    v45[4] = 0x69726F7661467369;
    v45[5] = 0xEA00000000006574;
LABEL_15:
    v45[6] = v77;
    v45[7] = a9;
    v45[8] = v41;
    return 1;
  }

  sub_1C4EFEAC8();
  v46 = sub_1C4F010B8();
  v25(v19, v15);
  if (v46)
  {
    v25(v22, v15);
    v47 = v75;
    v48 = (v75 + *(v26 + 32));
    v49 = *v48;
    v50 = v48[1];
    v51 = *MEMORY[0x1E695CB60];
    if (v49 == sub_1C4F01138() && v50 == v52)
    {
    }

    else
    {
      v54 = sub_1C4F02938();

      if ((v54 & 1) == 0)
      {
        v55 = *MEMORY[0x1E695CBD8];
        if (v49 == sub_1C4F01138() && v50 == v56)
        {
        }

        else
        {
          v58 = sub_1C4F02938();

          if ((v58 & 1) == 0)
          {
            return 1;
          }
        }

        v70 = *(v26 + 24);
        sub_1C4588F54();
        v71 = *(*a11 + 16);
        sub_1C4589B3C();
        v72 = *a11;
        *(v72 + 16) = v71 + 1;
        v73 = sub_1C4EFF8A8();
        (*(*(v73 - 8) + 16))(v72 + ((*(*(v73 - 8) + 80) + 32) & ~*(*(v73 - 8) + 80)) + *(*(v73 - 8) + 72) * v71, v75 + v70, v73);
        return 1;
      }
    }

    v66 = *(v26 + 24);
    sub_1C4588F54();
    v67 = *(*a10 + 16);
    sub_1C4589B3C();
    v68 = *a10;
    *(v68 + 16) = v67 + 1;
    v69 = sub_1C4EFF8A8();
    (*(*(v69 - 8) + 16))(v68 + ((*(*(v69 - 8) + 80) + 32) & ~*(*(v69 - 8) + 80)) + *(*(v69 - 8) + 72) * v67, v47 + v66, v69);
    return 1;
  }

  sub_1C4EFE788();
  v59 = sub_1C4F010B8();
  v25(v19, v15);
  v25(v22, v15);
  if (v59 & 1) != 0 && (a12)
  {
    v60 = (v75 + *(v26 + 32));
    v61 = v60[1];
    v62 = a13[1];
    *a13 = *v60;
    a13[1] = v61;
    swift_bridgeObjectRetain_n();

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v41 = sub_1C4594E18();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v63 = v76;
    sub_1C4588E20();
    v64 = *(*v63 + 16);
    sub_1C4589A10();
    v65 = *v63;
    *(v65 + 16) = v64 + 1;
    v45 = (v65 + 40 * v64);
    v45[4] = 0xD000000000000016;
    v45[5] = 0x80000001C4F94F30;
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1C471F7EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30[-v12];
  v14 = sub_1C4EFF0C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v20 = *v19;
  v21 = v19[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    sub_1C4420C3C(v13, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v22 = (*(v15 + 32))(v18, v13, v14);
    v23 = *(a2 + 48);
    MEMORY[0x1EEE9AC00](v22);
    *&v30[-16] = v18;
    if (sub_1C479B59C(sub_1C4723B68, &v30[-32], v24))
    {
      v25 = [objc_opt_self() featureValueWithInt64_];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4588E20();
      v26 = *(*a3 + 16);
      sub_1C4589A10();
      v27 = *a3;
      *(v27 + 16) = v26 + 1;
      v28 = (v27 + 40 * v26);
      v28[4] = 0xD000000000000011;
      v28[5] = 0x80000001C4F88190;
      v28[6] = a4;
      v28[7] = a5;
      v28[8] = v25;
    }

    (*(v15 + 8))(v18, v14);
  }

  return 1;
}

uint64_t sub_1C471FA70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30[-v12];
  v14 = sub_1C4EFF0C8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v20 = *v19;
  v21 = v19[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    sub_1C4420C3C(v13, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v22 = (*(v15 + 32))(v18, v13, v14);
    v23 = *(a2 + 40);
    MEMORY[0x1EEE9AC00](v22);
    *&v30[-16] = v18;
    if (sub_1C479B59C(sub_1C4723B68, &v30[-32], v24))
    {
      v25 = [objc_opt_self() featureValueWithInt64_];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4588E20();
      v26 = *(*a3 + 16);
      sub_1C4589A10();
      v27 = *a3;
      *(v27 + 16) = v26 + 1;
      v28 = (v27 + 40 * v26);
      v28[4] = 0xD000000000000011;
      v28[5] = 0x80000001C4F882D0;
      v28[6] = a4;
      v28[7] = a5;
      v28[8] = v25;
    }

    (*(v15 + 8))(v18, v14);
  }

  return 1;
}

void sub_1C471FCF4()
{
  sub_1C43FBD3C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2;
    v5 = v1;
    v6 = v0;
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4461BB8(0, &qword_1EDDFA430, 0x1E695CD58);
    v7 = 0;
    v139 = *MEMORY[0x1E695C590];
    v138 = *MEMORY[0x1E695C658];
    v137 = *MEMORY[0x1E695C9C0];
    v136 = *MEMORY[0x1E695C9C8];
    v135 = *MEMORY[0x1E695C660];
    v134 = *MEMORY[0x1E695C9E0];
    v133 = *MEMORY[0x1E695CAA0];
    v132 = *MEMORY[0x1E695C848];
    v131 = *MEMORY[0x1E695C950];
    v130 = *MEMORY[0x1E695C768];
    v8 = (v4 + 40);
    v129 = *MEMORY[0x1E695C538];
    v128 = *MEMORY[0x1E695C970];
    v126 = *MEMORY[0x1E695C958];
    v127 = *MEMORY[0x1E695C540];
    v124 = *MEMORY[0x1E695C868];
    v125 = *MEMORY[0x1E695C4C0];
    v122 = *MEMORY[0x1E695C720];
    v123 = *MEMORY[0x1E695C870];
    v120 = *MEMORY[0x1E695CA30];
    v121 = *MEMORY[0x1E695C8F8];
    v118 = *MEMORY[0x1E695C5D8];
    v119 = *MEMORY[0x1E695C4C8];
    v116 = *MEMORY[0x1E695C7B0];
    v117 = *MEMORY[0x1E695C798];
    v114 = *MEMORY[0x1E695C800];
    v115 = *MEMORY[0x1E695C7F8];
    v112 = *MEMORY[0x1E695C780];
    v113 = *MEMORY[0x1E695C790];
    v110 = *MEMORY[0x1E695C898];
    v111 = *MEMORY[0x1E695C8C8];
    v9 = MEMORY[0x1E69E7CC0];
    v140 = v6;
    v141 = v5;
    do
    {
      v142 = v7;
      v143 = v8;
      v11 = *(v8 - 1);
      v10 = *v8;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C4594E18();
      v144 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = *(v9 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v9 = v103;
      }

      sub_1C4425098();
      if (v14)
      {
        sub_1C4405AF4(v13);
        sub_1C458B504();
        v9 = v104;
      }

      sub_1C441B8A0();
      v15[4] = 0xD000000000000014;
      v15[5] = 0x80000001C4F86050;
      v15[6] = v6;
      v15[7] = v5;
      v15[8] = v12;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F140B0;
      *(inited + 32) = 7237491;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = 0x7265746867756164;
      *(inited + 56) = 0xE800000000000000;
      *(inited + 64) = 0x646C696863;
      *(inited + 72) = 0xE500000000000000;
      *(inited + 80) = 0x6C2D6E692D6E6F73;
      *(inited + 88) = 0xEA00000000007761;
      *(inited + 96) = 0x7265746867756164;
      *(inited + 104) = 0xEF77616C2D6E692DLL;
      *(inited + 112) = sub_1C4F01138();
      *(inited + 120) = v17;
      *(inited + 128) = sub_1C4F01138();
      *(inited + 136) = v18;
      *(inited + 144) = sub_1C4F01138();
      *(inited + 152) = v19;
      *(inited + 160) = sub_1C4F01138();
      *(inited + 168) = v20;
      *(inited + 176) = sub_1C4F01138();
      *(inited + 184) = v21;
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1C4F17D00;
      *(v22 + 32) = 0x6573756F7073;
      *(v22 + 40) = 0xE600000000000000;
      *(v22 + 48) = 0x72656E74726170;
      *(v22 + 56) = 0xE700000000000000;
      *(v22 + 64) = 0x646E6162737568;
      *(v22 + 72) = 0xE700000000000000;
      *(v22 + 80) = 1701210487;
      *(v22 + 88) = 0xE400000000000000;
      *(v22 + 96) = 0x656972666C726967;
      *(v22 + 104) = 0xEA0000000000646ELL;
      *(v22 + 112) = 0x6E65697266796F62;
      *(v22 + 120) = 0xE900000000000064;
      *(v22 + 128) = sub_1C4F01138();
      *(v22 + 136) = v23;
      *(v22 + 144) = sub_1C4F01138();
      *(v22 + 152) = v24;
      *(v22 + 160) = sub_1C4F01138();
      *(v22 + 168) = v25;
      *(v22 + 176) = sub_1C4F01138();
      *(v22 + 184) = v26;
      *(v22 + 192) = sub_1C4F01138();
      *(v22 + 200) = v27;
      *(v22 + 208) = sub_1C4F01138();
      *(v22 + 216) = v28;
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_1C4F0F820;
      *(v29 + 32) = 0x726574736973;
      *(v29 + 40) = 0xE600000000000000;
      *(v29 + 48) = 0x726568746F7262;
      *(v29 + 56) = 0xE700000000000000;
      *(v29 + 64) = 0x676E696C626973;
      *(v29 + 72) = 0xE700000000000000;
      *(v29 + 80) = sub_1C4F01138();
      *(v29 + 88) = v30;
      *(v29 + 96) = sub_1C4F01138();
      *(v29 + 104) = v31;
      *(v29 + 112) = sub_1C4F01138();
      *(v29 + 120) = v32;
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_1C4F0D480;
      *(v33 + 32) = 0x726567616E616DLL;
      *(v33 + 40) = 0xE700000000000000;
      *(v33 + 48) = 0x6E61747369737361;
      *(v33 + 56) = 0xE900000000000074;
      *(v33 + 64) = sub_1C4F01138();
      *(v33 + 72) = v34;
      *(v33 + 80) = sub_1C4F01138();
      *(v33 + 88) = v35;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1C4F23110;
      *(v36 + 32) = 0x726568746F6DLL;
      *(v36 + 40) = 0xE600000000000000;
      *(v36 + 48) = 0x726568746166;
      *(v36 + 56) = 0xE600000000000000;
      *(v36 + 64) = 0x746E65726170;
      *(v36 + 72) = 0xE600000000000000;
      *(v36 + 80) = 0x656C636E75;
      *(v36 + 88) = 0xE500000000000000;
      *(v36 + 96) = 1953396065;
      *(v36 + 104) = 0xE400000000000000;
      *(v36 + 112) = 0x6E6973756F63;
      sub_1C44340D8();
      v38[15] = 0xE600000000000000;
      v38[16] = v37 | 0x7461666400000000;
      v38[17] = 0xEB00000000726568;
      v38[18] = 0x746F6D646E617267;
      v38[19] = 0xEB00000000726568;
      sub_1C44340D8();
      *(v40 + 160) = v39 | 0x7261706400000000;
      *(v40 + 168) = 0xEB00000000746E65;
      sub_1C44340D8();
      *(v42 + 176) = v41 | 0x6E6F736400000000;
      sub_1C44340D8();
      v44[23] = v45;
      v44[24] = v43 | 0x7561646400000000;
      v44[25] = 0xED00007265746867;
      sub_1C44340D8();
      v47[26] = v46 | 0x6968636400000000;
      v47[27] = 0xEA0000000000646CLL;
      v47[28] = 0x656365696ELL;
      v47[29] = v48;
      v47[30] = 0x77656870656ELL;
      v47[31] = 0xE600000000000000;
      *(v36 + 256) = sub_1C4F01F08();
      *(v36 + 264) = v49;
      *(v36 + 272) = sub_1C4F01138();
      *(v36 + 280) = v50;
      *(v36 + 288) = sub_1C4F01138();
      *(v36 + 296) = v51;
      *(v36 + 304) = sub_1C4F01138();
      *(v36 + 312) = v52;
      *(v36 + 320) = sub_1C4F01138();
      *(v36 + 328) = v53;
      *(v36 + 336) = sub_1C4F01138();
      *(v36 + 344) = v54;
      *(v36 + 352) = sub_1C4F01138();
      *(v36 + 360) = v55;
      *(v36 + 368) = sub_1C4F01138();
      *(v36 + 376) = v56;
      *(v36 + 384) = sub_1C4F01138();
      *(v36 + 392) = v57;
      *(v36 + 400) = sub_1C4F01138();
      *(v36 + 408) = v58;
      *(v36 + 416) = sub_1C4F01138();
      *(v36 + 424) = v59;
      *(v36 + 432) = sub_1C4F01138();
      *(v36 + 440) = v60;
      *(v36 + 448) = sub_1C4F01138();
      *(v36 + 456) = v61;
      *(v36 + 464) = sub_1C4F01138();
      *(v36 + 472) = v62;
      *(v36 + 480) = sub_1C4F01138();
      *(v36 + 488) = v63;
      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v64);
      sub_1C4403084();
      v7 = v142;
      v66 = sub_1C44CE068(sub_1C4579E44, v65, inited);

      if (v66)
      {
        objc_opt_self();
        v67 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v68 = sub_1C444B0E8(v67, sel_featureValueWithInt64_);
        v70 = *(v9 + 16);
        v69 = *(v9 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_1C43FCFE8(v69);
          sub_1C458B504();
          v9 = v105;
        }

        *(v9 + 16) = v70 + 1;
        v71 = (v9 + 40 * v70);
        v71[4] = 0x646C6968437369;
        v5 = v141;
        v71[5] = 0xE700000000000000;
        v71[6] = v140;
        v71[7] = v141;
        v71[8] = v68;
      }

      else
      {
        v5 = v141;
      }

      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v72);
      sub_1C4403084();
      v74 = sub_1C44CE068(sub_1C4579E44, v73, v22);

      if (v74)
      {
        objc_opt_self();
        v75 = sub_1C44305F8();
        v76 = sub_1C444B0E8(v75, sel_featureValueWithInt64_);
        v78 = *(v9 + 16);
        v77 = *(v9 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1C4405AF4(v77);
          sub_1C458B504();
          v9 = v106;
        }

        *(v9 + 16) = v78 + 1;
        v79 = (v9 + 40 * v78);
        v79[4] = 0x656E747261507369;
        v79[5] = 0xE900000000000072;
        v6 = v140;
        v79[6] = v140;
        v79[7] = v5;
        v79[8] = v76;
      }

      else
      {
        v6 = v140;
      }

      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v80);
      sub_1C4403084();
      v82 = sub_1C44CE068(sub_1C4579E44, v81, v29);

      if (v82)
      {
        objc_opt_self();
        v83 = sub_1C44305F8();
        v84 = sub_1C444B0E8(v83, sel_featureValueWithInt64_);
        sub_1C4425098();
        if (v14)
        {
          sub_1C4405AF4(v85);
          sub_1C458B504();
          v9 = v107;
        }

        sub_1C441B8A0();
        v86[4] = 0x6E696C6269537369;
        v86[5] = 0xE900000000000067;
        v86[6] = v6;
        v86[7] = v5;
        v86[8] = v84;
      }

      sub_1C441E344();
      MEMORY[0x1EEE9AC00](v87);
      sub_1C4403084();
      v89 = sub_1C44CE068(sub_1C4579E44, v88, v33);

      if (v89)
      {
        objc_opt_self();
        v91 = sub_1C44305F8();
        v92 = sub_1C444B0E8(v91, sel_featureValueWithInt64_);
        sub_1C4425098();
        if (v14)
        {
          sub_1C4405AF4(v93);
          sub_1C458B504();
          v9 = v108;
        }

        sub_1C441B8A0();
        v94[4] = 0x6B726F776F437369;
        v94[5] = 0xEA00000000007265;
        v94[6] = v6;
        v94[7] = v5;
        v94[8] = v92;
      }

      MEMORY[0x1EEE9AC00](v90);
      sub_1C4403084();
      v96 = sub_1C44CE068(sub_1C4579E44, v95, v36);
      swift_setDeallocating();
      sub_1C44DEE40();

      if (v96)
      {
        objc_opt_self();
        v97 = sub_1C44305F8();
        v98 = sub_1C444B0E8(v97, sel_featureValueWithInt64_);
        sub_1C4425098();
        if (v14)
        {
          sub_1C4405AF4(v99);
          sub_1C458B504();
          v9 = v109;
        }

        sub_1C441B8A0();
        v101[4] = 0x796C696D61467369;
        v101[5] = 0xE800000000000000;
        v101[6] = v6;
        v101[7] = v5;
        v101[8] = v98;
      }

      else
      {
        v100 = v143;
      }

      v8 = v100 + 2;
      v3 = v144 - 1;
    }

    while (v144 != 1);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C47208E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 96);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a3 + 96) + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
LABEL_5:
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v14 << 6);
    v18 = *(*(result + 56) + 8 * v17);
    if (*(v18 + 16))
    {
      v29 = result;
      v19 = (*(result + 48) + 16 * v17);
      v20 = v19[1];
      v28 = *v19;
      v21 = *(v18 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v22 = sub_1C4F02B68();
      v23 = ~(-1 << *(v18 + 32));
      do
      {
        v24 = v22 & v23;
        if (((*(v18 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {

          result = v29;
          goto LABEL_5;
        }

        v25 = (*(v18 + 48) + 16 * v24);
        if (*v25 == a1 && v25[1] == a2)
        {
          break;
        }

        v27 = sub_1C4F02938();
        v22 = v24 + 1;
      }

      while ((v27 & 1) == 0);

      return v28;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return 0;
    }

    v11 = *(v7 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4720AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 96);
  v5 = *(v3 + 64);
  v4 = v3 + 64;
  v6 = *(*(a3 + 96) + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v32 = v12;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  if (v9)
  {
    while (1)
    {
      v15 = v14;
LABEL_6:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(v32 + 48) + 16 * v16);
      v18 = v17[1];
      v29 = *v17;
      v19 = *(*(v32 + 56) + 8 * v16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = sub_1C47231FC(v20, a1, a2);
      v22 = sub_1C486C288(v21);
      v24 = v23;
      v26 = v25;
      result = sub_1C486C29C(v21);
      if (v26 & 1) != 0 || (v28)
      {
        break;
      }

      if (v24 != v27)
      {
        goto LABEL_15;
      }

      if (v22 != result)
      {
        sub_1C486BC78(v22, v24, 0, v21);

        return v29;
      }

      v9 &= v9 - 1;

      v14 = v15;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        return 0;
      }

      v9 = *(v4 + 8 * v15);
      ++v14;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4720C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a8;
  v15 = a11;
  if (a8)
  {
    v12 = a7;
    if (a10)
    {
      v17 = a10;
      v139 = a11;
      v15 = a1;
      goto LABEL_4;
    }

LABEL_20:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v39 = sub_1C4F01108();
    v40 = CEMStringContainsEmoji();

    if (v40)
    {
      objc_opt_self();
      v41 = sub_1C4423B24();
      v42 = sub_1C445BF60(v41, sel_featureValueWithInt64_);
      sub_1C4414A14();
      sub_1C442F654(v43);
      v27 = a4;
      if (v24)
      {
        sub_1C43FCFE8(v44);
        sub_1C442FCEC();
        sub_1C458B504();
        v13 = v124;
      }

      sub_1C43FBDF0();
      *(v13 + 16) = v40;
      v45 = (v13 + 40 * v11);
      v45[4] = 0xD000000000000011;
      v45[5] = v46;
      v45[6] = a1;
      v45[7] = a2;
      v45[8] = v42;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v27 = a4;
    }

    sub_1C4F00FF8();
    v62 = v61;

    v63 = sub_1C440A6C4();
    v26 = a11;
    sub_1C47208E0(v63, v64, a11);
    if (v65)
    {

      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      sub_1C4423B24();
      sub_1C43FC1C0();
      v66 = v62;
      sub_1C4594E18();
      sub_1C43FEF2C();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4435888();
      v15 = a1;
      if ((v67 & 1) == 0)
      {
        v125 = *(v13 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v126;
      }

      sub_1C43FEF1C();
      if (v24)
      {
        sub_1C440F564();
        v13 = v127;
      }

      sub_1C44170C8();
      v69[4] = v12;
    }

    else
    {
      v70 = sub_1C440A6C4();
      sub_1C4720AA0(v70, v71, a11);
      v73 = v72;

      sub_1C4435888();
      v15 = a1;
      if (!v73)
      {
        goto LABEL_72;
      }

      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      sub_1C4423B24();
      sub_1C43FC1C0();
      v66 = v62;
      sub_1C4594E18();
      sub_1C43FEF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = *(v13 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v134;
      }

      sub_1C43FEF1C();
      if (v24)
      {
        sub_1C440F564();
        v13 = v135;
      }

      sub_1C44170C8();
      v69[4] = v12 + 7;
    }

    v69[5] = v68;
    v69[6] = v15;
    v69[7] = a2;
    v69[8] = v66;
    goto LABEL_72;
  }

  if (a10)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = sub_1C4F01108();
    v32 = CEMStringContainsEmoji();

    sub_1C4435888();
    v26 = a11;
    if (v32)
    {
      objc_opt_self();
      v33 = sub_1C4423B24();
      v34 = sub_1C445BF60(v33, sel_featureValueWithInt64_);
      sub_1C4414A14();
      sub_1C442F654(v35);
      v15 = a1;
      if (v24)
      {
        sub_1C43FCFE8(v36);
        sub_1C442FCEC();
        sub_1C458B504();
        v13 = v128;
      }

      sub_1C43FBDF0();
      *(v13 + 16) = v32;
      v37 = (v13 + 40 * v11);
      v37[4] = v12;
      v37[5] = v38;
      v37[6] = a1;
      v37[7] = a2;
      v37[8] = v34;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v15 = a1;
    }

    v74 = sub_1C4F00FF8();
    v76 = v75;
    sub_1C47208E0(v74, v75, a11);
    if (v77)
    {

      v78 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v79 = v78;
      sub_1C4594E18();
      sub_1C43FEF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = *(v13 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v130;
      }

      sub_1C43FEF1C();
      if (v24)
      {
        sub_1C440F564();
        v13 = v131;
      }

      sub_1C44170C8();
      v81[4] = v12;
    }

    else
    {
      sub_1C4720AA0(v74, v76, a11);
      v83 = v82;

      if (!v83)
      {
LABEL_71:
        v27 = a4;
        goto LABEL_72;
      }

      v84 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v79 = v84;
      sub_1C4594E18();
      sub_1C43FEF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = *(v13 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v13 = v137;
      }

      sub_1C43FEF1C();
      if (v24)
      {
        sub_1C440F564();
        v13 = v138;
      }

      sub_1C44170C8();
      v81[4] = v12 + 7;
    }

    v81[5] = v80;
    v81[6] = v15;
    v81[7] = a2;
    v81[8] = v79;
    goto LABEL_71;
  }

  sub_1C4435888();
  v26 = a11;
  if (!v52)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v15 = a1;
    goto LABEL_71;
  }

  sub_1C4415EA8();
  v53 = sub_1C4F01FC8();
  v54 = v53[2];
  if (v54 == 1)
  {
    v26 = 0xD000000000000011;

    if (v53[2])
    {
      v12 = v53[4];
      v110 = v53[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_20;
    }

    goto LABEL_103;
  }

  if (v54 != 2)
  {
    v15 = a1;
    if (qword_1EDDFECB0 == -1)
    {
LABEL_98:
      v111 = sub_1C4F00978();
      sub_1C442B738(v111, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v112 = sub_1C4F00968();
      v113 = sub_1C4F01CF8();
      v27 = a4;
      if (os_log_type_enabled(v112, v113))
      {
        sub_1C43FECF0();
        v114 = swift_slowAlloc();
        *v114 = 134217984;
        v115 = v53[2];

        *(v114 + 4) = v115;

        _os_log_impl(&dword_1C43F8000, v112, v113, "EntityTaggingFactsFeaturizer: nameComponents.count is not 1 or 2: %ld", v114, 0xCu);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v13 = MEMORY[0x1E69E7CC0];
      goto LABEL_72;
    }

LABEL_104:
    sub_1C44064A8();
    swift_once();
    goto LABEL_98;
  }

  v139 = a11;

  v56 = v53[2];
  v15 = a1;
  if (!v56)
  {
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v56 != 1)
  {
    v12 = v53[4];
    v57 = v53[5];
    a9 = v53[6];
    v17 = v53[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();

LABEL_4:
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4F01108();

    v19 = CEMStringContainsEmoji();

    if (v19)
    {
      objc_opt_self();
      v20 = sub_1C4423B24();
      v21 = sub_1C445BF60(v20, sel_featureValueWithInt64_);
      sub_1C4414A14();
      sub_1C4401D7C(v22);
      v12 = 0xD000000000000011;
      if (!v24)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1C4414A08();
      v19 = sub_1C4F01108();
      v21 = CEMStringContainsEmoji();

      sub_1C4435888();
      if (!v21)
      {
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_7;
      }

      objc_opt_self();
      v49 = sub_1C4423B24();
      v21 = sub_1C445BF60(v49, sel_featureValueWithInt64_);
      sub_1C4414A14();
      sub_1C4401D7C(v50);
      if (!v24)
      {
LABEL_6:
        *(v13 + 16) = a10;
        v25 = (v13 + 40 * v19);
        v25[4] = v12;
        v25[5] = 0x80000001C4F88290;
        v25[6] = v15;
        v25[7] = a2;
        v25[8] = v21;
LABEL_7:
        v26 = v139;
        v27 = a4;
        if (*v139 && (v28 = v139[4]) != 0)
        {
          if (a9 == v139[3] && v28 == v17)
          {

LABEL_37:
            v47 = objc_opt_self();
            v58 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v48 = sub_1C444B0E8(v58, sel_featureValueWithInt64_);
            goto LABEL_38;
          }

          sub_1C4414A08();
          v30 = sub_1C4F02938();

          if (v30)
          {
            goto LABEL_37;
          }
        }

        else
        {
        }

        v47 = objc_opt_self();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = [v47 featureValueWithInt64_];
LABEL_38:
        v59 = v48;
        sub_1C43FEF2C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = *(v13 + 16);
          sub_1C43FCEC0();
          sub_1C458B504();
          v13 = v120;
        }

        sub_1C43FEF1C();
        if (v24)
        {
          sub_1C440F564();
          v13 = v121;
        }

        *(v13 + 16) = v19;
        v60 = v13 + 40 * v21;
        strcpy((v60 + 32), "sameLastName");
        *(v60 + 45) = 0;
        *(v60 + 46) = -5120;
        *(v60 + 48) = v15;
        *(v60 + 56) = a2;
        *(v60 + 64) = v47;
LABEL_72:
        if (v27)
        {
          objc_opt_self();
          v85 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v86 = sub_1C444B0E8(v85, sel_featureValueWithInt64_);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = *(v13 + 16);
            sub_1C43FCEC0();
            sub_1C458B504();
            v13 = v117;
          }

          v87 = *(v13 + 16);
          if (v87 >= *(v13 + 24) >> 1)
          {
            sub_1C440F564();
            v13 = v118;
          }

          *(v13 + 16) = v87 + 1;
          v88 = (v13 + 40 * v87);
          v88[4] = 0x6E6B63694E736168;
          v88[5] = 0xEB00000000656D61;
          v88[6] = v15;
          v88[7] = a2;
          v88[8] = v86;
          v89 = sub_1C4F01108();
          v90 = CEMStringContainsEmoji();

          if (v90)
          {
            v91 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v92 = sub_1C444B0E8(v91, sel_featureValueWithInt64_);
            sub_1C43FEF1C();
            if (v24)
            {
              sub_1C440F564();
              v13 = v122;
            }

            sub_1C44170C8();
            v94[4] = v12 + 4;
            v94[5] = v93;
            v94[6] = v15;
            v94[7] = a2;
            v94[8] = v92;
          }

          v95 = sub_1C4F00FF8();
          v97 = v96;
          sub_1C47208E0(v95, v96, v26);
          if (v98)
          {

            v99 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C43FC1C0();
            v100 = v99;
            sub_1C4594E18();
            sub_1C4426AEC();
            if (v24)
            {
              sub_1C4405AF4(v101);
              sub_1C458B504();
              v13 = v123;
            }

            sub_1C43FBDF0();
            sub_1C4441008();
            v104 = v12 + 4;
LABEL_89:
            v103[4] = v104;
            v103[5] = v102;
            v103[6] = a1;
            v103[7] = a2;
            v103[8] = v100;
            return v13;
          }

          v105 = sub_1C440CAF0();
          sub_1C4720AA0(v105, v106, v26);
          v108 = v107;

          if (v108)
          {

            sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
            sub_1C4423B24();
            v100 = v97;
            sub_1C4594E18();
            sub_1C4426AEC();
            if (v24)
            {
              sub_1C4405AF4(v109);
              sub_1C458B504();
              v13 = v132;
            }

            sub_1C43FBDF0();
            sub_1C4441008();
            v104 = v12 + 11;
            goto LABEL_89;
          }
        }

        return v13;
      }
    }

    sub_1C43FCFE8(v23);
    sub_1C442FCEC();
    sub_1C458B504();
    v13 = v51;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1C47217E4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = (v6 + *(type metadata accessor for GraphTriple(0) + 32));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + 88);
  v78 = *v7;
  v79 = v9;
  v75[2] = &v78;
  v74 = v5;
  if (sub_1C44CE068(sub_1C44CE790, v75, v10))
  {
    objc_opt_self();
    v11 = v3;
    v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C444B0E8(v12, sel_featureValueWithInt64_);
    sub_1C4414A14();
    v15 = v14;
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1C43FCFE8(v16);
      sub_1C458B504();
      v15 = v63;
    }

    *(v15 + 16) = v17 + 1;
    v18 = (v15 + 40 * v17);
    v18[4] = 0x5049567369;
    v18[5] = 0xE500000000000000;
    v18[6] = v5;
    v18[7] = v11;
    v18[8] = v13;
  }

  else
  {
    v11 = v3;
    v15 = MEMORY[0x1E69E7CC0];
  }

  v78 = v8;
  v79 = v9;
  v76 = 64;
  v77 = 0xE100000000000000;
  sub_1C4415EA8();
  sub_1C44222DC();
  v19 = sub_1C4F01FC8();
  v20 = sub_1C4A3E184(v19);
  v22 = v21;

  if (v22)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0;
  }

  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  if (!*v1)
  {
    goto LABEL_31;
  }

  v26 = *(v1 + 8);
  v27 = *(v1 + 16);
  v78 = v24;
  v79 = v25;
  MEMORY[0x1EEE9AC00](v23);
  v72 = &v78;
  v29 = sub_1C44CE068(sub_1C4579E44, v71, v28);
  if (!v29)
  {
    v78 = v24;
    v79 = v25;
    MEMORY[0x1EEE9AC00](v29);
    v72 = &v78;
    if (sub_1C44CE068(sub_1C4579E44, v71, v27))
    {
      objc_opt_self();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = sub_1C447F964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = *(v15 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v15 = v69;
      }

      v47 = *(v15 + 16);
      if (v47 >= *(v15 + 24) >> 1)
      {
        v73 = v47 + 1;
        sub_1C458B504();
        v15 = v70;
      }

      sub_1C442A900();
      *(v15 + 16) = v48;
      v49 = (v15 + 40 * v47);
      v49[4] = v50;
      v49[5] = 0x80000001C4F881D0;
      v51 = v74;
      v49[6] = v74;
      v49[7] = v11;
      v49[8] = v30;
      v78 = v24;
      v79 = v25;
      v76 = 1969513774;
      v77 = 0xE400000000000000;
      sub_1C44222DC();
      if (sub_1C4F02048())
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v52 = sub_1C447F964();
        sub_1C442A3D8();
        if (v43)
        {
          sub_1C4413090(v53);
          sub_1C458B504();
        }

        sub_1C4433310();
        sub_1C442A900();
        v45[4] = v54 + 2;
        v45[5] = v55;
        v45[6] = v51;
        v45[7] = v11;
      }

      else
      {
        v56 = sub_1C4499AD0(v24, v25, *(v1 + 104));

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v30 = sub_1C447F964();
        v58 = *(v15 + 16);
        v57 = *(v15 + 24);
        if (v56)
        {
          if (v57 >> 1 <= v58)
          {
            sub_1C4413090(v57);
            sub_1C458B504();
          }

          sub_1C4433310();
          sub_1C442A900();
          v61 = v60 + 5;
        }

        else
        {
          if (v57 >> 1 <= v58)
          {
            sub_1C4413090(v57);
            sub_1C458B504();
          }

          sub_1C4433310();
          sub_1C442A900();
          v61 = v62 + 6;
        }

        v45[4] = v61;
        v45[5] = v59;
        v45[6] = v51;
        v45[7] = v11;
      }

      goto LABEL_21;
    }

LABEL_31:

    goto LABEL_32;
  }

  v30 = objc_opt_self();
  v31 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = sub_1C444B0E8(v31, sel_featureValueWithInt64_);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v74;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v64 = *(v15 + 16);
    sub_1C43FCEC0();
    sub_1C458B504();
    v15 = v65;
  }

  v36 = *(v15 + 16);
  v35 = *(v15 + 24);
  v37 = v36 + 1;
  if (v36 >= v35 >> 1)
  {
    sub_1C43FCFE8(v35);
    sub_1C458B504();
    v15 = v66;
  }

  sub_1C43FBDF0();
  *(v15 + 16) = v37;
  v38 = (v15 + 40 * v36);
  v38[4] = 0xD000000000000013;
  v38[5] = v39;
  v38[6] = v34;
  v38[7] = v11;
  v38[8] = v32;
  v40 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = sub_1C444B0E8(v40, sel_featureValueWithInt64_);
  sub_1C442A3D8();
  if (v43)
  {
    sub_1C4413090(v42);
    sub_1C458B504();
    v15 = v67;
  }

  sub_1C4433310();
  v45 = (v15 + v37 * v44);
  v45[4] = 0xD000000000000016;
  v45[5] = v46;
  v45[6] = v34;
  v45[7] = v11;
LABEL_21:
  v45[8] = v30;
LABEL_32:
  sub_1C43FE9F0();
}

uint64_t sub_1C4721D3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x444C494843 && a2 == 0xE500000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 1313162580 && a2 == 0xE400000000000000)
  {
    return 15;
  }

  if (sub_1C4F02938())
  {
    return 15;
  }

  return 0;
}

void sub_1C4721DF8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v72 = v3;
  v73 = v4;
  v6 = v5;
  v8 = v7;
  v74 = v9;
  v10 = sub_1C4EFF578();
  v11 = sub_1C43FCDF8(v10);
  v71 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v70 = v15;
  v16 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1C43FFCB0();
  v21 = type metadata accessor for GraphTriple(v20);
  v22 = sub_1C43FBCE0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  if (sub_1C44157D4(v6, 1, v21) == 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v69 = v2;
    v29 = v10;
    v30 = objc_opt_self();
    v31 = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = [v30 featureValueWithInt64_];
    sub_1C4414A14();
    v28 = v33;
    v35 = *(v33 + 16);
    v34 = *(v33 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1C43FCFE8(v34);
      sub_1C458B504();
      v28 = v62;
    }

    *(v28 + 16) = v35 + 1;
    v36 = (v28 + 40 * v35);
    v36[4] = 0x6874726942736168;
    v36[5] = 0xEB00000000796164;
    v36[6] = v74;
    v36[7] = v31;
    v8 = v31;
    v36[8] = v32;
    v10 = v29;
    v2 = v69;
  }

  sub_1C445FFF0(v6, v0, &unk_1EC0BC900, &unk_1C4F142D0);
  if (sub_1C44157D4(v0, 1, v21) == 1)
  {
    sub_1C4420C3C(v0, &unk_1EC0BC900, &unk_1C4F142D0);
LABEL_9:
    v46 = 0;
    goto LABEL_15;
  }

  v37 = sub_1C4414550();
  sub_1C45B1EE4(v37, v38);
  v39 = (v27 + *(v21 + 32));
  v40 = *v39;
  v41 = v39[1];
  sub_1C47224CC();
  v43 = v42;
  v45 = v44;
  sub_1C4709ED8(v27);
  if (v45)
  {
    goto LABEL_9;
  }

  v47 = objc_opt_self();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v48 = [v47 featureValueWithInt64_];
  v49 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v63 = *(v28 + 16);
    sub_1C43FCEC0();
    sub_1C458B504();
    v28 = v64;
  }

  v51 = *(v28 + 16);
  v50 = *(v28 + 24);
  if (v51 >= v50 >> 1)
  {
    sub_1C43FCFE8(v50);
    sub_1C458B504();
    v28 = v65;
  }

  *(v28 + 16) = v51 + 1;
  v52 = (v28 + 40 * v51);
  v52[4] = 0x67416E6F73726570;
  v52[5] = 0xE900000000000065;
  v52[6] = v74;
  v52[7] = v8;
  v52[8] = v48;
  v46 = 1;
  v2 = v49;
LABEL_15:
  if (*v2 && (*(v2 + 64) & 1) == 0)
  {
    v53 = *(v2 + 56);
    if (v73)
    {
      sub_1C4721D3C(v72, v73);
      v55 = v54 ^ 1;
    }

    else
    {
      v55 = 0;
    }

    if ((v46 | v55))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4402B58();
      sub_1C4EFF558();
      v56 = sub_1C4EFF568();
      (*(v71 + 8))(v70, v10);
      v57 = [objc_opt_self() featureValueWithInt64_];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = *(v28 + 16);
        sub_1C43FCEC0();
        sub_1C458B504();
        v28 = v67;
      }

      v59 = *(v28 + 16);
      v58 = *(v28 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1C4413090(v58);
        sub_1C458B504();
        v28 = v68;
      }

      sub_1C43FBDF0();
      *(v28 + 16) = v59 + 1;
      v60 = (v28 + 40 * v59);
      v60[4] = 0xD000000000000015;
      v60[5] = v61;
      v60[6] = v74;
      v60[7] = v8;
      v60[8] = v57;
    }
  }

  sub_1C43FE9F0();
}

void sub_1C4722278()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFF578();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4EFF048();
  v13 = sub_1C4F01438();
  v15 = v14;
  v16 = sub_1C465C70C(v3, *(v1 + 112));
  if (v17)
  {
    goto LABEL_2;
  }

  v18 = v16;
  v34 = v7;
  v33 = objc_opt_self();
  v19 = [v33 featureValueWithInt64_];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4414A14();
  v21 = v20;
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_1C43FCFE8(v22);
    sub_1C442FCEC();
    sub_1C458B504();
    v21 = v32;
  }

  *(v21 + 16) = v23 + 1;
  v24 = (v21 + 40 * v23);
  v24[4] = 0x6550736F746F6870;
  v24[5] = 0xEF6567416E6F7372;
  v24[6] = v13;
  v24[7] = v15;
  v24[8] = v19;
  if (!*v1 || (*(v1 + 64) & 1) != 0)
  {
LABEL_2:
  }

  else
  {
    v25 = *(v1 + 56);
    sub_1C4EFF558();
    v26 = sub_1C4EFF568();
    (*(v34 + 8))(v12, v4);
    v27 = [v33 featureValueWithInt64_];
    sub_1C4426AEC();
    if (v29)
    {
      sub_1C4405AF4(v28);
      sub_1C458B504();
    }

    sub_1C43FBDF0();
    sub_1C4441008();
    v31[4] = 0xD00000000000001BLL;
    v31[5] = v30;
    v31[6] = v13;
    v31[7] = v15;
    v31[8] = v26;
  }

  sub_1C43FE9F0();
}

void sub_1C47224CC()
{
  sub_1C43FBD3C();
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v45 = v3;
  v46 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v6 = sub_1C4EF9F68();
  v7 = sub_1C43FCDF8(v6);
  v44 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EF9F88();
  v15 = sub_1C43FCDF8(v14);
  v42 = v16;
  v43 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = sub_1C4404BCC();
  v24 = sub_1C456902C(v22, v23);
  v25 = sub_1C43FBD18(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v41 - v32;
  sub_1C4722828();
  sub_1C445FFF0(v33, v30, &unk_1EC0BAD50, &unk_1C4F168E0);
  v34 = sub_1C4EF9648();
  if (sub_1C44157D4(v30, 1, v34) == 1)
  {
    sub_1C4420C3C(v33, &unk_1EC0BAD50, &unk_1C4F168E0);
    v33 = v30;
LABEL_6:
    sub_1C4420C3C(v33, &unk_1EC0BAD50, &unk_1C4F168E0);
    sub_1C43FE9F0();
    return;
  }

  v35 = sub_1C4EF95D8();
  v37 = v36;
  (*(*(v34 - 8) + 8))(v30, v34);
  if (v37)
  {
    goto LABEL_6;
  }

  v38 = objc_autoreleasePoolPush();
  sub_1C4EF9F58();
  v39 = v44;
  (*(v44 + 104))(v13, *MEMORY[0x1E6969A68], v6);
  sub_1C4EF9CC8();
  v40 = sub_1C4EF9F78();
  (*(v45 + 8))(v0, v46);
  (*(v39 + 8))(v13, v6);
  (*(v42 + 8))(v21, v43);
  if (!__OFSUB__(v40, v35))
  {
    objc_autoreleasePoolPop(v38);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C4722828()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BAD50, &unk_1C4F168E0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C44109B4();
  v7 = sub_1C4F01188();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C4F01178();
  v16 = sub_1C4F01148();
  v18 = v17;
  (*(v10 + 8))(v15, v7);
  if (v18 >> 60 == 15)
  {
    sub_1C4EF9648();
    sub_1C43FCF64();
  }

  else
  {
    v19 = sub_1C4EF9348();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_1C4EF9338();
    v22 = sub_1C4EF9648();
    sub_1C450229C(&qword_1EC0BAA18, MEMORY[0x1E6968278]);
    sub_1C4EF9328();
    sub_1C441DFEC(v16, v18);

    sub_1C442FCEC();
    sub_1C440BAA8(v23, v24, v25, v26);
    (*(*(v22 - 8) + 32))(v2, v0, v22);
    sub_1C442FCEC();
  }

  sub_1C440BAA8(v27, v28, v29, v30);
  sub_1C43FE9F0();
}

void sub_1C4722A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v92 - v29;
  v31 = sub_1C4EFF0C8();
  v32 = sub_1C43FCDF8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  sub_1C440E194();
  sub_1C450229C(v40, v41);
  v42 = sub_1C4F00F28();
  v43 = *sub_1C4409678((v20 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker), *(v20 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker + 24));
  v44 = sub_1C45E1240();
  if (v21)
  {

LABEL_45:
    sub_1C43FBC80();
  }

  else
  {
    v46 = v44;
    v99 = v42;
    v95 = v39;
    v101 = v31;
    v47 = 0;
    v48 = v44 + 64;
    v49 = 1 << *(v44 + 32);
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v51 = v50 & *(v44 + 64);
    v52 = (v49 + 63) >> 6;
    v93 = (v34 + 8);
    v94 = (v34 + 32);
    *&v45 = 136315138;
    v98 = v45;
    v100 = v44;
    while (v51)
    {
      v53 = v47;
LABEL_12:
      v54 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v55 = v54 | (v53 << 6);
      v56 = *(v46 + 56);
      v57 = (*(v46 + 48) + 16 * v55);
      v58 = v57[1];
      v102 = *v57;
      v59 = *(v56 + 8 * v55);
      v60 = v59 + 64;
      v61 = 1 << *(v59 + 32);
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      v63 = v62 & *(v59 + 64);
      if (v63)
      {
        v64 = 0;
        v65 = __clz(__rbit64(v63));
        v66 = (v63 - 1) & v63;
        v67 = (v61 + 63) >> 6;
LABEL_21:
        v72 = *(v59 + 48);
        v71 = *(v59 + 56);
        v73 = *(v72 + 2 * v65);
        v74 = *(v71 + 8 * v65);
        if (!v66)
        {
          goto LABEL_23;
        }

        do
        {
          v75 = v64;
LABEL_27:
          v76 = __clz(__rbit64(v66)) | (v75 << 6);
          v77 = *(v72 + 2 * v76);
          v66 &= v66 - 1;
          v78 = *(v71 + 8 * v76);
          if (v74 < v78)
          {
            v73 = v77;
          }

          if (v74 <= v78)
          {
            v74 = v78;
          }
        }

        while (v66);
        while (1)
        {
LABEL_23:
          v75 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v75 >= v67)
          {
            break;
          }

          v66 = *(v60 + 8 * v75);
          ++v64;
          if (v66)
          {
            v64 = v75;
            goto LABEL_27;
          }
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4722FC0(v73);
        if (v79)
        {

          goto LABEL_35;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF0D8();
        if (sub_1C44157D4(v30, 1, v101) != 1)
        {

          v87 = v95;
          v88 = *v94;
          v97 = v24;
          v89 = v101;
          v88(v95, v30, v101);
          v90 = v99;
          swift_isUniquelyReferenced_nonNull_native();
          a10 = v90;
          sub_1C4660FD4();
          v46 = v100;
          v91 = v89;
          v24 = v97;
          (*v93)(v87, v91);
          v99 = a10;
          goto LABEL_35;
        }

        sub_1C4420C3C(v30, &unk_1EC0BA0E0, &qword_1C4F105A0);
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v80 = sub_1C4F00978();
        sub_1C442B738(v80, qword_1EDDFECB8);
        sub_1C44305F8();
        v81 = sub_1C4F00968();
        v82 = sub_1C4F01CF8();

        if (os_log_type_enabled(v81, v82))
        {
          sub_1C43FECF0();
          v83 = swift_slowAlloc();
          v96 = v30;
          v84 = v83;
          sub_1C43FEC60();
          v85 = swift_slowAlloc();
          v97 = v24;
          v86 = v85;
          a10 = v85;
          *v84 = v98;
          v102 = sub_1C441D828(v102, v58, &a10);

          *(v84 + 4) = v102;
          _os_log_impl(&dword_1C43F8000, v81, v82, "EntityTaggingFactsFeaturizer: Cannot find entity with %s", v84, 0xCu);
          sub_1C440962C(v86);
          v24 = v97;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          v30 = v96;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v47 = v53;
        v46 = v100;
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v67 = (v61 + 63) >> 6;
        while (1)
        {
          v64 = v69 + 1;
          if (v69 + 1 >= v67)
          {
            break;
          }

          v70 = *(v59 + 72 + 8 * v69);
          v68 += 64;
          ++v69;
          if (v70)
          {
            v66 = (v70 - 1) & v70;
            v65 = __clz(__rbit64(v70)) + v68;
            goto LABEL_21;
          }
        }

LABEL_35:
        v47 = v53;
      }
    }

    while (1)
    {
      v53 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v53 >= v52)
      {

        goto LABEL_45;
      }

      v51 = *(v48 + 8 * v53);
      ++v47;
      if (v51)
      {
        goto LABEL_12;
      }
    }

LABEL_47:
    __break(1u);
  }
}

uint64_t sub_1C4722FC0(__int16 a1)
{
  switch(a1)
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 10;
      break;
    case 3:
      result = 20;
      break;
    case 4:
      result = 70;
      break;
    case 5:
      result = 35;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1C4723038()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_databaseURL;
  v3 = sub_1C4EF98F8();
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0 + v2);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28EntityTaggingFactsFeaturizer_eventTracker));
  return v0;
}

uint64_t sub_1C47230A8()
{
  sub_1C4723038();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityTaggingFactsFeaturizer()
{
  result = qword_1EDDDFF58;
  if (!qword_1EDDDFF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4723154()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1C47231FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v37[2] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = (8 * v9);
  v11 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v31 = v4;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v11);
    v30 = v9;
    v32 = v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C4501018(0, v9, v32);
    v33 = 0;
    v12 = 0;
    v4 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v9 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v19 = v16 | (v12 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v37[0] = v34;
      v37[1] = a3;
      v35 = v22;
      v36 = v21;
      sub_1C4415EA8();
      v10 = v37;
      if (sub_1C4F02048())
      {
        *(v32 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1C4A8D90C(v32, v30, v33, a1);
          v25 = v24;
          swift_bridgeObjectRelease_n();
          goto LABEL_17;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(v4 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4723628(v28, v9, a1);

  MEMORY[0x1C6942830](v28, -1, -1);
  swift_bridgeObjectRelease_n();
LABEL_17:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t sub_1C47234AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v21 = *v14;
    v22 = v14[1];
    sub_1C4415EA8();
    result = sub_1C4F02048();
    if (result)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1C4A8D90C(v19, a2, v20, a3);
        v17 = v16;

        return v17;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C4723628(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v6 = sub_1C47234AC(v5, a2, a3);
    swift_bridgeObjectRelease_n();

    return v6;
  }

  return result;
}

unint64_t sub_1C472376C()
{
  result = qword_1EDDDFF68;
  if (!qword_1EDDDFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDFF68);
  }

  return result;
}

uint64_t sub_1C47237FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89C8, &unk_1C4F23170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingFactsFeaturizer.EntityTaggingFactsFeaturizerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C472399C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C47239BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C47239FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4723A70()
{
  result = qword_1EC0BC030;
  if (!qword_1EC0BC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC030);
  }

  return result;
}

uint64_t sub_1C4723AC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4723B04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C4723B88(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v24 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v24 == v5)
    {
      goto LABEL_16;
    }

    v7 = *(type metadata accessor for PHPersonStructs.EntityAliasRelationshipType(0) - 8);
    a1(&v25, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

LABEL_16:
      sub_1C44030B0();
      return;
    }

    v8 = v25;
    v9 = *(v25 + 16);
    v10 = *(v6 + 16);
    if (__OFADD__(v10, v9))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v6 + 24) >> 1)
    {
      sub_1C4401750();
      sub_1C44C9240(v11, v12, v13, v14);
      v6 = v15;
    }

    if (*(v8 + 16))
    {
      v16 = (*(v6 + 24) >> 1) - *(v6 + 16);
      v17 = *(type metadata accessor for EntityTriple(0) - 8);
      if (v16 < v9)
      {
        goto LABEL_19;
      }

      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = *(v17 + 72);
      swift_arrayInitWithCopy();

      if (v9)
      {
        v20 = *(v6 + 16);
        v21 = __OFADD__(v20, v9);
        v22 = v20 + v9;
        if (v21)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v22;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C4723D68(void (*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (a3 + 32);
  if (v4)
  {
    while (1)
    {
      v16 = *v6;
      a1(&v15, &v16);
      if (v3)
      {

        return;
      }

      v7 = v15;
      v8 = *(v15 + 16);
      v9 = *(v5 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
      {
        sub_1C458B504();
        v5 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_19;
        }

        sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v5 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      ++v6;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1C4723EE0(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = (a3 + 72);
  if (v3)
  {
    while (1)
    {
      v20 = v3;
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v22[0] = v6;
      v22[1] = v7;
      v22[2] = v9;
      v22[3] = v8;
      v22[4] = v10;
      v23 = v11;
      sub_1C45D7F64(v6, v7, v9, v8, v10, v11);
      a1(&v24, v22);
      if (v21)
      {
        sub_1C45D8070(v6, v7, v9, v8, v10, v11);

        return;
      }

      sub_1C45D8070(v6, v7, v9, v8, v10, v11);
      v12 = v24;
      v13 = *(v24 + 16);
      v14 = *(v4 + 16);
      if (__OFADD__(v14, v13))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v4 + 24) >> 1)
      {
        sub_1C458B504();
        v4 = v15;
      }

      if (*(v12 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v13)
        {
          goto LABEL_19;
        }

        sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
        swift_arrayInitWithCopy();

        if (v13)
        {
          v16 = *(v4 + 16);
          v17 = __OFADD__(v16, v13);
          v18 = v16 + v13;
          if (v17)
          {
            goto LABEL_20;
          }

          *(v4 + 16) = v18;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_18;
        }
      }

      v5 += 48;
      v3 = v20 - 1;
      if (v20 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1C47240B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    while (1)
    {
      v10 = sub_1C4416050();
      v12 = v11(v10);
      if (v3)
      {

        goto LABEL_16;
      }

      sub_1C441E354(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27, v28, v29);
      if (v20)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v4 > *(v9 + 24) >> 1)
      {
        sub_1C4401750();
        sub_1C458EFF4();
        v9 = v21;
      }

      if (*(v6 + 16))
      {
        sub_1C4414A30();
        if (v23 != v20)
        {
          goto LABEL_19;
        }

        v4 = v9 + 32 * v22;
        sub_1C456902C(&qword_1EC0B8B10, &qword_1C4F0EF40);
        sub_1C4426B00();

        if (v5)
        {
          v24 = *(v9 + 16);
          v20 = __OFADD__(v24, v5);
          v25 = v24 + v5;
          if (v20)
          {
            goto LABEL_20;
          }

          *(v9 + 16) = v25;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_18;
        }
      }

      v8 += 40;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1C44030B0();
  }
}

uint64_t sub_1C47241D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore23EntityTaggingFeaturizer____lazy_storage___calendar;
  swift_beginAccess();
  sub_1C4729CD4(v1 + v10, v9);
  v11 = sub_1C4EF9F88();
  if (sub_1C44157D4(v9, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  sub_1C4729D44(v9);
  v12 = objc_autoreleasePoolPush();
  sub_1C4EF9F58();
  objc_autoreleasePoolPop(v12);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  sub_1C4401750();
  sub_1C440BAA8(v13, v14, v15, v16);
  swift_beginAccess();
  sub_1C4630E08(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1C4724390(char a1)
{
  if (a1)
  {
    return 0x6550736F746F6850;
  }

  else
  {
    return 0x6E6F73726550;
  }
}

uint64_t sub_1C47243CC()
{
  v0 = sub_1C4F025D8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4724420(char a1)
{
  if (a1)
  {
    return 0x6550736F746F6870;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

uint64_t sub_1C4724480@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C47243CC();
  *a2 = result;
  return result;
}

uint64_t sub_1C47244B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4724420(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C47244E4()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C4724530(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_1C4724530@<X0>(void *a1@<X8>)
{
  v49 = a1;
  v1 = sub_1C4EF9F68();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = sub_1C4EF9F88();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v20 = *(v9 + 8);
  v45 = v9 + 8;
  v46 = v8;
  v41 = v20;
  v20(v12, v8);
  v21 = *MEMORY[0x1E6969AB0];
  v22 = v2[13];
  v22(v7, v21, v1);
  v40 = sub_1C4EF9F78();
  v23 = v2[1];
  v23(v7, v1);
  v22(v7, v21, v1);
  v24 = v42;
  v22(v42, *MEMORY[0x1E6969A10], v1);
  v25 = v24;
  v26 = sub_1C4EF9F48();
  v39 = v27;
  LOBYTE(v8) = v28;
  v23(v25, v1);
  v29 = (v23)(v7, v1);
  if (v8)
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v29);
    v31 = v39;
    v32 = v40;
    *(&v38 - 4) = v19;
    *(&v38 - 3) = v32;
    *(&v38 - 2) = v15;
    sub_1C49BFC78(sub_1C4729C2C, (&v38 - 6), v26, v31, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  }

  *v49 = v30;
  v41(v15, v46);
  return (*(v43 + 8))(v19, v44);
}

uint64_t sub_1C47248E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EF9F68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  result = (*(v6 + 104))(v10, *MEMORY[0x1E6969A48], v5, v8);
  if (__OFSUB__(v11, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1C4724A18()
{
  v0 = sub_1C4EF9E48();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C4EF9D48();
  v10 = sub_1C4EF9D98();
  (*(v3 + 8))(v8, v0);
  [v9 setLocale_];

  sub_1C496C3A0(1162167621, 0xE400000000000000, v9);
  v11 = sub_1C4EF9BF8();
  v12 = [v9 stringFromDate_];

  v13 = sub_1C4F01138();
  return v13;
}

void sub_1C4724B80(void *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4409678(a1, a1[3]);
  (*(v8 + 104))(v13, *MEMORY[0x1E69A9458], v5);
  v15 = *v14;
  v16 = sub_1C45E1398();
  v17 = v2;
  if (v2)
  {
    (*(v8 + 8))(v13, v5);
    if (qword_1EDDFECB0 != -1)
    {
LABEL_35:
      sub_1C44064A8();
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDDFECB8);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C43F8000, v19, v20, "EntityTaggingFeaturizer: unable to query loiVisits.", v21, 2u);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    type metadata accessor for BMLocationSemanticUserSpecificPlaceType(0);
    sub_1C4729C8C(&qword_1EC0BC040, type metadata accessor for BMLocationSemanticUserSpecificPlaceType);
    v22 = sub_1C4F00F28();

    goto LABEL_31;
  }

  v23 = v16;
  (*(v8 + 8))(v13, v5);
  v24 = *(v23 + 16);
  if (!v24)
  {

    v22 = MEMORY[0x1E69E7CC8];
LABEL_31:
    *a2 = v22;
    return;
  }

  v58 = a2;
  v17 = 0;
  v22 = MEMORY[0x1E69E7CC8];
  v25 = (v23 + 72);
  v59 = v23;
  v60 = *(v23 + 16);
  while (1)
  {
    if (v17 >= *(v23 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = *(v25 - 3);
    v26 = *v25 != 14 || a2 == 0;
    if (!v26 && (a2 & 0x100000000) != 0)
    {
      v28 = *(v25 - 4);
      v61 = *(v25 - 5);
      v30 = *(v25 - 2);
      v29 = *(v25 - 1);
      if (!v22[2])
      {
        break;
      }

      sub_1C457EB4C(a2);
      if ((v31 & 1) == 0)
      {
        break;
      }
    }

LABEL_17:
    ++v17;
    v25 += 48;
    if (v24 == v17)
    {

      a2 = v58;
      goto LABEL_31;
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C457EB4C(a2);
  v32 = v22[2];
  sub_1C4434FB8();
  if (__OFADD__(v35, v36))
  {
    goto LABEL_33;
  }

  v37 = v33;
  v38 = v34;
  sub_1C456902C(&qword_1EC0BC048, &unk_1C4F23530);
  if ((sub_1C4F02458() & 1) == 0)
  {
LABEL_25:
    if (v38)
    {
      v41 = (v22[7] + 48 * v37);
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      v45 = v41[3];
      v46 = v41[4];
      sub_1C43FC224(v41);
      v48 = *(v47 + 40);
      *(v47 + 40) = 14;
      sub_1C45A23B4(v49, v50, v51, v52, v53, v48);
    }

    else
    {
      sub_1C4401D38(&v22[v37 >> 6]);
      *(v22[6] + 4 * v37) = a2;
      sub_1C43FC224((v22[7] + 48 * v37));
      *(v54 + 40) = 14;
      v55 = v22[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_34;
      }

      v22[2] = v57;
    }

    v23 = v59;
    v24 = v60;
    goto LABEL_17;
  }

  v39 = sub_1C457EB4C(a2);
  if ((v38 & 1) == (v40 & 1))
  {
    v37 = v39;
    goto LABEL_25;
  }

  type metadata accessor for BMLocationSemanticUserSpecificPlaceType(0);
  sub_1C4F029F8();
  __break(1u);
}

uint64_t sub_1C4724FA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v7 = 0x6550736F746F6850;
  }

  else
  {
    v7 = 0x6E6F73726550;
  }

  if (a3)
  {
    v8 = 0xEC0000006E6F7372;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = 0x6E6F73726570;
  if (a3)
  {
    v9 = 0x6550736F746F6870;
  }

  v14 = v9;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44CF75C(1);
  v10 = sub_1C4F01F58();
  v12 = v11;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C8190C(1uLL, a1, a2);
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F01308();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x6972616C75706F50, 0xEF6E657669477974);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v7, v8);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x6972616C75706F50, 0xEF6E657669477974);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a1, a2);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F95030);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](a1, a2);

  *a4 = v10;
  a4[1] = v12;
  a4[2] = v14;
  a4[3] = v8;
  a4[4] = v14;
  a4[5] = v8;
  return result;
}

void sub_1C4725204(char a1)
{
  v154 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v154);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v151 = v8 - v7;
  v177 = MEMORY[0x1E69E7CD0];
  v163 = a1;
  if (a1)
  {
    v9 = 0x6550736F746F6870;
  }

  else
  {
    v9 = 0x6E6F73726570;
  }

  if (a1)
  {
    v10 = 0xEC0000006E6F7372;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  *&v174[0] = v9;
  *(&v174[0] + 1) = v10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C441EB88();
  MEMORY[0x1C6940010](v11);
  v12 = v174[0];
  *&v174[0] = v9;
  *(&v174[0] + 1) = v10;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F95010);

  v13 = v174[0];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  inited[1] = xmmword_1C4F0CE60;
  inited[2] = v12;
  inited[3] = v13;
  v147 = inited;
  v15 = sub_1C47244E4();
  v16 = *(v15 + 16);
  v148 = v4;
  if (v16)
  {
    sub_1C4410B88(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0();
    v17 = *&v174[0];
    v19 = *(v4 + 16);
    v18 = v4 + 16;
    v162 = v19;
    v20 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v157 = *(v18 + 56);
    v21 = (v18 - 8);
    do
    {
      v162(v151, v20, v154);
      v22 = sub_1C4724A18();
      v24 = v23;
      (*v21)(v151, v154);
      *&v174[0] = v17;
      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        sub_1C43FCFE8(v25);
        sub_1C44CD9C0();
        v17 = *&v174[0];
      }

      v17[2] = v26 + 1;
      v27 = &v17[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v20 += v157;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v28 = 0;
  v170 = MEMORY[0x1E69E7CC0];
  v29 = v17[2];
  v30 = v17 + 5;
  while (v29 != v28)
  {
    if (v28 >= v17[2])
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      return;
    }

    ++v28;
    v32 = *(v30 - 1);
    v31 = *v30;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4724FA0(v32, v31, v163 & 1, v174);
    sub_1C440F588();
    v33 = v175;
    v34 = v176;
    v35 = swift_initStackObject();
    sub_1C4406B88(v35);
    *(v36 + 64) = v33;
    *(v36 + 72) = v34;

    sub_1C449ADBC(v35);
    v30 += 2;
  }

  v37 = 0;
  v146 = v170;
  v164 = MEMORY[0x1E69E7CC0];
  do
  {
    switch(byte_1F43D2B78[v37 + 32])
    {
      case 1:
      case 3:
        sub_1C4409C34();
        break;
      case 2:
        sub_1C44130A4();
        break;
      default:
        break;
    }

    ++v37;
    sub_1C4415EA8();
    v38 = sub_1C4F01FD8();
    v40 = v39;

    sub_1C442FCF8();
    sub_1C4724FA0(v38, v40, v41, v42);
    sub_1C440F588();
    v43 = v175;
    v44 = v176;

    v45 = swift_initStackObject();
    sub_1C4406B88(v45);
    *(v46 + 64) = v43;
    *(v46 + 72) = v44;
    sub_1C449ADBC(v46);
  }

  while (v37 != 4);
  v145 = v164;
  v47 = sub_1C47244E4();
  v48 = *(v47 + 16);
  if (v48)
  {
    sub_1C4410B88(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0();
    v49 = *&v174[0];
    v50 = v148 + 16;
    v158 = *(v148 + 16);
    v51 = v47 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
    v149 = *(v148 + 72);
    v52 = (v50 - 8);
    do
    {
      v53 = v50;
      v158(v151, v51, v154);
      v54 = sub_1C4724A18();
      v56 = v55;
      (*v52)(v151, v154);
      *&v174[0] = v49;
      v58 = *(v49 + 16);
      v57 = *(v49 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1C43FCFE8(v57);
        sub_1C44CD9C0();
        v49 = *&v174[0];
      }

      *(v49 + 16) = v58 + 1;
      v59 = v49 + 16 * v58;
      *(v59 + 32) = v54;
      *(v59 + 40) = v56;
      v51 += v149;
      --v48;
      v50 = v53;
    }

    while (v48);
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  v60 = 0;
  v165 = MEMORY[0x1E69E7CC0];
  v152 = v49;
  v155 = *(v49 + 16);
  v150 = v49 + 32;
  v61 = v163;
  while (v60 != v155)
  {
    if (v60 >= *(v49 + 16))
    {
      goto LABEL_92;
    }

    v62 = (v150 + 16 * v60);
    v64 = *v62;
    v63 = v62[1];
    v159 = v60 + 1;
    v168 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0();
    v65 = 0;
    do
    {
      v66 = 0xE500000000000000;
      v67 = 0x746867696ELL;
      switch(byte_1F43D8AE0[v65 + 32])
      {
        case 1:
          v66 = 0xE700000000000000;
          goto LABEL_38;
        case 2:
          sub_1C44130A4();
          v66 = 0xE90000000000006ELL;
          break;
        case 3:
          v66 = 0xE700000000000000;
LABEL_38:
          sub_1C4409C34();
          break;
        default:
          break;
      }

      *&v174[0] = v67;
      *(&v174[0] + 1) = v66;
      v68 = sub_1C4F01FD8();
      v70 = v69;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v68, v70);

      sub_1C442FCF8();
      sub_1C4724FA0(v71, v63, v72, v73);
      v74 = v175;
      v75 = v176;

      v77 = *(v168 + 16);
      v76 = *(v168 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1C43FCFE8(v76);
        sub_1C440424C();
        sub_1C44CD9C0();
      }

      ++v65;
      *(v168 + 16) = v77 + 1;
      v78 = v168 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v75;
    }

    while (v65 != 4);

    sub_1C449ADBC(v168);
    v61 = v163;
    v49 = v152;
    v60 = v159;
  }

  sub_1C440E1AC();
  sub_1C44170E0();

  v79 = 0;
  v80 = 0;
  v153 = v165;
  v166 = MEMORY[0x1E69E7CC0];
  do
  {
    v81 = v79;
    *(&unk_1F43D8B08 + v80 + 32);
    v82 = sub_1C4F01FD8();
    v84 = v83;

    sub_1C4724FA0(v82, v84, v61 & 1, v174);
    v156 = v174[1];
    v160 = v174[0];
    v85 = v175;
    v86 = v176;
    sub_1C440E1AC();

    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_1C4F0C890;
    *(v87 + 32) = v160;
    *(v87 + 48) = v156;
    *(v87 + 64) = v85;
    *(v87 + 72) = v86;
    sub_1C44170E0();
    sub_1C449ADBC(v88);
    v79 = 1;
    v80 = 1u;
  }

  while ((v81 & 1) == 0);
  v89 = 0;
  v90 = 0;
  v91 = MEMORY[0x1E69E7CC0];
  v169 = MEMORY[0x1E69E7CC0];
  do
  {
    v161 = v89;
    v92 = *(&unk_1F43D8B30 + v90 + 32);
    v167 = v91;
    sub_1C44CD9C0();
    v93 = 0;
    if (v92)
    {
      v94 = v84;
    }

    else
    {
      v94 = v86;
    }

    do
    {
      v95 = byte_1F43D8B58[v93 + 32];
      *&v174[0] = v94;
      *(&v174[0] + 1) = 0xE700000000000000;
      sub_1C4F01FD8();
      v97 = v96;

      switch(v95)
      {
        case 1:
        case 3:
          sub_1C4409C34();
          break;
        case 2:
          sub_1C44130A4();
          break;
        default:
          break;
      }

      v98 = sub_1C4F01FD8();
      v100 = v99;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v98, v100);

      sub_1C442FCF8();
      sub_1C4724FA0(v101, v97, v102, v103);
      v84 = v175;
      v86 = v176;

      v105 = *(v167 + 16);
      v104 = *(v167 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_1C43FCFE8(v104);
        sub_1C440424C();
        sub_1C44CD9C0();
      }

      ++v93;
      *(v167 + 16) = v105 + 1;
      v106 = v167 + 16 * v105;
      *(v106 + 32) = v84;
      *(v106 + 40) = v86;
    }

    while (v93 != 4);
    sub_1C449ADBC(v167);
    sub_1C440E1AC();
    sub_1C44170E0();
  }

  while ((v161 & 1) == 0);
  v171 = v91;
  sub_1C44CD9C0();
  v107 = 0;
  v108 = v171;
  do
  {
    v109 = 0xE500000000000000;
    v110 = 0x7065656C53;
    switch(*(&unk_1F43D6B00 + v107 + 32))
    {
      case 1:
        v109 = 0xE600000000000000;
        v110 = 0x6D6F74737543;
        break;
      case 2:
        v109 = 0xE700000000000000;
        v110 = 0x746C7561666544;
        break;
      case 3:
        break;
      case 4:
        v109 = 0xE700000000000000;
        goto LABEL_64;
      case 5:
        v109 = 0xE800000000000000;
        v110 = 0x6573696372657845;
        break;
      case 6:
        v109 = 0xE400000000000000;
        v110 = 1802661719;
        break;
      case 7:
        v110 = 0x6C616E6F73726550;
        v109 = 0xEC000000656D6954;
        break;
      case 8:
        v109 = 0xE700000000000000;
LABEL_64:
        sub_1C4409C34();
        break;
      case 9:
        v109 = 0xE600000000000000;
        v110 = 0x676E696D6147;
        break;
      case 0xA:
        v110 = 0x6E6C7566646E694DLL;
        v109 = 0xEB00000000737365;
        break;
      default:
        v110 = 0x7463657078656E55;
        v109 = 0xEA00000000006465;
        break;
    }

    *&v174[0] = v110;
    *(&v174[0] + 1) = v109;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x7375636F46, 0xE500000000000000);

    v111 = v174[0];
    v113 = *(v171 + 16);
    v112 = *(v171 + 24);
    if (v113 >= v112 >> 1)
    {
      sub_1C43FCFE8(v112);
      sub_1C440424C();
      sub_1C44CD9C0();
    }

    *(v171 + 16) = v113 + 1;
    *(v171 + 16 * v113 + 32) = v111;
    v107 += 4;
  }

  while (v107 != 36);
  v114 = 0;
  v172 = MEMORY[0x1E69E7CC0];
  v115 = (v108 + 40);
  v116 = v113 + 1;
  while (v116 != v114)
  {
    if (v114 >= *(v108 + 16))
    {
      goto LABEL_93;
    }

    ++v114;
    v118 = *(v115 - 1);
    v117 = *v115;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444FD38();
    sub_1C440F588();
    v119 = v175;
    v120 = v176;
    v121 = swift_initStackObject();
    sub_1C4406B88(v121);
    *(v122 + 64) = v119;
    *(v122 + 72) = v120;

    sub_1C449ADBC(v121);
    v115 += 2;
  }

  v144 = v172;
  sub_1C4410B88(MEMORY[0x1E69E7CC0]);
  sub_1C44CD9C0();
  v123 = *&v174[0];
  sub_1C4404E64();
  v127 = 0x6C6F6F686353;
  do
  {
    v128 = v124;
    v129 = 0xE700000000000000;
    v130 = 0x6E776F6E6B6E55;
    switch(dword_1F43D8AB8[v125 + 8])
    {
      case 0:
        break;
      case 1:
        v129 = 0xE400000000000000;
        v130 = 1701670728;
        break;
      case 2:
        v129 = 0xE400000000000000;
        v130 = 1802661719;
        break;
      case 3:
        v129 = 0xE600000000000000;
        v130 = v127;
        break;
      case 4:
        v129 = 0xE300000000000000;
        v130 = 7174471;
        break;
      default:
        v130 = v126;
        v129 = 0xEA00000000006465;
        break;
    }

    *&v174[0] = v123;
    v132 = v123[2];
    v131 = v123[3];
    if (v132 >= v131 >> 1)
    {
      sub_1C43FCFE8(v131);
      sub_1C440424C();
      sub_1C44CD9C0();
      sub_1C4404E64();
      v123 = *&v174[0];
    }

    v123[2] = v132 + 1;
    v133 = &v123[2 * v132];
    v133[4] = v130;
    v133[5] = v129;
    v124 = 1;
    v125 = 1;
  }

  while ((v128 & 1) == 0);
  v134 = 0;
  v173 = MEMORY[0x1E69E7CC0];
  v135 = v123 + 5;
  v136 = v132 + 1;
  while (v136 != v134)
  {
    if (v134 >= v123[2])
    {
      goto LABEL_94;
    }

    ++v134;
    v138 = *(v135 - 1);
    v137 = *v135;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444FD38();
    sub_1C440F588();
    v139 = v175;
    v140 = v176;
    v141 = swift_initStackObject();
    sub_1C4406B88(v141);
    *(v142 + 64) = v139;
    *(v142 + 72) = v140;

    sub_1C449ADBC(v141);
    v135 += 2;
  }

  *&v174[0] = &unk_1F43D6B70;
  sub_1C449ADBC(&unk_1F43D8A18);
  v143 = *&v174[0];
  sub_1C4D401A4(v147);
  sub_1C4D401A4(v146);
  sub_1C4D401A4(v145);
  sub_1C4D401A4(v153);
  sub_1C4D401A4(v166);
  sub_1C4D401A4(v169);
  sub_1C4D401A4(v144);
  sub_1C4D401A4(v173);
  sub_1C4D401A4(v143);
}

uint64_t sub_1C47260CC()
{
  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
  v2 = &off_1F43D6B98;
  v3 = 3;
  while (1)
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4405B08();
    v6 = isUniquelyReferenced_nonNull_native[2];
    sub_1C4434FB8();
    if (__OFADD__(v9, v10))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      sub_1C44064A8();
      swift_once();
      v39 = sub_1C4F00978();
      sub_1C442B738(v39, qword_1EDDFECB8);
      v40 = v0;
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v98 = v44;
        *v43 = 136315138;
        swift_getErrorValue();
        v45 = sub_1C4F02A38();
        v47 = sub_1C441D828(v45, v46, &v98);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Error in fetching top interaction mechanisms:  %s", v43, 0xCu);
        sub_1C440962C(v44);
        MEMORY[0x1C6942830](v44, -1, -1);
        MEMORY[0x1C6942830](v43, -1, -1);
      }

      else
      {
      }

      return isUniquelyReferenced_nonNull_native;
    }

    v11 = v7;
    v12 = v8;
    isUniquelyReferenced_nonNull_native = sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
    if (sub_1C4F02458())
    {
      v13 = sub_1C445FAA8(v5, v4);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_55;
      }

      v11 = v13;
    }

    v0 = v98;
    v96 = v2;
    if (v12)
    {
      v15 = v3;
      v16 = (v98[7] + 16 * v11);
      v17 = v16[1];
      sub_1C441B8B0(v16);
    }

    else
    {
      sub_1C4401D38(&v98[v11 >> 6]);
      sub_1C441C988();
      sub_1C441B8B0(v18);
      v19 = v98[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_47;
      }

      v15 = v3;
      v98[2] = v21;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v99 = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441C1E0();
    swift_isUniquelyReferenced_nonNull_native();
    v98 = v0;
    sub_1C445FAA8(v5, v4);
    v23 = v22;
    v24 = v0[2];
    sub_1C4434FB8();
    if (__OFADD__(v26, v27))
    {
      goto LABEL_46;
    }

    v28 = v25;
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_14:
    v31 = v15;
    if (v23)
    {

      isUniquelyReferenced_nonNull_native = v98;
      v32 = (v98[7] + 16 * v28);
      v33 = v32[1];
      sub_1C441B8B0(v32);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v98;
      sub_1C4401D38(&v98[v28 >> 6]);
      v34 = (v98[6] + 16 * v28);
      *v34 = v5;
      v34[1] = v4;
      sub_1C441B8B0((isUniquelyReferenced_nonNull_native[7] + 16 * v28));

      v35 = isUniquelyReferenced_nonNull_native[2];
      v20 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v20)
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native[2] = v36;
    }

    v2 = v96 + 2;
    v3 = v31 - 1;
    if (!v3)
    {
      v37 = *sub_1C4409678((*(v93 + 16) + 56), *(*(v93 + 16) + 80));
      v0 = 0;
      v38 = sub_1C45E110C();
      v48 = 0;
      v91 = v38;
      v92 = *(v38 + 16);
      v49 = &off_1F43D6B98;
      v50 = (v38 + 48);
      while (v92 != v48)
      {
        if (v48 >= *(v38 + 16))
        {
          goto LABEL_49;
        }

        if (v48 == 3)
        {
          goto LABEL_50;
        }

        v95 = v49;
        v97 = v48;
        v0 = *(v50 - 1);
        v51 = *v50;
        v52 = *(v50 - 2);
        v94 = v50;
        v54 = *(v49 - 1);
        v53 = *v49;
        v98 = GDInteractionMechanism.description.getter();
        v99 = v55;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](95, 0xE100000000000000);
        MEMORY[0x1C6940010](v0, v51);
        v56 = v99;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4405B08();
        v57 = isUniquelyReferenced_nonNull_native[2];
        sub_1C4434FB8();
        isUniquelyReferenced_nonNull_native = (v60 + v61);
        if (__OFADD__(v60, v61))
        {
          goto LABEL_51;
        }

        v62 = v58;
        v63 = v59;
        sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
        if (sub_1C4F02458())
        {
          v64 = sub_1C445FAA8(v54, v53);
          if ((v63 & 1) != (v65 & 1))
          {
            goto LABEL_55;
          }

          v62 = v64;
        }

        v0 = v98;
        if (v63)
        {
          v66 = (v98[7] + 16 * v62);
          v67 = v66[1];
          *v66 = v98;
          v66[1] = v56;
        }

        else
        {
          sub_1C4401D38(&v98[v62 >> 6]);
          sub_1C441C988();
          *v68 = v98;
          v68[1] = v56;
          v69 = v0[2];
          v20 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v20)
          {
            goto LABEL_53;
          }

          v0[2] = v70;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v99 = v53;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C441C1E0();

        v71 = v54;
        v72 = GDInteractionMechanism.description.getter();
        v74 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v0;
        sub_1C445FAA8(v71, v53);
        v76 = v75;
        v77 = v0[2];
        sub_1C4434FB8();
        if (__OFADD__(v79, v80))
        {
          goto LABEL_52;
        }

        v81 = v78;
        if (sub_1C4F02458())
        {
          v82 = sub_1C445FAA8(v71, v53);
          if ((v76 & 1) != (v83 & 1))
          {
            goto LABEL_55;
          }

          v81 = v82;
        }

        isUniquelyReferenced_nonNull_native = v98;
        if (v76)
        {
          v84 = (v98[7] + 16 * v81);
          v85 = v84[1];
          *v84 = v72;
          v84[1] = v74;
        }

        else
        {
          sub_1C4401D38(&v98[v81 >> 6]);
          v86 = (v98[6] + 16 * v81);
          *v86 = v71;
          v86[1] = v53;
          v87 = (isUniquelyReferenced_nonNull_native[7] + 16 * v81);
          *v87 = v72;
          v87[1] = v74;
          v88 = isUniquelyReferenced_nonNull_native[2];
          v20 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v20)
          {
            goto LABEL_54;
          }

          isUniquelyReferenced_nonNull_native[2] = v89;
        }

        v50 = v94 + 4;
        v49 = v95 + 2;
        v48 = v97 + 1;
        v38 = v91;
      }

      return isUniquelyReferenced_nonNull_native;
    }
  }

  v29 = sub_1C445FAA8(v5, v4);
  if ((v23 & 1) == (v30 & 1))
  {
    v28 = v29;
    goto LABEL_14;
  }

LABEL_55:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C472675C(uint64_t a1)
{
  v197 = sub_1C4EF9F88();
  v3 = sub_1C43FCDF8(v197);
  v198 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v196 = v8 - v7;
  v204 = sub_1C4EF9CD8();
  v9 = sub_1C43FCDF8(v204);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v200 = &v190 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v190 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v190 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v190 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v190 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v190 - v30;
  sub_1C4EF9CC8();
  v208 = MEMORY[0x1E69E7CC0];
  v205 = v1;
  v32 = *(v1 + 16);
  sub_1C4EF9CC8();
  sub_1C440D360();
  v33 = type metadata accessor for BehaviorContext();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v201 = v33;
  swift_allocObject();
  sub_1C441596C();
  sub_1C4601D10(8, 4, a1, v36, v37, v38, v39, v40, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, a1, v32);
  v42 = v41;

  if (v42 < 2.0)
  {
    v43 = MEMORY[0x1E69E7CC0];
    (*(v11 + 8))(v31, v204);
    return v43;
  }

  v199 = v15;
  v191 = v31;
  v44 = *(v205 + 24);
  LODWORD(v192) = v44;
  if (v44)
  {
    v45 = 0x6550736F746F6870;
  }

  else
  {
    v45 = 0x6E6F73726570;
  }

  if (v44)
  {
    v46 = 0xEC0000006E6F7372;
  }

  else
  {
    v46 = 0xE600000000000000;
  }

  v206 = v45;
  v207 = v46;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = sub_1C441EB88();
  MEMORY[0x1C6940010](v47);

  v49 = v206;
  v48 = v207;
  v206 = v45;
  v207 = v46;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F95010);

  v194 = v206;
  v193 = v207;
  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = v49;
  *(inited + 40) = v48;
  *(inited + 48) = sub_1C45D2400();
  *(inited + 56) = v51;
  sub_1C4EF9CC8();
  sub_1C440D360();
  v52 = v201;
  v53 = *(v201 + 12);
  v54 = *(v201 + 26);
  swift_allocObject();
  sub_1C441596C();
  sub_1C442BAAC(6, v55, v56, v57, v58, v59, v60, v61, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
  v63 = v62;

  v64 = objc_opt_self();
  v65 = [v64 featureValueWithDouble_];
  v66 = v194;
  *(inited + 64) = v65;
  *(inited + 72) = v66;
  *(inited + 80) = v193;
  *(inited + 88) = sub_1C45D2400();
  *(inited + 96) = v67;
  sub_1C4EF9CC8();
  sub_1C440D360();
  v68 = *(v52 + 48);
  v69 = *(v52 + 52);
  swift_allocObject();
  v201 = v28;
  sub_1C45D689C();
  sub_1C442BAAC(7, v70, v71, v72, v73, v74, v75, v76, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203);
  v78 = v77;

  *(inited + 104) = [v64 featureValueWithDouble_];
  sub_1C49D3A70(inited);
  type metadata accessor for EntityTaggingFeaturizer();
  v79 = sub_1C47244E4();
  v80 = 0;
  v81 = 0;
  v206 = MEMORY[0x1E69E7CC0];
  v82 = *(v79 + 16);
  v83 = v11 + 8;
  while (1)
  {
    if (v82 == v80)
    {

      sub_1C440BC90();
      type metadata accessor for PartOfDayBehaviorHistogram(0);
      v91 = v201;
      sub_1C4EF9CC8();
      sub_1C44321EC();
      sub_1C4615124();
      v93 = v92;
      v94 = *(v198 + 8);
      v198 += 8;
      v194 = v94;
      (v94)(v82, v197);
      v95 = *v83;
      v190 = v83 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v203 = v95;
      v95(v91, v204);
      v96 = 0;
      v206 = MEMORY[0x1E69E7CC0];
      v97 = *(v93 + 16);
      while (v97 != v96)
      {
        if (v96 >= *(v93 + 16))
        {
          goto LABEL_58;
        }

        sub_1C4400254();
        sub_1C4425AB4(v93 + v98);
        v99(v22);
        sub_1C43FD64C();
        sub_1C4727908(v100, v101, v102, v103);
        ++v96;
        sub_1C442C8CC();
        v104();
        sub_1C442DED4();
      }

      sub_1C440BC90();
      v105 = sub_1C47244E4();
      v106 = 0;
      v206 = MEMORY[0x1E69E7CC0];
      v107 = *(v105 + 16);
      v108 = v202;
      while (v107 != v106)
      {
        if (v106 >= *(v105 + 16))
        {
          goto LABEL_59;
        }

        sub_1C4400254();
        v109 = *(v11 + 72);
        v110 = *(v11 + 16);
        sub_1C4433324();
        v111();
        v112 = sub_1C440309C();
        sub_1C4727DB0(v112, v113, v108, v114);
        ++v106;
        sub_1C442C8CC();
        v115();
        sub_1C442DED4();
      }

      sub_1C440BC90();
      type metadata accessor for PartOfWeekBehaviorHistogram(0);
      v116 = v201;
      sub_1C4EF9CC8();
      sub_1C44321EC();
      v117 = v116;
      v118 = sub_1C4615ED8(v116, v107);
      v119 = sub_1C440896C();
      v120(v119);
      v203(v117, v204);
      v121 = 0;
      v206 = MEMORY[0x1E69E7CC0];
      v122 = *(v118 + 16);
      while (v122 != v121)
      {
        if (v121 >= *(v118 + 16))
        {
          goto LABEL_60;
        }

        sub_1C4400254();
        sub_1C4425AB4(v118 + v123);
        sub_1C4433324();
        v124();
        sub_1C43FD64C();
        sub_1C4728470(v125, v126, v127, v128);
        ++v121;
        sub_1C442C8CC();
        v129();
        sub_1C442DED4();
        v117 = v201;
      }

      sub_1C49D3A70(v206);
      sub_1C4EF9CC8();
      sub_1C44321EC();
      v130 = sub_1C4615ED8(v117, v121);
      v131 = sub_1C440896C();
      v132(v131);
      sub_1C442C8CC();
      v133();
      v134 = 0;
      v206 = MEMORY[0x1E69E7CC0];
      v135 = *(v130 + 16);
      v136 = v202;
      v137 = v199;
      while (v135 != v134)
      {
        if (v134 >= *(v130 + 16))
        {
          goto LABEL_61;
        }

        sub_1C4400254();
        sub_1C4425AB4(v130 + v138);
        v139(v137);
        v140 = sub_1C440309C();
        sub_1C472886C(v140, v141, v136, v142);
        ++v134;
        sub_1C442C8CC();
        v143();
        sub_1C442DED4();
      }

      sub_1C440BC90();
      MEMORY[0x1EEE9AC00](v144);
      v145 = v191;
      v146 = v205;
      *(&v190 - 4) = v191;
      *(&v190 - 3) = v146;
      *(&v190 - 2) = v136;
      sub_1C4723D68(sub_1C4729C4C, (&v190 - 6), &unk_1F43D6B00);
      sub_1C49D3A70(v147);
      v148 = *(v146 + 32);
      MEMORY[0x1EEE9AC00](v149);
      *(&v190 - 4) = v145;
      *(&v190 - 3) = v146;
      *(&v190 - 2) = v136;
      sub_1C4723EE0(sub_1C4729C6C, (&v190 - 6), v150);
      sub_1C49D3A70(v151);
      if (v192)
      {
        v152 = sub_1C4F02938();

        if ((v152 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      sub_1C45D2400();
      v153 = sub_1C47260CC();

      v154 = *(v153 + 16);
      if (v154)
      {
        v206 = MEMORY[0x1E69E7CC0];
        sub_1C459D810();
        v205 = v206;
        v155 = sub_1C4703354(v153);
        v157 = v156;
        v159 = v158;
        v160 = v153 + 64;
        v196 = sub_1C4577DBC();
        v81 = 0;
        v193 = v157;
        v192 = v153 + 72;
        v194 = v154;
        v195 = v153 + 64;
        while ((v155 & 0x8000000000000000) == 0 && v155 < 1 << *(v153 + 32))
        {
          v161 = v155 >> 6;
          if ((*(v160 + 8 * (v155 >> 6)) & (1 << v155)) == 0)
          {
            goto LABEL_63;
          }

          if (*(v153 + 36) != v157)
          {
            goto LABEL_64;
          }

          v198 = v157;
          LODWORD(v197) = v159;
          v162 = *(v153 + 56);
          v163 = (*(v153 + 48) + 16 * v155);
          v201 = *v163;
          v164 = v153;
          v165 = v163[1];
          v166 = (v162 + 16 * v155);
          v167 = *v166;
          v168 = v166[1];
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v200 = sub_1C45D2400();
          v199 = v169;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v170 = sub_1C4594E18();

          v172 = v205;
          v206 = v205;
          v174 = *(v205 + 16);
          v173 = *(v205 + 24);
          if (v174 >= v173 >> 1)
          {
            sub_1C43FCFE8(v173);
            sub_1C459D810();
            v172 = v206;
          }

          *(v172 + 16) = v174 + 1;
          v175 = (v172 + 40 * v174);
          v175[4] = v201;
          v175[5] = v165;
          v176 = v199;
          v175[6] = v200;
          v175[7] = v176;
          v175[8] = v170;
          v177 = 1 << *(v164 + 32);
          if (v155 >= v177)
          {
            goto LABEL_65;
          }

          v160 = v195;
          v178 = *(v195 + 8 * v161);
          if ((v178 & (1 << v155)) == 0)
          {
            goto LABEL_66;
          }

          v153 = v164;
          v205 = v172;
          if (*(v164 + 36) != v198)
          {
            goto LABEL_67;
          }

          v179 = v178 & (-2 << (v155 & 0x3F));
          if (v179)
          {
            v177 = __clz(__rbit64(v179)) | v155 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v180 = v161 << 6;
            v181 = v161 + 1;
            v182 = (v192 + 8 * v161);
            while (v181 < (v177 + 63) >> 6)
            {
              v184 = *v182++;
              v183 = v184;
              v180 += 64;
              ++v181;
              if (v184)
              {
                sub_1C4410284(v171, v198);
                v177 = __clz(__rbit64(v183)) + v180;
                goto LABEL_51;
              }
            }

            sub_1C4410284(v171, v198);
          }

LABEL_51:
          v159 = 0;
          ++v81;
          v155 = v177;
          v157 = v193;
          if (v81 == v194)
          {

            v185 = v205;
            goto LABEL_54;
          }
        }

        goto LABEL_62;
      }

      v185 = MEMORY[0x1E69E7CC0];
LABEL_54:
      sub_1C49D3A70(v185);
LABEL_55:
      v43 = v208;
      v203(v191, v204);
      return v43;
    }

    if (v80 >= *(v79 + 16))
    {
      break;
    }

    sub_1C4400254();
    v84 = *(v11 + 72);
    v85 = *(v11 + 16);
    sub_1C4433324();
    v86();
    sub_1C43FD64C();
    sub_1C4727548(v87, v88, v89, v90);
    ++v80;
    (*v83)(v25, &v208);
    sub_1C442DED4();
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);

  sub_1C442C8CC();
  v189(v187, v188);

  __break(1u);
  return result;
}

id sub_1C4727548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a4;
  v67 = sub_1C4EF9CD8();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EntityTaggingFeaturizer();
  v69 = a1;
  v11 = sub_1C4724A18();
  sub_1C4724FA0(v11, v12, *(a2 + 24), &v71);
  v14 = v71;
  v13 = v72;
  v61 = v73;
  v68 = v74;
  v63 = v76;
  v64 = v75;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0C890;
  *(v15 + 32) = v14;
  v62 = v13;
  *(v15 + 40) = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v15 + 48) = sub_1C45D2400();
  *(v15 + 56) = v16;
  v17 = *(a2 + 16);
  v60 = *(v7 + 16);
  v70 = v7 + 16;
  v57 = v10;
  v18 = v67;
  v60(v10, a1, v67);
  v71 = 0;
  LOWORD(v72) = 256;
  v19 = type metadata accessor for BehaviorContext();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(3, 0, a3, v22, v23, v24, v25, v26, v57, v17, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v28 = v27;

  v29 = objc_opt_self();
  v59 = v29;
  v30 = [v29 featureValueWithDouble_];
  v31 = v61;
  *(v15 + 64) = v30;
  *(v15 + 72) = v31;
  *(v15 + 80) = v68;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v15 + 88) = sub_1C45D2400();
  *(v15 + 96) = v32;
  v33 = v57;
  v34 = v60;
  v60(v57, v69, v18);
  v71 = 0;
  LOWORD(v72) = 256;
  v35 = *(v19 + 48);
  v36 = *(v19 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(3, 1, a3, v37, v38, v39, v40, v41, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v43 = v42;

  *(v15 + 104) = [v29 featureValueWithDouble_];

  v44 = v63;
  *(v15 + 112) = v64;
  *(v15 + 120) = v44;
  *(v15 + 128) = sub_1C45D2400();
  *(v15 + 136) = v45;
  v46 = sub_1C45979B8(&unk_1F43D6A60);
  v34(v33, v69, v67);
  v71 = 0;
  LOWORD(v72) = 256;
  v47 = *(v19 + 48);
  v48 = *(v19 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(v46, 3, a3, v49, v50, v51, v52, v53, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v55 = v54;

  result = [v59 featureValueWithDouble_];
  *(v15 + 144) = result;
  *v65 = v15;
  return result;
}

id sub_1C4727908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v78 = a4;
  v74 = a3;
  v81 = sub_1C4EF9CD8();
  v83 = *(v81 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EF9F88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartOfDayBehaviorHistogram(0);
  sub_1C47241D8(v13);
  v14 = sub_1C46150A0();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v84 = v14;
  v85 = v16;
  sub_1C4415EA8();
  v17 = sub_1C4F01FD8();
  v19 = v18;

  type metadata accessor for EntityTaggingFeaturizer();
  sub_1C4724FA0(v17, v19, *(a2 + 24), &v84);
  v21 = v84;
  v20 = v85;
  v73 = v86;
  v80 = v87;
  v76 = v89;
  v77 = v88;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0C890;
  *(v22 + 32) = v21;
  v75 = v20;
  *(v22 + 40) = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = v74;
  *(v22 + 48) = sub_1C45D2400();
  *(v22 + 56) = v24;
  v25 = *(a2 + 16);
  v26 = *(v83 + 16);
  v71 = a1;
  v72 = v26;
  v82 = v25;
  v83 += 16;
  v70 = v8;
  v27 = a1;
  v28 = a1;
  v29 = v81;
  v26(v8, v28, v81);
  v84 = 0;
  LOWORD(v85) = 256;
  v30 = type metadata accessor for BehaviorContext();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(1, 0, v23, v33, v34, v35, v36, v37, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v39 = v38;

  v40 = objc_opt_self();
  v41 = [v40 featureValueWithDouble_];
  v42 = v73;
  *(v22 + 64) = v41;
  *(v22 + 72) = v42;
  *(v22 + 80) = v80;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v22 + 88) = sub_1C45D2400();
  *(v22 + 96) = v43;
  v44 = v70;
  v45 = v27;
  v46 = v72;
  v72(v70, v45, v29);
  v84 = 0;
  LOWORD(v85) = 256;
  v47 = *(v30 + 48);
  v48 = *(v30 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(1, 1, v23, v49, v50, v51, v52, v53, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v55 = v54;

  *(v22 + 104) = [v40 featureValueWithDouble_];

  v56 = v76;
  *(v22 + 112) = v77;
  *(v22 + 120) = v56;
  v57 = v23;
  *(v22 + 128) = sub_1C45D2400();
  *(v22 + 136) = v58;
  v59 = sub_1C45979B8(&unk_1F43D6A88);
  v46(v44, v71, v81);
  v84 = 0;
  LOWORD(v85) = 256;
  v60 = *(v30 + 48);
  v61 = *(v30 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(v59, 3, v57, v62, v63, v64, v65, v66, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v68 = v67;

  result = [v40 featureValueWithDouble_];
  *(v22 + 144) = result;
  *v78 = v22;
  return result;
}

void sub_1C4727DB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v80 = a3;
  v65 = a4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v63 - v8;
  v10 = sub_1C4EF9CD8();
  v85 = *(v10 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = sub_1C4EF9F88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PartOfDayBehaviorHistogram(0);
  v82 = a2;
  sub_1C47241D8(v22);
  v92 = a1;
  v74 = v23;
  sub_1C4615124();
  v25 = v24;
  v26 = *(v19 + 8);
  v75 = v22;
  v77 = v18;
  v76 = v19 + 8;
  v73 = v26;
  v26(v22, v18);
  v27 = v25;
  sub_1C446D094(v25, v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    goto LABEL_14;
  }

  sub_1C4EF9BE8();
  v28 = v85;
  v83 = *(v85 + 8);
  v84 = v85 + 8;
  v83(v9, v10);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348C0(v25);
    v27 = v62;
  }

  if (!*(v27 + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v29 = v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  (*(v28 + 24))(v29, v17, v10);
  type metadata accessor for EntityTaggingFeaturizer();
  v72 = sub_1C4724A18();
  v31 = *(v27 + 16);
  if (v31)
  {
    v81 = v30;
    v63 = v27;
    v64 = v17;
    v92 = v10;
    v99 = MEMORY[0x1E69E7CC0];
    sub_1C459D810();
    v32 = v99;
    v71 = objc_opt_self();
    HIDWORD(v70) = *(v82 + 24);
    v69 = *(v82 + 16);
    v68 = *(v28 + 16);
    v85 = v28 + 16;
    v67 = *(v28 + 72);
    do
    {
      v90 = v32;
      v91 = v31;
      v33 = v78;
      v34 = v68;
      v68(v78, v29, v92);
      v35 = v75;
      sub_1C47241D8(v75);
      v36 = sub_1C46150A0();
      v38 = v37;
      v73(v35, v77);
      v93 = v36;
      v94 = v38;
      sub_1C4415EA8();
      v39 = sub_1C4F01FD8();
      v41 = v40;

      v97 = v72;
      v98 = v81;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v39, v41);

      sub_1C4724FA0(v97, v98, SBYTE4(v70), &v93);
      v88 = v96;
      v89 = v95;

      v42 = v80;
      v43 = sub_1C45D2400();
      v86 = v44;
      v87 = v43;
      v45 = sub_1C45979B8(&unk_1F43D6AB0);
      v46 = v92;
      v34(v79, v33, v92);
      v93 = 0;
      LOWORD(v94) = 256;
      v47 = type metadata accessor for BehaviorContext();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      sub_1C45D689C();
      sub_1C4601D10(v45, 3, v42, v50, v51, v52, v53, v54, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
      v32 = v90;
      v56 = v55;

      v57 = [v71 featureValueWithDouble_];
      v83(v33, v46);
      v99 = v32;
      v58 = *(v32 + 16);
      if (v58 >= *(v32 + 24) >> 1)
      {
        sub_1C459D810();
        v32 = v99;
      }

      *(v32 + 16) = v58 + 1;
      v59 = (v32 + 40 * v58);
      v60 = v88;
      v59[4] = v89;
      v59[5] = v60;
      v61 = v86;
      v59[6] = v87;
      v59[7] = v61;
      v59[8] = v57;
      v29 += v67;
      v31 = v91 - 1;
    }

    while (v91 != 1);
    v83(v64, v92);
  }

  else
  {

    v83(v17, v10);

    v32 = MEMORY[0x1E69E7CC0];
  }

  *v65 = v32;
}

id sub_1C4728470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a4;
  v69 = sub_1C4EF9CD8();
  v72 = *(v69 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartOfWeekBehaviorHistogram(0);
  v73 = sub_1C461E714();
  v74 = v10;
  sub_1C4415EA8();
  v11 = sub_1C4F01FD8();
  v13 = v12;

  type metadata accessor for EntityTaggingFeaturizer();
  sub_1C4724FA0(v11, v13, *(a2 + 24), &v73);
  v15 = v73;
  v14 = v74;
  v63 = v75;
  v70 = v76;
  v65 = v78;
  v66 = v77;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0C890;
  *(v16 + 32) = v15;
  v64 = v14;
  *(v16 + 40) = v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v16 + 48) = sub_1C45D2400();
  *(v16 + 56) = v17;
  v18 = *(a2 + 16);
  v71 = *(v72 + 16);
  v72 += 16;
  v60 = v9;
  v19 = a1;
  v62 = a1;
  v20 = a1;
  v21 = v69;
  v71(v9, v20, v69);
  v73 = 0;
  LOWORD(v74) = 256;
  v22 = type metadata accessor for BehaviorContext();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(4, 0, a3, v25, v26, v27, v28, v29, v59, v60, v18, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v31 = v30;

  v32 = objc_opt_self();
  v33 = [v32 featureValueWithDouble_];
  v34 = v63;
  *(v16 + 64) = v33;
  *(v16 + 72) = v34;
  *(v16 + 80) = v70;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v16 + 88) = sub_1C45D2400();
  *(v16 + 96) = v35;
  v36 = v60;
  v71(v60, v19, v21);
  v73 = 0;
  LOWORD(v74) = 256;
  v37 = *(v22 + 48);
  v38 = *(v22 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(4, 1, a3, v39, v40, v41, v42, v43, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v45 = v44;

  *(v16 + 104) = [v32 featureValueWithDouble_];

  v46 = v65;
  *(v16 + 112) = v66;
  *(v16 + 120) = v46;
  *(v16 + 128) = sub_1C45D2400();
  *(v16 + 136) = v47;
  v48 = sub_1C45979B8(&unk_1F43D6AD8);
  v71(v36, v62, v69);
  v73 = 0;
  LOWORD(v74) = 256;
  v49 = *(v22 + 48);
  v50 = *(v22 + 52);
  swift_allocObject();
  sub_1C45D689C();
  sub_1C4601D10(v48, 3, a3, v51, v52, v53, v54, v55, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v57 = v56;

  result = [v32 featureValueWithDouble_];
  *(v16 + 144) = result;
  *v67 = v16;
  return result;
}

void sub_1C472886C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v86 = a3;
  v70 = a4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v67 - v8;
  v10 = sub_1C4EF9CD8();
  v92 = *(v10 - 8);
  v11 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  v18 = sub_1C4EF9F88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PartOfDayBehaviorHistogram(0);
  v89 = a2;
  sub_1C47241D8(v22);
  v98 = a1;
  v80 = v23;
  sub_1C4615124();
  v25 = v24;
  v26 = *(v19 + 8);
  v81 = v22;
  v83 = v18;
  v82 = v19 + 8;
  v79 = v26;
  v26(v22, v18);
  v27 = v25;
  sub_1C446D094(v25, v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    goto LABEL_14;
  }

  sub_1C4EF9BE8();
  v28 = v92;
  v90 = *(v92 + 8);
  v91 = v92 + 8;
  v90(v9, v10);
  v29 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C48348C0(v25);
    v27 = v66;
  }

  if (!*(v27 + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v30 = v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  (*(v28 + 24))(v30, v17, v10);
  type metadata accessor for PartOfWeekBehaviorHistogram(0);
  v99 = sub_1C461E714();
  v100 = v31;
  v78 = sub_1C4415EA8();
  v77 = sub_1C4F01FD8();
  v33 = v32;

  v34 = *(v27 + 16);
  if (v34)
  {
    v87 = v33;
    v68 = v27;
    v69 = v17;
    v88 = v10;
    v105 = MEMORY[0x1E69E7CC0];
    sub_1C459D810();
    v35 = v105;
    type metadata accessor for EntityTaggingFeaturizer();
    v76 = objc_opt_self();
    HIDWORD(v75) = *(v89 + 24);
    v74 = *(v89 + 16);
    v73 = *(v29 + 16);
    v92 = v29 + 16;
    v72 = *(v29 + 72);
    do
    {
      v96 = v30;
      v97 = v35;
      v98 = v34;
      v36 = v84;
      v37 = v30;
      v38 = v88;
      v39 = v73;
      v73(v84, v37, v88);
      v40 = v81;
      sub_1C47241D8(v81);
      v41 = sub_1C46150A0();
      v43 = v42;
      v79(v40, v83);
      v99 = v41;
      v100 = v43;
      v44 = sub_1C4F01FD8();
      v46 = v45;

      v103 = v77;
      v104 = v87;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v44, v46);

      sub_1C4724FA0(v103, v104, SBYTE4(v75), &v99);
      v94 = v102;
      v95 = v101;

      v47 = v86;
      v48 = sub_1C45D2400();
      v93 = v49;
      v50 = sub_1C45979B8(&unk_1F43D6B48);
      v39(v85, v36, v38);
      v99 = 0;
      LOWORD(v100) = 256;
      v51 = type metadata accessor for BehaviorContext();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      sub_1C45D689C();
      sub_1C4601D10(v50, 3, v47, v54, v55, v56, v57, v58, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      v35 = v97;
      v60 = v59;

      v61 = [v76 featureValueWithDouble_];
      v90(v36, v38);
      v105 = v35;
      v62 = *(v35 + 16);
      if (v62 >= *(v35 + 24) >> 1)
      {
        sub_1C459D810();
        v35 = v105;
      }

      *(v35 + 16) = v62 + 1;
      v63 = (v35 + 40 * v62);
      v64 = v94;
      v63[4] = v95;
      v63[5] = v64;
      v65 = v93;
      v63[6] = v48;
      v63[7] = v65;
      v63[8] = v61;
      v30 = v96 + v72;
      v34 = v98 - 1;
    }

    while (v98 != 1);
    v90(v69, v88);
  }

  else
  {

    v90(v17, v10);

    v35 = MEMORY[0x1E69E7CC0];
  }

  *v70 = v35;
}

uint64_t sub_1C4728F7C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v64 = a5;
  v9 = sub_1C4EF9CD8();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = *a1;
  (*(v14 + 16))(&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v66 = 0;
  LOWORD(v67) = 256;
  sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
  v15 = (sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) - 8);
  v16 = *(*v15 + 72);
  v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0D130;
  v19 = v18 + v17;
  v20 = v18 + v17 + v15[14];
  v21 = *MEMORY[0x1E69A9438];
  v22 = sub_1C4EFDAB8();
  (*(*(v22 - 8) + 104))(v19, v21, v22);
  *v20 = sub_1C463C1B4(v13);
  *(v20 + 8) = v23;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = v13 | 0x100000000;
  *(v20 + 40) = 4;
  sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
  sub_1C4729C8C(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
  sub_1C4F00F28();
  v24 = type metadata accessor for BehaviorContext();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1C45D689C();
  v28 = v27;
  type metadata accessor for EntityTaggingFeaturizer();
  v66 = sub_1C463C1B4(v13);
  v67 = v29;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](0x7375636F46, 0xE500000000000000);

  sub_1C4724FA0(v66, v67, *(a3 + 24), &v66);
  v30 = v66;
  v31 = v67;
  v32 = v69;
  v63 = v70;
  v61 = v68;
  v62 = v71;

  sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C4F0C890;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v33 + 48) = sub_1C45D2400();
  *(v33 + 56) = v34;
  v35 = *(a3 + 16);
  sub_1C4601D10(11, 0, a4, v28, v36, v37, v38, v39, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v41 = v40;
  v42 = objc_opt_self();
  v43 = [v42 featureValueWithDouble_];
  v44 = v61;
  *(v33 + 64) = v43;
  *(v33 + 72) = v44;
  *(v33 + 80) = v32;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v33 + 88) = sub_1C45D2400();
  *(v33 + 96) = v45;
  sub_1C4601D10(11, 1, a4, v28, v46, v47, v48, v49, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  *(v33 + 104) = [v42 featureValueWithDouble_];

  v50 = v62;
  *(v33 + 112) = v63;
  *(v33 + 120) = v50;
  *(v33 + 128) = sub_1C45D2400();
  *(v33 + 136) = v51;
  v52 = sub_1C45979B8(&unk_1F43D8B80);
  sub_1C4601D10(v52, 3, a4, v28, v53, v54, v55, v56, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v58 = v57;

  *(v33 + 144) = [v42 featureValueWithDouble_];

  *v64 = v33;
  return result;
}

void sub_1C47293F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_1C4EF9CD8();
  v12 = *(*(v11 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  if (*(a1 + 40) == 14)
  {
    v16 = *(a1 + 32);
    v81 = a3;
    v17 = *(a1 + 24);
    v78 = *(a1 + 16);
    v79 = v16;
    v20 = a1;
    v19 = *a1;
    v18 = *(v20 + 8);
    (*(v14 + 16))(&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v15);
    v84 = 0;
    LOWORD(v85) = 256;
    sub_1C456902C(&qword_1EC0BAEA0, &qword_1C4F17BA0);
    v21 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    v82 = a5;
    v22 = v21 - 8;
    v23 = *(*(v21 - 8) + 72);
    v24 = *(*(v21 - 8) + 80);
    v83 = v5;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C4F0D130;
    v27 = v26 + v25;
    v28 = *(v22 + 56);
    v80 = a4;
    v29 = v27 + v28;
    v30 = *MEMORY[0x1E69A9458];
    v31 = sub_1C4EFDAB8();
    (*(*(v31 - 8) + 104))(v27, v30, v31);
    *v29 = v19;
    *(v29 + 8) = v18;
    v33 = v78;
    v32 = v79;
    *(v29 + 16) = v78;
    *(v29 + 24) = v17;
    *(v29 + 32) = v32;
    *(v29 + 40) = 14;
    sub_1C45D7F78(v19, v18, v33, v17, v32, 14);
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C4729C8C(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
    sub_1C4F00F28();
    v34 = type metadata accessor for BehaviorContext();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_1C45D689C();
    v38 = v37;
    type metadata accessor for EntityTaggingFeaturizer();
    v39 = sub_1C463C120();
    v40 = v81;
    sub_1C4724FA0(v39, v41, *(v81 + 24), &v84);
    v42 = v84;
    v43 = v85;
    v44 = v87;
    v79 = v88;
    v77 = v86;
    v78 = v89;

    sub_1C456902C(&qword_1EC0B8880, &unk_1C4F0DC70);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1C4F0C890;
    *(v45 + 32) = v42;
    *(v45 + 40) = v43;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = v80;
    *(v45 + 48) = sub_1C45D2400();
    *(v45 + 56) = v47;
    v48 = *(v40 + 16);
    sub_1C4601D10(5, 0, v46, v38, v49, v50, v51, v52, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    v54 = v53;
    v55 = objc_opt_self();
    v56 = [v55 featureValueWithDouble_];
    v57 = v77;
    *(v45 + 64) = v56;
    *(v45 + 72) = v57;
    *(v45 + 80) = v44;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v45 + 88) = sub_1C45D2400();
    *(v45 + 96) = v58;
    sub_1C4601D10(5, 1, v46, v38, v59, v60, v61, v62, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    *(v45 + 104) = [v55 featureValueWithDouble_];

    v63 = v78;
    *(v45 + 112) = v79;
    *(v45 + 120) = v63;
    *(v45 + 128) = sub_1C45D2400();
    *(v45 + 136) = v64;
    v65 = sub_1C45979B8(&unk_1F43D8BA8);
    a5 = v82;
    sub_1C4601D10(v65, 3, v46, v38, v66, v67, v68, v69, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    v71 = v70;

    *(v45 + 144) = [v55 featureValueWithDouble_];
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v72 = sub_1C4F00978();
    sub_1C442B738(v72, qword_1EDDFECB8);
    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CD8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1C43F8000, v73, v74, "EntityTaggingFeaturizer: Unable to get location.", v75, 2u);
      MEMORY[0x1C6942830](v75, -1, -1);
    }

    v45 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v45;
}

void *sub_1C472994C()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1C440962C(v0 + 5);
  sub_1C4729D44(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23EntityTaggingFeaturizer____lazy_storage___calendar);
  return v0;
}

uint64_t sub_1C472998C()
{
  sub_1C472994C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityTaggingFeaturizer()
{
  result = qword_1EDDE24F8;
  if (!qword_1EDDE24F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4729A38()
{
  sub_1C4630784();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingFeaturizer.FeaturizedEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4729BD8()
{
  result = qword_1EC0BC038;
  if (!qword_1EC0BC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC038);
  }

  return result;
}

uint64_t sub_1C4729C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4729CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4729D44(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1C4729DAC(uint64_t a1)
{
  v5 = *v1;
  v6 = sub_1C4F00008();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4406BA0();
  v1[3] = a1;
  v12 = sub_1C4EFEF48();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  sub_1C4EFEF38();
  if (v2)
  {

    v15 = v1[3];

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C4EFFFF8();
    sub_1C4EFFEC8();
    sub_1C472AB3C();
    v17 = sub_1C4EFEF18();
    (*(v9 + 8))(v3, v6);

    v1[2] = v17;
  }

  return v1;
}

uint64_t sub_1C4729FCC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = v4;
  v7 = v3;
  v11 = sub_1C4EFFE98();
  v12 = sub_1C43FCDF8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4406BA0();
  if (a3[2])
  {
    v30 = v15;
    v16 = a3[4];
    v17 = a3[5];
    v18 = *(v3 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4C0C2D8(v16, v17, v26);
    if (!v6)
    {

      v26[0] = v27;
      v26[1] = v28;
      v27 = v29;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C472A290(a1, a2, a3, v26);
      v19 = *(v7 + 16);
      swift_unknownObjectRetain();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFFE88();
      sub_1C4EFFDD8();
      (*(v30 + 8))(v5, v11);
      swift_unknownObjectRelease();

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1C4F00978();
    sub_1C442B738(v21, qword_1EDDFECB8);
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C43F8000, v22, v23, "No feature view dependencies specified. Stopping since there's nowhere to retrieve features from", v24, 2u);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    sub_1C472AABC();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1C472A290(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v87 = a1;
  v9 = a4[1];
  v82 = *a4;
  v81 = v9;
  v83 = a4[2];
  v10 = sub_1C4778840();
  v11 = sub_1C4428DA0();
  v84 = v4;
  v88 = a2;
  if (v11)
  {
    v12 = v11;
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    if (v12 < 0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v91 = a3;
    v13 = 0;
    v14 = __dst[0];
    do
    {
      v15 = v14;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6940F90](v13, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v16 featureName];
      v19 = sub_1C4F01138();
      v21 = v20;

      v14 = v15;
      __dst[0] = v15;
      v22 = *(v15 + 16);
      if (v22 >= *(v14 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v14 = __dst[0];
      }

      ++v13;
      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
    }

    while (v12 != v13);

    v6 = v84;
    a3 = v91;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v85 = v14;
  v25 = *(a3 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C459E008(0, v25, 0);
    v27 = v85;
    v26 = __dst[0];
    v28 = (a3 + 40);
    v86 = xmmword_1C4F0D130;
    do
    {
      v29 = *v28;
      v91 = *(v28 - 1);
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v30 = swift_allocObject();
      *(v30 + 16) = v86;
      v31 = v88;
      *(v30 + 32) = v87;
      *(v30 + 40) = v31;
      __dst[0] = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v33 >= v32 >> 1)
      {
        v24 = sub_1C459E008((v32 > 1), v33 + 1, 1);
        v27 = v85;
        v26 = __dst[0];
      }

      *(v26 + 16) = v33 + 1;
      v34 = v26 + 40 * v33;
      *(v34 + 32) = v91;
      *(v34 + 40) = v29;
      *(v34 + 48) = v27;
      *(v34 + 56) = v30;
      *(v34 + 64) = 0;
      v28 += 2;
      --v25;
    }

    while (v25);
    v6 = v84;
  }

  v35 = *(v83 + 16);
  MEMORY[0x1EEE9AC00](v24);
  v75[16] = 0;
  v76 = v26;
  v77 = v82;
  v78 = v81;
  v79 = v36;
  v80 = 0;
  v37 = sub_1C49A5498(sub_1C470CD1C, v75);

  v38 = 0;
  v91 = *(v37 + 16);
  v5 = MEMORY[0x1E69E7CC8];
  v39 = 32;
  *&v86 = v37;
  v83 = 32;
LABEL_19:
  for (i = v39 + 80 * v38; ; i += 80)
  {
    if (v91 == v38)
    {

      if (qword_1EDDFECB0 == -1)
      {
LABEL_39:
        v68 = sub_1C4F00978();
        sub_1C442B738(v68, qword_1EDDFECB8);
        v69 = v88;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v43 = sub_1C4F00968();
        v70 = sub_1C4F01CC8();

        if (os_log_type_enabled(v43, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          __dst[0] = v72;
          *v71 = 134218242;
          *(v71 + 4) = v5[2];

          *(v71 + 12) = 2080;
          *(v71 + 14) = sub_1C441D828(v87, v69, __dst);
          _os_log_impl(&dword_1C43F8000, v43, v70, "EntityTaggingInferenceCore: Found %ld features for Entity: %s", v71, 0x16u);
          sub_1C440962C(v72);
          MEMORY[0x1C6942830](v72, -1, -1);
          MEMORY[0x1C6942830](v71, -1, -1);
        }

        else
        {
        }

        v73 = sub_1C4EFFA78();
        if (!v6)
        {
          v43 = v73;
        }

        return v43;
      }

LABEL_49:
      swift_once();
      goto LABEL_39;
    }

    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    memcpy(__dst, (v37 + i), 0x49uLL);
    sub_1C470CD44(__dst, &v89);
    v41 = objc_autoreleasePoolPush();
    v42 = sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v43 = v42;
    v44 = sub_1C4F01D38();
    if (v6)
    {

      objc_autoreleasePoolPop(v41);
      sub_1C470CDA0(__dst);
      return v43;
    }

    v45 = v44;
    v46 = v5;
    v47 = __dst[2];
    v48 = __dst[3];
    objc_autoreleasePoolPop(v41);
    if (v45)
    {
      break;
    }

    v49 = v48;
    v5 = v46;
    v50 = sub_1C445FAA8(v47, v49);
    if (v51)
    {
      v58 = v50;
      swift_isUniquelyReferenced_nonNull_native();
      v89 = v46;
      v59 = v46[3];
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v5 = v89;
      v60 = *(v89[6] + 16 * v58 + 8);

      sub_1C4F02478();
      sub_1C470CDA0(__dst);
      v37 = v86;
      v39 = v83;
LABEL_37:
      ++v38;
      goto LABEL_19;
    }

    sub_1C470CDA0(__dst);
    ++v38;
    v37 = v86;
  }

  LODWORD(v84) = swift_isUniquelyReferenced_nonNull_native();
  v89 = v46;
  v52 = sub_1C445FAA8(v47, v48);
  if (__OFADD__(v46[2], (v53 & 1) == 0))
  {
    __break(1u);
    goto LABEL_51;
  }

  v54 = v52;
  v55 = v53;
  sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
  if ((sub_1C4F02458() & 1) == 0)
  {
    v39 = v83;
LABEL_32:
    v61 = v89;
    if (v55)
    {
      v62 = v89[7];
      v63 = *(v62 + 8 * v54);
      *(v62 + 8 * v54) = v45;

      sub_1C470CDA0(__dst);
      v5 = v61;
LABEL_36:
      v37 = v86;
      goto LABEL_37;
    }

    v89[(v54 >> 6) + 8] |= 1 << v54;
    v64 = (v61[6] + 16 * v54);
    *v64 = v47;
    v64[1] = v48;
    *(v61[7] + 8 * v54) = v45;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C470CDA0(__dst);
    v65 = v61[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (!v66)
    {
      v5 = v61;
      v61[2] = v67;
      goto LABEL_36;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v56 = sub_1C445FAA8(v47, v48);
  v39 = v83;
  if ((v55 & 1) == (v57 & 1))
  {
    v54 = v56;
    goto LABEL_32;
  }

LABEL_52:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

unint64_t sub_1C472AABC()
{
  result = qword_1EC0BC050;
  if (!qword_1EC0BC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC050);
  }

  return result;
}

uint64_t sub_1C472AB10(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1C472AB3C()
{
  result = qword_1EDDEFEA0;
  if (!qword_1EDDEFEA0)
  {
    sub_1C4EFFEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFEA0);
  }

  return result;
}

uint64_t sub_1C472ABA4(void *a1)
{
  v1 = [a1 pruner];
  v4[4] = sub_1C472ACF0;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C45B7938;
  v4[3] = &unk_1F43EA740;
  v2 = _Block_copy(v4);

  [v1 deleteEventsPassingTest_];

  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C472AC94(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 eventBody];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 hasEntityIdentifier];

  return v3;
}

void sub_1C472ACF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v40 = a4;
  v41 = a5;
  v38 = a1;
  v39 = a3;
  v36 = sub_1C4EF9CD8();
  v8 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = (v9 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = 0;
  v37 = a2;
  v17 = v40;
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v16 << 6);
    if (*(*(a2 + 56) + 8 * v20) >= a6)
    {
      v21 = (*(a2 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C472AF54();
      v25 = sub_1C4F019C8();
      v26 = objc_allocWithZone(MEMORY[0x1E698EC50]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v27 = v38;
      v28 = v38;
      v29 = sub_1C472B5E0(v27, v24, v25, v39, v17);
      v30 = [v41 source];
      v31 = v35;
      sub_1C4EF9CC8();
      sub_1C4EF9AD8();
      v33 = v32;
      (*v34)(v31, v36);
      [v30 sendEvent:v29 timestamp:v33];

      a2 = v37;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C472AF54()
{
  v0 = sub_1C4F00FF8();
  v2 = v1;
  v3 = v0 == 0x7465736E75 && v1 == 0xE500000000000000;
  if (v3 || (v4 = v0, (sub_1C43FEC00() & 1) != 0))
  {

    return 1;
  }

  v6 = v4 == 0x6E776F6E6B6E75 && v2 == 0xE700000000000000;
  if (v6 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_17;
  }

  v7 = v4 == 0x726568746FLL && v2 == 0xE500000000000000;
  if (v7 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_17;
  }

  v8 = v4 == 0x666C6573796DLL && v2 == 0xE600000000000000;
  if (v8 || (sub_1C4419490() & 1) != 0)
  {

    return 2;
  }

  else
  {
    v9 = v4 == 0x796C696D6166 && v2 == 0xE600000000000000;
    if (v9 || (sub_1C4419490() & 1) != 0)
    {

      return 3;
    }

    else
    {
      v10 = v4 == 0x746E65726170 && v2 == 0xE600000000000000;
      if (v10 || (sub_1C4419490() & 1) != 0)
      {

        return 7;
      }

      else
      {
        v11 = v4 == 0x726568746F6DLL && v2 == 0xE600000000000000;
        if (v11 || (sub_1C4419490() & 1) != 0)
        {

          return 8;
        }

        else
        {
          v12 = v4 == 0x726568746166 && v2 == 0xE600000000000000;
          if (v12 || (sub_1C4419490() & 1) != 0)
          {

            return 9;
          }

          else
          {
            v13 = v4 == 0x676E696C626973 && v2 == 0xE700000000000000;
            if (v13 || (sub_1C43FEC00() & 1) != 0)
            {

              return 10;
            }

            else
            {
              v14 = v4 == 0x726568746F7262 && v2 == 0xE700000000000000;
              if (v14 || (sub_1C43FEC00() & 1) != 0)
              {

                return 11;
              }

              else
              {
                v15 = v4 == 0x726574736973 && v2 == 0xE600000000000000;
                if (v15 || (sub_1C4419490() & 1) != 0)
                {

                  return 12;
                }

                else
                {
                  v16 = v4 == 0x726150646E617267 && v2 == 0xEB00000000746E65;
                  if (v16 || (sub_1C43FEC00() & 1) != 0)
                  {

                    return 18;
                  }

                  else
                  {
                    v17 = v4 == 0x746F6D646E617267 && v2 == 0xEB00000000726568;
                    if (v17 || (sub_1C43FEC00() & 1) != 0)
                    {

                      return 19;
                    }

                    else
                    {
                      v18 = v4 == 0x746166646E617267 && v2 == 0xEB00000000726568;
                      if (v18 || (sub_1C43FEC00() & 1) != 0)
                      {

                        return 20;
                      }

                      else
                      {
                        v19 = v4 == 0x646C696843796DLL && v2 == 0xE700000000000000;
                        if (v19 || (sub_1C43FEC00() & 1) != 0 || (v4 == 0x646C696863 ? (v20 = v2 == 0xE500000000000000) : (v20 = 0), v20 || (sub_1C43FEC00() & 1) != 0))
                        {

                          return 4;
                        }

                        else
                        {
                          v21 = v4 == 7237491 && v2 == 0xE300000000000000;
                          if (v21 || (sub_1C43FEC00() & 1) != 0)
                          {

                            return 6;
                          }

                          else
                          {
                            v22 = v4 == 0x7265746867756164 && v2 == 0xE800000000000000;
                            if (v22 || (sub_1C43FEC00() & 1) != 0)
                            {

                              return 5;
                            }

                            else
                            {
                              v23 = v4 == 0x72656E74726170 && v2 == 0xE700000000000000;
                              if (v23 || (sub_1C43FEC00() & 1) != 0)
                              {

                                return 13;
                              }

                              else
                              {
                                v24 = v4 == 1701210487 && v2 == 0xE400000000000000;
                                if (v24 || (sub_1C43FEC00() & 1) != 0)
                                {

                                  return 14;
                                }

                                else
                                {
                                  v25 = v4 == 0x646E6162737568 && v2 == 0xE700000000000000;
                                  if (v25 || (sub_1C43FEC00() & 1) != 0)
                                  {

                                    return 15;
                                  }

                                  else
                                  {
                                    v26 = v4 == 0x646E65697266 && v2 == 0xE600000000000000;
                                    if (v26 || (sub_1C4419490() & 1) != 0)
                                    {

                                      return 23;
                                    }

                                    else
                                    {
                                      v27 = v4 == 0xD000000000000010 && 0x80000001C4F950E0 == v2;
                                      if (v27 || (sub_1C43FEC00() & 1) != 0)
                                      {

                                        return 24;
                                      }

                                      else
                                      {
                                        v28 = v4 == 0x756761656C6C6F63 && v2 == 0xE900000000000065;
                                        if (!v28 && (sub_1C43FEC00() & 1) == 0)
                                        {
                                          v29 = v4 == 0x726F62686769656ELL && v2 == 0xE800000000000000;
                                          if (!v29 && (sub_1C43FEC00() & 1) == 0)
                                          {
                                            v30 = v4 == 0x74616D6573756F68 && v2 == 0xE900000000000065;
                                            if (!v30 && (sub_1C43FEC00() & 1) == 0 && (v4 != 0x696E6D756C61 || v2 != 0xE600000000000000))
                                            {
                                              sub_1C4419490();
                                            }
                                          }

LABEL_17:

                                          return 0;
                                        }

                                        return 22;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

id sub_1C472B548()
{
  v0 = [BiomeLibrary() IntelligencePlatform];
  swift_unknownObjectRelease();
  v1 = [v0 EntityTagging];
  swift_unknownObjectRelease();
  v2 = [v1 PersonInference];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1C472B5E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a5)
  {
    v10 = sub_1C4F01108();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithEntityIdentifier:a1 entityTagID:a2 score:a3 feedbackEventID:v10];

  return v11;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityTaggingInjectedTags.injectedTags()()
{
  v1 = sub_1C472B6C4();
  if (!v0 && v1 && !v1[2])
  {

    v1 = 0;
  }

  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1C472B6C4()
{
  v3 = type metadata accessor for Configuration();
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C44098F0(v0, v8 - v7);
  v10 = type metadata accessor for KeyValueStore();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1C44194B0();
  KeyValueStore.init(config:domain:)(v9, v13, v14);
  if (!v1)
  {
    sub_1C442C8DC();
    v15 = sub_1C4598E14();
    v2 = v15;
    if (!v15)
    {
      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v17 = sub_1C4F00978();
      sub_1C442B738(v17, qword_1EDE2DF70);
      v18 = sub_1C4F00968();
      v19 = sub_1C4F01CF8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C43F8000, v18, v19, "EntityTagging: Nil value for injected tags.", v20, 2u);
        MEMORY[0x1C6942830](v20, -1, -1);
      }
    }
  }

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityTaggingInjectedTags.clearInjectedTags()()
{
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4F00F28();
  sub_1C472B8CC();
}

void *sub_1C472B8CC()
{
  v2 = type metadata accessor for Configuration();
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C44098F0(v0, v7 - v6);
  v9 = type metadata accessor for KeyValueStore();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1C44194B0();
  result = KeyValueStore.init(config:domain:)(v8, v12, v13);
  if (!v1)
  {
    sub_1C442C8DC();
    sub_1C495C398();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(Swift::String mdID, Swift::String tagType, Swift::Double confidence)
{
  v43 = tagType;
  v4 = sub_1C456902C(&qword_1EC0BC058, &qword_1C4F23698);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  v10 = sub_1C4EFF488();
  v11 = sub_1C43FCDF8(v10);
  v42 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v19 = sub_1C43FBD18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  v24 = sub_1C4EFF0C8();
  v25 = sub_1C43FCDF8(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v23, 1, v24) == 1)
  {
    sub_1C4423A0C(v23, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C472BD44();
    swift_allocError();
    sub_1C441F87C();
    *v33 = v34;
    v33[1] = 0x80000001C4F95100;
    swift_willThrow();
  }

  else
  {
    (*(v27 + 32))(v32, v23, v24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF468();
    if (sub_1C44157D4(v9, 1, v10) == 1)
    {
      sub_1C4423A0C(v9, &qword_1EC0BC058, &qword_1C4F23698);
      sub_1C472BD44();
      swift_allocError();
      sub_1C441F87C();
      *v36 = v35 + 2;
      v36[1] = 0x80000001C4F95120;
      swift_willThrow();
    }

    else
    {
      v37 = v42;
      (*(v42 + 32))(v17, v9, v10);
      if (confidence < 0.0 || confidence > 1.0)
      {
        sub_1C472BD44();
        swift_allocError();
        sub_1C441F87C();
        *v40 = v39 + 25;
        v40[1] = 0x80000001C4F95150;
        swift_willThrow();
      }

      else
      {
        EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(confidence);
      }

      (*(v37 + 8))(v17, v10);
    }

    (*(v27 + 8))(v32, v24);
  }
}

unint64_t sub_1C472BD44()
{
  result = qword_1EC0BC060;
  if (!qword_1EC0BC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC060);
  }

  return result;
}

uint64_t EntityTaggingInjectedTags.injectTag(mdID:tagType:confidence:)(double a1)
{
  result = sub_1C472B6C4();
  if (!v1)
  {
    v4 = result;
    if (!result)
    {
      sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
      v4 = sub_1C4F00F28();
    }

    v5 = sub_1C4EFF048();
    v7 = sub_1C4663244(v5, v6, v4);

    if (v7)
    {
      sub_1C4EFF478();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660594();

      sub_1C4EFF048();
    }

    else
    {
      sub_1C4EFF048();
      sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = sub_1C4EFF478();
      *(inited + 40) = v9;
      *(inited + 48) = a1;
      sub_1C4F00F28();
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4411BEC();
    sub_1C4661E9C();

    sub_1C472B8CC();
  }

  return result;
}

uint64_t type metadata accessor for EntityTaggingInjectedTags()
{
  result = qword_1EDDE17A8;
  if (!qword_1EDDE17A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C472BFF4()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C472C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1C4EF9D38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  *(v7 + 16) = 3;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x80000001C4F95340;
  *(v7 + 48) = 0xD00000000000002CLL;
  *(v7 + 56) = 0x80000001C4F95360;
  *(v7 + 64) = 0xD00000000000002DLL;
  *(v7 + 72) = 0x80000001C4F95390;
  *(v7 + 80) = xmmword_1C4F23750;
  *(v7 + 96) = xmmword_1C4F23760;

  *(v7 + 112) = v20;
  *(v7 + 120) = *(a1 + 24);
  sub_1C44098F0(a2, v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_config);
  v21 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name);
  *v21 = a3;
  v21[1] = a4;
  v22 = *(v7 + 112);
  v23 = *(v7 + 120);
  v24 = *(v7 + 128);
  type metadata accessor for EntityTaggingPersonFeatureFetcher();
  v25 = swift_allocObject();
  v25[2] = &unk_1F43D8BD0;
  v25[3] = v22;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = a3;
  v25[7] = a4;
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_featureFetcher) = v25;
  v26 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_sessionID);
  *v26 = a5;
  v26[1] = a6;
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_kvStore) = a7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4EF9058();
  (*(v14 + 32))(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_collectionID, v18, v13);
  LOBYTE(v13) = [objc_opt_self() isInternalDevice];

  sub_1C4406BB8();
  sub_1C4453D40(a2, v27);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_isInternal) = v13;
  return v7;
}

uint64_t sub_1C472C2EC(char a1, char a2)
{
  v3 = v2;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDDFECB8);

  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1C441D828(*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name), *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name + 8), &v14);
    _os_log_impl(&dword_1C43F8000, v7, v8, "%s: Fetching set of features to populate.", v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v14 = sub_1C47782B8();
  if (a1)
  {
    v11 = sub_1C477888C();
    sub_1C49D44B0(v11);
  }

  if (a2)
  {
    v12 = sub_1C4779518();
    sub_1C49D44B0(v12);
  }

  return v14;
}

uint64_t sub_1C472C460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v8 = v5;
  LOBYTE(v80) = a4;
  LOBYTE(v77) = a3;
  v10 = type metadata accessor for FeatureValue(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v75 = type metadata accessor for FeatureFetcher(0);
  v15 = sub_1C43FBCE0(v75);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v20 = (v19 - v18);
  if (qword_1EDDFECB0 != -1)
  {
LABEL_35:
    sub_1C44064A8();
    swift_once();
  }

  v21 = sub_1C4F00978();
  sub_1C442B738(v21, qword_1EDDFECB8);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();

  v73 = v14;
  v74 = v20;
  v79 = v8;
  v82 = a2;
  v78 = v7;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_1C441D828(*(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name), *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name + 8), &v85);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1C441D828(a1, a2, &v85);
    _os_log_impl(&dword_1C43F8000, v22, v23, "%s: Populating features for person entity %s.", v24, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v25 = sub_1C472C2EC(v77 & 1, v80 & 1);
  v26 = sub_1C4428DA0();
  if (v26)
  {
    v27 = v26;
    v85 = MEMORY[0x1E69E7CC0];
    result = sub_1C4F02348();
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    v81 = v25 & 0xC000000000000001;
    v30 = v25;
    do
    {
      if (v81)
      {
        v31 = MEMORY[0x1C6940F90](v29, v25);
      }

      else
      {
        v31 = *(v25 + 8 * v29 + 32);
      }

      v32 = v31;
      ++v29;
      v33 = [v31 viewName];
      v34 = sub_1C4F01138();
      v36 = v35;

      v37 = [v32 featureName];
      a2 = sub_1C4F01138();
      v39 = v38;

      v40 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4673B1C(v34, v36, a2, v39, a1, v82);

      sub_1C4F02318();
      v41 = *(v85 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      v25 = v30;
    }

    while (v27 != v29);

    v42 = v85;
    v20 = v74;
    v8 = v79;
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
  }

  sub_1C44098F0(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_config, v20);
  v44 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name);
  v43 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name + 8);
  *(v20 + *(v75 + 20)) = v42;
  v45 = (v20 + *(v75 + 24));
  v80 = v44;
  *v45 = v44;
  v45[1] = v43;
  v77 = v43;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = sub_1C46AB8A4();
  if (v46)
  {
    v14 = v46;
    sub_1C4F00318();
    v47 = type metadata accessor for EntityTaggingPersonDataCollection(0);
    v48 = (a5 + v47[5]);
    *v48 = 0;
    v48[1] = 0;
    v7 = (a5 + v47[6]);
    *v7 = 0;
    v7[1] = 0;
    v49 = (a5 + v47[7]);
    *v49 = 0;
    v49[1] = 0;
    v50 = v47[8];
    v51 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
    sub_1C4400264(v51);
    v52 = v47[9];
    v53 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
    sub_1C4400264(v53);
    v54 = v47[10];
    v55 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
    sub_1C4400264(v55);
    v56 = a5 + v47[11];
    *v56 = 3;
    *(v56 + 8) = 0;
    v57 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_sessionID + 8);
    *v7 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_sessionID);
    v7[1] = v57;
    a1 = *(v14 + 16);
    if (a1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v58 = 0;
      v8 = (v14 + 40);
      v75 = 136315394;
      v83 = v14;
      while (1)
      {
        if (v58 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v59 = *v8;
        v60 = *(v8 - 1);
        v61 = v59;
        v7 = sub_1C477A100();
        v62 = [v60 featureName];
        v20 = sub_1C4F01138();
        a2 = v63;

        v64 = sub_1C4663248(v20, a2, v7);

        if (v64 == 1)
        {
          v7 = v79;

          v65 = v60;
          v66 = sub_1C4F00968();
          a2 = sub_1C4F01CD8();

          if (!os_log_type_enabled(v66, a2))
          {

            goto LABEL_27;
          }

          v67 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v85 = v20;
          *v67 = 136315394;
          *(v67 + 4) = sub_1C441D828(v80, v77, &v85);
          *(v67 + 12) = 2112;
          *(v67 + 14) = v65;
          *v7 = v65;
          v60 = v65;
          _os_log_impl(&dword_1C43F8000, v66, a2, "%s: Feature does not have keypath defined %@", v67, 0x16u);
          sub_1C45B4B90(v7);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C440962C(v20);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          if ([v61 isUndefined])
          {
            goto LABEL_24;
          }

          if (v64)
          {
            v7 = v73;
            sub_1C46D43EC(v79[2], *(v79 + 24), v73);
            if (v78)
            {
              sub_1C44194D8();
              sub_1C4453D40(v74, v72);

              sub_1C4634004(v64);

              v70 = type metadata accessor for EntityTaggingPersonDataCollection;
              v71 = a5;
              return sub_1C4453D40(v71, v70);
            }

            swift_setAtWritableKeyPath();
LABEL_24:
            sub_1C4634004(v64);
          }
        }

LABEL_27:
        v14 = v83;
        ++v58;
        v8 += 2;
        if (a1 == v58)
        {
          goto LABEL_31;
        }
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_31:

    sub_1C44194D8();
    v71 = v74;
    return sub_1C4453D40(v71, v70);
  }

  else
  {
    sub_1C472CF14();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();
    sub_1C44194D8();
    return sub_1C4453D40(v20, v69);
  }
}

uint64_t sub_1C472CBCC()
{
  sub_1C46B6868(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);

  sub_1C4406BB8();
  sub_1C4453D40(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_name + 8);

  v9 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_featureFetcher);

  v10 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_sessionID + 8);

  v11 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_kvStore);

  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore37EntityTaggingPersonDataCollectionTask_collectionID;
  v13 = sub_1C4EF9D38();
  sub_1C43FBCE0(v13);
  (*(v14 + 8))(v0 + v12);
  return v0;
}

uint64_t sub_1C472CCB4()
{
  sub_1C472CBCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityTaggingPersonDataCollectionTask()
{
  result = qword_1EDDDC9D8;
  if (!qword_1EDDDC9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C472CD60()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C4EF9D38();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1C472CE7C()
{
  v1 = v0[2];

  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[7];

  return v0;
}

uint64_t sub_1C472CEBC()
{
  sub_1C472CE7C();

  return swift_deallocClassInstance();
}

unint64_t sub_1C472CF14()
{
  result = qword_1EC0BC068;
  if (!qword_1EC0BC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC068);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingPersonDataCollectionTask.EntityTaggingPersonDataCollectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C472D048()
{
  result = qword_1EC0BC070;
  if (!qword_1EC0BC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC070);
  }

  return result;
}

uint64_t sub_1C472D09C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[8];
  v7 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  sub_1C441B8BC(v7, v8, v9, v7);
  v10 = v2[9];
  v11 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  sub_1C441B8BC(v11, v12, v13, v11);
  v14 = v2[10];
  v15 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  result = sub_1C441B8BC(v15, v16, v17, v15);
  v19 = a1 + v2[11];
  *v19 = 0;
  *(v19 + 8) = 1;
  return result;
}

uint64_t sub_1C472D148@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C442DEEC();
  sub_1C4405A7C(*(v7 + 32));
  v8 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  sub_1C440A6F0(v1);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EDDF1788 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BC400, &qword_1C4F239E0);
    }
  }

  else
  {
    sub_1C440E1C0();
    return sub_1C4771D34(v1, a1);
  }

  return result;
}

uint64_t sub_1C472D25C()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityTaggingPersonDataCollection(v2) + 32);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C440E1C0();
  sub_1C4771D34(v0, v1 + v3);
  type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C472D2D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C442DEEC();
  sub_1C4405A7C(*(v7 + 36));
  v8 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  sub_1C440A6F0(v1);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EDDEEA28 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BC408, &qword_1C4F239E8);
    }
  }

  else
  {
    sub_1C44170F4();
    return sub_1C4771D34(v1, a1);
  }

  return result;
}

uint64_t sub_1C472D3E4()
{
  sub_1C4405A6C();
  v4 = v3;
  sub_1C4F00318();
  v5 = *(v2(0) + 20);
  if (*v1 != -1)
  {
    swift_once();
  }

  *(v4 + v5) = *v0;
}

uint64_t sub_1C472D464()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityTaggingPersonDataCollection(v2) + 36);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C44170F4();
  sub_1C4771D34(v0, v1 + v3);
  type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C472D4D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C442DEEC();
  sub_1C4405A7C(*(v7 + 40));
  v8 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  sub_1C440A6F0(v1);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6968 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BC410, &unk_1C4F239F0);
    }
  }

  else
  {
    sub_1C44030CC();
    return sub_1C4771D34(v1, a1);
  }

  return result;
}

uint64_t sub_1C472D5EC()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityTaggingPersonDataCollection(v2) + 40);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C44030CC();
  sub_1C4771D34(v0, v1 + v3);
  type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  v4 = sub_1C4410B98();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C4733D48@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C44042B0();
  v13 = *(v4 + *(a1(v12) + 20));
  v14 = *a2;
  swift_beginAccess();
  sub_1C446C964(v13 + v14, v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = type metadata accessor for FeatureValue(0);
  sub_1C440A6F0(v3);
  if (!v16)
  {
    return sub_1C4771D34(v3, a3);
  }

  v17 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v17;
  a3[2] = v17;
  v18 = a3 + *(v15 + 28);
  sub_1C4F00318();
  v19 = *(v15 + 32);
  v20 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C440BAA8(a3 + v19, 1, 1, v20);
  result = sub_1C440A6F0(v3);
  if (!v16)
  {
    return sub_1C4420C3C(v3, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C4733EF4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v5;
  v12 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = *(a2(0) + 20);
  v19 = *(v5 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + v18);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = a3(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_1C4425064();
    v21 = a4(v25);
    *(v10 + v18) = v21;
  }

  sub_1C4771D34(a1, v17);
  v26 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v17, 0, 1, v26);
  v27 = *a5;
  swift_beginAccess();
  sub_1C46ED080(v17, v21 + v27);
  return swift_endAccess();
}

uint64_t sub_1C4734044()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151C40);
  sub_1C442B738(v0, qword_1EC151C40);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0F830;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionID";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clusterID";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kgPersonFacts";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "personInteractionFeatures";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosPersonInteractionFeatures";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "protoVersion";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4734344()
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C4406AC8();
        sub_1C4734424();
        break;
      case 2:
        sub_1C4406AC8();
        sub_1C4734488();
        break;
      case 3:
        sub_1C4406AC8();
        sub_1C47344EC();
        break;
      case 4:
        sub_1C4406AC8();
        sub_1C4734550();
        break;
      case 5:
        sub_1C4406AC8();
        sub_1C4734604();
        break;
      case 6:
        sub_1C4406AC8();
        sub_1C47346B8();
        break;
      case 7:
        sub_1C4406AC8();
        sub_1C473476C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C4734550()
{
  v0 = *(type metadata accessor for EntityTaggingPersonDataCollection(0) + 32);
  type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  sub_1C4771900(qword_1EDDDE118, type metadata accessor for EntityTaggingPersonKGPersonFacts);
  return sub_1C4F003F8();
}

uint64_t sub_1C4734604()
{
  v0 = *(type metadata accessor for EntityTaggingPersonDataCollection(0) + 36);
  type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  sub_1C4771900(qword_1EDDED840, type metadata accessor for EntityTaggingPersonPersonInteractionFeatures);
  return sub_1C4F003F8();
}

uint64_t sub_1C47346B8()
{
  v0 = *(type metadata accessor for EntityTaggingPersonDataCollection(0) + 40);
  type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  sub_1C4771900(&qword_1EC0BC420, type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures);
  return sub_1C4F003F8();
}

uint64_t sub_1C47347D0()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C473485C(v1);
  if (!v0)
  {
    v3 = sub_1C43FEE60();
    sub_1C47348D4(v3);
    v4 = sub_1C43FEE60();
    sub_1C473494C(v4);
    v5 = sub_1C43FEE60();
    sub_1C47349C4(v5, v6, v7, v8);
    v9 = sub_1C43FEE60();
    sub_1C4734B98(v9, v10, v11, v12);
    v13 = sub_1C43FEE60();
    sub_1C4734D6C(v13, v14, v15, v16);
    v17 = sub_1C43FEE60();
    sub_1C4734F40(v17);
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C473485C(uint64_t a1)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47348D4(uint64_t a1)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C473494C(uint64_t a1)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47349C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C446C964(a1 + *(v13 + 32), v8, &qword_1EC0BC400, &qword_1C4F239E0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BC400, &qword_1C4F239E0);
  }

  sub_1C4771D34(v8, v12);
  sub_1C4771900(qword_1EDDDE118, type metadata accessor for EntityTaggingPersonKGPersonFacts);
  sub_1C4F004B8();
  return sub_1C4771D8C();
}

uint64_t sub_1C4734B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C446C964(a1 + *(v13 + 36), v8, &qword_1EC0BC408, &qword_1C4F239E8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BC408, &qword_1C4F239E8);
  }

  sub_1C4771D34(v8, v12);
  sub_1C4771900(qword_1EDDED840, type metadata accessor for EntityTaggingPersonPersonInteractionFeatures);
  sub_1C4F004B8();
  return sub_1C4771D8C();
}

uint64_t sub_1C4734D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  sub_1C446C964(a1 + *(v13 + 40), v8, &qword_1EC0BC410, &unk_1C4F239F0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BC410, &unk_1C4F239F0);
  }

  sub_1C4771D34(v8, v12);
  sub_1C4771900(&qword_1EC0BC420, type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures);
  sub_1C4F004B8();
  return sub_1C4771D8C();
}

uint64_t sub_1C4734F40(uint64_t a1)
{
  result = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C4734FB8(uint64_t a1, uint64_t a2)
{
  v126 = type metadata accessor for EntityTaggingPersonPhotosPersonInteractionFeatures(0);
  v5 = sub_1C43FBCE0(v126);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v122 = v9 - v8;
  v10 = sub_1C456902C(&qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v124 = v14;
  v125 = sub_1C456902C(&qword_1EC0BC470, &qword_1C4F24078);
  sub_1C43FBCE0(v125);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v127 = v18;
  v19 = type metadata accessor for EntityTaggingPersonPersonInteractionFeatures(0);
  v20 = sub_1C43FBCE0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v123 = v24 - v23;
  v25 = sub_1C456902C(&qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C43FBD18(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  v128 = v29;
  v30 = sub_1C456902C(&qword_1EC0BC478, &qword_1C4F24080);
  sub_1C43FBCE0(v30);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBC74();
  v129 = v34;
  v35 = type metadata accessor for EntityTaggingPersonKGPersonFacts(0);
  v36 = sub_1C43FBCE0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v41 = v40 - v39;
  v42 = sub_1C456902C(&qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C43FBD18(v42);
  v44 = *(v43 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v121 - v46;
  v48 = sub_1C456902C(&qword_1EC0BC480, &qword_1C4F24088);
  sub_1C43FBCE0(v48);
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  v52 = sub_1C44042B0();
  v53 = type metadata accessor for EntityTaggingPersonDataCollection(v52);
  v54 = v53[5];
  v130 = a1;
  sub_1C4414A44(a1 + v54);
  if (v57)
  {
    if (!v55)
    {
      goto LABEL_76;
    }

    sub_1C4402FD0(v56);
    v60 = v60 && v58 == v59;
    if (!v60 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v55)
  {
    goto LABEL_76;
  }

  sub_1C4414A44(v130 + v53[6]);
  if (v63)
  {
    if (!v61)
    {
      goto LABEL_76;
    }

    sub_1C4402FD0(v62);
    v66 = v60 && v64 == v65;
    if (!v66 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v61)
  {
    goto LABEL_76;
  }

  sub_1C4414A44(v130 + v53[7]);
  if (v69)
  {
    if (!v67)
    {
      goto LABEL_76;
    }

    sub_1C4402FD0(v68);
    v72 = v60 && v70 == v71;
    if (!v72 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_76;
    }
  }

  else if (v67)
  {
    goto LABEL_76;
  }

  v121 = a2;
  v73 = v53[8];
  v74 = *(v48 + 48);
  sub_1C446C964(v130 + v73, v2, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C446C964(v121 + v73, v2 + v74, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C4406BE8(v2);
  if (v60)
  {
    sub_1C4406BE8(v2 + v74);
    if (v60)
    {
      sub_1C4420C3C(v2, &qword_1EC0BC400, &qword_1C4F239E0);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  sub_1C446C964(v2, v47, &qword_1EC0BC400, &qword_1C4F239E0);
  sub_1C4406BE8(v2 + v74);
  if (v75)
  {
    sub_1C4771D8C();
LABEL_36:
    v76 = &qword_1EC0BC480;
    v77 = &qword_1C4F24088;
LABEL_37:
    v78 = v2;
LABEL_75:
    sub_1C4420C3C(v78, v76, v77);
    goto LABEL_76;
  }

  sub_1C440E1C0();
  sub_1C4771D34(v2 + v74, v41);
  v79 = *(v35 + 20);
  v80 = *&v47[v79];
  v81 = *(v41 + v79);
  if (v80 != v81)
  {
    v82 = *&v47[v79];

    v83 = sub_1C4738178(v80, v81);

    if (!v83)
    {
      sub_1C4771D8C();
      sub_1C4771D8C();
      v76 = &qword_1EC0BC400;
      v77 = &qword_1C4F239E0;
      goto LABEL_37;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v84, v85);
  v86 = sub_1C4F010B8();
  sub_1C4771D8C();
  sub_1C4771D8C();
  sub_1C4420C3C(v2, &qword_1EC0BC400, &qword_1C4F239E0);
  if ((v86 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_41:
  v87 = v53[9];
  v88 = *(v30 + 48);
  v89 = v129;
  sub_1C4426B20(v130 + v87, v129);
  sub_1C4426B20(v121 + v87, v89 + v88);
  sub_1C440029C(v89);
  if (v60)
  {
    sub_1C440029C(v89 + v88);
    if (v60)
    {
      sub_1C4420C3C(v89, &qword_1EC0BC408, &qword_1C4F239E8);
      goto LABEL_53;
    }

LABEL_49:
    v76 = &qword_1EC0BC478;
    v77 = &qword_1C4F24080;
LABEL_74:
    v78 = v89;
    goto LABEL_75;
  }

  v90 = v128;
  sub_1C446C964(v89, v128, &qword_1EC0BC408, &qword_1C4F239E8);
  sub_1C440029C(v89 + v88);
  if (v91)
  {
    sub_1C4771D8C();
    goto LABEL_49;
  }

  sub_1C44170F4();
  v92 = v123;
  sub_1C4771D34(v89 + v88, v123);
  v93 = *(v19 + 20);
  if (*(v90 + v93) != *(v92 + v93))
  {
    v94 = *(v90 + v93);

    v95 = sub_1C43FBC98();
    v96 = sub_1C47456E8(v95);

    if ((v96 & 1) == 0)
    {
      sub_1C4771D8C();
      sub_1C4771D8C();
      v76 = &qword_1EC0BC408;
      v77 = &qword_1C4F239E8;
      goto LABEL_74;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v97, v98);
  v99 = sub_1C4F010B8();
  sub_1C4771D8C();
  sub_1C4771D8C();
  sub_1C4420C3C(v89, &qword_1EC0BC408, &qword_1C4F239E8);
  if ((v99 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_53:
  v100 = v53[10];
  v101 = *(v125 + 48);
  v89 = v127;
  sub_1C4426B20(v130 + v100, v127);
  v102 = v121 + v100;
  v103 = v121;
  sub_1C4426B20(v102, v89 + v101);
  v104 = v126;
  if (sub_1C44157D4(v89, 1, v126) == 1)
  {
    sub_1C4406BE8(v89 + v101);
    if (!v60)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v89, &qword_1EC0BC410, &unk_1C4F239F0);
    goto LABEL_65;
  }

  v105 = v124;
  sub_1C446C964(v89, v124, &qword_1EC0BC410, &unk_1C4F239F0);
  sub_1C4406BE8(v89 + v101);
  if (v60)
  {
    sub_1C4771D8C();
LABEL_61:
    v76 = &qword_1EC0BC470;
    v77 = &qword_1C4F24078;
    goto LABEL_74;
  }

  sub_1C44030CC();
  v106 = v122;
  sub_1C4771D34(v89 + v101, v122);
  if (*(v105 + *(v104 + 20)) != *(v106 + *(v104 + 20)))
  {

    v107 = sub_1C43FBC98();
    v108 = sub_1C476039C(v107);

    if ((v108 & 1) == 0)
    {
      sub_1C4771D8C();
      sub_1C4771D8C();
      v76 = &qword_1EC0BC410;
      v77 = &unk_1C4F239F0;
      goto LABEL_74;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v109, v110);
  v111 = sub_1C4F010B8();
  sub_1C4771D8C();
  sub_1C4771D8C();
  sub_1C4420C3C(v89, &qword_1EC0BC410, &unk_1C4F239F0);
  if ((v111 & 1) == 0)
  {
LABEL_76:
    v119 = 0;
    return v119 & 1;
  }

LABEL_65:
  v112 = v53[11];
  v113 = (v130 + v112);
  v114 = *(v130 + v112 + 8);
  v115 = (v103 + v112);
  v116 = *(v103 + v112 + 8);
  if (v114)
  {
    if (!v116)
    {
      goto LABEL_76;
    }
  }

  else
  {
    if (*v113 != *v115)
    {
      LOBYTE(v116) = 1;
    }

    if (v116)
    {
      goto LABEL_76;
    }
  }

  sub_1C4F00328();
  sub_1C4400284();
  sub_1C4771900(v117, v118);
  v119 = sub_1C4F010B8();
  return v119 & 1;
}

uint64_t sub_1C47359EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4771900(&qword_1EC0BC468, type metadata accessor for EntityTaggingPersonDataCollection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4735A8C()
{
  sub_1C4771900(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection);

  return sub_1C4F00428();
}

uint64_t sub_1C4735B54()
{
  sub_1C4771900(qword_1EDDDD818, type metadata accessor for EntityTaggingPersonDataCollection);

  return sub_1C4F00438();
}

uint64_t sub_1C4735BD4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151C58);
  sub_1C442B738(v0, qword_1EC151C58);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1C4F239A0;
  v4 = v66 + v3 + v1[14];
  *(v66 + v3) = 1;
  *v4 = "nameCategoryMatch";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v66 + v3 + v2 + v1[14];
  *(v66 + v3 + v2) = 2;
  *v8 = "isVIP";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v66 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sharesWorkAddress";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v66 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "hasSamePrivateEmailDomain";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v66 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "nicknameCategoryMatch";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v66 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBirthday";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v66 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "hasSameEmailDomains";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v66 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "sameLastName";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v66 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "hasSamePublicEmailDomain";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v66 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "photosPersonAge";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  v25 = (v66 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "isFavorite";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v66 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hasSameEduEmailDomain";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v7();
  v29 = (v66 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hasSameWorkEmailDomain";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v7();
  v31 = (v66 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "hasNickname";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v66 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "allowListedNameMatch";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v7();
  v35 = (v66 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "ageDifferenceCategory";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v66 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "nameContainsEmoji";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v7();
  v39 = (v66 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "nicknameContainsEmoji";
  *(v40 + 1) = 21;
  v40[16] = 2;
  v7();
  v41 = (v66 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "relationshipWithUser";
  *(v42 + 1) = 20;
  v42[16] = 2;
  v7();
  v43 = (v66 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "sharesHomeAddress";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  v45 = (v66 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "allowListedNicknameMatch";
  *(v46 + 1) = 24;
  v46[16] = 2;
  v7();
  v47 = (v66 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "photosAgeDifferenceCategory";
  *(v48 + 1) = 27;
  v48[16] = 2;
  v7();
  v49 = (v66 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "partialNicknameCategoryMatch";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v7();
  v51 = (v66 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "partialNameCategoryMatch";
  *(v52 + 1) = 24;
  v52[16] = 2;
  v7();
  v53 = (v66 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "iCloudFamilyMember";
  *(v54 + 1) = 18;
  v54[16] = 2;
  v7();
  v55 = (v66 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "isChild";
  *(v56 + 1) = 7;
  v56[16] = 2;
  v7();
  v57 = (v66 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "isFamily";
  *(v58 + 1) = 8;
  v58[16] = 2;
  v7();
  v59 = (v66 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "isPartner";
  *(v60 + 1) = 9;
  v60[16] = 2;
  v7();
  v61 = (v66 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "isSibling";
  *(v62 + 1) = 9;
  v62[16] = 2;
  v7();
  v63 = (v66 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "isCoworker";
  *(v64 + 1) = 10;
  v64[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C4736464()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker, 1, 1, v2);
  return v0;
}

uint64_t sub_1C47367E0(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v69 - v5;
  v7 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  v8 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip, 1, 1, v8);
  v10 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress, 1, 1, v8);
  v70 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p, 1, 1, v8);
  v71 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch, 1, 1, v8);
  v72 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p, 1, 1, v8);
  v73 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p, 1, 1, v8);
  v74 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName, 1, 1, v8);
  v75 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p, 1, 1, v8);
  v76 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge, 1, 1, v8);
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite, 1, 1, v8);
  v78 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p, 1, 1, v8);
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p, 1, 1, v8);
  v80 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p, 1, 1, v8);
  v81 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch, 1, 1, v8);
  v82 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory, 1, 1, v8);
  v83 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji, 1, 1, v8);
  v84 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji, 1, 1, v8);
  v85 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser, 1, 1, v8);
  v86 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress, 1, 1, v8);
  v87 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch, 1, 1, v8);
  v88 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory, 1, 1, v8);
  v89 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch, 1, 1, v8);
  v90 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch, 1, 1, v8);
  v91 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember, 1, 1, v8);
  v92 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild, 1, 1, v8);
  v93 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily, 1, 1, v8);
  v94 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner, 1, 1, v8);
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling, 1, 1, v8);
  v96 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker, 1, 1, v8);
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v11, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v7);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isVip;
  swift_beginAccess();
  sub_1C446C964(a1 + v12, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v9);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesWorkAddress;
  swift_beginAccess();
  sub_1C446C964(a1 + v13, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v10);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePrivateEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v14, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v15 = v70;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v16, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = v71;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasBirthday_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v18, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v19 = v72;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v19);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEmailDomains_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v20, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v21 = v73;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sameLastName;
  swift_beginAccess();
  sub_1C446C964(a1 + v22, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v23 = v74;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSamePublicEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v24, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v25 = v75;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v25);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosPersonAge;
  swift_beginAccess();
  sub_1C446C964(a1 + v26, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v27 = v76;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v27);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFavorite;
  swift_beginAccess();
  sub_1C446C964(a1 + v28, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v29 = v77;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v29);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameEduEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v30, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v31 = v78;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v31);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasSameWorkEmailDomain_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v32, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v33 = v79;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v33);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__hasNickname_p;
  swift_beginAccess();
  sub_1C446C964(a1 + v34, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v35 = v80;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v35);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNameMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v36, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v37 = v81;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v37);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__ageDifferenceCategory;
  swift_beginAccess();
  sub_1C446C964(a1 + v38, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v39 = v82;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v39);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nameContainsEmoji;
  swift_beginAccess();
  sub_1C446C964(a1 + v40, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v41 = v83;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v41);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__nicknameContainsEmoji;
  swift_beginAccess();
  sub_1C446C964(a1 + v42, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v43 = v84;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v43);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__relationshipWithUser;
  swift_beginAccess();
  sub_1C446C964(a1 + v44, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v45 = v85;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v45);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__sharesHomeAddress;
  swift_beginAccess();
  sub_1C446C964(a1 + v46, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v47 = v86;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v47);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__allowListedNicknameMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v48, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v49 = v87;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v49);
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__photosAgeDifferenceCategory;
  swift_beginAccess();
  sub_1C446C964(a1 + v50, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = v88;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v51);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNicknameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v52, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v53 = v89;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v53);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__partialNameCategoryMatch;
  swift_beginAccess();
  sub_1C446C964(a1 + v54, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v55 = v90;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v55);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__iCloudFamilyMember;
  swift_beginAccess();
  sub_1C446C964(a1 + v56, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v57 = v91;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v57);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isChild;
  swift_beginAccess();
  sub_1C446C964(a1 + v58, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v59 = v92;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v59);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isFamily;
  swift_beginAccess();
  sub_1C446C964(a1 + v60, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v61 = v93;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v61);
  swift_endAccess();
  v62 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isPartner;
  swift_beginAccess();
  sub_1C446C964(a1 + v62, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v63 = v94;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v63);
  swift_endAccess();
  v64 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isSibling;
  swift_beginAccess();
  sub_1C446C964(a1 + v64, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v65 = v95;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v65);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV24IntelligencePlatformCore32EntityTaggingPersonKGPersonFactsP33_316DD523D8D9654A3007195383EEB71613_StorageClass__isCoworker;
  swift_beginAccess();
  sub_1C446C964(a1 + v66, v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v67 = v96;
  swift_beginAccess();
  sub_1C46ED080(v6, v1 + v67);
  swift_endAccess();
  return v1;
}