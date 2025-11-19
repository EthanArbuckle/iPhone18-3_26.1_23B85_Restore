uint64_t sub_20D8C71A8(uint64_t a1, uint64_t *a2, void (*a3)(char *))
{
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  if (qword_27C8385E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27C83A190);
  (*(v6 + 16))(v9, v11, v5);
  a3(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t static HistoricalUsageSnapshot.mock_Up100Percent_12of12m_Import_Year_Snapshot_StartingOn(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v2 = sub_20D972AF8();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D972838();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D9726F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D9727D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D972628();
  v30 = *(v20 - 8);
  v31 = v20;
  v21 = *(v30 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC9830], v10);
  sub_20D972708();
  (*(v11 + 8))(v14, v10);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v5, qword_281126478);
  (*(v6 + 16))(v9, v24, v5);
  sub_20D972798();
  sub_20D972FC8();
  (*(v16 + 8))(v19, v15);
  v26 = v35;
  v25 = v36;
  v27 = v33;
  (*(v35 + 104))(v33, *MEMORY[0x277D075C0], v36);
  sub_20D8C92E4(v27, v23, 12, 0xD00000000000003DLL, 0x800000020D989340, 0, MEMORY[0x277CC9998], qword_28249AB58, v34, &qword_28249AB58[1], qword_28249AB88, &qword_28249AB88[1], qword_28249ABB8, &qword_28249ABB8[1], &qword_28249ABE8, &qword_28249ABF0, MEMORY[0x277D073E0], &unk_28249ABF8, &unk_28249AC28, &unk_28249AC58);
  (*(v26 + 8))(v27, v25);
  return (*(v30 + 8))(v23, v31);
}

