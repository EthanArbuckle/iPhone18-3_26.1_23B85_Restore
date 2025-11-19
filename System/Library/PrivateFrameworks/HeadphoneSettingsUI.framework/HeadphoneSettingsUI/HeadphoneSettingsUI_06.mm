uint64_t sub_1AC2CD3E8(void *a1)
{
  v1 = a1;
  v4 = sub_1AC308FCC();

  return v4;
}

uint64_t sub_1AC2CD458()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2CD4C0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

uint64_t sub_1AC2CD5B8(uint64_t a1, uint64_t a2)
{
  v203 = a1;
  v204 = a2;
  v164 = sub_1AC2CF228;
  v165 = sub_1AC226634;
  v166 = sub_1AC226640;
  v167 = sub_1AC22664C;
  v168 = sub_1AC2CF288;
  v169 = sub_1AC226634;
  v170 = sub_1AC226640;
  v171 = sub_1AC22664C;
  v172 = sub_1AC2D0FD8;
  v173 = sub_1AC226634;
  v174 = sub_1AC226640;
  v175 = sub_1AC22664C;
  v176 = sub_1AC248080;
  v177 = sub_1AC226634;
  v178 = sub_1AC226640;
  v179 = sub_1AC22664C;
  v180 = sub_1AC248080;
  v181 = sub_1AC226634;
  v182 = sub_1AC226640;
  v183 = sub_1AC22664C;
  v184 = sub_1AC215C90;
  v185 = sub_1AC215C90;
  v186 = sub_1AC226658;
  v187 = sub_1AC215C90;
  v188 = sub_1AC215C90;
  v189 = sub_1AC226658;
  v190 = sub_1AC215C90;
  v191 = sub_1AC215C90;
  v192 = sub_1AC226658;
  v193 = sub_1AC215C90;
  v194 = sub_1AC215C90;
  v195 = sub_1AC226658;
  v196 = sub_1AC215C90;
  v197 = sub_1AC215C90;
  v198 = sub_1AC226658;
  v199 = "Fatal error";
  v200 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v201 = "HeadphoneSettingsUI/LiveTranslationFeature.swift";
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v229 = 0;
  v202 = 0;
  v205 = 0;
  v206 = sub_1AC309E6C();
  v207 = *(v206 - 8);
  v208 = v206 - 8;
  v209 = (*(v207 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v210 = &v80 - v209;
  v235 = v3;
  v234 = v4;
  v233 = v2;
  sub_1AC309DFC();
  v211 = MEMORY[0x1AC5AF460]();
  v212 = sub_1AC309DDC();
  MEMORY[0x1E69E5920](v211);
  v215 = v212 & 1;
  v214 = 0;

  v163 = v215 == v214 && ((*(*v213 + 136))(v5) & 1) == 0;
  v161 = v163;

  v232 = v161;
  v162 = sub_1AC30916C();
  if (v162)
  {
    v160 = v162;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v155 = v160;
  v156 = [v160 personalTranslatorCapability];
  MEMORY[0x1E69E5920](v155);
  v159 = &v231;
  v231 = v156;
  v157 = &v230;
  v230 = 2;
  v158 = type metadata accessor for AAFeatureCapability();
  sub_1AC212BF0();
  if (sub_1AC30B1BC())
  {
    v154 = MobileGestalt_get_current_device();
    if (v154)
    {
      v153 = v154;
      v150 = v154;
      deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();
      MEMORY[0x1E69E5920](v150);
      v152 = deviceSupportsPersonalTranslator;
      goto LABEL_12;
    }

    sub_1AC30B05C();
    __break(1u);
  }

  v152 = 0;
LABEL_12:
  v149 = (v152 & 1) != 0 && v161;
  v6 = v210;
  v107 = v149;
  v106 = 1;
  v229 = v149;
  v7 = sub_1AC2C8DF0();
  (*(v207 + 16))(v6, v7, v206);

  v121 = 17;
  v126 = 7;
  v117 = swift_allocObject();
  *(v117 + 16) = v161 & v106;
  v123 = swift_allocObject();
  *(v123 + 16) = v107 & v106;
  v147 = sub_1AC309E4C();
  v148 = sub_1AC30AD2C();
  v129 = swift_allocObject();
  *(v129 + 16) = 0;
  v130 = swift_allocObject();
  v122 = 4;
  *(v130 + 16) = 4;
  v125 = 32;
  v8 = swift_allocObject();
  v108 = v8;
  *(v8 + 16) = v164;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v108;
  v109 = v9;
  *(v9 + 16) = v165;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v109;
  v110 = v11;
  *(v11 + 16) = v166;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v110;
  v131 = v13;
  *(v13 + 16) = v167;
  *(v13 + 24) = v14;
  v132 = swift_allocObject();
  *(v132 + 16) = 0;
  v133 = swift_allocObject();
  *(v133 + 16) = v122;
  v15 = swift_allocObject();
  v111 = v15;
  *(v15 + 16) = v168;
  *(v15 + 24) = 0;
  v16 = swift_allocObject();
  v17 = v111;
  v112 = v16;
  *(v16 + 16) = v169;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v112;
  v113 = v18;
  *(v18 + 16) = v170;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v113;
  v134 = v20;
  *(v20 + 16) = v171;
  *(v20 + 24) = v21;
  v135 = swift_allocObject();
  *(v135 + 16) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = v122;
  v22 = swift_allocObject();
  v23 = v213;
  v114 = v22;
  *(v22 + 16) = v172;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v114;
  v115 = v24;
  *(v24 + 16) = v173;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v115;
  v116 = v26;
  *(v26 + 16) = v174;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v116;
  v137 = v28;
  *(v28 + 16) = v175;
  *(v28 + 24) = v29;
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v139 = swift_allocObject();
  *(v139 + 16) = v122;
  v30 = swift_allocObject();
  v31 = v117;
  v118 = v30;
  *(v30 + 16) = v176;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v118;
  v119 = v32;
  *(v32 + 16) = v177;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v119;
  v120 = v34;
  *(v34 + 16) = v178;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v120;
  v140 = v36;
  *(v36 + 16) = v179;
  *(v36 + 24) = v37;
  v141 = swift_allocObject();
  *(v141 + 16) = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v122;
  v38 = swift_allocObject();
  v39 = v123;
  v124 = v38;
  *(v38 + 16) = v180;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v124;
  v127 = v40;
  *(v40 + 16) = v181;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v127;
  v128 = v42;
  *(v42 + 16) = v182;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v128;
  v144 = v44;
  *(v44 + 16) = v183;
  *(v44 + 24) = v45;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v143 = sub_1AC30B18C();
  v145 = v46;

  v47 = v129;
  v48 = v145;
  *v145 = v184;
  v48[1] = v47;

  v49 = v130;
  v50 = v145;
  v145[2] = v185;
  v50[3] = v49;

  v51 = v131;
  v52 = v145;
  v145[4] = v186;
  v52[5] = v51;

  v53 = v132;
  v54 = v145;
  v145[6] = v187;
  v54[7] = v53;

  v55 = v133;
  v56 = v145;
  v145[8] = v188;
  v56[9] = v55;

  v57 = v134;
  v58 = v145;
  v145[10] = v189;
  v58[11] = v57;

  v59 = v135;
  v60 = v145;
  v145[12] = v190;
  v60[13] = v59;

  v61 = v136;
  v62 = v145;
  v145[14] = v191;
  v62[15] = v61;

  v63 = v137;
  v64 = v145;
  v145[16] = v192;
  v64[17] = v63;

  v65 = v138;
  v66 = v145;
  v145[18] = v193;
  v66[19] = v65;

  v67 = v139;
  v68 = v145;
  v145[20] = v194;
  v68[21] = v67;

  v69 = v140;
  v70 = v145;
  v145[22] = v195;
  v70[23] = v69;

  v71 = v141;
  v72 = v145;
  v145[24] = v196;
  v72[25] = v71;

  v73 = v142;
  v74 = v145;
  v145[26] = v197;
  v74[27] = v73;

  v75 = v144;
  v76 = v145;
  v145[28] = v198;
  v76[29] = v75;
  sub_1AC206300();

  if (os_log_type_enabled(v147, v148))
  {
    v77 = v202;
    v99 = sub_1AC30AE6C();
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v98 = 0;
    v100 = sub_1AC213EE4(0);
    v101 = sub_1AC213EE4(v98);
    v102 = &v220;
    v220 = v99;
    v103 = &v219;
    v219 = v100;
    v104 = &v218;
    v218 = v101;
    sub_1AC213F38(0, &v220);
    sub_1AC213F38(5, v102);
    v216 = v184;
    v217 = v129;
    sub_1AC213F4C(&v216, v102, v103, v104);
    v105 = v77;
    if (v77)
    {

      __break(1u);
    }

    else
    {
      v216 = v185;
      v217 = v130;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v96 = 0;
      v216 = v186;
      v217 = v131;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v95 = 0;
      v216 = v187;
      v217 = v132;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v94 = 0;
      v216 = v188;
      v217 = v133;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v93 = 0;
      v216 = v189;
      v217 = v134;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v92 = 0;
      v216 = v190;
      v217 = v135;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v91 = 0;
      v216 = v191;
      v217 = v136;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v90 = 0;
      v216 = v192;
      v217 = v137;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v89 = 0;
      v216 = v193;
      v217 = v138;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v88 = 0;
      v216 = v194;
      v217 = v139;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v87 = 0;
      v216 = v195;
      v217 = v140;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v86 = 0;
      v216 = v196;
      v217 = v141;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v85 = 0;
      v216 = v197;
      v217 = v142;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v84 = 0;
      v216 = v198;
      v217 = v144;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      _os_log_impl(&dword_1AC1C3000, v147, v148, "LiveTranslationPlaceCardFeature: supported  optIn:%{BOOL}d  engaged:%{BOOL}d  dismissed:%{BOOL}d optedOut:%{BOOL}d capable:%{BOOL}d", v99, 0x20u);
      v83 = 0;
      sub_1AC213F98(v100);
      sub_1AC213F98(v101);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v78 = MEMORY[0x1E69E5920](v147);
  (*(v207 + 8))(v210, v206, v78);
  sub_1AC30929C();
  if (v223)
  {
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v224 = 0;
      v225 = 0;
      v226 = 0;
      v227 = 0;
      v228 = 0;
    }
  }

  else
  {
    sub_1AC204664(v222);
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
    v228 = 0;
  }

  v81 = v227 != 0;
  sub_1AC204664(&v224);
  LOBYTE(v221) = v81;
  HIBYTE(v221) = v107;
  return v221;
}

uint64_t sub_1AC2CF228()
{
  sub_1AC309DFC();
  v1 = MEMORY[0x1AC5AF460]();
  v2 = sub_1AC309DDC();
  MEMORY[0x1E69E5920](v1);
  return v2 & 1;
}

uint64_t sub_1AC2CF304(uint64_t a1, void *a2)
{
  v43 = a2;
  v37 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v39;
  MEMORY[0x1EEE9AC00](0);
  v41 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1AC309AAC();
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v48 = v22 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v63 = v4;
  v62 = v5;
  sub_1AC30929C();
  if (v55)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE78);
    if (!swift_dynamicCast())
    {
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
    }
  }

  else
  {
    sub_1AC204664(v54);
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  if (v59)
  {
    v33 = __dst;
    sub_1AC2051E4(&v56, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    v22[2] = MEMORY[0x1E69A2B08];
    v22[3] = sub_1AC205220();
    v22[4] = v6;
    sub_1AC205220();
    v29 = sub_1AC309D3C();
    v53 = v42;
    v27 = 13;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v26 = 0;
    v23 = type metadata accessor for LiveTranslationPlaceCardFeature();
    v24 = sub_1AC215DE8(v41, v23);
    v25 = v7;
    (*(v40 + 8))(v41, v38);
    v49 = v26;
    v50 = v26;
    v51 = v26;
    v52 = v26;
    v8 = sub_1AC20599C();
    v28 = &v12;
    v20 = v26;
    v19 = v26;
    v18 = v26;
    v17 = v26;
    v16 = v26;
    v15 = v26;
    v14 = v26;
    v13 = v8 & 1;
    v12 = v26;
    sub_1AC309A9C();
    v31 = sub_1AC309D1C();
    (*(v46 + 8))(v48, v44);

    v9 = v43;

    v30 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v20 = v43;
    v21 = v10;
    v32 = sub_1AC309D0C();

    v34 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v33);
    return v34;
  }

  else
  {
    sub_1AC204664(&v56);
    v22[0] = 0;
    v22[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

double sub_1AC2CF870(void *a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v32 = a2;
  v34 = a3;
  v43 = sub_1AC2CBC3C;
  v36 = sub_1AC2D10F8;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v65 = 0;
  v53 = 0;
  v47 = sub_1AC309AEC();
  v25[0] = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v48 = v25 - v25[0];
  v70 = v3;
  v69 = v4;
  v68 = v5;
  v49 = sub_1AC309A7C();
  v25[1] = &v67;
  v67 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE80);
  v28 = sub_1AC30B19C();
  v26 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](v26);
  sub_1AC30A92C();
  v25[2] = v6;
  v27 = sub_1AC30A91C();

  *&v7 = MEMORY[0x1E69E5920](v26).n128_u64[0];
  [v62 setProperty:v28 forKey:{v27, v7}];
  MEMORY[0x1E69E5920](v27);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE60);
  v44 = sub_1AC2CFE3C();
  v60 = 1;
  sub_1AC30A9DC();
  v29 = v8;
  v37 = sub_1AC2C8C0C();
  v38 = v9;

  sub_1AC30A9DC();
  v30 = v10;
  v39 = sub_1AC2C8C0C();
  v40 = v11;

  sub_1AC30A9DC();
  v31 = v12;
  v41 = sub_1AC2C8C0C();
  v42 = v13;

  v33 = 24;
  v35 = 7;
  v46 = swift_allocObject();
  MEMORY[0x1E69E5928](v32);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v32);
  v45 = swift_allocObject();

  swift_weakInit();

  v14 = swift_allocObject();
  v15 = v46;
  *(v14 + 16) = v45;
  *(v14 + 24) = v15;
  sub_1AC309ADC();

  sub_1AC2D1104();
  v66 = sub_1AC30A71C();
  v64 = sub_1AC30A26C();
  v65 = v64;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE90);
  v52 = sub_1AC30B18C();
  v50 = v16;
  v17 = sub_1AC309A6C();
  v18 = v50;
  v19 = v17;
  v20 = v64;
  *v50 = v19;
  v18[1] = v21;
  MEMORY[0x1E69E5928](v20);
  v22 = v52;
  v50[2] = v64;
  sub_1AC206300();
  v54 = v22;
  v56 = sub_1AC2D1184();
  v55 = MEMORY[0x1E69E6158];
  v57 = MEMORY[0x1E69E6168];
  v58 = sub_1AC30A83C();
  v59 = sub_1AC30A81C();

  [v62 setUserInfo_];
  swift_unknownObjectRelease();
  sub_1AC30A9DC();
  v61 = v23;
  v63 = sub_1AC30A91C();

  [v62 setIdentifier_];
  MEMORY[0x1E69E5920](v63);
  *&result = MEMORY[0x1E69E5920](v64).n128_u64[0];
  return result;
}

uint64_t sub_1AC2CFE3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEA0);
  v13 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v32 = &v12 - v13;
  v29 = 0;
  v24 = sub_1AC30A65C();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v14 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v12 - v14;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEA8);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v16 = &v12 - v15;
  v36 = 1;
  sub_1AC30A9DC();
  v17 = sub_1AC30A64C();
  sub_1AC30A24C();
  v2 = *(*(sub_1AC30A25C() - 8) + 56);
  v31 = 0;
  v2(v16);
  v26 = sub_1AC30A67C();
  sub_1AC2D11E8(v16);

  v18 = sub_1AC2D02DC();
  v19 = v3;
  v20 = v4;
  v21 = v5;
  sub_1AC2D02F0(v25);
  v27 = sub_1AC30A68C();
  (*(v22 + 8))(v25, v24);

  v28 = v57;
  v57[0] = v27;
  sub_1AC30A4CC();
  sub_1AC20BCE0();
  v35 = v54;
  v54[0] = v57[1];
  v54[1] = v57[2];
  v55 = v58 & 1 & v36;
  v56 = v59;
  sub_1AC30A3DC();
  v30 = v6;
  v7 = sub_1AC30A3CC();
  (*(*(v7 - 8) + 56))(v32, v36);
  v34 = sub_1AC30A3FC();
  sub_1AC2D1290(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEB0);
  sub_1AC2D1338();
  sub_1AC30A58C();

  sub_1AC20BCE0();
  v40 = v49;
  v49[0] = v60;
  v49[1] = v61;
  v50 = v62 & 1 & v36;
  v51 = v63;
  v52 = v64;
  v53 = v65;
  v8 = sub_1AC30A61C();
  v39 = &v48;
  v48 = v8;
  v9 = sub_1AC30A61C();
  v38 = &v47;
  v47 = v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEC0);
  v10 = sub_1AC2D13D8();
  v41 = &v66;
  MEMORY[0x1AC5AFB80](v39, v38, v37, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v10, MEMORY[0x1E6981568]);
  sub_1AC20BCE0();
  sub_1AC20BCE0();
  sub_1AC2D1508();
  v42 = __dst;
  v43 = 56;
  memcpy(__dst, v41, sizeof(__dst));
  v45 = v46;
  memcpy(v46, __dst, sizeof(v46));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEE0);
  sub_1AC2D154C();
  return sub_1AC30A71C();
}

uint64_t sub_1AC2D02F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6981630];
  v1 = sub_1AC30A65C();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1AC2D035C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    if (v2)
    {
      (*(*Strong + 144))(1);
      sub_1AC30A9DC();
      v1 = sub_1AC30A91C();

      [v2 removeSpecifierID:v1 animated:1];
      MEMORY[0x1E69E5920](v1);
      MEMORY[0x1E69E5920](v2);
    }
  }

  return result;
}

uint64_t sub_1AC2D0528(void *a1)
{
  v20 = a1;
  v44 = 0;
  v43 = 0;
  v33 = 0;
  v39 = sub_1AC30A90C();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v13 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v38 = &v12 - v13;
  v29 = sub_1AC30A8EC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v16 = *(v27 + 64);
  v14 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v31 = &v12 - v14;
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v12 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v12 - v17;
  v44 = v3;
  v43 = v4;
  v24 = &v42;
  v42 = v4;
  v18 = 37;
  sub_1AC30A8DC();
  v32 = 1;
  sub_1AC30A9DC();
  v19 = v5;
  sub_1AC30A8CC();

  v22 = v20[3];
  v21 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v22);
  (*(*(v21 + 8) + 8))(v22);
  v23 = v6;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v25 = v7;
  sub_1AC30A8CC();

  (*(v27 + 16))(v26, v30, v29);
  (*(v27 + 32))(v31, v26, v29);
  (*(v27 + 8))(v30, v29);
  sub_1AC30A8FC();
  v34 = sub_1AC30A9DC();
  v35 = v8;
  v9 = type metadata accessor for LiveTranslationPlaceCardFeature();
  v40 = sub_1AC2162E8(v38, v34, v35, v9);
  v41 = v10;

  (*(v36 + 8))(v38, v39);
  return v40;
}

BOOL sub_1AC2D08D8()
{
  sub_1AC30A9DC();
  key = sub_1AC30A91C();
  sub_1AC30A9DC();
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  return AppBooleanValue != 0;
}

uint64_t sub_1AC2D09A4()
{
  sub_1AC30A9DC();
  v5 = sub_1AC30A91C();
  value = sub_1AC30AB8C();
  sub_1AC30A9DC();
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v5, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v5);
}

