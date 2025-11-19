void sub_25C815754(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void *a5, void *a6, char a7)
{
  v117 = a4;
  v118 = a6;
  v116 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v114 = *(v121 - 1);
  v9 = *(v114 + 64);
  v10 = MEMORY[0x28223BE20](v121);
  v120 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v96 - v13;
  MEMORY[0x28223BE20](v12);
  v119 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v123 = *(v15 - 8);
  v124 = v15;
  v16 = *(v123 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v122 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v96 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v96 - v22;
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v24 = qword_281559838;
  v25 = MEMORY[0x277D84F90];
  sub_25C82E00C();

  v26 = [objc_allocWithZone(ODCurareReportFillerReport) init];
  if (v26)
  {
    v27 = v26;
    v28 = sub_25C82E07C();
    [v27 setBundleIdentifier_];

    v29 = [objc_opt_self() sharedInstance];
    if (!v29)
    {
      sub_25C82E28C();
      v32 = qword_281559838;
      sub_25C82E00C();

      goto LABEL_9;
    }

    v30 = v29;
    if (a7)
    {
      sub_25C82E28C();
      v31 = qword_281559838;
      sub_25C82E00C();

      [v27 setFrameworkFailure_];
      [v30 logMessage_];
LABEL_7:
      sub_25C82E25C();
      v32 = qword_281559838;
      sub_25C82E00C();

LABEL_9:
      return;
    }

    v33 = *__swift_project_boxed_opaque_existential_1(a5, a5[3]);
    v127 = v25;
    v34 = objc_autoreleasePoolPush();
    v35 = v125;
    sub_25C807AF8(v33, &v127, &v126);
    if (!v35)
    {
      objc_autoreleasePoolPop(v34);
      v36 = v127;
      v37 = v118;
      v38 = *__swift_project_boxed_opaque_existential_1(v118, v118[3]);
      v39 = sub_25C8131CC(1);
      v40 = *__swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v41 = sub_25C8131CC(0);
      v42 = *__swift_project_boxed_opaque_existential_1(v117, *(v117 + 3));
      v99 = sub_25C81EF2C();
      v97 = v41;
      v98 = v39;
      v96 = v30;
      v125 = 0;
      v117 = *(v36 + 16);
      v118 = v27;
      v107 = v36;
      if (v117)
      {
        v43 = 0;
        do
        {
          if (v43 >= *(v36 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          sub_25C7E92DC(v36 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v43++, v23, &qword_27FC16090, qword_25C8304A0);
          v44 = v124;
          v45 = *(v124 + 48);
          v46 = *&v23[v45];
          v47 = sub_25C82DEAC();
          v48 = *(v47 - 8);
          (*(v48 + 32))(v21, v23, v47);
          *&v21[v45] = v46;
          v49 = v122;
          sub_25C7E92DC(v21, v122, &qword_27FC16090, qword_25C8304A0);
          v50 = *(v49 + *(v44 + 48));
          v51 = v118;
          [v51 addMetadataList_];

          v36 = v107;
          sub_25C7E97F4(v21, &qword_27FC16090, qword_25C8304A0);
          (*(v48 + 8))(v49, v47);
        }

        while (v117 != v43);
      }

      v43 = v98;
      if (v98 >> 62)
      {
        goto LABEL_29;
      }

      for (i = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
      {
        v53 = 0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x25F88F6D0](v53, v43);
          }

          else
          {
            if (v53 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v54 = *(v43 + 8 * v53 + 32);
          }

          v55 = v54;
          v56 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          [v118 addModelEvaluationSummaries_];

          ++v53;
          if (v56 == i)
          {
            goto LABEL_30;
          }
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        ;
      }

LABEL_30:
      v57 = v97;
      if (v97 >> 62)
      {
        goto LABEL_42;
      }

      for (j = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_25C82E43C())
      {
        v59 = 0;
        while (1)
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x25F88F6D0](v59, v57);
          }

          else
          {
            if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v60 = *(v57 + 8 * v59 + 32);
          }

          v61 = v60;
          v62 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          [v118 addModelEvaluationSummaries_];

          ++v59;
          if (v62 == j)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        ;
      }

LABEL_43:
      v63 = v99[2];
      v64 = v115;
      if (v63)
      {
        v106 = v121[12];
        v105 = v121[16];
        v104 = v121[20];
        v103 = (v119 + v121[24]);
        v102 = (v119 + v121[28]);
        v65 = v99 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
        v101 = *(v114 + 72);
        v100 = v120 + 8;
        do
        {
          v123 = v65;
          v124 = v63;
          v66 = v119;
          sub_25C7E92DC(v65, v119, &qword_27FC16080, &qword_25C830490);
          v117 = *(v66 + v105);
          v115 = *(v66 + v104);
          v67 = *v103;
          v113 = v103[1];
          v114 = v67;
          v68 = *v102;
          v111 = v102[1];
          v112 = v68;
          v69 = v121;
          v70 = v121[16];
          v109 = v121[12];
          v110 = v70;
          v71 = (v64 + v121[24]);
          v72 = (v64 + v121[28]);
          v108 = v121[20];
          v73 = sub_25C82DFBC();
          v74 = *(v73 - 8);
          v75 = *(v74 + 32);
          v122 = v73;
          v75(v64, v66);
          v76 = sub_25C82DEAC();
          v77 = *(v76 - 8);
          (*(v77 + 32))(v64 + v109, v66 + v106, v76);
          *(v64 + v110) = v117;
          v78 = v114;
          *(v64 + v108) = v115;
          v80 = v112;
          v79 = v113;
          *v71 = v78;
          v71[1] = v79;
          v81 = v111;
          *v72 = v80;
          v72[1] = v81;
          v82 = v120;
          sub_25C7E92DC(v64, v120, &qword_27FC16080, &qword_25C830490);
          v117 = v69[12];
          v83 = *(v82 + v69[16]);

          v84 = v100;
          v85 = *(v100 + v69[24]);

          v86 = *(v84 + v69[28]);

          if (v83)
          {
            (*(v77 + 8))(&v117[v82], v76);
            (*(v74 + 8))(v82, v122);
            [v118 addModelInformationList_];

            sub_25C7E97F4(v64, &qword_27FC16080, &qword_25C830490);
          }

          else
          {
            sub_25C7E97F4(v64, &qword_27FC16080, &qword_25C830490);
            (*(v77 + 8))(&v117[v82], v76);
            (*(v74 + 8))(v82, v122);
          }

          v65 = v123 + v101;
          v63 = v124 - 1;
        }

        while (v124 != 1);
      }

      v87 = v116;
      if (v116)
      {
        if (v116 >> 62)
        {
          goto LABEL_62;
        }

        for (k = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_25C82E43C())
        {
          v89 = 0;
          while (1)
          {
            if ((v87 & 0xC000000000000001) != 0)
            {
              v90 = MEMORY[0x25F88F6D0](v89, v87);
            }

            else
            {
              if (v89 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v90 = *(v87 + 8 * v89 + 32);
            }

            v91 = v90;
            v92 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              break;
            }

            [v118 addPersonalizationEvaluationSummaries_];

            ++v89;
            if (v92 == k)
            {
              goto LABEL_63;
            }
          }

          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          ;
        }
      }

LABEL_63:
      sub_25C82E25C();
      v93 = qword_281559838;
      sub_25C82E00C();

      v27 = v118;
      v94 = v118;
      v30 = v96;
      v95 = v96;

      [v95 logMessage_];

      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C8163D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v333 = a3;
  v322 = a2;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162D8, &qword_25C830BD8);
  v12 = *(*(v330 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v330);
  v341 = &v320 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v326 = &v320 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v334 = &v320 - v18;
  MEMORY[0x28223BE20](v17);
  v325 = &v320 - v19;
  v351 = sub_25C82DEAC();
  v20 = *(v351 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v351);
  v348 = &v320 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v336 = &v320 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E0, &qword_25C830BE0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v342 = &v320 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v320 - v29;
  v329 = sub_25C803FE0();
  type metadata accessor for ODCurareEvaluationResultStore();
  inited = swift_initStackObject();
  *&v365 = a7;
  *(&v365 + 1) = a8;

  MEMORY[0x25F88F460](0x525F524543444F2DLL, 0xEE0073746C757365);
  v32 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v33 = sub_25C82E07C();

  v34 = [v32 init_];

  v323 = inited;
  v324 = v34;
  *(inited + 16) = v34;
  v35 = *(a1 + 64);
  v328 = a1 + 64;
  v36 = 1 << *(a1 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & v35;
  v327 = (v36 + 63) >> 6;
  v335 = v20 + 16;
  v349 = (v20 + 32);
  v339 = "o nil. Throwing error.";
  v352 = 0x800000025C833EB0;
  v353 = 0x800000025C833E90;
  v343 = "evaluateWithModel:]";
  v337 = v20;
  v331 = (v20 + 8);
  v332 = "numberOfSamplesPositive";
  v320 = a6;
  v321 = a6;
  v338 = a1;

  v39 = 0;
  v40 = MEMORY[0x277D84F98];
  v350 = MEMORY[0x277D84F98];
  v340 = v30;
LABEL_6:
  v347 = v40;
  if (v38)
  {
    v59 = v39;
LABEL_15:
    v346 = (v38 - 1) & v38;
    v62 = __clz(__rbit64(v38)) | (v59 << 6);
    v64 = v337;
    v63 = v338;
    v65 = v336;
    v66 = v351;
    (*(v337 + 16))(v336, *(v338 + 48) + *(v337 + 72) * v62, v351);
    v67 = *(*(v63 + 56) + 8 * v62);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E8, &qword_25C830BE8);
    v69 = *(v68 + 48);
    v70 = *(v64 + 32);
    v61 = v342;
    v70(v342, v65, v66);
    *(v61 + v69) = v67;
    (*(*(v68 - 8) + 56))(v61, 0, 1, v68);

    v345 = v59;
  }

  else
  {
    if (v327 <= v39 + 1)
    {
      v60 = v39 + 1;
    }

    else
    {
      v60 = v327;
    }

    v61 = v342;
    while (1)
    {
      v59 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_193;
      }

      if (v59 >= v327)
      {
        break;
      }

      v38 = *(v328 + 8 * v59);
      ++v39;
      if (v38)
      {
        goto LABEL_15;
      }
    }

    v345 = v60 - 1;
    v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E8, &qword_25C830BE8);
    (*(*(v205 - 8) + 56))(v61, 1, 1, v205);
    v346 = 0;
  }

  v71 = v340;
  sub_25C8186DC(v61, v340);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E8, &qword_25C830BE8);
  if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
  {
LABEL_111:

    v206 = v347;
    if (*(v347 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_25C830640;
      *(v207 + 32) = sub_25C818414(v206);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
      v208 = sub_25C82E1BC();

      v209 = sub_25C82DF4C();
      v210 = v324;
      [v324 saveDictionaries:v208 date:v209 eventIdentifier:0];

      sub_25C827FD8(v210, v320);
    }

    *&v365 = MEMORY[0x277D84F98];
    v211 = objc_autoreleasePoolPush();
    sub_25C80EA2C(v323, &v365);
    objc_autoreleasePoolPop(v211);
    v212 = v365 + 64;
    v213 = 1 << *(v365 + 32);
    if (v213 < 64)
    {
      v214 = ~(-1 << v213);
    }

    else
    {
      v214 = -1;
    }

    v215 = v214 & *(v365 + 64);
    v216 = (v213 + 63) >> 6;
    v357 = v365;

    v217 = 0;
    v355 = v216;
    v356 = v212;
LABEL_118:
    if (v215)
    {
      v218 = v217;
LABEL_123:
      v358 = v218;
      v359 = (v215 - 1) & v215;
      v219 = __clz(__rbit64(v215)) | (v218 << 6);
      v220 = v357;
      v221 = *(v357 + 48);
      v222 = sub_25C82DFBC();
      v223 = *(v222 - 8);
      v224 = v325;
      (*(v223 + 16))(v325, v221 + *(v223 + 72) * v219, v222);
      v225 = *(*(v220 + 56) + 8 * v219);
      v226 = v330;
      v227 = *(v330 + 48);
      v228 = v334;
      (*(v223 + 32))(v334, v224, v222);
      *(v228 + v227) = v225;
      v229 = v326;
      sub_25C7E92DC(v228, v326, &qword_27FC162D8, &qword_25C830BD8);
      v230 = *(v229 + *(v226 + 48));
      v231 = *(v223 + 8);

      v362 = v223 + 8;
      v363 = v222;
      v361 = v231;
      v231(v229, v222);
      v232 = v230 + 64;
      v233 = 1 << *(v230 + 32);
      if (v233 < 64)
      {
        v234 = ~(-1 << v233);
      }

      else
      {
        v234 = -1;
      }

      v235 = v234 & *(v230 + 64);
      v236 = (v233 + 63) >> 6;
      v364 = v230;

      v237 = 0;
      *&v360 = v236;
      if (!v235)
      {
        goto LABEL_127;
      }

      while (1)
      {
LABEL_131:
        v239 = (*(v364 + 48) + ((v237 << 10) | (16 * __clz(__rbit64(v235)))));
        v241 = *v239;
        v240 = v239[1];
        v242 = v350;
        v243 = *(v350 + 16);

        if (!v243 || (, sub_25C8139BC(v241, v240), v245 = v244, , (v245 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v365 = v242;
          v247 = sub_25C8139BC(v241, v240);
          v249 = *(v242 + 16);
          v250 = (v248 & 1) == 0;
          v106 = __OFADD__(v249, v250);
          v251 = v249 + v250;
          if (v106)
          {
            goto LABEL_201;
          }

          v252 = v248;
          if (*(v242 + 24) >= v251)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v277 = v247;
              sub_25C804BC4();
              v247 = v277;
            }
          }

          else
          {
            sub_25C7FBF24(v251, isUniquelyReferenced_nonNull_native);
            v247 = sub_25C8139BC(v241, v240);
            if ((v252 & 1) != (v253 & 1))
            {
              goto LABEL_208;
            }
          }

          v254 = v365;
          v350 = v365;
          if (v252)
          {
            v255 = *(v365 + 56);
            v256 = *(v255 + 8 * v247);
            *(v255 + 8 * v247) = MEMORY[0x277D84F90];
          }

          else
          {
            *(v365 + 8 * (v247 >> 6) + 64) |= 1 << v247;
            v257 = (v254[6] + 16 * v247);
            *v257 = v241;
            v257[1] = v240;
            *(v254[7] + 8 * v247) = MEMORY[0x277D84F90];
            v258 = v254[2];
            v106 = __OFADD__(v258, 1);
            v259 = v258 + 1;
            if (v106)
            {
              goto LABEL_202;
            }

            v254[2] = v259;
          }
        }

        v260 = v341;
        sub_25C7E92DC(v334, v341, &qword_27FC162D8, &qword_25C830BD8);
        v261 = *(v260 + *(v330 + 48));
        if (!*(v261 + 16))
        {
          goto LABEL_207;
        }

        v262 = sub_25C8139BC(v241, v240);
        if ((v263 & 1) == 0)
        {
          goto LABEL_207;
        }

        sub_25C7E9854(*(v261 + 56) + 32 * v262, &v365);

        v264 = v350;
        v265 = swift_isUniquelyReferenced_nonNull_native();
        *&v368[0] = v264;
        v267 = sub_25C8139BC(v241, v240);
        v268 = *(v264 + 16);
        v269 = (v266 & 1) == 0;
        v270 = v268 + v269;
        if (__OFADD__(v268, v269))
        {
          goto LABEL_199;
        }

        v271 = v266;
        if (*(v264 + 24) >= v270)
        {
          if (v265)
          {
            if ((v266 & 1) == 0)
            {
              goto LABEL_200;
            }
          }

          else
          {
            sub_25C804BC4();
            if ((v271 & 1) == 0)
            {
              goto LABEL_200;
            }
          }
        }

        else
        {
          sub_25C7FBF24(v270, v265);
          v272 = sub_25C8139BC(v241, v240);
          if ((v271 & 1) != (v273 & 1))
          {
            goto LABEL_208;
          }

          v267 = v272;
          if ((v271 & 1) == 0)
          {
            goto LABEL_200;
          }
        }

        v274 = *(*(*&v368[0] + 56) + 8 * v267);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v274 = sub_25C7E7444(0, *(v274 + 2) + 1, 1, v274);
        }

        v276 = *(v274 + 2);
        v275 = *(v274 + 3);
        if (v276 >= v275 >> 1)
        {
          v274 = sub_25C7E7444((v275 > 1), v276 + 1, 1, v274);
        }

        v235 &= v235 - 1;
        *(v274 + 2) = v276 + 1;
        sub_25C801F34(&v365, &v274[32 * v276 + 32]);

        *(*(*&v368[0] + 56) + 8 * v267) = v274;

        v350 = *&v368[0];
        v361(v341, v363);
        v236 = v360;
        if (!v235)
        {
LABEL_127:
          while (1)
          {
            v238 = v237 + 1;
            if (__OFADD__(v237, 1))
            {
              goto LABEL_194;
            }

            if (v238 >= v236)
            {
              sub_25C7E97F4(v334, &qword_27FC162D8, &qword_25C830BD8);

              v217 = v358;
              v215 = v359;
              v216 = v355;
              v212 = v356;
              goto LABEL_118;
            }

            v235 = *(v232 + 8 * v238);
            ++v237;
            if (v235)
            {
              v237 = v238;
              goto LABEL_131;
            }
          }
        }
      }
    }

    while (1)
    {
      v218 = v217 + 1;
      if (__OFADD__(v217, 1))
      {
        break;
      }

      if (v218 >= v216)
      {

        v278 = v329;
        if (v329 >> 62)
        {
          goto LABEL_203;
        }

        v279 = *((v329 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v279)
        {
          goto LABEL_204;
        }

        goto LABEL_162;
      }

      v215 = *(v212 + 8 * v218);
      ++v217;
      if (v215)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
    v73 = *(v71 + *(v72 + 48));
    (*v349)(v348, v71, v351);
    if (!*(v73 + 16))
    {
      goto LABEL_196;
    }

    v344 = 0xD000000000000011;
    v74 = sub_25C8139BC(0xD000000000000011, v339 | 0x8000000000000000);
    if (v75)
    {
      sub_25C7E9854(*(v73 + 56) + 32 * v74, v368);

      sub_25C801F34(v368, &v365);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161D8, &unk_25C8307B8);
      swift_dynamicCast();
      v76 = v367;
      v356 = *(v367 + 16);
      if (!v356)
      {

        v78 = MEMORY[0x277D84F98];
LABEL_88:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16280, &unk_25C8308F8);
        v160 = sub_25C82E46C();
        v161 = v160;
        v162 = 0;
        v163 = *(v78 + 64);
        v355 = v78 + 64;
        v164 = 1 << *(v78 + 32);
        if (v164 < 64)
        {
          v165 = ~(-1 << v164);
        }

        else
        {
          v165 = -1;
        }

        v166 = v165 & v163;
        v167 = (v164 + 63) >> 6;
        v358 = v160 + 64;
        v359 = v160;
        v356 = v167;
        v357 = v78;
        if (!v166)
        {
LABEL_93:
          v169 = v162;
          while (1)
          {
            v162 = v169 + 1;
            if (__OFADD__(v169, 1))
            {
              goto LABEL_185;
            }

            if (v162 >= v167)
            {
              *(&v366[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16308, &qword_25C830C08);
              *&v365 = v161;
              sub_25C801F34(&v365, v368);
              v41 = MEMORY[0x277D84F98];
              v42 = swift_isUniquelyReferenced_nonNull_native();
              v367 = v41;
              sub_25C7FD1C0(v368, v344, v332 | 0x8000000000000000, v42);
              v43 = v367;
              v44 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
              v45 = sub_25C82E07C();
              [v44 setDateFormat_];

              v46 = sub_25C82DF4C();
              v47 = [v44 stringFromDate_];

              v48 = sub_25C82E0AC();
              v50 = v49;

              *(&v366[0] + 1) = MEMORY[0x277D837D0];
              *&v365 = v48;
              *(&v365 + 1) = v50;
              sub_25C801F34(&v365, v368);
              v51 = swift_isUniquelyReferenced_nonNull_native();
              v367 = v43;
              sub_25C7FD1C0(v368, 0x697461756C617665, 0xEE00657461446E6FLL, v51);
              v52 = v367;
              v53 = v348;
              v54 = sub_25C82DE1C();
              v56 = v55;
              *(&v366[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
              *&v365 = v52;
              sub_25C801F34(&v365, v368);
              v57 = v347;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v367 = v57;
              sub_25C7FD1C0(v368, v54, v56, v58);

              (*v331)(v53, v351);

              v40 = v367;
              v39 = v345;
              v38 = v346;
              goto LABEL_6;
            }

            v170 = *(v355 + 8 * v162);
            ++v169;
            if (v170)
            {
              v168 = __clz(__rbit64(v170));
              *&v360 = (v170 - 1) & v170;
              goto LABEL_98;
            }
          }
        }

        while (1)
        {
          v168 = __clz(__rbit64(v166));
          *&v360 = (v166 - 1) & v166;
LABEL_98:
          v171 = v168 | (v162 << 6);
          v172 = *(v78 + 56);
          v173 = (*(v78 + 48) + 16 * v171);
          v174 = v173[1];
          v363 = *v173;
          v364 = v171;
          v175 = *(v172 + 8 * v171);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
          v176 = swift_allocObject();
          *(v176 + 32) = 0x63697274656DLL;
          *(v176 + 40) = 0xE600000000000000;
          v362 = v174;

          v177 = v175;
          v178 = [v177 numberOfSamplesPositive];
          v179 = [v177 numberOfSamplesTotal];
          *(v176 + 72) = MEMORY[0x277D83A90];
          *(v176 + 48) = v178 / v179;
          *(v176 + 80) = 0xD000000000000014;
          *(v176 + 88) = v353;
          v180 = [v177 numberOfSamplesTotal];
          v181 = MEMORY[0x277D83B88];
          *(v176 + 120) = MEMORY[0x277D83B88];
          *(v176 + 96) = v180;
          *(v176 + 128) = 0xD000000000000017;
          *(v176 + 136) = v352;
          v361 = v177;
          v182 = [v177 numberOfSamplesPositive];
          *(v176 + 168) = v181;
          *(v176 + 144) = v182;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
          v183 = sub_25C82E49C();

          sub_25C7E92DC(v176 + 32, &v365, &qword_27FC16160, &unk_25C8306A0);
          v184 = v365;
          v185 = sub_25C8139BC(v365, *(&v365 + 1));
          if (v186)
          {
            goto LABEL_190;
          }

          v187 = v183 + 8;
          *(v183 + ((v185 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v185;
          *(v183[6] + 16 * v185) = v184;
          sub_25C801F34(v366, (v183[7] + 32 * v185));
          v188 = v183[2];
          v106 = __OFADD__(v188, 1);
          v189 = v188 + 1;
          if (v106)
          {
            goto LABEL_191;
          }

          v183[2] = v189;
          sub_25C7E92DC(v176 + 80, &v365, &qword_27FC16160, &unk_25C8306A0);
          v190 = v365;
          v191 = sub_25C8139BC(v365, *(&v365 + 1));
          if (v192)
          {
            goto LABEL_190;
          }

          *(v187 + ((v191 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v191;
          *(v183[6] + 16 * v191) = v190;
          sub_25C801F34(v366, (v183[7] + 32 * v191));
          v193 = v183[2];
          v106 = __OFADD__(v193, 1);
          v194 = v193 + 1;
          if (v106)
          {
            goto LABEL_191;
          }

          v183[2] = v194;
          sub_25C7E92DC(v176 + 128, &v365, &qword_27FC16160, &unk_25C8306A0);
          v195 = v365;
          v196 = sub_25C8139BC(v365, *(&v365 + 1));
          if (v197)
          {
            goto LABEL_190;
          }

          *(v187 + ((v196 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v196;
          *(v183[6] + 16 * v196) = v195;
          sub_25C801F34(v366, (v183[7] + 32 * v196));
          v198 = v183[2];
          v106 = __OFADD__(v198, 1);
          v199 = v198 + 1;
          if (v106)
          {
            goto LABEL_191;
          }

          v183[2] = v199;

          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16160, &unk_25C8306A0);
          swift_arrayDestroy();
          swift_deallocClassInstance();

          v200 = v364;
          v161 = v359;
          *(v358 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v364;
          v201 = (v161[6] + 16 * v200);
          v202 = v362;
          *v201 = v363;
          v201[1] = v202;
          *(v161[7] + 8 * v200) = v183;
          v203 = v161[2];
          v106 = __OFADD__(v203, 1);
          v204 = v203 + 1;
          if (v106)
          {
            goto LABEL_195;
          }

          v161[2] = v204;
          v167 = v356;
          v78 = v357;
          v166 = v360;
          if (!v360)
          {
            goto LABEL_93;
          }
        }
      }

      v77 = 0;
      v355 = v367 + 32;
      v78 = MEMORY[0x277D84F98];
      v79 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
      v354 = v367;
      while (1)
      {
        if (v77 >= *(v76 + 16))
        {
          goto LABEL_189;
        }

        v80 = *(v355 + 8 * v77);
        if (!(v80 >> 62))
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v81)
          {
            break;
          }

          goto LABEL_22;
        }

        v158 = v76;
        if (v80 < 0)
        {
          v159 = *(v355 + 8 * v77);
        }

        v81 = sub_25C82E43C();
        v76 = v158;
        if (v81)
        {
          break;
        }

LABEL_22:
        if (++v77 == v356)
        {

          goto LABEL_88;
        }
      }

      v357 = v77;
      v363 = v80 & 0xC000000000000001;
      *&v360 = v80 & 0xFFFFFFFFFFFFFF8;

      v82 = 0;
      v361 = v81;
      v362 = v80;
      while (1)
      {
        if (v363)
        {
          v85 = MEMORY[0x25F88F6D0](v82, v80);
        }

        else
        {
          if (v82 >= *(v360 + 16))
          {
            goto LABEL_110;
          }

          v85 = *(v80 + 8 * v82 + 32);
        }

        v86 = v85;
        if (__OFADD__(v82, 1))
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v364 = v82 + 1;
        v87 = [v85 v79[44]];
        v88 = sub_25C82E0AC();
        v90 = v89;

        if (*(v78 + 16))
        {
          sub_25C8139BC(v88, v90);
          v92 = v91;

          if (v92)
          {
            v93 = [v86 v79[44]];
            v94 = sub_25C82E0AC();
            v96 = v95;

            if (!*(v78 + 16))
            {

LABEL_67:

              goto LABEL_30;
            }

            v97 = sub_25C8139BC(v94, v96);
            v99 = v98;

            if ((v99 & 1) == 0)
            {
              goto LABEL_67;
            }

            v100 = *(*(v78 + 56) + 8 * v97);
            v101 = [v86 v79[44]];
            v358 = sub_25C82E0AC();
            v359 = v102;

            v103 = [v86 v79[44]];
            if (!v103)
            {
              sub_25C82E0AC();
              v103 = sub_25C82E07C();
            }

            v104 = [v100 numberOfSamplesPositive];
            v105 = [v86 numberOfSamplesPositive];
            v106 = __OFADD__(v104, v105);
            v107 = &v105[v104];
            if (v106)
            {
              goto LABEL_186;
            }

            v108 = [v100 numberOfSamplesTotal];
            v109 = [v86 &selRef_dictionaryRepresentation + 3];
            v106 = __OFADD__(v108, v109);
            v110 = &v109[v108];
            if (v106)
            {
              goto LABEL_187;
            }

            v111 = [objc_allocWithZone(ODCurareEvaluationResult) initWithEvaluationName:v103 numberOfSamplesPositive:v107 numberOfSamplesTotal:v110];

            if (!v111)
            {
              v145 = sub_25C8139BC(v358, v359);
              v147 = v146;

              if (v147)
              {
                v148 = swift_isUniquelyReferenced_nonNull_native();
                *&v365 = v78;
                v81 = v361;
                v80 = v362;
                if (!v148)
                {
                  sub_25C804D38();
                  v78 = v365;
                }

                v149 = *(*(v78 + 48) + 16 * v145 + 8);

                sub_25C8043D0(v145, v78);
                goto LABEL_30;
              }

              goto LABEL_76;
            }

            v112 = v78;
            v113 = swift_isUniquelyReferenced_nonNull_native();
            *&v365 = v112;
            v114 = sub_25C8139BC(v358, v359);
            v116 = *(v112 + 16);
            v117 = (v115 & 1) == 0;
            v106 = __OFADD__(v116, v117);
            v118 = v116 + v117;
            if (v106)
            {
              goto LABEL_188;
            }

            v119 = v115;
            if (*(v112 + 24) < v118)
            {
              sub_25C7FC1D8(v118, v113);
              v114 = sub_25C8139BC(v358, v359);
              if ((v119 & 1) != (v120 & 1))
              {
                goto LABEL_208;
              }

              goto LABEL_73;
            }

            if (v113)
            {
LABEL_73:
              if ((v119 & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v153 = v114;
              sub_25C804D38();
              v114 = v153;
              if ((v119 & 1) == 0)
              {
LABEL_80:
                v78 = v365;
                *(v365 + 8 * (v114 >> 6) + 64) |= 1 << v114;
                v154 = (*(v78 + 48) + 16 * v114);
                v155 = v359;
                *v154 = v358;
                v154[1] = v155;
                *(*(v78 + 56) + 8 * v114) = v111;

                v156 = *(v78 + 16);
                v106 = __OFADD__(v156, 1);
                v157 = v156 + 1;
                if (v106)
                {
                  goto LABEL_192;
                }

                *(v78 + 16) = v157;
                goto LABEL_29;
              }
            }

            v150 = v114;

            v78 = v365;
            v151 = *(v365 + 56);
            v152 = *(v151 + 8 * v150);
            *(v151 + 8 * v150) = v111;

            goto LABEL_29;
          }
        }

        else
        {
        }

        v121 = [v86 v79[44]];
        v122 = sub_25C82E0AC();
        v124 = v123;

        v125 = [v86 v79[44]];
        if (!v125)
        {
          sub_25C82E0AC();
          v125 = sub_25C82E07C();
        }

        v126 = [objc_allocWithZone(ODCurareEvaluationResult) initWithEvaluationName:v125 numberOfSamplesPositive:objc_msgSend(v86 numberOfSamplesTotal:{sel_numberOfSamplesPositive), objc_msgSend(v86, sel_numberOfSamplesTotal)}];

        if (!v126)
        {
          v137 = sub_25C8139BC(v122, v124);
          v139 = v138;

          if (v139)
          {
            v140 = swift_isUniquelyReferenced_nonNull_native();
            *&v365 = v78;
            v81 = v361;
            v80 = v362;
            if (!v140)
            {
              sub_25C804D38();
              v78 = v365;
            }

            v141 = *(*(v78 + 48) + 16 * v137 + 8);

            sub_25C8043D0(v137, v78);
            goto LABEL_30;
          }

LABEL_76:

          goto LABEL_29;
        }

        v127 = v78;
        v128 = swift_isUniquelyReferenced_nonNull_native();
        *&v365 = v127;
        v130 = sub_25C8139BC(v122, v124);
        v131 = *(v127 + 16);
        v132 = (v129 & 1) == 0;
        v133 = v131 + v132;
        if (__OFADD__(v131, v132))
        {
          goto LABEL_109;
        }

        v134 = v129;
        if (*(v127 + 24) >= v133)
        {
          if (v128)
          {
            if ((v129 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            sub_25C804D38();
            if ((v134 & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          sub_25C7FC1D8(v133, v128);
          v135 = sub_25C8139BC(v122, v124);
          if ((v134 & 1) != (v136 & 1))
          {
            goto LABEL_208;
          }

          v130 = v135;
          if ((v134 & 1) == 0)
          {
LABEL_64:
            v78 = v365;
            *(v365 + 8 * (v130 >> 6) + 64) |= 1 << v130;
            v142 = (*(v78 + 48) + 16 * v130);
            *v142 = v122;
            v142[1] = v124;
            *(*(v78 + 56) + 8 * v130) = v126;

            v143 = *(v78 + 16);
            v106 = __OFADD__(v143, 1);
            v144 = v143 + 1;
            if (v106)
            {
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
              break;
            }

            *(v78 + 16) = v144;
            goto LABEL_28;
          }
        }

        v78 = v365;
        v83 = *(v365 + 56);
        v84 = *(v83 + 8 * v130);
        *(v83 + 8 * v130) = v126;

LABEL_28:
        v79 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
LABEL_29:
        v81 = v361;
        v80 = v362;
LABEL_30:
        ++v82;
        if (v364 == v81)
        {

          v76 = v354;
          v77 = v357;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  v279 = sub_25C82E43C();
  v278 = v329;
  if (!v279)
  {
LABEL_204:
    v281 = MEMORY[0x277D84F90];
LABEL_205:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
    v315 = swift_allocObject();
    *(v315 + 16) = xmmword_25C830A80;
    *(v315 + 32) = 0x74726F706572;
    *(v315 + 40) = 0xE600000000000000;
    v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162F0, &qword_25C830BF0);
    *(v315 + 48) = v350;
    *(v315 + 72) = v316;
    strcpy((v315 + 80), "selectedModels");
    *(v315 + 95) = -18;
    v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162F8, &qword_25C830BF8);
    *(v315 + 96) = v281;
    *(v315 + 120) = v317;
    *(v315 + 128) = 0x4D73746C75736572;
    *(v315 + 136) = 0xEF61746164617465;
    *(v315 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16300, &qword_25C830C00);
    *(v315 + 144) = v322;

    v318 = sub_25C801A1C(v315);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16160, &unk_25C8306A0);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return v318;
  }

LABEL_162:
  if (v279 >= 1)
  {
    v280 = 0;
    v361 = (v278 & 0xC000000000000001);
    v357 = "adaptedModelName";
    v358 = "nProtocol personalize]";
    v359 = "personalizationResultMetadata";
    v281 = MEMORY[0x277D84F90];
    v360 = xmmword_25C830650;
    v362 = v279;
    do
    {
      v363 = v280;
      v364 = v281;
      if (v361)
      {
        v282 = MEMORY[0x25F88F6D0](v280, v278);
      }

      else
      {
        v282 = *(v278 + 8 * v280 + 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
      v283 = swift_initStackObject();
      *(v283 + 16) = v360;
      *(v283 + 32) = 0x7461447472617473;
      *(v283 + 40) = 0xE900000000000065;
      v284 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v285 = sub_25C82E07C();
      [v284 setDateFormat_];

      v286 = sub_25C82DF4C();
      v287 = [v284 stringFromDate_];

      v288 = sub_25C82E0AC();
      v290 = v289;

      *(v283 + 48) = v288;
      *(v283 + 56) = v290;
      v291 = MEMORY[0x277D837D0];
      *(v283 + 72) = MEMORY[0x277D837D0];
      *(v283 + 80) = 0x65746144646E65;
      *(v283 + 88) = 0xE700000000000000;
      v292 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v293 = sub_25C82E07C();
      [v292 setDateFormat_];

      v294 = sub_25C82DF4C();
      v295 = [v292 stringFromDate_];

      v296 = sub_25C82E0AC();
      v298 = v297;

      v299 = v291;
      *(v283 + 120) = v291;
      *(v283 + 96) = v296;
      *(v283 + 104) = v298;
      v300 = sub_25C801A1C(v283);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16160, &unk_25C8306A0);
      swift_arrayDestroy();
      v301 = *(v282 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName + 8);
      if (v301)
      {
        v302 = *(v282 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
        *(&v366[0] + 1) = v291;
        *&v365 = v302;
        *(&v365 + 1) = v301;
        sub_25C801F34(&v365, v368);

        v303 = swift_isUniquelyReferenced_nonNull_native();
        v367 = v300;
        sub_25C7FD1C0(v368, 0xD000000000000010, v359 | 0x8000000000000000, v303);
        v300 = v367;
      }

      v304 = *(v282 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected);
      v305 = v363;
      if (v304 != 2)
      {
        *(&v366[0] + 1) = v299;
        if (v304)
        {
          v306 = 49;
        }

        else
        {
          v306 = 48;
        }

        *&v365 = v306;
        *(&v365 + 1) = 0xE100000000000000;
        sub_25C801F34(&v365, v368);
        v307 = swift_isUniquelyReferenced_nonNull_native();
        v367 = v300;
        sub_25C7FD1C0(v368, 0xD000000000000014, v357 | 0x8000000000000000, v307);
        v300 = v367;
      }

      v308 = *(v282 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName + 8);
      if (v308)
      {
        v309 = *(v282 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
        *(&v366[0] + 1) = v299;
        *&v365 = v309;
        *(&v365 + 1) = v308;
        sub_25C801F34(&v365, v368);

        v310 = swift_isUniquelyReferenced_nonNull_native();
        v367 = v300;
        sub_25C7FD1C0(v368, 0x65646F4D64657375, 0xED0000656D614E6CLL, v310);
        v300 = v367;
      }

      v281 = v364;
      v311 = *(v282 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata);
      if (v311)
      {
        *(&v366[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16278, &qword_25C8308F0);
        *&v365 = v311;
        sub_25C801F34(&v365, v368);

        v312 = swift_isUniquelyReferenced_nonNull_native();
        v367 = v300;
        sub_25C7FD1C0(v368, 0xD00000000000001ELL, v358 | 0x8000000000000000, v312);
        v300 = v367;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v281 = sub_25C7E72EC(0, v281[2] + 1, 1, v281);
      }

      v314 = v281[2];
      v313 = v281[3];
      if (v314 >= v313 >> 1)
      {
        v281 = sub_25C7E72EC((v313 > 1), v314 + 1, 1, v281);
      }

      v280 = v305 + 1;

      v281[2] = v314 + 1;
      v281[v314 + 4] = v300;
      v278 = v329;
    }

    while (v362 != v280);
    goto LABEL_205;
  }

  __break(1u);
LABEL_207:

  __break(1u);
LABEL_208:
  result = sub_25C82E51C();
  __break(1u);
  return result;
}

uint64_t sub_25C818414(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A0, &qword_25C830798);
    v2 = sub_25C82E49C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25C7E9854(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_25C801F34(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_25C801F34(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_25C801F34(v32, v33);
    v17 = *(v2 + 40);
    result = sub_25C82E33C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_25C801F34(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25C8186DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162E0, &qword_25C830BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25C81874C()
{
  result = qword_27FC16320;
  if (!qword_27FC16320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC16318, &qword_25C830C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16320);
  }

  return result;
}

unint64_t sub_25C8187B0()
{
  result = qword_281559480;
  if (!qword_281559480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281559480);
  }

  return result;
}

uint64_t sub_25C8187FC(void *a1, void *a2, uint64_t a3)
{
  v198 = a2;
  v206 = a1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v7 = MEMORY[0x28223BE20](v4);
  v193 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v194 = &v186 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v195 = &v186 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v202 = &v186 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v197 = (&v186 - v16);
  MEMORY[0x28223BE20](v15);
  v203 = &v186 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v190 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v192 = &v186 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v191 = &v186 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v201 = (&v186 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  *&v200 = &v186 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v186 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v186 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v186 - v36;
  sub_25C81C294(a3, &v186 - v36);
  v38 = *(v5 + 6);
  v39 = v38(v37, 1, v4);
  v204 = v38;
  if (v39 == 1)
  {
    sub_25C80E6F0(a3);
    sub_25C80E6F0(v37);
    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v40 = qword_281559838;
    sub_25C82E00C();

    sub_25C82DF2C();
    (*(v5 + 7))(a3, 0, 1, v4);
    v38 = v204;
  }

  else
  {
    sub_25C80E6F0(v37);
  }

  sub_25C81C294(a3, v35);
  v41 = v38(v35, 1, v4);
  v42 = v206;
  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_25C82DF4C();
    (*(v5 + 1))(v35, v4);
  }

  v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v42 setStreamFilter:0 fromInclusive:0 toDate:v43 toInclusive:v44];

  sub_25C81C294(a3, v32);
  v45 = v38(v32, 1, v4);
  v199 = v5 + 48;
  if (v45 == 1)
  {
    sub_25C80E6F0(v32);
    p_info = (ODCurareEvaluationAndReportingModule + 32);
  }

  else
  {
    v47 = v203;
    (*(v5 + 4))(v203, v32, v4);
    v48 = sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v49 = qword_281559838;
    v50 = v197;
    (*(v5 + 2))(v197, v47, v4);
    if (os_log_type_enabled(v49, v48))
    {
      v188 = v49;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v205[0] = v52;
      *v51 = 136315138;
      sub_25C81D650(&qword_27FC16078, MEMORY[0x277CC9578]);
      v53 = sub_25C82E4DC();
      v54 = v4;
      v56 = v55;
      v189 = a3;
      v57 = v50;
      v58 = *(v5 + 1);
      v58(v57, v54);
      v59 = sub_25C7E77E4(v53, v56, v205);
      v4 = v54;
      v38 = v204;

      *(v51 + 4) = v59;
      v60 = v188;
      _os_log_impl(&dword_25C7D2000, v188, v48, "Date for personalization filter %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x25F890110](v52, -1, -1);
      v61 = v51;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      MEMORY[0x25F890110](v61, -1, -1);

      v58(v203, v4);
      a3 = v189;
    }

    else
    {
      v62 = *(v5 + 1);
      v62(v50, v4);
      v62(v47, v4);
    }

    v42 = v206;
  }

  v63 = [v42 getDatesOfEventsForStream];
  if (!v63)
  {
    sub_25C82E27C();
    if (p_info[151] == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v64 = v42;
  v203 = v5;
  v65 = v63;
  v66 = sub_25C82E1DC();

  v67 = v200;
  sub_25C81C294(a3, v200);
  if (v38(v67, 1, v4) == 1)
  {
    v68 = 0;
  }

  else
  {
    v68 = sub_25C82DF4C();
    (*(v203 + 1))(v67, v4);
  }

  v69 = v202;
  v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v64 setStreamFilter:v68 fromInclusive:v70 toDate:0 toInclusive:0];

  v71 = v201;
  sub_25C81C294(a3, v201);
  if (v204(v71, 1, v4) == 1)
  {
    sub_25C80E6F0(v71);
  }

  else
  {
    v72 = v203;
    (*(v203 + 4))(v69, v71, v4);
    v73 = sub_25C82E25C();
    if (p_info[151] != -1)
    {
      swift_once();
    }

    v74 = qword_281559838;
    v75 = v195;
    (*(v72 + 2))(v195, v69, v4);
    if (os_log_type_enabled(v74, v73))
    {
      v201 = v74;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v189 = a3;
      v78 = v77;
      v205[0] = v77;
      *v76 = 136315138;
      sub_25C81D650(&qword_27FC16078, MEMORY[0x277CC9578]);
      v79 = sub_25C82E4DC();
      v202 = v66;
      v80 = v75;
      v81 = v4;
      v83 = v82;
      v84 = *(v72 + 1);
      v84(v80, v81);
      v85 = sub_25C7E77E4(v79, v83, v205);
      v4 = v81;

      *(v76 + 4) = v85;
      v86 = v201;
      _os_log_impl(&dword_25C7D2000, v201, v73, "Date for evaluation filter %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      v87 = v78;
      a3 = v189;
      MEMORY[0x25F890110](v87, -1, -1);
      v88 = v76;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      MEMORY[0x25F890110](v88, -1, -1);

      v66 = v202;
      v84(v69, v81);
    }

    else
    {
      v89 = *(v72 + 1);
      v89(v75, v4);
      v89(v69, v4);
    }

    v64 = v206;
  }

  v90 = [v64 getDatesOfEventsForStream];
  if (!v90)
  {

    sub_25C82E27C();
    if (p_info[151] == -1)
    {
LABEL_43:
      v111 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      swift_allocError();
      *v112 = 20;
      swift_willThrow();
      return v110 & 1;
    }

LABEL_42:
    swift_once();
    goto LABEL_43;
  }

  v91 = v90;
  v92 = sub_25C82E1DC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v187 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_25C7E916C(v92);
  }

  v94 = *(v92 + 2);
  v95 = &v92[(v203[80] + 32) & ~v203[80]];
  v205[0] = v95;
  v205[1] = v94;
  sub_25C81C304(v205);
  v96 = v198;
  v97 = [v198 minimumNumberOfSamplesForPersonalizationSelection];
  v98 = [v97 integerValue];

  v99 = [v96 minimumNumberOfSamplesForPersonalization];
  v100 = [v99 integerValue];

  v101 = __OFADD__(v98, v100);
  v102 = &v100[v98];
  if (v101)
  {
    __break(1u);
    goto LABEL_79;
  }

  v201 = v95;
  v103 = *(v66 + 16);

  v202 = v92;
  v104 = *(v92 + 2);
  v105 = &v104[v103];
  if (__OFADD__(v104, v103))
  {
LABEL_79:
    __break(1u);
    goto LABEL_42;
  }

  if (v104 < v98)
  {
    v106 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v107 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v106))
    {
      v108 = v107;
      v109 = swift_slowAlloc();
      *v109 = 134218240;
      *(v109 + 4) = v98;
      *(v109 + 12) = 2048;
      *(v109 + 14) = v104;
      _os_log_impl(&dword_25C7D2000, v108, v106, "Skipping personalization for model because there were not enough samples for hyperparameter selection. Needed %ld, had %ld", v109, 0x16u);
      MEMORY[0x25F890110](v109, -1, -1);

      v110 = 0;
      return v110 & 1;
    }

LABEL_56:

    v110 = 0;
    return v110 & 1;
  }

  if (v105 < v102)
  {
    v114 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v115 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v114))
    {
      v116 = v115;
      v117 = swift_slowAlloc();
      *v117 = 134218240;
      *(v117 + 4) = v102;
      *(v117 + 12) = 2048;
      *(v117 + 14) = v105;
      _os_log_impl(&dword_25C7D2000, v116, v114, "Skipping personalization for model because there were not enough samples for personalization and evaluation. Needed %ld, had %ld", v117, 0x16u);
      MEMORY[0x25F890110](v117, -1, -1);

      v110 = 0;
      return v110 & 1;
    }

    goto LABEL_56;
  }

  v118 = [v198 minimumNumberOfSamplesForPersonalization];
  v119 = [v118 integerValue];

  if (v103 >= v119)
  {
    goto LABEL_57;
  }

  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v120 = qword_281559838;
  sub_25C82E00C();

  if (v104 == v98)
  {
    sub_25C82E27C();
    v121 = qword_281559838;
LABEL_73:
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v171 = 20;
    swift_willThrow();

    return v110 & 1;
  }

  v189 = a3;
  sub_25C80E6F0(a3);
  LODWORD(v197) = sub_25C82E25C();
  v122 = qword_281559838;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v124 = swift_allocObject();
  v200 = xmmword_25C830650;
  *(v124 + 16) = xmmword_25C830650;
  v196 = v122;
  v125 = v198;
  v195 = [v198 minimumNumberOfSamplesForPersonalizationSelection];
  v126 = sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
  *(v124 + 56) = v126;
  v127 = sub_25C801F44(&qword_27FC16178, &qword_281559488, 0x277CCABB0);
  *(v124 + 64) = v127;
  *(v124 + 32) = v195;
  v128 = [v125 minimumNumberOfSamplesForPersonalization];
  *(v124 + 96) = v126;
  *(v124 + 104) = v127;
  *(v124 + 72) = v128;
  v129 = v196;
  sub_25C82E00C();

  sub_25C82E25C();
  v130 = qword_281559838;
  v198 = v123;
  v131 = swift_allocObject();
  *(v131 + 16) = v200;
  v132 = MEMORY[0x277D83B88];
  v133 = MEMORY[0x277D83C10];
  *(v131 + 56) = MEMORY[0x277D83B88];
  *(v131 + 64) = v133;
  *(v131 + 32) = v104;
  *(v131 + 96) = v132;
  *(v131 + 104) = v133;
  *(v131 + 72) = v103;
  v134 = v130;
  sub_25C82E00C();

  if (v98 < 0)
  {
    __break(1u);
  }

  else
  {
    v135 = v203;
    v137 = v193;
    v136 = v194;
    if (v98 < *(v202 + 2))
    {
      v138 = v201 + *(v203 + 9) * v98;
      v139 = *(v203 + 2);
      v140 = v189;
      v141 = v187;
      v139(v189, v138, v187);
      (*(v135 + 7))(v140, 0, 1, v141);
      v142 = v140;
      v143 = v191;
      sub_25C81C294(v142, v191);
      if (v204(v143, 1, v141) == 1)
      {
        sub_25C80E6F0(v143);
      }

      else
      {
        (*(v135 + 4))(v136, v143, v141);
        v144 = sub_25C82E25C();
        v145 = qword_281559838;
        v139(v137, v136, v141);
        LODWORD(v201) = v144;
        if (os_log_type_enabled(v145, v144))
        {
          v197 = v145;
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v205[0] = v147;
          *v146 = 136315138;
          sub_25C81D650(&qword_27FC16078, MEMORY[0x277CC9578]);
          v148 = sub_25C82E4DC();
          v150 = v149;
          v151 = *(v203 + 1);
          v151(v137, v141);
          v152 = sub_25C7E77E4(v148, v150, v205);
          v153 = (ODCurareEvaluationAndReportingModule + 32);

          *(v146 + 4) = v152;
          v154 = v197;
          _os_log_impl(&dword_25C7D2000, v197, v201, "Post-update date for personalization filter %s", v146, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v147);
          v155 = v147;
          v135 = v203;
          MEMORY[0x25F890110](v155, -1, -1);
          MEMORY[0x25F890110](v146, -1, -1);

          v151(v194, v141);
          v156 = v204;
LABEL_66:
          v158 = v192;
          sub_25C81C294(v189, v192);
          v159 = v156(v158, 1, v141);
          v160 = v206;
          if (v159 == 1)
          {
            v161 = v141;
            v162 = 0;
          }

          else
          {
            v162 = sub_25C82DF4C();
            v161 = v141;
            (*(v135 + 1))(v158, v141);
          }

          v163 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          [v160 setStreamFilter:0 fromInclusive:0 toDate:v162 toInclusive:v163];

          v164 = [v160 getDatesOfEventsForStream];
          v165 = v189;
          if (!v164)
          {
            sub_25C82E27C();
            v121 = v153[263];
            goto LABEL_73;
          }

          v166 = v164;
          v167 = sub_25C82E1DC();

          v168 = v165;
          v169 = v190;
          sub_25C81C294(v168, v190);
          if (v204(v169, 1, v161) == 1)
          {
            v170 = 0;
          }

          else
          {
            v170 = sub_25C82DF4C();
            (*(v135 + 1))(v169, v161);
          }

          v172 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
          v173 = v206;
          [v206 setStreamFilter:v170 fromInclusive:v172 toDate:0 toInclusive:0];

          v174 = [v173 getDatesOfEventsForStream];
          if (!v174)
          {

            sub_25C82E27C();
            v184 = v153[263];
            sub_25C82E00C();

            sub_25C7E7DEC();
            swift_allocError();
            *v185 = 20;
            swift_willThrow();

            return v110 & 1;
          }

          v175 = v174;
          v176 = sub_25C82E1DC();

          v177 = *(v167 + 16);

          v178 = *(v176 + 16);

          sub_25C82E25C();
          v179 = v153[263];
          v180 = swift_allocObject();
          *(v180 + 16) = v200;
          v181 = MEMORY[0x277D83B88];
          *(v180 + 56) = MEMORY[0x277D83B88];
          v182 = MEMORY[0x277D83C10];
          *(v180 + 64) = MEMORY[0x277D83C10];
          *(v180 + 72) = v177;
          *(v180 + 32) = v178;
          *(v180 + 96) = v181;
          *(v180 + 104) = v182;
          v183 = v179;
          sub_25C82E00C();

LABEL_57:

          v110 = 1;
          return v110 & 1;
        }

        v157 = *(v135 + 1);
        v157(v137, v141);
        v157(v136, v141);
      }

      v156 = v204;
      v153 = ODCurareEvaluationAndReportingModule.info;
      goto LABEL_66;
    }
  }

  __break(1u);
  return result;
}

id sub_25C819EA4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v74 - v11;
  v13 = sub_25C82DEAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (v74 - v19);
  if (([a1 hasStreamFilter] & 1) == 0)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v42 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    v44 = 27;
    goto LABEL_15;
  }

  v83 = a3;
  if (([a2 respondsToSelector_] & 1) == 0 || (v21 = objc_msgSend(a2, sel_personalizeModel_, a1)) == 0)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v45 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    v44 = 28;
LABEL_15:
    *v43 = v44;
    return swift_willThrow();
  }

  v81 = v18;
  v82 = v21;
  LODWORD(v78) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v80 = a4;
  v76 = v14;
  v77 = v13;
  v22 = qword_281559838;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v24 = swift_allocObject();
  v79 = xmmword_25C830640;
  *(v24 + 16) = xmmword_25C830640;
  v25 = v22;
  result = [a1 getDatesOfEventsForStream];
  if (!result)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v27 = result;
  v75 = sub_25C82DFBC();
  v28 = sub_25C82E1DC();

  v29 = *(v28 + 16);

  v30 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v30;
  *(v24 + 32) = v29;
  sub_25C82E00C();

  v31 = v82;
  v32 = [v82 modelURL];
  sub_25C82DE7C();

  v78 = [v31 modelInformation];
  sub_25C82E25C();
  v33 = qword_281559838;
  v74[1] = v23;
  v34 = swift_allocObject();
  *(v34 + 16) = v79;
  v35 = v33;
  v36 = sub_25C82DE2C();
  *(v34 + 56) = sub_25C7E96B8(0, &qword_27FC16220, 0x277CBEBC0);
  *(v34 + 64) = sub_25C801F44(&qword_27FC16228, &qword_27FC16220, 0x277CBEBC0);
  *(v34 + 32) = v36;
  sub_25C82E00C();

  v37 = [a1 modelTag];
  if (v37)
  {
    v38 = v37;
    v39 = sub_25C82E0AC();
    v41 = v40;
  }

  else
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    v85 = sub_25C81AB48;
    v86 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16328, &qword_25C830C20);
    sub_25C82E41C();
    v39 = v87;
    v41 = v88;
  }

  v46 = v89;
  sub_25C81AB78(v20, v39, v41, v81);
  if (v46)
  {
    (*(v76 + 8))(v20, v77);
  }

  v47 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v89 = "evaluateWithModel:]";
  v48 = sub_25C82E07C();
  [v47 setDateFormat_];

  v49 = sub_25C82DF4C();
  v50 = [v47 stringFromDate_];

  v51 = v78;
  if (!v50)
  {
    sub_25C82E0AC();
    v50 = sub_25C82E07C();
  }

  [v51 setModelCreationDate_];
  sub_25C82DE1C();
  v52 = sub_25C82E07C();

  [v51 setModelName_];

  v53 = sub_25C82DE2C();
  [v82 setModelURL_];

  v54 = sub_25C82DE2C();
  [a1 setModelURL_];

  sub_25C81C294(v84, v12);
  v55 = v75;
  v56 = *(v75 - 8);
  if ((*(v56 + 48))(v12, 1, v75) == 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = sub_25C82DF4C();
    (*(v56 + 8))(v12, v55);
  }

  v58 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a1 setStreamFilter:v57 fromInclusive:v58 toDate:0 toInclusive:0];

  v59 = sub_25C80E88C(a1, v83);
  sub_25C82E25C();
  v60 = qword_281559838;
  v61 = swift_allocObject();
  *(v61 + 16) = v79;
  v62 = v60;
  result = [a1 getDatesOfEventsForStream];
  if (!result)
  {
    goto LABEL_29;
  }

  v63 = result;
  v64 = sub_25C82E1DC();

  v65 = *(v64 + 16);

  *(v61 + 56) = MEMORY[0x277D83B88];
  *(v61 + 64) = MEMORY[0x277D83C10];
  *(v61 + 32) = v65;
  sub_25C82E00C();

  v66 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v67 = sub_25C82E07C();
  [v66 setDateFormat_];

  v68 = sub_25C82DF4C();
  v69 = [v66 stringFromDate_];

  if (!v69)
  {
    sub_25C82E0AC();
    v69 = sub_25C82E07C();
  }

  [v59 setEvaluationDate_];
  v70 = v78;
  v71 = [v78 modelName];
  [v59 setModelName_];

  v72 = v77;
  v73 = *(v76 + 8);
  v73(v81, v77);
  v73(v20, v72);
  return v82;
}

void sub_25C81A8E4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v18 = 0;
  v19 = 0;
  v5 = (a2 + 48);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = *(v5 - 2);
    v9 = v6;
    v10 = v7;
    v11 = [v9 modelInformation];
    LODWORD(v7) = [v11 isDefaultModel];

    if (v7)
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v4)
    {
      v12 = [a1 hyperparameterSelectionPolicy];
      sub_25C7E96B8(0, &qword_27FC16170, off_2799B97A0);
      v13 = sub_25C82E1DC();

      v14 = sub_25C80FAD4(v10, v4, v13);
      if (v2)
      {

        return;
      }

      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (v18 | v19)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v4 = v10;
    v18 = v9;
    v19 = v8;
LABEL_4:
    v5 += 3;
    --v3;
  }

  while (v3);
  if (!v19)
  {
    goto LABEL_22;
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  if (v4)
  {
    return;
  }

  __break(1u);
LABEL_16:
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v16 = qword_281559838;
  sub_25C82E00C();
}

char *sub_25C81AB48@<X0>(const char **a1@<X0>, int *a2@<X1>, char **a3@<X8>)
{
  result = index(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_25C81AB78@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSObject *a4@<X8>)
{
  v236 = a4;
  v244 = *MEMORY[0x277D85DE8];
  v237 = sub_25C82DEAC();
  v234 = *(v237 - 8);
  v7 = v234[8];
  v8 = MEMORY[0x28223BE20](v237);
  v211 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v213 = &v209 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v228 = &v209 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v225 = &v209 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v212 = &v209 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v221 = &v209 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v220 = &v209 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v219 = &v209 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v223 = &v209 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v224 = &v209 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v231 = &v209 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v209 - v31;
  MEMORY[0x28223BE20](v30);
  v235 = &v209 - v33;
  v240 = 0x5F64657470616461;
  v241 = 0xE800000000000000;
  if (a3)
  {
    MEMORY[0x25F88F460](a2, a3);
    MEMORY[0x25F88F460](95, 0xE100000000000000);
  }

  v232 = a1;
  MEMORY[0x25F88F460](16421, 0xE200000000000000);
  v34 = NSTemporaryDirectory();
  sub_25C82E0AC();

  sub_25C82DDFC();

  v35 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v36 = sub_25C82E07C();
  [v35 setDateFormat_];

  v37 = sub_25C82DF4C();
  v38 = [v35 stringFromDate_];

  v39 = sub_25C82E0AC();
  v41 = v40;

  v242 = 0x6C65646F6D6C6D2ELL;
  v243 = 0xE900000000000063;
  v217 = v240;
  v238 = v240;
  v239 = v241;
  v227 = v241;

  v42 = MEMORY[0x277D837D0];
  v238 = sub_25C82E18C();
  v239 = v43;
  sub_25C82E12C();
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v44 = swift_allocObject();
  v215 = xmmword_25C830640;
  *(v44 + 16) = xmmword_25C830640;
  *(v44 + 56) = v42;
  v214 = sub_25C801F94();
  *(v44 + 64) = v214;
  v218 = v39;
  *(v44 + 32) = v39;
  *(v44 + 40) = v41;
  v226 = v41;

  sub_25C82E0CC();

  v45 = v236;
  sub_25C82DE4C();

  v233 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v46 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v47 = qword_281559838;
  v48 = v234;
  v49 = (v234 + 2);
  v50 = v234[2];
  v51 = v32;
  v52 = v237;
  v50(v32, v232, v237);
  v53 = v231;
  v230 = v49;
  v229 = v50;
  v50(v231, v45, v52);
  if (os_log_type_enabled(v47, v46))
  {
    v54 = v48;
    v210 = v47;
    v55 = v46;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v242 = v57;
    *v56 = 136315394;
    v58 = sub_25C82DE8C();
    v60 = v59;
    v61 = v54[1];
    v61(v51, v237);
    v62 = sub_25C7E77E4(v58, v60, &v242);

    *(v56 + 4) = v62;
    *(v56 + 12) = 2080;
    v63 = sub_25C82DE8C();
    v65 = v64;
    v231 = v61;
    v61(v53, v237);
    v52 = v237;
    v66 = sub_25C7E77E4(v63, v65, &v242);

    *(v56 + 14) = v66;
    v67 = v210;
    _os_log_impl(&dword_25C7D2000, v210, v55, "Attempting to copy from %s to %s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v57, -1, -1);
    MEMORY[0x25F890110](v56, -1, -1);

    v68 = v233;
    v69 = v228;
  }

  else
  {
    v70 = v48[1];
    v70(v53, v52);
    v231 = v70;
    v70(v51, v52);
    v69 = v228;
    v68 = v233;
  }

  sub_25C82DE8C();
  v71 = sub_25C82E07C();

  v72 = [v68 fileExistsAtPath_];

  v73 = v232;
  if ((v72 & 1) == 0)
  {
    sub_25C82DE8C();
    v74 = sub_25C82E07C();

    v242 = 0;
    v75 = [v68 createDirectoryAtPath:v74 withIntermediateDirectories:1 attributes:0 error:&v242];

    v76 = v242;
    v77 = v225;
    if (!v75)
    {
LABEL_16:
      v127 = v76;

      v128 = sub_25C82DDAC();

      v228 = v128;
      swift_willThrow();
      v129 = sub_25C82E27C();
      v130 = qword_281559838;
      v131 = v229;
      v229(v77, v73, v52);
      v131(v69, v236, v52);
      v132 = v130;
      LODWORD(v232) = v129;
      if (os_log_type_enabled(v132, v129))
      {
        v133 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v242 = v230;
        *v133 = 136315650;
        v134 = sub_25C82DE8C();
        v136 = v135;
        v137 = v77;
        v138 = v231;
        (v231)(v137, v237);
        v139 = sub_25C7E77E4(v134, v136, &v242);

        *(v133 + 4) = v139;
        *(v133 + 12) = 2080;
        v140 = sub_25C82DE8C();
        v142 = v141;
        v138(v69, v237);
        v52 = v237;
        v143 = sub_25C7E77E4(v140, v142, &v242);

        *(v133 + 14) = v143;
        *(v133 + 22) = 2080;
        v144 = v228;
        swift_getErrorValue();
        v145 = sub_25C82E52C();
        v147 = sub_25C7E77E4(v145, v146, &v242);

        *(v133 + 24) = v147;
        _os_log_impl(&dword_25C7D2000, v132, v232, "Failed to copy folder from %s to %s with error: %s", v133, 0x20u);
        v148 = v230;
        swift_arrayDestroy();
        v123 = v138;
        MEMORY[0x25F890110](v148, -1, -1);
        v149 = v133;
        v68 = v233;
        MEMORY[0x25F890110](v149, -1, -1);
      }

      else
      {

        v123 = v231;
        (v231)(v69, v52);
        v123(v77, v52);
        v144 = v228;
      }

      sub_25C7E7DEC();
      swift_allocError();
      *v150 = 10;
      swift_willThrow();

      goto LABEL_20;
    }

    v78 = v242;
  }

  sub_25C82DE8C();
  v79 = sub_25C82E07C();

  sub_25C82DE8C();
  v80 = sub_25C82E07C();

  v242 = 0;
  v81 = [v68 copyItemAtPath:v79 toPath:v80 error:&v242];

  v76 = v242;
  if (!v81)
  {
    v77 = v225;
    goto LABEL_16;
  }

  v82 = v242;
  v83 = sub_25C82DE1C();
  v242 = 46;
  v243 = 0xE100000000000000;
  MEMORY[0x28223BE20](v83);
  *(&v209 - 2) = &v242;
  v84 = v222;
  v87 = sub_25C7FAA3C(0x7FFFFFFFFFFFFFFFLL, 1, sub_25C81D630, (&v209 - 4), v85, v86, &v245);
  if (!v87[2])
  {
    __break(1u);
  }

  v228 = v84;
  v88 = v87[4];
  v89 = v87[5];
  v90 = v87[6];
  v91 = v87[7];

  v92 = MEMORY[0x25F88F420](v88, v89, v90, v91);
  v94 = v93;

  v242 = 0x74736F6F6267782ELL;
  v243 = 0xE800000000000000;
  v238 = v92;
  v239 = v94;
  v95 = MEMORY[0x277D837D0];
  v238 = sub_25C82E18C();
  v239 = v96;
  sub_25C82E12C();
  v97 = v224;
  v225 = v238;
  v232 = v239;
  sub_25C82DE4C();
  v98 = swift_allocObject();
  *(v98 + 16) = v215;
  v99 = v214;
  *(v98 + 56) = v95;
  *(v98 + 64) = v99;
  v100 = v226;
  *(v98 + 32) = v218;
  *(v98 + 40) = v100;
  v101 = sub_25C82E0CC();
  v103 = v102;

  v242 = 0x74736F6F6267782ELL;
  v243 = 0xE800000000000000;
  v238 = v101;
  v239 = v103;
  v238 = sub_25C82E18C();
  v239 = v104;
  sub_25C82E12C();
  v105 = v223;
  sub_25C82DE4C();

  v106 = sub_25C82E25C();
  v107 = qword_281559838;
  v108 = v219;
  v109 = v229;
  v229(v219, v97, v52);
  v110 = v220;
  v109(v220, v105, v52);
  if (os_log_type_enabled(v107, v106))
  {
    v227 = v107;
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v242 = v112;
    *v111 = 136315394;
    v113 = sub_25C82DE8C();
    v115 = v114;
    v116 = v108;
    v117 = v231;
    (v231)(v116, v237);
    v118 = sub_25C7E77E4(v113, v115, &v242);

    *(v111 + 4) = v118;
    *(v111 + 12) = 2080;
    v119 = sub_25C82DE8C();
    v121 = v120;
    v117(v110, v237);
    v122 = sub_25C7E77E4(v119, v121, &v242);

    *(v111 + 14) = v122;
    v123 = v117;
    v124 = v227;
    _os_log_impl(&dword_25C7D2000, v227, v106, "Attempting to copy file from %s to %s", v111, 0x16u);
    swift_arrayDestroy();
    v125 = v112;
    v97 = v224;
    MEMORY[0x25F890110](v125, -1, -1);
    v126 = v111;
    v52 = v237;
    MEMORY[0x25F890110](v126, -1, -1);
  }

  else
  {
    v152 = v110;
    v123 = v231;
    (v231)(v152, v52);
    v123(v108, v52);
  }

  v153 = v221;
  sub_25C82DE8C();
  v154 = sub_25C82E07C();

  v155 = [v233 fileExistsAtPath_];

  if (!v155)
  {

LABEL_32:

    v123(v105, v52);
    v123(v97, v52);
    result = (v123)(v235, v52);
    goto LABEL_33;
  }

  v156 = sub_25C82E25C();
  v157 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v156))
  {
    v227 = v157;
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v242 = v159;
    *v158 = 136315138;
    v160 = sub_25C7E77E4(v225, v232, &v242);

    *(v158 + 4) = v160;
    v161 = v227;
    _os_log_impl(&dword_25C7D2000, v227, v156, "Copying file from %s", v158, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v159);
    MEMORY[0x25F890110](v159, -1, -1);
    MEMORY[0x25F890110](v158, -1, -1);
  }

  else
  {
  }

  v162 = v212;
  v163 = sub_25C82E25C();
  v164 = qword_281559838;
  v165 = v229;
  v229(v153, v97, v52);
  v165(v162, v105, v52);
  if (os_log_type_enabled(v164, v163))
  {
    v232 = v164;
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v242 = v167;
    *v166 = 136315394;
    sub_25C81D650(&qword_27FC16098, MEMORY[0x277CC9260]);
    v168 = sub_25C82E4DC();
    v170 = v169;
    v171 = v153;
    v172 = v231;
    (v231)(v171, v237);
    v173 = sub_25C7E77E4(v168, v170, &v242);
    v52 = v237;

    *(v166 + 4) = v173;
    *(v166 + 12) = 2080;
    v174 = sub_25C82E4DC();
    v176 = v175;
    v172(v162, v52);
    v97 = v224;
    v177 = sub_25C7E77E4(v174, v176, &v242);

    *(v166 + 14) = v177;
    v178 = v232;
    _os_log_impl(&dword_25C7D2000, v232, v163, "Copying URL from %s, to %s", v166, 0x16u);
    swift_arrayDestroy();
    v123 = v172;
    MEMORY[0x25F890110](v167, -1, -1);
    MEMORY[0x25F890110](v166, -1, -1);

    v105 = v223;
  }

  else
  {
    v179 = v162;
    v123 = v231;
    (v231)(v179, v52);
    v123(v153, v52);
  }

  v180 = sub_25C82DE2C();
  v181 = sub_25C82DE2C();
  v242 = 0;
  v182 = v105;
  v183 = [v233 moveItemAtURL:v180 toURL:v181 error:&v242];

  if (v183)
  {
    v184 = v242;
    v105 = v182;
    goto LABEL_32;
  }

  v186 = v242;
  v187 = sub_25C82DDAC();

  v234 = v187;
  swift_willThrow();
  LODWORD(v187) = sub_25C82E27C();
  v188 = qword_281559838;
  v189 = v97;
  v190 = v229;
  v229(v213, v189, v52);
  v191 = v211;
  v190(v211, v182, v52);
  v192 = v188;
  LODWORD(v232) = v187;
  if (os_log_type_enabled(v192, v187))
  {
    v193 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v242 = v230;
    *v193 = 136315650;
    sub_25C81D650(&qword_27FC16098, MEMORY[0x277CC9260]);
    v194 = v213;
    v195 = sub_25C82E4DC();
    v197 = v196;
    (v231)(v194, v237);
    v198 = sub_25C7E77E4(v195, v197, &v242);

    *(v193 + 4) = v198;
    *(v193 + 12) = 2080;
    v199 = sub_25C82E4DC();
    v201 = v200;
    (v231)(v191, v237);
    v123 = v231;
    v202 = sub_25C7E77E4(v199, v201, &v242);

    *(v193 + 14) = v202;
    *(v193 + 22) = 2080;
    v52 = v237;
    v203 = v234;
    swift_getErrorValue();
    v204 = sub_25C82E52C();
    v206 = sub_25C7E77E4(v204, v205, &v242);

    *(v193 + 24) = v206;
    _os_log_impl(&dword_25C7D2000, v192, v232, "Failed to copy xgboost from %s to %s with error: %s", v193, 0x20u);
    v207 = v230;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v207, -1, -1);
    MEMORY[0x25F890110](v193, -1, -1);
  }

  else
  {

    v123(v191, v52);
    v123(v213, v52);
    v203 = v234;
  }

  sub_25C7E7DEC();
  swift_allocError();
  *v208 = 10;
  swift_willThrow();

  v123(v223, v52);
  v123(v224, v52);
LABEL_20:
  v123(v236, v52);
  result = (v123)(v235, v52);
LABEL_33:
  v185 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25C81C294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C81C304(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C81C6B4(v8, v9, a1, v4);
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
    return sub_25C81C430(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C81C430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      v26 = sub_25C82DF5C();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C81C6B4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v118 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v118 - v17;
  result = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_25C807028(a4);
    }

    v113 = v6;
    v141 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *(result + 16 * a4);
        v116 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_25C81D0A0(*v10 + a3[9] * v115, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v113)
        {
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_25C807028(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_25C806F9C(a4 - 1);
        result = v141;
        a4 = *(v141 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v23 = v21;
    v126 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v131 = v20;
      v120 = v6;
      v128 = *a3;
      v24 = v128;
      v25 = v10[9];
      v5 = v128 + v25 * (v21 + 1);
      v26 = v10[2];
      v27 = v138;
      v26(v138, v5, v9);
      v28 = v24 + v25 * v23;
      v29 = v139;
      v130 = v26;
      v26(v139, v28, v9);
      LODWORD(v132) = sub_25C82DF5C();
      v30 = v9;
      v31 = v10[1];
      v31(v29, v30);
      v129 = v31;
      result = (v31)(v27, v30);
      v119 = v23;
      v32 = v23 + 2;
      v134 = v25;
      v33 = v128 + v25 * (v23 + 2);
      while (1)
      {
        v34 = v131;
        if (v131 == v32)
        {
          break;
        }

        v35 = v10;
        v36 = v138;
        v37 = v140;
        v38 = v130;
        (v130)(v138, v33, v140);
        v39 = v139;
        v38(v139, v5, v37);
        v40 = sub_25C82DF5C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v36;
        v10 = v35;
        result = v41(v42, v37);
        ++v32;
        v33 += v134;
        v5 += v134;
        if ((v132 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      a3 = v123;
      v22 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v23 = v119;
      if (v132)
      {
        if (v34 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v34)
        {
          v118 = v10;
          v43 = v134 * (v34 - 1);
          v44 = v34 * v134;
          v45 = v34;
          v46 = v119;
          v47 = v119 * v134;
          do
          {
            if (v46 != --v45)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v50 = v34;
              v5 = v49 + v47;
              v132 = *v135;
              (v132)(v125, v49 + v47, v140, v22);
              if (v47 < v43 || v5 >= v49 + v44)
              {
                v48 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v140;
                if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v49 + v43, v125, v48);
              a3 = v123;
              v22 = v126;
              v34 = v50;
            }

            ++v46;
            v43 -= v134;
            v44 -= v134;
            v47 += v134;
          }

          while (v46 < v45);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v23 = v119;
        }
      }
    }

    v51 = a3[1];
    if (v34 < v51)
    {
      if (__OFSUB__(v34, v23))
      {
        goto LABEL_126;
      }

      if (v34 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v23 + a4;
        }

        if (v52 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v52)
        {
          break;
        }
      }
    }

    v53 = v34;
    if (v34 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v126;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v126 + 2) + 1, 1, v126);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v54 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v54 >> 1)
    {
      result = sub_25C7E6F4C((v54 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v53;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v53;
    if (a4)
    {
      while (1)
      {
        v57 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v22 + 4);
          v59 = *(v22 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_114;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_117;
          }

          v80 = &v22[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_121;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v22[16 * v5];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_116;
        }

        v87 = &v22[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_119;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v57 - 1;
        if (v57 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v95 = v22;
        v96 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v57 + 40];
        sub_25C81D0A0(*a3 + v10[9] * v96, *a3 + v10[9] * *&v22[16 * v57 + 32], *a3 + v10[9] * v5, v56);
        if (v6)
        {
        }

        if (v5 < v96)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_25C807028(v95);
        }

        if (a4 >= *(v95 + 2))
        {
          goto LABEL_111;
        }

        v97 = &v95[16 * a4];
        *(v97 + 4) = v96;
        *(v97 + 5) = v5;
        v141 = v95;
        result = sub_25C806F9C(v57);
        v22 = v141;
        v5 = *(v141 + 16);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v22[16 * v5 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_112;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_113;
      }

      v69 = &v22[16 * v5];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_115;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_118;
      }

      if (v73 >= v65)
      {
        v91 = &v22[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v94)
        {
          v57 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v127;
    a4 = v121;
    if (v127 >= v20)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v98 = *a3;
  v99 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v100 = v98 + v99 * (v34 - 1);
  v101 = -v99;
  v119 = v23;
  v102 = (v23 - v34);
  v132 = v98;
  v124 = v99;
  v5 = v98 + v34 * v99;
  v127 = v52;
LABEL_85:
  v130 = v100;
  v131 = v34;
  v128 = v5;
  v129 = v102;
  v103 = v100;
  while (1)
  {
    v104 = v138;
    v105 = v134;
    (v134)(v138, v5, v9, v22);
    v106 = v139;
    v105(v139, v103, v140);
    v107 = sub_25C82DF5C();
    a4 = v136;
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v34 = v131 + 1;
      v100 = &v130[v124];
      v102 = v129 - 1;
      v5 = v128 + v124;
      v53 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v23 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v110 = *v135;
    v111 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    v5 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_25C81D0A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = sub_25C82DFBC();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = (a2 - a1) / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v19;
    if (v19 < 1)
    {
      v34 = a4 + v19;
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v19;
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = a2 + v31;
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = v32 + v31;
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = sub_25C82DF5C();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v18;
    v59 = a4 + v18;
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = sub_25C82DF5C();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = v50 + v24;
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  sub_25C80703C(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_25C81D650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C81D698(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25C807780(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25C826550(v6);
  *a1 = v3;
  return result;
}

void *sub_25C81D74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xED0000736C65646FLL);
  v8 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v9 = sub_25C82E07C();

  v10 = [v8 init_];

  v4[2] = v10;
  v16 = a2;

  MEMORY[0x25F88F460](0xD000000000000010, 0x800000025C8342D0);

  v11 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v12 = sub_25C82E07C();

  v13 = [v11 init_];

  v4[3] = v13;
  v4[4] = a1;
  return v4;
}

void sub_25C81D89C(uint64_t a1, uint64_t a2, void *a3, void *a4, NSObject *a5, NSObject *a6, unint64_t a7, void *a8)
{
  v196 = a6;
  v197 = a8;
  v192 = a5;
  v193 = a7;
  v189 = a4;
  v194 = a3;
  v180 = sub_25C82DD8C();
  v198 = *(v180 - 8);
  v10 = *(v198 + 64);
  MEMORY[0x28223BE20](v180);
  v12 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v167 - v15;
  v17 = sub_25C82DDCC();
  v190 = *(v17 - 8);
  v191 = v17;
  v18 = *(v190 + 64);
  MEMORY[0x28223BE20](v17);
  v200 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25C82DEAC();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v182 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v179 = &v167 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v195 = &v167 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v167 - v29;
  v31 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v32 = qword_281559838;
  v184 = v21[2];
  v185 = v21 + 2;
  v184(v30, a1, v20);
  v33 = os_log_type_enabled(v32, v31);
  v199 = a1;
  v186 = v12;
  v188 = a2;
  if (v33)
  {
    *&v202 = v32;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v209[0] = v35;
    *v34 = 136315138;
    sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
    v36 = sub_25C82E4DC();
    v38 = v37;
    v187 = v21[1];
    v187(v30, v20);
    v39 = sub_25C7E77E4(v36, v38, v209);

    *(v34 + 4) = v39;
    v40 = v202;
    _os_log_impl(&dword_25C7D2000, v202, v31, "Start save model, model path: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x25F890110](v35, -1, -1);
    MEMORY[0x25F890110](v34, -1, -1);
  }

  else
  {
    v187 = v21[1];
    v187(v30, v20);
  }

  v41 = [objc_opt_self() defaultManager];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16348, &unk_25C830CD0);
  v43 = swift_allocObject();
  v202 = xmmword_25C830640;
  *(v43 + 16) = xmmword_25C830640;
  v44 = *MEMORY[0x277CBE8A8];
  *(v43 + 32) = *MEMORY[0x277CBE8A8];
  v45 = v44;
  v46 = sub_25C82E24C();

  if (v46)
  {
    sub_25C82E25C();
    v47 = qword_281559838;
    sub_25C82E00C();

    v183 = v46;
    sub_25C82E23C();
    sub_25C82DDBC();
    if (v210)
    {
      v175 = v45;
      v176 = v42;
      v181 = 0;
      v49 = (v21 + 7);
      v178 = v21 + 1;
      v173 = (v198 + 8);
      v174 = (v21 + 4);
      v50 = MEMORY[0x277D84F98];
      *&v48 = 136315138;
      v171 = v48;
      *&v48 = 136315394;
      v172 = v48;
      v51 = v195;
      v52 = v200;
      while (1)
      {
        v53 = swift_dynamicCast();
        v54 = *v49;
        if (v53)
        {
          v198 = v50;
          v54(v16, 0, 1, v20);
          (*v174)(v51, v16, v20);
          inited = swift_initStackObject();
          *(inited + 16) = v202;
          v56 = v175;
          *(inited + 32) = v175;
          v57 = v56;
          sub_25C82772C(inited);
          swift_setDeallocating();
          sub_25C827F28(inited + 32);
          v58 = v51;
          v59 = v181;
          sub_25C82DDEC();
          v177 = v59;
          if (v59)
          {
            v181 = 0;

            v60 = sub_25C82E27C();
            v61 = qword_281559838;
            v62 = v182;
            v184(v182, v58, v20);
            LODWORD(v170) = v60;
            if (os_log_type_enabled(v61, v60))
            {
              v169 = v61;
              v63 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              v207 = v168;
              *v63 = v172;
              sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
              v64 = sub_25C82E4DC();
              v65 = v62;
              v67 = v66;
              v187(v65, v20);
              v68 = sub_25C7E77E4(v64, v67, &v207);

              *(v63 + 4) = v68;
              *(v63 + 12) = 2080;
              swift_getErrorValue();
              v69 = sub_25C82E52C();
              v71 = sub_25C7E77E4(v69, v70, &v207);

              *(v63 + 14) = v71;
              v72 = v169;
              _os_log_impl(&dword_25C7D2000, v169, v170, "Handling file %s failed with error %s", v63, 0x16u);
              v73 = v168;
              swift_arrayDestroy();
              MEMORY[0x25F890110](v73, -1, -1);
              MEMORY[0x25F890110](v63, -1, -1);

              v51 = v195;
              v187(v51, v20);
            }

            else
            {
              v51 = v58;

              v86 = v187;
              v187(v62, v20);
              v86(v51, v20);
            }

            v50 = v198;
          }

          else
          {

            v74 = sub_25C82DD7C();
            if (v74 == 2)
            {
              goto LABEL_61;
            }

            v50 = v198;
            v75 = v179;
            if (v74)
            {
              v76 = sub_25C82E26C();
              v77 = qword_281559838;
              v184(v75, v195, v20);
              if (os_log_type_enabled(v77, v76))
              {
                v181 = v77;
                v78 = swift_slowAlloc();
                LODWORD(v169) = v76;
                v79 = v78;
                v170 = swift_slowAlloc();
                v207 = v170;
                *v79 = v171;
                v80 = sub_25C82DE8C();
                v82 = v81;
                v187(v75, v20);
                v83 = sub_25C7E77E4(v80, v82, &v207);
                v50 = v198;

                *(v79 + 4) = v83;
                v84 = v181;
                _os_log_impl(&dword_25C7D2000, v181, v169, "Handling file %s", v79, 0xCu);
                v85 = v170;
                __swift_destroy_boxed_opaque_existential_0Tm(v170);
                MEMORY[0x25F890110](v85, -1, -1);
                MEMORY[0x25F890110](v79, -1, -1);
              }

              else
              {
                v187(v75, v20);
              }

              v87 = v195;
              v89 = v177;
              v90 = sub_25C82DEBC();
              if (v89)
              {

                v88 = 0;
              }

              else
              {
                v181 = v91;
                v170 = v90;
                v177 = 0;
                v92 = sub_25C82DE8C();
                v94 = v93;
                sub_25C82DE8C();
                v95 = sub_25C81EDD0();

                if (v95)
                {
                  sub_25C82DE8C();
                  v96 = sub_25C81EDD0();

                  if ((v96 & 1) == 0)
                  {
                    v207 = v92;
                    v208 = v94;
                    v205 = 0x657461766972702FLL;
                    v206 = 0xE800000000000000;
                    v203 = 0;
                    v204 = 0xE000000000000000;
                    sub_25C827F84();
                    v92 = sub_25C82E30C();
                    v98 = v97;

                    v94 = v98;
                  }
                }

                v207 = v92;
                v208 = v94;
                v205 = sub_25C82DE8C();
                v206 = v99;
                v203 = 0;
                v204 = 0xE000000000000000;
                sub_25C827F84();
                v100 = sub_25C82E30C();
                v168 = v101;
                v169 = v100;

                v102 = v170;
                v103 = v181;
                v167 = sub_25C82DEFC();
                v105 = v104;
                v106 = v198;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v207 = v106;
                sub_25C7FC864(v167, v105, v169, v168, isUniquelyReferenced_nonNull_native);

                sub_25C808E3C(v102, v103);
                v50 = v207;
                v88 = v177;
                v87 = v195;
              }
            }

            else
            {
              v87 = v195;
              v88 = v177;
            }

            (*v173)(v186, v180);
            v187(v87, v20);
            v181 = v88;
            v51 = v87;
          }
        }

        else
        {
          v54(v16, 1, 1, v20);
          sub_25C7E97F4(v16, &qword_27FC16040, &unk_25C830480);
        }

        sub_25C82DDBC();
        if (!v210)
        {
          goto LABEL_33;
        }
      }
    }

    v50 = MEMORY[0x277D84F98];
    v52 = v200;
LABEL_33:
    (*(v190 + 8))(v52, v191);
  }

  else
  {
    v50 = MEMORY[0x277D84F98];
  }

  v108 = v201;
  if (!*(v50 + 16))
  {

LABEL_58:
    v166 = *(v108 + 32);
    sub_25C827FD8(*(v108 + 24), v166);
    sub_25C827FD8(*(v108 + 16), v166);
    return;
  }

  v109 = 7104878;
  if (v196)
  {
    v110 = v192;
  }

  else
  {
    v110 = 7104878;
  }

  if (v196)
  {
    v111 = v196;
  }

  else
  {
    v111 = 0xE300000000000000;
  }

  v192 = v111;
  if (v197)
  {
    v109 = v193;
  }

  v195 = v109;
  if (v197)
  {
    v112 = v197;
  }

  else
  {
    v112 = 0xE300000000000000;
  }

  v198 = v50;
  if (v194)
  {
    v113 = v194;

    sub_25C82E25C();
    v114 = qword_281559838;
    sub_25C82E00C();

    v115 = [v113 data];
    if (!v115)
    {
      __break(1u);
      goto LABEL_60;
    }

    v116 = v115;
    v117 = sub_25C82DF0C();
    v119 = v118;

    v120 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    v121 = sub_25C82DEEC();
    v122 = [v120 initWithData_];

    sub_25C808E3C(v117, v119);
  }

  else
  {
    sub_25C7E96B8(0, &qword_27FC16350, 0x277CCACA8);

    v122 = sub_25C82E2CC();
  }

  v200 = v122;
  v123 = v189;
  v193 = v112;
  v191 = v110;
  if (!v189)
  {
    sub_25C7E96B8(0, &qword_27FC16350, 0x277CCACA8);
    v146 = sub_25C82E2CC();
    goto LABEL_57;
  }

  v197 = v189;
  sub_25C82E25C();
  v124 = qword_281559838;
  sub_25C82E00C();

  v125 = sub_25C82E25C();
  v126 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v125))
  {
LABEL_55:
    v138 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    v139 = v197;
    [v197 encodeWithCoder_];
    [v138 finishEncoding];
    v140 = [v138 encodedData];
    v141 = sub_25C82DF0C();
    v143 = v142;

    v144 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    v145 = sub_25C82DEEC();
    v146 = [v144 initWithData_];

    sub_25C808E3C(v141, v143);
LABEL_57:
    v147 = v146;
    v196 = *(v108 + 24);
    v197 = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v148 = swift_allocObject();
    *(v148 + 16) = v202;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    v149 = swift_initStackObject();
    *(v149 + 16) = xmmword_25C830C30;
    v209[0] = 0xD000000000000010;
    v209[1] = 0x800000025C8340A0;
    v150 = MEMORY[0x277D837D0];
    sub_25C82E35C();
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16358, &unk_25C830CE0);
    *(v149 + 96) = v151;
    *(v149 + 72) = v200;
    v209[0] = 0xD000000000000012;
    v209[1] = 0x800000025C834150;
    sub_25C82E35C();
    *(v149 + 168) = v151;
    *(v149 + 144) = v147;
    strcpy(v209, "cdStreamString");
    HIBYTE(v209[1]) = -18;
    sub_25C82E35C();
    *(v149 + 240) = v150;
    v152 = v192;
    *(v149 + 216) = v191;
    *(v149 + 224) = v152;
    strcpy(v209, "bmStreamString");
    HIBYTE(v209[1]) = -18;
    sub_25C82E35C();
    *(v149 + 312) = v150;
    v153 = v193;
    *(v149 + 288) = v195;
    *(v149 + 296) = v153;
    v154 = sub_25C8009E0(v149);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A8, &unk_25C8307A0);
    swift_arrayDestroy();
    *(v148 + 32) = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v155 = sub_25C82E1BC();

    v156 = sub_25C82DF4C();
    sub_25C82DE8C();
    v157 = sub_25C82E07C();

    [v196 saveDictionaries:v155 date:v156 eventIdentifier:v157];

    v108 = v201;
    v158 = *(v108 + 16);
    v159 = swift_allocObject();
    *(v159 + 16) = v202;
    v160 = swift_initStackObject();
    *(v160 + 16) = v202;
    v209[0] = sub_25C82DE8C();
    v209[1] = v161;
    sub_25C82E35C();
    *(v160 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16340, &unk_25C830CC0);
    *(v160 + 72) = v198;
    v162 = sub_25C8009E0(v160);
    swift_setDeallocating();
    sub_25C7E97F4(v160 + 32, &qword_27FC161A8, &unk_25C8307A0);
    *(v159 + 32) = v162;
    v163 = sub_25C82E1BC();

    v164 = sub_25C82DF4C();
    sub_25C82DE8C();
    v165 = sub_25C82E07C();

    [v158 saveDictionaries:v163 date:v164 eventIdentifier:v165];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_58;
  }

  v127 = v197;
  v196 = v126;
  v128 = swift_slowAlloc();
  v129 = swift_slowAlloc();
  v130 = swift_slowAlloc();
  v209[0] = v130;
  *v128 = 138412546;
  *(v128 + 4) = v127;
  *v129 = v123;
  *(v128 + 12) = 2080;
  v131 = v127;
  v132 = [v131 parameters];

  if (v132)
  {
    sub_25C7E96B8(0, &qword_27FC16360, 0x277CBFF58);
    sub_25C827EC0();
    sub_25C82E02C();

    v133 = sub_25C82E03C();
    v135 = v134;

    v136 = sub_25C7E77E4(v133, v135, v209);

    *(v128 + 14) = v136;
    v137 = v196;
    _os_log_impl(&dword_25C7D2000, v196, v125, "Saving model with config: %@ params: %s", v128, 0x16u);
    sub_25C7E97F4(v129, &qword_27FC16100, &qword_25C8305B8);
    MEMORY[0x25F890110](v129, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v130);
    MEMORY[0x25F890110](v130, -1, -1);
    MEMORY[0x25F890110](v128, -1, -1);

    v108 = v201;
    goto LABEL_55;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_25C81EDD0()
{

  v0 = sub_25C82E14C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_25C82E14C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_25C82E4EC();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_25C82E14C();
      v3 = v5;
    }

    while (v5);
  }

  sub_25C82E14C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_25C81EF2C()
{
  v2 = v0;
  v6 = MEMORY[0x277D84F90];
  v3 = objc_autoreleasePoolPush();
  sub_25C81EFF8(v2, &v6, &v5);
  objc_autoreleasePoolPop(v3);
  if (v1)
  {
  }

  v5 = v6;

  sub_25C81D698(&v5);

  return v5;
}

id sub_25C81EFF8(uint64_t a1, size_t *a2, uint64_t *a3)
{
  v182 = a3;
  v4 = v3;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v193 = *(v194 - 1);
  v7 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v206 = (&v175 - v8);
  v200 = sub_25C82DFBC();
  v9 = *(v200 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v200);
  v192 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v181 = &v175 - v13;
  v14 = sub_25C82DEAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v183 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v180 = &v175 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v175 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v175 - v24;
  result = [*(a1 + 24) queryDataWithPredicate_];
  if (result)
  {
    v27 = result;
    sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
    v28 = sub_25C82E1DC();

    if (v28 >> 62)
    {
      goto LABEL_100;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
    {
      v189 = v28 & 0xC000000000000001;
      v188 = v28 & 0xFFFFFFFFFFFFFF8;
      v201 = "rage";
      v195 = " PET proto object.";
      v191 = (v15 + 16);
      v196 = (v15 + 8);
      v178 = (v9 + 8);
      v184 = (v9 + 32);
      v9 = 0;
      *&v29 = 136315138;
      v179 = v29;
      *&v29 = 136315394;
      v177 = v29;
      v190 = v14;
      v175 = v23;
      v186 = a2;
      v208 = v25;
      v187 = v28;
      v185 = i;
      while (1)
      {
        if (v189)
        {
          v31 = MEMORY[0x25F88F6D0](v9, v28);
        }

        else
        {
          if (v9 >= *(v188 + 16))
          {
            goto LABEL_99;
          }

          v31 = *(v28 + 8 * v9 + 32);
        }

        v28 = v31;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v202 = v9 + 1;
        v203 = v9;
        v32 = [v31 identifier];
        sub_25C82E0AC();

        sub_25C82DE0C();

        v33 = [v28 metadata];
        if (!v33)
        {

          v132 = sub_25C82E27C();
          v133 = v180;
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v134 = qword_281559838;
          (*v191)(v133, v25, v14);
          if (os_log_type_enabled(v134, v132))
          {
            v206 = v134;
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v212 = v136;
            *v135 = v177;
            sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
            v137 = sub_25C82E4DC();
            v139 = v138;
            v207 = v28;
            v209 = *v196;
            v209(v133, v14);
            v140 = sub_25C7E77E4(v137, v139, &v212);

            *(v135 + 4) = v140;
            *(v135 + 12) = 2080;
            v141 = [v28 startDate];
            v142 = v181;
            sub_25C82DF8C();

            sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
            v143 = v200;
            v144 = sub_25C82E4DC();
            v146 = v145;
            (*v178)(v142, v143);
            v147 = sub_25C7E77E4(v144, v146, &v212);

            *(v135 + 14) = v147;
            v148 = v132;
            v149 = v206;
            _os_log_impl(&dword_25C7D2000, v206, v148, "Associated event with %s and date %s did not have any metadata!", v135, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F890110](v136, -1, -1);
            MEMORY[0x25F890110](v135, -1, -1);

            sub_25C7E7DEC();
            v126 = swift_allocError();
            *v150 = 15;
            swift_willThrow();

            result = v209(v208, v14);
LABEL_94:
            *v182 = v126;
            return result;
          }

          v173 = *v196;
          (*v196)(v133, v14);
LABEL_97:
          sub_25C7E7DEC();
          v126 = swift_allocError();
          *v174 = 15;
          swift_willThrow();

          result = v173(v25, v14);
          goto LABEL_94;
        }

        v34 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
        v35 = sub_25C82E1DC();

        if (*(v35 + 16) != 1)
        {

          v151 = sub_25C82E27C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v152 = qword_281559838;
          v153 = v175;
          (*v191)(v175, v25, v14);
          if (os_log_type_enabled(v152, v151))
          {
            v206 = v152;
            v154 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v212 = v155;
            *v154 = v177;
            sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
            v156 = sub_25C82E4DC();
            v158 = v157;
            v209 = *v196;
            v209(v153, v14);
            v159 = sub_25C7E77E4(v156, v158, &v212);

            *(v154 + 4) = v159;
            *(v154 + 12) = 2080;
            v160 = v28;
            v161 = [v28 startDate];
            v162 = v181;
            sub_25C82DF8C();

            sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
            v163 = v200;
            v164 = sub_25C82E4DC();
            v166 = v165;
            (*v178)(v162, v163);
            v167 = sub_25C7E77E4(v164, v166, &v212);

            *(v154 + 14) = v167;
            v168 = v151;
            v169 = v206;
            _os_log_impl(&dword_25C7D2000, v206, v168, "Associated event with %s and date %s had metadata with more than one object!", v154, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F890110](v155, -1, -1);
            MEMORY[0x25F890110](v154, -1, -1);

            sub_25C7E7DEC();
            v126 = swift_allocError();
            *v170 = 15;
            swift_willThrow();

            result = v209(v208, v14);
            goto LABEL_94;
          }

          v173 = *v196;
          (*v196)(v153, v14);
          goto LABEL_97;
        }

        v36 = *(v35 + 32);

        v37 = sub_25C803374(v36);

        if (*(v37 + 16) && (v38 = sub_25C8139BC(0xD000000000000010, v201 | 0x8000000000000000), (v39 & 1) != 0) && (sub_25C7E9854(*(v37 + 56) + 32 * v38, &v212), (swift_dynamicCast() & 1) != 0))
        {

          sub_25C82E25C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v40 = qword_281559838;
          sub_25C82E00C();

          v41 = 0;
        }

        else
        {
          if (!*(v37 + 16) || (v42 = sub_25C8139BC(0xD000000000000010, v201 | 0x8000000000000000), (v43 & 1) == 0) || (sub_25C7E9854(*(v37 + 56) + 32 * v42, &v212), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
          {

            sub_25C82E27C();
            v124 = v208;
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v125 = qword_281559838;
            sub_25C82E00C();

            sub_25C7E7DEC();
            v126 = swift_allocError();
            *v127 = 15;
            swift_willThrow();

            result = (*v196)(v124, v14);
            goto LABEL_94;
          }

          v44 = v210;
          v45 = MEMORY[0x25F88F1F0](v210);
          v47 = v46;
          v48 = objc_allocWithZone(ODCurareReportFillerModelInformation);
          v49 = sub_25C82DEEC();
          sub_25C808E3C(v45, v47);
          v41 = [v48 initWithData_];

          if (!v41)
          {

            sub_25C82E27C();
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v171 = qword_281559838;
            sub_25C82E00C();

            sub_25C7E7DEC();
            v126 = swift_allocError();
            *v172 = 11;
            swift_willThrow();

            result = (*v196)(v208, v14);
            goto LABEL_94;
          }
        }

        v50 = *(v37 + 16);
        v207 = v28;
        if (v50 && (v51 = sub_25C8139BC(0xD000000000000012, v195 | 0x8000000000000000), (v52 & 1) != 0) && (sub_25C7E9854(*(v37 + 56) + 32 * v51, &v212), (swift_dynamicCast() & 1) != 0))
        {

          sub_25C82E25C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v53 = qword_281559838;
          sub_25C82E00C();

          v54 = 0;
          if (!*(v37 + 16))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (!*(v37 + 16) || (v55 = sub_25C8139BC(0xD000000000000012, v195 | 0x8000000000000000), (v56 & 1) == 0) || (sub_25C7E9854(*(v37 + 56) + 32 * v55, &v212), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
          {
            v128 = v41;

            sub_25C82E27C();
            v129 = v208;
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v130 = qword_281559838;
            sub_25C82E00C();

            sub_25C7E7DEC();
            v126 = swift_allocError();
            *v131 = 15;
            swift_willThrow();

            result = (*v196)(v129, v14);
            goto LABEL_94;
          }

          v57 = v210;
          v58 = MEMORY[0x25F88F1F0](v210);
          v60 = v59;
          v61 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
          v62 = sub_25C827920();
          if (v4)
          {
            sub_25C808E3C(v58, v60);
            v63 = v4;
          }

          else
          {
            v75 = v62;
            sub_25C808E3C(v58, v60);
            [v75 setRequiresSecureCoding_];
            v76 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithCoder_];
            if (v76)
            {
              v54 = v76;

              if (!*(v37 + 16))
              {
                goto LABEL_49;
              }

              goto LABEL_43;
            }

            sub_25C82E27C();
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v122 = qword_281559838;
            sub_25C82E00C();

            sub_25C7E7DEC();
            v63 = swift_allocError();
            *v123 = 11;
            swift_willThrow();
          }

          v209 = 0;
          v64 = sub_25C82E27C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v65 = qword_281559838;
          if (os_log_type_enabled(qword_281559838, v64))
          {
            v66 = v65;
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v205 = v41;
            v69 = v68;
            v212 = v68;
            *v67 = v179;
            swift_getErrorValue();
            v70 = sub_25C82E52C();
            v72 = sub_25C7E77E4(v70, v71, &v212);

            *(v67 + 4) = v72;
            v14 = v190;
            _os_log_impl(&dword_25C7D2000, v66, v64, "Failed to unarchive model metadata using NSKeyedUnarchiver with error %s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v69);
            v73 = v69;
            v41 = v205;
            MEMORY[0x25F890110](v73, -1, -1);
            v74 = v67;
            v28 = v207;
            MEMORY[0x25F890110](v74, -1, -1);
          }

          else
          {
          }

          v54 = 0;
          v4 = v209;
          if (!*(v37 + 16))
          {
            goto LABEL_49;
          }
        }

LABEL_43:
        v77 = sub_25C8139BC(0x6D61657274536463, 0xEE00676E69727453);
        if ((v78 & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_25C7E9854(*(v37 + 56) + 32 * v77, &v212);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_49;
        }

        v80 = v210;
        v79 = v211;
        if (v210 == 7104878 && v211 == 0xE300000000000000 || (sub_25C82E4EC() & 1) != 0)
        {

LABEL_49:
          v80 = 0;
          v198 = 0;
          goto LABEL_50;
        }

        v198 = v79;
LABEL_50:
        v81 = *(v37 + 16);
        v209 = v4;
        v199 = v54;
        v197 = v80;
        if (!v81)
        {
          goto LABEL_56;
        }

        v82 = sub_25C8139BC(0x6D61657274536D62, 0xEE00676E69727453);
        if ((v83 & 1) == 0)
        {
          goto LABEL_56;
        }

        sub_25C7E9854(*(v37 + 56) + 32 * v82, &v212);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v85 = v210, v84 = v211, v210 == 7104878) && v211 == 0xE300000000000000 || (sub_25C82E4EC())
        {
LABEL_56:

LABEL_57:
          v84 = 0;
          v86 = 0;
          v87 = v41;
          if (!v41)
          {
            goto LABEL_58;
          }

          goto LABEL_64;
        }

        v86 = v85;
        v87 = v41;
        if (!v41)
        {
LABEL_58:
          v204 = v84;
          v205 = v86;
          v88 = v87;
          v89 = sub_25C82E25C();
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v90 = qword_281559838;
          v91 = v183;
          (*v191)(v183, v208, v14);
          if (os_log_type_enabled(v90, v89))
          {
            v176 = v90;
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v212 = v93;
            *v92 = v177;
            sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
            v94 = sub_25C82E4DC();
            v96 = v95;
            (*v196)(v91, v14);
            v97 = sub_25C7E77E4(v94, v96, &v212);

            *(v92 + 4) = v97;
            *(v92 + 12) = 2080;
            v98 = [v207 startDate];
            v99 = v181;
            sub_25C82DF8C();

            sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
            v100 = v200;
            v101 = sub_25C82E4DC();
            v103 = v102;
            (*v178)(v99, v100);
            v104 = sub_25C7E77E4(v101, v103, &v212);
            v28 = v207;

            *(v92 + 14) = v104;
            v105 = v176;
            _os_log_impl(&dword_25C7D2000, v176, v89, "Associated event with %s and date %s failed to extract modelInformation!", v92, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F890110](v93, -1, -1);
            MEMORY[0x25F890110](v92, -1, -1);
          }

          else
          {
            (*v196)(v91, v14);
          }

          v87 = v88;
          v84 = v204;
          v86 = v205;
        }

LABEL_64:
        v204 = v84;
        v205 = v86;
        v106 = [v28 startDate];
        v107 = v192;
        sub_25C82DF8C();

        v108 = v194[12];
        v109 = v194[16];
        v110 = v194[20];
        v111 = v206;
        v112 = (&v206->isa + v194[24]);
        v113 = v14;
        v114 = (&v206->isa + v194[28]);
        (*v184)(v206, v107, v200);
        (*v191)(v111 + v108, v208, v113);
        *(&v111->isa + v109) = v87;
        *(&v111->isa + v110) = v199;
        v115 = v204;
        *v112 = v205;
        v112[1] = v115;
        v116 = v198;
        *v114 = v197;
        v114[1] = v116;
        a2 = v186;
        v117 = *v186;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v117;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v117 = sub_25C7E7554(0, v117[2] + 1, 1, v117);
          *a2 = v117;
        }

        v25 = v208;
        v4 = v209;
        v28 = v187;
        v120 = v117[2];
        v119 = v117[3];
        v15 = v120 + 1;
        v14 = v190;
        v23 = v207;
        if (v120 >= v119 >> 1)
        {
          *a2 = sub_25C7E7554(v119 > 1, v120 + 1, 1, v117);
        }

        (*v196)(v25, v14);
        v121 = *a2;
        v121[2] = v15;
        sub_25C8276BC(v206, v121 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v120);
        v9 = v203 + 1;
        if (v202 == v185)
        {
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      ;
    }
  }

  return result;
}

uint64_t sub_25C820990(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v65 = a2;
  v66 = a3;
  v67 = a1;
  v7 = sub_25C82DEAC();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16330, &qword_25C830CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v14);
  v75 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v64 - v20;
  v74 = a4;
  sub_25C82DE8C();
  v22 = sub_25C82E07C();

  v23 = a5;
  sub_25C7E92DC(a5, v21, &qword_27FC16048, qword_25C8309D0);
  v24 = sub_25C82DFBC();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v21, 1, v24) != 1)
  {
    v26 = sub_25C82DF4C();
    (*(v25 + 8))(v21, v24);
  }

  v64 = v25;
  v27 = [objc_opt_self() predicateWithIdentifier:v22 withDate:v26];

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v29 = *(v28 - 1);
  v30 = v75;
  (*(v29 + 56))(v75, 1, 1, v28);
  v31 = objc_autoreleasePoolPush();
  v32 = v72;
  v33 = v73;
  v72 = v27;
  sub_25C82102C(v32, v27, v23, v74, v30, &v76);
  if (v33)
  {
    objc_autoreleasePoolPop(v31);
LABEL_14:

    return sub_25C7E97F4(v30, &qword_27FC16330, &qword_25C830CB0);
  }

  objc_autoreleasePoolPop(v31);
  sub_25C7E92DC(v30, v16, &qword_27FC16330, &qword_25C830CB0);
  v34 = *(v29 + 48);
  v35 = v30;
  v36 = v34(v16, 1, v28);
  sub_25C7E97F4(v16, &qword_27FC16330, &qword_25C830CB0);
  if (v36 == 1)
  {
    v37 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v38 = qword_281559838;
    v39 = v69;
    v40 = v70;
    v41 = v71;
    (*(v70 + 16))(v69, v74, v71);
    v42 = os_log_type_enabled(v38, v37);
    v30 = v75;
    if (v42)
    {
      v43 = v38;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v76.isa = v45;
      *v44 = 136315138;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
      v46 = sub_25C82E4DC();
      v47 = v39;
      v49 = v48;
      (*(v40 + 8))(v47, v41);
      v50 = sub_25C7E77E4(v46, v49, &v76);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_25C7D2000, v43, v37, "returnValue was somehow still nil at the end of searching for events assocaited with %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x25F890110](v45, -1, -1);
      MEMORY[0x25F890110](v44, -1, -1);
    }

    else
    {
      (*(v40 + 8))(v39, v41);
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v63 = 16;
    swift_willThrow();
    goto LABEL_14;
  }

  v51 = v68;
  sub_25C7E92DC(v35, v68, &qword_27FC16330, &qword_25C830CB0);
  result = v34(v51, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_25C7E97F4(v35, &qword_27FC16330, &qword_25C830CB0);

    v53 = v28[12];
    v54 = *(v51 + v28[16]);
    v75 = *(v51 + v28[20]);
    v55 = (v51 + v28[24]);
    v56 = *v55;
    v57 = v55[1];
    v58 = (v51 + v28[28]);
    v59 = *v58;
    v60 = v58[1];
    (*(v64 + 32))(v65, v51, v24);
    result = (*(v70 + 32))(v66, v51 + v53, v71);
    v61 = v67;
    v62 = v75;
    *v67 = v54;
    v61[1] = v62;
    v61[2] = v56;
    v61[3] = v57;
    v61[4] = v59;
    v61[5] = v60;
  }

  return result;
}

id sub_25C82102C(uint64_t a1, uint64_t a2, NSObject *a3, NSObject *a4, uint64_t a5, NSObject *a6)
{
  v240 = a6;
  v228 = a5;
  v237 = a4;
  v242 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16330, &qword_25C830CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v227 = &v226 - v10;
  v11 = sub_25C82DFBC();
  v238 = *(v11 - 8);
  v239 = v11;
  v12 = *(v238 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v232 = &v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v229 = &v226 - v16;
  MEMORY[0x28223BE20](v15);
  v230 = &v226 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v234 = &v226 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v226 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v226 - v28;
  v243 = sub_25C82DEAC();
  v241 = *(v243 - 1);
  v30 = *(v241 + 64);
  v31 = MEMORY[0x28223BE20](v243);
  v233 = &v226 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v231 = &v226 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v235 = &v226 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v226 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v226 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v226 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v226 - v46;
  result = [*(a1 + 24) queryDataWithPredicate_];
  if (!result)
  {
    return result;
  }

  v49 = result;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v50 = sub_25C82E1DC();

  v51 = v50 >> 62;
  if (!(v50 >> 62))
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_4;
    }

LABEL_90:

    v195 = *(v238 + 48);
    v196 = v195(v242, 1, v239);
    LODWORD(v42) = sub_25C82E27C();
    if (v196 != 1)
    {
      v206 = v241;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v207 = qword_281559838;
      v208 = v243;
      (*(v206 + 16))(v47, v237, v243);
      sub_25C7E92DC(v242, v29, &qword_27FC16048, qword_25C8309D0);
      if (!os_log_type_enabled(v207, v42))
      {
        sub_25C7E97F4(v29, &qword_27FC16048, qword_25C8309D0);
        (*(v206 + 8))(v47, v208);
        goto LABEL_102;
      }

      LODWORD(v242) = v42;
      v237 = v207;
      v209 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      *&v247[0] = v236;
      *v209 = 136315394;
      v210 = sub_25C82DE8C();
      v211 = v206;
      v213 = v212;
      (*(v211 + 8))(v47, v208);
      v214 = sub_25C7E77E4(v210, v213, v247);

      *(v209 + 4) = v214;
      *(v209 + 12) = 2080;
      sub_25C7E92DC(v29, v27, &qword_27FC16048, qword_25C8309D0);
      v215 = v239;
      result = v195(v27, 1, v239);
      if (result != 1)
      {
        v216 = v238;
        v217 = v230;
        (*(v238 + 32))(v230, v27, v215);
        sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
        v218 = sub_25C82E4DC();
        v220 = v219;
        (*(v216 + 8))(v217, v215);
        sub_25C7E97F4(v29, &qword_27FC16048, qword_25C8309D0);
        v221 = sub_25C7E77E4(v218, v220, v247);

        *(v209 + 14) = v221;
        v85 = v237;
        _os_log_impl(&dword_25C7D2000, v237, v242, "Unable to find model URL at %s with date %s", v209, 0x16u);
        v222 = v236;
        swift_arrayDestroy();
        MEMORY[0x25F890110](v222, -1, -1);
        v87 = v209;
        goto LABEL_99;
      }

      __break(1u);
      goto LABEL_117;
    }

    v51 = v241;
    if (qword_2815594B8 == -1)
    {
LABEL_92:
      v197 = qword_281559838;
      v198 = v243;
      (*(v51 + 16))(v45, v237, v243);
      if (!os_log_type_enabled(v197, v42))
      {
        (*(v51 + 8))(v45, v198);
        goto LABEL_102;
      }

      v85 = v197;
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *&v247[0] = v200;
      *v199 = 136315138;
      v201 = v42;
      v202 = sub_25C82DE8C();
      v204 = v203;
      (*(v51 + 8))(v45, v198);
      v205 = sub_25C7E77E4(v202, v204, v247);

      *(v199 + 4) = v205;
      _os_log_impl(&dword_25C7D2000, v85, v201, "Unable to find model URL at %s", v199, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v200);
      MEMORY[0x25F890110](v200, -1, -1);
      v87 = v199;
      goto LABEL_99;
    }

LABEL_110:
    swift_once();
    goto LABEL_92;
  }

  v52 = sub_25C82E43C();
  if (!v52)
  {
    goto LABEL_90;
  }

LABEL_4:
  if (v52 >= 2)
  {

    v53 = *(v238 + 48);
    v54 = v53(v242, 1, v239);
    v55 = sub_25C82E27C();
    if (v54 == 1)
    {
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v56 = qword_281559838;
      v57 = v241;
      v58 = v243;
      (*(v241 + 16))(v39, v237, v243);
      if (os_log_type_enabled(v56, v55))
      {
        v59 = v56;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v247[0] = v61;
        *v60 = 136315138;
        v62 = sub_25C82DE8C();
        v64 = v63;
        (*(v57 + 8))(v39, v58);
        v65 = sub_25C7E77E4(v62, v64, v247);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_25C7D2000, v59, v55, "Found more than one model URL at %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x25F890110](v61, -1, -1);
        MEMORY[0x25F890110](v60, -1, -1);
      }

      else
      {
        (*(v57 + 8))(v39, v58);
      }

      goto LABEL_102;
    }

    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v67 = qword_281559838;
    v68 = v241;
    v69 = v243;
    (*(v241 + 16))(v42, v237, v243);
    v70 = v234;
    sub_25C7E92DC(v242, v234, &qword_27FC16048, qword_25C8309D0);
    if (!os_log_type_enabled(v67, v55))
    {
      sub_25C7E97F4(v70, &qword_27FC16048, qword_25C8309D0);
      (*(v68 + 8))(v42, v69);
LABEL_102:
      sub_25C7E7DEC();
      v122 = swift_allocError();
      *v223 = 16;
      result = swift_willThrow();
      goto LABEL_103;
    }

    LODWORD(v236) = v55;
    v242 = v67;
    v71 = v70;
    v72 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    *&v247[0] = v237;
    *v72 = 136315394;
    v73 = sub_25C82DE8C();
    v74 = v68;
    v76 = v75;
    (*(v74 + 8))(v42, v69);
    v77 = sub_25C7E77E4(v73, v76, v247);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    sub_25C7E92DC(v71, v22, &qword_27FC16048, qword_25C8309D0);
    v78 = v239;
    result = v53(v22, 1, v239);
    if (result != 1)
    {
      v79 = v238;
      v80 = v229;
      (*(v238 + 32))(v229, v22, v78);
      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
      v81 = sub_25C82E4DC();
      v83 = v82;
      (*(v79 + 8))(v80, v78);
      sub_25C7E97F4(v71, &qword_27FC16048, qword_25C8309D0);
      v84 = sub_25C7E77E4(v81, v83, v247);

      *(v72 + 14) = v84;
      v85 = v242;
      _os_log_impl(&dword_25C7D2000, v242, v236, "Found more than one model URL at %s with date %s", v72, 0x16u);
      v86 = v237;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v86, -1, -1);
      v87 = v72;
LABEL_99:
      MEMORY[0x25F890110](v87, -1, -1);

      goto LABEL_102;
    }

LABEL_117:
    __break(1u);
    return result;
  }

  if (v51)
  {
    v66 = sub_25C82E43C();
  }

  else
  {
    v66 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = v241;
  v89 = v243;
  v90 = v235;
  if (v66)
  {
    if ((v50 & 0xC000000000000001) == 0)
    {
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v91 = *(v50 + 32);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_110;
    }
  }

  else
  {
    __break(1u);
  }

  v91 = MEMORY[0x25F88F6D0](0, v50);
LABEL_22:
  v92 = v91;
  v93 = [v91 identifier];
  sub_25C82E0AC();

  sub_25C82DE0C();

  v94 = [v92 metadata];
  if (!v94)
  {

    v103 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v104 = qword_281559838;
    v105 = v233;
    (*(v88 + 16))(v233, v90, v89);
    if (os_log_type_enabled(v104, v103))
    {
      v242 = v104;
      v106 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *&v247[0] = v241;
      *v106 = 136315394;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
      v107 = sub_25C82E4DC();
      v109 = v108;
      v243 = *(v88 + 8);
      (v243)(v105, v89);
      v110 = sub_25C7E77E4(v107, v109, v247);

      *(v106 + 4) = v110;
      *(v106 + 12) = 2080;
      v111 = v92;
      v112 = [v92 startDate];
      v113 = v232;
      sub_25C82DF8C();

      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
      v114 = v239;
      v115 = sub_25C82E4DC();
      v117 = v116;
      (*(v238 + 8))(v113, v114);
      v118 = sub_25C7E77E4(v115, v117, v247);

      *(v106 + 14) = v118;
      v119 = v103;
      v120 = v242;
      _os_log_impl(&dword_25C7D2000, v242, v119, "Associated event with %s and date %s did not have any metadata!", v106, 0x16u);
      v121 = v241;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v121, -1, -1);
      MEMORY[0x25F890110](v106, -1, -1);

      sub_25C7E7DEC();
      v122 = swift_allocError();
      *v123 = 16;
      swift_willThrow();

      result = (v243)(v235, v89);
LABEL_103:
      v240->isa = v122;
      return result;
    }

    v157 = *(v88 + 8);
    v157(v105, v89);
LABEL_53:
    sub_25C7E7DEC();
    v122 = swift_allocError();
    *v158 = 16;
    swift_willThrow();

    result = (v157)(v90, v89);
    goto LABEL_103;
  }

  v95 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v96 = sub_25C82E1DC();

  if (v96[2].isa != 1)
  {

    v124 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v125 = qword_281559838;
    v126 = v231;
    (*(v88 + 16))(v231, v90, v89);
    if (os_log_type_enabled(v125, v124))
    {
      v242 = v125;
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v247[0] = v128;
      *v127 = 136315394;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
      v129 = sub_25C82E4DC();
      v130 = v126;
      v132 = v131;
      v237 = v92;
      v243 = *(v88 + 8);
      (v243)(v130, v89);
      v133 = sub_25C7E77E4(v129, v132, v247);

      *(v127 + 4) = v133;
      *(v127 + 12) = 2080;
      v134 = [v92 startDate];
      v135 = v232;
      sub_25C82DF8C();

      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
      v136 = v239;
      v137 = sub_25C82E4DC();
      v139 = v138;
      (*(v238 + 8))(v135, v136);
      v140 = sub_25C7E77E4(v137, v139, v247);

      *(v127 + 14) = v140;
      v141 = v242;
      _os_log_impl(&dword_25C7D2000, v242, v124, "Associated event with %s and date %s had metadata with more than one object!", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F890110](v128, -1, -1);
      MEMORY[0x25F890110](v127, -1, -1);

      sub_25C7E7DEC();
      v122 = swift_allocError();
      *v142 = 16;
      swift_willThrow();

      result = (v243)(v235, v89);
      goto LABEL_103;
    }

    v157 = *(v88 + 8);
    v157(v126, v89);
    goto LABEL_53;
  }

  isa = v96[4].isa;

  v99 = sub_25C803374(v98);

  if (*(v99 + 16) && (v100 = sub_25C8139BC(0xD000000000000010, 0x800000025C8340A0), (v101 & 1) != 0) && (sub_25C7E9854(*(v99 + 56) + 32 * v100, v247), (swift_dynamicCast() & 1) != 0))
  {

    v102 = 0;
  }

  else
  {
    if (!*(v99 + 16) || (v143 = sub_25C8139BC(0xD000000000000010, 0x800000025C8340A0), (v144 & 1) == 0) || (sub_25C7E9854(*(v99 + 56) + 32 * v143, v247), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
    {

      sub_25C82E27C();
      v154 = v243;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v155 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      v122 = swift_allocError();
      *v156 = 15;
      swift_willThrow();

      goto LABEL_50;
    }

    v242 = v96;
    v145 = *&v246[0];
    v146 = MEMORY[0x25F88F1F0](*&v246[0]);
    v148 = v147;
    v149 = objc_allocWithZone(ODCurareReportFillerModelInformation);
    v150 = sub_25C82DEEC();
    sub_25C808E3C(v146, v148);
    v102 = [v149 initWithData_];

    if (!v102)
    {

      sub_25C82E27C();
      v102 = v235;
      if (qword_2815594B8 == -1)
      {
LABEL_67:
        v178 = qword_281559838;
        sub_25C82E00C();

        sub_25C7E7DEC();
        v122 = swift_allocError();
        *v179 = 11;
        swift_willThrow();

        result = (*(v88 + 8))(v102, v243);
        goto LABEL_103;
      }

LABEL_115:
      swift_once();
      goto LABEL_67;
    }

    v90 = v235;
    v96 = v242;
  }

  if (*(v99 + 16))
  {
    v145 = v99;
    v151 = sub_25C8139BC(0xD000000000000012, 0x800000025C834150);
    if (v152)
    {
      sub_25C7E9854(*(v99 + 56) + 32 * v151, v247);
      if (swift_dynamicCast())
      {

        v153 = 0;
        goto LABEL_73;
      }
    }
  }

  if (!*(v99 + 16) || (v159 = sub_25C8139BC(0xD000000000000012, 0x800000025C834150), (v160 & 1) == 0) || (sub_25C7E9854(*(v99 + 56) + 32 * v159, v247), sub_25C7E96B8(0, &qword_281559490, 0x277CBEA90), (swift_dynamicCast() & 1) == 0))
  {

    sub_25C82E27C();
    v154 = v243;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v176 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    v122 = swift_allocError();
    *v177 = 15;
    swift_willThrow();

LABEL_50:
    result = (*(v88 + 8))(v90, v154);
    goto LABEL_103;
  }

  v242 = v96;
  v239 = v102;
  v161 = *&v246[0];
  v162 = MEMORY[0x25F88F1F0](*&v246[0]);
  v164 = v163;
  v165 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v166 = v236;
  v167 = sub_25C827920();
  v236 = v166;
  if (v166)
  {
    sub_25C808E3C(v162, v164);
    v168 = v236;
LABEL_59:
    v236 = 0;
    v169 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v145 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v169))
    {
      v240 = v145;
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v237 = v92;
      v172 = v171;
      *&v247[0] = v171;
      *v170 = 136315138;
      swift_getErrorValue();
      v173 = sub_25C82E52C();
      v88 = sub_25C7E77E4(v173, v174, v247);

      *(v170 + 4) = v88;
      v145 = v240;
      _os_log_impl(&dword_25C7D2000, v240, v169, "Failed to unarchive model metadata using NSKeyedUnarchiver with error %s", v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v172);
      v175 = v172;
      v92 = v237;
      MEMORY[0x25F890110](v175, -1, -1);
      MEMORY[0x25F890110](v170, -1, -1);
    }

    else
    {
    }

    v153 = 0;
    goto LABEL_72;
  }

  v145 = v167;
  sub_25C808E3C(v162, v164);
  [v145 setRequiresSecureCoding_];
  v180 = [objc_allocWithZone(MEMORY[0x277CBFF38]) initWithCoder_];
  if (!v180)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v224 = qword_281559838;
    sub_25C82E00C();

    sub_25C7E7DEC();
    v168 = swift_allocError();
    *v225 = 11;
    swift_willThrow();

    goto LABEL_59;
  }

  v153 = v180;

LABEL_72:
  v102 = v239;
LABEL_73:
  v239 = v102;
  if (!*(v99 + 16))
  {
    __break(1u);
    goto LABEL_112;
  }

  v242 = v153;
  v102 = 0xEE00676E69727453;
  v145 = v99;
  v181 = sub_25C8139BC(0x6D61657274536463, 0xEE00676E69727453);
  if ((v182 & 1) == 0)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v88 = 7104878;
  sub_25C7E9854(*(v99 + 56) + 32 * v181, v246);
  sub_25C801F34(v246, v247);
  swift_dynamicCast();
  v145 = v244;
  v183 = v245;
  if (v244 == 7104878 && v245 == 0xE300000000000000 || (sub_25C82E4EC() & 1) != 0)
  {
    v145 = 0;
    v238 = 0;
  }

  else
  {

    v238 = v183;
  }

  v240 = v145;
  if (!*(v99 + 16))
  {
    goto LABEL_113;
  }

  v145 = sub_25C8139BC(0x6D61657274536D62, 0xEE00676E69727453);
  v102 = v184;

  if ((v102 & 1) == 0)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  sub_25C7E9854(*(v99 + 56) + 32 * v145, v246);

  sub_25C801F34(v246, v247);
  swift_dynamicCast();
  v186 = v244;
  v185 = v245;
  if (v244 == 7104878 && v245 == 0xE300000000000000 || (sub_25C82E4EC() & 1) != 0)
  {
    v187 = v92;

    v186 = 0;
    v185 = 0;
  }

  else
  {
    v187 = v92;
  }

  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v189 = v188[12];
  v234 = v188[16];
  v233 = v188[20];
  v190 = v227;
  v191 = &v227[v188[24]];
  v192 = &v227[v188[28]];
  v193 = [v187 startDate];
  sub_25C82DF8C();

  (*(v241 + 32))(v190 + v189, v235, v243);
  *(v190 + v234) = v239;
  *&v233[v190] = v242;
  *v191 = v186;
  *(v191 + 1) = v185;
  v194 = v238;
  *v192 = v240;
  *(v192 + 1) = v194;
  (*(*(v188 - 1) + 56))(v190, 0, 1, v188);
  return sub_25C8279E0(v190, v228);
}

uint64_t sub_25C822E90@<X0>(NSObject *a1@<X0>, NSObject *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>)
{
  v185 = a3;
  v183 = a1;
  v166 = a4;
  v187[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25C82DFBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v162 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v169 = &v158 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v161 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v165 = &v158 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v175 = (&v158 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v170 = &v158 - v20;
  MEMORY[0x28223BE20](v19);
  v178 = (&v158 - v21);
  v22 = sub_25C82DEAC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v163 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v164 = &v158 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v158 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v158 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v158 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v158 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v168 = &v158 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v171 = &v158 - v45;
  MEMORY[0x28223BE20](v44);
  v182 = v23;
  v46 = *(v23 + 56);
  v176 = &v158 - v47;
  v184 = v22;
  v46();
  v172 = v6;
  v48 = *(v6 + 48);
  v180 = v6 + 48;
  v181 = a2;
  v177 = v5;
  v179 = v48;
  LODWORD(v5) = v48(a2, 1, v5);
  v49 = sub_25C82E25C();
  v50 = v49;
  if (v5 == 1)
  {
    v51 = v49;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v52 = qword_281559838;
    v53 = v182;
    v54 = *(v182 + 16);
    v55 = v184;
    v54(v34, v183, v184);
    v167 = v54;
    v54(v31, v185, v55);
    if (os_log_type_enabled(v52, v51))
    {
      v56 = v52;
      v57 = swift_slowAlloc();
      v160 = v51;
      v58 = v57;
      v59 = swift_slowAlloc();
      v187[0] = v59;
      *v58 = 136315394;
      v60 = sub_25C82DE8C();
      v62 = v61;
      v63 = *(v182 + 8);
      (v63)(v34, v184);
      v64 = sub_25C7E77E4(v60, v62, v187);
      v55 = v184;

      *(v58 + 4) = v64;
      *(v58 + 12) = 2080;
      v65 = sub_25C82DE8C();
      v67 = v66;
      v178 = v63;
      (v63)(v31, v55);
      v68 = sub_25C7E77E4(v65, v67, v187);

      *(v58 + 14) = v68;
      _os_log_impl(&dword_25C7D2000, v56, v160, "loading Model (%s) to (%s)", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F890110](v59, -1, -1);
      MEMORY[0x25F890110](v58, -1, -1);
    }

    else
    {
      v95 = *(v53 + 8);
      (v95)(v31, v55);
      v178 = v95;
      (v95)(v34, v55);
    }

    v94 = v177;
  }

  else
  {
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v69 = qword_281559838;
    v71 = v182;
    v70 = v183;
    v72 = *(v182 + 16);
    v55 = v184;
    v72(v39, v183, v184);
    sub_25C7E92DC(v181, v178, &qword_27FC16048, qword_25C8309D0);
    v167 = v72;
    v72(v37, v185, v55);
    if (!os_log_type_enabled(v69, v50))
    {
      v96 = *(v71 + 8);
      (v96)(v37, v55);
      sub_25C7E97F4(v178, &qword_27FC16048, qword_25C8309D0);
      v178 = v96;
      (v96)(v39, v55);
      v94 = v177;
      goto LABEL_15;
    }

    v160 = v50;
    v159 = v69;
    v73 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v187[0] = v158;
    *v73 = 136315650;
    v74 = sub_25C82DE8C();
    v76 = v75;
    v77 = *(v71 + 8);
    (v77)(v39, v55);
    v78 = sub_25C7E77E4(v74, v76, v187);

    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    v79 = v170;
    sub_25C7E92DC(v178, v170, &qword_27FC16048, qword_25C8309D0);
    v80 = v177;
    result = v179(v79, 1, v177);
    if (result == 1)
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v82 = v172;
    v83 = v169;
    (*(v172 + 32))(v169, v79, v80);
    sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
    v84 = sub_25C82E4DC();
    v86 = v85;
    (*(v82 + 8))(v83, v80);
    sub_25C7E97F4(v178, &qword_27FC16048, qword_25C8309D0);
    v87 = sub_25C7E77E4(v84, v86, v187);

    *(v73 + 14) = v87;
    *(v73 + 22) = 2080;
    v88 = sub_25C82DE8C();
    v90 = v89;
    v55 = v184;
    v178 = v77;
    (v77)(v37, v184);
    v91 = sub_25C7E77E4(v88, v90, v187);

    *(v73 + 24) = v91;
    v92 = v159;
    _os_log_impl(&dword_25C7D2000, v159, v160, "loading Model (%s from date (%s) to (%s)", v73, 0x20u);
    v93 = v158;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v93, -1, -1);
    MEMORY[0x25F890110](v73, -1, -1);

    v94 = v80;
  }

  v70 = v183;
LABEL_15:
  v97 = v181;
  v98 = v175;
  v99 = [objc_opt_self() defaultManager];
  v186 = 0;
  sub_25C82DE8C();
  v100 = sub_25C82E07C();

  v101 = [v99 fileExistsAtPath:v100 isDirectory:&v186];

  if (v101 && v186 == 1)
  {
    sub_25C82DE8C();
    v102 = sub_25C82E07C();

    v187[0] = 0;
    v103 = v99;
    v104 = [v99 removeItemAtPath:v102 error:v187];

    if (!v104)
    {
      v134 = v187[0];
      sub_25C82DDAC();

      swift_willThrow();
      v111 = v176;
      goto LABEL_41;
    }

    v105 = v187[0];
    v99 = v103;
  }

  sub_25C82DE8C();
  v106 = sub_25C82E07C();

  sub_25C7E92DC(v97, v98, &qword_27FC16048, qword_25C8309D0);
  if (v179(v98, 1, v94) == 1)
  {
    v107 = 0;
  }

  else
  {
    v107 = sub_25C82DF4C();
    (*(v172 + 8))(v98, v94);
  }

  v103 = [objc_opt_self() predicateWithIdentifier:v106 withDate:v107];

  v108 = objc_autoreleasePoolPush();
  v109 = v174;
  v110 = v97;
  v111 = v176;
  sub_25C824058(v173, v103, v110, v70, v185, v176, v187);
  if (v109)
  {
    objc_autoreleasePoolPop(v108);

LABEL_41:
    result = sub_25C7E97F4(v111, &qword_27FC16040, &unk_25C830480);
    goto LABEL_42;
  }

  v175 = v103;
  v185 = v99;
  objc_autoreleasePoolPop(v108);
  v112 = v171;
  sub_25C7E92DC(v111, v171, &qword_27FC16040, &unk_25C830480);
  v113 = v55;
  v114 = *(v182 + 48);
  v115 = v114(v112, 1, v113);
  sub_25C7E97F4(v112, &qword_27FC16040, &unk_25C830480);
  if (v115 != 1)
  {
    v133 = v168;
    sub_25C7E92DC(v111, v168, &qword_27FC16040, &unk_25C830480);
    result = v114(v133, 1, v113);
    if (result != 1)
    {
      sub_25C7E97F4(v111, &qword_27FC16040, &unk_25C830480);

      result = (*(v182 + 32))(v166, v133, v113);
LABEL_42:
      v157 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_44;
  }

  v116 = v111;
  v117 = v181;
  v118 = v177;
  v119 = v179(v181, 1, v177);
  v120 = sub_25C82E27C();
  if (v119 == 1)
  {
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v121 = qword_281559838;
    v122 = v163;
    v123 = v184;
    v167(v163, v183, v184);
    if (os_log_type_enabled(v121, v120))
    {
      v183 = v121;
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v187[0] = v125;
      *v124 = 136315138;
      v126 = sub_25C82DE8C();
      v127 = v120;
      v128 = v111;
      v130 = v129;
      (v178)(v122, v123);
      v131 = sub_25C7E77E4(v126, v130, v187);
      v111 = v128;

      *(v124 + 4) = v131;
      v132 = v183;
      _os_log_impl(&dword_25C7D2000, v183, v127, "returnURL for event associated with %s was nil...!", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      MEMORY[0x25F890110](v125, -1, -1);
      MEMORY[0x25F890110](v124, -1, -1);
    }

    else
    {
      (v178)(v122, v123);
    }

    goto LABEL_40;
  }

  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v135 = qword_281559838;
  v136 = v164;
  v137 = v184;
  v167(v164, v183, v184);
  v138 = v117;
  v139 = v165;
  sub_25C7E92DC(v138, v165, &qword_27FC16048, qword_25C8309D0);
  if (!os_log_type_enabled(v135, v120))
  {
    sub_25C7E97F4(v139, &qword_27FC16048, qword_25C8309D0);
    (v178)(v136, v137);
    v111 = v116;
    goto LABEL_40;
  }

  v183 = v135;
  v140 = swift_slowAlloc();
  v181 = swift_slowAlloc();
  v187[0] = v181;
  *v140 = 136315394;
  v141 = sub_25C82DE8C();
  v142 = v136;
  v144 = v143;
  (v178)(v142, v137);
  v145 = sub_25C7E77E4(v141, v144, v187);

  *(v140 + 4) = v145;
  *(v140 + 12) = 2080;
  v146 = v161;
  sub_25C7E92DC(v139, v161, &qword_27FC16048, qword_25C8309D0);
  result = v179(v146, 1, v118);
  if (result != 1)
  {
    v147 = v172;
    v148 = v162;
    (*(v172 + 32))(v162, v146, v118);
    sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
    v149 = sub_25C82E4DC();
    v151 = v150;
    (*(v147 + 8))(v148, v118);
    sub_25C7E97F4(v139, &qword_27FC16048, qword_25C8309D0);
    v152 = sub_25C7E77E4(v149, v151, v187);

    *(v140 + 14) = v152;
    v153 = v183;
    _os_log_impl(&dword_25C7D2000, v183, v120, "returnURL for event associated with %s and date %s was nil...!", v140, 0x16u);
    v154 = v181;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v154, -1, -1);
    MEMORY[0x25F890110](v140, -1, -1);

    v111 = v116;
LABEL_40:
    v155 = v185;
    sub_25C7E7DEC();
    swift_allocError();
    *v156 = 15;
    swift_willThrow();

    v103 = v175;
    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_25C824058(uint64_t a1, uint64_t a2, NSObject *a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v267 = a6;
  v266 = a5;
  v269 = a4;
  v273 = a3;
  v271 = sub_25C82DFBC();
  v268 = *(v271 - 1);
  v10 = *(v268 + 64);
  v11 = MEMORY[0x28223BE20](v271);
  v254 = &v250 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v253 = &v250 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v263 = &v250 - v16;
  MEMORY[0x28223BE20](v15);
  v264 = &v250 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v255 = &v250 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v261 = &v250 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v252 = &v250 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v258 = &v250 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v262 = &v250 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v265 = (&v250 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v250 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v250 - v35;
  v276 = sub_25C82DEAC();
  v270 = *(v276 - 8);
  v37 = *(v270 + 64);
  v38 = MEMORY[0x28223BE20](v276);
  v259 = &v250 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v260 = &v250 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v256 = &v250 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v257 = &v250 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v272 = (&v250 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v274 = (&v250 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v250 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v250 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v250 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = &v250 - v59;
  v61 = [*(a1 + 16) queryDataWithPredicate_];
  if (!v61)
  {
    return;
  }

  v62 = v61;
  sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
  v63 = sub_25C82E1DC();

  v64 = v63 >> 62;
  if (v63 >> 62)
  {
    goto LABEL_85;
  }

  v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v65)
  {
    while (1)
    {
      v251 = a7;
      if (v65 >= 2)
      {

        v66 = *(v268 + 48);
        v67 = v66(v273, 1, v271);
        v68 = sub_25C82E27C();
        v69 = v276;
        if (v67 == 1)
        {
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v70 = qword_281559838;
          v71 = v270;
          (*(v270 + 16))(v52, v269, v69);
          v72 = os_log_type_enabled(v70, v68);
          a7 = v251;
          if (v72)
          {
            v275 = v70;
            v73 = v69;
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v282 = v75;
            *v74 = 136315138;
            v76 = sub_25C82DE8C();
            v78 = v77;
            (*(v71 + 8))(v52, v73);
            v79 = sub_25C7E77E4(v76, v78, &v282);

            *(v74 + 4) = v79;
            v80 = v68;
            v81 = v275;
            _os_log_impl(&dword_25C7D2000, v275, v80, "Found more than one model at %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v75);
            v82 = v75;
            goto LABEL_90;
          }

          (*(v71 + 8))(v52, v69);
          goto LABEL_100;
        }

        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v87 = qword_281559838;
        v88 = v270;
        (*(v270 + 16))(v55, v269, v69);
        v89 = v265;
        sub_25C7E92DC(v273, v265, &qword_27FC16048, qword_25C8309D0);
        if (!os_log_type_enabled(v87, v68))
        {
          sub_25C7E97F4(v89, &qword_27FC16048, qword_25C8309D0);
          (*(v88 + 8))(v55, v69);
          goto LABEL_97;
        }

        LODWORD(v273) = v68;
        v275 = v87;
        v90 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        v282 = v274;
        *v90 = 136315394;
        v91 = sub_25C82DE8C();
        v93 = v92;
        (*(v88 + 8))(v55, v69);
        v94 = sub_25C7E77E4(v91, v93, &v282);
        v95 = v271;

        *(v90 + 4) = v94;
        v276 = v90;
        *(v90 + 12) = 2080;
        v96 = v262;
        sub_25C7E92DC(v89, v262, &qword_27FC16048, qword_25C8309D0);
        if (v66(v96, 1, v95) == 1)
        {
          goto LABEL_107;
        }

        v97 = v268;
        v98 = v263;
        (*(v268 + 32))(v263, v96, v95);
        sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
        v99 = sub_25C82E4DC();
        v101 = v100;
        (*(v97 + 8))(v98, v95);
        sub_25C7E97F4(v265, &qword_27FC16048, qword_25C8309D0);
        v102 = sub_25C7E77E4(v99, v101, &v282);

        v103 = v276;
        *(v276 + 14) = v102;
        v104 = v275;
        _os_log_impl(&dword_25C7D2000, v275, v273, "Found more than one model at %s with date %s", v103, 0x16u);
        v105 = v274;
        swift_arrayDestroy();
        MEMORY[0x25F890110](v105, -1, -1);
        v106 = v103;
LABEL_96:
        MEMORY[0x25F890110](v106, -1, -1);

LABEL_97:
        a7 = v251;
        goto LABEL_100;
      }

      v55 = v270;
      v83 = v270 + 16;
      a7 = *(v270 + 16);
      v84 = v274;
      v60 = v276;
      (a7)(v274, v266, v276);
      sub_25C82DE1C();
      v58 = v84;
      sub_25C82DE3C();

      v85 = v267;
      sub_25C7E97F4(v267, &qword_27FC16040, &unk_25C830480);
      v266 = v83;
      v265 = a7;
      (a7)(v85, v84, v60);
      v34 = v55;
      (*(v55 + 7))(v85, 0, 1, v60);
      v86 = v64 ? sub_25C82E43C() : *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v107 = v271;
      if (!v86)
      {
        break;
      }

      if ((v63 & 0xC000000000000001) != 0)
      {
        goto LABEL_103;
      }

      if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_105;
      }

      v108 = *(v63 + 32);
LABEL_22:
      v109 = v108;

      v110 = [v109 metadata];
      if (!v110)
      {
        v136 = *(v268 + 48);
        v137 = v136(v273, 1, v107);
        v138 = sub_25C82E27C();
        if (v137 == 1)
        {
          v139 = v270;
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v140 = qword_281559838;
          v141 = v259;
          (v265)(v259, v269, v60);
          if (os_log_type_enabled(v140, v138))
          {
            v142 = v140;
            LODWORD(v275) = v138;
            v143 = v142;
            v144 = swift_slowAlloc();
            v145 = v109;
            v146 = swift_slowAlloc();
            v282 = v146;
            *v144 = 136315138;
            v147 = sub_25C82DE8C();
            v148 = v141;
            v150 = v149;
            v151 = *(v139 + 8);
            v151(v148, v276);
            v152 = sub_25C7E77E4(v147, v150, &v282);

            *(v144 + 4) = v152;
            v153 = "Associated event with %s did not have any metadata!";
            goto LABEL_58;
          }

          goto LABEL_68;
        }

        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v167 = qword_281559838;
        v168 = v260;
        (v265)(v260, v269, v60);
        v169 = v261;
        sub_25C7E92DC(v273, v261, &qword_27FC16048, qword_25C8309D0);
        if (os_log_type_enabled(v167, v138))
        {
          LODWORD(v275) = v138;
          v263 = v109;
          v273 = v167;
          v170 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          v282 = v272;
          *v170 = 136315394;
          v171 = sub_25C82DE8C();
          v172 = v168;
          v174 = v173;
          v151 = *(v270 + 8);
          v151(v172, v60);
          v175 = sub_25C7E77E4(v171, v174, &v282);
          v176 = v271;

          *(v170 + 4) = v175;
          *(v170 + 12) = 2080;
          v177 = v255;
          sub_25C7E92DC(v169, v255, &qword_27FC16048, qword_25C8309D0);
          if (v136(v177, 1, v176) == 1)
          {
            goto LABEL_108;
          }

          v178 = v268;
          v179 = v254;
          (*(v268 + 32))(v254, v177, v176);
          sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
          v180 = sub_25C82E4DC();
          v182 = v181;
          (*(v178 + 8))(v179, v176);
          sub_25C7E97F4(v169, &qword_27FC16048, qword_25C8309D0);
          v183 = sub_25C7E77E4(v180, v182, &v282);

          *(v170 + 14) = v183;
          v184 = "Associated event with %s and date %s did not have any metadata!";
LABEL_74:
          v199 = v273;
          _os_log_impl(&dword_25C7D2000, v273, v275, v184, v170, 0x16u);
          v200 = v272;
          swift_arrayDestroy();
          MEMORY[0x25F890110](v200, -1, -1);
          MEMORY[0x25F890110](v170, -1, -1);

          a7 = v251;
          v60 = v276;
          v109 = v263;
          goto LABEL_77;
        }

LABEL_75:
        sub_25C7E97F4(v169, &qword_27FC16048, qword_25C8309D0);
        v151 = *(v270 + 8);
        v151(v168, v60);
        goto LABEL_76;
      }

      v111 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
      v58 = sub_25C82E1DC();

      if (*(v58 + 2) != 1)
      {

        v154 = *(v268 + 48);
        v155 = v154(v273, 1, v107);
        v156 = sub_25C82E27C();
        if (v155 == 1)
        {
          if (qword_2815594B8 != -1)
          {
            swift_once();
          }

          v157 = qword_281559838;
          v141 = v256;
          (v265)(v256, v269, v60);
          v158 = os_log_type_enabled(v157, v156);
          v139 = v270;
          if (v158)
          {
            v159 = v157;
            LODWORD(v275) = v156;
            v143 = v159;
            v144 = swift_slowAlloc();
            v145 = v109;
            v146 = swift_slowAlloc();
            v282 = v146;
            *v144 = 136315138;
            v160 = sub_25C82DE8C();
            v161 = v141;
            v163 = v162;
            v151 = *(v139 + 8);
            v151(v161, v276);
            v164 = sub_25C7E77E4(v160, v163, &v282);

            *(v144 + 4) = v164;
            v153 = "Associated event with %s had metadata with more than one object!";
LABEL_58:
            _os_log_impl(&dword_25C7D2000, v143, v275, v153, v144, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v146);
            v165 = v146;
            v109 = v145;
            MEMORY[0x25F890110](v165, -1, -1);
            v166 = v144;
            v60 = v276;
            MEMORY[0x25F890110](v166, -1, -1);

LABEL_76:
            a7 = v251;
LABEL_77:
            sub_25C7E7DEC();
            v201 = swift_allocError();
            *v202 = 15;
            swift_willThrow();

            v151(v274, v60);
            goto LABEL_101;
          }

LABEL_68:
          v151 = *(v139 + 8);
          v151(v141, v60);
          goto LABEL_76;
        }

        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v185 = qword_281559838;
        v168 = v257;
        (v265)(v257, v269, v60);
        v169 = v258;
        sub_25C7E92DC(v273, v258, &qword_27FC16048, qword_25C8309D0);
        if (os_log_type_enabled(v185, v156))
        {
          LODWORD(v275) = v156;
          v263 = v109;
          v273 = v185;
          v170 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          v282 = v272;
          *v170 = 136315394;
          v186 = sub_25C82DE8C();
          v187 = v168;
          v189 = v188;
          v151 = *(v270 + 8);
          v151(v187, v60);
          v190 = sub_25C7E77E4(v186, v189, &v282);
          v191 = v271;

          *(v170 + 4) = v190;
          *(v170 + 12) = 2080;
          v192 = v252;
          sub_25C7E92DC(v169, v252, &qword_27FC16048, qword_25C8309D0);
          if (v154(v192, 1, v191) == 1)
          {
            goto LABEL_109;
          }

          v193 = v268;
          v194 = v253;
          (*(v268 + 32))(v253, v192, v191);
          sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
          v195 = sub_25C82E4DC();
          v197 = v196;
          (*(v193 + 8))(v194, v191);
          sub_25C7E97F4(v169, &qword_27FC16048, qword_25C8309D0);
          v198 = sub_25C7E77E4(v195, v197, &v282);

          *(v170 + 14) = v198;
          v184 = "Associated event with %s and date %s had metadata with more than one object!";
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      v263 = v109;
      v63 = *(v58 + 4);

      v36 = sub_25C803374(v63);

      v112 = 0;
      v114 = v36 + 64;
      v113 = *(v36 + 64);
      v268 = v36;
      v115 = 1 << *(v36 + 32);
      if (v115 < 64)
      {
        v116 = ~(-1 << v115);
      }

      else
      {
        v116 = -1;
      }

      v117 = v116 & v113;
      v118 = (v115 + 63) >> 6;
      v271 = (v55 + 8);
      v52 = &qword_27FC16338;
      v64 = &qword_25C830CB8;
      v267 = v36 + 64;
      v264 = v118;
LABEL_29:
      if (v117)
      {
        v119 = v112;
LABEL_34:
        v270 = (v117 - 1) & v117;
        v269 = v119;
        v120 = __clz(__rbit64(v117)) | (v119 << 6);
        v121 = (*(v268 + 48) + 16 * v120);
        v122 = *v121;
        v58 = v121[1];
        sub_25C7E9854(*(v268 + 56) + 32 * v120, &v283);
        v280[0] = v122;
        v280[1] = v58;
        sub_25C801F34(&v283, &v281);
        sub_25C7E92DC(v280, v277, &qword_27FC16338, &qword_25C830CB8);

        sub_25C801F34(&v278, &v279);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16340, &unk_25C830CC0);
        swift_dynamicCast();
        a7 = 0;
        v63 = v284 + 64;
        v123 = *(v284 + 64);
        v273 = v284;
        v124 = 1 << *(v284 + 32);
        if (v124 < 64)
        {
          v125 = ~(-1 << v124);
        }

        else
        {
          v125 = -1;
        }

        v36 = v125 & v123;
        v34 = ((v124 + 63) >> 6);
        while (v36)
        {
LABEL_45:
          v127 = (a7 << 10) | (16 * __clz(__rbit64(v36)));
          v128 = (v273[6].isa + v127);
          v129 = *v128;
          v130 = v128[1];
          v131 = (v273[7].isa + v127);
          v133 = *v131;
          v132 = v131[1];
          v58 = v272;
          (v265)(v272, v274, v276);

          sub_25C82DE3C();
          v52 = sub_25C82DEDC();
          v64 = v134;

          if (v64 >> 60 == 15)
          {
            v60 = v276;
            v55 = v58;
          }

          else
          {
            sub_25C827A50();
            v135 = v275;
            sub_25C82DF1C();
            v60 = v276;
            v275 = v135;
            v55 = v58;
            if (v135)
            {
              v203 = sub_25C82E27C();
              if (qword_2815594B8 != -1)
              {
                swift_once();
              }

              v204 = qword_281559838;
              v205 = os_log_type_enabled(qword_281559838, v203);
              a7 = v251;
              if (v205)
              {
                v206 = v204;
                v207 = swift_slowAlloc();
                v208 = swift_slowAlloc();
                v270 = v52;
                v209 = v208;
                v210 = swift_slowAlloc();
                *&v279 = v210;
                *v207 = 136315394;
                swift_beginAccess();
                v211 = sub_25C82DE8C();
                v213 = sub_25C7E77E4(v211, v212, &v279);

                *(v207 + 4) = v213;
                v60 = v276;
                *(v207 + 12) = 2112;
                v214 = sub_25C82DD9C();
                *(v207 + 14) = v214;
                *v209 = v214;
                _os_log_impl(&dword_25C7D2000, v206, v203, "Could not write the file in model directory to %s, failed with error %@", v207, 0x16u);
                sub_25C7E97F4(v209, &qword_27FC16100, &qword_25C8305B8);
                v215 = v209;
                v52 = v270;
                MEMORY[0x25F890110](v215, -1, -1);
                __swift_destroy_boxed_opaque_existential_0Tm(v210);
                MEMORY[0x25F890110](v210, -1, -1);
                v216 = v207;
                v55 = v272;
                MEMORY[0x25F890110](v216, -1, -1);
              }

              sub_25C7E7DEC();
              v201 = swift_allocError();
              *v217 = 15;
              swift_willThrow();

              sub_25C827EAC(v52, v64);

              sub_25C7E97F4(v280, &qword_27FC16338, &qword_25C830CB8);
              v218 = *v271;
              (*v271)(v274, v60);
              v218(v55, v60);
              goto LABEL_101;
            }

            sub_25C827EAC(v52, v64);
          }

          v36 &= v36 - 1;
          (*v271)(v55, v60);
        }

        while (1)
        {
          v126 = a7 + 1;
          if (__OFADD__(a7, 1))
          {
            break;
          }

          if (v126 >= v34)
          {
            v52 = &qword_27FC16338;
            v64 = &qword_25C830CB8;
            sub_25C7E97F4(v280, &qword_27FC16338, &qword_25C830CB8);

            v112 = v269;
            v114 = v267;
            v118 = v264;
            v117 = v270;
            goto LABEL_29;
          }

          v36 = *(v63 + 8 * v126);
          ++a7;
          if (v36)
          {
            a7 = v126;
            goto LABEL_45;
          }
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v119 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            break;
          }

          if (v119 >= v118)
          {
            (*v271)(v274, v60);

            return;
          }

          v117 = *(v114 + 8 * v119);
          ++v112;
          if (v117)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_85:
      v65 = sub_25C82E43C();
      if (!v65)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_103:
    v108 = MEMORY[0x25F88F6D0](0, v63);
    goto LABEL_22;
  }

LABEL_86:

  v219 = *(v268 + 48);
  v220 = v219(v273, 1, v271);
  v221 = sub_25C82E27C();
  LOBYTE(v107) = v221;
  if (v220 == 1)
  {
    if (qword_2815594B8 != -1)
    {
LABEL_105:
      swift_once();
    }

    v222 = qword_281559838;
    v223 = v270;
    v224 = v276;
    (*(v270 + 16))(v58, v269, v276);
    if (os_log_type_enabled(v222, v107))
    {
      v275 = v222;
      v74 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v282 = v225;
      *v74 = 136315138;
      v226 = v107;
      v227 = sub_25C82DE8C();
      v229 = v228;
      (*(v223 + 8))(v58, v224);
      v230 = sub_25C7E77E4(v227, v229, &v282);

      *(v74 + 4) = v230;
      v231 = v226;
      v81 = v275;
      _os_log_impl(&dword_25C7D2000, v275, v231, "Unable to find model at %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v225);
      v82 = v225;
LABEL_90:
      MEMORY[0x25F890110](v82, -1, -1);
      MEMORY[0x25F890110](v74, -1, -1);
    }

    else
    {
      (*(v223 + 8))(v58, v224);
    }

    goto LABEL_100;
  }

  LODWORD(v275) = v221;
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v232 = qword_281559838;
  v233 = v270;
  v234 = v276;
  (*(v270 + 16))(v60, v269, v276);
  sub_25C7E92DC(v273, v36, &qword_27FC16048, qword_25C8309D0);
  if (!os_log_type_enabled(v232, v275))
  {
    sub_25C7E97F4(v36, &qword_27FC16048, qword_25C8309D0);
    (*(v233 + 8))(v60, v234);
LABEL_100:
    sub_25C7E7DEC();
    v201 = swift_allocError();
    *v249 = 15;
    swift_willThrow();
LABEL_101:
    *a7 = v201;
    return;
  }

  v251 = a7;
  v273 = v232;
  v235 = swift_slowAlloc();
  v274 = v235;
  v272 = swift_slowAlloc();
  v282 = v272;
  *v235 = 136315394;
  v236 = sub_25C82DE8C();
  v238 = v237;
  (*(v233 + 8))(v60, v234);
  v239 = sub_25C7E77E4(v236, v238, &v282);
  v240 = v274;

  *(v240 + 4) = v239;
  *(v240 + 6) = 2080;
  sub_25C7E92DC(v36, v34, &qword_27FC16048, qword_25C8309D0);
  v241 = v271;
  if (v219(v34, 1, v271) != 1)
  {
    v242 = v268;
    v243 = v264;
    (*(v268 + 32))(v264, v34, v241);
    sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
    v244 = sub_25C82E4DC();
    v246 = v245;
    (*(v242 + 8))(v243, v241);
    sub_25C7E97F4(v36, &qword_27FC16048, qword_25C8309D0);
    v247 = sub_25C7E77E4(v244, v246, &v282);

    *(v240 + 14) = v247;
    v104 = v273;
    _os_log_impl(&dword_25C7D2000, v273, v275, "Unable to find model at %s with date %s", v240, 0x16u);
    v248 = v272;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v248, -1, -1);
    v106 = v240;
    goto LABEL_96;
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

void sub_25C826030(uint64_t a1, NSObject *a2)
{
  v4 = sub_25C82DFBC();
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C82DEAC();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v49 = a1;
  sub_25C82DE8C();
  v13 = sub_25C82E07C();

  v14 = a2;
  v15 = sub_25C82DF4C();
  v16 = [v12 predicateWithIdentifier:v13 withDate:v15];

  if (v16)
  {
    v17 = v50;
    [(objc_class *)v50[3].isa deleteDataWithPredicate:v16];
    [(objc_class *)v17[2].isa deleteDataWithPredicate:v16];
  }

  else
  {
    v19 = v48;
    v18 = v49;
    v50 = v14;
    v51 = v4;
    v20 = v11;
    v21 = v47;
    v22 = v7;
    v23 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v24 = qword_281559838;
    v25 = v21;
    v26 = *(v21 + 16);
    v27 = v20;
    v26(v20, v18, v8);
    v28 = v51;
    (*(v19 + 16))(v22, v50, v51);
    if (os_log_type_enabled(v24, v23))
    {
      v29 = v23;
      v50 = v24;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      LODWORD(v49) = v29;
      v32 = v31;
      v52 = v31;
      *v30 = 136315394;
      sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
      v33 = sub_25C82E4DC();
      v34 = v25;
      v35 = v22;
      v36 = v33;
      v38 = v37;
      (*(v34 + 8))(v27, v8);
      v39 = sub_25C7E77E4(v36, v38, &v52);

      *(v30 + 4) = v39;
      *(v30 + 12) = 2080;
      sub_25C826508(&qword_27FC16078, MEMORY[0x277CC9578]);
      v40 = sub_25C82E4DC();
      v42 = v41;
      (*(v19 + 8))(v35, v28);
      v43 = sub_25C7E77E4(v40, v42, &v52);

      *(v30 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_25C7D2000, v50, v49, "Unable to construct predicate to delete model. Provided parameters: %s, %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F890110](v32, -1, -1);
      MEMORY[0x25F890110](v30, -1, -1);
    }

    else
    {
      (*(v19 + 8))(v22, v28);
      (*(v25 + 8))(v20, v8);
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v45 = 14;
    swift_willThrow();
  }
}

uint64_t sub_25C826508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C826550(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C8268D4(v8, v9, a1, v4);
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
    return sub_25C826694(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C826694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_25C7E92DC(v23, v17, &qword_27FC16080, &qword_25C830490);
      sub_25C7E92DC(v20, v13, &qword_27FC16080, &qword_25C830490);
      v24 = sub_25C82DF5C();
      sub_25C7E97F4(v13, &qword_27FC16080, &qword_25C830490);
      result = sub_25C7E97F4(v17, &qword_27FC16080, &qword_25C830490);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_25C8276BC(v23, v35);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25C8276BC(v25, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C8268D4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v102 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v9 = *(v115 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v115);
  v105 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v114 = &v98 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v98 - v16;
  result = MEMORY[0x28223BE20](v15);
  v116 = &v98 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    a4 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_128:
      result = sub_25C807028(v4);
    }

    v118 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      v94 = v9;
      while (*a3)
      {
        v95 = *(result + 16 * v4);
        v96 = result;
        v9 = *(result + 16 * (v4 - 1) + 40);
        sub_25C8271B8(*a3 + *(v94 + 72) * v95, *a3 + *(v94 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v94 + 72) * v9, a4);
        if (v6)
        {
        }

        if (v9 < v95)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_25C807028(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_122;
        }

        v97 = &v96[16 * v4];
        *v97 = v95;
        *(v97 + 1) = v9;
        v118 = v96;
        sub_25C806F9C(v4 - 1);
        result = v118;
        v4 = *(v118 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v101 = a4;
  v103 = a3;
  v99 = v9;
  while (1)
  {
    v22 = v20 + 1;
    v106 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v23 = v20;
      v24 = *a3;
      v112 = v24;
      v25 = *(v9 + 72);
      v26 = v24 + v25 * v22;
      v27 = v116;
      sub_25C7E92DC(v26, v116, &qword_27FC16080, &qword_25C830490);
      v28 = v24 + v25 * v23;
      v29 = v117;
      sub_25C7E92DC(v28, v117, &qword_27FC16080, &qword_25C830490);
      LODWORD(v111) = sub_25C82DF5C();
      sub_25C7E97F4(v29, &qword_27FC16080, &qword_25C830490);
      result = sub_25C7E97F4(v27, &qword_27FC16080, &qword_25C830490);
      v100 = v23;
      v4 = v23 + 2;
      v113 = v25;
      v30 = v112 + v25 * (v23 + 2);
      while (v19 != v4)
      {
        v31 = v116;
        v112 = v6;
        sub_25C7E92DC(v30, v116, &qword_27FC16080, &qword_25C830490);
        v32 = v117;
        sub_25C7E92DC(v26, v117, &qword_27FC16080, &qword_25C830490);
        v33 = sub_25C82DF5C() & 1;
        sub_25C7E97F4(v32, &qword_27FC16080, &qword_25C830490);
        v6 = v112;
        result = sub_25C7E97F4(v31, &qword_27FC16080, &qword_25C830490);
        ++v4;
        v30 += v113;
        v26 += v113;
        if ((v111 & 1) != v33)
        {
          v19 = v4 - 1;
          break;
        }
      }

      v20 = v100;
      a4 = v101;
      a3 = v103;
      v9 = v99;
      if (v111)
      {
        if (v19 < v100)
        {
          goto LABEL_125;
        }

        if (v100 < v19)
        {
          v111 = v19;
          v112 = v6;
          v4 = v113 * (v19 - 1);
          v34 = v19 * v113;
          v35 = v19;
          v36 = v100;
          v37 = v100 * v113;
          do
          {
            if (v36 != --v35)
            {
              v38 = *v103;
              if (!*v103)
              {
                goto LABEL_131;
              }

              sub_25C8276BC(v38 + v37, v105);
              if (v37 < v4 || v38 + v37 >= (v38 + v34))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25C8276BC(v105, v38 + v4);
            }

            ++v36;
            v4 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v36 < v35);
          v19 = v111;
          v6 = v112;
          a3 = v103;
          v9 = v99;
          v20 = v100;
          a4 = v101;
        }
      }
    }

    v39 = a3[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_124;
      }

      if (v19 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_126;
        }

        if ((v20 + a4) < v39)
        {
          v39 = v20 + a4;
        }

        if (v39 < v20)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v19 < v20)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v106;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v106 + 2) + 1, 1, v106);
      v21 = result;
    }

    v4 = *(v21 + 2);
    v50 = *(v21 + 3);
    a4 = v4 + 1;
    if (v4 >= v50 >> 1)
    {
      result = sub_25C7E6F4C((v50 > 1), v4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = a4;
    v51 = &v21[16 * v4];
    *(v51 + 4) = v20;
    *(v51 + 5) = v19;
    v107 = v19;
    if (!*v102)
    {
      goto LABEL_133;
    }

    if (v4)
    {
      v52 = *v102;
      while (1)
      {
        v53 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v54 = *(v21 + 4);
          v55 = *(v21 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_62:
          if (v57)
          {
            goto LABEL_112;
          }

          v70 = &v21[16 * a4];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_115;
          }

          v76 = &v21[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_119;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = a4 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v80 = &v21[16 * a4];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_76:
        if (v75)
        {
          goto LABEL_114;
        }

        v83 = &v21[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_117;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_83:
        v4 = v53 - 1;
        if (v53 - 1 >= a4)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v91 = v21;
        a4 = *&v21[16 * v4 + 32];
        v92 = *&v21[16 * v53 + 40];
        sub_25C8271B8(*a3 + *(v9 + 72) * a4, *a3 + *(v9 + 72) * *&v21[16 * v53 + 32], *a3 + *(v9 + 72) * v92, v52);
        if (v6)
        {
        }

        if (v92 < a4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_25C807028(v91);
        }

        if (v4 >= *(v91 + 2))
        {
          goto LABEL_109;
        }

        v93 = &v91[16 * v4];
        *(v93 + 4) = a4;
        *(v93 + 5) = v92;
        v118 = v91;
        v4 = &v118;
        result = sub_25C806F9C(v53);
        v21 = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v21[16 * a4 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_110;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_111;
      }

      v65 = &v21[16 * a4];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_113;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_116;
      }

      if (v69 >= v61)
      {
        v87 = &v21[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_120;
        }

        if (v56 < v90)
        {
          v53 = a4 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v107;
    a4 = v101;
    if (v107 >= v19)
    {
      goto LABEL_94;
    }
  }

  v107 = v39;
  v40 = *a3;
  v41 = *(v9 + 72);
  v42 = *a3 + v41 * (v19 - 1);
  v43 = -v41;
  v100 = v20;
  v44 = v20 - v19;
  v112 = v6;
  v113 = v40;
  v104 = v41;
  a4 = v40 + v19 * v41;
LABEL_33:
  v110 = v42;
  v111 = v19;
  v108 = a4;
  v109 = v44;
  v45 = v42;
  while (1)
  {
    v4 = v116;
    sub_25C7E92DC(a4, v116, &qword_27FC16080, &qword_25C830490);
    v46 = v117;
    sub_25C7E92DC(v45, v117, &qword_27FC16080, &qword_25C830490);
    v47 = sub_25C82DF5C();
    sub_25C7E97F4(v46, &qword_27FC16080, &qword_25C830490);
    result = sub_25C7E97F4(v4, &qword_27FC16080, &qword_25C830490);
    if ((v47 & 1) == 0)
    {
LABEL_32:
      v19 = v111 + 1;
      v42 = v110 + v104;
      v44 = v109 - 1;
      a4 = v108 + v104;
      if (v111 + 1 != v107)
      {
        goto LABEL_33;
      }

      v6 = v112;
      a3 = v103;
      v9 = v99;
      v20 = v100;
      v19 = v107;
      goto LABEL_41;
    }

    if (!v113)
    {
      break;
    }

    v48 = v114;
    sub_25C8276BC(a4, v114);
    swift_arrayInitWithTakeFrontToBack();
    sub_25C8276BC(v48, v45);
    v45 += v43;
    a4 += v43;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_25C8271B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v8 = *(*(v44 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v45 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v30 = a3;
          v38 = v24;
          a3 += v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_25C7E92DC(v31, v45, &qword_27FC16080, &qword_25C830490);
          v33 = v28;
          v34 = v46;
          sub_25C7E92DC(v33, v46, &qword_27FC16080, &qword_25C830490);
          v35 = sub_25C82DF5C();
          sub_25C7E97F4(v34, &qword_27FC16080, &qword_25C830490);
          sub_25C7E97F4(v32, &qword_27FC16080, &qword_25C830490);
          if (v35)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            a1 = v40;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v30 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v30 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v14;
        v21 = v45;
        sub_25C7E92DC(a2, v45, &qword_27FC16080, &qword_25C830490);
        v22 = v46;
        sub_25C7E92DC(a4, v46, &qword_27FC16080, &qword_25C830490);
        v23 = sub_25C82DF5C();
        sub_25C7E97F4(v22, &qword_27FC16080, &qword_25C830490);
        sub_25C7E97F4(v21, &qword_27FC16080, &qword_25C830490);
        v14 = v20;
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_58:
  sub_25C807120(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_25C8276BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C82772C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16378, &qword_25C830CF0);
    v3 = sub_25C82E38C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_25C82E0AC();
      sub_25C82E57C();
      v29 = v7;
      sub_25C82E10C();
      v9 = sub_25C82E59C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_25C82E0AC();
        v20 = v19;
        if (v18 == sub_25C82E0AC() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_25C82E4EC();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_25C827920()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25C82DEEC();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_25C82DDAC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_25C8279E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16330, &qword_25C830CB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_25C827A50()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v0 = sub_25C82DEAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  sub_25C82DE6C();
  v8 = [objc_opt_self() defaultManager];
  sub_25C82DE8C();
  v9 = sub_25C82E07C();

  v10 = [v8 fileExistsAtPath_];

  if (v10)
  {
    (*(v1 + 8))(v7, v0);
LABEL_5:

    goto LABEL_6;
  }

  sub_25C82DE8C();
  v11 = sub_25C82E07C();

  v34[0] = 0;
  v12 = [v8 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:v34];

  if (v12)
  {
    v13 = *(v1 + 8);
    v14 = v34[0];
    v13(v7, v0);
    goto LABEL_5;
  }

  v16 = v34[0];
  v17 = sub_25C82DDAC();

  swift_willThrow();
  v18 = sub_25C82E27C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v19 = qword_281559838;
  (*(v1 + 16))(v5, v7, v0);
  if (os_log_type_enabled(v19, v18))
  {
    v33 = v19;
    v20 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v20 = 136315394;
    sub_25C826508(&qword_27FC16098, MEMORY[0x277CC9260]);
    v21 = sub_25C82E4DC();
    v23 = v22;
    v31 = *(v1 + 8);
    v31(v5, v0);
    v24 = sub_25C7E77E4(v21, v23, v34);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    swift_getErrorValue();
    v25 = sub_25C82E52C();
    v27 = sub_25C7E77E4(v25, v26, v34);

    *(v20 + 14) = v27;
    v28 = v33;
    _os_log_impl(&dword_25C7D2000, v33, v18, "could not create a directory %s. %s", v20, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v29, -1, -1);
    MEMORY[0x25F890110](v20, -1, -1);

    v31(v7, v0);
  }

  else
  {

    v30 = *(v1 + 8);
    v30(v5, v0);
    v30(v7, v0);
  }

LABEL_6:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25C827EAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25C808E3C(a1, a2);
  }

  return a1;
}

unint64_t sub_25C827EC0()
{
  result = qword_27FC16368;
  if (!qword_27FC16368)
  {
    sub_25C7E96B8(255, &qword_27FC16360, 0x277CBFF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16368);
  }

  return result;
}

uint64_t sub_25C827F28(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25C827F84()
{
  result = qword_27FC16370;
  if (!qword_27FC16370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16370);
  }

  return result;
}

void sub_25C827FD8(void *a1, void *a2)
{
  v93 = a1;
  v3 = sub_25C82DFBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C82DFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v89 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16380, &qword_25C830D00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16388, &qword_25C830D08);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v90 = &v80 - v21;
  v22 = sub_25C82DD6C();
  v87 = *(v22 - 8);
  v88 = v22;
  v23 = *(v87 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = sub_25C82E25C();
  v94 = a2;
  if (a2)
  {
    v84 = v7;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v27 = qword_281559838;
    v28 = os_log_type_enabled(qword_281559838, v26);
    v86 = v4;
    v92 = v8;
    v85 = v9;
    v83 = v12;
    if (v28)
    {
      v81 = v27;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v94;
      v82 = v3;
      v32 = v30;
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v29 = 136315394;
      v34 = [v93 name];
      v35 = sub_25C82E0AC();
      v37 = v36;

      v38 = sub_25C7E77E4(v35, v37, &aBlock);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v31;
      *v32 = v31;
      v94 = v31;
      v39 = v81;
      _os_log_impl(&dword_25C7D2000, v81, v26, "Pruning storage %s} with policy: %@", v29, 0x16u);
      sub_25C7E97F4(v32, &qword_27FC16100, &qword_25C8305B8);
      v40 = v32;
      v3 = v82;
      v4 = v86;
      MEMORY[0x25F890110](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x25F890110](v33, -1, -1);
      MEMORY[0x25F890110](v29, -1, -1);
    }

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v26 = (v41 + 16);
    v42 = swift_allocBox();
    v44 = v43;
    (*(v4 + 56))(v43, 1, 1, v3);
    if (![v94 maximumNumberOfDays])
    {
LABEL_9:
      v50 = swift_allocObject();
      *(v50 + 16) = MEMORY[0x277D84F90];
      v51 = (v50 + 16);
      v52 = objc_autoreleasePoolPush();
      v53 = swift_allocObject();
      v53[2] = v42;
      v53[3] = v50;
      v53[4] = v41;
      v99 = sub_25C8290F8;
      v100 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v96 = 1107296256;
      v97 = sub_25C828AA8;
      v98 = &block_descriptor;
      v54 = _Block_copy(&aBlock);

      [v93 deleteMultipleData_];
      _Block_release(v54);
      objc_autoreleasePoolPop(v52);
      swift_beginAccess();
      v55 = *(v41 + 16);
      v56 = 0x2799B9000uLL;
      if ([v94 maximumNumberOfEvents] >= v55)
      {

LABEL_26:

        return;
      }

      v92 = v42;
      v57 = *v26;
      v58 = [v94 maximumNumberOfEvents];
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      if (v59)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        sub_25C802040(v51);
        swift_endAccess();
        v51 = sub_25C828FF4(v60, *v51);
        v56 = v61;
        v60 = v62;
        v55 = v63;
        if ((v63 & 1) == 0)
        {

LABEL_13:
          sub_25C82911C(v51, v56, v60, v55);
          v65 = v64;
          goto LABEL_24;
        }

        sub_25C82E4FC();
        swift_unknownObjectRetain_n();

        v75 = swift_dynamicCastClass();
        if (!v75)
        {
          swift_unknownObjectRelease();
          v75 = MEMORY[0x277D84F90];
        }

        v76 = *(v75 + 16);

        if (!__OFSUB__(v55 >> 1, v60))
        {
          if (v76 == (v55 >> 1) - v60)
          {
            v65 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v65)
            {
LABEL_25:
              v77 = objc_autoreleasePoolPush();
              v78 = swift_allocObject();
              *(v78 + 16) = v65;
              v99 = sub_25C8292BC;
              v100 = v78;
              aBlock = MEMORY[0x277D85DD0];
              v96 = 1107296256;
              v97 = sub_25C828AA8;
              v98 = &block_descriptor_12;
              v79 = _Block_copy(&aBlock);

              [v93 deleteMultipleData_];
              _Block_release(v79);
              objc_autoreleasePoolPop(v77);

              goto LABEL_26;
            }

            v65 = MEMORY[0x277D84F90];
LABEL_24:
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_32:
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v82 = v41;
    v45 = v85;
    (*(v85 + 56))(v90, 1, 1, v92);
    v46 = sub_25C82DFFC();
    (*(*(v46 - 8) + 56))(v91, 1, 1, v46);
    sub_25C82DD5C();
    if (!__OFSUB__(0, [v94 maximumNumberOfDays]))
    {
      sub_25C82DD4C();
      v47 = v83;
      sub_25C82DFDC();
      v48 = v84;
      sub_25C82DFAC();
      v49 = v89;
      sub_25C82DFCC();
      (*(v86 + 8))(v48, v3);
      (*(v45 + 8))(v47, v92);
      (*(v87 + 8))(v25, v88);
      sub_25C829088(v49, v44);
      v41 = v82;
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (qword_2815594B8 == -1)
  {
    goto LABEL_15;
  }

  swift_once();
LABEL_15:
  v66 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v26))
  {
    v67 = v66;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock = v69;
    *v68 = 136315138;
    v70 = [v93 name];
    v71 = sub_25C82E0AC();
    v73 = v72;

    v74 = sub_25C7E77E4(v71, v73, &aBlock);

    *(v68 + 4) = v74;
    _os_log_impl(&dword_25C7D2000, v67, v26, "Not pruning storage %s because policy was nil.", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    MEMORY[0x25F890110](v69, -1, -1);
    MEMORY[0x25F890110](v68, -1, -1);
  }
}

uint64_t sub_25C828AA8(uint64_t a1)
{
  v2 = sub_25C82DFBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_25C82DF8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
  v9 = sub_25C82E1DC();

  v10 = v8(v6, v9);

  (*(v3 + 8))(v6, v2);
  return v10 & 1;
}

BOOL sub_25C828BE4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_25C82DFBC() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_25C8292C4();
  }

  while ((sub_25C82E06C() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_25C828CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v35 = a1;
  v5 = sub_25C82DFBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_25C81C294(v16, v15);
  v17 = *(v6 + 48);
  v18 = v17(v15, 1, v5);
  v19 = v35;
  sub_25C7E97F4(v15, &qword_27FC16048, qword_25C8309D0);
  if (v18 == 1)
  {
LABEL_4:
    v22 = v32;
    (*(v6 + 16))(v32, v19, v5);
    v23 = v33;
    swift_beginAccess();
    v24 = *(v23 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 16) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_25C7E6D74(0, v24[2] + 1, 1, v24);
      *(v23 + 16) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_25C7E6D74(v26 > 1, v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    (*(v6 + 32))(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v22, v5);
    *(v23 + 16) = v24;
    v28 = v34;
    result = swift_beginAccess();
    v29 = *(v28 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      result = 0;
      *(v28 + 16) = v31;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_25C81C294(v16, v13);
  result = v17(v13, 1, v5);
  if (result != 1)
  {
    v21 = sub_25C82DF9C();
    (*(v6 + 8))(v13, v5);
    if (v21 != 1)
    {
      return 1;
    }

    goto LABEL_4;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_25C828FF4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_25C82DFBC() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_25C829088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25C82911C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B8, &qword_25C830570);
      v7 = *(sub_25C82DFBC() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_25C82DFBC() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_25C8292C4()
{
  result = qword_27FC162D0;
  if (!qword_27FC162D0)
  {
    sub_25C82DFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC162D0);
  }

  return result;
}

void sub_25C829324(uint64_t a1, uint64_t a2)
{
  v4 = sub_25C82950C(a1, a2);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v4;
    v2 = sub_25C82E25C();
    if (qword_2815594B8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v2))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v3;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v5;
    _os_log_impl(&dword_25C7D2000, v7, v2, "Setting currentExecutionCount from %ld to %ld.", v8, 0x16u);
    MEMORY[0x25F890110](v8, -1, -1);
  }

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = sub_25C82E22C();
  v11 = sub_25C82E07C();

  [v9 setValue:v10 forKey:v11];
}

uint64_t sub_25C82950C(uint64_t a1, uint64_t a2)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_25C82E07C();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_25C82E31C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  sub_25C7E92DC(&v13, &v11, &qword_27FC16290, &qword_25C830908);
  v5 = *(&v12 + 1);
  sub_25C7E97F4(&v11, &qword_27FC16290, &qword_25C830908);
  if (!v5)
  {
    v6 = MEMORY[0x277D83B88];
    sub_25C7E97F4(&v13, &qword_27FC16290, &qword_25C830908);
    *&v13 = 0;
    *(&v14 + 1) = v6;
  }

  result = sub_25C7E92DC(&v13, &v9, &qword_27FC16290, &qword_25C830908);
  if (v10)
  {
    sub_25C7E97F4(&v13, &qword_27FC16290, &qword_25C830908);

    sub_25C801F34(&v9, &v11);
    swift_dynamicCast();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C8296F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_25C7E92DC(a1, &v25 - v15, &qword_27FC16048, qword_25C8309D0);
  sub_25C7E92DC(v16, v14, &qword_27FC16048, qword_25C8309D0);
  v17 = sub_25C82DFBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v14, 1, v17);
  sub_25C7E97F4(v14, &qword_27FC16048, qword_25C8309D0);
  if (v20 == 1)
  {
    sub_25C82DF2C();
    sub_25C7E97F4(v16, &qword_27FC16048, qword_25C8309D0);
    (*(v18 + 56))(v11, 0, 1, v17);
    sub_25C80E758(v11, v16);
  }

  sub_25C7E92DC(v16, v8, &qword_27FC16048, qword_25C8309D0);
  result = v19(v8, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_25C82DF3C();
    (*(v18 + 8))(v8, v17);
    v27 = v25;
    v28 = v26;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD000000000000022, 0x800000025C8343E0);

    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_25C82E21C();
    v24 = sub_25C82E07C();

    [v22 setValue:v23 forKey:v24];

    return sub_25C7E97F4(v16, &qword_27FC16048, qword_25C8309D0);
  }

  return result;
}

uint64_t sub_25C829A28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 hasStreamFilter] & 1) == 0)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v15 = qword_281559838;
    v16 = 31;
    sub_25C82E00C();
    goto LABEL_13;
  }

  v9 = [a1 getDatesOfEventsForStream];
  if (!v9)
  {
    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v15 = qword_281559838;
    v16 = 32;
    sub_25C82E00C();
LABEL_13:

    sub_25C7E7DEC();
    swift_allocError();
    *v17 = v16;
    return swift_willThrow();
  }

  v10 = v9;
  v11 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_25C7E916C(v11);
  }

  v12 = v11[2];
  v13 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v19[0] = v13;
  v19[1] = v12;
  sub_25C82C298(v19);
  if (v11[2])
  {
    (*(v5 + 16))(v8, v13, v4);

    (*(v5 + 32))(a2, v8, v4);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }

  else
  {

    sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v18 = qword_281559838;
    sub_25C82E00C();

    return (*(v5 + 56))(a2, 1, 1, v4);
  }
}