unint64_t sub_20D8C77B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v291 = a8;
  v303 = a7;
  v290 = a6;
  v239 = a5;
  v240 = a1;
  v245 = a9;
  v246 = a4;
  v292 = a3;
  v271 = sub_20D9726F8();
  v21 = *(v271 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v271);
  v270 = &v217 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_20D9727B8();
  v24 = *(v269 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v269);
  v268 = &v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_20D9727D8();
  v27 = *(v274 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v274);
  v272 = &v217 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v236 = &v217 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v235 = &v217 - v35;
  v36 = sub_20D971EA8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v217 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20D972E88();
  v233 = *(v41 - 8);
  v234 = v41;
  v42 = *(v233 + 64);
  MEMORY[0x28223BE20](v41);
  v232 = &v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v44 = *(*(v231 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v231);
  v230 = &v217 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v229 = &v217 - v47;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v48 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v242 = &v217 - v49;
  v276 = sub_20D972838();
  v252 = *(v276 - 8);
  v50 = *(v252 + 64);
  MEMORY[0x28223BE20](v276);
  v273 = &v217 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_20D972C58();
  v52 = *(v302 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v302);
  v301 = &v217 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v277 = &v217 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v222 = &v217 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v221 = &v217 - v61;
  MEMORY[0x28223BE20](v60);
  v275 = &v217 - v62;
  v250 = sub_20D972AF8();
  v247 = *(v250 - 8);
  v63 = *(v247 + 64);
  v64 = MEMORY[0x28223BE20](v250);
  v237 = &v217 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v249 = &v217 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v67 - 8);
  v227 = &v217 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v251 = &v217 - v71;
  v72 = sub_20D972628();
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v72);
  v238 = &v217 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v78 = &v217 - v77;
  v79 = MEMORY[0x28223BE20](v76);
  v220 = &v217 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v244 = &v217 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v219 = &v217 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v243 = &v217 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v248 = &v217 - v88;
  MEMORY[0x28223BE20](v87);
  v253 = v89;
  v90 = *(v89 + 16);
  v297 = &v217 - v91;
  v241 = a2;
  v92 = v292;
  v299 = v93;
  v294 = v89 + 16;
  v293 = v90;
  result = v90();
  if ((v92 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v224 = v36;
  v225 = v40;
  v223 = v37;
  v298 = v78;
  v226 = v27;
  if (v92)
  {
    v218 = a20;
    v255 = a19;
    v254 = a18;
    v267 = a17;
    v284 = a16;
    v283 = a15;
    v286 = a14;
    v285 = a13;
    v288 = a12;
    v287 = a11;
    v289 = a10;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v304 = 0;
    v266 = (v24 + 104);
    v265 = *v303;
    v263 = (v21 + 8);
    v264 = (v21 + 104);
    v262 = *MEMORY[0x277CC9830];
    v260 = (v27 + 8);
    v261 = (v252 + 16);
    v258 = (v253 + 8);
    v259 = (v24 + 8);
    v257 = (v253 + 32);
    v282 = (v52 + 16);
    v281 = v52 + 8;
    v96 = MEMORY[0x277D84F90];
    v280 = v52 + 32;
    v97 = 10;
    v296 = xmmword_20D977210;
    v295 = xmmword_20D97A6F0;
    v98 = v277;
    v278 = v95;
    v279 = v52;
    while (1)
    {
      v99 = sub_20D975778();
      v100 = *v291;
      v101 = *v289;
      result = sub_20D8D4AC0(*v291);
      if (v102)
      {
        break;
      }

      v99[(result >> 6) + 8] |= 1 << result;
      *(v99[6] + 8 * result) = v100;
      *(v99[7] + 8 * result) = v101;
      v103 = v99[2];
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_51;
      }

      v99[2] = v105;

      v106 = sub_20D975778();
      v107 = *v287;
      v108 = *v288;
      result = sub_20D8D4AC0(*v287);
      if (v109)
      {
        goto LABEL_52;
      }

      v106[(result >> 6) + 8] |= 1 << result;
      *(v106[6] + 8 * result) = v107;
      *(v106[7] + 8 * result) = v108;
      v110 = v106[2];
      v104 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v104)
      {
        goto LABEL_53;
      }

      v106[2] = v111;
      v112 = sub_20D975778();
      v113 = *v285;
      v114 = *v286;
      result = sub_20D8D4AC0(*v285);
      if (v115)
      {
        goto LABEL_54;
      }

      v112[(result >> 6) + 8] |= 1 << result;
      *(v112[6] + 8 * result) = v113;
      *(v112[7] + 8 * result) = v114;
      v116 = v112[2];
      v104 = __OFADD__(v116, 1);
      v117 = v116 + 1;
      if (v104)
      {
        goto LABEL_55;
      }

      v303 = v96;
      v112[2] = v117;

      v118 = sub_20D975778();
      v119 = *v283;
      v120 = *v284;
      result = sub_20D8D4AC0(*v283);
      if (v121)
      {
        goto LABEL_56;
      }

      v118[(result >> 6) + 8] |= 1 << result;
      *(v118[6] + 8 * result) = v119;
      *(v118[7] + 8 * result) = v120;
      v122 = v118[2];
      v104 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v104)
      {
        goto LABEL_57;
      }

      v124 = v304;
      v125 = v97 - 100 * (v304 / 0xA);
      v118[2] = v123;
      v300 = v97;
      if (v290)
      {

        if (v124)
        {
          v126 = v97 - 100 * (v124 / 0xA);
          v127 = v276;
          if (qword_281126470 != -1)
          {
            swift_once();
          }

          v128 = __swift_project_value_buffer(v127, qword_281126478);
          v129 = v268;
          v130 = v269;
          (*v266)(v268, v265, v269);
          v131 = v270;
          v132 = v271;
          (*v264)(v270, v262, v271);
          v133 = v272;
          sub_20D972708();
          (*v263)(v131, v132);
          (*v261)(v273, v128, v127);
          sub_20D972798();
          v134 = v298;
          v135 = v297;
          sub_20D9730D8();
          (*v260)(v133, v274);
          (*v259)(v129, v130);
          v136 = v299;
          (*v258)(v135, v299);
          (*v257)(v135, v134, v136);
          v125 = v126;
        }

        v137 = v125;
        v138 = v125 * 1.5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        inited = swift_initStackObject();
        *(inited + 16) = v296;
        *(inited + 32) = 1;
        *(inited + 40) = v125 * 0.3;
        *(inited + 48) = 3;
        *(inited + 56) = v125 * 0.7;
        sub_20D8D6850(inited);
        swift_setDeallocating();
        if (v138 == 0.0)
        {
          sub_20D8D6850(v254);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
          v153 = swift_initStackObject();
          *(v153 + 16) = v296;
          *(v153 + 32) = 1;
          *(v153 + 40) = v138 * 0.3;
          *(v153 + 48) = 3;
          *(v153 + 56) = v138 * 0.7;
          sub_20D8D6850(v153);
          swift_setDeallocating();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        v154 = swift_initStackObject();
        *(v154 + 16) = v295;
        *(v154 + 32) = 1;
        *(v154 + 40) = v125 * 0.3;
        *(v154 + 48) = 2;
        *(v154 + 56) = v137 * 0.5;
        *(v154 + 64) = 3;
        *(v154 + 72) = v137 * 0.2;
        sub_20D8D6850(v154);
        swift_setDeallocating();
        if (v138 == 0.0)
        {
          sub_20D8D6850(v255);
          v152 = v298;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
          v155 = swift_initStackObject();
          *(v155 + 16) = v295;
          *(v155 + 32) = 1;
          *(v155 + 40) = v138 * 0.3;
          *(v155 + 48) = 2;
          *(v155 + 56) = v138 * 0.5;
          *(v155 + 64) = 3;
          *(v155 + 72) = v138 * 0.2;
          sub_20D8D6850(v155);
          v152 = v298;
          swift_setDeallocating();
        }

        v98 = v277;
      }

      else
      {
        if (v124)
        {
          v256 = v97 - 100 * (v124 / 0xA);
          v140 = v276;
          if (qword_281126470 != -1)
          {
            swift_once();
          }

          v141 = __swift_project_value_buffer(v140, qword_281126478);
          v143 = v268;
          v142 = v269;
          (*v266)(v268, v265, v269);
          v145 = v270;
          v144 = v271;
          (*v264)(v270, v262, v271);
          v146 = v272;
          sub_20D972708();
          (*v263)(v145, v144);
          (*v261)(v273, v141, v140);
          sub_20D972798();
          v147 = v298;
          v148 = v297;
          sub_20D9730D8();
          (*v260)(v146, v274);
          (*v259)(v143, v142);
          v149 = v299;
          (*v258)(v148, v299);
          (*v257)(v148, v147, v149);
          v98 = v277;
          v125 = v256;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        v150 = swift_initStackObject();
        *(v150 + 16) = v295;
        *(v150 + 32) = 1;
        *(v150 + 40) = v125 * 0.3;
        *(v150 + 48) = 2;
        *(v150 + 56) = v125 * 0.5;
        *(v150 + 64) = 3;
        *(v150 + 72) = v125 * 0.2;
        sub_20D8D6850(v150);
        swift_setDeallocating();
        v151 = swift_initStackObject();
        *(v151 + 16) = v296;
        *(v151 + 32) = 1;
        *(v151 + 40) = v125 * 0.3;
        *(v151 + 48) = 2;
        *(v151 + 56) = v125 * 0.7;
        sub_20D8D6850(v151);
        swift_setDeallocating();
        v152 = v298;
      }

      (v293)(v152, v297, v299);
      sub_20D972BF8();
      (*v282)(v301, v98, v302);
      v96 = v303;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_20D8D486C(0, v96[2] + 1, 1, v96, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v52 = v279;
      v157 = v96[2];
      v156 = v96[3];
      if (v157 >= v156 >> 1)
      {
        v96 = sub_20D8D486C(v156 > 1, v157 + 1, 1, v96, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v158 = (v304 + 1);
      v159 = v302;
      (*(v52 + 8))(v98, v302);
      v96[2] = v157 + 1;
      (*(v52 + 32))(v96 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v157, v301, v159);
      v97 = v300 + 10;
      v304 = v158;
      if (v292 == v158)
      {
        v300 = sub_20D84B7B0(v218);
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v96 = MEMORY[0x277D84F90];
  v300 = MEMORY[0x277D84FA0];
LABEL_36:
  (v293)(v248, v241, v299);
  v160 = v251;
  sub_20D9727E8();
  result = (*(v252 + 48))(v160, 1, v276);
  if (result == 1)
  {
    goto LABEL_61;
  }

  v301 = *(v247 + 16);
  (v301)(v249, v240, v250);
  v161 = v96;
  v162 = v96[2];
  v303 = v161;

  v163 = 0;
  do
  {
    v164 = v163;
    if (v162 == v163)
    {
      break;
    }

    if (v163 >= v303[2])
    {
      goto LABEL_58;
    }

    v165 = v275;
    v166 = v302;
    (*(v52 + 16))(v275, v303 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v163++, v302);
    sub_20D972BE8();
    v168 = v167;
    result = (*(v52 + 8))(v165, v166);
  }

  while (v168 == 0.0);
  v169 = v162 != v164;

  v170 = v245;
  v171 = v239;
  *v245 = v246;
  v170[1] = v171;
  v172 = type metadata accessor for HistoricalUsageSnapshot();
  *(v170 + v172[16]) = 6;
  *(v170 + v172[11]) = v169;
  (v301)(v237, v249, v250);
  (*(v252 + 16))(v273, v251, v276);
  v304 = v172;
  v173 = v172[12];
  swift_bridgeObjectRetain_n();

  sub_20D972E28();
  v301 = v173;
  v174 = sub_20D972E38();
  if (*(v174 + 16))
  {
    v175 = v221;
    v176 = v302;
    (*(v52 + 16))(v221, v174 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v302);

    v178 = v219;
    MEMORY[0x20F320DF0](v177);
    (*(v52 + 8))(v175, v176);
    (*(v253 + 32))(v243, v178, v299);
  }

  else
  {

    (v293)(v243, v248, v299);
  }

  v179 = v304;
  v180 = v304[9];
  sub_20D972DA8();
  v181 = sub_20D972E38();
  v182 = *(v181 + 16);
  if (v182)
  {
    v183 = v222;
    v184 = v302;
    (*(v52 + 16))(v222, v181 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * (v182 - 1), v302);

    v186 = v220;
    MEMORY[0x20F320DF0](v185);
    (*(v52 + 8))(v183, v184);
    v187 = v186;
    v179 = v304;
    v188 = v299;
    (*(v253 + 32))(v244, v187, v299);
  }

  else
  {

    v188 = v299;
    (v293)(v244, v248, v299);
  }

  v189 = v179[10];
  sub_20D972DA8();
  v190 = v170 + v179[5];
  sub_20D971D78();
  v191 = v170 + v179[6];
  sub_20D971D78();
  v192 = v170 + v179[7];
  sub_20D971D78();
  v193 = v170 + v179[8];
  sub_20D971D78();
  v194 = v298;
  sub_20D971D78();
  v195 = v238;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v196 = v253 + 32;
  v197 = *(v253 + 32);
  *&v296 = v197;
  v198 = v194;
  v199 = v229;
  v197(v229, v198, v188);
  v200 = v231;
  v197((v199 + *(v231 + 48)), v195, v188);
  v201 = v230;
  sub_20D7EB7E8(v199, v230, &unk_27C83C750, &unk_20D978DD0);
  v202 = *(v200 + 48);
  v197(v242, v201, v188);
  v204 = v253 + 8;
  v203 = *(v253 + 8);
  v203(v201 + v202, v188);
  sub_20D829514(v199, v201);
  v205 = *(v200 + 48);
  v206 = v242;
  v207 = &v242[*(v228 + 36)];
  v302 = v196;
  v197(v207, (v201 + v205), v188);
  v208 = v245;
  *&v295 = v204;
  v203(v201, v188);
  v209 = v203;
  v210 = v232;
  (*(v233 + 16))(v232, &v301[v208], v234);
  v211 = v298;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v206, v210, v211, v208 + v304[13]);
  v212 = v226;
  (*(v226 + 56))(v235, 1, 1, v274);
  (*(v252 + 56))(v227, 1, 1, v276);
  v213 = v225;
  sub_20D971E98();
  v214 = v272;
  sub_20D972E48();
  v215 = v236;
  sub_20D972748();
  (*(v212 + 8))(v214, v274);
  result = (*(v253 + 48))(v215, 1, v188);
  if (result != 1)
  {

    (*(v223 + 8))(v213, v224);
    v209(v244, v188);
    v209(v243, v188);
    (*(v247 + 8))(v249, v250);
    v209(v248, v188);
    v209(v297, v188);
    (*(v252 + 8))(v251, v276);
    v216 = v304;
    result = (v296)(v208 + v304[14], v215, v188);
    *(v208 + v216[15]) = v300;
    return result;
  }

LABEL_62:
  __break(1u);
  return result;
}

unint64_t sub_20D8C92E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, void (*a17)(char *, char *), uint64_t a18, uint64_t a19, uint64_t a20)
{
  v301 = a8;
  v321 = a7;
  v300 = a6;
  v249 = a4;
  v250 = a5;
  v252 = a1;
  v257 = a9;
  v309 = sub_20D9727B8();
  v320 = *(v309 - 8);
  v22 = *(v320 + 64);
  MEMORY[0x28223BE20](v309);
  v281 = &v230 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_20D9726F8();
  v24 = *(v280 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v280);
  v279 = &v230 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = sub_20D9727D8();
  v253 = *(v311 - 8);
  v27 = *(v253 + 64);
  MEMORY[0x28223BE20](v311);
  v282 = &v230 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v247 = &v230 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v246 = &v230 - v34;
  v35 = sub_20D971EA8();
  v236 = *(v35 - 8);
  v237 = v35;
  v36 = *(v236 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v230 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20D972E88();
  v244 = *(v39 - 8);
  v245 = v39;
  v40 = *(v244 + 64);
  MEMORY[0x28223BE20](v39);
  v243 = &v230 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v42 = *(*(v242 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v242);
  v241 = &v230 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v240 = &v230 - v45;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v46 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v254 = &v230 - v47;
  v48 = sub_20D972838();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v283 = &v230 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_20D972C58();
  v315 = *(v319 - 8);
  v52 = *(v315 + 8);
  v53 = MEMORY[0x28223BE20](v319);
  v55 = &v230 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53);
  v316 = &v230 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v230 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v234 = &v230 - v62;
  MEMORY[0x28223BE20](v61);
  v284 = &v230 - v63;
  v261 = sub_20D972AF8();
  v258 = *(v261 - 8);
  v64 = *(v258 + 64);
  v65 = MEMORY[0x28223BE20](v261);
  v248 = &v230 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v260 = &v230 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v68 - 8);
  v238 = &v230 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v262 = &v230 - v72;
  v73 = sub_20D972628();
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x28223BE20](v73);
  v310 = &v230 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v75);
  v79 = &v230 - v78;
  v80 = MEMORY[0x28223BE20](v77);
  v233 = &v230 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v256 = &v230 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v232 = &v230 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v255 = &v230 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v259 = &v230 - v89;
  MEMORY[0x28223BE20](v88);
  v264 = v90;
  v91 = *(v90 + 16);
  v318 = &v230 - v92;
  v314 = v93;
  v303 = v90 + 16;
  v302 = v91;
  result = v91();
  if (a3 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v231 = v60;
  v251 = a2;
  v235 = v38;
  v312 = v48;
  v263 = v49;
  v313 = v79;
  if (a3)
  {
    v95 = a3;
    v230 = a20;
    v266 = a19;
    v265 = a18;
    v278 = a17;
    v294 = a16;
    v293 = a15;
    v296 = a14;
    v295 = a13;
    v298 = a12;
    v297 = a11;
    v299 = a10;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v97 = 0;
    v308 = *MEMORY[0x277CC9830];
    v286 = (v24 + 8);
    v287 = (v24 + 104);
    v285 = (v49 + 16);
    v277 = (v253 + 8);
    v276 = *v321;
    v274 = (v320 + 8);
    v275 = (v320 + 104);
    v272 = (v264 + 32);
    v273 = (v264 + 8);
    v289 = v315 + 8;
    v290 = (v315 + 16);
    v98 = MEMORY[0x277D84F90];
    v288 = v315 + 32;
    v321 = 10;
    v305 = xmmword_20D977210;
    v304 = xmmword_20D97A6F0;
    v291 = v96;
    v292 = v95;
    v306 = v55;
    while (1)
    {
      v320 = v97;
      v99 = sub_20D975778();
      v100 = *v301;
      v101 = *v299;
      result = sub_20D8D4AC0(*v301);
      if (v102)
      {
        break;
      }

      v99[(result >> 6) + 8] |= 1 << result;
      *(v99[6] + 8 * result) = v100;
      *(v99[7] + 8 * result) = v101;
      v103 = v99[2];
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_51;
      }

      v99[2] = v105;

      v106 = sub_20D975778();
      v107 = *v297;
      v108 = *v298;
      result = sub_20D8D4AC0(*v297);
      if (v109)
      {
        goto LABEL_52;
      }

      v106[(result >> 6) + 8] |= 1 << result;
      *(v106[6] + 8 * result) = v107;
      *(v106[7] + 8 * result) = v108;
      v110 = v106[2];
      v104 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v104)
      {
        goto LABEL_53;
      }

      v106[2] = v111;
      v112 = sub_20D975778();
      v113 = *v295;
      v114 = *v296;
      result = sub_20D8D4AC0(*v295);
      if (v115)
      {
        goto LABEL_54;
      }

      v112[(result >> 6) + 8] |= 1 << result;
      *(v112[6] + 8 * result) = v113;
      *(v112[7] + 8 * result) = v114;
      v116 = v112[2];
      v104 = __OFADD__(v116, 1);
      v117 = v116 + 1;
      if (v104)
      {
        goto LABEL_55;
      }

      v317 = v98;
      v112[2] = v117;

      v118 = sub_20D975778();
      v119 = *v293;
      v120 = *v294;
      result = sub_20D8D4AC0(*v293);
      if (v121)
      {
        goto LABEL_56;
      }

      v118[(result >> 6) + 8] |= 1 << result;
      *(v118[6] + 8 * result) = v119;
      *(v118[7] + 8 * result) = v120;
      v122 = v118[2];
      v104 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v104)
      {
        goto LABEL_57;
      }

      v124 = v320;
      v125 = v321;
      v126 = v321 - 100 * (v320 / 0xA);
      v118[2] = v123;
      if (v300)
      {

        if (v124)
        {
          v307 = v126;
          v127 = v312;
          if (qword_281126470 != -1)
          {
            swift_once();
          }

          v128 = __swift_project_value_buffer(v127, qword_281126478);
          v268 = v128;
          v271 = *v287;
          v130 = v279;
          v129 = v280;
          v271(v279, v308, v280);
          v131 = v282;
          sub_20D972708();
          v269 = *v286;
          v269(v130, v129);
          v267 = *v285;
          v132 = v283;
          v267(v283, v128, v127);
          sub_20D972798();
          v278(v318, v131);
          v270 = *v277;
          v270(v131, v311);
          v133 = v281;
          (*v275)(v281, v276, v309);
          v271(v130, v308, v129);
          sub_20D972708();
          v269(v130, v129);
          v267(v132, v268, v312);
          sub_20D972798();
          v134 = v313;
          v135 = v310;
          sub_20D9730D8();
          v270(v131, v311);
          (*v274)(v133, v309);
          v136 = *v273;
          v137 = v314;
          (*v273)(v135, v314);
          v138 = v318;
          v136(v318, v137);
          (*v272)(v138, v134, v137);
          v126 = v307;
        }

        v139 = v126;
        v140 = v126 * 1.5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        inited = swift_initStackObject();
        *(inited + 16) = v305;
        *(inited + 32) = 1;
        *(inited + 40) = v126 * 0.3;
        *(inited + 48) = 3;
        *(inited + 56) = v126 * 0.7;
        sub_20D8D6850(inited);
        swift_setDeallocating();
        if (v140 == 0.0)
        {
          sub_20D8D6850(v265);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
          v161 = swift_initStackObject();
          *(v161 + 16) = v305;
          *(v161 + 32) = 1;
          *(v161 + 40) = v140 * 0.3;
          *(v161 + 48) = 3;
          *(v161 + 56) = v140 * 0.7;
          sub_20D8D6850(v161);
          swift_setDeallocating();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        v162 = swift_initStackObject();
        *(v162 + 16) = v304;
        *(v162 + 32) = 1;
        *(v162 + 40) = v126 * 0.3;
        *(v162 + 48) = 2;
        *(v162 + 56) = v139 * 0.5;
        *(v162 + 64) = 3;
        *(v162 + 72) = v139 * 0.2;
        sub_20D8D6850(v162);
        swift_setDeallocating();
        v160 = v306;
        if (v140 == 0.0)
        {
          sub_20D8D6850(v266);
          v159 = v313;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
          v163 = swift_initStackObject();
          *(v163 + 16) = v304;
          *(v163 + 32) = 1;
          *(v163 + 40) = v140 * 0.3;
          *(v163 + 48) = 2;
          *(v163 + 56) = v140 * 0.5;
          *(v163 + 64) = 3;
          *(v163 + 72) = v140 * 0.2;
          sub_20D8D6850(v163);
          v160 = v306;
          v159 = v313;
          swift_setDeallocating();
        }

        v142 = v314;
      }

      else
      {
        v142 = v314;
        if (v124)
        {
          v307 = v125 - 100 * (v124 / 0xA);
          if (qword_281126470 != -1)
          {
            swift_once();
          }

          v143 = v312;
          v144 = __swift_project_value_buffer(v312, qword_281126478);
          v268 = v144;
          v271 = *v287;
          v146 = v279;
          v145 = v280;
          v271(v279, v308, v280);
          v147 = v282;
          sub_20D972708();
          v269 = *v286;
          v269(v146, v145);
          v148 = *v285;
          v149 = v283;
          (*v285)(v283, v144, v143);
          sub_20D972798();
          v278(v318, v147);
          v270 = *v277;
          v270(v147, v311);
          v150 = v281;
          (*v275)(v281, v276, v309);
          v271(v146, v308, v145);
          sub_20D972708();
          v269(v146, v145);
          v148(v149, v268, v312);
          sub_20D972798();
          v151 = v313;
          v152 = v310;
          sub_20D9730D8();
          v270(v147, v311);
          (*v274)(v150, v309);
          v153 = *v273;
          v154 = v152;
          v155 = v314;
          (*v273)(v154, v314);
          v156 = v318;
          v153(v318, v155);
          v142 = v155;
          (*v272)(v156, v151, v155);
          v126 = v307;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        v157 = swift_initStackObject();
        *(v157 + 16) = v304;
        *(v157 + 32) = 1;
        *(v157 + 40) = v126 * 0.3;
        *(v157 + 48) = 2;
        *(v157 + 56) = v126 * 0.5;
        *(v157 + 64) = 3;
        *(v157 + 72) = v126 * 0.2;
        sub_20D8D6850(v157);
        swift_setDeallocating();
        v158 = swift_initStackObject();
        *(v158 + 16) = v305;
        *(v158 + 32) = 1;
        *(v158 + 40) = v126 * 0.3;
        *(v158 + 48) = 2;
        *(v158 + 56) = v126 * 0.7;
        sub_20D8D6850(v158);
        swift_setDeallocating();
        v159 = v313;
        v160 = v306;
      }

      (v302)(v159, v318, v142);
      v164 = v316;
      sub_20D972BF8();
      (*v290)(v160, v164, v319);
      v98 = v317;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_20D8D486C(0, v98[2] + 1, 1, v98, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v166 = v98[2];
      v165 = v98[3];
      if (v166 >= v165 >> 1)
      {
        v98 = sub_20D8D486C(v165 > 1, v166 + 1, 1, v98, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v97 = v320 + 1;
      v167 = v315;
      v168 = v319;
      (*(v315 + 1))(v316, v319);
      v98[2] = v166 + 1;
      v167[4](v98 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + v167[9] * v166, v160, v168);
      v321 += 10;
      if (v292 == v97)
      {
        v316 = sub_20D84B7B0(v230);
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v98 = MEMORY[0x277D84F90];
  v316 = MEMORY[0x277D84FA0];
LABEL_36:
  (v302)(v259, v251, v314);
  v169 = v262;
  sub_20D9727E8();
  result = (*(v263 + 48))(v169, 1, v312);
  if (result == 1)
  {
    goto LABEL_61;
  }

  v170 = *(v258 + 16);
  v320 = v258 + 16;
  v317 = v170;
  (v170)(v260, v252, v261);
  v171 = v98[2];

  v172 = 0;
  do
  {
    v173 = v172;
    if (v171 == v172)
    {
      break;
    }

    if (v172 >= v98[2])
    {
      goto LABEL_58;
    }

    v174 = v98;
    v175 = v315;
    v176 = v284;
    v177 = v319;
    (*(v315 + 2))(v284, v174 + ((v175[80] + 32) & ~v175[80]) + *(v315 + 9) * v172++, v319);
    sub_20D972BE8();
    v179 = v178;
    v180 = *(v175 + 1);
    v98 = v174;
    result = v180(v176, v177);
  }

  while (v179 == 0.0);
  v181 = v171 != v173;

  v182 = v257;
  v183 = v250;
  *v257 = v249;
  v182[1] = v183;
  v184 = type metadata accessor for HistoricalUsageSnapshot();
  *(v182 + v184[16]) = 6;
  *(v182 + v184[11]) = v181;
  (v317)(v248, v260, v261);
  (*(v263 + 16))(v283, v262, v312);
  v321 = v184;
  v185 = v184[12];
  swift_bridgeObjectRetain_n();

  sub_20D972E28();
  v320 = v185;
  v186 = sub_20D972E38();
  if (*(v186 + 16))
  {
    v187 = v315;
    v188 = v234;
    v189 = v319;
    (*(v315 + 2))(v234, v186 + ((*(v187 + 80) + 32) & ~*(v187 + 80)), v319);

    v191 = v232;
    MEMORY[0x20F320DF0](v190);
    v187[1](v188, v189);
    (*(v264 + 32))(v255, v191, v314);
  }

  else
  {

    (v302)(v255, v259, v314);
  }

  v192 = v256;
  v317 = v98;
  v193 = v321;
  v194 = *(v321 + 36);
  sub_20D972DA8();
  v195 = sub_20D972E38();
  v196 = *(v195 + 16);
  if (v196)
  {
    v197 = v315;
    v198 = v231;
    v199 = v319;
    (*(v315 + 2))(v231, v195 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v315 + 9) * (v196 - 1), v319);

    v201 = v233;
    MEMORY[0x20F320DF0](v200);
    v197[1](v198, v199);
    v202 = v201;
    v193 = v321;
    v203 = v314;
    (*(v264 + 32))(v192, v202, v314);
  }

  else
  {

    v203 = v314;
    (v302)(v192, v259, v314);
  }

  v204 = v193[10];
  sub_20D972DA8();
  v205 = v182 + v193[5];
  sub_20D971D78();
  v206 = v182 + v193[6];
  sub_20D971D78();
  v207 = v182 + v193[7];
  sub_20D971D78();
  v208 = v182 + v193[8];
  sub_20D971D78();
  v209 = v313;
  sub_20D971D78();
  v210 = v310;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v212 = v264 + 32;
  v211 = *(v264 + 32);
  v315 = v211;
  v213 = v240;
  (v211)(v240, v209, v203);
  v214 = v242;
  (v211)(v213 + *(v242 + 48), v210, v203);
  v215 = v241;
  sub_20D7EB7E8(v213, v241, &unk_27C83C750, &unk_20D978DD0);
  v216 = *(v214 + 48);
  (v211)(v254, v215, v203);
  v217 = *(v264 + 8);
  v217(v215 + v216, v203);
  sub_20D829514(v213, v215);
  v218 = *(v214 + 48);
  v219 = v254;
  v220 = &v254[*(v239 + 36)];
  v319 = v212;
  (v211)(v220, v215 + v218, v203);
  v221 = v257;
  v310 = v217;
  v217(v215, v203);
  v222 = v243;
  (*(v244 + 16))(v243, &v221[v320], v245);
  v223 = v313;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v219, v222, v223, &v221[*(v321 + 52)]);
  v224 = v253;
  (*(v253 + 56))(v246, 1, 1, v311);
  (*(v263 + 56))(v238, 1, 1, v312);
  v225 = v235;
  sub_20D971E98();
  v226 = v282;
  sub_20D972E48();
  v227 = v247;
  sub_20D972748();
  (*(v224 + 8))(v226, v311);
  result = (*(v264 + 48))(v227, 1, v203);
  if (result != 1)
  {

    (*(v236 + 8))(v225, v237);
    v228 = v310;
    (v310)(v256, v203);
    v228(v255, v203);
    (*(v258 + 8))(v260, v261);
    v228(v259, v203);
    v228(v318, v203);
    (*(v263 + 8))(v262, v312);
    v229 = v321;
    result = (v315)(&v221[*(v321 + 56)], v227, v203);
    *&v221[*(v229 + 60)] = v316;
    return result;
  }

LABEL_62:
  __break(1u);
  return result;
}

unint64_t sub_20D8CAFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v297 = a8;
  v296 = a7;
  v295 = a6;
  v246 = a4;
  v247 = a5;
  v249 = a1;
  v256 = a9;
  v304 = sub_20D9727B8();
  v317 = *(v304 - 8);
  v20 = *(v317 + 64);
  MEMORY[0x28223BE20](v304);
  v277 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_20D9726F8();
  v22 = *(v276 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v276);
  v275 = &v226 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_20D9727D8();
  v250 = *(v305 - 8);
  v25 = *(v250 + 64);
  MEMORY[0x28223BE20](v305);
  v278 = &v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v244 = &v226 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v243 = &v226 - v32;
  v33 = sub_20D971EA8();
  v233 = *(v33 - 8);
  v234 = v33;
  v34 = *(v233 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v226 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20D972E88();
  v241 = *(v37 - 8);
  v242 = v37;
  v38 = *(v241 + 64);
  MEMORY[0x28223BE20](v37);
  v240 = &v226 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v40 = *(*(v239 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v239);
  v238 = &v226 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v237 = &v226 - v43;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v44 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v255 = &v226 - v45;
  v46 = sub_20D972838();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v279 = &v226 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_20D972C58();
  v310 = *(v315 - 8);
  v50 = *(v310 + 64);
  v51 = MEMORY[0x28223BE20](v315);
  v312 = &v226 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v311 = &v226 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v226 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v231 = &v226 - v59;
  MEMORY[0x28223BE20](v58);
  v280 = &v226 - v60;
  v258 = sub_20D972AF8();
  v253 = *(v258 - 8);
  v61 = *(v253 + 64);
  v62 = MEMORY[0x28223BE20](v258);
  v245 = &v226 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v257 = &v226 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v65 - 8);
  v235 = &v226 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v259 = &v226 - v69;
  v70 = sub_20D972628();
  v71 = *(*(v70 - 8) + 64);
  v72 = MEMORY[0x28223BE20](v70);
  v306 = &v226 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v76 = &v226 - v75;
  v77 = MEMORY[0x28223BE20](v74);
  v230 = &v226 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v252 = &v226 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v229 = &v226 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v251 = &v226 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v254 = &v226 - v86;
  MEMORY[0x28223BE20](v85);
  v261 = v87;
  v88 = *(v87 + 16);
  v314 = &v226 - v89;
  v299 = v87 + 16;
  v298 = v88;
  result = v88();
  if (a3 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v228 = v57;
  v248 = a2;
  v232 = v36;
  v308 = v46;
  v260 = v47;
  v307 = v70;
  v309 = v76;
  if (a3)
  {
    v91 = a3;
    v227 = a18;
    v263 = a17;
    v262 = a16;
    v290 = a15;
    v289 = a14;
    v292 = a13;
    v291 = a12;
    v294 = a11;
    v293 = a10;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v93 = 0;
    v303 = *MEMORY[0x277CC9830];
    v282 = (v22 + 8);
    v283 = (v22 + 104);
    v281 = (v47 + 16);
    v274 = (v250 + 8);
    v273 = *MEMORY[0x277CC9968];
    v271 = (v317 + 8);
    v272 = (v317 + 104);
    v269 = (v261 + 32);
    v270 = (v261 + 8);
    v285 = v310 + 8;
    v286 = (v310 + 16);
    v94 = MEMORY[0x277D84F90];
    v284 = v310 + 32;
    v317 = 10;
    v301 = xmmword_20D977210;
    v300 = xmmword_20D97A6F0;
    v287 = v92;
    v288 = v91;
    while (1)
    {
      v316 = v93;
      v95 = sub_20D975778();
      v96 = *v296;
      v97 = *v297;
      result = sub_20D8D4AC0(*v296);
      if (v98)
      {
        break;
      }

      v95[(result >> 6) + 8] |= 1 << result;
      *(v95[6] + 8 * result) = v96;
      *(v95[7] + 8 * result) = v97;
      v99 = v95[2];
      v100 = __OFADD__(v99, 1);
      v101 = v99 + 1;
      if (v100)
      {
        goto LABEL_50;
      }

      v95[2] = v101;

      v102 = sub_20D975778();
      v103 = *v293;
      v104 = *v294;
      result = sub_20D8D4AC0(*v293);
      if (v105)
      {
        goto LABEL_51;
      }

      v102[(result >> 6) + 8] |= 1 << result;
      *(v102[6] + 8 * result) = v103;
      *(v102[7] + 8 * result) = v104;
      v106 = v102[2];
      v100 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v100)
      {
        goto LABEL_52;
      }

      v102[2] = v107;
      v108 = sub_20D975778();
      v109 = *v291;
      v110 = *v292;
      result = sub_20D8D4AC0(*v291);
      if (v111)
      {
        goto LABEL_53;
      }

      v108[(result >> 6) + 8] |= 1 << result;
      *(v108[6] + 8 * result) = v109;
      *(v108[7] + 8 * result) = v110;
      v112 = v108[2];
      v100 = __OFADD__(v112, 1);
      v113 = v112 + 1;
      if (v100)
      {
        goto LABEL_54;
      }

      v313 = v94;
      v108[2] = v113;

      v114 = sub_20D975778();
      v115 = *v289;
      v116 = *v290;
      result = sub_20D8D4AC0(*v289);
      if (v117)
      {
        goto LABEL_55;
      }

      v114[(result >> 6) + 8] |= 1 << result;
      *(v114[6] + 8 * result) = v115;
      *(v114[7] + 8 * result) = v116;
      v118 = v114[2];
      v100 = __OFADD__(v118, 1);
      v119 = v118 + 1;
      if (v100)
      {
        goto LABEL_56;
      }

      v120 = v316;
      v121 = v317;
      v122 = v317 - 100 * (v316 / 0xA);
      v114[2] = v119;
      if (v295)
      {

        if (v120)
        {
          v302 = v122;
          v123 = v308;
          if (qword_281126470 != -1)
          {
            swift_once();
          }

          v124 = __swift_project_value_buffer(v123, qword_281126478);
          v265 = v124;
          v268 = *v283;
          v126 = v275;
          v125 = v276;
          v268(v275, v303, v276);
          v127 = v278;
          sub_20D972708();
          v266 = *v282;
          v266(v126, v125);
          v264 = *v281;
          v128 = v279;
          v264(v279, v124, v123);
          sub_20D972798();
          sub_20D972718();
          v267 = *v274;
          v267(v127, v305);
          v129 = v277;
          (*v272)(v277, v273, v304);
          v268(v126, v303, v125);
          sub_20D972708();
          v266(v126, v125);
          v264(v128, v265, v308);
          sub_20D972798();
          v130 = v309;
          v131 = v306;
          sub_20D9730D8();
          v267(v127, v305);
          (*v271)(v129, v304);
          v132 = *v270;
          v133 = v131;
          v134 = v307;
          (*v270)(v133, v307);
          v135 = v314;
          v132(v314, v134);
          (*v269)(v135, v130, v134);
          v122 = v302;
        }

        v136 = v122;
        v137 = v122 * 1.5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        inited = swift_initStackObject();
        *(inited + 16) = v301;
        *(inited + 32) = 1;
        *(inited + 40) = v122 * 0.3;
        *(inited + 48) = 3;
        *(inited + 56) = v122 * 0.7;
        sub_20D8D6850(inited);
        swift_setDeallocating();
        if (v137 == 0.0)
        {
          sub_20D8D6850(v262);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
          v155 = swift_initStackObject();
          *(v155 + 16) = v301;
          *(v155 + 32) = 1;
          *(v155 + 40) = v137 * 0.3;
          *(v155 + 48) = 3;
          *(v155 + 56) = v137 * 0.7;
          sub_20D8D6850(v155);
          swift_setDeallocating();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        v156 = swift_initStackObject();
        *(v156 + 16) = v300;
        *(v156 + 32) = 1;
        *(v156 + 40) = v122 * 0.3;
        *(v156 + 48) = 2;
        *(v156 + 56) = v136 * 0.5;
        *(v156 + 64) = 3;
        *(v156 + 72) = v136 * 0.2;
        sub_20D8D6850(v156);
        swift_setDeallocating();
        v70 = v307;
        if (v137 == 0.0)
        {
          sub_20D8D6850(v263);
          v154 = v312;
          v153 = v309;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
          v157 = swift_initStackObject();
          *(v157 + 16) = v300;
          *(v157 + 32) = 1;
          *(v157 + 40) = v137 * 0.3;
          *(v157 + 48) = 2;
          *(v157 + 56) = v137 * 0.5;
          *(v157 + 64) = 3;
          *(v157 + 72) = v137 * 0.2;
          sub_20D8D6850(v157);
          v70 = v307;
          v154 = v312;
          v153 = v309;
          swift_setDeallocating();
        }
      }

      else
      {
        if (v120)
        {
          v302 = v121 - 100 * (v120 / 0xA);
          if (qword_281126470 != -1)
          {
            swift_once();
          }

          v139 = v308;
          v140 = __swift_project_value_buffer(v308, qword_281126478);
          v265 = v140;
          v268 = *v283;
          v142 = v275;
          v141 = v276;
          v268(v275, v303, v276);
          v143 = v278;
          sub_20D972708();
          v266 = *v282;
          v266(v142, v141);
          v144 = *v281;
          v145 = v279;
          (*v281)(v279, v140, v139);
          sub_20D972798();
          sub_20D972718();
          v267 = *v274;
          v267(v143, v305);
          v146 = v277;
          (*v272)(v277, v273, v304);
          v268(v142, v303, v141);
          sub_20D972708();
          v266(v142, v141);
          v144(v145, v265, v308);
          sub_20D972798();
          v147 = v309;
          v148 = v306;
          sub_20D9730D8();
          v267(v143, v305);
          (*v271)(v146, v304);
          v149 = *v270;
          v70 = v307;
          (*v270)(v148, v307);
          v150 = v314;
          v149(v314, v70);
          (*v269)(v150, v147, v70);
          v122 = v302;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
        v151 = swift_initStackObject();
        *(v151 + 16) = v300;
        *(v151 + 32) = 1;
        *(v151 + 40) = v122 * 0.3;
        *(v151 + 48) = 2;
        *(v151 + 56) = v122 * 0.5;
        *(v151 + 64) = 3;
        *(v151 + 72) = v122 * 0.2;
        sub_20D8D6850(v151);
        swift_setDeallocating();
        v152 = swift_initStackObject();
        *(v152 + 16) = v301;
        *(v152 + 32) = 1;
        *(v152 + 40) = v122 * 0.3;
        *(v152 + 48) = 2;
        *(v152 + 56) = v122 * 0.7;
        sub_20D8D6850(v152);
        swift_setDeallocating();
        v153 = v309;
        v154 = v312;
      }

      (v298)(v153, v314, v70);
      v158 = v311;
      sub_20D972BF8();
      (*v286)(v154, v158, v315);
      v94 = v313;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_20D8D486C(0, v94[2] + 1, 1, v94, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v160 = v94[2];
      v159 = v94[3];
      if (v160 >= v159 >> 1)
      {
        v94 = sub_20D8D486C(v159 > 1, v160 + 1, 1, v94, &qword_27C83A328, &qword_20D97B3D0, MEMORY[0x277D07630]);
      }

      v93 = v316 + 1;
      v161 = v310;
      v162 = v315;
      (*(v310 + 8))(v311, v315);
      v94[2] = v160 + 1;
      (*(v161 + 32))(v94 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v160, v312, v162);
      v317 += 10;
      if (v288 == v93)
      {
        v311 = sub_20D84B7B0(v227);
        goto LABEL_35;
      }
    }

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
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v94 = MEMORY[0x277D84F90];
  v311 = MEMORY[0x277D84FA0];
LABEL_35:
  (v298)(v254, v248, v70);
  v163 = v259;
  sub_20D9727E8();
  result = (*(v260 + 48))(v163, 1, v308);
  if (result == 1)
  {
    goto LABEL_60;
  }

  v164 = *(v253 + 16);
  v316 = v253 + 16;
  v312 = v164;
  (v164)(v257, v249, v258);
  v165 = v94[2];

  v166 = 0;
  do
  {
    v167 = v166;
    if (v165 == v166)
    {
      break;
    }

    if (v166 >= v94[2])
    {
      goto LABEL_57;
    }

    v168 = v94;
    v169 = v310;
    v170 = v280;
    v171 = v315;
    (*(v310 + 16))(v280, v168 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v310 + 72) * v166++, v315);
    sub_20D972BE8();
    v173 = v172;
    v174 = *(v169 + 8);
    v94 = v168;
    result = v174(v170, v171);
  }

  while (v173 == 0.0);
  v175 = v165 != v167;

  v176 = v256;
  v177 = v247;
  *v256 = v246;
  v176[1] = v177;
  v178 = type metadata accessor for HistoricalUsageSnapshot();
  *(v176 + v178[16]) = 6;
  *(v176 + v178[11]) = v175;
  (v312)(v245, v257, v258);
  (*(v260 + 16))(v279, v259, v308);
  v317 = v178;
  v179 = v178[12];
  swift_bridgeObjectRetain_n();

  sub_20D972E28();
  v316 = v179;
  v180 = sub_20D972E38();
  v181 = *(v180 + 16);
  v313 = v94;
  if (v181)
  {
    v182 = v310;
    v183 = v231;
    v184 = v315;
    (*(v310 + 16))(v231, v180 + ((*(v182 + 80) + 32) & ~*(v182 + 80)), v315);

    v186 = v229;
    MEMORY[0x20F320DF0](v185);
    (*(v182 + 8))(v183, v184);
    v187 = v307;
    (*(v261 + 32))(v251, v186, v307);
  }

  else
  {

    v187 = v307;
    (v298)(v251, v254, v307);
  }

  v188 = v317;
  v189 = *(v317 + 36);
  sub_20D972DA8();
  v190 = sub_20D972E38();
  v191 = *(v190 + 16);
  if (v191)
  {
    v192 = v310;
    v193 = v228;
    v194 = v315;
    (*(v310 + 16))(v228, v190 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v310 + 72) * (v191 - 1), v315);

    v196 = v230;
    MEMORY[0x20F320DF0](v195);
    (*(v192 + 8))(v193, v194);
    v197 = v196;
    v188 = v317;
    (*(v261 + 32))(v252, v197, v187);
  }

  else
  {

    (v298)(v252, v254, v187);
  }

  v198 = v188[10];
  v199 = v256;
  sub_20D972DA8();
  v200 = &v199[v188[5]];
  sub_20D971D78();
  v201 = &v199[v188[6]];
  sub_20D971D78();
  v202 = &v199[v188[7]];
  sub_20D971D78();
  v203 = &v199[v188[8]];
  sub_20D971D78();
  v204 = v309;
  sub_20D971D78();
  v205 = v306;
  sub_20D971D48();
  sub_20D8D6D28(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v206 = v187;
  v207 = v261 + 32;
  v208 = *(v261 + 32);
  v312 = v208;
  v209 = v237;
  (v208)(v237, v204, v206);
  v210 = v239;
  (v208)(v209 + *(v239 + 48), v205, v206);
  v211 = v238;
  sub_20D7EB7E8(v209, v238, &unk_27C83C750, &unk_20D978DD0);
  v315 = *(v210 + 48);
  (v208)(v255, v211, v206);
  v213 = v261 + 8;
  v212 = *(v261 + 8);
  v212(v211 + v315, v206);
  sub_20D829514(v209, v211);
  v214 = v255 + *(v236 + 36);
  v215 = v211 + *(v210 + 48);
  v315 = v207;
  (v208)(v214, v215, v206);
  v310 = v213;
  v212(v211, v206);
  v216 = v212;
  v217 = v240;
  (*(v241 + 16))(v240, &v199[v316], v242);
  v218 = v309;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v255, v217, v218, &v199[*(v317 + 52)]);
  v219 = v250;
  v220 = v305;
  (*(v250 + 56))(v243, 1, 1, v305);
  (*(v260 + 56))(v235, 1, 1, v308);
  v221 = v232;
  sub_20D971E98();
  v222 = v278;
  sub_20D972E48();
  v223 = v244;
  sub_20D972748();
  v224 = v307;
  (*(v219 + 8))(v222, v220);
  result = (*(v261 + 48))(v223, 1, v224);
  if (result != 1)
  {

    (*(v233 + 8))(v221, v234);
    v216(v252, v224);
    v216(v251, v224);
    (*(v253 + 8))(v257, v258);
    v216(v254, v224);
    v216(v314, v224);
    (*(v260 + 8))(v259, v308);
    v225 = v317;
    result = (v312)(&v199[*(v317 + 56)], v223, v224);
    *&v199[*(v225 + 60)] = v311;
    return result;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t static HistoricalUsageSnapshot.dynamicMock_Up100Percent_12of12m_Import_Year_Snapshot.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_20D9727B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  sub_20D9725C8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9998], v2);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v15 = sub_20D972838();
  __swift_project_value_buffer(v15, qword_281126478);
  sub_20D9730C8();
  (*(v3 + 8))(v6, v2);
  v16 = *(v8 + 8);
  v16(v12, v7);
  static HistoricalUsageSnapshot.mock_Up100Percent_12of12m_Import_Year_Snapshot_StartingOn(_:)(v14, a1);
  return (v16)(v14, v7);
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_48hBeforeAfter_Import_Day_Snapshot_StartingOn(_:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v56 = a1;
  v61 = a2;
  v2 = sub_20D972AF8();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20D9727B8();
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20D9727D8();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v64);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D972628();
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v57 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  v26 = *MEMORY[0x277CC9830];
  v49 = v12[13];
  v49(v15, v26, v11);
  sub_20D972708();
  v27 = v12[1];
  v50 = v11;
  v51 = v12 + 1;
  v48 = v27;
  v27(v15, v11);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v7, qword_281126478);
  v29 = v7;
  v44 = v7;
  v45 = *(v8 + 16);
  v46 = v28;
  v30 = v52;
  v45(v52, v28, v29);
  sub_20D972798();
  v47 = v25;
  sub_20D972718();
  v56 = *(v16 + 8);
  v56(v19, v64);
  v32 = v53;
  v31 = v54;
  v33 = v55;
  (*(v53 + 104))(v54, *MEMORY[0x277CC9980], v55);
  v34 = v26;
  v35 = v50;
  v49(v15, v34, v50);
  sub_20D972708();
  v48(v15, v35);
  v45(v30, v46, v44);
  sub_20D972798();
  v36 = v57;
  v37 = v47;
  sub_20D9730D8();
  v56(v19, v64);
  (*(v32 + 8))(v31, v33);
  v39 = v62;
  v38 = v63;
  v40 = v60;
  (*(v62 + 104))(v60, *MEMORY[0x277D075B0], v63);
  sub_20D8C92E4(v40, v36, 96, 0xD000000000000041, 0x800000020D989380, 0, MEMORY[0x277CC9980], qword_28249ACA0, v61, &qword_28249ACA0[1], qword_28249ACD0, &qword_28249ACD0[1], qword_28249AD00, &qword_28249AD00[1], &qword_28249AD30, &qword_28249AD38, MEMORY[0x277D073D8], &unk_28249AD40, &unk_28249AD70, &unk_28249ADA0);
  (*(v39 + 8))(v40, v38);
  v41 = v59;
  v42 = *(v58 + 8);
  v42(v36, v59);
  return (v42)(v37, v41);
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_48hBeforeAfter_Import_Day_Snapshot.modify())()
{
  if (qword_27C838638 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A268);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_48hBeforeAfter_ImportExport_Day_Snapshot_StartingOn(_:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v56 = a1;
  v61 = a2;
  v2 = sub_20D972AF8();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20D9727B8();
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20D9727D8();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v64);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D972628();
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v57 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  v26 = *MEMORY[0x277CC9830];
  v49 = v12[13];
  v49(v15, v26, v11);
  sub_20D972708();
  v27 = v12[1];
  v50 = v11;
  v51 = v12 + 1;
  v48 = v27;
  v27(v15, v11);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v7, qword_281126478);
  v29 = v7;
  v44 = v7;
  v45 = *(v8 + 16);
  v46 = v28;
  v30 = v52;
  v45(v52, v28, v29);
  sub_20D972798();
  v47 = v25;
  sub_20D972718();
  v56 = *(v16 + 8);
  v56(v19, v64);
  v32 = v53;
  v31 = v54;
  v33 = v55;
  (*(v53 + 104))(v54, *MEMORY[0x277CC9980], v55);
  v34 = v26;
  v35 = v50;
  v49(v15, v34, v50);
  sub_20D972708();
  v48(v15, v35);
  v45(v30, v46, v44);
  sub_20D972798();
  v36 = v57;
  v37 = v47;
  sub_20D9730D8();
  v56(v19, v64);
  (*(v32 + 8))(v31, v33);
  v39 = v62;
  v38 = v63;
  v40 = v60;
  (*(v62 + 104))(v60, *MEMORY[0x277D075B0], v63);
  sub_20D8C92E4(v40, v36, 96, 0xD000000000000047, 0x800000020D9893D0, 1, MEMORY[0x277CC9980], qword_28249ADE8, v61, &qword_28249ADE8[1], qword_28249AE18, &qword_28249AE18[1], qword_28249AE48, &qword_28249AE48[1], &qword_28249AE78, &qword_28249AE80, MEMORY[0x277D073D8], &unk_28249AE88, &unk_28249AEB8, &unk_28249AEE8);
  (*(v39 + 8))(v40, v38);
  v41 = v59;
  v42 = *(v58 + 8);
  v42(v36, v59);
  return (v42)(v37, v41);
}

uint64_t sub_20D8CDCC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for HistoricalUsageSnapshot();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return sub_20D8D6CC0(v6, a3, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t sub_20D8CDD74(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for HistoricalUsageSnapshot();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  sub_20D8D6A44(a1, v6);
  swift_endAccess();
  return sub_20D8D6D70(a1, type metadata accessor for HistoricalUsageSnapshot);
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_48hBeforeAfter_ImportExport_Day_Snapshot.modify())()
{
  if (qword_27C838640 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A280);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_6Months_ImportExport_Day_Snapshot_EndingOn(_:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v56 = a1;
  v45 = a2;
  v2 = sub_20D972AF8();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20D9727B8();
  v53 = *(v63 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v63);
  v55 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20D9727D8();
  v50 = *(v64 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v64);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20D972628();
  v42 = *(v43 - 8);
  v19 = *(v42 + 64);
  v20 = MEMORY[0x28223BE20](v43);
  v51 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v24 = *MEMORY[0x277CC9830];
  v61 = v12[13];
  v62 = v12 + 13;
  v61(v15);
  sub_20D972708();
  v25 = v12[1];
  v26 = v11;
  v54 = v12 + 1;
  v60 = v25;
  v25(v15, v11);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v7, qword_281126478);
  v58 = v7;
  v59 = *(v8 + 16);
  v27 = v52;
  v59(v52, v57, v7);
  sub_20D972798();
  sub_20D972718();
  v56 = v23;
  v48 = v8 + 16;
  v50 = *(v50 + 8);
  (v50)(v18, v64);
  v28 = v53;
  v29 = v55;
  (*(v53 + 104))(v55, *MEMORY[0x277CC9998], v63);
  v49 = v24;
  (v61)(v15, v24, v26);
  sub_20D972708();
  v60(v15, v26);
  v59(v27, v57, v58);
  sub_20D972798();
  v30 = v51;
  sub_20D9730D8();
  v31 = v50;
  (v50)(v18, v64);
  (*(v28 + 8))(v29, v63);
  (v61)(v15, v49, v26);
  sub_20D972708();
  v60(v15, v26);
  v59(v27, v57, v58);
  sub_20D972798();
  v32 = sub_20D973078();
  LOBYTE(v28) = v33;
  result = v31(v18, v64);
  if ((v28 & 1) == 0)
  {
    v35 = __OFADD__(v32, 24);
    v36 = v32 + 24;
    if (!v35)
    {
      v38 = v46;
      v37 = v47;
      v39 = v44;
      (*(v46 + 104))(v44, *MEMORY[0x277D075B0], v47);
      sub_20D8C92E4(v39, v30, v36, 0xD00000000000003ELL, 0x800000020D989420, 1, MEMORY[0x277CC9980], qword_2824973F0, v45, &qword_2824973F0[1], qword_282497420, &qword_282497420[1], qword_282497450, &qword_282497450[1], &qword_282497480, &qword_282497488, MEMORY[0x277D073D8], &unk_282497490, &unk_2824974C0, &unk_2824974F0);
      (*(v38 + 8))(v39, v37);
      v40 = *(v42 + 8);
      v41 = v43;
      v40(v30, v43);
      return (v40)(v56, v41);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_6Months_ImportExport_Day_Snapshot.modify())()
{
  if (qword_27C838648 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A298);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_21dBeforeAnd4dAfterLastMonday_Import_Week_Snapshot_EndingOn(_:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v57 = a1;
  v62 = a2;
  v2 = sub_20D972AF8();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20D9727B8();
  v55 = *(v67 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v67);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20D9727D8();
  v52 = *(v66 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v66);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D972628();
  v59 = *(v19 - 8);
  v60 = v19;
  v20 = *(v59 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v58 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v65 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - v25;
  v27 = v12[13];
  v50 = *MEMORY[0x277CC9830];
  v49 = v27;
  v27(v15);
  sub_20D972708();
  v28 = v12[1];
  v29 = v15;
  v30 = v15;
  v31 = v11;
  v53 = v12 + 1;
  v48 = v28;
  v28(v30, v11);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v7, qword_281126478);
  v33 = v7;
  v46 = v7;
  v47 = *(v8 + 16);
  v34 = v54;
  v47(v54, v32, v33);
  sub_20D972798();
  v51 = v26;
  sub_20D972718();
  v57 = *(v52 + 8);
  v57(v18, v66);
  sub_20D973088();
  v35 = v55;
  v36 = v56;
  (*(v55 + 104))(v56, *MEMORY[0x277CC9968], v67);
  v49(v29, v50, v31);
  sub_20D972708();
  v48(v29, v31);
  v47(v34, v32, v46);
  sub_20D972798();
  v37 = v58;
  v38 = v65;
  sub_20D9730D8();
  v57(v18, v66);
  (*(v35 + 8))(v36, v67);
  v40 = v63;
  v39 = v64;
  v41 = v61;
  (*(v63 + 104))(v61, *MEMORY[0x277D075B8], v64);
  sub_20D8CAFD0(v41, v37, 25, 0xD00000000000004FLL, 0x800000020D989460, 0, qword_282499C38, &qword_282499C38[1], v62, qword_282499C68, &qword_282499C68[1], qword_282499C98, &qword_282499C98[1], &qword_282499CC8, &qword_282499CD0, &unk_282499CD8, &unk_282499D08, &unk_282499D38);
  (*(v40 + 8))(v41, v39);
  v42 = v60;
  v43 = *(v59 + 8);
  v43(v37, v60);
  v43(v38, v42);
  return (v43)(v51, v42);
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_21dBeforeAnd4dAfterLastMonday_Import_Week_Snapshot.modify())()
{
  if (qword_27C838650 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A2B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_730dBeforeAnd4dAfterLastMonday_Import_Week_Snapshot_EndingOn(_:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v57 = a1;
  v62 = a2;
  v2 = sub_20D972AF8();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20D9727B8();
  v55 = *(v67 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v67);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_20D9727D8();
  v52 = *(v66 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v66);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D972628();
  v59 = *(v19 - 8);
  v60 = v19;
  v20 = *(v59 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v58 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v65 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v45 - v25;
  v27 = v12[13];
  v50 = *MEMORY[0x277CC9830];
  v49 = v27;
  v27(v15);
  sub_20D972708();
  v28 = v12[1];
  v29 = v15;
  v30 = v15;
  v31 = v11;
  v53 = v12 + 1;
  v48 = v28;
  v28(v30, v11);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v7, qword_281126478);
  v33 = v7;
  v46 = v7;
  v47 = *(v8 + 16);
  v34 = v54;
  v47(v54, v32, v33);
  sub_20D972798();
  v51 = v26;
  sub_20D972718();
  v57 = *(v52 + 8);
  v57(v18, v66);
  sub_20D973088();
  v35 = v55;
  v36 = v56;
  (*(v55 + 104))(v56, *MEMORY[0x277CC9968], v67);
  v49(v29, v50, v31);
  sub_20D972708();
  v48(v29, v31);
  v47(v34, v32, v46);
  sub_20D972798();
  v37 = v58;
  v38 = v65;
  sub_20D9730D8();
  v57(v18, v66);
  (*(v35 + 8))(v36, v67);
  v40 = v63;
  v39 = v64;
  v41 = v61;
  (*(v63 + 104))(v61, *MEMORY[0x277D075B8], v64);
  sub_20D8CAFD0(v41, v37, 735, 0xD000000000000050, 0x800000020D9894B0, 0, qword_28249AF30, &qword_28249AF30[1], v62, qword_28249AF60, &qword_28249AF60[1], qword_28249AF90, &qword_28249AF90[1], &qword_28249AFC0, &qword_28249AFC8, &unk_28249AFD0, &unk_28249B000, &unk_28249B030);
  (*(v40 + 8))(v41, v39);
  v42 = v60;
  v43 = *(v59 + 8);
  v43(v37, v60);
  v43(v38, v42);
  return (v43)(v51, v42);
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_730dBeforeAnd4dAfterLastMonday_Import_Week_Snapshot.modify())()
{
  if (qword_27C838658 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A2C8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_85dBeforeAnd15d_Import_Month_Snapshot_EndingOn(_:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v56 = a1;
  v61 = a2;
  v2 = sub_20D972AF8();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20D9727B8();
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_20D9727D8();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v64);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D972628();
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v57 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - v24;
  v26 = *MEMORY[0x277CC9830];
  v49 = v12[13];
  v49(v15, v26, v11);
  sub_20D972708();
  v27 = v12[1];
  v50 = v11;
  v51 = v12 + 1;
  v48 = v27;
  v27(v15, v11);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v7, qword_281126478);
  v29 = v7;
  v44 = v7;
  v45 = *(v8 + 16);
  v46 = v28;
  v30 = v52;
  v45(v52, v28, v29);
  sub_20D972798();
  v47 = v25;
  sub_20D972718();
  v56 = *(v16 + 8);
  v56(v19, v64);
  v32 = v53;
  v31 = v54;
  v33 = v55;
  (*(v53 + 104))(v54, *MEMORY[0x277CC9968], v55);
  v34 = v26;
  v35 = v50;
  v49(v15, v34, v50);
  sub_20D972708();
  v48(v15, v35);
  v45(v30, v46, v44);
  sub_20D972798();
  v36 = v57;
  v37 = v47;
  sub_20D9730D8();
  v56(v19, v64);
  (*(v32 + 8))(v31, v33);
  v39 = v62;
  v38 = v63;
  v40 = v60;
  (*(v62 + 104))(v60, *MEMORY[0x277D075C8], v63);
  sub_20D8CAFD0(v40, v36, 85, 0xD000000000000042, 0x800000020D989510, 0, qword_28249B078, &qword_28249B078[1], v61, qword_28249B0A8, &qword_28249B0A8[1], qword_28249B0D8, &qword_28249B0D8[1], &qword_28249B108, &qword_28249B110, &unk_28249B118, &unk_28249B148, &unk_28249B178);
  (*(v39 + 8))(v40, v38);
  v41 = v59;
  v42 = *(v58 + 8);
  v42(v36, v59);
  return (v42)(v37, v41);
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_85dBeforeAnd15d_Import_Month_Snapshot.modify())()
{
  if (qword_27C838660 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A2E0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_4yBeforeAnd1y_Import_SixMonth_Snapshot_EndingOn(_:)@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v69 = a1;
  v58 = a2;
  v2 = sub_20D972AF8();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20D9727B8();
  v54 = *(v71 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v71);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972838();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9726F8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D9727D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_20D972628();
  v50 = *(v56 - 8);
  v21 = *(v50 + 64);
  v22 = MEMORY[0x28223BE20](v56);
  v49 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v70 = &v47 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v47 - v26;
  v28 = v12[13];
  v68 = *MEMORY[0x277CC9830];
  v66 = v28;
  v67 = v12 + 13;
  v28(v15);
  sub_20D972708();
  v29 = v12[1];
  v51 = v11;
  v53 = v12 + 1;
  v48 = v29;
  v29(v15, v11);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, qword_281126478);
  v31 = v7;
  v63 = v7;
  v64 = *(v8 + 16);
  v65 = v30;
  v32 = v52;
  v64(v52, v30, v31);
  sub_20D972798();
  sub_20D972718();
  v69 = v27;
  v33 = *(v17 + 8);
  v61 = v16;
  v62 = v33;
  v33(v20, v16);
  v34 = v54;
  v35 = v55;
  (*(v54 + 104))(v55, *MEMORY[0x277CC9988], v71);
  v36 = v51;
  v66(v15, v68, v51);
  sub_20D972708();
  v37 = v48;
  v48(v15, v36);
  v64(v32, v65, v63);
  sub_20D972798();
  sub_20D9730D8();
  v62(v20, v61);
  (*(v34 + 8))(v35, v71);
  v66(v15, v68, v36);
  sub_20D972708();
  v37(v15, v36);
  v64(v32, v65, v63);
  sub_20D972798();
  v38 = v49;
  v39 = v70;
  sub_20D973098();
  v62(v20, v61);
  v40 = v50;
  v41 = *(v50 + 8);
  v42 = v56;
  v41(v39, v56);
  (*(v40 + 32))(v39, v38, v42);
  v44 = v59;
  v43 = v60;
  v45 = v57;
  (*(v59 + 104))(v57, *MEMORY[0x277D075D0], v60);
  sub_20D8C77B4(v45, v39, 0x104, 0xD000000000000043, 0x800000020D989560, 0, MEMORY[0x277CC9968], qword_282499D80, v58, &qword_282499D80[1], qword_282499DB0, &qword_282499DB0[1], qword_282499DE0, &qword_282499DE0[1], &qword_282499E10, &qword_282499E18, 7, &unk_282499E20, &unk_282499E50, &unk_282499E80);
  (*(v44 + 8))(v45, v43);
  v41(v39, v42);
  return (v41)(v69, v42);
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_4yBeforeAnd1y_Import_SixMonth_Snapshot.modify())()
{
  if (qword_27C838668 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A2F8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static HistoricalUsageSnapshot.mock_SimpleData_4yBeforeAnd1y_Import_Year_Snapshot_EndingOn(_:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X8>)
{
  v60 = a1;
  v56 = a2;
  v2 = sub_20D972AF8();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D9727B8();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972838();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D9726F8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20D9727D8();
  v47 = *(v67 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v67);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D972628();
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v52 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v66 = v44 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v44 - v26;
  v28 = v13[13];
  v63 = *MEMORY[0x277CC9830];
  v64 = v28;
  v65 = v13 + 13;
  v28(v16);
  sub_20D972708();
  v29 = v13[1];
  v45 = v12;
  v62 = v29;
  v44[1] = v13 + 1;
  v29(v16, v12);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v59 = __swift_project_value_buffer(v8, qword_281126478);
  v61 = v8;
  v30 = *(v9 + 16);
  v31 = v48;
  v30(v48, v59, v8);
  v44[0] = v30;
  sub_20D972798();
  sub_20D972718();
  v46 = v27;
  v60 = *(v47 + 8);
  v60(v19, v67);
  v32 = v45;
  v64(v16, v63, v45);
  sub_20D972708();
  v62(v16, v32);
  v30(v31, v59, v61);
  sub_20D972798();
  sub_20D972FC8();
  v60(v19, v67);
  v33 = v49;
  v34 = v50;
  v35 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277CC9988], v51);
  v64(v16, v63, v32);
  sub_20D972708();
  v62(v16, v32);
  (v44[0])(v31, v59, v61);
  sub_20D972798();
  v36 = v52;
  v37 = v66;
  sub_20D9730D8();
  v60(v19, v67);
  (*(v34 + 8))(v33, v35);
  v39 = v57;
  v38 = v58;
  v40 = v55;
  (*(v57 + 104))(v55, *MEMORY[0x277D075C0], v58);
  sub_20D8C77B4(v40, v36, 0x3C, 0xD00000000000003FLL, 0x800000020D9895B0, 0, MEMORY[0x277CC9998], qword_282499EC8, v56, &qword_282499EC8[1], qword_282499EF8, &qword_282499EF8[1], qword_282499F28, &qword_282499F28[1], &qword_282499F58, &qword_282499F60, 1, &unk_282499F68, &unk_282499F98, &unk_282499FC8);
  (*(v39 + 8))(v40, v38);
  v41 = v54;
  v42 = *(v53 + 8);
  v42(v36, v54);
  v42(v37, v41);
  return (v42)(v46, v41);
}

uint64_t sub_20D8D0C78(uint64_t a1, uint64_t *a2, void (*a3)(char *))
{
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  sub_20D9725C8();
  a3(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t (*static HistoricalUsageSnapshot.dynamicMock_SimpleData_4yBeforeAnd1y_Import_Year_Snapshot.modify())()
{
  if (qword_27C838670 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for HistoricalUsageSnapshot();
  __swift_project_value_buffer(v0, qword_27C83A310);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void static HistoricalUsageSnapshot.staticMock_SimpleData_032023To032025_ImportExport_Day_Snapshot.getter(void *a1@<X8>)
{
  v55 = a1;
  v1 = sub_20D972AF8();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20D9726F8();
  v60 = *(v70 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v70);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20D9727D8();
  v62 = *(v71 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v71);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20D9727B8();
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v69);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v64 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v26 = sub_20D975078();
  [v25 setDateFormat_];

  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v4, qword_281126478);
  v27 = sub_20D972808();
  [v25 setTimeZone_];

  v28 = sub_20D975078();
  v53 = v25;
  v29 = [v25 dateFromString_];

  v67 = v4;
  if (v29)
  {
    sub_20D9725B8();

    (*(v16 + 32))(v24, v22, v15);
    v30 = *MEMORY[0x277CC9988];
    v31 = *(v11 + 104);
    v65 = v14;
    v49 = v15;
    v31(v14, v30, v69);
    v52 = *MEMORY[0x277CC9830];
    v32 = v60;
    v66 = v24;
    v51 = *(v60 + 104);
    v33 = v59;
    v34 = v70;
    v51(v59);
    v35 = v58;
    sub_20D972708();
    v50 = v16;
    v60 = *(v32 + 8);
    (v60)(v33, v34);
    v61 = *(v61 + 16);
    v36 = v63;
    (v61)(v63, v68, v67);
    sub_20D972798();
    v37 = v64;
    sub_20D9730D8();
    v38 = *(v62 + 8);
    v38(v35, v71);
    (*(v11 + 8))(v65, v69);
    v39 = v70;
    (v51)(v33, v52, v70);
    v40 = v66;
    sub_20D972708();
    (v60)(v33, v39);
    (v61)(v36, v68, v67);
    v41 = v40;
    sub_20D972798();
    v42 = sub_20D973078();
    LOBYTE(v40) = v43;
    v38(v35, v71);
    if ((v40 & 1) == 0)
    {
      v45 = v56;
      v44 = v57;
      v46 = v54;
      (*(v56 + 104))(v54, *MEMORY[0x277D075B0], v57);
      sub_20D8C92E4(v46, v37, v42, 0xD00000000000003ELL, 0x800000020D989630, 1, MEMORY[0x277CC9980], qword_28249B1C0, v55, &qword_28249B1C0[1], qword_28249B1F0, &qword_28249B1F0[1], qword_28249B220, &qword_28249B220[1], &qword_28249B250, &qword_28249B258, MEMORY[0x277D073D8], &unk_28249B260, &unk_28249B290, &unk_28249B2C0);

      (*(v45 + 8))(v46, v44);
      v47 = *(v50 + 8);
      v48 = v49;
      v47(v37, v49);
      v47(v41, v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void static HistoricalUsageSnapshot.staticMock_SimpleData_052023To052025_ImportExport_Week_Snapshot.getter(void *a1@<X8>)
{
  v56 = a1;
  v1 = sub_20D972AF8();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v1);
  v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D9726F8();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20D9727D8();
  v64 = *(v70 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v70);
  v59 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20D9727B8();
  v12 = *(v69 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v69);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D972628();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v71 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  v26 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v27 = sub_20D975078();
  [v26 setDateFormat_];

  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v4, qword_281126478);
  v68 = v4;
  v28 = sub_20D972808();
  [v26 setTimeZone_];

  v29 = sub_20D975078();
  v54 = v26;
  v30 = [v26 dateFromString_];

  if (v30)
  {
    sub_20D9725B8();

    (*(v17 + 32))(v25, v23, v16);
    v31 = *MEMORY[0x277CC9988];
    v32 = *(v12 + 104);
    v51 = v15;
    v32(v15, v31, v69);
    v53 = *MEMORY[0x277CC9830];
    v34 = v61;
    v33 = v62;
    v66 = v25;
    v52 = *(v61 + 104);
    v35 = v60;
    v52(v60);
    v36 = v59;
    sub_20D972708();
    v50 = v17;
    v61 = *(v34 + 8);
    (v61)(v35, v33);
    v63 = *(v63 + 16);
    v37 = v65;
    (v63)(v65, v67, v68);
    sub_20D972798();
    sub_20D9730D8();
    v49 = v16;
    v38 = *(v64 + 8);
    v38(v36, v70);
    (*(v12 + 8))(v51, v69);
    (v52)(v35, v53, v33);
    v39 = v66;
    sub_20D972708();
    (v61)(v35, v33);
    (v63)(v37, v67, v68);
    v40 = v71;
    sub_20D972798();
    v41 = sub_20D973038();
    v43 = v42;
    v38(v36, v70);
    if ((v43 & 1) == 0)
    {
      v45 = v57;
      v44 = v58;
      v46 = v55;
      (*(v57 + 104))(v55, *MEMORY[0x277D075B8], v58);
      sub_20D8CAFD0(v46, v40, v41, 0xD00000000000003FLL, 0x800000020D989690, 1, qword_28249B308, &qword_28249B308[1], v56, qword_28249B338, &qword_28249B338[1], qword_28249B368, &qword_28249B368[1], &qword_28249B398, &qword_28249B3A0, &unk_28249B3A8, &unk_28249B3D8, &unk_28249B408);

      (*(v45 + 8))(v46, v44);
      v47 = *(v50 + 8);
      v48 = v49;
      v47(v40, v49);
      v47(v39, v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void static HistoricalUsageSnapshot.staticMock_SimpleData_032023To032025_ImportExport_Month_Snapshot.getter(void *a1@<X8>)
{
  v55 = a1;
  v1 = sub_20D972AF8();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20D9726F8();
  v60 = *(v70 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v70);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20D9727D8();
  v62 = *(v71 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v71);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20D9727B8();
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v69);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20D972628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v64 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v26 = sub_20D975078();
  [v25 setDateFormat_];

  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v4, qword_281126478);
  v27 = sub_20D972808();
  [v25 setTimeZone_];

  v28 = sub_20D975078();
  v53 = v25;
  v29 = [v25 dateFromString_];

  v67 = v4;
  if (v29)
  {
    sub_20D9725B8();

    (*(v16 + 32))(v24, v22, v15);
    v30 = *MEMORY[0x277CC9988];
    v31 = *(v11 + 104);
    v65 = v14;
    v49 = v15;
    v31(v14, v30, v69);
    v52 = *MEMORY[0x277CC9830];
    v32 = v60;
    v66 = v24;
    v51 = *(v60 + 104);
    v33 = v59;
    v34 = v70;
    v51(v59);
    v35 = v58;
    sub_20D972708();
    v50 = v16;
    v60 = *(v32 + 8);
    (v60)(v33, v34);
    v61 = *(v61 + 16);
    v36 = v63;
    (v61)(v63, v68, v67);
    sub_20D972798();
    v37 = v64;
    sub_20D9730D8();
    v38 = *(v62 + 8);
    v38(v35, v71);
    (*(v11 + 8))(v65, v69);
    v39 = v70;
    (v51)(v33, v52, v70);
    v40 = v66;
    sub_20D972708();
    (v60)(v33, v39);
    (v61)(v36, v68, v67);
    v41 = v40;
    sub_20D972798();
    v42 = sub_20D973038();
    LOBYTE(v40) = v43;
    v38(v35, v71);
    if ((v40 & 1) == 0)
    {
      v45 = v56;
      v44 = v57;
      v46 = v54;
      (*(v56 + 104))(v54, *MEMORY[0x277D075C8], v57);
      sub_20D8C92E4(v46, v37, v42, 0xD000000000000040, 0x800000020D9896D0, 1, MEMORY[0x277CC9968], qword_28249B450, v55, &qword_28249B450[1], qword_28249B480, &qword_28249B480[1], qword_28249B4B0, &qword_28249B4B0[1], &qword_28249B4E0, &qword_28249B4E8, MEMORY[0x277D073D8], &unk_28249B4F0, &unk_28249B520, &unk_28249B550);

      (*(v45 + 8))(v46, v44);
      v47 = *(v50 + 8);
      v48 = v49;
      v47(v37, v49);
      v47(v41, v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void static HistoricalUsageSnapshot.staticMock_SimpleData_032023To032025_ImportExport_SixMonth_Snapshot.getter(void *a1@<X8>)
{
  v55 = a1;
  v1 = sub_20D972AF8();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20D9726F8();
  v60 = *(v70 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v70);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20D9727D8();
  v62 = *(v71 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v71);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20D9727B8();
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D972628();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v64 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v25 = sub_20D975078();
  [v24 setDateFormat_];

  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v67 = __swift_project_value_buffer(v4, qword_281126478);
  v26 = sub_20D972808();
  [v24 setTimeZone_];

  v27 = sub_20D975078();
  v53 = v24;
  v28 = [v24 dateFromString_];

  v66 = v4;
  if (!v28)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_20D9725B8();

  (*(v15 + 32))(v23, v21, v14);
  v29 = *MEMORY[0x277CC9988];
  v30 = *(v11 + 104);
  v49 = v14;
  v30(v68, v29, v69);
  v52 = *MEMORY[0x277CC9830];
  v31 = v60;
  v65 = v23;
  v51 = *(v60 + 104);
  v32 = v59;
  v33 = v70;
  v51(v59);
  v34 = v58;
  sub_20D972708();
  v50 = v15;
  v60 = *(v31 + 8);
  (v60)(v32, v33);
  v61 = *(v61 + 16);
  v35 = v63;
  (v61)(v63, v67, v66);
  sub_20D972798();
  v36 = v64;
  sub_20D9730D8();
  v37 = *(v62 + 8);
  v37(v34, v71);
  (*(v11 + 8))(v68, v69);
  v38 = v70;
  (v51)(v32, v52, v70);
  v39 = v65;
  sub_20D972708();
  (v60)(v32, v38);
  v40 = v39;
  (v61)(v35, v67, v66);
  sub_20D972798();
  v41 = sub_20D973038();
  LOBYTE(v35) = v42;
  v37(v34, v71);
  if (v35)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (v41 % 7)
  {
    v43 = v41 / 7 + 1;
  }

  else
  {
    v43 = v41 / 7;
  }

  v45 = v56;
  v44 = v57;
  v46 = v54;
  (*(v56 + 104))(v54, *MEMORY[0x277D075D0], v57);
  sub_20D8C92E4(v46, v36, v43, 0xD000000000000043, 0x800000020D989720, 1, MEMORY[0x277CC9940], qword_28249B598, v55, &qword_28249B598[1], qword_28249B5C8, &qword_28249B5C8[1], qword_28249B5F8, &qword_28249B5F8[1], &qword_28249B628, &qword_28249B630, MEMORY[0x277D073D8], &unk_28249B638, &unk_28249B668, &unk_28249B698);

  (*(v45 + 8))(v46, v44);
  v47 = *(v50 + 8);
  v48 = v49;
  v47(v36, v49);
  v47(v40, v48);
}

void static HistoricalUsageSnapshot.staticMock_SimpleData_032023To032025_ImportExport_Year_Snapshot.getter(void *a1@<X8>)
{
  v55 = a1;
  v1 = sub_20D972AF8();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20D9726F8();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20D9727D8();
  v47 = *(v49 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20D9727B8();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v45);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20D972628();
  v16 = *(v53 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v26 = sub_20D975078();
  v58 = v25;
  [v25 setDateFormat_];

  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v4, qword_281126478);
  v43 = v4;
  v27 = sub_20D972808();
  v28 = v58;
  [v58 setTimeZone_];

  v29 = sub_20D975078();
  v30 = [v28 dateFromString_];

  if (v30)
  {
    sub_20D9725B8();

    v31 = v53;
    (*(v16 + 32))(v24, v22, v53);
    v32 = v45;
    (*(v12 + 104))(v15, *MEMORY[0x277CC9988], v45);
    v33 = v46;
    v34 = v48;
    (*(v46 + 104))(v9, *MEMORY[0x277CC9830], v48);
    v35 = v44;
    sub_20D972708();
    (*(v33 + 8))(v9, v34);
    (*(v51 + 16))(v50, v42, v43);
    sub_20D972798();
    v36 = v52;
    sub_20D9730D8();
    (*(v47 + 8))(v35, v49);
    (*(v12 + 8))(v15, v32);
    v38 = v56;
    v37 = v57;
    v39 = v54;
    (*(v56 + 104))(v54, *MEMORY[0x277D075C0], v57);
    sub_20D8C92E4(v39, v36, 24, 0xD00000000000003FLL, 0x800000020D989770, 1, MEMORY[0x277CC9998], qword_28249B6E0, v55, &qword_28249B6E0[1], qword_28249B710, &qword_28249B710[1], qword_28249B740, &qword_28249B740[1], &qword_28249B770, &qword_28249B778, MEMORY[0x277D073D8], &unk_28249B780, &unk_28249B7B0, &unk_28249B7E0);

    (*(v38 + 8))(v39, v37);
    v40 = *(v16 + 8);
    v40(v36, v31);
    v40(v24, v31);
  }

  else
  {
    __break(1u);
  }
}

void static HistoricalUsageSnapshot.staticMock_SimpleData_032020To032025_ImportExport_Year_Snapshot.getter(void *a1@<X8>)
{
  v55 = a1;
  v1 = sub_20D972AF8();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972838();
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20D9726F8();
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20D9727D8();
  v47 = *(v49 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20D9727B8();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v45);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20D972628();
  v16 = *(v53 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v26 = sub_20D975078();
  v58 = v25;
  [v25 setDateFormat_];

  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v4, qword_281126478);
  v43 = v4;
  v27 = sub_20D972808();
  v28 = v58;
  [v58 setTimeZone_];

  v29 = sub_20D975078();
  v30 = [v28 dateFromString_];

  if (v30)
  {
    sub_20D9725B8();

    v31 = v53;
    (*(v16 + 32))(v24, v22, v53);
    v32 = v45;
    (*(v12 + 104))(v15, *MEMORY[0x277CC9988], v45);
    v33 = v46;
    v34 = v48;
    (*(v46 + 104))(v9, *MEMORY[0x277CC9830], v48);
    v35 = v44;
    sub_20D972708();
    (*(v33 + 8))(v9, v34);
    (*(v51 + 16))(v50, v42, v43);
    sub_20D972798();
    v36 = v52;
    sub_20D9730D8();
    (*(v47 + 8))(v35, v49);
    (*(v12 + 8))(v15, v32);
    v38 = v56;
    v37 = v57;
    v39 = v54;
    (*(v56 + 104))(v54, *MEMORY[0x277D075C0], v57);
    sub_20D8C92E4(v39, v36, 60, 0xD00000000000003FLL, 0x800000020D9897B0, 1, MEMORY[0x277CC9998], qword_28249B828, v55, &qword_28249B828[1], qword_28249B858, &qword_28249B858[1], qword_28249B888, &qword_28249B888[1], &qword_28249B8B8, &qword_28249B8C0, MEMORY[0x277D073D8], &unk_28249B8C8, &unk_28249B8F8, &unk_28249B928);

    (*(v38 + 8))(v39, v37);
    v40 = *(v16 + 8);
    v40(v36, v31);
    v40(v24, v31);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20D8D3AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D972838();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D9726F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D9727D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277CC9830], v7);
  sub_20D972708();
  (*(v8 + 8))(v11, v7);
  if (qword_281126470 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_281126478);
  (*(v3 + 16))(v6, v17, v2);
  sub_20D972798();
  static HistoricalUsageSnapshot.staticMock_WidgetPlaceholderData_8dFrom06102024_Import_Week_Snapshot(with:)(v16, a1);
  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_20D8D3D44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  if (v10 >> 6)
  {
    v11 = (*(v0 + 9) << 8) | ((*(v0 + 13) | (*(v0 + 15) << 16)) << 40);
    if (v10 >> 6 == 1)
    {
      v12 = v11 | v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A360, &qword_20D97B458);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20D97A6F0;
      *(inited + 32) = 2;
      *(inited + 40) = v1;
      *(inited + 48) = 1;
      *(inited + 56) = v12;
      *(inited + 64) = 0;
      *(inited + 72) = v3;
      v14 = sub_20D8D6850(inited);
      swift_setDeallocating();
      return v14;
    }

    else
    {
      v16 = (*(v0 + 57) << 8) | ((*(v0 + 61) | (*(v0 + 63) << 16)) << 40) | v8;
      v17 = (*(v0 + 41) << 8) | ((*(v0 + 45) | (*(v0 + 47) << 16)) << 40) | v6;
      v18 = (*(v0 + 25) << 8) | ((*(v0 + 29) | (*(v0 + 31) << 16)) << 40) | v4;
      v19 = v11 | v2;
      if (v10 != 128 || v3 | v1 | v5 | v19 | v18 | v7 | v17 | v9 | v16)
      {
        v21 = v19 | v3 | v5 | v18 | v7 | v17 | v9 | v16;
        if (v10 == 128 && v1 == 1 && !v21)
        {
          v20 = &unk_282497098;
        }

        else if (v10 == 128 && v1 == 2 && !v21)
        {
          v20 = &unk_282497158;
        }

        else
        {
          v20 = &unk_2824971A8;
        }
      }

      else
      {
        v20 = &unk_282497058;
      }

      return sub_20D8D6850(v20);
    }
  }

  else
  {
    v22 = *(v0 + 64);
    v23 = sub_20D8D6850(&unk_2824970E8);
    sub_20D8ADF00(v1, v2 & 1, 0);
    sub_20D8ADF00(v3, v4 & 1, 1);
    sub_20D8ADF00(v5, v6 & 1, 2);
    sub_20D8ADF00(v7, v8 & 1, 3);
    sub_20D8ADF00(v22, v10 & 1, 4);
    return v23;
  }
}

void *sub_20D8D3FFC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A388, &qword_20D980360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20D8D4130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20D8D42B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A338, &qword_20D97B420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_20D8D43E0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A358, &unk_20D97B448);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0) - 8);
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

char *sub_20D8D4620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A330, &unk_20D97B410);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_20D8D4724(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7A0, &qword_20D97B440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20D8D486C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_20D8D4A48(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20D975888();
  sub_20D975158();
  v6 = sub_20D9758A8();

  return sub_20D8D5988(a1, a2, v6);
}

unint64_t sub_20D8D4AC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_20D975878();

  return sub_20D8D5A40(a1, v4);
}

unint64_t sub_20D8D4B04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20D975608();

  return sub_20D8D5AAC(a1, v5);
}

unint64_t sub_20D8D4B48(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_20D975888();
  sub_20D972698();
  sub_20D8D6D28(&unk_281127720, MEMORY[0x277CC95F0]);
  sub_20D974F88();
  v4 = (a1 + *(type metadata accessor for HistoricalUsageWidgetCommon.Home(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_20D975158();
  v7 = sub_20D9758A8();

  return sub_20D8D5B74(a1, v7);
}

unint64_t sub_20D8D4C18(char a1)
{
  v3 = *(v1 + 40);
  sub_20D975888();
  MEMORY[0x20F323A50](qword_20D97B4C0[a1]);
  v4 = sub_20D9758A8();

  return sub_20D8D5D24(a1, v4);
}

uint64_t sub_20D8D4C90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D9755F8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_20D975888();

      sub_20D975158();
      v14 = sub_20D9758A8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20D8D4E40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D9755F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_20D975878();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20D8D4FB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20D9755F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_20D975888();

      sub_20D975158();
      v13 = sub_20D9758A8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_20D8D5160(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20D8D4A48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20D8D5DA4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20D90856C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_20D8D4A48(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_20D9757F8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_20D7E39A4(a1, v23);
  }

  else
  {
    sub_20D8D5824(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_20D8D52B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20D8D4A48(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20D908824(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_20D8D4A48(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_20D9757F8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_20D8D5F48();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_20D8D5428(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_20D8D4AC0(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_20D8D60B4();
    result = v17;
    goto LABEL_8;
  }

  sub_20D908AC8(v14, a2 & 1);
  v18 = *v4;
  result = sub_20D8D4AC0(a1);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a3;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a1;
    *(v20[7] + 8 * result) = a3;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_20D9757F8();
  __break(1u);
  return result;
}

uint64_t sub_20D8D5550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_20D8D4A48(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_20D909114(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_20D8D4A48(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_20D9757F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_20D8D644C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_20D8D56D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_20D8D4AC0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_20D909670(v14, a3 & 1);
      v18 = *v4;
      result = sub_20D8D4AC0(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_20D9757F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_20D8D65C4();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

_OWORD *sub_20D8D5824(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20D7E39A4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_20D8D5890(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  result = sub_20D8D6C58(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_20D8D5944(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_20D8D5988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20D9757C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20D8D5A40(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20D8D5AAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20D8D6DD0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F3237D0](v9, a1);
      sub_20D84D3F0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20D8D5B74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    while (1)
    {
      sub_20D8D6CC0(*(v2 + 48) + v13 * v11, v9, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      if (sub_20D972668())
      {
        v14 = *(v5 + 20);
        v15 = *&v9[v14];
        v16 = *&v9[v14 + 8];
        v17 = (a1 + v14);
        v18 = v15 == *v17 && v16 == v17[1];
        if (v18 || (sub_20D9757C8() & 1) != 0)
        {
          break;
        }
      }

      sub_20D8D6D70(v9, type metadata accessor for HistoricalUsageWidgetCommon.Home);
      v11 = (v11 + 1) & v12;
      if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        return v11;
      }
    }

    sub_20D8D6D70(v9, type metadata accessor for HistoricalUsageWidgetCommon.Home);
  }

  return v11;
}

unint64_t sub_20D8D5D24(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_20D97B4C0[*(*(v2 + 48) + result)] == qword_20D97B4C0[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_20D8D5DA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
  v2 = *v0;
  v3 = sub_20D975758();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_20D7EB630(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20D7E39A4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_20D8D5F48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A340, &qword_20D97B428);
  v2 = *v0;
  v3 = sub_20D975758();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20D8D60B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
  v2 = *v0;
  v3 = sub_20D975758();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20D8D6200()
{
  v1 = v0;
  v2 = type metadata accessor for HistoricalUsageWidgetCommon.Home(0);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A380, &unk_20D97B490);
  v5 = *v0;
  v6 = sub_20D975758();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_20D8D6CC0(*(v5 + 48) + v22, v28, type metadata accessor for HistoricalUsageWidgetCommon.Home);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_20D8D6C58(v21, *(v30 + 48) + v22, type metadata accessor for HistoricalUsageWidgetCommon.Home);
        *(*(v24 + 56) + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_20D8D644C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A378, &unk_20D97B470);
  v2 = *v0;
  v3 = sub_20D975758();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_20D8D65C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A350, &unk_20D97D120);
  v2 = *v0;
  v3 = sub_20D975758();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_20D8D6720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E0, &unk_20D979E40);
    v3 = sub_20D975778();
    v4 = a1 + 32;

    while (1)
    {
      sub_20D7EB7E8(v4, &v13, &qword_27C839EB0, &qword_20D979E50);
      v5 = v13;
      v6 = v14;
      result = sub_20D8D4A48(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20D7E39A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20D8D6850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398D8, &unk_20D979E30);
    v3 = sub_20D975778();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_20D8D4AC0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20D8D6930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A378, &unk_20D97B470);
    v3 = sub_20D975778();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20D8D4A48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20D8D6A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s16MockFilterPeriodOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t _s16MockFilterPeriodOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
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

double _s16MockFilterPeriodOwst(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 57) = 0u;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D8D6BB4(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_20D8D6BE4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1;
    v3 = *(result + 56) & 1;
    v4 = *(result + 72) & 1 | (a2 << 6);
    *(result + 24) &= 1uLL;
    *(result + 40) = v2;
    *(result + 56) = v3;
    *(result + 72) = v4;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0x80;
  }

  return result;
}

uint64_t sub_20D8D6C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8D6CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8D6D28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D8D6D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D8D6E78@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v48 = a1;
  v50 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3B0, &qword_20D97B640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3B8, &qword_20D97B648);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3C0, &unk_20D97B650);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v16 = sub_20D974378();
  *(inited + 32) = v16;
  v17 = sub_20D974348();
  *(inited + 33) = v17;
  v18 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v16)
  {
    v18 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v17)
  {
    v18 = sub_20D974358();
  }

  v19 = 0uLL;
  v20 = 0uLL;
  v21 = v49;
  if ((v49 & 1) == 0)
  {
    sub_20D973AD8();
    *(&v20 + 1) = v22;
    *(&v19 + 1) = v23;
  }

  v46 = v20;
  v47 = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3C8, &unk_20D97B660);
  (*(*(v24 - 8) + 16))(v6, v48, v24);
  v25 = &v6[*(v3 + 36)];
  *v25 = v18;
  v26 = v47;
  *(v25 + 24) = v46;
  *(v25 + 8) = v26;
  v25[40] = v21 & 1;
  sub_20D974C48();
  sub_20D973C18();
  sub_20D7EAF18(v6, v10, &qword_27C83A3B0, &qword_20D97B640);
  v27 = &v10[*(v7 + 36)];
  v28 = v52;
  *v27 = v51;
  *(v27 + 1) = v28;
  *(v27 + 2) = v53;
  v29 = sub_20D974C48();
  v31 = v30;
  v32 = &v14[*(v11 + 36)];
  sub_20D974C08();
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)] = 256;
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36)];
  *v33 = v29;
  v33[1] = v31;
  sub_20D7EAF18(v10, v14, &qword_27C83A3B8, &qword_20D97B648);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3D0, &unk_20D97B678);
  v35 = v50;
  v36 = (v50 + *(v34 + 36));
  v37 = *(sub_20D973DE8() + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_20D974118();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550) + 36)] = 256;
  return sub_20D7EAF18(v14, v35, &qword_27C83A3C0, &unk_20D97B650);
}

uint64_t sub_20D8D7288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D974378();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3D8, &qword_20D97B688);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3E0, &qword_20D97B690) + 36);
  *v6 = v4;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  LOBYTE(a1) = sub_20D974348();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3E8, &qword_20D97B698) + 36);
  *v7 = a1;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  sub_20D974C48();
  sub_20D973C18();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3F0, &qword_20D97B6A0) + 36));
  *v8 = v19;
  v8[1] = v20;
  v8[2] = v21;
  v9 = sub_20D974C48();
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A3F8, &qword_20D97B6A8) + 36);
  sub_20D974C08();
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A78, &unk_20D976E10) + 56)) = 256;
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A80, &qword_20D97B670) + 36));
  *v13 = v9;
  v13[1] = v11;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A400, &qword_20D97B6B0) + 36));
  v15 = *(sub_20D973DE8() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_20D974118();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v14 = 0;
  *(v14 + 1) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C98, &unk_20D977550);
  *&v14[*(result + 36)] = 256;
  return result;
}