uint64_t (*sub_1AC2D0AE4(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC2D08D8();
  return sub_1AC2D0B48;
}

uint64_t sub_1AC2D0C58()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1AC2D0E10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AC30901C();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = type metadata accessor for TranslationVideoHeader();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

unint64_t sub_1AC2D0E98()
{
  v2 = qword_1EB54CE68;
  if (!qword_1EB54CE68)
  {
    type metadata accessor for TranslationVideoHeader();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D0F18()
{
  v2 = qword_1EB54CE70;
  if (!qword_1EB54CE70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CE70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D0F7C(uint64_t a1)
{
  v1 = sub_1AC30901C();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1AC2D1104()
{
  v2 = qword_1EB54CE88;
  if (!qword_1EB54CE88)
  {
    sub_1AC309AEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D1184()
{
  v2 = qword_1EB54CE98;
  if (!qword_1EB54CE98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CE98);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D11E8(uint64_t a1)
{
  v3 = sub_1AC30A25C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC2D1290(uint64_t a1)
{
  v3 = sub_1AC30A3CC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC2D1338()
{
  v2 = qword_1EB54CEB8;
  if (!qword_1EB54CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D13D8()
{
  v2 = qword_1EB54CEC8;
  if (!qword_1EB54CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEC0);
    sub_1AC2D1338();
    sub_1AC2D1480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D1480()
{
  v2 = qword_1EB54CED0;
  if (!qword_1EB54CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CED8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CED0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AC2D1508()
{
}

unint64_t sub_1AC2D154C()
{
  v2 = qword_1EB54CEE8;
  if (!qword_1EB54CEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEE0);
    sub_1AC2D13D8();
    sub_1AC2D15F4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D15F4()
{
  v2 = qword_1EB54CEF0;
  if (!qword_1EB54CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D167C()
{
  v2 = qword_1EB54CF00;
  if (!qword_1EB54CF00)
  {
    type metadata accessor for UIUserInterfaceStyle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2D172C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CF08);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  sub_1AC204664(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C880);
  sub_1AC30B18C();
  v5 = v3;
  *v3 = sub_1AC25B5D0();
  v5[1] = sub_1AC299784();
  v5[2] = sub_1AC2D2B78();
  v5[3] = sub_1AC2EC734();
  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C888);
  sub_1AC290744();
  sub_1AC30AA7C();

  return v6;
}

uint64_t sub_1AC2D19F0(void *a1, void *a2)
{
  v26 = a1;
  v24 = a2;
  v25 = 0;
  v17 = sub_1AC2D27B8;
  v18 = *v2;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CF10);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v6 - v22;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C288);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v6 - v30;
  v41 = v3;
  v40 = v4;
  v39 = v2;
  v32 = &v38;
  swift_beginAccess();
  v34 = v2[4];

  swift_endAccess();
  v33 = sub_1AC309EAC();
  sub_1AC223158();
  v35 = sub_1AC30AC0C();

  if (!v35)
  {
    v6 = sub_1AC3091FC();
    sub_1AC3096AC();
    MEMORY[0x1E69E5920](v6);
    v7 = sub_1AC309F2C();
    (*(v20 + 8))(v23, v19);
    v10 = &v37;
    v37 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C2A0);
    v8 = sub_1AC2417DC();
    sub_1AC241864();
    sub_1AC309FAC();
    sub_1AC20BCE0();
    v12 = swift_allocObject();
    v11 = v12 + 16;
    MEMORY[0x1E69E5928](v24);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v24);

    sub_1AC241A04();
    v15 = sub_1AC309FBC();

    (*(v28 + 8))(v31, v27);
    v13 = v16 + 32;
    v14 = &v36;
    swift_beginAccess();
    sub_1AC309E9C();
    swift_endAccess();
  }

  return sub_1AC2D1F18(v26, v24);
}

double sub_1AC2D1E04(char *a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v7 = *a1;
  v6 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC();
    v3 = sub_1AC30A91C();

    [v4 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v3);
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AC2D1F18(void *a1, void *a2)
{
  v79 = a2;
  v81 = a1;
  v84 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v61 = sub_1AC309E6C();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x1EEE9AC00](0);
  v64 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AC30A90C();
  v65 = *(v71 - 8);
  v69 = v65;
  MEMORY[0x1EEE9AC00](v81);
  v70 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v5;
  v99 = v6;
  v98 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v66 = 1;
  v72 = sub_1AC30A9DC();
  v73 = v7;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v67 = type metadata accessor for AudioFeatureGroup();
  v74 = sub_1AC215DE8(v70, v67);
  v75 = v8;
  (*(v69 + 8))(v70, v71);
  v80 = sub_1AC309D3C();
  v76 = v80;
  v97 = v80;
  v77 = sub_1AC309D2C();
  v96 = v77;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
  v78 = v86;
  v83 = sub_1AC30B18C();
  v82 = v9;
  v10 = sub_1AC25B6F0(v81, v79, v80);
  v11 = v79;
  v12 = v80;
  v13 = v10;
  v14 = v81;
  *v82 = v13;
  v15 = sub_1AC2998A4(v14, v11, v12);
  v16 = v79;
  v17 = v80;
  v18 = v15;
  v19 = v81;
  v82[1] = v18;
  v20 = sub_1AC2D2BC4(v19, v16, v17);
  v21 = v79;
  v22 = v80;
  v23 = v20;
  v24 = v81;
  v82[2] = v23;
  v25 = sub_1AC2EC788(v24, v21, v22);
  v26 = v83;
  v82[3] = v25;
  sub_1AC206300();
  v95 = v26;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508);
  v87 = sub_1AC263B38();
  sub_1AC24D54C();
  v27 = sub_1AC30AA8C();
  v88 = 0;
  v89 = v27;
  v60 = v27;
  sub_1AC209190();
  v94 = v60;
  v93[1] = v60;
  sub_1AC2914BC();
  if (sub_1AC30ACAC())
  {
    v28 = v64;
    v29 = sub_1AC29DCC0();
    (*(v63 + 16))(v28, v29, v61);
    v55 = sub_1AC309E4C();
    v52 = v55;
    v54 = sub_1AC30AD1C();
    v53 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v56 = sub_1AC30B18C();
    if (os_log_type_enabled(v55, v54))
    {
      v30 = v88;
      v43 = sub_1AC30AE6C();
      v39 = v43;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v41 = 0;
      v44 = sub_1AC213EE4(0);
      v42 = v44;
      v45 = sub_1AC213EE4(v41);
      v93[0] = v43;
      v92 = v44;
      v91 = v45;
      v46 = 0;
      v47 = v93;
      sub_1AC213F38(0, v93);
      sub_1AC213F38(v46, v47);
      v90 = v56;
      v48 = v33;
      MEMORY[0x1EEE9AC00](v33);
      v49 = &v33[-6];
      v33[-4] = v31;
      v33[-3] = &v92;
      v33[-2] = &v91;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v51 = v30;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v52, v53, "Audio Feature Group has nothing to show.", v39, 2u);
        v37 = 0;
        sub_1AC213F98(v42);
        sub_1AC213F98(v45);
        sub_1AC30AE4C();

        v38 = v51;
      }
    }

    else
    {

      v38 = v88;
    }

    v36 = v38;

    (*(v63 + 8))(v64, v61);
    v33[0] = 0;
    v33[1] = sub_1AC215CB0();
    v34 = sub_1AC30B18C();
    v35 = v34;

    v58 = v35;
    v59 = v36;
  }

  else
  {
    sub_1AC215CB0();
    v57 = sub_1AC30AB1C();

    v58 = v57;
    v59 = v88;
  }

  return v58;
}

uint64_t sub_1AC2D27E8(void *a1)
{
  sub_1AC2D2B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CF20);
  v4 = sub_1AC30B19C();
  v2 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC30A92C();
  v3 = sub_1AC30A91C();

  [a1 0x1FB10D778];
  MEMORY[0x1E69E5920](v3);
  swift_unknownObjectRelease();

  v8 = sub_1AC30A91C();

  v5 = *MEMORY[0x1E69C59A0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C59A0]);
  sub_1AC30A92C();
  v7 = sub_1AC30A91C();

  [a1 0x1FB10D778];
  MEMORY[0x1E69E5920](v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2D29EC()
{
  *(v0 + 16) = sub_1AC30A9DC();
  *(v0 + 24) = v1;
  sub_1AC309EAC();
  sub_1AC223158();
  v2 = sub_1AC30A80C();
  result = v4;
  *(v4 + 32) = v2;
  return result;
}

unint64_t sub_1AC2D2B14()
{
  v2 = qword_1EB54CF18;
  if (!qword_1EB54CF18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF18);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D2B78()
{
  LOBYTE(v1) = 1;
  HIBYTE(v1) = sub_1AC2C7268() & 1;
  return v1;
}

uint64_t sub_1AC2D2BC4(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v54 = a1;
  v55 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v56 = sub_1AC30A90C();
  v57 = *(v56 - 8);
  v58 = v57;
  MEMORY[0x1EEE9AC00](0);
  v59 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AC309AAC();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v73 = v6;
  v72 = v7;
  if (sub_1AC2C7268())
  {
    v45 = 1;
    v38 = sub_1AC30A9DC();
    v35 = v8;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v36 = sub_1AC215DE8(v59, &unk_1F20F9920);
    v37 = v9;
    (*(v58 + 8))(v59, v56);
    v44 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v10 = v54;
    v40 = 24;
    v32 = 7;
    v11 = swift_allocObject();
    v12 = v54;
    v34 = v11;
    *(v11 + 16) = v54;
    v13 = v12;
    v33 = swift_allocObject();
    *(v33 + 16) = v54;
    v14 = sub_1AC20599C();
    v39 = &v20;
    v28 = v44;
    v27 = v44;
    v26 = v33;
    v25 = sub_1AC2D33AC;
    v24 = v34;
    v23 = sub_1AC2D3208;
    v22 = v44;
    v21 = v14 & 1;
    v20 = v44;
    sub_1AC309A9C();
    v42 = sub_1AC309D1C();
    (*(v64 + 8))(v65, v62);
    v15 = v54;
    v41 = v29;
    MEMORY[0x1EEE9AC00](v29);
    v28 = v16;
    v43 = sub_1AC309D0C();

    v46 = sub_1AC215CB0();
    v47 = v46;
    v48 = sub_1AC30B18C();
    v49 = v17;
    v51 = sub_1AC309D2C();
    v67 = v51;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v53 = v66;
    v52 = v66;

    if (v53)
    {
      v31 = v52;
    }

    else
    {
      LODWORD(v28) = 0;
      v27 = 42;
      LOBYTE(v26) = 2;
      sub_1AC30B05C();
      __break(1u);
    }

    v18 = v48;
    *v49 = v31;
    sub_1AC206300();
    return v18;
  }

  else
  {
    v29[1] = 0;
    v29[2] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

id sub_1AC2D313C()
{
  sub_1AC2068B8();
  v2 = sub_1AC3091FC();
  sub_1AC30967C();
  MEMORY[0x1E69E5920](v2);
  type metadata accessor for HMMultiState();
  sub_1AC241B7C();
  v0 = sub_1AC30B1BC();
  return sub_1AC244124(v0 & 1);
}

double sub_1AC2D3210(void *a1)
{
  v2 = sub_1AC3091FC();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v4 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  swift_unknownObjectRelease();
  sub_1AC30968C();
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

uint64_t sub_1AC2D33B4(void *a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v38 = 0;
  v37 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v26 = 0;
  v19 = sub_1AC30A90C();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v23 = v8 - v22;
  v38 = v3;
  v37 = a2;
  v24 = sub_1AC3091FC();
  v25 = sub_1AC30967C();
  MEMORY[0x1E69E5920](v24);
  v29 = &v36;
  v36 = v25;
  v27 = &v35;
  v35 = 1;
  v28 = type metadata accessor for HMMultiState();
  sub_1AC241B7C();
  v34 = sub_1AC30B1BC() & 1;
  if (v34)
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v13 = sub_1AC215DE8(v23, &unk_1F20F9920);
    v14 = v4;
    (*(v20 + 8))(v23, v19);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v11 = sub_1AC215DE8(v23, &unk_1F20F9920);
    v12 = v5;
    (*(v20 + 8))(v23, v19);
    v15 = v11;
    v16 = v12;
  }

  v10 = v16;
  v8[1] = v15;
  v32 = v15;
  v33 = v16;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v8[0] = sub_1AC215DE8(v23, &unk_1F20F9920);
  v9 = v6;
  (*(v20 + 8))(v23, v19);
  v30 = v8[0];
  v31 = v9;
  type metadata accessor for AudioFeatureGroup();
  sub_1AC2D27E8(v18);
}

uint64_t sub_1AC2D3768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v33 = a1;
  v32 = a2;
  v30 = a3;
  v31 = a4;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v14);
  v29 = v15;
  v28 = 6;
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2052F0();
  v16 = sub_1AC30B1BC();
  v27 = v16 & 1;
  sub_1AC30A9DC();
  sub_1AC30A9AC();

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();

  if (has_internal_ui)
  {
    sub_1AC30A9DC();
    key = sub_1AC30A91C();
    sub_1AC30A9DC();
    v9 = sub_1AC30A91C();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v9, 0);
    MEMORY[0x1E69E5920](v9);

    MEMORY[0x1E69E5920](key);

    v12 = AppBooleanValue == 0;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E69E5928](a1);
  if (v12)
  {
    v7 = sub_1AC30917C();
    [v7 deviceFlags];
    MEMORY[0x1E69E5920](v7);
    type metadata accessor for CBDeviceFlags();
    sub_1AC2B4DE4();
    v8 = sub_1AC30B27C() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  MEMORY[0x1E69E5920](a1);
  if (v8)
  {
    v6 = v16 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v26 = v6 & 1;
  sub_1AC30929C();
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC68);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    sub_1AC204664(v19);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v5 = v24 != 0;
  sub_1AC204664(&v21);
  LOBYTE(v18) = v5;
  HIBYTE(v18) = v6 & 1;
  return v18;
}

uint64_t sub_1AC2D3B60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v89 = a3;
  v91 = a2;
  v83 = a1;
  v84 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v118 = 0;
  v85 = sub_1AC309AAC();
  v86 = *(v85 - 8);
  v87 = v86;
  MEMORY[0x1EEE9AC00](0);
  v88 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1AC30A90C();
  v93 = *(v92 - 8);
  v94 = v93;
  MEMORY[0x1EEE9AC00](v92 - 8);
  v95 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a1;
  v129 = v7;
  v127 = v8;
  v128 = v9;
  sub_1AC30929C();
  if (!v122)
  {
    LODWORD(v34) = 0;
    v33 = 29;
    LOBYTE(v32) = 2;
    sub_1AC30B05C();
    __break(1u);
  }

  v70 = __dst;
  sub_1AC2051E4(v121, __dst);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC68);
  v79 = v124;
  swift_dynamicCast();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v119 = v89;
  v120 = v90;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v73 = sub_1AC215DE8(v95, &unk_1F20F9A10);
  v74 = v10;
  (*(v94 + 8))(v95, v92);
  sub_1AC205220();
  v77 = sub_1AC309D3C();

  v75 = &v36;
  MEMORY[0x1EEE9AC00](&v36);
  v34 = v89;
  v35 = v11;
  v78 = sub_1AC309CDC();
  v76 = v78;

  v118 = v78;
  v81 = v125;
  v80 = v126;
  __swift_project_boxed_opaque_existential_1(v79, v125);
  v12 = (*(v80 + 8))(v81);
  v82 = v12[OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_allowForceFitTest];

  if (v82 == 1)
  {
    v65 = sub_1AC30A9DC();
    v66 = v13;
    v67 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v14 = sub_1AC20599C();
    v68 = &v26;
    v34 = v67;
    v33 = v67;
    v32 = v67;
    v31 = sub_1AC2D5614;
    v30 = v67;
    v29 = sub_1AC2D551C;
    v28 = v67;
    v27 = v14 & 1;
    v26 = v67;
    sub_1AC309A9C();
    v69 = sub_1AC309D1C();
    (*(v87 + 8))(v88, v85);
  }

  v62 = sub_1AC30917C();
  v63 = [v62 deviceFlags];

  v117 = v63;
  v116 = 0x10000000;
  v64 = type metadata accessor for CBDeviceFlags();
  sub_1AC2B4DE4();
  if (sub_1AC30B27C())
  {
    v50 = 1;
    v38 = sub_1AC30A9DC();
    v39 = v15;
    v56 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v16 = v83;
    v51 = 24;
    v52 = 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v83;
    v17 = sub_1AC20599C();
    v40 = &v26;
    v34 = v56;
    v33 = v56;
    v32 = v56;
    v31 = sub_1AC2D5938;
    v30 = v37;
    v29 = sub_1AC2D5930;
    v28 = v56;
    v27 = v17 & 1;
    v26 = v56;
    v47 = 6;
    sub_1AC309A9C();
    v44 = sub_1AC309D1C();
    v59 = *(v87 + 8);
    v58 = v87 + 8;
    v59(v88, v85);
    v41 = sub_1AC30A9DC();
    v42 = v18;
    v108 = v56;
    v109 = v56;
    v110 = v56;
    v111 = v56;
    v19 = sub_1AC20599C();
    v43 = &v26;
    v34 = v56;
    v33 = v56;
    v32 = v56;
    v31 = sub_1AC2D5CF8;
    v30 = v56;
    v29 = sub_1AC2D5C00;
    v28 = v56;
    v27 = v19 & 1;
    v26 = v56;
    sub_1AC309A9C();
    v49 = sub_1AC309D1C();
    v59(v88, v85);

    v45 = sub_1AC30A9DC();
    v46 = v20;
    v104 = v56;
    v105 = v56;
    v106 = v56;
    v107 = v56;
    v21 = sub_1AC20599C();
    v48 = &v26;
    v34 = v56;
    v33 = v56;
    v32 = v56;
    v31 = sub_1AC2D6034;
    v30 = v56;
    v29 = sub_1AC2D5F3C;
    v28 = v56;
    v27 = v21 & 1;
    v26 = v56;
    sub_1AC309A9C();
    v60 = sub_1AC309D1C();
    v59(v88, v85);

    v54 = sub_1AC30A9DC();
    v55 = v22;
    v100 = v56;
    v101 = v56;
    v102 = v56;
    v103 = v56;
    v23 = v83;
    v53 = swift_allocObject();
    *(v53 + 16) = v83;
    v24 = sub_1AC20599C();
    v57 = &v26;
    v34 = v53;
    v33 = sub_1AC2D6930;
    v32 = v56;
    v31 = v56;
    v30 = v56;
    v29 = v56;
    v28 = v56;
    v27 = v24 & 1;
    v26 = v56;
    sub_1AC309A9C();
    v61 = sub_1AC309D1C();
    v59(v88, v85);
  }

  v36 = sub_1AC309D2C();

  __swift_destroy_boxed_opaque_existential_1(v124);
  return v36;
}

uint64_t sub_1AC2D4500(void *a1, uint64_t a2, uint64_t a3)
{
  v127 = a1;
  v75 = a2;
  v76 = a3;
  v108 = sub_1AC2D50FC;
  v152 = 0;
  v150 = 0;
  v151 = 0;
  v146 = 0;
  v147 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  v138 = 0;
  v136 = 0;
  v135 = 0;
  v110 = 0;
  v84 = sub_1AC30A8EC();
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v69 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v86 = &v69 - v69;
  v70 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v69 - v70;
  v71 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v69 - v71;
  v92 = sub_1AC30A90C();
  v73 = *(v92 - 8);
  v74 = v92 - 8;
  v72 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v127);
  v91 = &v69 - v72;
  v152 = v7;
  v150 = v8;
  v151 = v9;
  v148 = v8;
  v149 = v9;
  v119 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v87 = &unk_1F20F9A10;
  v88 = &off_1F20F99A0;
  v96 = sub_1AC215DE8(v91, &unk_1F20F9A10);
  v134 = v10;
  v90 = *(v73 + 8);
  v89 = v73 + 8;
  v90(v91, v92);
  v146 = v96;
  v147 = v134;
  v79 = v145;
  v145[0] = v75;
  v145[1] = v76;
  v77 = 26;
  v107 = 1;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v78 = v11;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v80 = v12;
  sub_1AC30A8CC();

  (*(v82 + 16))(v81, v85, v84);
  (*(v82 + 32))(v86, v81, v84);
  (*(v82 + 8))(v85, v84);
  sub_1AC30A8FC();
  v95 = sub_1AC215DE8(v91, v87);
  v133 = v13;
  v90(v91, v92);
  v143 = v95;
  v144 = v133;
  v123 = MEMORY[0x1E69E6158];
  v93 = sub_1AC30B18C();
  v94 = v14;

  v15 = v93;
  v16 = v94;
  v17 = v133;
  *v94 = v95;
  v16[1] = v17;
  sub_1AC206300();
  v132 = v15;
  v142 = v15;
  v101 = sub_1AC30B18C();
  v100 = v18;

  v98 = sub_1AC30A91C();

  v97 = sub_1AC30A91C();

  v140 = [v98 rangeOfString_];
  v141 = v19;
  v99.location = v140;
  v99.length = v19;
  MEMORY[0x1E69E5920](v97);
  MEMORY[0x1E69E5920](v98);

  v139 = v99;
  v102 = NSStringFromRange(v99);
  v20 = sub_1AC30A92C();
  v21 = v100;
  v22 = v20;
  v23 = v101;
  *v100 = v22;
  v21[1] = v24;
  sub_1AC206300();
  v131 = v23;
  MEMORY[0x1E69E5920](v102);
  v138 = v131;
  v105 = sub_1AC2B52BC();
  v106 = sub_1AC30B18C();
  v104 = v25;
  v103 = sub_1AC2B5320();
  v26 = sub_1AC20D658();
  v137[3] = v103;
  v137[0] = v26;
  v27 = sub_1AC2B3344(v137);
  v28 = v106;
  *v104 = v27;
  sub_1AC206300();
  v130 = v28;
  v136 = v28;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCB8);
  v29 = sub_1AC30B18C();
  *v30 = v108;
  v30[1] = 0;
  sub_1AC206300();
  v129 = v29;
  v135 = v29;
  v117 = sub_1AC309CCC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v112 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1AC30A92C();
  v111 = v32;
  v116 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v112);
  v114 = *MEMORY[0x1E69C58D8];
  MEMORY[0x1E69E5928](v114);
  sub_1AC30A92C();
  v113 = v33;
  v115 = sub_1AC30A91C();

  *&v34 = MEMORY[0x1E69E5920](v114).n128_u64[0];
  [v127 setProperty:v116 forKey:{v115, v34}];
  MEMORY[0x1E69E5920](v115);
  swift_unknownObjectRelease();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820);
  v121 = sub_1AC30B18C();
  v120 = v35;
  v36 = sub_1AC309CAC();
  v37 = v120;
  *v120 = v36;
  v37[1] = v38;

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8);
  v40 = v120;
  v41 = v39;
  v42 = v132;
  v118 = v41;
  v120[5] = v41;
  v40[2] = v42;
  v43 = sub_1AC309CBC();
  v44 = v120;
  v120[6] = v43;
  v44[7] = v45;

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCC0);
  v47 = v120;
  v48 = v46;
  v49 = v130;
  v120[11] = v48;
  v47[8] = v49;
  v50 = sub_1AC309C8C();
  v51 = v120;
  v120[12] = v50;
  v51[13] = v52;

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCC8);
  v54 = v120;
  v55 = v53;
  v56 = v129;
  v120[17] = v55;
  v54[14] = v56;
  v57 = sub_1AC309C7C();
  v58 = v120;
  v120[18] = v57;
  v58[19] = v59;

  v60 = v131;
  v61 = v120;
  v120[23] = v118;
  v61[20] = v60;
  v62 = sub_1AC309C9C();
  v63 = v120;
  v120[24] = v62;
  v63[25] = v64;
  v65 = sub_1AC30A9DC();
  v66 = v120;
  v120[29] = v123;
  v66[26] = v65;
  v66[27] = v67;
  sub_1AC206300();
  v124 = MEMORY[0x1E69E7CA0] + 8;
  v125 = MEMORY[0x1E69E6168];
  v126 = sub_1AC30A83C();
  v128 = sub_1AC30A81C();

  [v127 setUserInfo_];
  swift_unknownObjectRelease();
}

uint64_t sub_1AC2D50FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v43[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v23 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v14[-v23];
  v36 = sub_1AC30901C();
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v27 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v14[-v27];
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v14[-v29];
  v42 = &v14[-v29];
  v41 = *v6;
  v40 = v7;
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;
  v35 = 1;
  sub_1AC30A9DC();
  v31 = v10;
  sub_1AC30900C();

  if ((*(v32 + 48))(v34, v35, v36) == 1)
  {
    return sub_1AC247D84(v34);
  }

  (*(v32 + 32))(v30, v34, v36);
  v43[0] = 0;
  v22 = [objc_opt_self() defaultWorkspace];
  if (v22)
  {
    v21 = v22;
    v19 = v22;
    (*(v32 + 16))(v28, v30, v36);
    v18 = sub_1AC308FEC();
    (*(v32 + 8))(v28, v36);
    v37 = v43[0];
    v20 = [v19 openSensitiveURL:v18 withOptions:0 error:&v37];
    v17 = v37;
    MEMORY[0x1E69E5928](v37);
    v12 = v43[0];
    v43[0] = v17;
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v18);
    v13 = MEMORY[0x1E69E5920](v19);
    if ((v20 & 1) == 0)
    {
      v15 = v43[0];
      v16 = sub_1AC308FDC();
      MEMORY[0x1E69E5920](v15);
      swift_willThrow();
    }
  }

  else
  {
    sub_1AC206988(v43);
  }

  return (*(v32 + 8))(v30, v36, v13);
}

id sub_1AC2D551C()
{
  sub_1AC30A9DC();
  key = sub_1AC30A91C();
  sub_1AC30A9DC();
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  sub_1AC2068B8();
  return sub_1AC244124(AppBooleanValue != 0);
}

uint64_t sub_1AC2D5614(void *a1)
{
  sub_1AC30A9DC();
  v6 = sub_1AC30A91C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  value = sub_1AC30AB8C();
  sub_1AC30A9DC();
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v6, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v6);
}

id sub_1AC2D5858()
{
  v1 = sub_1AC30917C();
  [v1 deviceFlags];
  MEMORY[0x1E69E5920](v1);
  type metadata accessor for CBDeviceFlags();
  sub_1AC2B4DE4();
  v2 = sub_1AC30B27C() & 1;
  sub_1AC2068B8();
  return sub_1AC244124(v2);
}

double sub_1AC2D5938(void *a1, uint64_t a2)
{
  v19 = 0;
  v23 = a1;
  v22 = a2;
  sub_1AC2D6A24();
  v10 = sub_1AC20D658();
  v21 = v10;
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v20 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 2;
  }

  if (v20 == 2)
  {
    LOBYTE(v3) = 2;
    v4 = 97;
    LODWORD(v5) = 0;
    sub_1AC30B05C();
    __break(1u);
  }

  else
  {
    v9 = v20;
  }

  swift_unknownObjectRelease();
  if (v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v10 setSpatialSoundProfileAllowed_];
  sub_1AC2D6A88();
  v7 = sub_1AC20D658();
  v19 = v7;
  v17 = sub_1AC2D5BA4;
  v18 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_1AC27E158;
  v16 = &block_descriptor_10;
  v6 = _Block_copy(&aBlock);
  [v7 modifyControllerSettings:v10 completionHandler:?];
  _Block_release(v6);
  MEMORY[0x1E69E5920](v7);
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

void sub_1AC2D5BA4(void *a1)
{
  v1 = a1;
  if (a1)
  {
  }
}

id sub_1AC2D5C00()
{
  sub_1AC30A9DC();
  key = sub_1AC30A91C();
  sub_1AC30A9DC();
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  sub_1AC2068B8();
  return sub_1AC244124(AppBooleanValue != 0);
}

uint64_t sub_1AC2D5CF8(void *a1)
{
  sub_1AC30A9DC();
  v6 = sub_1AC30A91C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  value = sub_1AC30AB8C();
  sub_1AC30A9DC();
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v6, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v6);
}