uint64_t sub_20D8D74DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20D974C48();
  sub_20D973C18();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A408, &qword_20D97B6B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A410, &qword_20D97B6C0) + 36));
  *v5 = v12;
  v5[1] = v13;
  v5[2] = v14;
  v6 = sub_20D974C48();
  v8 = v7;
  v9 = sub_20D9748C8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A418, &qword_20D97B6C8);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = 256;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  return result;
}

unint64_t sub_20D8D75FC()
{
  result = qword_27C83A398;
  if (!qword_27C83A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A398);
  }

  return result;
}

unint64_t sub_20D8D7650()
{
  result = qword_27C83A3A0;
  if (!qword_27C83A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A3A0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx010HomeEnergyB020FakeSmallWidgetStyleVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  sub_20D973DA8();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_20D8D7714()
{
  result = qword_27C83A3A8;
  if (!qword_27C83A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A3A8);
  }

  return result;
}

unint64_t sub_20D8D77EC()
{
  result = qword_27C83A420;
  if (!qword_27C83A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3D0, &unk_20D97B678);
    sub_20D8D78A4();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A420);
  }

  return result;
}

unint64_t sub_20D8D78A4()
{
  result = qword_27C83A428;
  if (!qword_27C83A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3C0, &unk_20D97B650);
    sub_20D8D7BDC(&qword_27C83A430, &qword_27C83A3B8, &qword_20D97B648, sub_20D8D7988);
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A428);
  }

  return result;
}

unint64_t sub_20D8D7988()
{
  result = qword_27C83A438;
  if (!qword_27C83A438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3B0, &qword_20D97B640);
    sub_20D7EBC4C(&qword_27C83A440, &qword_27C83A3C8, &unk_20D97B660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A438);
  }

  return result;
}

unint64_t sub_20D8D7A40()
{
  result = qword_27C83A448;
  if (!qword_27C83A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A400, &qword_20D97B6B0);
    sub_20D8D7AF8();
    sub_20D7EBC4C(&qword_281124FF8, &qword_27C838C98, &unk_20D977550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A448);
  }

  return result;
}

unint64_t sub_20D8D7AF8()
{
  result = qword_27C83A450;
  if (!qword_27C83A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3F8, &qword_20D97B6A8);
    sub_20D8D7BDC(&qword_27C83A458, &qword_27C83A3F0, &qword_20D97B6A0, sub_20D8D7C60);
    sub_20D7EBC4C(&qword_281124E38, &qword_27C838A80, &qword_20D97B670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A450);
  }

  return result;
}

uint64_t sub_20D8D7BDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D8D7C60()
{
  result = qword_27C83A460;
  if (!qword_27C83A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3E8, &qword_20D97B698);
    sub_20D8D7CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A460);
  }

  return result;
}