id sub_1AC2D5F3C()
{
  sub_1AC30A9DC();
  key = sub_1AC30A91C();
  sub_1AC30A9DC();
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  sub_1AC2068B8();
  return sub_1AC244124(AppBooleanValue != 0);
}

uint64_t sub_1AC2D6034(void *a1)
{
  sub_1AC30A9DC();
  v6 = sub_1AC30A91C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  value = sub_1AC30AB8C();
  sub_1AC30A9DC();
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v6, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1AC2D6278(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v43 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v16[-v43];
  v45 = sub_1AC30901C();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v16[-v48];
  v50 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v16[-v48]);
  v51 = &v16[-v50];
  v62 = &v16[-v50];
  v61 = a1;
  v52 = sub_1AC30917C();
  v53 = [v52 serialNumber];
  if (v53)
  {
    v42 = v53;
    v37 = v53;
    v38 = sub_1AC30A92C();
    v39 = v4;
    MEMORY[0x1E69E5920](v37);
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v36 = v41;
  v35 = v40;
  MEMORY[0x1E69E5920](v52);
  v64 = v35;
  v65 = v36;
  if (v36)
  {
    v54 = v64;
    v55 = v65;
  }

  else
  {
    v54 = sub_1AC30A9DC();
    v55 = v5;
    if (v65)
    {
      sub_1AC2063F0();
    }
  }

  v27 = v54;
  v28 = v55;
  v59 = v54;
  v60 = v55;
  v25 = 60;
  v6 = sub_1AC30B17C();
  v30 = &v57;
  v57 = v6;
  v58 = v7;
  v34 = 1;
  v8 = sub_1AC30A9DC();
  v26 = v9;
  MEMORY[0x1AC5B07E0](v8);

  v56[1] = v27;
  v56[2] = v28;
  sub_1AC30B15C();
  v10 = sub_1AC30A9DC();
  v29 = v11;
  MEMORY[0x1AC5B07E0](v10);

  v32 = v57;
  v31 = v58;

  sub_1AC2063F0();
  sub_1AC30A9BC();
  v33 = v12;
  sub_1AC30900C();

  if ((*(v46 + 48))(v44, v34, v45) == 1)
  {
    sub_1AC247D84(v44);
  }

  else
  {
    (*(v46 + 32))(v51, v44, v45);
    v63 = 0;
    v24 = [objc_opt_self() defaultWorkspace];
    if (v24)
    {
      v23 = v24;
      v21 = v24;
      (*(v46 + 16))(v49, v51, v45);
      v20 = sub_1AC308FEC();
      (*(v46 + 8))(v49, v45);
      v56[0] = v63;
      v22 = [v21 openSensitiveURL:v20 withOptions:0 error:v56];
      v19 = v56[0];
      MEMORY[0x1E69E5928](v56[0]);
      v14 = v63;
      v63 = v19;
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v20);
      v15 = MEMORY[0x1E69E5920](v21);
      if ((v22 & 1) == 0)
      {
        v17 = v63;
        v18 = sub_1AC308FDC();
        MEMORY[0x1E69E5920](v17);
        swift_willThrow();
      }
    }

    else
    {
      sub_1AC206988(&v63);
    }

    (*(v46 + 8))(v51, v45, v15);
  }
}

uint64_t sub_1AC2D6938()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

unint64_t sub_1AC2D6A24()
{
  v2 = qword_1EB54CF28;
  if (!qword_1EB54CF28)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF28);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2D6A88()
{
  v2 = qword_1EB54CF30;
  if (!qword_1EB54CF30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF30);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D6B80(uint64_t a1)
{
  v65 = a1;
  v68 = sub_1AC2D7968;
  v70 = sub_1AC226634;
  v72 = sub_1AC226640;
  v74 = sub_1AC22664C;
  v78 = sub_1AC248080;
  v80 = sub_1AC226634;
  v82 = sub_1AC226640;
  v86 = sub_1AC22664C;
  v88 = sub_1AC215C90;
  v90 = sub_1AC215C90;
  v92 = sub_1AC226658;
  v94 = sub_1AC215C90;
  v96 = sub_1AC215C90;
  v99 = sub_1AC226658;
  v121 = 0;
  v118 = 0;
  v53 = 0;
  v58 = 0;
  v64 = sub_1AC309E6C();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v54 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v37 - v54;
  v121 = a1;
  v56 = sub_1AC30915C();
  v2 = sub_1AC30994C();
  v3 = v55;
  v57 = v2;

  v61 = &v120;
  v120 = v57;
  v59 = &v119;
  v119 = 2;
  v60 = type metadata accessor for AAFeatureCapability();
  sub_1AC212BF0();
  v67 = sub_1AC30B1BC();
  v66 = 1;
  v118 = v67 & 1;
  v4 = sub_1AC250850();
  (*(v62 + 16))(v3, v4, v64);
  MEMORY[0x1E69E5928](v65);
  v84 = 7;
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  v76 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = v67 & v66;
  v103 = sub_1AC309E4C();
  v104 = sub_1AC30AD2C();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v91 = swift_allocObject();
  v77 = 4;
  *(v91 + 16) = 4;
  v83 = 32;
  v5 = swift_allocObject();
  v6 = v69;
  v71 = v5;
  *(v5 + 16) = v68;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v71;
  v73 = v7;
  *(v7 + 16) = v70;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v73;
  v75 = v9;
  *(v9 + 16) = v72;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v75;
  v93 = v11;
  *(v11 + 16) = v74;
  *(v11 + 24) = v12;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = v77;
  v13 = swift_allocObject();
  v14 = v79;
  v81 = v13;
  *(v13 + 16) = v78;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v81;
  v85 = v15;
  *(v15 + 16) = v80;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v85;
  v87 = v17;
  *(v17 + 16) = v82;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v87;
  v100 = v19;
  *(v19 + 16) = v86;
  *(v19 + 24) = v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v98 = sub_1AC30B18C();
  v101 = v21;

  v22 = v89;
  v23 = v101;
  *v101 = v88;
  v23[1] = v22;

  v24 = v91;
  v25 = v101;
  v101[2] = v90;
  v25[3] = v24;

  v26 = v93;
  v27 = v101;
  v101[4] = v92;
  v27[5] = v26;

  v28 = v95;
  v29 = v101;
  v101[6] = v94;
  v29[7] = v28;

  v30 = v97;
  v31 = v101;
  v101[8] = v96;
  v31[9] = v30;

  v32 = v100;
  v33 = v101;
  v101[10] = v99;
  v33[11] = v32;
  sub_1AC206300();

  if (os_log_type_enabled(v103, v104))
  {
    v34 = v53;
    v46 = sub_1AC30AE6C();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v45 = 0;
    v47 = sub_1AC213EE4(0);
    v48 = sub_1AC213EE4(v45);
    v49 = &v109;
    v109 = v46;
    v50 = &v108;
    v108 = v47;
    v51 = &v107;
    v107 = v48;
    sub_1AC213F38(0, &v109);
    sub_1AC213F38(2, v49);
    v105 = v88;
    v106 = v89;
    sub_1AC213F4C(&v105, v49, v50, v51);
    v52 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v105 = v90;
      v106 = v91;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v43 = 0;
      v105 = v92;
      v106 = v93;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v42 = 0;
      v105 = v94;
      v106 = v95;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v41 = 0;
      v105 = v96;
      v106 = v97;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v40 = 0;
      v105 = v99;
      v106 = v100;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      _os_log_impl(&dword_1AC1C3000, v103, v104, "FitTestFeature hasContent: %{BOOL}d supported: %{BOOL}d", v46, 0xEu);
      v39 = 0;
      sub_1AC213F98(v47);
      sub_1AC213F98(v48);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v35 = MEMORY[0x1E69E5920](v103);
  (*(v62 + 8))(v55, v64, v35);
  sub_1AC30929C();
  if (v112)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 0;
    }
  }

  else
  {
    sub_1AC204664(v111);
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
  }

  HIDWORD(v37) = v116 != 0;
  sub_1AC204664(&v113);
  LOBYTE(v110) = BYTE4(v37);
  HIBYTE(v110) = v67 & 1;
  return v110;
}

BOOL sub_1AC2D7880()
{
  sub_1AC30929C();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    sub_1AC204664(v2);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v1 = v7 != 0;
  sub_1AC204664(&v4);
  return v1;
}

uint64_t sub_1AC2D7970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v57 = a2;
  v56 = a3;
  v51 = sub_1AC2DC36C;
  v52 = sub_1AC2D87A8;
  v53 = "Fatal error";
  v54 = "Unexpectedly found nil while unwrapping an Optional value";
  v55 = "HeadphoneSettingsUI/FitTestFeature.swift";
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v58 = sub_1AC309AAC();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v62 = v23 - v61;
  v79 = a1;
  v78 = v4;
  v77 = v5;
  sub_1AC30929C();
  if (v68)
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
    }
  }

  else
  {
    sub_1AC204664(v67);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
  }

  if (v72)
  {
    v30 = __dst;
    sub_1AC2051E4(&v69, __dst);
    v28 = v75;
    v27 = v76;
    __swift_project_boxed_opaque_existential_1(v30, v75);
    v34 = (*(v27 + 64))(v28);
    v35 = v6;
    v36 = v66;
    v42 = 0;
    memset(v66, 0, sizeof(v66));
    v31 = 7;
    v39 = swift_allocObject();
    v29 = v39 + 16;
    MEMORY[0x1E69E5928](v57);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v57);
    MEMORY[0x1E69E5928](v50);
    v32 = v65;
    sub_1AC241BFC(v30, v65);

    v7 = swift_allocObject();
    v8 = v32;
    v33 = v7;
    *(v7 + 16) = v50;
    sub_1AC2051E4(v8, (v7 + 24));
    v9 = v33;
    *(v33 + 64) = v39;
    v37 = v9;
    v10 = sub_1AC20599C();
    v38 = &v14;
    v14 = 0;
    v15 = v10 & 1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v51;
    v22 = v37;
    sub_1AC309A9C();

    v40 = sub_1AC309D1C();
    (*(v59 + 8))(v62, v58);
    v41 = sub_1AC309D0C();

    v43 = sub_1AC215CB0();
    v44 = sub_1AC30B18C();
    v45 = v11;
    v47 = sub_1AC309D2C();
    v64 = v47;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v48 = v63;

    if (v48)
    {
      v26 = v48;
    }

    else
    {
      LOBYTE(v20) = 2;
      v21 = 59;
      LODWORD(v22) = 0;
      sub_1AC30B05C();
      __break(1u);
    }

    v12 = v44;
    *v45 = v26;
    sub_1AC206300();
    v24 = v12;
    __swift_destroy_boxed_opaque_existential_1(__dst);
    return v24;
  }

  else
  {
    sub_1AC204664(&v69);
    v23[1] = 0;
    sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

double sub_1AC2D7FE8(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v35 = a1;
  v34 = a2;
  v33 = a3 + 16;
  v23 = [objc_opt_self() sharedInstance];
  if (v23)
  {
    v20 = v23;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC2C85A0();
  v18 = sub_1AC30A91C();

  v19 = [v20 deviceFromAddressString_];
  MEMORY[0x1E69E5920](v18);
  *&result = MEMORY[0x1E69E5920](v20).n128_u64[0];
  if (v19)
  {
    v32 = v19;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v30 = (*(v17 + 80))(v19, a1, v16);
    MEMORY[0x1E69E5928](v19);
    MEMORY[0x1E69E5928](a1);
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      type metadata accessor for FitTestWelcomeController();
      MEMORY[0x1E69E5928](v19);
      MEMORY[0x1E69E5928](a1);
      v31 = sub_1AC2D8690(v19, a1);
    }

    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](a1);
    v14 = v31;
    v29 = v31;
    sub_1AC2801D4();
    memset(v28, 0, sizeof(v28));
    v12 = sub_1AC279384(1, v28, 0);
    v27 = v12;
    sub_1AC280168();
    v10 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](Strong);

    sub_1AC20BEE0();
    v9 = sub_1AC279354();
    v4 = sub_1AC2485A4();
    v11 = sub_1AC30AE1C();

    [v12 setPrimaryAction_];
    v13 = [v14 navigationItem];
    [v13 setLeftBarButtonItem_];
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    sub_1AC2DC434();
    MEMORY[0x1E69E5928](v14);
    v15 = sub_1AC27F40C(v14);
    v26 = v15;
    [v15 setModalPresentationStyle_];
    MEMORY[0x1E69E5920](v15);
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v7 = v25;
      MEMORY[0x1E69E5928](v25);
      sub_1AC206988(&v25);
      swift_endAccess();
      [v7 presentViewController:v15 animated:1 completion:0];
      MEMORY[0x1E69E5920](v7);
    }

    else
    {
      sub_1AC206988(&v25);
      swift_endAccess();
    }

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v5 = v24;
      MEMORY[0x1E69E5928](v24);
      sub_1AC206988(&v24);
      swift_endAccess();
      v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
      MEMORY[0x1E69E5928](v6);
      [v6 updateFeatureChangeCount_];
      MEMORY[0x1E69E5920](v6);
    }

    else
    {
      sub_1AC206988(&v24);
      swift_endAccess();
    }

    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v14);
    *&result = MEMORY[0x1E69E5920](v19).n128_u64[0];
  }

  return result;
}

double sub_1AC2D86D4(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = a2 + 16;
  swift_beginAccess();
  v4[0] = swift_unknownObjectWeakLoadStrong();
  if (v4[0])
  {
    v3 = v4[0];
    MEMORY[0x1E69E5928](v4[0]);
    sub_1AC206988(v4);
    swift_endAccess();
    [v3 dismissViewControllerAnimated:1 completion:0];
    *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  }

  else
  {
    sub_1AC206988(v4);
    swift_endAccess();
  }

  return result;
}

double sub_1AC2D87A8(void *a1)
{
  sub_1AC30A9DC();
  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2D8828()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

Swift::UInt32 __swiftcall HeadphoneDevice.deviceColor()()
{
  v15 = v0;
  sub_1AC30929C();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v13)
  {
    v4 = v13;
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(&v10, v13);
    v5 = (*(v3 + 40))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v6 = v5;
    v7 = 0;
  }

  else
  {
    sub_1AC204664(&v10);
    v6 = 0;
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1AC2D8A54(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = HeadphoneDevice.deviceColor()();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

Swift::Bool __swiftcall HeadphoneDevice.isProductOfDifferentColors()()
{
  v14 = v0;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  if (v12)
  {
    v4 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1(&v9, v12);
    v5 = (*(v3 + 16))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    v6 = v5 & 1;
  }

  else
  {
    sub_1AC204664(&v9);
    v6 = 2;
  }

  if (v6 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v6;
  }

  return v2 & 1;
}

uint64_t sub_1AC2D8C54(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.isProductOfDifferentColors()();
  MEMORY[0x1E69E5920](a1);
  return sub_1AC3090FC() & 1;
}

Swift::UInt32 __swiftcall HeadphoneDevice.defaultFiltersID()()
{
  v15 = v0;
  sub_1AC30929C();
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v13)
  {
    v4 = v13;
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(&v10, v13);
    v5 = (*(v3 + 24))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v6 = v5;
    v7 = 0;
  }

  else
  {
    sub_1AC204664(&v10);
    v6 = 0;
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1AC2D8E70(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = HeadphoneDevice.defaultFiltersID()();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

Swift::OpaquePointer_optional __swiftcall HeadphoneDevice.getAssetsDictionary()()
{
  v15 = v0;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  if (v12)
  {
    v4 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1(&v9, v12);
    v5 = (*(v3 + 32))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    v6 = v5;
  }

  else
  {
    sub_1AC204664(&v9);
    v6 = 0;
  }

  if (v6)
  {
    v14 = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC98);
    sub_1AC30B18C();
    v14 = sub_1AC30A83C();
  }

  v2 = v14;
  result.value._rawValue = v2;
  result.is_nil = v1;
  return result;
}

id sub_1AC2D909C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v5 = HeadphoneDevice.getAssetsDictionary()();
  MEMORY[0x1E69E5920](a1);
  if (v5)
  {
    v2 = sub_1AC30A81C();

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

UIImage_optional __swiftcall HeadphoneDevice.leftImage(_:)(Swift::Bool a1)
{
  v17 = a1;
  v16 = v1;
  sub_1AC30929C();
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    sub_1AC204664(v9);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (v14)
  {
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(&v11, v14);
    v6 = (*(v5 + 48))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(&v11);
    v7 = v6;
  }

  else
  {
    sub_1AC204664(&v11);
    v7 = 0;
  }

  v3 = v7;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

id sub_1AC2D92DC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v1 = sub_1AC30910C();
  v4 = HeadphoneDevice.leftImage(_:)(v1 & 1);
  MEMORY[0x1E69E5920](a1);

  return v4;
}

UIImage_optional __swiftcall HeadphoneDevice.rightImage(_:)(Swift::Bool a1)
{
  v17 = a1;
  v16 = v1;
  sub_1AC30929C();
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    sub_1AC204664(v9);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (v14)
  {
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(&v11, v14);
    v6 = (*(v5 + 56))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(&v11);
    v7 = v6;
  }

  else
  {
    sub_1AC204664(&v11);
    v7 = 0;
  }

  v3 = v7;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

id sub_1AC2D94C4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v1 = sub_1AC30910C();
  v4 = HeadphoneDevice.rightImage(_:)(v1 & 1);
  MEMORY[0x1E69E5920](a1);

  return v4;
}

Swift::String __swiftcall HeadphoneDevice.marketingName()()
{
  v21 = v0;
  sub_1AC30929C();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v12);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  if (v17)
  {
    v7 = v17;
    v6 = v18;
    __swift_project_boxed_opaque_existential_1(&v14, v17);
    v8 = (*(*(v6 + 8) + 8))(v7);
    v9 = v1;
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    sub_1AC204664(&v14);
    v10 = 0;
    v11 = 0;
  }

  if (v11)
  {
    v19 = v10;
    v20 = v11;
  }

  else
  {
    v19 = sub_1AC30A9DC();
    v20 = v2;
  }

  v3 = v19;
  v4 = v20;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1AC2D9718(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.marketingName()();
  MEMORY[0x1E69E5920](a1);
  v3 = sub_1AC30A91C();

  return v3;
}

Swift::String __swiftcall HeadphoneDevice.singularName()()
{
  v21 = v0;
  sub_1AC30929C();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v12);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  if (v17)
  {
    v7 = v17;
    v6 = v18;
    __swift_project_boxed_opaque_existential_1(&v14, v17);
    v8 = (*(*(v6 + 8) + 16))(v7);
    v9 = v1;
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    sub_1AC204664(&v14);
    v10 = 0;
    v11 = 0;
  }

  if (v11)
  {
    v19 = v10;
    v20 = v11;
  }

  else
  {
    v19 = sub_1AC30A9DC();
    v20 = v2;
  }

  v3 = v19;
  v4 = v20;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1AC2D997C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.singularName()();
  MEMORY[0x1E69E5920](a1);
  v3 = sub_1AC30A91C();

  return v3;
}

Swift::String __swiftcall HeadphoneDevice.platformName()()
{
  v21 = v0;
  sub_1AC30929C();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v12);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  if (v17)
  {
    v7 = v17;
    v6 = v18;
    __swift_project_boxed_opaque_existential_1(&v14, v17);
    v8 = (*(*(v6 + 8) + 24))(v7);
    v9 = v1;
    __swift_destroy_boxed_opaque_existential_1(&v14);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    sub_1AC204664(&v14);
    v10 = 0;
    v11 = 0;
  }

  if (v11)
  {
    v19 = v10;
    v20 = v11;
  }

  else
  {
    v19 = sub_1AC30A9DC();
    v20 = v2;
  }

  v3 = v19;
  v4 = v20;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1AC2D9BE0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.platformName()();
  MEMORY[0x1E69E5920](a1);
  v3 = sub_1AC30A91C();

  return v3;
}

uint64_t sub_1AC2D9C6C()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2D9CD4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1AC2D9DC4()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC2D9E0C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_provider);
  swift_unknownObjectRetain();
  return v2;
}

char *sub_1AC2D9E4C(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v48 = a2;
  v14 = v2;
  v44 = 0;
  v40 = sub_1AC2DC3A4;
  ObjectType = swift_getObjectType();
  v21 = ObjectType;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C458);
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v15 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v14 - v15;
  v55 = MEMORY[0x1EEE9AC00](v49);
  v54 = v4;
  v56 = v5;
  v18 = v5;
  v43 = &qword_1EB54C000;
  v17 = OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_listeners;
  v32 = 0;
  v16 = sub_1AC309EAC();
  sub_1AC223158();
  v6 = sub_1AC30A80C();
  v7 = v49;
  *&v18[v17] = v6;
  v19 = v56;
  MEMORY[0x1E69E5928](v7);
  *&v19[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device] = v49;
  v20 = v56;
  swift_unknownObjectRetain();
  v25 = &qword_1EB54C000;
  *&v20[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_provider] = v48;
  v29 = v56;
  v22 = *&v56[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_provider];
  swift_unknownObjectRetain();
  v8 = (*(ObjectType + 136))(v22);
  v9 = v21;
  v23 = v8;
  v24 = v10;
  swift_unknownObjectRelease();
  v31 = sub_1AC30A91C();

  v26 = *&v29[v25[489]];
  swift_unknownObjectRetain();
  v27 = (*(v9 + 144))(v26);
  v28 = v11;
  swift_unknownObjectRelease();
  v30 = sub_1AC30A91C();

  v12 = type metadata accessor for FitTestWelcomeController();
  v53.receiver = v29;
  v53.super_class = v12;
  v50 = objc_msgSendSuper2(&v53, sel_initWithTitle_detailText_icon_contentLayout_, v31, v30, v44, 2, v14);
  MEMORY[0x1E69E5920](v30);
  MEMORY[0x1E69E5920](v31);
  MEMORY[0x1E69E5928](v50);
  v56 = v50;
  sub_1AC30962C();
  v33 = sub_1AC30960C();
  sub_1AC3095FC();
  MEMORY[0x1E69E5920](v33);
  v38 = sub_1AC309F2C();
  (*(v34 + 8))(v37, v36);
  v42 = &v52;
  v52 = v38;
  v41 = swift_allocObject();
  MEMORY[0x1E69E5928](v50);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v50);

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C460);
  sub_1AC257554();
  v47 = sub_1AC309FBC();

  sub_1AC20BCE0();
  v45 = &v56[v43[487]];
  v46 = &v51;
  swift_beginAccess();
  sub_1AC309E9C();
  swift_endAccess();

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v49);
  MEMORY[0x1E69E5920](v56);
  return v50;
}

uint64_t sub_1AC2DA350(uint64_t *a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v14 = *a1;
  v13 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v12 = Strong;
    v8 = *&Strong[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device];
    MEMORY[0x1E69E5928](v8);
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v5 = sub_1AC2C8864();
    v6 = v3;
    MEMORY[0x1E69E5920](v7);
    v10[1] = v5;
    v10[2] = v6;
    sub_1AC3095DC();
    sub_1AC30A85C();
    sub_1AC2063F0();
    v10[0] = v11;
    v4 = v11 == 0;
    sub_1AC206988(v10);
    if (v4)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];
    }

    return MEMORY[0x1E69E5920](Strong);
  }

  return result;
}

uint64_t sub_1AC2DA590(uint64_t a1)
{
  v5 = a1;
  v14 = 0;
  v13 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v3;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t sub_1AC2DA6AC(void *a1)
{
  v39 = a1;
  v46 = 0;
  v45 = 0;
  v21 = 0;
  v22 = sub_1AC30A90C();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = v12 - v25;
  v28 = sub_1AC30A8EC();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v34 = *(v29 + 64);
  v31 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v32 = v12 - v31;
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v35 = v12 - v33;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v37 = v12 - v36;
  v46 = v3;
  v45 = v4;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v38 = v5;
  sub_1AC30A8CC();

  swift_getObjectType();
  v40 = [v39 platformName];
  if (v40)
  {
    v20 = v40;
    v15 = v40;
    v16 = sub_1AC30A92C();
    v17 = v6;
    MEMORY[0x1E69E5920](v15);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v41 = v18;
  v42 = v19;
  if (v19)
  {
    v43 = v41;
    v44 = v42;
  }

  else
  {
    v43 = sub_1AC30A9DC();
    v44 = v7;
    if (v42)
    {
      sub_1AC2063F0();
    }
  }

  v12[0] = v44;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v12[1] = v8;
  sub_1AC30A8CC();
  v9 = v27;

  (*(v29 + 16))(v35, v37, v28);
  (*(v29 + 32))(v32, v35, v28);
  (*(v29 + 8))(v37, v28);
  sub_1AC30A8FC();
  v13 = sub_1AC215DE8(v26, v9);
  v14 = v10;
  (*(v23 + 8))(v26, v22);
  return v13;
}

id sub_1AC2DAAEC()
{
  sub_1AC2DC3AC();
  v3 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device);
  MEMORY[0x1E69E5928](v3);
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  swift_unknownObjectRetain();
  return sub_1AC2DAC00(v2);
}

uint64_t sub_1AC2DAC48()
{
  v89 = sub_1AC2DC410;
  v90 = "Fatal error";
  v91 = "Unexpectedly found nil while unwrapping an Optional value";
  v92 = "HeadphoneSettingsUI/FitTestFeature.swift";
  v127 = 0;
  v122 = 0;
  v123 = 0;
  v107 = 0;
  v102 = 0;
  v93 = sub_1AC30A90C();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v97 = v27 - v96;
  v127 = v0;
  MEMORY[0x1E69E5928](v0);
  v98 = type metadata accessor for FitTestWelcomeController();
  v126.receiver = v0;
  v126.super_class = v98;
  objc_msgSendSuper2(&v126, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v99);
  *&v1 = MEMORY[0x1E69E5928](v99).n128_u64[0];
  v100 = [v99 traitCollection];
  *&v2 = MEMORY[0x1E69E5920](v99).n128_u64[0];
  v101 = [v100 userInterfaceStyle];
  MEMORY[0x1E69E5920](v100);
  v105 = &v125;
  v125 = v101;
  v103 = &v124;
  v124 = 2;
  v104 = type metadata accessor for UIUserInterfaceStyle();
  sub_1AC218134();
  sub_1AC30B1BC();
  v87 = sub_1AC30A9DC();
  v88 = v3;
  v73 = v3;
  v72 = v87;
  v122 = v87;
  v123 = v3;
  v121 = v99;
  v75 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v64 = &off_1F20F9D00;
  v61 = sub_1AC215DE8(v97, v98);
  v62 = v4;
  v66 = *(v94 + 8);
  v65 = v94 + 8;
  v66(v97, v93);
  v63 = sub_1AC30A91C();

  v120 = v99;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v67 = sub_1AC215DE8(v97, v98);
  v68 = v5;
  v66(v97, v93);
  v69 = sub_1AC30A91C();

  v74 = 0;
  v76 = sub_1AC20D404();
  v70 = 20;
  v6 = sub_1AC30B17C();
  v78 = &v118;
  v118 = v6;
  v119 = v7;
  v8 = sub_1AC30A9DC();
  v71 = v9;
  MEMORY[0x1AC5B07E0](v8);

  v116 = v72;
  v117 = v73;
  sub_1AC30B15C();
  v10 = sub_1AC30A9DC();
  v77 = v11;
  MEMORY[0x1AC5B07E0](v10);

  v80 = v118;
  v79 = v119;

  sub_1AC2063F0();
  v83 = sub_1AC30A9BC();
  v84 = v12;
  v81 = sub_1AC290274();
  v82 = &v115;
  swift_beginAccess();
  v85 = *v81;
  MEMORY[0x1E69E5928](v85);
  swift_endAccess();
  v86 = sub_1AC20D468(v83, v84, v85);
  if (v86)
  {
    v60 = v86;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v39 = v60;
  [v99 addBulletedListItemWithTitle:v63 description:v69 image:?];
  MEMORY[0x1E69E5920](v39);
  MEMORY[0x1E69E5920](v69);
  MEMORY[0x1E69E5920](v63);
  v114 = v99;
  v49 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v43 = &off_1F20F9D00;
  v40 = sub_1AC215DE8(v97, v98);
  v41 = v13;
  v66(v97, v93);
  v42 = sub_1AC30A91C();

  v113 = v99;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v44 = sub_1AC215DE8(v97, v98);
  v45 = v14;
  v66(v97, v93);
  v46 = sub_1AC30A91C();

  v47 = 11;
  v15 = sub_1AC30B17C();
  v51 = &v111;
  v111 = v15;
  v112 = v16;
  v17 = sub_1AC30A9DC();
  v48 = v18;
  MEMORY[0x1AC5B07E0](v17);

  v109 = v72;
  v110 = v73;
  sub_1AC30B15C();
  v19 = sub_1AC30A9DC();
  v50 = v20;
  MEMORY[0x1AC5B07E0](v19);

  v53 = v111;
  v52 = v112;

  sub_1AC2063F0();
  v56 = sub_1AC30A9BC();
  v57 = v21;
  v54 = sub_1AC290274();
  v55 = &v108;
  swift_beginAccess();
  v58 = *v54;
  MEMORY[0x1E69E5928](v58);
  swift_endAccess();
  v59 = sub_1AC20D468(v56, v57, v58);
  if (v59)
  {
    v38 = v59;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  [v99 addBulletedListItemWithTitle:v42 description:v46 image:v38];
  MEMORY[0x1E69E5920](v27[0]);
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v42);
  v37 = [objc_opt_self() boldButton];
  v107 = v37;
  v106 = v99;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v27[1] = sub_1AC215DE8(v97, v98);
  v27[2] = v22;
  v66(v97, v93);
  v28 = sub_1AC30A91C();

  v32 = 0;
  [v37 setTitle:v28 forState:?];
  MEMORY[0x1E69E5920](v28);
  sub_1AC280168();
  v34 = swift_allocObject();
  v29 = v34 + 16;
  MEMORY[0x1E69E5928](v99);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v99);

  v33 = sub_1AC20BEE0();
  v31 = v23;
  v30 = sub_1AC279354();
  sub_1AC2485A4();
  v35 = sub_1AC30AE1C();

  [v37 addAction:v35 forControlEvents:64];
  MEMORY[0x1E69E5920](v35);
  *&v24 = MEMORY[0x1E69E5928](v99).n128_u64[0];
  v36 = [v99 buttonTray];
  *&v25 = MEMORY[0x1E69E5920](v99).n128_u64[0];
  [v36 addButton_];
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v37);
}

double sub_1AC2DBB00(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v17 = a1;
  v16 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v15 = Strong;
    sub_1AC2801D4();
    memset(v14, 0, sizeof(v14));
    v9 = sub_1AC279384(1, v14, 0);
    sub_1AC280168();

    sub_1AC20BEE0();
    v6 = sub_1AC279354();
    v5 = sub_1AC2485A4();
    v7 = sub_1AC30AE1C();
    [v9 setPrimaryAction_];
    v3 = MEMORY[0x1E69E5920](v7);
    v8 = (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x98))(v3);
    v10 = [v8 navigationItem];
    [v10 setLeftBarButtonItem_];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v11 = [Strong navigationController];
    *&v4 = MEMORY[0x1E69E5920](Strong).n128_u64[0];
    if (v11)
    {
      [v11 pushViewController:v8 animated:{1, v4}];
      MEMORY[0x1E69E5920](v11);
    }

    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

id sub_1AC2DC25C()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitTestWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC2DC30C(uint64_t a1)
{
  v4 = [v1 initWithDevice_provider_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1AC2DC3AC()
{
  v2 = qword_1EB54CF50;
  if (!qword_1EB54CF50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2DC434()
{
  v2 = qword_1EB54CFB8;
  if (!qword_1EB54CFB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CFB8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1AC2DC520(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v13 = 0;
  v17 = sub_1AC30A90C();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v10 - v11;
  v31 = MEMORY[0x1EEE9AC00](v25);
  v30 = v3;
  v29 = v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCE8);
  *(v2 + 16) = sub_1AC30B18C();
  *(v2 + 24) = sub_1AC30B18C();
  v4 = type metadata accessor for RemoteCameraControlDataSource();
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v5 = sub_1AC215DE8(v16, v4);
  v6 = v26;
  v18 = v5;
  v19 = v7;
  (*(v14 + 8))(v16, v17);
  v8 = v19;
  v6[4] = v18;
  v6[5] = v8;

  v20 = &v28;
  v21 = 33;
  v22 = 0;
  swift_beginAccess();
  v6[2] = v25;

  swift_endAccess();

  v23 = &v27;
  swift_beginAccess();
  v6[3] = v25;

  swift_endAccess();
  MEMORY[0x1E69E5920](v24);

  return v26;
}

uint64_t sub_1AC2DC774()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for RemoteCameraControlDataSource();
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t sub_1AC2DC88C(uint64_t a1)
{
  v19 = a1;
  v20 = v1;
  v34 = 0;
  v33 = 0;
  v27 = 0;
  v21 = sub_1AC30A90C();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v11 - v24;
  v34 = v19;
  v33 = v2;
  v26 = sub_1AC30915C();
  v28 = sub_1AC3098BC();

  v29 = type metadata accessor for AARemoteCameraControlConfig();
  v32 = v28;
  v30 = v28;
  if (v28)
  {
    switch(v28)
    {
      case 1u:
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v4 = type metadata accessor for RemoteCameraControlDataSource();
        v15 = sub_1AC215DE8(v25, v4);
        v16 = v5;
        (*(v22 + 8))(v25, v21);
        v17 = v15;
        v18 = v16;
        break;
      case 2u:
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v6 = type metadata accessor for RemoteCameraControlDataSource();
        v13 = sub_1AC215DE8(v25, v6);
        v14 = v7;
        (*(v22 + 8))(v25, v21);
        v17 = v13;
        v18 = v14;
        break;
      case 3u:
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v8 = type metadata accessor for RemoteCameraControlDataSource();
        v11 = sub_1AC215DE8(v25, v8);
        v12 = v9;
        (*(v22 + 8))(v25, v21);
        v17 = v11;
        v18 = v12;
        break;
      default:
        v31 = v30;
        sub_1AC30B1DC();
        __break(1u);
        break;
    }
  }

  else
  {
    v17 = sub_1AC30A9DC();
    v18 = v3;
  }

  return v17;
}

uint64_t sub_1AC2DCBDC()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2DCC38(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  swift_endAccess();
}

uint64_t sub_1AC2DCCA8(uint64_t a1, uint64_t a2)
{
  v11 = v2;
  v12 = 0;
  v20 = 0;
  v10 = 0;
  v27 = a1;
  v26 = a2;
  v25 = v2;
  sub_1AC309C2C();
  v13 = v24;
  v23[24] = v24;
  v15 = v23;
  swift_beginAccess();
  v16 = *(v2 + 16);
  v14 = v16;

  swift_endAccess();
  v22 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CFC0);
  sub_1AC2DCEA4();
  sub_1AC30AC9C();
  v18 = v21;
  if (v21)
  {
    v9 = v18;
    v3 = v10;
    v7[1] = v18;
    v20 = v18;

    v19 = v18;
    v7[2] = v7;
    MEMORY[0x1EEE9AC00](v7);
    v7[3] = v6;
    v6[16] = v4;
    v7[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCE8);
    sub_1AC2DD014();
    sub_1AC30AAAC();
    v8 = v3;

    v7[0] = v8;
  }

  else
  {

    v7[0] = v10;
  }

  return v7[0];
}

unint64_t sub_1AC2DCEA4()
{
  v2 = qword_1EB54CFC8;
  if (!qword_1EB54CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DCF2C()
{
  sub_1AC309C2C();
  sub_1AC26B780();
  sub_1AC30A89C();
  return sub_1AC309C4C();
}

unint64_t sub_1AC2DD014()
{
  v2 = qword_1EB54CFD0;
  if (!qword_1EB54CFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BCE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DD09C()
{
  (*(*v0 + 200))();
  sub_1AC309C2C();
  sub_1AC309C3C();
  return sub_1AC26B33C();
}

unint64_t sub_1AC2DD30C()
{
  v2 = qword_1EB54CFD8;
  if (!qword_1EB54CFD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DD450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  v24 = a1;
  v23 = a2;
  v21 = a3;
  v22 = a4;
  v11 = sub_1AC3092FC();
  MEMORY[0x1E69E5928](a1);
  if (v11)
  {
    v8 = sub_1AC3091BC();
    [v8 productID];
    MEMORY[0x1E69E5920](v8);
    type metadata accessor for CBProductID();
    sub_1AC2DD7C4();
    v9 = sub_1AC30A89C() ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5928](a1);
  if (v9)
  {
    v6 = sub_1AC3091BC();
    [v6 productID];
    MEMORY[0x1E69E5920](v6);
    type metadata accessor for CBProductID();
    sub_1AC2DD7C4();
    v7 = sub_1AC30A89C() ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  MEMORY[0x1E69E5920](a1);
  v20 = v7 & 1;
  sub_1AC30929C();
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_1AC204664(v13);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  v5 = v18 != 0;
  sub_1AC204664(&v15);
  LOBYTE(v12) = v5;
  HIBYTE(v12) = v7 & 1;
  return v12;
}

uint64_t type metadata accessor for CBProductID()
{
  v4 = qword_1EB54CFF0;
  if (!qword_1EB54CFF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CFF0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2DD7C4()
{
  v2 = qword_1EB54CFE0;
  if (!qword_1EB54CFE0)
  {
    type metadata accessor for CBProductID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DD894(uint64_t a1, uint64_t a2, int a3)
{
  v58 = a1;
  v73 = a2;
  v72 = a3;
  v59 = sub_1AC2DE3AC;
  v60 = sub_1AC2DEB84;
  v61 = sub_1AC2DEBFC;
  v62 = sub_1AC2DF40C;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while unwrapping an Optional value";
  v65 = "HeadphoneSettingsUI/ClickHoldFeature.swift";
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v66 = 0;
  v67 = sub_1AC30A90C();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v71 = v20 - v70;
  v74 = sub_1AC309AAC();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v78 = v20 - v77;
  v89 = a1;
  v88 = v4;
  v87 = v5 & 1;
  sub_1AC30929C();
  if (!v82)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v55 = __dst;
  sub_1AC2051E4(v81, __dst);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC70);
  swift_dynamicCast();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  if (v72)
  {
    v49 = v85;
    v48 = v86;
    __swift_project_boxed_opaque_existential_1(&v84, v85);
    v51 = (*(v48 + 8))(v49);
    v52 = v6;
    v50 = v7;

    v53 = v51;
    v54 = v52;
  }

  else
  {
    v53 = sub_1AC30A9DC();
    v54 = v8;
  }

  v20[1] = v54;
  v20[0] = v53;
  sub_1AC205220();
  v22 = sub_1AC309D3C();
  v33 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v27 = &unk_1F20F9F68;
  v23 = &off_1F20F9E78;
  v20[4] = sub_1AC215DE8(v71, &unk_1F20F9F68);
  v20[5] = v9;
  v25 = *(v68 + 8);
  v24 = v68 + 8;
  v25(v71, v67);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CFE8);
  v20[6] = v80;
  v80[3] = v26;
  v80[0] = v27;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850);
  MEMORY[0x1E69E5928](v58);
  v28 = 24;
  v32 = 7;
  v10 = swift_allocObject();
  *(v10 + 16) = v58;
  v20[3] = v10;
  v29 = &unk_1F20F9DC8;
  v21 = swift_allocObject();
  v20[2] = v21 + 16;
  MEMORY[0x1E69E5928](v73);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5928](v58);

  v31 = 32;
  v11 = swift_allocObject();
  v12 = v21;
  *(v11 + 16) = v58;
  *(v11 + 24) = v12;
  v20[7] = v11;
  sub_1AC20599C();
  v39 = 0;
  v40 = 2;
  sub_1AC309A9C();

  v13 = sub_1AC309D1C();
  v14 = v27;
  v45 = v13;
  v44 = *(v75 + 8);
  v43 = v75 + 8;
  v44(v78, v74);

  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v36 = sub_1AC215DE8(v71, v14);
  v37 = v15;
  v25(v71, v67);
  v38 = v79;
  v79[3] = v26;
  v79[0] = v27;
  MEMORY[0x1E69E5928](v58);
  v16 = swift_allocObject();
  *(v16 + 16) = v58;
  v35 = v16;
  v42 = swift_allocObject();
  v30 = v42 + 16;
  MEMORY[0x1E69E5928](v73);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5928](v58);

  v17 = swift_allocObject();
  v18 = v42;
  *(v17 + 16) = v58;
  *(v17 + 24) = v18;
  v41 = v17;
  sub_1AC20599C();
  sub_1AC309A9C();

  v46 = sub_1AC309D1C();
  v44(v78, v74);

  v47 = sub_1AC309D2C();

  __swift_destroy_boxed_opaque_existential_1(&v84);
  return v47;
}

uint64_t sub_1AC2DE340(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClickHoldDataSource();
  sub_1AC2095F0(a2, 0);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC2DE3B4(unint64_t a1, uint64_t a2)
{
  v46 = a1;
  v30 = a2;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v31 = 0;
  v58 = sub_1AC30A90C();
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v29 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v57 = &p_Strong - v29;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D000);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v33 = *(v49 + 64);
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v53 = &p_Strong - v32;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &p_Strong - v34;
  v83 = &p_Strong - v34;
  v82 = v3;
  v63 = v4 + 16;
  v81 = v4 + 16;
  v38 = type metadata accessor for ClickHoldDataSource();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBE0);
  v35 = 2;
  v44 = sub_1AC30B18C();
  v42 = v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBF0);
  v37 = sub_1AC30B18C();
  v36 = v6;
  MEMORY[0x1E69E5928](v46);
  v79 = 0;
  v80 = 0;
  v7 = sub_1AC309C5C();
  v8 = v46;
  *v36 = v7;
  MEMORY[0x1E69E5928](v8);
  MEMORY[0x1E69E5928](v46);
  v77 = 0;
  v78 = v46 | 0x2000000000000000;
  v9 = sub_1AC309C5C();
  v10 = v37;
  v36[1] = v9;
  sub_1AC206300();
  *v42 = v10;
  v54 = 4;
  v41 = sub_1AC30B18C();
  v39 = v11;
  MEMORY[0x1E69E5928](v46);
  v75 = 0;
  v76 = 0x4000000000000000;
  v12 = sub_1AC309C5C();
  v13 = v46;
  *v39 = v12;
  MEMORY[0x1E69E5928](v13);
  v73 = 0;
  v74 = 0x6000000000000000;
  v14 = sub_1AC309C5C();
  v15 = v46;
  v39[1] = v14;
  MEMORY[0x1E69E5928](v15);
  v71 = 0;
  v72 = 0x8000000000000000;
  v16 = sub_1AC309C5C();
  v17 = v46;
  v39[2] = v16;
  MEMORY[0x1E69E5928](v17);
  v69 = 0;
  v70 = 0xA000000000000000;
  v18 = sub_1AC309C5C();
  v19 = v41;
  v39[3] = v18;
  sub_1AC206300();
  v20 = v19;
  v21 = v44;
  v42[1] = v20;
  sub_1AC206300();
  v45 = v21;
  MEMORY[0x1E69E5928](v46);
  sub_1AC209B38(0, v45, v46);
  v47 = v22;
  v68 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D008);

  v67 = v47;
  v48 = sub_1AC309C6C();
  v66 = v48;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850);
  (*(v49 + 16))(v53, v51, v52);
  v62 = sub_1AC309A8C();
  v65 = v62;
  MEMORY[0x1E69E5928](v62);
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v59 = sub_1AC215DE8(v57, &unk_1F20F9F68);
  v60 = v23;
  (*(v55 + 8))(v57, v58);
  v61 = sub_1AC30A91C();

  [v62 setTitle_];
  MEMORY[0x1E69E5920](v61);
  MEMORY[0x1E69E5920](v62);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v28 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    *&v24 = MEMORY[0x1E69E5928](v62).n128_u64[0];
    [v28 showController_];
    MEMORY[0x1E69E5920](v62);
    MEMORY[0x1E69E5920](v28);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v25 = MEMORY[0x1E69E5920](v62);
  (*(v49 + 8))(v51, v52, v25);
}

uint64_t sub_1AC2DEB90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClickHoldDataSource();
  sub_1AC2095F0(a2, 1u);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC2DEC04(unint64_t a1, uint64_t a2)
{
  v48 = a1;
  v31 = a2;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v70 = 0;
  v68 = 0;
  v67 = 0;
  v32 = 0;
  v60 = sub_1AC30A90C();
  v57 = *(v60 - 8);
  v58 = v60 - 8;
  v30 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v27 - v30;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D000);
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v34 = *(v51 + 64);
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v55 = &v27 - v33;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v27 - v35;
  v85 = &v27 - v35;
  v84 = v3;
  v65 = v4 + 16;
  v83 = v4 + 16;
  v40 = type metadata accessor for ClickHoldDataSource();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBE0);
  v36 = 2;
  v46 = sub_1AC30B18C();
  v44 = v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBF0);
  v38 = sub_1AC30B18C();
  v37 = v6;
  MEMORY[0x1E69E5928](v48);
  v39 = 1;
  v81 = 1;
  v82 = 0;
  v7 = sub_1AC309C5C();
  v8 = v48;
  *v37 = v7;
  MEMORY[0x1E69E5928](v8);
  MEMORY[0x1E69E5928](v48);
  v79 = v39;
  v80 = v48 | 0x2000000000000000;
  v9 = sub_1AC309C5C();
  v10 = v38;
  v37[1] = v9;
  sub_1AC206300();
  *v44 = v10;
  v43 = sub_1AC30B18C();
  v41 = v11;
  MEMORY[0x1E69E5928](v48);
  v77 = v39;
  v78 = 0x4000000000000000;
  v12 = sub_1AC309C5C();
  v13 = v48;
  *v41 = v12;
  MEMORY[0x1E69E5928](v13);
  v75 = v39;
  v76 = 0x6000000000000000;
  v14 = sub_1AC309C5C();
  v15 = v48;
  v41[1] = v14;
  MEMORY[0x1E69E5928](v15);
  v73 = v39;
  v74 = 0x8000000000000000;
  v16 = sub_1AC309C5C();
  v17 = v48;
  v41[2] = v16;
  MEMORY[0x1E69E5928](v17);
  v71 = v39;
  v72 = 0xA000000000000000;
  v18 = sub_1AC309C5C();
  v19 = v43;
  v41[3] = v18;
  sub_1AC206300();
  v20 = v19;
  v21 = v46;
  v44[1] = v20;
  sub_1AC206300();
  v47 = v21;
  MEMORY[0x1E69E5928](v48);
  v56 = 1;
  sub_1AC209B38(1, v47, v48);
  v49 = v22;
  v70 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D008);

  v69 = v49;
  v50 = sub_1AC309C6C();
  v68 = v50;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850);
  (*(v51 + 16))(v55, v53, v54);
  v64 = sub_1AC309A8C();
  v67 = v64;
  MEMORY[0x1E69E5928](v64);
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v61 = sub_1AC215DE8(v59, &unk_1F20F9F68);
  v62 = v23;
  (*(v57 + 8))(v59, v60);
  v63 = sub_1AC30A91C();

  [v64 setTitle_];
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v29 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    *&v24 = MEMORY[0x1E69E5928](v64).n128_u64[0];
    [v29 showController_];
    MEMORY[0x1E69E5920](v64);
    MEMORY[0x1E69E5920](v29);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v25 = MEMORY[0x1E69E5920](v64);
  (*(v51 + 8))(v53, v54, v25);
}