unint64_t sub_20D8D7CEC()
{
  result = qword_27C83A468;
  if (!qword_27C83A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A3E0, &qword_20D97B690);
    sub_20D7EBC4C(&qword_27C83A470, &qword_27C83A3D8, &qword_20D97B688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A468);
  }

  return result;
}

unint64_t sub_20D8D7DA4()
{
  result = qword_27C83A478;
  if (!qword_27C83A478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A418, &qword_20D97B6C8);
    sub_20D8D7E5C();
    sub_20D7EBC4C(&qword_27C83A490, &qword_27C83A498, &unk_20D97B6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A478);
  }

  return result;
}

unint64_t sub_20D8D7E5C()
{
  result = qword_27C83A480;
  if (!qword_27C83A480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A410, &qword_20D97B6C0);
    sub_20D7EBC4C(&qword_27C83A488, &qword_27C83A408, &qword_20D97B6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A480);
  }

  return result;
}

uint64_t sub_20D8D7F20()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D8D8010()
{
  sub_20D975888();
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D8D8124@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_20D971E68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D971E58();
  sub_20D971E48();
  MEMORY[0x20F31FFF0](7824750, 0xE300000000000000);
  sub_20D8D8374();
  sub_20D971E18();
  sub_20D971E28();
  v11 = sub_20D9721C8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_20D7E3944(v5, &qword_27C838B78, &qword_20D97A5A0);
    sub_20D8DAAE4();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_20D8D8374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C83A4A8, &qword_20D97B7A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v383 = &v351 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v382 = &v351 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v379 = &v351 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v404 = &v351 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v374 = &v351 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v373 = &v351 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v351 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v372 = &v351 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v351 - v21;
  v23 = sub_20D971E08();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v352 = &v351 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v367 = &v351 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v403 = &v351 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v366 = &v351 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v402 = &v351 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v401 = &v351 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v365 = &v351 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v400 = &v351 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v381 = &v351 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v380 = &v351 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v399 = &v351 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v364 = &v351 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v398 = &v351 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v397 = &v351 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v363 = &v351 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v396 = &v351 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v395 = &v351 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v362 = &v351 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v394 = &v351 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v393 = &v351 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v361 = &v351 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v392 = &v351 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v378 = &v351 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v377 = &v351 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v391 = &v351 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v360 = &v351 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v390 = &v351 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v389 = &v351 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v359 = &v351 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v388 = &v351 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v387 = &v351 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v358 = &v351 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v386 = &v351 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v376 = &v351 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v375 = &v351 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v385 = &v351 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v357 = &v351 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v384 = &v351 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v356 = &v351 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v355 = &v351 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v354 = &v351 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v353 = &v351 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v371 = &v351 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v370 = &v351 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v369 = &v351 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v368 = &v351 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v120 = &v351 - v119;
  MEMORY[0x28223BE20](v118);
  v122 = &v351 - v121;
  v407 = v24;
  v408 = MEMORY[0x277D84F90];
  if (!v1[3])
  {
    v405 = *(v24 + 56);
    v405(v22, 1, 1, v23);
LABEL_5:
    sub_20D7E3944(v22, qword_27C83A4A8, &qword_20D97B7A0);
    v126 = v404;
    v127 = v1[6];
    if (!v127)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v406 = v18;
  v124 = v1[1];
  v123 = v1[2];
  v125 = *v1;

  sub_20D971DF8();
  v405 = *(v24 + 56);
  v405(v22, 0, 1, v23);

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v18 = v406;
    goto LABEL_5;
  }

  v167 = *(v24 + 32);
  v167(v122, v22, v23);
  (*(v24 + 16))(v120, v122, v23);
  v168 = sub_20D8D423C(0, 1, 1, MEMORY[0x277D84F90]);
  v170 = v168[2];
  v169 = v168[3];
  if (v170 >= v169 >> 1)
  {
    v168 = sub_20D8D423C(v169 > 1, v170 + 1, 1, v168);
  }

  v171 = v407 + 8;
  (*(v407 + 8))(v122, v23);
  v168[2] = v170 + 1;
  v172 = v168 + ((*(v171 + 72) + 32) & ~*(v171 + 72));
  v173 = *(v171 + 64);
  v24 = v407;
  v167(&v172[v173 * v170], v120, v23);
  v408 = v168;
  v126 = v404;
  v18 = v406;
  v127 = v1[6];
  if (v127)
  {
LABEL_6:
    v129 = v1[7];
    v128 = v1[8];
    v409 = *(v1 + 2);
    v410 = v127;
    v411 = v129;
    v412 = v128;
    v130 = sub_20D8DAB38();
    sub_20D95A78C(v130);
  }

LABEL_7:
  v131 = v1[9];
  v132 = v1[10];
  v133 = *(v1 + 88);

  v134 = v372;
  sub_20D8DBF3C(v133, v372);

  v406 = *(v24 + 48);
  if ((v406)(v134, 1, v23) == 1)
  {
    sub_20D7E3944(v134, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v135 = *(v24 + 32);
    v136 = v368;
    v135(v368, v134, v23);
    (*(v24 + 16))(v369, v136, v23);
    v137 = v408;
    v138 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_20D8D423C(0, *(v137 + 2) + 1, 1, v137);
    }

    v140 = *(v137 + 2);
    v139 = *(v137 + 3);
    if (v140 >= v139 >> 1)
    {
      v137 = sub_20D8D423C(v139 > 1, v140 + 1, 1, v137);
    }

    (*(v24 + 8))(v368, v23);
    *(v137 + 2) = v140 + 1;
    v135(&v137[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v140], v369, v23);
    v408 = v137;
    v18 = v138;
    v126 = v404;
  }

  v141 = v1[12];
  v142 = v1[13];
  v143 = *(v1 + 112);

  sub_20D8DC130(v143, v18);

  if ((v406)(v18, 1, v23) == 1)
  {
    sub_20D7E3944(v18, qword_27C83A4A8, &qword_20D97B7A0);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v148 = v407;
    v147 = v373;
    v405(v373, 1, 1, v23);
    goto LABEL_29;
  }

  v158 = v407;
  v159 = *(v407 + 32);
  v160 = v370;
  v159(v370, v18, v23);
  (*(v158 + 16))(v371, v160, v23);
  v161 = v408;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_20D8D423C(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_20D8D423C(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v158 + 8))(v370, v23);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v163], v371, v23);
  v408 = v161;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v145 = v1[16];
  v144 = v1[17];
  v146 = v1[15];

  v147 = v373;
  sub_20D971DF8();
  v148 = v407;
  v405(v147, 0, 1, v23);

  if ((v406)(v147, 1, v23) != 1)
  {
    v149 = *(v148 + 32);
    v150 = v353;
    v149(v353, v147, v23);
    (*(v148 + 16))(v354, v150, v23);
    v151 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_20D8D423C(0, v151[2] + 1, 1, v151);
    }

    v153 = v151[2];
    v152 = v151[3];
    if (v153 >= v152 >> 1)
    {
      v151 = sub_20D8D423C(v152 > 1, v153 + 1, 1, v151);
    }

    v154 = v407 + 8;
    (*(v407 + 8))(v353, v23);
    v151[2] = v153 + 1;
    v155 = v151 + ((*(v154 + 72) + 32) & ~*(v154 + 72));
    v156 = *(v154 + 64);
    v148 = v407;
    v149(&v155[v156 * v153], v354, v23);
    v408 = v151;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_20D7E3944(v147, qword_27C83A4A8, &qword_20D97B7A0);
  if (!v1[22])
  {
LABEL_22:
    v157 = v374;
    v405(v374, 1, 1, v23);
LABEL_31:
    sub_20D7E3944(v157, qword_27C83A4A8, &qword_20D97B7A0);
    goto LABEL_41;
  }