uint64_t sub_1AC2DF418()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

uint64_t sub_1AC2DF518(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC2DF658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1AC2DF89C()
{
  v2 = qword_1EB54CFF8;
  if (!qword_1EB54CFF8)
  {
    type metadata accessor for CBProductID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v16 = a2;
  v14 = a3;
  v15 = a4;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D010);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v5 = v12 != 0;
  sub_1AC204664(&v9);
  LOBYTE(v6) = v5;
  HIBYTE(v6) = 1;
  return v6;
}

uint64_t sub_1AC2DFA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v27 = a2;
  v24 = a3;
  v25 = a4;
  v32 = sub_1AC2DFFBC;
  v34 = sub_1AC2E01EC;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v38 = 0;
  v22 = sub_1AC30A90C();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v14 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v14 - v14;
  v43 = sub_1AC309AAC();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v15 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v44 = &v14 - v15;
  v52 = v4;
  v51 = v5;
  v49 = v6;
  v50 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v16 = MEMORY[0x1E69A2B08];
  v17 = sub_1AC205220();
  v18 = v8;
  sub_1AC205220();
  v45 = sub_1AC309D3C();
  v48[4] = v24;
  v48[5] = v25;
  v30 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v23 = &unk_1F20FA0B0;
  v35 = sub_1AC215DE8(v21, &unk_1F20FA0B0);
  v36 = v9;
  (*(v19 + 8))(v21, v22);

  v37 = v48;
  v48[3] = v23;
  v48[0] = v24;
  v48[1] = v25;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D018);
  MEMORY[0x1E69E5928](v29);
  v26 = 24;
  v28 = 7;
  v10 = swift_allocObject();
  *(v10 + 16) = v29;
  v33 = v10;
  v40 = swift_allocObject();
  MEMORY[0x1E69E5928](v27);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5928](v29);

  v11 = swift_allocObject();
  v12 = v40;
  *(v11 + 16) = v29;
  *(v11 + 24) = v12;
  v39 = v11;
  sub_1AC20599C();
  sub_1AC309A9C();

  v46 = sub_1AC309D1C();
  (*(v41 + 8))(v44, v43);

  v47 = sub_1AC309D2C();

  return v47;
}

uint64_t sub_1AC2DFF60()
{
  sub_1AC30956C();
  v1 = sub_1AC30A91C();

  return v1;
}

uint64_t *sub_1AC2DFFC4(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2 + 16;
  MEMORY[0x1E69E5928](a1);
  *(swift_allocObject() + 16) = a1;
  sub_1AC223000(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D018);
  sub_1AC223AA4(v12, v9);
  memcpy(__dst, v12, sizeof(__dst));
  v6 = sub_1AC309A8C();
  v7[4] = v6;
  MEMORY[0x1E69E5928](v6);
  sub_1AC30956C();
  v5 = sub_1AC30A91C();

  [v6 setTitle_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  swift_beginAccess();
  v7[0] = swift_unknownObjectWeakLoadStrong();
  if (v7[0])
  {
    v3 = v7[0];
    MEMORY[0x1E69E5928](v7[0]);
    sub_1AC206988(v7);
    swift_endAccess();
    [v3 showController_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    sub_1AC206988(v7);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v6);
  result = v12;
  sub_1AC223D70();
  return result;
}

uint64_t sub_1AC2E01F8(uint64_t a1)
{
  type metadata accessor for NameFeatureViewModel();
  MEMORY[0x1E69E5928](a1);
  return sub_1AC2201C8(a1);
}

uint64_t sub_1AC2E0244()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

uint64_t sub_1AC2E03B0()
{
  result = sub_1AC30979C();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1AC30978C();
    if (v2)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_1AC2E0448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v20 = sub_1AC2E0F44;
  v36 = MEMORY[0x1E69CA980];
  v45 = MEMORY[0x1E697CFD8];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v31 = sub_1AC30A90C();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v12 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v12 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D020);
  v21 = *(v34 - 8);
  v22 = v34 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v23 = &v12 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D028);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v14 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v12 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D030);
  v47 = *(v53 - 8);
  v48 = v53 - 8;
  v16 = *(v47 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v51 = &v12 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v12 - v17;
  v70 = &v12 - v17;
  *&v68 = v6;
  *(&v68 + 1) = v7;
  *&v69 = v8;
  *(&v69 + 1) = v9;

  v18 = &v56;
  v57 = v24;
  v58 = v25;
  v59 = v26;
  v60 = v27;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D038);
  sub_1AC2E0F58();
  sub_1AC30A42C();

  v35 = sub_1AC2E111C();
  sub_1AC30A48C();
  (*(v21 + 8))(v23, v34);
  v67[2] = v24;
  v67[3] = v25;
  v67[4] = v26;
  v67[5] = v27;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v32 = sub_1AC215DE8(v30, &unk_1F20FA398);
  v33 = v10;
  (*(v28 + 8))(v30, v31);
  v37 = v67;
  v67[0] = v32;
  v67[1] = v33;
  v65 = v34;
  v66 = v35;
  v46 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_1AC207FC0();
  v42 = MEMORY[0x1E69E6158];
  sub_1AC30A51C();
  sub_1AC2063F0();
  (*(v38 + 8))(v40, v41);
  v61 = v41;
  v62 = v42;
  v63 = OpaqueTypeConformance2;
  v64 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v51, v53, v52);
  v55 = *(v47 + 8);
  v54 = v47 + 8;
  v55(v51, v53);
  (*(v47 + 16))(v51, v52, v53);
  sub_1AC207B58(v51, v53, v49);
  v55(v51, v53);
  return (v55)(v52, v53);
}

uint64_t sub_1AC2E0B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v16 = a1;
  v27 = a2;
  v17 = a3;
  v28 = a4;
  v22 = 0;
  v26 = sub_1AC2E6ED4;
  v21 = sub_1AC2E21B8;
  v23 = sub_1AC2E6EE8;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D038);
  v29 = *(v35 - 8);
  v30 = v35 - 8;
  v14 = *(v29 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v33 = &v12 - v13;
  v15 = v13;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v12 - v15;
  v50 = &v12 - v15;
  *&v48 = v6;
  *(&v48 + 1) = v7;
  *&v49 = v8;
  *(&v49 + 1) = v9;

  v20 = &v43;
  v44 = v16;
  v45 = v27;
  v46 = v17;
  v47 = v28;

  v24 = &v38;
  v39 = v16;
  v40 = v27;
  v41 = v17;
  v42 = v28;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D050);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D060);
  v19 = sub_1AC2E100C();
  v10 = sub_1AC2E1094();
  sub_1AC2E2FC4(v26, v20, v23, v24, MEMORY[0x1E6981E70], v25, v33, v18, MEMORY[0x1E6981E60], v19, v10);

  v32 = sub_1AC2E0F58();
  sub_1AC207B58(v33, v35, v34);
  v37 = *(v29 + 8);
  v36 = v29 + 8;
  v37(v33, v35);
  (*(v29 + 16))(v33, v34, v35);
  sub_1AC207B58(v33, v35, v31);
  v37(v33, v35);
  return (v37)(v34, v35);
}

unint64_t sub_1AC2E0F58()
{
  v2 = qword_1EB54D040;
  if (!qword_1EB54D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D038);
    sub_1AC2E100C();
    sub_1AC2E1094();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E100C()
{
  v2 = qword_1EB54D048;
  if (!qword_1EB54D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D048);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E1094()
{
  v2 = qword_1EB54D058;
  if (!qword_1EB54D058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D060);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E111C()
{
  v2 = qword_1EB54D068;
  if (!qword_1EB54D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2E11A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v33 = a3;
  v34 = a2;
  v32 = a1;
  v22 = a5;
  v58 = 0;
  v57 = 0u;
  v56 = 0u;
  v55 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0C8);
  v23 = v39;
  v24 = *(v39 - 8);
  v38 = v24;
  v25 = v24;
  v28 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v20 - v30;
  MEMORY[0x1EEE9AC00](v5);
  v27 = v20 - v30;
  MEMORY[0x1EEE9AC00](v6);
  v42 = v20 - v30;
  v29 = v20 - v30;
  MEMORY[0x1EEE9AC00](v7);
  v36 = v20 - v30;
  v31 = v20 - v30;
  v58 = v20 - v30;
  *&v56 = v8;
  *(&v56 + 1) = v9;
  *&v57 = v10;
  *(&v57 + 1) = v11;

  v47 = v32;
  v48 = v34;
  v49 = v33;
  v50 = v35;

  v43 = v32;
  v44 = v34;
  v45 = v33;
  v46 = v35;
  sub_1AC30A0FC();

  v37 = sub_1AC2E6F24();
  sub_1AC207B58(v42, v39, v36);
  v40 = *(v38 + 8);
  v41 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v42, v39);
  v55 = v42;

  v20[4] = v20;
  v20[1] = 48;
  MEMORY[0x1EEE9AC00](v34);
  v12 = v33;
  v20[2] = &v20[-6];
  v20[-4] = v32;
  v20[-3] = v13;
  v20[-2] = v12;
  v20[-1] = v14;

  v20[3] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v15 = v33;
  v16 = v35;
  v20[-4] = v17;
  v20[-3] = v18;
  v20[-2] = v15;
  v20[-1] = v16;
  sub_1AC30A0FC();

  sub_1AC207B58(v27, v23, v29);
  v40(v27, v23);
  v21 = *(v25 + 16);
  v20[5] = v25 + 16;
  v21(v27, v31, v23);
  v54[0] = v27;
  v21(v26, v29, v23);
  v54[1] = v26;
  v53[0] = v23;
  v53[1] = v23;
  v51 = v37;
  v52 = v37;
  sub_1AC23A49C(v54, 2uLL, v53, v22);
  v40(v26, v23);
  v40(v27, v23);
  v40(v29, v23);
  return (v40)(v31, v23);
}

uint64_t sub_1AC2E1818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;

  v26 = a1;
  v27 = a2;
  sub_1AC207FC0();
  v22 = sub_1AC30A47C();
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v19[0] = v22;
  v19[1] = v5;
  v20 = v6 & 1;
  v21 = v7;
  v15 = MEMORY[0x1E6981148];
  sub_1AC207B58(v19, MEMORY[0x1E6981148], &v28);
  sub_1AC208038(v19);
  v11 = v28;
  v12 = v29;
  v13 = *(&v29 + 1);
  sub_1AC207E00(v28, *(&v28 + 1), v29 & 1);

  v16 = v11;
  v17 = v12 & 1;
  v18 = v13;
  sub_1AC207B58(&v16, v15, a5);
  sub_1AC208038(&v16);
  return sub_1AC208038(&v28);
}

uint64_t sub_1AC2E19AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v15 = a1;
  v14[2] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v47 = 0u;
  v48 = 0u;
  v33 = &v45;
  v45 = 0u;
  v46 = 0u;
  v20 = sub_1AC30A90C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v14 - v16;
  *&v47 = v5;
  *(&v47 + 1) = v6;
  *&v48 = v7;
  *(&v48 + 1) = v8;
  v44[2] = v5;
  v44[3] = v6;
  v44[4] = v7;
  v44[5] = v8;
  v27 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v21 = sub_1AC215DE8(v19, &unk_1F20FA398);
  v22 = v9;
  (*(v17 + 8))(v19, v20);
  v23 = v44;
  v44[0] = v21;
  v44[1] = v22;
  sub_1AC207FC0();
  v40 = sub_1AC30A47C();
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v24 = v37;
  v37[0] = v40;
  v37[1] = v10;
  v38 = v11 & 1;
  v39 = v12;
  v30 = MEMORY[0x1E6981148];
  v31 = MEMORY[0x1E6981138];
  sub_1AC207B58(v37, MEMORY[0x1E6981148], v33);
  sub_1AC208038(v24);
  v25 = v45;
  v26 = v46;
  v28 = *(&v46 + 1);
  sub_1AC207E00(v45, *(&v45 + 1), v46 & 1);

  v32 = &v34;
  v34 = v25;
  v35 = v26 & 1 & v27;
  v36 = v28;
  sub_1AC207B58(&v34, v30, v29);
  sub_1AC208038(v32);
  return sub_1AC208038(v33);
}

uint64_t sub_1AC2E1CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;

  v26 = a3;
  v27 = a4;
  sub_1AC207FC0();
  v22 = sub_1AC30A47C();
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v19[0] = v22;
  v19[1] = v5;
  v20 = v6 & 1;
  v21 = v7;
  v15 = MEMORY[0x1E6981148];
  sub_1AC207B58(v19, MEMORY[0x1E6981148], &v28);
  sub_1AC208038(v19);
  v11 = v28;
  v12 = v29;
  v13 = *(&v29 + 1);
  sub_1AC207E00(v28, *(&v28 + 1), v29 & 1);

  v16 = v11;
  v17 = v12 & 1;
  v18 = v13;
  sub_1AC207B58(&v16, v15, a5);
  sub_1AC208038(&v16);
  return sub_1AC208038(&v28);
}

uint64_t sub_1AC2E1E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v15 = a1;
  v14[2] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v47 = 0u;
  v48 = 0u;
  v33 = &v45;
  v45 = 0u;
  v46 = 0u;
  v20 = sub_1AC30A90C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v14 - v16;
  *&v47 = v5;
  *(&v47 + 1) = v6;
  *&v48 = v7;
  *(&v48 + 1) = v8;
  v44[2] = v5;
  v44[3] = v6;
  v44[4] = v7;
  v44[5] = v8;
  v27 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v21 = sub_1AC215DE8(v19, &unk_1F20FA398);
  v22 = v9;
  (*(v17 + 8))(v19, v20);
  v23 = v44;
  v44[0] = v21;
  v44[1] = v22;
  sub_1AC207FC0();
  v40 = sub_1AC30A47C();
  v41 = v10;
  v42 = v11;
  v43 = v12;
  v24 = v37;
  v37[0] = v40;
  v37[1] = v10;
  v38 = v11 & 1;
  v39 = v12;
  v30 = MEMORY[0x1E6981148];
  v31 = MEMORY[0x1E6981138];
  sub_1AC207B58(v37, MEMORY[0x1E6981148], v33);
  sub_1AC208038(v24);
  v25 = v45;
  v26 = v46;
  v28 = *(&v46 + 1);
  sub_1AC207E00(v45, *(&v45 + 1), v46 & 1);

  v32 = &v34;
  v34 = v25;
  v35 = v26 & 1 & v27;
  v36 = v28;
  sub_1AC207B58(&v34, v30, v29);
  sub_1AC208038(v32);
  return sub_1AC208038(v33);
}

uint64_t sub_1AC2E21B8@<X0>(uint64_t a1@<X8>)
{
  sub_1AC30A77C();
  v4 = MEMORY[0x1E6981E70];
  sub_1AC207B58(v3, MEMORY[0x1E6981E70], v3);
  return sub_1AC207B58(v3, v4, a1);
}

uint64_t sub_1AC2E2214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a5;
  v42 = a1;
  v41 = a2;
  v39 = a3;
  v40 = a4;
  v82 = 0;
  v81 = sub_1AC2E2C00;
  v86 = MEMORY[0x1E6981218];
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v162 = 0;
  v163 = 0;
  v90 = &v112;
  v112 = 0;
  v113 = 0;
  v88 = 0;
  v64 = sub_1AC30A1EC();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v34 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v34 - v34;
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v34 - v34);
  v61 = &v34 - v35;
  v36 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v34 - v35);
  v65 = &v34 - v36;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0C0);
  v91 = *(v100 - 8);
  v92 = v100 - 8;
  v37 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88);
  v98 = &v34 - v37;
  v38 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v34 - v38;
  v170 = &v34 - v38;
  v47 = sub_1AC30A90C();
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v43 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v34 - v43;
  *&v168 = v9;
  *(&v168 + 1) = v10;
  *&v169 = v11;
  *(&v169 + 1) = v12;
  v164 = v9;
  v165 = v10;
  v166 = v11;
  v167 = v12;
  *&v89[1] = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v49 = sub_1AC215DE8(v46, &unk_1F20FA398);
  v103 = v13;
  (*(v44 + 8))(v46, v47);
  v162 = v49;
  v163 = v103;
  v97 = 2;
  sub_1AC30A1DC();
  sub_1AC30A9DC();
  v48 = v14;
  sub_1AC30A1CC();

  sub_1AC30A1BC();
  v87 = 1;
  sub_1AC30A9DC();
  v50 = v15;
  sub_1AC30A1CC();

  sub_1AC30A9DC();
  sub_1AC30A1FC();
  v159 = 0;
  v160 = 0;
  v161 = *v89 & 0x100;
  v155 = sub_1AC30A46C();
  v156 = v16;
  v157 = v17;
  v158 = v18;
  v52 = v155;
  v53 = v16;
  v54 = v17;
  v55 = v18;
  v51 = sub_1AC30A60C();
  v151 = v52;
  v152 = v53;
  v153 = v54 & 1 & v89[1];
  v154 = v55;
  v147 = sub_1AC30A44C();
  v148 = v19;
  v149 = v20;
  v150 = v21;
  v56 = v147;
  v57 = v19;
  v58 = v20;
  v59 = v21;

  sub_1AC207F7C(v52, v53, v54 & 1);

  v143 = v56;
  v144 = v57;
  v145 = v58 & 1 & v89[1];
  v146 = v59;
  sub_1AC30A1AC();
  sub_1AC207F7C(v56, v57, v58 & 1);

  sub_1AC30A9DC();
  v60 = v22;
  sub_1AC30A1CC();

  (*(v62 + 16))(v61, v65, v64);
  (*(v62 + 32))(v66, v61, v64);
  (*(v62 + 8))(v65, v64);
  sub_1AC30A20C();
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = v89[1] & 1;
  v135 = sub_1AC30A46C();
  v136 = v23;
  v137 = v24;
  v138 = v25;
  v68 = v135;
  v69 = v23;
  v70 = v24;
  v71 = v25;
  v67 = sub_1AC30A40C();
  v131 = v68;
  v132 = v69;
  v133 = v70 & 1 & v89[1];
  v134 = v71;
  v127 = sub_1AC30A45C();
  v128 = v26;
  v129 = v27;
  v130 = v28;
  v73 = v127;
  v74 = v26;
  v75 = v27;
  v76 = v28;

  sub_1AC207F7C(v68, v69, v70 & 1);

  v72 = sub_1AC30A62C();
  v123 = v73;
  v124 = v74;
  v125 = v75 & 1 & v89[1];
  v126 = v76;
  v119 = sub_1AC30A44C();
  v120 = v29;
  v121 = v30;
  v122 = v31;
  v77 = v119;
  v78 = v29;
  v79 = v30;
  v80 = v31;

  sub_1AC207F7C(v73, v74, v75 & 1);

  v83 = v116;
  v116[0] = v77;
  v116[1] = v78;
  v117 = v79 & 1 & v89[1];
  v118 = v80;
  v84 = MEMORY[0x1E6981148];
  v85 = MEMORY[0x1E6981138];
  sub_1AC2565B8();
  sub_1AC30A4DC();
  sub_1AC208038(v83);
  v114 = v84;
  v115 = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v98, v100, v99);
  v102 = *(v91 + 8);
  v101 = v91 + 8;
  v102(v98, v100);
  v110 = sub_1AC30A6FC();
  v111 = v32 & 1 & v89[1];
  v93 = MEMORY[0x1E6981840];
  v95 = MEMORY[0x1E6981838];
  sub_1AC207B58(&v110, MEMORY[0x1E6981840], v90);
  (*(v91 + 16))(v98, v99, v100);
  v109[0] = v98;
  v107 = v112;
  v108 = v113;
  v109[1] = &v107;
  v106[0] = v100;
  v106[1] = v93;
  v104 = OpaqueTypeConformance2;
  v105 = v95;
  sub_1AC23A49C(v109, v97, v106, v96);
  v102(v98, v100);
  v102(v99, v100);
}

uint64_t sub_1AC2E2C00()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v15 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v23 = &v6 - v15;
  v25 = sub_1AC30901C();
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v6 - v16;
  v18 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v16);
  v19 = &v6 - v18;
  v27 = &v6 - v18;
  v24 = 1;
  sub_1AC30A9DC();
  v20 = v2;
  sub_1AC30900C();

  if ((*(v21 + 48))(v23, v24, v25) == 1)
  {
    return sub_1AC247D84(v23);
  }

  (*(v21 + 32))(v19, v23, v25);
  v28[0] = 0;
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v13 = v14;
    v11 = v14;
    (*(v21 + 16))(v17, v19, v25);
    v10 = sub_1AC308FEC();
    (*(v21 + 8))(v17, v25);
    v26 = v28[0];
    v12 = [v11 openSensitiveURL:v10 withOptions:0 error:&v26];
    v9 = v26;
    MEMORY[0x1E69E5928](v26);
    v4 = v28[0];
    v28[0] = v9;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v10);
    v5 = MEMORY[0x1E69E5920](v11);
    if ((v12 & 1) == 0)
    {
      v7 = v28[0];
      v8 = sub_1AC308FDC();
      MEMORY[0x1E69E5920](v7);
      swift_willThrow();
    }
  }

  else
  {
    sub_1AC206988(v28);
  }

  return (*(v21 + 8))(v19, v25, v5);
}

uint64_t sub_1AC2E2FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v25 = a1;
  v26 = a2;
  v19 = a3;
  v18 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v20 = a10;
  v21 = a11;
  v33 = a5;
  v32 = a6;
  v31 = a8;
  v16 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v16 - v16;
  v17 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](&v16 - v16);
  v23 = &v16 - v17;
  v14 = v13(v12);
  v19(v14);
  return sub_1AC30A73C();
}

uint64_t sub_1AC2E3168()
{
  v1 = sub_1AC2E315C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2E31BC(uint64_t a1)
{
  v2 = sub_1AC2E315C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*sub_1AC2E3210())()
{
  sub_1AC2E315C();
  swift_beginAccess();
  return sub_1AC20949C;
}

uint64_t sub_1AC2E326C()
{
  v3 = sub_1AC30922C();
  v4 = MEMORY[0x1AC5AFEC0](v3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], MEMORY[0x1E69E6540]);

  result = v4;
  if ((v4 & 1) == 0)
  {
    while (1)
    {
      sub_1AC2E315C();
      swift_beginAccess();
      swift_endAccess();
      sub_1AC30979C();
      sub_1AC30922C();
      sub_1AC30A85C();
      sub_1AC2063F0();

      if (v5)
      {
        break;
      }

      v1 = sub_1AC2E315C();
      sub_1AC2E315C();
      swift_beginAccess();
      swift_endAccess();
      v2 = sub_1AC2E03B0();
      swift_beginAccess();
      *v1 = v2;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1AC2E3484(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  sub_1AC30929C();
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D070);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v6);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v4 = v11 != 0;
  sub_1AC204664(&v8);
  LOBYTE(v5) = v4;
  HIBYTE(v5) = 1;
  return v5;
}

uint64_t sub_1AC2E35A0(void *a1, void *a2)
{
  v32 = a1;
  v33 = a2;
  v3 = v2;
  v22 = v3;
  v21 = sub_1AC2E3B24;
  v28 = *v3;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D078);
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v10 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D080);
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v10 - v12;
  v38 = a1;
  v37 = v5;
  v36 = v22;
  sub_1AC30924C();
  v17 = sub_1AC309F2C();
  (*(v13 + 8))(v16, v15);
  v20 = &v35;
  v35 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D088);
  v18 = sub_1AC2E38F4();
  sub_1AC2E397C();
  sub_1AC309FAC();
  sub_1AC20BCE0();
  v23 = swift_allocObject();
  MEMORY[0x1E69E5928](v33);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v33);

  sub_1AC2E3B2C();
  v6 = sub_1AC309FBC();
  v7 = v22;
  v31 = v6;

  (*(v24 + 8))(v26, v27);
  v8 = *(*v7 + 112);
  v29 = &v34;
  v30 = v8();
  sub_1AC309E9C();
  v30();

  return sub_1AC2E3BB4(v32, v33);
}

unint64_t sub_1AC2E38F4()
{
  v2 = qword_1EB54D090;
  if (!qword_1EB54D090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E397C()
{
  v2 = qword_1EB54D098;
  if (!qword_1EB54D098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D0A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D098);
    return WitnessTable;
  }

  return v2;
}

double sub_1AC2E3A10(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v7 = *a1;
  v6 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC();
    v3 = sub_1AC30A91C();

    [v4 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v3);
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1AC2E3B2C()
{
  v2 = qword_1EB54D0A8;
  if (!qword_1EB54D0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2E3BB4(void *a1, void *a2)
{
  v229 = v255;
  v242 = a2;
  v230 = a1;
  v236 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v266 = 0;
  v231 = 0;
  v260 = 0;
  v259 = 0;
  v256 = 0;
  v251 = 0;
  v250 = 0;
  v232 = sub_1AC309E6C();
  v233 = *(v232 - 8);
  v234 = v233;
  MEMORY[0x1EEE9AC00](0);
  v235 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1AC309AAC();
  v238 = *(v237 - 8);
  v239 = v238;
  MEMORY[0x1EEE9AC00](v236);
  v240 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1AC30A90C();
  v244 = *(v243 - 8);
  v245 = v244;
  v246 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v243 - 8);
  v247 = v77 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = a1;
  v293 = v5;
  v292 = v6;
  sub_1AC30929C();
  if (v285)
  {
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D070);
    if (!swift_dynamicCast())
    {
      v286 = 0;
      v287 = 0;
      v288 = 0;
      v289 = 0;
      v290 = 0;
    }
  }

  else
  {
    sub_1AC204664(v284);
    v286 = 0;
    v287 = 0;
    v288 = 0;
    v289 = 0;
    v290 = 0;
  }

  if (!v289)
  {
    sub_1AC204664(&v286);
    v77[1] = 0;
    v77[2] = sub_1AC215CB0();
    v78 = sub_1AC30B18C();
    v127 = v78;
    v128 = v231;
    return v127;
  }

  v179 = __dst;
  sub_1AC2051E4(&v286, __dst);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v205 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v219 = 0;
  v206 = type metadata accessor for AboutFeature();
  v173 = v206;
  v207 = &off_1F20FA320;
  v177 = sub_1AC215DE8(v247, v206);
  v178 = v7;
  v209 = *(v245 + 8);
  v208 = v245 + 8;
  v175 = v209;
  v176 = (v245 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v209(v247, v243);
  sub_1AC205220();
  v187 = sub_1AC309D3C();
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v182 = sub_1AC215DE8(v247, v206);
  v183 = v8;
  v209(v247, v243);
  v280 = v219;
  v281 = v219;
  v282 = v219;
  v283 = v219;
  v180 = v279;
  sub_1AC241BFC(v179, v279);
  v214 = 7;
  v181 = swift_allocObject();
  sub_1AC2051E4(v180, (v181 + 16));
  v9 = sub_1AC20599C();
  v184 = &v67;
  v75 = v219;
  v74 = v219;
  v73 = v219;
  v72 = v219;
  v71 = v181;
  v70 = sub_1AC2E5498;
  v69 = v219;
  v68 = v9 & 1;
  v67 = v219;
  v198 = 4;
  sub_1AC309A9C();
  v192 = sub_1AC309D1C();
  v223 = *(v239 + 8);
  v222 = v239 + 8;
  v185 = v223;
  v186 = (v239 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v223(v240, v237);

  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v189 = sub_1AC215DE8(v247, v206);
  v190 = v10;
  v209(v247, v243);
  v275 = v219;
  v276 = v219;
  v277 = v219;
  v278 = v219;
  v11 = v230;
  v210 = 24;
  v188 = swift_allocObject();
  *(v188 + 16) = v230;
  v12 = sub_1AC20599C();
  v191 = &v67;
  v75 = v219;
  v74 = v219;
  v73 = v219;
  v72 = v219;
  v71 = v188;
  v70 = sub_1AC2E5648;
  v69 = v219;
  v68 = v12 & 1;
  v67 = v219;
  sub_1AC309A9C();
  v201 = sub_1AC309D1C();
  v223(v240, v237);

  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v196 = sub_1AC215DE8(v247, v206);
  v197 = v13;
  v209(v247, v243);
  v271 = v219;
  v272 = v219;
  v273 = v219;
  v274 = v219;
  v14 = v230;
  v202 = 32;
  v15 = swift_allocObject();
  v16 = v241;
  v195 = v15;
  *(v15 + 16) = v230;
  *(v15 + 24) = v16;
  v211 = &unk_1F20FA100;
  v200 = swift_allocObject();
  v193 = v200 + 16;
  v17 = v242;
  swift_unknownObjectWeakInit();

  v18 = v230;

  v213 = 40;
  v19 = swift_allocObject();
  v20 = v241;
  v21 = v19;
  v22 = v200;
  v194 = v21;
  v21[2] = v230;
  v21[3] = v20;
  v21[4] = v22;
  v23 = sub_1AC20599C();
  v199 = &v67;
  v75 = v194;
  v74 = sub_1AC2E5D58;
  v73 = v219;
  v72 = v219;
  v71 = v195;
  v70 = sub_1AC2E5B40;
  v69 = v219;
  v68 = v23 & 1;
  v67 = v219;
  sub_1AC309A9C();

  v204 = sub_1AC309D1C();
  v223(v240, v237);

  v24 = v230;
  v203 = v77;
  MEMORY[0x1EEE9AC00](v77);
  v75 = v241;
  v76 = v25;
  v225 = sub_1AC309D0C();

  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v217 = sub_1AC215DE8(v247, v206);
  v218 = v26;
  v209(v247, v243);
  v267 = v219;
  v268 = v219;
  v269 = v219;
  v270 = v219;
  v27 = v230;
  v216 = swift_allocObject();
  *(v216 + 16) = v230;
  v221 = swift_allocObject();
  v212 = v221 + 16;
  v28 = v242;
  swift_unknownObjectWeakInit();

  v29 = v230;

  v30 = swift_allocObject();
  v31 = v241;
  v32 = v30;
  v33 = v221;
  v215 = v32;
  v32[2] = v230;
  v32[3] = v31;
  v32[4] = v33;
  v34 = sub_1AC20599C();
  v220 = &v67;
  v75 = v215;
  v74 = sub_1AC2E6AEC;
  v73 = v219;
  v72 = v219;
  v71 = v216;
  v70 = sub_1AC2E5FCC;
  v69 = v219;
  v68 = v34 & 1;
  v67 = v219;
  sub_1AC309A9C();

  v226 = sub_1AC309D1C();
  v224 = v226;
  v223(v240, v237);

  v266 = v226;
  v227 = [objc_opt_self() sharedInstance];
  if (v227)
  {
    v172 = v227;
  }

  else
  {
    LODWORD(v75) = 0;
    v74 = 149;
    LOBYTE(v73) = 2;
    sub_1AC30B05C();
    __break(1u);
  }

  v170 = v172;
  sub_1AC2C85A0();
  v167 = v35;
  v168 = sub_1AC30A91C();

  v171 = [v170 deviceFromAddressString_];
  v169 = v171;

  if (v171)
  {
    v166 = v169;
    v164 = v169;
    v260 = v169;
    v36 = [v169 accessoryInfo];
    v165 = v36;
    if (v36)
    {
      v163 = v165;
      v160 = v165;
      v161 = sub_1AC30A82C();

      v162 = v161;
    }

    else
    {
      v162 = 0;
    }

    v159 = v162;
    if (v162)
    {
      v158 = v159;
      v157 = v159;
      v259 = v159;
      v257[5] = sub_1AC30A9DC();
      v257[6] = v37;
      v156 = v257;
      sub_1AC30B11C();
      sub_1AC30A85C();
      if (v258[3])
      {
        sub_1AC2748C4();
        if (swift_dynamicCast())
        {
          v155 = v248;
        }

        else
        {
          v155 = 0;
        }

        v153 = v155;
        sub_1AC2A19F4(v257);
        sub_1AC2063F0();
        v154 = v153;
      }

      else
      {
        sub_1AC2A19F4(v257);
        sub_1AC2063F0();
        sub_1AC204664(v258);
        v154 = 0;
      }

      v152 = v154;
      if (v154)
      {
        v151 = v152;
        v147 = v152;
        v256 = v152;
        v38 = sub_1AC30A9DC();
        v254[3] = MEMORY[0x1E69E6158];
        v254[0] = v38;
        v254[1] = v39;
        v144 = MEMORY[0x1E69E6158];
        __swift_project_boxed_opaque_existential_1(v254, MEMORY[0x1E69E6158]);
        v142 = *(v144 - 8);
        v143 = v142;
        v146 = v77;
        v40 = MEMORY[0x1EEE9AC00](v77);
        v145 = v77 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v143 + 16))(v40);
        v148 = sub_1AC30B19C();
        (*(v143 + 8))(v145, v144);
        v150 = [v147 __swift_objectForKeyedSubscript_];
        v149 = v150;
        swift_unknownObjectRelease();
        if (v150)
        {
          v141 = v149;
          v140 = v149;
          v139 = v249;
          sub_1AC30AEFC();
          sub_1AC241B1C(v139, &v252);
          swift_unknownObjectRelease();
        }

        else
        {
          v252 = 0uLL;
          v253 = 0uLL;
        }

        v42 = v229;
        v43 = v252;
        *(v229 + 1) = v253;
        *v42 = v43;
        if (v255[3])
        {
          if (swift_dynamicCast())
          {
            v137 = v249[4];
            v138 = v249[5];
          }

          else
          {
            v137 = 0;
            v138 = 0;
          }

          v134 = v138;
          v133 = v137;
          __swift_destroy_boxed_opaque_existential_1(v254);
          v135 = v133;
          v136 = v134;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v254);
          sub_1AC204664(v255);
          v135 = 0;
          v136 = 0;
        }

        v131 = v136;
        v132 = v135;
        if (v136)
        {
          v129 = v132;
          v130 = v131;
          v118 = v131;
          v117 = v132;
          v250 = v132;
          v251 = v131;
          sub_1AC30A9DC();
          sub_1AC30A8AC();
          v120 = sub_1AC215DE8(v247, v173);
          v121 = v44;
          v175(v247, v243);
          v123 = 0;
          memset(&v249[6], 0, 32);
          v45 = swift_allocObject();
          v46 = v118;
          v119 = v45;
          *(v45 + 16) = v117;
          *(v45 + 24) = v46;
          v47 = sub_1AC20599C();
          v122 = &v67;
          v75 = v123;
          v74 = v123;
          v73 = v123;
          v72 = v123;
          v71 = v119;
          v70 = sub_1AC2E6E1C;
          v69 = v123;
          v68 = v47 & 1;
          v67 = v123;
          sub_1AC309A9C();
          v124 = sub_1AC309D1C();
          v185(v240, v237);
          v125 = sub_1AC309D0C();

          v126 = sub_1AC309D2C();

          __swift_destroy_boxed_opaque_existential_1(__dst);
          v127 = v126;
          v128 = v231;
          return v127;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v48 = v235;
  v49 = sub_1AC250850();
  (*(v234 + 16))(v48, v49, v232);
  v50 = v230;
  v105 = 7;
  v106 = swift_allocObject();
  *(v106 + 16) = v230;
  v116 = sub_1AC309E4C();
  v98 = v116;
  v115 = sub_1AC30AD1C();
  v99 = v115;
  v100 = 17;
  v109 = swift_allocObject();
  v101 = v109;
  v102 = 32;
  *(v109 + 16) = 32;
  v51 = swift_allocObject();
  v52 = v102;
  v110 = v51;
  v103 = v51;
  *(v51 + 16) = 8;
  v104 = v52;
  v53 = swift_allocObject();
  v54 = v106;
  v107 = v53;
  *(v53 + 16) = sub_1AC2E6B20;
  *(v53 + 24) = v54;
  v55 = swift_allocObject();
  v56 = v107;
  v113 = v55;
  v108 = v55;
  *(v55 + 16) = sub_1AC215C98;
  *(v55 + 24) = v56;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v111 = sub_1AC30B18C();
  v112 = v57;

  v58 = v109;
  v59 = v112;
  *v112 = sub_1AC215C90;
  v59[1] = v58;

  v60 = v110;
  v61 = v112;
  v112[2] = sub_1AC215C90;
  v61[3] = v60;

  v62 = v112;
  v63 = v113;
  v112[4] = sub_1AC215CA4;
  v62[5] = v63;
  sub_1AC206300();

  if (os_log_type_enabled(v116, v115))
  {
    v64 = v231;
    v91 = sub_1AC30AE6C();
    v88 = v91;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v92 = sub_1AC213EE4(0);
    v90 = v92;
    v94 = 1;
    v93 = sub_1AC213EE4(1);
    v265 = v91;
    v264 = v92;
    v263 = v93;
    v95 = &v265;
    sub_1AC213F38(2, &v265);
    sub_1AC213F38(v94, v95);
    v261 = sub_1AC215C90;
    v262 = v101;
    sub_1AC213F4C(&v261, v95, &v264, &v263);
    v96 = v64;
    v97 = v64;
    if (v64)
    {
      v86 = 0;

      __break(1u);
    }

    else
    {
      v261 = sub_1AC215C90;
      v262 = v103;
      sub_1AC213F4C(&v261, &v265, &v264, &v263);
      v84 = 0;
      v85 = 0;
      v261 = sub_1AC215CA4;
      v262 = v108;
      sub_1AC213F4C(&v261, &v265, &v264, &v263);
      v82 = 0;
      v83 = 0;
      _os_log_impl(&dword_1AC1C3000, v98, v99, "No Case Name Found! Missing bluetooth device for address: %s", v88, 0xCu);
      sub_1AC213F98(v90);
      sub_1AC213F98(v93);
      sub_1AC30AE4C();

      v87 = v82;
    }
  }

  else
  {
    v65 = v231;

    v87 = v65;
  }

  v81 = v87;

  (*(v234 + 8))(v235, v232);
  v79 = sub_1AC309D0C();
  v80 = sub_1AC309D2C();

  __swift_destroy_boxed_opaque_existential_1(__dst);
  v127 = v80;
  v128 = v81;
  return v127;
}

uint64_t sub_1AC2E5404(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(*(v3 + 8) + 8))(v4);
  v5 = sub_1AC30A91C();

  return v5;
}

uint64_t sub_1AC2E54A0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v8 = sub_1AC30917C();
  v9 = [v8 modelUser];
  if (v9)
  {
    sub_1AC30A92C();
    v6 = v2;
    MEMORY[0x1E69E5920](v9);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1E69E5920](v8);
  if (v7)
  {
    v4 = sub_1AC30A91C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  if (v5)
  {
    return v10;
  }

  sub_1AC2E6E70();
  return sub_1AC30AE0C();
}

uint64_t sub_1AC2E5650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v29 = a3;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0uLL;
  v31 = sub_1AC30A90C();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v15 - v34;
  v49 = v4;
  v48 = a2;
  v47 = v5;
  v36 = sub_1AC2E315C();
  v37 = &v45;
  swift_beginAccess();
  v38 = *v36;
  swift_endAccess();
  v39 = sub_1AC30979C();
  v40 = sub_1AC30922C();
  v43 = v39;
  sub_1AC30A85C();
  v42 = v44;
  if (*(&v44 + 1))
  {
    v46 = v42;
  }

  else
  {
    *&v46 = sub_1AC30A9DC();
    *(&v46 + 1) = v6;
    if (*(&v42 + 1))
    {
      sub_1AC2063F0();
    }
  }

  v26 = sub_1AC2E315C();
  v27 = &v41;
  swift_beginAccess();
  v28 = *v26;
  swift_endAccess();
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v7 = type metadata accessor for AboutFeature();
      v22 = sub_1AC215DE8(v35, v7);
      v24 = v8;
      (*(v32 + 8))(v35, v31);
      v23 = v46;

      *&v25 = MEMORY[0x1AC5B0040](v22, v24, v23, *(&v23 + 1));
      *(&v25 + 1) = v9;

      v46 = v25;
    }

    else
    {
      if (v28 == 2)
      {
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v10 = type metadata accessor for AboutFeature();
        v18 = sub_1AC215DE8(v35, v10);
        v20 = v11;
        (*(v32 + 8))(v35, v31);
        v19 = v46;

        *&v21 = MEMORY[0x1AC5B0040](v18, v20, v19, *(&v19 + 1));
        *(&v21 + 1) = v12;

        v46 = v21;
      }

      else
      {
        *&v46 = sub_1AC30A9DC();
        *(&v46 + 1) = v13;
      }
    }
  }

  v16 = &v46;
  v15 = v46;

  v17 = sub_1AC30A91C();

  sub_1AC2063F0();
  return v17;
}

double sub_1AC2E5B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[12] = a1;
  v10[11] = a2;
  v10[10] = a3 + 16;
  v8 = sub_1AC30922C();
  v9 = MEMORY[0x1AC5AFEC0](v8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], MEMORY[0x1E69E6540]);

  if ((v9 & 1) == 0)
  {
    v6 = sub_1AC2E315C();
    sub_1AC2E315C();
    swift_beginAccess();
    swift_endAccess();
    v7 = sub_1AC2E03B0();
    swift_beginAccess();
    *v6 = v7;
    swift_endAccess();
    sub_1AC2E326C();
    swift_beginAccess();
    v10[0] = swift_unknownObjectWeakLoadStrong();
    if (v10[0])
    {
      v5 = v10[0];
      MEMORY[0x1E69E5928](v10[0]);
      sub_1AC206988(v10);
      swift_endAccess();
      sub_1AC30A9DC();
      v4 = sub_1AC30A91C();

      [v5 reloadSpecifierID_];
      MEMORY[0x1E69E5920](v4);
      *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
    }

    else
    {
      sub_1AC206988(v10);
      swift_endAccess();
    }
  }

  return result;
}