LABEL_30:
  v165 = v1[20];
  v164 = v1[21];
  v166 = v1[19];

  v157 = v374;
  sub_20D971DF8();
  v405(v157, 0, 1, v23);

  if ((v406)(v157, 1, v23) == 1)
  {
    goto LABEL_31;
  }

  v174 = *(v148 + 32);
  v175 = v355;
  v174(v355, v157, v23);
  (*(v148 + 16))(v356, v175, v23);
  v176 = v408;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v176 = sub_20D8D423C(0, *(v176 + 2) + 1, 1, v176);
  }

  v178 = *(v176 + 2);
  v177 = *(v176 + 3);
  if (v178 >= v177 >> 1)
  {
    v176 = sub_20D8D423C(v177 > 1, v178 + 1, 1, v176);
  }

  (*(v148 + 8))(v355, v23);
  *(v176 + 2) = v178 + 1;
  v174(&v176[((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v178], v356, v23);
  v408 = v176;
LABEL_41:
  v180 = v1[23];
  v179 = v1[24];
  v181 = v1[25];

  sub_20D8DCA48(v182);
  if (v183)
  {
    v184 = v357;
    sub_20D971DF8();

    v185 = v407;
    v186 = *(v407 + 32);
    v187 = v384;
    v186(v384, v184, v23);
    (*(v185 + 16))(v385, v187, v23);
    v188 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v188 = sub_20D8D423C(0, *(v188 + 2) + 1, 1, v188);
    }

    v190 = *(v188 + 2);
    v189 = *(v188 + 3);
    if (v190 >= v189 >> 1)
    {
      v188 = sub_20D8D423C(v189 > 1, v190 + 1, 1, v188);
    }

    (*(v185 + 8))(v384, v23);
    *(v188 + 2) = v190 + 1;
    v186(&v188[((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v190], v385, v23);
    v408 = v188;
  }

  else
  {
  }

  v191 = type metadata accessor for TapToRadarDraft();
  v192 = v1 + v191[11];
  sub_20D8DC288(v126);
  if ((v406)(v126, 1, v23) == 1)
  {
    sub_20D7E3944(v126, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v193 = v407;
    v194 = *(v407 + 32);
    v195 = v375;
    v194(v375, v126, v23);
    (*(v193 + 16))(v376, v195, v23);
    v196 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v196 = sub_20D8D423C(0, *(v196 + 2) + 1, 1, v196);
    }

    v198 = *(v196 + 2);
    v197 = *(v196 + 3);
    if (v198 >= v197 >> 1)
    {
      v196 = sub_20D8D423C(v197 > 1, v198 + 1, 1, v196);
    }

    (*(v193 + 8))(v375, v23);
    *(v196 + 2) = v198 + 1;
    v194(&v196[((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v198], v376, v23);
    v408 = v196;
  }

  v199 = (v1 + v191[12]);
  v201 = *v199;
  v200 = v199[1];
  v202 = v199[2];

  sub_20D8DC834(v203);
  if (v204)
  {
    v205 = v358;
    sub_20D971DF8();

    v206 = v407;
    v207 = *(v407 + 32);
    v208 = v386;
    v207(v386, v205, v23);
    (*(v206 + 16))(v387, v208, v23);
    v209 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v209 = sub_20D8D423C(0, *(v209 + 2) + 1, 1, v209);
    }

    v211 = *(v209 + 2);
    v210 = *(v209 + 3);
    if (v211 >= v210 >> 1)
    {
      v209 = sub_20D8D423C(v210 > 1, v211 + 1, 1, v209);
    }

    (*(v206 + 8))(v386, v23);
    *(v209 + 2) = v211 + 1;
    v207(&v209[((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v211], v387, v23);
    v408 = v209;
  }

  else
  {
  }

  v212 = (v1 + v191[13]);
  v214 = *v212;
  v213 = v212[1];
  v215 = v212[2];

  sub_20D8DC834(v216);
  if (v217)
  {
    v218 = v359;
    sub_20D971DF8();

    v219 = v407;
    v220 = *(v407 + 32);
    v221 = v388;
    v220(v388, v218, v23);
    (*(v219 + 16))(v389, v221, v23);
    v222 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v222 = sub_20D8D423C(0, *(v222 + 2) + 1, 1, v222);
    }

    v224 = *(v222 + 2);
    v223 = *(v222 + 3);
    if (v224 >= v223 >> 1)
    {
      v222 = sub_20D8D423C(v223 > 1, v224 + 1, 1, v222);
    }

    (*(v219 + 8))(v388, v23);
    *(v222 + 2) = v224 + 1;
    v220(&v222[((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v224], v389, v23);
    v408 = v222;
  }

  else
  {
  }

  v225 = (v1 + v191[14]);
  v227 = *v225;
  v226 = v225[1];
  v228 = v225[2];

  sub_20D8DC704(v229);
  if (v230)
  {
    v231 = v360;
    sub_20D971DF8();

    v232 = v407;
    v233 = *(v407 + 32);
    v234 = v390;
    v233(v390, v231, v23);
    (*(v232 + 16))(v391, v234, v23);
    v235 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_20D8D423C(0, v235[2] + 1, 1, v235);
    }

    v237 = v235[2];
    v236 = v235[3];
    if (v237 >= v236 >> 1)
    {
      v235 = sub_20D8D423C(v236 > 1, v237 + 1, 1, v235);
    }

    v238 = v407 + 8;
    (*(v407 + 8))(v390, v23);
    v235[2] = v237 + 1;
    v239 = v235 + ((*(v238 + 72) + 32) & ~*(v238 + 72));
    v240 = *(v238 + 64);
    v241 = v407;
    v233(&v239[v240 * v237], v391, v23);
    v408 = v235;
  }

  else
  {

    v241 = v407;
  }

  v242 = (v1 + v191[15]);
  v243 = *v242;
  v244 = v242[1];
  *(v242 + 16);

  v245 = v379;
  sub_20D971DF8();

  v404 = (v241 + 56);
  v405(v245, 0, 1, v23);

  if ((v406)(v245, 1, v23) == 1)
  {
    sub_20D7E3944(v245, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v246 = *(v241 + 32);
    v247 = v377;
    v246(v377, v245, v23);
    (*(v241 + 16))(v378, v247, v23);
    v248 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v248 = sub_20D8D423C(0, *(v248 + 2) + 1, 1, v248);
    }

    v250 = *(v248 + 2);
    v249 = *(v248 + 3);
    if (v250 >= v249 >> 1)
    {
      v248 = sub_20D8D423C(v249 > 1, v250 + 1, 1, v248);
    }

    (*(v241 + 8))(v377, v23);
    *(v248 + 2) = v250 + 1;
    v246(&v248[((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v250], v378, v23);
    v408 = v248;
  }

  v251 = (v1 + v191[16]);
  v253 = *v251;
  v252 = v251[1];
  v254 = v251[2];

  sub_20D8DC704(v255);
  if (v256)
  {
    v257 = v361;
    sub_20D971DF8();

    v258 = v407;
    v259 = *(v407 + 32);
    v260 = v392;
    v259(v392, v257, v23);
    (*(v258 + 16))(v393, v260, v23);
    v261 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v261 = sub_20D8D423C(0, *(v261 + 2) + 1, 1, v261);
    }

    v263 = *(v261 + 2);
    v262 = *(v261 + 3);
    if (v263 >= v262 >> 1)
    {
      v261 = sub_20D8D423C(v262 > 1, v263 + 1, 1, v261);
    }

    (*(v258 + 8))(v392, v23);
    *(v261 + 2) = v263 + 1;
    v259(&v261[((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v263], v393, v23);
    v408 = v261;
  }

  else
  {
  }

  v264 = (v1 + v191[17]);
  v266 = *v264;
  v265 = v264[1];
  v267 = v264[2];

  sub_20D8DC544(v268);
  if (v269)
  {
    v270 = v362;
    sub_20D971DF8();

    v271 = v407;
    v272 = *(v407 + 32);
    v273 = v394;
    v272(v394, v270, v23);
    (*(v271 + 16))(v395, v273, v23);
    v274 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_20D8D423C(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_20D8D423C(v275 > 1, v276 + 1, 1, v274);
    }

    (*(v271 + 8))(v394, v23);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v276], v395, v23);
    v408 = v274;
  }

  else
  {
  }

  v277 = (v1 + v191[18]);
  v279 = *v277;
  v278 = v277[1];
  v280 = v277[2];

  sub_20D8DC704(v281);
  if (v282)
  {
    v283 = v363;
    sub_20D971DF8();

    v284 = v407;
    v285 = *(v407 + 32);
    v286 = v396;
    v285(v396, v283, v23);
    (*(v284 + 16))(v397, v286, v23);
    v287 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v287 = sub_20D8D423C(0, *(v287 + 2) + 1, 1, v287);
    }

    v289 = *(v287 + 2);
    v288 = *(v287 + 3);
    if (v289 >= v288 >> 1)
    {
      v287 = sub_20D8D423C(v288 > 1, v289 + 1, 1, v287);
    }

    (*(v284 + 8))(v396, v23);
    *(v287 + 2) = v289 + 1;
    v285(&v287[((*(v284 + 80) + 32) & ~*(v284 + 80)) + *(v284 + 72) * v289], v397, v23);
    v408 = v287;
  }

  else
  {
  }

  v290 = (v1 + v191[19]);
  v292 = *v290;
  v291 = v290[1];
  v293 = v290[2];

  sub_20D8DB614(v293);
  if (v294)
  {
    v295 = v364;
    sub_20D971DF8();

    v296 = v407;
    v297 = *(v407 + 32);
    v298 = v398;
    v297(v398, v295, v23);
    (*(v296 + 16))(v399, v298, v23);
    v299 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v299 = sub_20D8D423C(0, *(v299 + 2) + 1, 1, v299);
    }

    v301 = *(v299 + 2);
    v300 = *(v299 + 3);
    if (v301 >= v300 >> 1)
    {
      v299 = sub_20D8D423C(v300 > 1, v301 + 1, 1, v299);
    }

    (*(v296 + 8))(v398, v23);
    *(v299 + 2) = v301 + 1;
    v297(&v299[((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * v301], v399, v23);
    v408 = v299;
  }

  else
  {
  }

  v302 = (v1 + v191[20]);
  v303 = *v302;
  v304 = v302[1];
  *(v302 + 16);

  v305 = v382;
  sub_20D971DF8();

  v405(v305, 0, 1, v23);

  if ((v406)(v305, 1, v23) == 1)
  {
    sub_20D7E3944(v305, qword_27C83A4A8, &qword_20D97B7A0);
  }

  else
  {
    v306 = v407;
    v307 = *(v407 + 32);
    v308 = v380;
    v307(v380, v305, v23);
    (*(v306 + 16))(v381, v308, v23);
    v309 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v309 = sub_20D8D423C(0, *(v309 + 2) + 1, 1, v309);
    }

    v311 = *(v309 + 2);
    v310 = *(v309 + 3);
    if (v311 >= v310 >> 1)
    {
      v309 = sub_20D8D423C(v310 > 1, v311 + 1, 1, v309);
    }

    (*(v306 + 8))(v380, v23);
    *(v309 + 2) = v311 + 1;
    v307(&v309[((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v311], v381, v23);
    v408 = v309;
  }

  v312 = (v1 + v191[21]);
  v314 = *v312;
  v313 = v312[1];
  v315 = *(v312 + 16);

  sub_20D8DBB00(v315);
  if (v316)
  {
    v317 = v365;
    sub_20D971DF8();

    v318 = v407;
    v319 = *(v407 + 32);
    v320 = v400;
    v319(v400, v317, v23);
    (*(v318 + 16))(v401, v320, v23);
    v321 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v321 = sub_20D8D423C(0, *(v321 + 2) + 1, 1, v321);
    }

    v323 = *(v321 + 2);
    v322 = *(v321 + 3);
    if (v323 >= v322 >> 1)
    {
      v321 = sub_20D8D423C(v322 > 1, v323 + 1, 1, v321);
    }

    (*(v318 + 8))(v400, v23);
    *(v321 + 2) = v323 + 1;
    v319(&v321[((*(v318 + 80) + 32) & ~*(v318 + 80)) + *(v318 + 72) * v323], v401, v23);
    v408 = v321;
  }

  else
  {
  }

  v324 = (v1 + v191[22]);
  v326 = *v324;
  v325 = v324[1];
  v327 = v324[2];

  sub_20D8DC704(v328);
  if (v329)
  {
    v330 = v366;
    sub_20D971DF8();

    v331 = v407;
    v332 = *(v407 + 32);
    v333 = v402;
    v332(v402, v330, v23);
    (*(v331 + 16))(v403, v333, v23);
    v334 = v408;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v334 = sub_20D8D423C(0, *(v334 + 2) + 1, 1, v334);
    }

    v336 = *(v334 + 2);
    v335 = *(v334 + 3);
    if (v336 >= v335 >> 1)
    {
      v334 = sub_20D8D423C(v335 > 1, v336 + 1, 1, v334);
    }

    (*(v331 + 8))(v402, v23);
    *(v334 + 2) = v336 + 1;
    v332(&v334[((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v336], v403, v23);
    v408 = v334;
  }

  else
  {
  }

  v337 = (v1 + v191[23]);
  if (!v337[3])
  {
    v342 = v383;
    v405(v383, 1, 1, v23);
    goto LABEL_140;
  }

  v339 = v337[1];
  v338 = v337[2];
  v340 = *v337;
  v341 = v337[3];

  v342 = v383;
  sub_20D971DF8();
  v405(v342, 0, 1, v23);

  if ((v406)(v342, 1, v23) == 1)
  {
LABEL_140:
    sub_20D7E3944(v342, qword_27C83A4A8, &qword_20D97B7A0);
    return v408;
  }

  v343 = v407;
  v344 = *(v407 + 32);
  v345 = v367;
  v344(v367, v342, v23);
  v346 = v352;
  (*(v343 + 16))(v352, v345, v23);
  v347 = v408;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v347 = sub_20D8D423C(0, *(v347 + 2) + 1, 1, v347);
  }

  v349 = *(v347 + 2);
  v348 = *(v347 + 3);
  if (v349 >= v348 >> 1)
  {
    v347 = sub_20D8D423C(v348 > 1, v349 + 1, 1, v347);
  }

  (*(v343 + 8))(v367, v23);
  *(v347 + 2) = v349 + 1;
  v344(&v347[((*(v343 + 80) + 32) & ~*(v343 + 80)) + *(v343 + 72) * v349], v346, v23);
  return v347;
}

unint64_t sub_20D8DAAE4()
{
  result = qword_27C83A4A0;
  if (!qword_27C83A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A4A0);
  }

  return result;
}

uint64_t sub_20D8DAB38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A390, &unk_20D97B4B0);
  v1 = *(sub_20D971E08() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20D97A6F0;
  v10 = *v0;
  sub_20D9757A8();
  sub_20D971DF8();

  v5 = v0[1];
  v6 = v0[2];
  sub_20D971DF8();
  v7 = v0[3];
  v8 = v0[4];
  sub_20D971DF8();
  return v4;
}

uint64_t sub_20D8DACB4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  sub_20D975158();
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D8DAD34()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x20F323A50](*v0);
  sub_20D975158();

  return sub_20D975158();
}

uint64_t sub_20D8DADA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20D975888();
  MEMORY[0x20F323A50](v1);
  sub_20D975158();
  sub_20D975158();
  return sub_20D9758A8();
}

uint64_t sub_20D8DAE20(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_20D9757C8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_20D9757C8();
}

unint64_t sub_20D8DAED4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20D8DB038(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_20D8DAED4(*a1);
  v5 = v4;
  if (v3 == sub_20D8DAED4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20D9757C8();
  }

  return v8 & 1;
}

uint64_t sub_20D8DB0C0()
{
  v1 = *v0;
  sub_20D975888();
  sub_20D8DAED4(v1);
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D8DB124()
{
  sub_20D8DAED4(*v0);
  sub_20D975158();
}

uint64_t sub_20D8DB178()
{
  v1 = *v0;
  sub_20D975888();
  sub_20D8DAED4(v1);
  sub_20D975158();

  return sub_20D9758A8();
}

uint64_t sub_20D8DB1D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20D8DDF6C();
  *a2 = result;
  return result;
}

unint64_t sub_20D8DB208@<X0>(unint64_t *a1@<X8>)
{
  result = sub_20D8DAED4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20D8DB248()
{
  *v0;
  *v0;
  *v0;
  sub_20D975158();
}

uint64_t sub_20D8DB34C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20D8DDFB8();
  *a2 = result;
  return result;
}

void sub_20D8DB37C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_20D8DB45C()
{
  *v0;
  *v0;
  *v0;
  sub_20D975158();
}

uint64_t sub_20D8DB53C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20D8DE004();
  *a2 = result;
  return result;
}