double sub_1AC2E5D68(void *a1)
{
  sub_1AC2E326C();
  sub_1AC30A9DC();
  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2E5E24(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v8 = sub_1AC30917C();
  v9 = [v8 firmwareVersion];
  if (v9)
  {
    sub_1AC30A92C();
    v6 = v2;
    MEMORY[0x1E69E5920](v9);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1E69E5920](v8);
  if (v7)
  {
    v4 = sub_1AC30A91C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  if (v5)
  {
    return v10;
  }

  sub_1AC2E6E70();
  return sub_1AC30AE0C();
}

uint64_t sub_1AC2E5FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v93 = a2;
  v85 = a1;
  v87 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v86 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0u;
  v107 = 0u;
  v102 = 0;
  v88 = sub_1AC309E6C();
  v89 = *(v88 - 8);
  v90 = v89;
  MEMORY[0x1EEE9AC00](0);
  v91 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1AC30A90C();
  v95 = *(v94 - 8);
  v96 = v95;
  MEMORY[0x1EEE9AC00](v94 - 8);
  v97 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  v118 = v6;
  v98 = v7 + 16;
  v117 = v7 + 16;
  v99 = sub_1AC30917C();
  v100 = [v99 caseVersion];
  if (v100)
  {
    v84 = v100;
    v79 = v100;
    v80 = sub_1AC30A92C();
    v81 = v8;

    v82 = v80;
    v83 = v81;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  v77 = v83;
  v78 = v82;
  if (v83)
  {
    v75 = v78;
    v76 = v77;
    v71 = v77;
    v72 = v78;
    v111 = v78;
    v112 = v77;

    v73 = sub_1AC30917C();
    v9 = [v73 firmwareVersion];
    v74 = v9;
    if (v9)
    {
      v70 = v74;
      v65 = v74;
      v66 = sub_1AC30A92C();
      v67 = v10;

      v68 = v66;
      v69 = v67;
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v63 = v69;
    v64 = v68;
    if (v69)
    {
      v61 = v64;
      v62 = v63;
      v47 = v63;
      v46 = v64;
      v109 = v64;
      v110 = v63;

      v50 = nullsub_1(v46);
      v51 = v11;
      v52 = v12;
      v53 = v13;
      v48 = v11;
      v49 = v13;
      *&v107 = v50;
      *(&v107 + 1) = v11;
      *&v108 = v12;
      *(&v108 + 1) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0B8);

      v103 = v50;
      v104 = v51;
      v105 = v52;
      v106 = v53;
      v59 = sub_1AC309A8C();
      v54 = v59;
      v102 = v59;
      v14 = v59;
      sub_1AC30A9DC();
      sub_1AC30A8AC();
      v60 = 0;
      v55 = type metadata accessor for AboutFeature();
      v56 = sub_1AC215DE8(v97, v55);
      v57 = v15;
      (*(v96 + 8))(v97, v94);
      v58 = sub_1AC30A91C();

      [v59 setTitle_];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v101 = Strong;
      if (Strong)
      {
        v45 = v101;
        v17 = v101;
        sub_1AC206988(&v101);
        swift_endAccess();
        v18 = v54;
        [v45 showController_];
      }

      else
      {
        sub_1AC206988(&v101);
        swift_endAccess();
      }

      return v86;
    }
  }

  else
  {
  }

  v19 = v91;
  v20 = sub_1AC250850();
  (*(v90 + 16))(v19, v20, v88);
  v42 = sub_1AC309E4C();
  v39 = v42;
  v41 = sub_1AC30AD1C();
  v40 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v43 = sub_1AC30B18C();
  if (os_log_type_enabled(v42, v41))
  {
    v21 = v86;
    v30 = sub_1AC30AE6C();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v28 = 0;
    v31 = sub_1AC213EE4(0);
    v29 = v31;
    v32 = sub_1AC213EE4(v28);
    v116 = v30;
    v115 = v31;
    v114 = v32;
    v33 = 0;
    v34 = &v116;
    sub_1AC213F38(0, &v116);
    sub_1AC213F38(v33, v34);
    v113 = v43;
    v35 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v36 = &v24[-6];
    v24[-4] = v22;
    v24[-3] = &v115;
    v24[-2] = &v114;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v38 = v21;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v39, v40, "Failed to get case version or firmware version", v26, 2u);
      v24[1] = 0;
      sub_1AC213F98(v29);
      sub_1AC213F98(v32);
      sub_1AC30AE4C();

      v25 = v38;
    }
  }

  else
  {

    v25 = v86;
  }

  v24[0] = v25;

  (*(v90 + 8))(v91, v88);
  return v24[0];
}

double sub_1AC2E6B28(void *a1)
{
  sub_1AC30A9DC();
  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

id sub_1AC2E6BA8()
{
  sub_1AC2E6E70();

  return sub_1AC2E6C0C();
}

uint64_t sub_1AC2E6C90()
{
  *(v0 + 16) = sub_1AC30A9DC();
  *(v0 + 24) = v1;
  sub_1AC309EAC();
  sub_1AC223158();
  v2 = sub_1AC30A80C();
  result = v4;
  *(v4 + 32) = v2;
  return result;
}

id sub_1AC2E6DB8()
{
  v2 = sub_1AC30A91C();
  v3 = [v1 initWithString_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

unint64_t sub_1AC2E6E70()
{
  v2 = qword_1EB54D0B0;
  if (!qword_1EB54D0B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D0B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2E6F24()
{
  v2 = qword_1EB54D0D0;
  if (!qword_1EB54D0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D0C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D0D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2E6FE8()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2E7058(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC2E715C()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB552FE8 = v9;
  qword_1EB552FF0 = v10;
  return result;
}

uint64_t *sub_1AC2E72B0()
{
  if (qword_1EB552FE0 != -1)
  {
    swift_once();
  }

  return &qword_1EB552FE8;
}

uint64_t sub_1AC2E7310()
{
  v1 = *sub_1AC2E72B0();

  return v1;
}

uint64_t sub_1AC2E7354()
{
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v2);
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2052F0();
  sub_1AC30B1BC();
  result = sub_1AC30A9DC();
  qword_1EB553000 = result;
  qword_1EB553008 = v1;
  return result;
}

uint64_t *sub_1AC2E7478()
{
  if (qword_1EB552FF8 != -1)
  {
    swift_once();
  }

  return &qword_1EB553000;
}

uint64_t sub_1AC2E74D8()
{
  v1 = *sub_1AC2E7478();

  return v1;
}

uint64_t sub_1AC2E751C()
{
  v22 = 0;
  v35 = sub_1AC30A90C();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v12 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v12 - v12;
  v29 = sub_1AC30A8EC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v13 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v31 = &v12 - v13;
  v14 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v12 - v15;
  v24 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A8DC();
  v23 = 1;
  sub_1AC30A9DC();
  v16 = v4;
  sub_1AC30A8CC();

  v5 = sub_1AC2E7478();
  v17 = *v5;
  v18 = v5[1];

  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v19 = v6;
  sub_1AC30A8CC();

  v7 = sub_1AC2E72B0();
  v20 = *v7;
  v21 = v7[1];

  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v25 = v8;
  sub_1AC30A8CC();
  v9 = v24;

  (*(v27 + 16))(v26, v30, v29);
  (*(v27 + 32))(v31, v26, v29);
  (*(v27 + 8))(v30, v29);
  sub_1AC30A8FC();
  v36 = sub_1AC215DE8(v34, v9);
  v37 = v10;
  (*(v32 + 8))(v34, v35);
  result = v36;
  qword_1EB553018 = v36;
  qword_1EB553020 = v37;
  return result;
}

uint64_t *sub_1AC2E789C()
{
  if (qword_1EB553010 != -1)
  {
    swift_once();
  }

  return &qword_1EB553018;
}

uint64_t sub_1AC2E78FC()
{
  v1 = *sub_1AC2E789C();

  return v1;
}

uint64_t sub_1AC2E7940()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB553030 = v9;
  qword_1EB553038 = v10;
  return result;
}

uint64_t *sub_1AC2E7A6C()
{
  if (qword_1EB553028 != -1)
  {
    swift_once();
  }

  return &qword_1EB553030;
}

uint64_t sub_1AC2E7ACC()
{
  v1 = *sub_1AC2E7A6C();

  return v1;
}

uint64_t sub_1AC2E7B10()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB553048 = v9;
  qword_1EB553050 = v10;
  return result;
}

uint64_t *sub_1AC2E7C3C()
{
  if (qword_1EB553040 != -1)
  {
    swift_once();
  }

  return &qword_1EB553048;
}

uint64_t sub_1AC2E7C9C()
{
  v1 = *sub_1AC2E7C3C();

  return v1;
}

uint64_t sub_1AC2E7CE0()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB553060 = v9;
  qword_1EB553068 = v10;
  return result;
}

uint64_t *sub_1AC2E7E0C()
{
  if (qword_1EB553058 != -1)
  {
    swift_once();
  }

  return &qword_1EB553060;
}

uint64_t sub_1AC2E7E6C()
{
  v1 = *sub_1AC2E7E0C();

  return v1;
}

uint64_t sub_1AC2E7EB0()
{
  v120 = v157;
  v169 = 0;
  v168 = 0;
  v121 = 0;
  v160 = 0;
  v156 = 0;
  v122 = sub_1AC309E6C();
  v123 = *(v122 - 8);
  v124 = v123;
  v125 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v122 - 8);
  v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = &v35 - v127;
  MEMORY[0x1EEE9AC00](&v35 - v127);
  v128 = &v35 - v127;
  v169 = v0;
  sub_1AC309E2C();
  v1 = v129;
  v136 = 7;
  v137 = swift_allocObject();
  *(v137 + 16) = v129;
  v148 = sub_1AC309E4C();
  v130 = v148;
  v147 = sub_1AC30AD2C();
  v131 = v147;
  v132 = 17;
  v141 = swift_allocObject();
  v133 = v141;
  *(v141 + 16) = 64;
  v142 = swift_allocObject();
  v134 = v142;
  *(v142 + 16) = 8;
  v135 = 32;
  v2 = swift_allocObject();
  v3 = v137;
  v138 = v2;
  *(v2 + 16) = sub_1AC2E8F28;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v138;
  v145 = v4;
  v139 = v4;
  *(v4 + 16) = sub_1AC248118;
  *(v4 + 24) = v5;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v140 = v146;
  v143 = sub_1AC30B18C();
  v144 = v6;

  v7 = v141;
  v8 = v144;
  *v144 = sub_1AC215C90;
  v8[1] = v7;

  v9 = v142;
  v10 = v144;
  v144[2] = sub_1AC215C90;
  v10[3] = v9;

  v11 = v144;
  v12 = v145;
  v144[4] = sub_1AC2482A8;
  v11[5] = v12;
  sub_1AC206300();

  if (os_log_type_enabled(v148, v147))
  {
    v13 = v121;
    v113 = sub_1AC30AE6C();
    v110 = v113;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v116 = 1;
    v114 = sub_1AC213EE4(1);
    v112 = v114;
    v115 = sub_1AC213EE4(0);
    v153 = v113;
    v152 = v114;
    v151 = v115;
    v117 = &v153;
    sub_1AC213F38(2, &v153);
    sub_1AC213F38(v116, v117);
    v149 = sub_1AC215C90;
    v150 = v133;
    sub_1AC213F4C(&v149, v117, &v152, &v151);
    v118 = v13;
    v119 = v13;
    if (v13)
    {
      v108 = 0;

      __break(1u);
    }

    else
    {
      v149 = sub_1AC215C90;
      v150 = v134;
      sub_1AC213F4C(&v149, &v153, &v152, &v151);
      v106 = 0;
      v107 = 0;
      v149 = sub_1AC2482A8;
      v150 = v139;
      sub_1AC213F4C(&v149, &v153, &v152, &v151);
      v104 = 0;
      v105 = 0;
      _os_log_impl(&dword_1AC1C3000, v130, v131, "FW Seeding: specifiers userInfo: %@", v110, 0xCu);
      sub_1AC213F98(v112);
      sub_1AC213F98(v115);
      sub_1AC30AE4C();

      v109 = v104;
    }
  }

  else
  {
    v14 = v121;

    v109 = v14;
  }

  v97 = v109;

  v98 = *(v124 + 8);
  v99 = (v124 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v98(v128, v122);
  v100 = 0;
  v101 = sub_1AC215CB0();
  v102 = v101;
  v168 = sub_1AC30B18C();
  v103 = [v129 specifier];
  if (v103)
  {
    v96 = v103;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v94 = v96;
  v95 = [v96 userInfo];
  if (v95)
  {
    v93 = v95;
    v92 = v95;
    v91 = v154;
    sub_1AC30AEFC();
    sub_1AC241B1C(v91, v165);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v165, 0, sizeof(v165));
  }

  v15 = v94;
  v16 = v120;
  v17 = v120[7];
  v120[10] = v120[8];
  v16[9] = v17;

  if (v167)
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v90 = v154[4];
    }

    else
    {
      v90 = 0;
    }

    v89 = v90;
  }

  else
  {
    sub_1AC204664(v166);
    v89 = 0;
  }

  v88 = v89;
  if (!v89)
  {
    goto LABEL_35;
  }

  v87 = v88;
  v83 = v88;
  v160 = v88;
  v81 = sub_1AC3095DC();
  sub_1AC3095CC();
  v82 = v18;
  v84 = sub_1AC30A91C();

  v86 = [v83 objectForKey_];
  v85 = v86;
  swift_unknownObjectRelease();
  if (v86)
  {
    v80 = v85;
    v79 = v85;
    v78 = v155;
    sub_1AC30AEFC();
    sub_1AC241B1C(v78, v157);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v157, 0, sizeof(v157));
  }

  v19 = v120;
  v20 = *v120;
  v120[3] = v120[1];
  v19[2] = v20;
  if (v159)
  {
    if (swift_dynamicCast())
    {
      v77 = v155[4];
    }

    else
    {
      v77 = 0;
    }

    v76 = v77;
  }

  else
  {
    sub_1AC204664(v158);
    v76 = 0;
  }

  v75 = v76;
  if (!v76)
  {

LABEL_35:
    sub_1AC309E2C();
    v56 = sub_1AC309E4C();
    v53 = v56;
    v55 = sub_1AC30AD1C();
    v54 = v55;
    v57 = sub_1AC30B18C();
    if (os_log_type_enabled(v56, v55))
    {
      v33 = v97;
      v44 = sub_1AC30AE6C();
      v40 = v44;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v42 = 0;
      v45 = sub_1AC213EE4(0);
      v43 = v45;
      v46 = sub_1AC213EE4(v42);
      v164 = v44;
      v163 = v45;
      v162 = v46;
      v47 = 0;
      v48 = &v164;
      sub_1AC213F38(0, &v164);
      sub_1AC213F38(v47, v48);
      v161 = v57;
      v49 = &v35;
      MEMORY[0x1EEE9AC00](&v35);
      v50 = &v35 - 6;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v52 = v33;
      if (v33)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v53, v54, "FW Seeding: Invalid Input", v40, 2u);
        v38 = 0;
        sub_1AC213F98(v43);
        sub_1AC213F98(v46);
        sub_1AC30AE4C();

        v39 = v52;
      }
    }

    else
    {

      v39 = v97;
    }

    v37 = v39;

    v98(v126, v122);
    v35 = v168;

    v36 = sub_1AC30B02C();

    sub_1AC209190();
    v63 = v36;
    v64 = v37;
    return v63;
  }

  v74 = v75;
  v21 = v97;
  v65 = v75;
  v156 = v75;
  v22 = v75;
  sub_1AC2E7058(v65);
  v23 = v129;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
  v68 = sub_1AC30B18C();
  v67 = v24;
  v25 = *v23;
  v66 = MEMORY[0x1E69E7D40];
  v26 = (*((v25 & *MEMORY[0x1E69E7D40]) + 0x80))();
  v27 = v129;
  v28 = v66;
  *v67 = v26;
  v29 = (*((*v27 & *v28) + 0xA8))();
  v30 = v68;
  v67[1] = v29;
  sub_1AC206300();
  v155[5] = v30;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508);
  v71 = sub_1AC263B38();
  sub_1AC24D54C();
  v31 = sub_1AC30AA8C();
  v72 = v21;
  v73 = v31;
  if (!v21)
  {
    v61 = v73;
    sub_1AC209190();

    v168 = v61;

    v60 = sub_1AC30AAFC();
    sub_1AC30A9DC();
    v58 = v32;
    v59 = sub_1AC30A91C();

    [v129 setValue:v60 forKey:v59];

    swift_unknownObjectRelease();
    v62 = sub_1AC30B02C();

    sub_1AC209190();
    v63 = v62;
    v64 = v72;
    return v63;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1AC2E8CD8(void *a1)
{
  v8 = [a1 specifier];
  if (v8)
  {
    v7 = v8;
  }

  else
  {
    LOBYTE(v2) = 2;
    v3 = 61;
    LODWORD(v4) = 0;
    sub_1AC30B05C();
    __break(1u);
  }

  if ([v7 userInfo])
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v9, &v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0uLL;
    v13 = 0uLL;
  }

  v14 = v12;
  v15 = v13;
  MEMORY[0x1E69E5920](v7);
  if (*(&v15 + 1))
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    sub_1AC204664(&v14);
    v6 = 0;
  }

  v11 = v6;
  if (v6)
  {
    return v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D118);
  sub_1AC30B18C();
  sub_1AC2748C4();
  v16 = sub_1AC30ACEC();
  if (v11)
  {
    sub_1AC206988(&v11);
  }

  return v16;
}

uint64_t sub_1AC2E8FF4()
{
  ObjectType = swift_getObjectType();
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v3 = sub_1AC2E90F8(v5, ObjectType);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2E90F8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v11 = a2;
  v12 = sub_1AC2EC594;
  v37 = 0;
  v21 = 0;
  v17 = sub_1AC30A90C();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v6;
  v29 = sub_1AC309AAC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v30 = &v6 - v7;
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v8 = MEMORY[0x1E69A2B08];
  v9 = sub_1AC205220();
  v10 = v3;
  sub_1AC205220();
  v13 = sub_1AC309D3C();
  MEMORY[0x1E69E5928](v19);
  v34 = v19;
  v35 = v11;
  v31 = sub_1AC309CDC();
  MEMORY[0x1E69E5920](v19);

  v36[4] = v19;
  v20 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v18 = type metadata accessor for FirmwareSeedingController();
  v22 = sub_1AC215DE8(v16, v18);
  v23 = v4;
  (*(v14 + 8))(v16, v17);
  MEMORY[0x1E69E5928](v19);
  v24 = v36;
  v36[3] = v18;
  v36[0] = v19;
  v25 = sel_getFWSeedingBetaUpdate;
  v26 = sel_setFWSeedingBetaUpdateWithEnabled_;
  sub_1AC20599C();
  sub_1AC309A9C();
  v32 = sub_1AC309CEC();
  (*(v27 + 8))(v30, v29);

  v33 = sub_1AC309D2C();

  return v33;
}