void sub_20D8DB56C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE700000000000000;
  v6 = 0x5654656C707041;
  v7 = 0xE700000000000000;
  v8 = 0x646F50656D6F48;
  if (v2 != 4)
  {
    v8 = 6512973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x6863746157;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_20D8DB614(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_20D8D4130(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_20D8D4130((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_20D8D4130((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
          if ((v1 & 8) == 0)
          {
LABEL_16:
            if ((v1 & 0x10) == 0)
            {
LABEL_33:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
              sub_20D8767E0();
              v1 = sub_20D974F98();

              return v1;
            }

LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
            }

            v16 = *(v2 + 2);
            v15 = *(v2 + 3);
            if (v16 >= v15 >> 1)
            {
              v2 = sub_20D8D4130((v15 > 1), v16 + 1, 1, v2);
            }

            *(v2 + 2) = v16 + 1;
            v17 = &v2[16 * v16];
            *(v17 + 4) = 0x79627261654ELL;
            *(v17 + 5) = 0xE600000000000000;
            goto LABEL_33;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
        }

        v13 = *(v2 + 2);
        v12 = *(v2 + 3);
        if (v13 >= v12 >> 1)
        {
          v2 = sub_20D8D4130((v12 > 1), v13 + 1, 1, v2);
        }

        *(v2 + 2) = v13 + 1;
        v14 = &v2[16 * v13];
        *(v14 + 4) = 0x616C506572616853;
        *(v14 + 5) = 0xE900000000000079;
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_20D8D4130((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

BOOL sub_20D8DB98C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20D8DB9BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20D8DB9E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_20D8DBAC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_20D8DDF34(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_20D8DBB00(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_20D9757C8();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_20D8DBCD0()
{
  *v0;
  sub_20D975158();
}

uint64_t sub_20D8DBDD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_20D8DE050();
  *a2 = result;
  return result;
}

void sub_20D8DBE04(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000020D981670;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000020D981690;
    }

    v5 = 0x800000020D981630;
    if (v2 != 3)
    {
      v5 = 0x800000020D981650;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_20D8DBED4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_20D8DBF3C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_20D971DF8();

    v3 = 0;
  }

  v4 = sub_20D971E08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_20D8DC130@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_20D971DF8();

    v3 = 0;
  }

  v4 = sub_20D971E08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_20D8DC288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_20D972628();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB8, &unk_20D9771F0);
  sub_20D81A220(v2 + *(v13 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20D7E3944(v7, &qword_27C8389E8, &qword_20D9768D0);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v16 = sub_20D975078();
    [v15 setDateFormat_];

    [v15 setDoesRelativeDateFormatting_];
    v17 = sub_20D972528();
    v18 = [v15 stringFromDate_];

    sub_20D975098();
    (*(v9 + 8))(v12, v8);
    v19 = *v2;
    v20 = v2[1];
    sub_20D971DF8();

    v14 = 0;
  }

  v21 = sub_20D971E08();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t sub_20D8DC544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x277D84F90];
  v3 = (a1 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 == 4;
    v7 = 0x646F50656D6F48;
    if (v5 != 4)
    {
      v7 = 6512973;
    }

    v8 = 0xE300000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    if (v4 == 3)
    {
      v7 = 0x5654656C707041;
      v8 = 0xE700000000000000;
    }

    v9 = 1684099177;
    if (v4 != 1)
    {
      v9 = 0x6863746157;
    }

    v10 = 0xE400000000000000;
    if (v4 != 1)
    {
      v10 = 0xE500000000000000;
    }

    if (!v4)
    {
      v9 = 0x656E6F685069;
      v10 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_20D8D4130(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_20D8D4130((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v16 = sub_20D974F98();

  return v16;
}

uint64_t sub_20D8DC704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20D8D4130(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_20D8D4130((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v9 = sub_20D974F98();

  return v9;
}

uint64_t sub_20D8DC834(uint64_t a1)
{
  v24 = sub_20D9721C8();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_20D9721A8();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_20D8D4130(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_20D8D4130((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v20 = sub_20D974F98();

  return v20;
}

uint64_t sub_20D8DCA48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_20D9757A8();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_20D8D4130(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_20D8D4130((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  v11 = sub_20D974F98();

  return v11;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27C83A530;
  if (!qword_27C83A530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D8DCC04(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D8DCC84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_20D8DCE08(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_20D8DD098()
{
  sub_20D8DD4C0(319, &qword_27C83A540, &unk_27C83CA30, &qword_20D976870, sub_20D8DD3F4);
  if (v0 <= 0x3F)
  {
    sub_20D8DD470();
    if (v1 <= 0x3F)
    {
      sub_20D8DD4C0(319, &qword_27C83A558, &qword_27C83A560, &qword_20D97B7F0, sub_20D8DD530);
      if (v2 <= 0x3F)
      {
        sub_20D8DD4C0(319, &qword_27C83A570, &qword_27C83A578, &qword_20D97B7F8, sub_20D8DD5AC);
        if (v3 <= 0x3F)
        {
          sub_20D8DD4C0(319, &qword_27C83A588, &qword_27C83A590, &qword_20D97B800, sub_20D8DD628);
          if (v4 <= 0x3F)
          {
            sub_20D8DD4C0(319, &qword_27C83A5A0, &qword_27C8389E8, &qword_20D9768D0, sub_20D8DD6A4);
            if (v5 <= 0x3F)
            {
              sub_20D8DD4C0(319, &qword_27C83A5B0, &qword_27C83A5B8, &qword_20D97B808, sub_20D8DD720);
              if (v6 <= 0x3F)
              {
                sub_20D8DD4C0(319, &qword_27C83A5C8, &qword_27C8398E8, &unk_20D97ABF0, sub_20D8DD79C);
                if (v7 <= 0x3F)
                {
                  sub_20D8DD894(319, &qword_27C83A5D8);
                  if (v8 <= 0x3F)
                  {
                    sub_20D8DD4C0(319, &qword_27C83A5E0, &qword_27C83A5E8, &qword_20D97B810, sub_20D8DD818);
                    if (v9 <= 0x3F)
                    {
                      sub_20D8DD894(319, &qword_27C83A5F8);
                      if (v10 <= 0x3F)
                      {
                        sub_20D8DD894(319, &qword_27C83A600);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_20D8DD3F4()
{
  result = qword_27C83A548;
  if (!qword_27C83A548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C83CA30, &qword_20D976870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A548);
  }

  return result;
}

void sub_20D8DD470()
{
  if (!qword_27C83A550)
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_27C83A550);
    }
  }
}

void sub_20D8DD4C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_20D8DD530()
{
  result = qword_27C83A568;
  if (!qword_27C83A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A560, &qword_20D97B7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A568);
  }

  return result;
}

unint64_t sub_20D8DD5AC()
{
  result = qword_27C83A580;
  if (!qword_27C83A580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A578, &qword_20D97B7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A580);
  }

  return result;
}

unint64_t sub_20D8DD628()
{
  result = qword_27C83A598;
  if (!qword_27C83A598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A590, &qword_20D97B800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A598);
  }

  return result;
}

unint64_t sub_20D8DD6A4()
{
  result = qword_27C83A5A8;
  if (!qword_27C83A5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8389E8, &qword_20D9768D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5A8);
  }

  return result;
}

unint64_t sub_20D8DD720()
{
  result = qword_27C83A5C0;
  if (!qword_27C83A5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A5B8, &qword_20D97B808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5C0);
  }

  return result;
}

unint64_t sub_20D8DD79C()
{
  result = qword_27C83A5D0;
  if (!qword_27C83A5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8398E8, &unk_20D97ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5D0);
  }

  return result;
}

unint64_t sub_20D8DD818()
{
  result = qword_27C83A5F0;
  if (!qword_27C83A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A5E8, &qword_20D97B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A5F0);
  }

  return result;
}

void sub_20D8DD894(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RatePlanType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatePlanType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20D8DDBC8()
{
  result = qword_27C83A608;
  if (!qword_27C83A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A608);
  }

  return result;
}

unint64_t sub_20D8DDC20()
{
  result = qword_27C83A610;
  if (!qword_27C83A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A610);
  }

  return result;
}

unint64_t sub_20D8DDC78()
{
  result = qword_27C83A618;
  if (!qword_27C83A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A618);
  }

  return result;
}

unint64_t sub_20D8DDCD0()
{
  result = qword_27C83A620;
  if (!qword_27C83A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A620);
  }

  return result;
}

unint64_t sub_20D8DDD24()
{
  result = qword_27C83A628;
  if (!qword_27C83A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A628);
  }

  return result;
}

unint64_t sub_20D8DDD7C()
{
  result = qword_27C83A630;
  if (!qword_27C83A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A630);
  }

  return result;
}

unint64_t sub_20D8DDDD4()
{
  result = qword_27C83A638;
  if (!qword_27C83A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A638);
  }

  return result;
}

unint64_t sub_20D8DDE2C()
{
  result = qword_27C83A640;
  if (!qword_27C83A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A640);
  }

  return result;
}

unint64_t sub_20D8DDE84()
{
  result = qword_27C83A648;
  if (!qword_27C83A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A648);
  }

  return result;
}

unint64_t sub_20D8DDEE0()
{
  result = qword_27C83A650;
  if (!qword_27C83A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A650);
  }

  return result;
}

uint64_t sub_20D8DDF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_20D8DDF6C()
{
  v0 = sub_20D975788();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20D8DDFB8()
{
  v0 = sub_20D975788();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20D8DE004()
{
  v0 = sub_20D975788();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20D8DE050()
{
  v0 = sub_20D975788();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20D8DE0E4()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC30 = result;
  *algn_28112AC38 = v1;
  return result;
}

uint64_t sub_20D8DE180()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC40 = result;
  *algn_28112AC48 = v1;
  return result;
}

uint64_t sub_20D8DE22C()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC68 = result;
  unk_28112AC70 = v1;
  return result;
}

uint64_t sub_20D8DE2D4()
{
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  result = sub_20D971FF8();
  qword_28112AC78 = result;
  unk_28112AC80 = v1;
  return result;
}

double sub_20D8DE378()
{
  v1 = sub_20D972AF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277D075B0], v1);
  sub_20D865490(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  if (v18[2] == v18[0] && v18[3] == v18[1])
  {
    (*(v2 + 8))(v5, v1);

LABEL_5:
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
    v8 = (v0 + *(v7 + 28));
    v9 = v8[1];
    if (!v9)
    {
      return *v8;
    }

    result = *(v0 + *(v7 + 24));
    if ((*v8 - result) / v9 >= 0.0)
    {
      return *v8;
    }

    return result;
  }

  v6 = sub_20D9757C8();
  (*(v2 + 8))(v5, v1);

  if (v6)
  {
    goto LABEL_5;
  }

  v11 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v12 = v0 + *(v11 + 28);
  v13 = *(v12 + 8);
  result = 0.0;
  if (v13)
  {
    v14 = *v12;
    v15 = v0 + *(v11 + 24);
    v16 = *v15;
    result = (v14 - *v15) / v13;
    if (result < 0.0)
    {
      v17 = *(v15 + 8);
      result = 0.0;
      if (v17)
      {
        return (v16 - v14) / v17;
      }
    }
  }

  return result;
}

double sub_20D8DE5D4()
{
  v1 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  if (!v5)
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(v0 + *(v7 + 20) + v3 + 8);
    v6 = 0.0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0.0;
    return v6 - v10;
  }

  v6 = (*v4 - *(v0 + *(v1 + 28))) / v5;
  v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v8 = *(v4 + *(v7 + 20) + 8);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = v7;
  type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v10 = (*(v0 + *(v9 + 20) + v3) - *(v0 + *(v9 + 20) + *(v2 + 28))) / v8;
  return v6 - v10;
}

double sub_20D8DE6AC()
{
  v1 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v2 = v1;
  v3 = *(v1 + 28);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  if (!v5)
  {
    v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v8 = *(v0 + *(v7 + 20) + v3 + 8);
    v6 = 0.0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0.0;
    return v6 - v10;
  }

  v6 = (*v4 - *(v0 + *(v1 + 24))) / v5;
  v7 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v8 = *(v4 + *(v7 + 20) + 8);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = v7;
  type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v10 = (*(v0 + *(v9 + 20) + v3) - *(v0 + *(v9 + 20) + *(v2 + 24))) / v8;
  return v6 - v10;
}

uint64_t sub_20D8DE784()
{
  v1 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  v2 = v1;
  v3 = *(v1 + 28);
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  if (v5)
  {
    v6 = *v4;
    v7 = *(v0 + *(v1 + 24));
    v8 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
    v9 = *(v4 + *(v8 + 20) + 8);
    if (v9)
    {
      v10 = v8;
      v11 = (v6 - v7) / v5;
      goto LABEL_6;
    }

    return 0;
  }

  v12 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v9 = *(v0 + *(v12 + 20) + v3 + 8);
  if (!v9)
  {
    return 0;
  }

  v10 = v12;
  v11 = 0.0;
LABEL_6:
  result = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v14 = (*(v0 + *(v10 + 20) + v3) - *(v0 + *(v10 + 20) + *(v2 + 24))) / v9;
  if (v14 == 0.0)
  {
    return 0;
  }

  v15 = rint((v11 / v14 + -1.0) * 100.0);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v15 <= -100)
  {
    return -100;
  }

  else
  {
    return v15;
  }
}

uint64_t DynamicEnergyUsagesCalculations.init(currentScrolledDate:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v7 = *(v6 - 8);
  v87 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  v85 = sub_20D972628();
  v83 = *(v85 - 8);
  v14 = *(v83 + 64);
  v15 = MEMORY[0x28223BE20](v85);
  v82 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - v19;
  v21 = sub_20D972E88();
  v84 = v21;
  v86 = *(v21 - 8);
  v22 = v86;
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for HistoricalUsageSnapshot();
  v26 = *(v80 + 48);
  v27 = *(v22 + 16);
  v89 = a2;
  v27(v25, a2 + v26, v21);
  sub_20D8DEDE8(a1, a2, v20);
  v79 = v20;
  sub_20D972DF8();
  v81 = v13;
  v28 = sub_20D972E78();
  v29 = sub_20D972D18();
  v31 = v30;
  v32 = v29;
  v33 = sub_20D972D28();
  v35 = v34;
  v36 = v33;
  sub_20D8DF438(v13, a3);
  v37 = sub_20D972D58();
  v38 = sub_20D972DC8();
  v39 = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(0);
  *(a3 + v39[5]) = v28;
  v40 = (a3 + v39[6]);
  *v40 = v31;
  v40[1] = v32;
  v41 = (a3 + v39[7]);
  *v41 = v35;
  v41[1] = v36;
  *(a3 + v39[8]) = v37;
  *(a3 + v39[9]) = v38;
  v77 = a3;
  sub_20D972D48();
  sub_20D972DF8();
  v78 = v11;
  v42 = sub_20D972E78();
  v43 = sub_20D972D18();
  v45 = v44;
  v46 = v43;
  v47 = sub_20D972D28();
  v49 = v48;
  v50 = v47;
  v76 = type metadata accessor for DynamicEnergyUsagesCalculations(0);
  v51 = a3 + *(v76 + 20);
  sub_20D8DF438(v11, v51);
  v52 = sub_20D972D58();
  v53 = sub_20D972DC8();
  *(v51 + v39[5]) = v42;
  v54 = (v51 + v39[6]);
  *v54 = v45;
  v54[1] = v46;
  v55 = (v51 + v39[7]);
  *v55 = v49;
  v55[1] = v50;
  *(v51 + v39[8]) = v52;
  *(v51 + v39[9]) = v53;
  v56 = v80;
  v57 = v89;
  v58 = v89 + *(v80 + 40);
  v59 = v82;
  sub_20D971D48();
  LOBYTE(v52) = sub_20D972538();
  v60 = *(v83 + 8);
  v61 = v85;
  v60(v59, v85);
  v62 = v76;
  v63 = v52 & 1;
  v64 = v77;
  *(v77 + *(v76 + 28)) = v63;
  v65 = v57 + *(v56 + 36);
  sub_20D971D78();
  v66 = v88;
  LOBYTE(v65) = sub_20D972548();
  v67 = v59;
  v68 = v61;
  v60(v67, v61);
  v69 = v64;
  *(v64 + *(v62 + 32)) = v65 & 1;
  v70 = *(v87 + 44);
  v71 = *(v56 + 56);
  v72 = v81;
  v73 = v89;
  LOBYTE(v64) = sub_20D972538();
  sub_20D7FEF04(v73);
  v60(v90, v68);
  sub_20D8DF4E8(v78);
  v60(v66, v68);
  sub_20D8DF4E8(v72);
  v60(v79, v68);
  result = (*(v86 + 8))(v25, v84);
  *(v69 + *(v62 + 24)) = v64 & 1;
  return result;
}