uint64_t sub_1AC2E94A0(void *a1, uint64_t a2)
{
  v68 = a1;
  v67 = a2;
  v64 = "Fatal error";
  v65 = "Unexpectedly found nil while unwrapping an Optional value";
  v66 = "HeadphoneSettingsUI/FirmwareSeedingController.swift";
  v93 = 0;
  v92 = 0;
  v88 = 0;
  v89 = 0;
  v69 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v78 = &v26 - v69;
  v93 = v2;
  v92 = v3;
  v4 = sub_1AC2E789C();
  v70 = *v4;
  v71 = v4[1];

  v82 = v91;
  v91[0] = v70;
  v91[1] = v71;
  v5 = sub_1AC2E72B0();
  v72 = *v5;
  v73 = v5[1];

  v81 = v90;
  v90[0] = v72;
  v90[1] = v73;
  v75 = 0;
  v6 = *(*(sub_1AC30909C() - 8) + 56);
  v76 = 1;
  v6(v78, 1);
  v74 = sub_1AC207FC0();
  v77 = MEMORY[0x1E69E6158];
  sub_1AC2E9D44();
  v79 = sub_1AC30AEEC();
  v80 = v7;
  v83 = v8;
  sub_1AC2EC5A0(v78);
  sub_1AC2063F0();
  sub_1AC2063F0();
  if (v83)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  else
  {
    v62 = v79;
    v63 = v80;
  }

  v39 = v63;
  v38 = v62;
  v88 = v62;
  v89 = v63;
  v51 = 0;
  sub_1AC2EC648();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1AC30A92C();
  v26 = v10;
  v31 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v27);
  v29 = *MEMORY[0x1E69C58D8];
  MEMORY[0x1E69E5928](v29);
  sub_1AC30A92C();
  v28 = v11;
  v30 = sub_1AC30A91C();

  *&v12 = MEMORY[0x1E69E5920](v29).n128_u64[0];
  v59 = 0x1FB10D000uLL;
  [v68 0x1FB10D778];
  MEMORY[0x1E69E5920](v30);
  swift_unknownObjectRelease();
  v13 = sub_1AC2E789C();
  v32 = *v13;
  v33 = v13[1];

  v37 = sub_1AC30A91C();

  v35 = *MEMORY[0x1E69C58F8];
  MEMORY[0x1E69E5928](v35);
  sub_1AC30A92C();
  v34 = v14;
  v36 = sub_1AC30A91C();

  *&v15 = MEMORY[0x1E69E5920](v35).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v36);
  swift_unknownObjectRelease();
  v44 = v87;
  v87[0] = v38;
  v87[1] = v39;
  v16 = sub_1AC2E789C();
  v40 = *v16;
  v41 = v16[1];

  v42 = v86;
  v86[0] = v40;
  v86[1] = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D108);
  sub_1AC2EC6AC();
  v94.location = sub_1AC30AE2C();
  v85 = v94;
  v46 = NSStringFromRange(v94);
  sub_1AC30A92C();
  v45 = v17;
  v50 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v46);
  v48 = *MEMORY[0x1E69C58E8];
  MEMORY[0x1E69E5928](v48);
  sub_1AC30A92C();
  v47 = v18;
  v49 = sub_1AC30A91C();

  *&v19 = MEMORY[0x1E69E5920](v48).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v49);
  swift_unknownObjectRelease();
  sub_1AC2B52BC();
  MEMORY[0x1E69E5928](v67);
  v84[3] = type metadata accessor for FirmwareSeedingController();
  v84[0] = v67;
  v55 = sub_1AC2B3344(v84);
  v53 = *MEMORY[0x1E69C58F0];
  MEMORY[0x1E69E5928](v53);
  sub_1AC30A92C();
  v52 = v20;
  v54 = sub_1AC30A91C();

  *&v21 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v54);
  swift_unknownObjectRelease();
  sub_1AC30A9DC();
  v56 = v22;
  v61 = sub_1AC30A91C();

  v58 = *MEMORY[0x1E69C58E0];
  MEMORY[0x1E69E5928](v58);
  sub_1AC30A92C();
  v57 = v23;
  v60 = sub_1AC30A91C();

  *&v24 = MEMORY[0x1E69E5920](v58).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v60);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2E9D44()
{
  sub_1AC2C8AC8(0);

  return 0;
}

uint64_t sub_1AC2E9D7C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1AC2E9DFC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2E8FF4();
  return sub_1AC2E9E58;
}

uint64_t sub_1AC2E9E58(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC2E9D7C(*a1);
  }

  v3 = *a1;

  sub_1AC2E9D7C(v3);
  result = a1;
  sub_1AC209190();
  return result;
}

id sub_1AC2E9EC4()
{
  sub_1AC2068B8();
  v3 = sub_1AC2E6FE8();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v1 = sub_1AC30953C();
  MEMORY[0x1E69E5920](v2);
  return sub_1AC244124(v1 & 1);
}

double sub_1AC2EA02C(void *a1)
{
  v9 = sub_1AC2E6FE8();
  if (v9)
  {
    v7 = v9;
  }

  else
  {
    LOBYTE(v2) = 2;
    v3 = 108;
    LODWORD(v4) = 0;
    sub_1AC30B05C();
    __break(1u);
  }

  [a1 BOOLValue];
  sub_1AC30954C();
  MEMORY[0x1E69E5920](v7);
  v6 = sub_1AC2E6FE8();
  if (v6)
  {
    v5 = v6;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC30942C();
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1AC2EA22C()
{
  ObjectType = swift_getObjectType();
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v3 = sub_1AC2EA330(v5, ObjectType);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2EA330(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v11 = a2;
  v12 = sub_1AC2EC58C;
  v36 = 0;
  v21 = 0;
  v17 = sub_1AC30A90C();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v6;
  v29 = sub_1AC309AAC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v30 = &v6 - v7;
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v8 = MEMORY[0x1E69A2B08];
  v9 = sub_1AC205220();
  v10 = v3;
  sub_1AC205220();
  v13 = sub_1AC309D3C();
  v34 = v11;
  v31 = sub_1AC309CDC();

  v35[4] = v19;
  v20 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v18 = type metadata accessor for FirmwareSeedingController();
  v22 = sub_1AC215DE8(v16, v18);
  v23 = v4;
  (*(v14 + 8))(v16, v17);
  MEMORY[0x1E69E5928](v19);
  v24 = v35;
  v35[3] = v18;
  v35[0] = v19;
  v25 = sel_getFirmwareLoggingEnabled;
  v26 = sel_setFirmwareLoggingEnabledWithEnabled_;
  sub_1AC20599C();
  sub_1AC309A9C();
  v32 = sub_1AC309CEC();
  (*(v27 + 8))(v30, v29);

  v33 = sub_1AC309D2C();

  return v33;
}

uint64_t sub_1AC2EA6B0(void *a1)
{
  sub_1AC2E7A6C();

  v5 = sub_1AC30A91C();

  v2 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v4 = sub_1AC30A91C();

  [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v2).n128_f64[0]}];
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2EA788(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1AC2EA808(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2EA22C();
  return sub_1AC2EA864;
}

uint64_t sub_1AC2EA864(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC2EA788(*a1);
  }

  v3 = *a1;

  sub_1AC2EA788(v3);
  result = a1;
  sub_1AC209190();
  return result;
}

id sub_1AC2EA8D0()
{
  sub_1AC2068B8();
  v3 = sub_1AC2E6FE8();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v1 = sub_1AC3094BC();
  MEMORY[0x1E69E5920](v2);
  return sub_1AC244124(v1 & 1);
}

double sub_1AC2EAA38(void *a1)
{
  v14 = sub_1AC2E6FE8();
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 134;
    LODWORD(v5) = 0;
    sub_1AC30B05C();
    __break(1u);
  }

  v10 = sub_1AC3094BC();
  v1 = MEMORY[0x1E69E5920](v11);
  if (v10)
  {
    v9 = sub_1AC2E6FE8();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      LOBYTE(v3) = 2;
      v4 = 138;
      LODWORD(v5) = 0;
      sub_1AC30B05C();
      __break(1u);
    }

    [a1 BOOLValue];
    sub_1AC3094CC();
    MEMORY[0x1E69E5920](v8);
    v7 = sub_1AC2E6FE8();
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      sub_1AC30B05C();
      __break(1u);
    }

    sub_1AC30942C();
    *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  }

  else
  {
    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0xE0))(v1);
  }

  return result;
}

double sub_1AC2EAD18()
{
  v42 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v29 = 0;
  v24 = sub_1AC30A90C();
  v12 = *(v24 - 8);
  v13 = v24 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v9 - v10;
  v42 = v0;
  v11 = sub_1AC2EC490();
  v41 = v31;
  v32 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v25 = type metadata accessor for FirmwareSeedingController();
  v19 = &off_1F20FA4C8;
  v14 = sub_1AC215DE8(v23, v25);
  v15 = v1;
  v22 = *(v12 + 8);
  v21 = v12 + 8;
  v22(v23, v24);
  v36 = sub_1AC2EB120();
  v40 = v36;
  v2 = sub_1AC2E7C3C();
  v16 = *v2;
  v17 = v2[1];

  v18 = sub_1AC30A91C();

  v33 = 0;
  [v36 addSectionWithHeader_content_];
  MEMORY[0x1E69E5920](v18);
  v20 = sub_1AC2801D4();
  v39[4] = v31;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v27 = sub_1AC215DE8(v23, v25);
  v26 = v3;
  v22(v23, v24);
  MEMORY[0x1E69E5928](v31);
  v39[3] = v25;
  v39[0] = v31;
  v30 = 2;
  v35 = sub_1AC2EB168(v27, v26, 2, v39, sel_doneWithLegalConsent);
  v38 = v35;
  *&v4 = MEMORY[0x1E69E5928](v36).n128_u64[0];
  v28 = [v36 navigationItem];
  MEMORY[0x1E69E5920](v36);
  *&v5 = MEMORY[0x1E69E5928](v35).n128_u64[0];
  [v28 setRightBarButtonItem:v35 animated:{v32 & 1, v5}];
  MEMORY[0x1E69E5920](v35);
  MEMORY[0x1E69E5920](v28);
  sub_1AC280890();
  MEMORY[0x1E69E5928](v36);
  v34 = sub_1AC27F40C(v36);
  v37 = v34;
  *&v6 = MEMORY[0x1E69E5928](v34).n128_u64[0];
  [v34 setModalPresentationStyle_];
  *&v7 = MEMORY[0x1E69E5920](v34).n128_u64[0];
  [v31 presentViewController:v34 animated:v32 & 1 completion:{v33, v7}];
  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5920](v35);
  *&result = MEMORY[0x1E69E5920](v36).n128_u64[0];
  return result;
}

double sub_1AC2EB2B4()
{
  v27 = "Button Title";
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v46 = 0;
  v35 = sub_1AC30A90C();
  v17 = *(v35 - 8);
  v18 = v35 - 8;
  v15 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v14 - v15;
  v61 = v0;
  v16 = sub_1AC2EC490();
  v60 = v47;
  v48 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v30 = type metadata accessor for FirmwareSeedingController();
  v31 = &off_1F20FA4C8;
  v19 = sub_1AC215DE8(v34, v30);
  v20 = v1;
  v33 = *(v17 + 8);
  v32 = v17 + 8;
  v33(v34, v35);
  v53 = sub_1AC2EB120();
  v59 = v53;
  v2 = sub_1AC2E7E0C();
  v21 = *v2;
  v22 = v2[1];

  v23 = sub_1AC30A91C();

  v49 = 0;
  [v53 addSectionWithHeader_content_];
  MEMORY[0x1E69E5920](v23);
  v52 = [objc_opt_self() boldButton];
  v58 = v52;
  v57 = v47;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v28 = 12;
  v29 = 2;
  v24 = sub_1AC215F84(v34, v27, 12, 2, v30);
  v25 = v3;
  v33(v34, v35);
  v26 = sub_1AC30A91C();

  v38 = 0x1FA996000uLL;
  [v52 0x1FA9963F8];
  MEMORY[0x1E69E5920](v26);
  *&v4 = MEMORY[0x1E69E5928](v47).n128_u64[0];
  v40 = 0x1FAEA9000uLL;
  v41 = 64;
  [v52 0x1FAEA9A78];
  swift_unknownObjectRelease();
  v51 = [objc_opt_self() linkButton];
  v56 = v51;
  v55 = v47;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v36 = sub_1AC215F84(v34, v27, v28, v29, v30);
  v37 = v5;
  v33(v34, v35);
  v39 = sub_1AC30A91C();

  [v51 (v38 + 1016)];
  MEMORY[0x1E69E5920](v39);
  *&v6 = MEMORY[0x1E69E5928](v47).n128_u64[0];
  [v51 (v40 + 2680)];
  swift_unknownObjectRelease();
  *&v7 = MEMORY[0x1E69E5928](v53).n128_u64[0];
  v43 = 0x1FBCBC000uLL;
  v42 = [v53 0x1FBCBCFD0];
  *&v8 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  v44 = 0x1FB840000uLL;
  [v42 0x1FB840092];
  MEMORY[0x1E69E5920](v42);
  *&v9 = MEMORY[0x1E69E5928](v53).n128_u64[0];
  v45 = [v53 (v43 + 4048)];
  *&v10 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  [v45 (v44 + 146)];
  MEMORY[0x1E69E5920](v45);
  sub_1AC280890();
  MEMORY[0x1E69E5928](v53);
  v50 = sub_1AC27F40C(v53);
  v54 = v50;
  *&v11 = MEMORY[0x1E69E5928](v50).n128_u64[0];
  [v50 setModalPresentationStyle_];
  *&v12 = MEMORY[0x1E69E5920](v50).n128_u64[0];
  [v47 presentViewController:v50 animated:v48 & 1 completion:{v49, v12}];
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5920](v51);
  MEMORY[0x1E69E5920](v52);
  *&result = MEMORY[0x1E69E5920](v53).n128_u64[0];
  return result;
}

id sub_1AC2EB970()
{
  v5 = sub_1AC2E6FE8();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC3094CC();
  MEMORY[0x1E69E5920](v3);
  v2 = sub_1AC2E6FE8();
  if (v2)
  {
    v1 = v2;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC30942C();
  return [v4 dismissViewControllerAnimated:1 completion:{0, MEMORY[0x1E69E5920](v1).n128_f64[0]}];
}

void sub_1AC2EBB50()
{
  v11 = v0;
  MEMORY[0x1E69E5928](v0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v9 = sub_1AC2EC4F4;
  v10 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = 0;
  v7 = sub_1AC24D45C;
  v8 = &block_descriptor_11;
  v3 = _Block_copy(&aBlock);

  [v2 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

id FirmwareSeedingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *FirmwareSeedingController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice = 0;
  *&v13[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection] = 0;
  *&v13[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection] = 0;

  if (a2)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v13;
  v9.super_class = type metadata accessor for FirmwareSeedingController();
  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

id FirmwareSeedingController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

char *FirmwareSeedingController.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice = 0;
  *&v7[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection] = 0;
  *&v7[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection] = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for FirmwareSeedingController();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id FirmwareSeedingController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FirmwareSeedingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC2EC24C()
{
  v2 = sub_1AC30A91C();
  v3 = [v1 initWithTitle_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

id sub_1AC2EC2B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = a2;
  v28 = a1;
  if (a2)
  {
    v21 = v28;
    v22 = v27;
    v18 = v27;
    v19 = sub_1AC30A91C();

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v17 = v20;
  if (v25[3])
  {
    v12 = v25[3];
    __swift_project_boxed_opaque_existential_1(v25, v12);
    v10 = *(v12 - 8);
    v11 = v10;
    v14 = v8;
    v5 = MEMORY[0x1EEE9AC00](v8);
    v13 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v5);
    v15 = sub_1AC30B19C();
    (*(v11 + 8))(v13, v12);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v8[1] = v16;
  v9 = [v23 initWithTitle:v17 style:v26 target:? action:?];
  swift_unknownObjectRelease();

  return v9;
}

unint64_t sub_1AC2EC490()
{
  v2 = qword_1EB54D0F0;
  if (!qword_1EB54D0F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D0F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC2EC5A0(uint64_t a1)
{
  v3 = sub_1AC30909C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC2EC648()
{
  v2 = qword_1EB54D100;
  if (!qword_1EB54D100)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D100);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2EC6AC()
{
  v2 = qword_1EB54D110;
  if (!qword_1EB54D110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D108);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EC734()
{
  LOBYTE(v1) = 1;
  HIBYTE(v1) = sub_1AC3092FC() & 1;
  return v1;
}

uint64_t sub_1AC2EC788(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v51 = a2;
  v50 = a1;
  v44 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v45 = sub_1AC30A90C();
  v46 = *(v45 - 8);
  v47 = v46;
  MEMORY[0x1EEE9AC00](0);
  v48 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1AC309AAC();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x1EEE9AC00](v50);
  v55 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v5;
  v68 = v6;
  v67 = v7;
  v66 = sub_1AC2EC734();
  v64 = HIBYTE(v66);
  v65 = v66;
  v63 = 1;
  v62 = 1;
  if (sub_1AC30B1AC())
  {
    v35 = 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v28 = sub_1AC215DE8(v48, &unk_1F20FA4E8);
    v29 = v8;
    (*(v47 + 8))(v48, v45);
    v34 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v27 = sub_1AC309D5C();
    v9 = sub_1AC20599C();
    v30 = &v15;
    v23 = v34;
    v22 = v34;
    v21 = v34;
    v20 = v34;
    v19 = v34;
    v18 = v34;
    v17 = v27;
    v16 = v9 & 1;
    v15 = v34;
    sub_1AC309A9C();
    v32 = sub_1AC309D1C();
    (*(v54 + 8))(v55, v52);
    v10 = v50;
    v31 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v23 = v11;
    v33 = sub_1AC309D0C();

    v36 = sub_1AC215CB0();
    v37 = v36;
    v38 = sub_1AC30B18C();
    v39 = v12;
    v41 = sub_1AC309D2C();
    v57 = v41;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v43 = v56;
    v42 = v56;

    if (v43)
    {
      v26 = v42;
    }

    else
    {
      LODWORD(v23) = 0;
      v22 = 36;
      LOBYTE(v21) = 2;
      sub_1AC30B05C();
      __break(1u);
    }

    v13 = v38;
    *v39 = v26;
    sub_1AC206300();
    return v13;
  }

  else
  {
    v24[1] = 0;
    v24[2] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC2ECC90(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C140);
  sub_1AC30B18C();
  v6 = v2;
  *v2 = sub_1AC30A9DC();
  v6[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v6[2] = a2;
  sub_1AC206300();
  sub_1AC3095DC();
  sub_1AC30A83C();
  v8 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2ECDD8()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553DB0);
  __swift_project_value_buffer(v1, qword_1EB553DB0);
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t sub_1AC2ECE7C()
{
  if (qword_1EB5530F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553DB0);
}

uint64_t sub_1AC2ECEE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC2ECE7C();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static FirmwareSeedingFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D120);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v4 = v12 != 0;
  v5 = sub_1AC3094FC();
  sub_1AC204664(&v9);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t static FirmwareSeedingFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v33 = a2;
  v25 = sub_1AC2ED9EC;
  v37 = sub_1AC2EDD24;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v41 = 0;
  v32 = sub_1AC30A90C();
  v17 = *(v32 - 8);
  v18 = v32 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v31 = &v11 - v12;
  v45 = sub_1AC309AAC();
  v22 = *(v45 - 8);
  v23 = v45 - 8;
  v13 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v48 = &v11 - v13;
  v57 = v3;
  v56 = v4;
  v55 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v14 = MEMORY[0x1E69A2B08];
  v15 = sub_1AC205220();
  v16 = v5;
  sub_1AC205220();
  v24 = sub_1AC309D3C();
  v42 = 13;
  v36 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v27 = type metadata accessor for FirmwareSeedingFeature();
  v28 = &off_1F20FA580;
  v19 = sub_1AC215DE8(v31, v27);
  v20 = v6;
  v30 = *(v17 + 8);
  v29 = v17 + 8;
  v30(v31, v32);
  v21 = v54;
  memset(v54, 0, sizeof(v54));
  sub_1AC20599C();
  sub_1AC309A9C();
  v26 = sub_1AC309D1C();
  v47 = *(v22 + 8);
  v46 = v22 + 8;
  v47(v48, v45);

  MEMORY[0x1E69E5928](v35);
  v52 = v35;
  v49 = sub_1AC309D0C();
  MEMORY[0x1E69E5920](v35);

  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v38 = sub_1AC215DE8(v31, v27);
  v39 = v7;
  v30(v31, v32);
  v40 = v53;
  memset(v53, 0, sizeof(v53));
  v34 = 7;
  v44 = swift_allocObject();
  MEMORY[0x1E69E5928](v33);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5928](v35);

  v8 = swift_allocObject();
  v9 = v44;
  *(v8 + 16) = v35;
  *(v8 + 24) = v9;
  v43 = v8;
  sub_1AC20599C();
  sub_1AC309A9C();

  v50 = sub_1AC309D1C();
  v47(v48, v45);

  v51 = sub_1AC309D2C();

  return v51;
}

uint64_t sub_1AC2ED7B0(void *a1, uint64_t a2)
{
  sub_1AC309B7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC40);
  v9 = sub_1AC30B19C();
  v7 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC30A92C();
  v8 = sub_1AC30A91C();

  [a1 setProperty:v9 forKey:{v8, MEMORY[0x1E69E5920](v7).n128_f64[0]}];
  MEMORY[0x1E69E5920](v8);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820);
  sub_1AC30B18C();
  v11 = v2;
  *v2 = sub_1AC309B6C();
  v11[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v11[5] = sub_1AC3095DC();
  v11[2] = a2;
  v11[6] = sub_1AC309B4C();
  v11[7] = v4;
  v11[11] = &type metadata for FirmwareSeedingUseCase;
  v11[12] = sub_1AC309B5C();
  v11[13] = v5;
  v11[17] = MEMORY[0x1E69E6370];
  *(v11 + 112) = 1;
  sub_1AC206300();
  sub_1AC30A83C();
  v13 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

double sub_1AC2ED9F4(uint64_t a1, uint64_t a2)
{
  v13[10] = a1;
  v13[9] = a2 + 16;
  sub_1AC30955C();
  type metadata accessor for FirmwareSeedingController();
  v8 = sub_1AC20D658();
  v13[8] = v8;
  sub_1AC215CB0();
  v9 = sub_1AC20D658();
  v13[7] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5F8);
  sub_1AC30B18C();
  v11 = v2;
  sub_1AC3095DC();
  *v11 = sub_1AC3095CC();
  v11[1] = v3;
  MEMORY[0x1E69E5928](a1);
  v11[2] = a1;
  v11[3] = sub_1AC30A9DC();
  v11[4] = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v11[5] = Strong;
  }

  else
  {
    v11[5] = 0;
  }

  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
  sub_1AC30A83C();
  v7 = sub_1AC30A81C();

  [v9 setUserInfo_];
  swift_unknownObjectRelease();
  [v8 setSpecifier_];
  MEMORY[0x1E69E5920](v9);
  swift_beginAccess();
  v13[0] = swift_unknownObjectWeakLoadStrong();
  if (v13[0])
  {
    v6 = v13[0];
    MEMORY[0x1E69E5928](v13[0]);
    sub_1AC206988(v13);
    swift_endAccess();
    [v6 showController_];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    sub_1AC206988(v13);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v9);
  *&result = MEMORY[0x1E69E5920](v8).n128_u64[0];
  return result;
}

uint64_t sub_1AC2EDE54()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t FirmwareSeedingUseCase.localizedStrings(_:)(uint64_t a1)
{
  v6 = a1;
  v21 = 0;
  v16 = sub_1AC30A90C();
  v8 = *(v16 - 8);
  v9 = v16 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v15 = &v5 - v7;
  v21 = v1;
  v10 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v11 = &type metadata for FirmwareSeedingUseCase;
  v12 = &off_1F20FA588;
  v17 = sub_1AC215DE8(v15, &type metadata for FirmwareSeedingUseCase);
  v18 = v2;
  v14 = *(v8 + 8);
  v13 = v8 + 8;
  v14(v15, v16);
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v19 = sub_1AC215DE8(v15, v11);
  v20 = v3;
  v14(v15, v16);
  return v17;
}

uint64_t FirmwareSeedingUseCase.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}