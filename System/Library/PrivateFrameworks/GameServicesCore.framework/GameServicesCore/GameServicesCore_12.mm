uint64_t sub_227C20758(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_227C20778, 0, 0);
}

uint64_t sub_227C20778()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_227C208A4;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_227C208A4(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  v4[5] = a1;
  v4[6] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C209D8, 0, 0);
  }
}

void sub_227C209D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v2 + 16);
  v4 = *(v0[2] + 16);
  sub_227D49DA8();
  if (v1)
  {
    v5 = v0[5];

    v6 = v0[1];
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

  sub_227C20D00();
  v9 = sub_227D4CE28();
  v42 = v4;
  v40 = v0;
  if (!v4)
  {
LABEL_21:
    v35 = v40[5];

    v36 = v40[1];
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X2, X16 }
  }

  v10 = 0;
  v43 = v0[5] + 32;
  v11 = (v0[2] + 40);
  v12 = v42;
  v41 = v2;
  while (v10 < *(v2 + 16))
  {
    v14 = *(v11 - 1);
    v13 = *v11;
    v15 = *(v43 + 8 * v10);
    if (v15)
    {
      v16 = v15;
      sub_227D4CE58();
      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_227B2664C(v14, v13);
      if (__OFADD__(v9[2], (v18 & 1) == 0))
      {
        goto LABEL_28;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91C8, &qword_227D5C108);
      if (OUTLINED_FUNCTION_1_21())
      {
        v21 = sub_227B2664C(v14, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          OUTLINED_FUNCTION_90();

          sub_227D4DAE8();
          return;
        }

        v19 = v21;
      }

      if (v20)
      {

        v23 = v9[7];
        v24 = *(v23 + 8 * v19);
        *(v23 + 8 * v19) = v16;
      }

      else
      {
        v9[(v19 >> 6) + 8] |= 1 << v19;
        v31 = (v9[6] + 16 * v19);
        *v31 = v14;
        v31[1] = v13;
        *(v9[7] + 8 * v19) = v16;
        v32 = v9[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_29;
        }

        v9[2] = v34;
      }

      v2 = v41;
      v12 = v42;
    }

    else
    {
      v25 = *v11;
      sub_227D4CE58();
      v26 = sub_227B2664C(v14, v13);
      v28 = v27;

      if (v28)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v29 = v9[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91C8, &qword_227D5C108);
        OUTLINED_FUNCTION_1_21();
        v30 = *(v9[6] + 16 * v26 + 8);

        sub_227D4D7E8();
      }
    }

    ++v10;
    v11 += 2;
    if (v12 == v10)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t sub_227C20D00()
{
  result = qword_27D7E91C0;
  if (!qword_27D7E91C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7E91C0);
  }

  return result;
}

uint64_t sub_227C20D44()
{
  v1 = [objc_opt_self() stringFromContact:v0 style:0];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227D4CFA8();

  return v3;
}

void sub_227C20DCC()
{
  OUTLINED_FUNCTION_351();
  v4 = v3;
  v136 = v5;
  OUTLINED_FUNCTION_407();
  v6 = sub_227D4CAB8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_191_2();
  v11 = sub_227D4CCB8();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  v131 = v20;
  OUTLINED_FUNCTION_191_2();
  v132 = sub_227D49188();
  v21 = OUTLINED_FUNCTION_9(v132);
  v129 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_314();
  v128 = v27;
  OUTLINED_FUNCTION_191_2();
  v28 = sub_227D49308();
  v29 = OUTLINED_FUNCTION_9(v28);
  v130 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_311_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92B8, &qword_227D5CC20);
  OUTLINED_FUNCTION_5(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105_1();
  v37 = sub_227D49328();
  v38 = OUTLINED_FUNCTION_9(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v41 = sub_227D4CCF8();
  v42 = OUTLINED_FUNCTION_9(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_120_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_219_1();
  if (v4)
  {
    sub_227D4CCC8();
    sub_227C218FC();
    sub_227C1CB1C(v136, &unk_27D7E92C0);
    sub_227C1CB1C(v2, &qword_27D7E92B8);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_201_1(v48);
  sub_227C4BC80();
  OUTLINED_FUNCTION_318(v1, 1, v37);
  if (v49)
  {
    sub_227C1CB1C(v1, &qword_27D7E92B8);
    v52 = v136;
LABEL_12:
    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v80);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_413_0();
    sub_227D49D98();
    swift_willThrow();
    sub_227C1CB1C(v52, &unk_27D7E92C0);
    sub_227C1CB1C(v2, &qword_27D7E92B8);
    goto LABEL_18;
  }

  v50 = OUTLINED_FUNCTION_310_0();
  v51(v50);
  v52 = v136;
  sub_227C4BC80();
  if (!v133[3])
  {
    v77 = *(v4 + 8);
    v78 = OUTLINED_FUNCTION_113();
    v79(v78);
    sub_227C1CB1C(v133, &unk_27D7E92C0);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_337_0();
  v53 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_440_0(v53);
  v54 = sub_227D492F8();
  OUTLINED_FUNCTION_328_0(v54, v55, v135);
  v56 = *(v130 + 8);
  v57 = OUTLINED_FUNCTION_278();
  v58(v57);
  OUTLINED_FUNCTION_256(v134, v135[0]);
  v59 = sub_227B281AC();
  v60 = *v59;
  v61 = v59[1];
  OUTLINED_FUNCTION_379_0();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_120();
  v28(v62, v63);

  OUTLINED_FUNCTION_318(v131, 1, v132);
  if (v49)
  {
    sub_227C1CB1C(v131, &qword_27D7E6CD8);
    sub_227B1AF8C();
    v64 = OUTLINED_FUNCTION_265_0();
    v65(v64);
    OUTLINED_FUNCTION_420_0();
    sub_227D4CE58();
    v66 = sub_227D4CA98();
    sub_227D4D438();

    if (OUTLINED_FUNCTION_447_0())
    {
      OUTLINED_FUNCTION_415();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_229();
      v68 = swift_slowAlloc();
      v133[0] = v68;
      *(v67 + 4) = OUTLINED_FUNCTION_303_0(4.8149e-34);
      OUTLINED_FUNCTION_218_1();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v74 = OUTLINED_FUNCTION_105_2();
      MEMORY[0x22AAA7130](v74);
      OUTLINED_FUNCTION_420_0();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
    }

    v75 = OUTLINED_FUNCTION_146_3();
    v76(v75);
    OUTLINED_FUNCTION_437_0();

    OUTLINED_FUNCTION_3_7();
    v133[1] = v110;
    v111 = OUTLINED_FUNCTION_165_3();
    MEMORY[0x22AAA5DA0](v111);

    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v112);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_413_0();
    OUTLINED_FUNCTION_58();
    sub_227D49D98();

    swift_willThrow();

    sub_227C1CB1C(v136, &unk_27D7E92C0);
    v113 = OUTLINED_FUNCTION_269_0();
    sub_227C1CB1C(v113, v114);
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_403_0();
    v115();
    __swift_destroy_boxed_opaque_existential_0(v134);
  }

  else
  {

    v81 = *(v129 + 32);
    OUTLINED_FUNCTION_199_1();
    v82();
    v83 = *(v129 + 16);
    v84 = OUTLINED_FUNCTION_94();
    v85(v84);
    sub_227D4CCA8();
    OUTLINED_FUNCTION_351_0();
    OUTLINED_FUNCTION_376(29, v86);
    v87 = OUTLINED_FUNCTION_188_2();
    v88(v87);
    sub_227C218FC();
    OUTLINED_FUNCTION_428();
    if (v126)
    {
      v90 = v89;
      sub_227B1AF8C();
      OUTLINED_FUNCTION_411_0();
      v91 = OUTLINED_FUNCTION_228_0();
      v92(v91);
      v93 = v127;
      v94 = sub_227D4CA98();
      sub_227D4D438();

      if (OUTLINED_FUNCTION_447_0())
      {
        OUTLINED_FUNCTION_415();
        v95 = swift_slowAlloc();
        OUTLINED_FUNCTION_301();
        v96 = swift_slowAlloc();
        *v95 = 138412290;
        v97 = v127;
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v95 + 4) = v98;
        *v96 = v98;
        OUTLINED_FUNCTION_438_0(&dword_227B0D000, v99, v100, "Failed to construct model container for activity store with error, deleting files: %@");
        sub_227C1CB1C(v96, &qword_27D7E68C8);
        v101 = OUTLINED_FUNCTION_101_2();
        MEMORY[0x22AAA7130](v101);
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
      }

      v103 = *(v90 + 8);
      v102 = (v90 + 8);
      v104 = OUTLINED_FUNCTION_114();
      v105(v104);
      OUTLINED_FUNCTION_336_0();
      sub_227D49128();
      v106 = OUTLINED_FUNCTION_350_0();
      v102(v106);
      sub_227B281D4();

      v107 = OUTLINED_FUNCTION_200();
      v102(v107);
      v108 = OUTLINED_FUNCTION_221_0();
      v109(v108);
      sub_227C218FC();

      sub_227C1CB1C(v136, &unk_27D7E92C0);
      v119 = OUTLINED_FUNCTION_269_0();
      sub_227C1CB1C(v119, v120);
      v121 = OUTLINED_FUNCTION_78_6();
      v122(v121);
      v123 = OUTLINED_FUNCTION_407_0();
      v102(v123);
    }

    else
    {

      sub_227C1CB1C(v136, &unk_27D7E92C0);
      sub_227C1CB1C(v0, &qword_27D7E92B8);
      v116 = *(v2 + 8);
      v117 = OUTLINED_FUNCTION_261_0();
      v118(v117);
      (*(v129 + 8))(v128, v132);
    }

    OUTLINED_FUNCTION_406_0();
    OUTLINED_FUNCTION_403_0();
    v124();
    __swift_destroy_boxed_opaque_existential_0(v134);
  }

LABEL_18:
  OUTLINED_FUNCTION_352();
}

void *sub_227C218FC()
{
  OUTLINED_FUNCTION_419();
  sub_227D4CBB8();
  OUTLINED_FUNCTION_304_0();
  sub_227D4CDE8();
  sub_227C40E88();
  v1 = sub_227D4CD38();
  sub_227C4BA28();
  v2 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_380();
  v4 = v3;

  if (v4)
  {
    type metadata accessor for GameActivityDefinitionStore();
    OUTLINED_FUNCTION_198_2();
    swift_allocObject();
    OUTLINED_FUNCTION_300_0();
    v5 = sub_227D4CB88();
    OUTLINED_FUNCTION_166_2(v5);
    swift_allocObject();
    OUTLINED_FUNCTION_308();

    sub_227D4CB98();
    OUTLINED_FUNCTION_342();
    v6 = sub_227D4CD28();
    OUTLINED_FUNCTION_166_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_78_0();
    v7 = sub_227D4CD18();
    OUTLINED_FUNCTION_181_0();
    v9 = sub_227B17E0C(v8);
    v1[2] = v7;
    v1[3] = v9;
    v1[4] = v4;
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v12);
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_378_0();
    swift_willThrow();
  }

  v10 = sub_227D4CCF8();
  OUTLINED_FUNCTION_15_6(v10);
  (*(v11 + 8))(v0);
  return v1;
}

uint64_t sub_227C21AD0()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_227D4CAB8();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49AB8();
  v1[10] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_379();
  v1[13] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9500, &qword_227D5E0E8);
  v1[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v19 = sub_227D49F28();
  v1[17] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v23 = sub_227D49918();
  v1[20] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v1[21] = v24;
  v26 = *(v25 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[23] = v27;
  OUTLINED_FUNCTION_10_0(v27);
  v1[24] = v28;
  v30 = *(v29 + 64);
  v1[25] = OUTLINED_FUNCTION_30();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9200, &unk_227D5C318);
  v1[26] = v31;
  OUTLINED_FUNCTION_10_0(v31);
  v1[27] = v32;
  v34 = *(v33 + 64);
  v1[28] = OUTLINED_FUNCTION_30();
  v35 = sub_227D49AC8();
  v1[29] = v35;
  OUTLINED_FUNCTION_10_0(v35);
  v1[30] = v36;
  v38 = *(v37 + 64);
  v1[31] = OUTLINED_FUNCTION_379();
  v1[32] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v39);
  v41 = *(v40 + 64);
  v1[33] = OUTLINED_FUNCTION_379();
  v1[34] = swift_task_alloc();
  v42 = sub_227D49B58();
  v1[35] = v42;
  OUTLINED_FUNCTION_10_0(v42);
  v1[36] = v43;
  v45 = *(v44 + 64);
  v1[37] = OUTLINED_FUNCTION_379();
  v1[38] = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  v1[39] = v46;
  OUTLINED_FUNCTION_10_0(v46);
  v1[40] = v47;
  v49 = *(v48 + 64);
  v1[41] = OUTLINED_FUNCTION_379();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v50);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v51 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v51, v52, v53);
}

void sub_227C21F54()
{
  v1 = v0[3];
  v2 = sub_227D4A6A8();
  v3 = v0[46];
  v4 = v2;
  v6 = v5;
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v0[2] = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_445();

  OUTLINED_FUNCTION_100_3();
  sub_227B1BEF0();
  v9 = v8;
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v13 = v0[46];
    v14 = v0[39];
    v15 = v0[40];
    v16 = v0[4];
    *(v9 + 16) = v12;
    v17 = *(v15 + 32);
    v18 = *(v15 + 80);
    OUTLINED_FUNCTION_19();
    v252 = v19;
    v274 = *(v20 + 40);
    v278 = v21;
    (v21)(v9 + v19 + v274 * v11);
    v281 = v9;
    if (v16)
    {
      v22 = v0[4];
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v0[36];
        v244 = v0[37];
        v25 = v0[30];
        v26 = v0[27];
        v27 = v0[24];
        v28 = v0[21];
        v29 = *(v24 + 16);
        v24 += 16;
        v267 = v29;
        v30 = v0[18];
        v31 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v264 = (v24 + 72);
        v259 = (v24 + 80);
        v232 = (v30 + 8);
        v233 = (v30 + 32);
        v235 = (v28 + 8);
        v236 = (v28 + 32);
        v249 = (v25 + 16);
        v250 = (v25 + 32);
        v248 = (v25 + 88);
        v262 = *MEMORY[0x277D0CD60];
        v247 = *MEMORY[0x277D0CD48];
        v243 = *MEMORY[0x277D0CD50];
        v237 = *MEMORY[0x277D0CD70];
        v234 = *MEMORY[0x277D0CD58];
        v231 = *MEMORY[0x277D0CD68];
        v246 = *MEMORY[0x277D0CB90];
        v238 = (v26 + 32);
        v239 = (v26 + 8);
        v241 = (v27 + 8);
        v242 = (v27 + 32);
        v245 = (v25 + 8);
        v240 = *MEMORY[0x277D0CB98];
        v255 = *(v24 + 56);
        v257 = (v24 - 8);
        v271 = MEMORY[0x277D84F90];
        while (1)
        {
          v32 = v0[37];
          v33 = v0[38];
          v34 = v0[35];
          v35 = OUTLINED_FUNCTION_174();
          v267(v35);
          v36 = OUTLINED_FUNCTION_58();
          v267(v36);
          v37 = *v264;
          v38 = OUTLINED_FUNCTION_9_2();
          v40 = v39(v38);
          if (v40 != v262)
          {
            break;
          }

          v41 = v0[37];
          v42 = v0[35];
          v44 = v0[31];
          v43 = v0[32];
          v45 = v0[29];
          v46 = OUTLINED_FUNCTION_375();
          v47(v46);
          v48 = *v250;
          v49 = OUTLINED_FUNCTION_58();
          v50(v49);
          v51 = *v249;
          v52 = OUTLINED_FUNCTION_150();
          v53(v52);
          v54 = *v248;
          v55 = OUTLINED_FUNCTION_91_0();
          v57 = v56(v55);
          if (v57 == v246)
          {
            v58 = v0[31];
            v59 = v0[29];
            v60 = v0[25];
            v61 = v0[23];
            v62 = OUTLINED_FUNCTION_375();
            v63(v62);
            v64 = *v242;
            v65 = OUTLINED_FUNCTION_58();
            v66(v65);
            v67 = sub_227D4A7D8();
            v68 = v0[39];
            v69 = v0[34];
            v70 = v0[25];
            v71 = v0[23];
            v110 = v67;
            v112 = v111;
            v113 = swift_task_alloc();
            *(v113 + 16) = v110;
            *(v113 + 24) = v112;
            OUTLINED_FUNCTION_213_2();
            sub_227D49378();

            v114 = v241;
          }

          else
          {
            if (v57 != v240)
            {
              goto LABEL_56;
            }

            v80 = v0[31];
            v82 = v0[28];
            v81 = v0[29];
            v83 = v0[26];
            v84 = OUTLINED_FUNCTION_375();
            v85(v84);
            v86 = *v238;
            v87 = OUTLINED_FUNCTION_58();
            v88(v87);
            v89 = sub_227D4A868();
            v68 = v0[39];
            v90 = v0[34];
            v91 = v0[28];
            v92 = v0[26];
            v115 = v89;
            v117 = v116;
            v118 = swift_task_alloc();
            *(v118 + 16) = v115;
            *(v118 + 24) = v117;
            OUTLINED_FUNCTION_213_2();
            sub_227D49378();

            v114 = v239;
          }

          v119 = *v114;
          v120 = OUTLINED_FUNCTION_307_0();
          v121(v120);
          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v122, v123, v124, v68);

          (*v245)(v0[32], v0[29]);
LABEL_21:
          v138 = v0[39];
          v139 = v0[34];
          (*v257)(v0[38], v0[35]);
          OUTLINED_FUNCTION_424();
          OUTLINED_FUNCTION_318(v140, v141, v142);
          if (v143)
          {
            sub_227C1CB1C(v0[34], &qword_27D7E9468);
          }

          else
          {
            (v278)(v0[45], v0[34], v0[39]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v149 = *(v271 + 16);
              OUTLINED_FUNCTION_21();
              sub_227B1BEF0();
              v271 = v150;
            }

            v146 = *(v271 + 16);
            v145 = *(v271 + 24);
            if (v146 >= v145 >> 1)
            {
              OUTLINED_FUNCTION_55(v145);
              sub_227B1BEF0();
              v271 = v151;
            }

            v147 = v0[45];
            v148 = v0[39];
            *(v271 + 16) = v146 + 1;
            (v278)(v271 + v252 + v146 * v274, v147, v148);
          }

          v31 += v255;
          if (!--v23)
          {
            goto LABEL_33;
          }
        }

        if (v40 == v247)
        {
          v72 = OUTLINED_FUNCTION_100_4();
          v73(v72);
          v74 = *v32;
          v75 = *(v244 + 8);
          v76 = swift_task_alloc();
          *(v76 + 16) = v74;
          *(v76 + 24) = v75;
          OUTLINED_FUNCTION_213_2();
          sub_227D49378();

          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v77, v78, v79, v33);
LABEL_20:

          goto LABEL_21;
        }

        if (v40 == v243)
        {
LABEL_13:
          v93 = OUTLINED_FUNCTION_100_4();
          v94(v93);
          v95 = *v32;
          *(swift_task_alloc() + 16) = v95;
          OUTLINED_FUNCTION_552();
          sub_227D49378();
          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v96, v97, v98, v33);
          goto LABEL_20;
        }

        if (v40 == v237)
        {
          v99 = v0[39];
          v100 = v0[34];
          v101 = v0[22];
          v102 = v0[20];
          (*v259)(v0[37], v0[35]);
          v103 = *v236;
          v104 = OUTLINED_FUNCTION_173_0();
          v105(v104);
          *(swift_task_alloc() + 16) = v101;
          OUTLINED_FUNCTION_213_2();
          OUTLINED_FUNCTION_552();
          sub_227D49378();
          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v106, v107, v108, v99);
          v109 = v235;
        }

        else
        {
          if (v40 != v234)
          {
            if (v40 != v231)
            {
LABEL_56:
              OUTLINED_FUNCTION_323_0();
              sub_227D4D7F8();
              OUTLINED_FUNCTION_339_0();
              return;
            }

            goto LABEL_13;
          }

          v125 = v0[39];
          v126 = v0[34];
          v127 = v0[19];
          v128 = v0[17];
          (*v259)(v0[37], v0[35]);
          v129 = *v233;
          v130 = OUTLINED_FUNCTION_173_0();
          v131(v130);
          *(swift_task_alloc() + 16) = v127;
          OUTLINED_FUNCTION_213_2();
          OUTLINED_FUNCTION_552();
          sub_227D49378();
          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v132, v133, v134, v125);
          v109 = v232;
        }

        v135 = *v109;
        v136 = OUTLINED_FUNCTION_340();
        v137(v136);
        goto LABEL_20;
      }

LABEL_33:
      sub_227B1D528();
      v9 = v281;
    }

    v152 = *(v9 + 16);
    if (!v152)
    {
      break;
    }

    v153 = v0[40];
    v154 = v9 + v252;
    v268 = *(v153 + 16);
    (v268)(v0[43], v9 + v252, v0[39]);
    v265 = (v153 + 8);
    sub_227D4CE58();
    for (i = v152 - 1; ; --i)
    {
      v157 = v0[42];
      v156 = v0[43];
      v158 = v0[41];
      v159 = v0[39];
      v160 = OUTLINED_FUNCTION_87_1();
      v268(v160);
      v161 = swift_task_alloc();
      *(v161 + 16) = v156;
      *(v161 + 24) = v157;
      OUTLINED_FUNCTION_213_2();
      sub_227D49378();
      v162 = *v265;
      v163 = OUTLINED_FUNCTION_246();
      v162(v163);
      v164 = OUTLINED_FUNCTION_278();
      v162(v164);
      OUTLINED_FUNCTION_186_2();
      v278();
      if (!i)
      {
        break;
      }

      v154 += v274;
    }

    v165 = v0[47];
    v166 = v0[43];
    v167 = v0[44];
    v168 = v0[39];
    v169 = v0[33];
    v170 = v0[16];
    v260 = v0[14];
    v275 = v0[5];

    (v278)(v167, v166, v168);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v171, v172, v173, v168);
    OUTLINED_FUNCTION_1_22();
    sub_227B17E0C(v174);
    sub_227D4CBF8();
    OUTLINED_FUNCTION_186_2();
    (v268)();
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v175, v176, v177, v168);
    sub_227D4CBE8();
    OUTLINED_FUNCTION_5_16();
    sub_227B180A0(v178);
    v12 = v275;
    sub_227D4CAF8();
    OUTLINED_FUNCTION_223();
    v179 = sub_227D4CB38();
    v180 = v0[11];

    v181 = sub_227B4BF3C(v179);
    v11 = 0;
    v272 = v180;
    v276 = (v180 + 32);
    v279 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v181 == v11)
      {

        sub_227D4CE58();
        sub_227C419B0();
        v221 = v0[44];
        v222 = v0[39];
        v224 = v0[15];
        v223 = v0[16];
        v225 = v0[14];

        v226 = *(v224 + 8);
        v227 = OUTLINED_FUNCTION_179();
        v228(v227);
        v229 = OUTLINED_FUNCTION_57_0();
        v162(v229);

        v211 = v0[45];
        v210 = v0[46];
        v213 = v0[43];
        v212 = v0[44];
        v215 = v0[41];
        v214 = v0[42];
        v216 = v0[37];
        v217 = v0[38];
        v218 = v0[34];
        v251 = v0[33];
        v253 = v0[32];
        v254 = v0[31];
        v256 = v0[28];
        v258 = v0[25];
        v261 = v0[22];
        v263 = v0[19];
        v266 = v0[16];
        v270 = v0[13];
        v273 = v0[12];
        v277 = v0[9];
        v280 = v0[8];

        OUTLINED_FUNCTION_115();
        OUTLINED_FUNCTION_339_0();

        __asm { BRAA            X2, X16 }
      }

      if ((v179 & 0xC000000000000001) != 0)
      {
        v202 = OUTLINED_FUNCTION_278();
        v12 = MEMORY[0x22AAA63D0](v202);
      }

      else
      {
        v10 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11 >= v10)
        {
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_383(v179 + 8 * v11);
      }

      v182 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v183 = v0[9];
      sub_227C23794();
      v185 = v0[9];
      v184 = v0[10];
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v186, v187, v188, v184);

      OUTLINED_FUNCTION_318(v185, 1, v184);
      if (v143)
      {
        sub_227C1CB1C(v0[9], &qword_27D7E6AD8);
        ++v11;
      }

      else
      {
        v189 = v0[13];
        v269 = v0[12];
        v190 = v0[10];
        v191 = *v276;
        (*v276)(v189, v0[9], v190);
        v191(v269, v189, v190);
        v192 = v279;
        v193 = swift_isUniquelyReferenced_nonNull_native();
        if ((v193 & 1) == 0)
        {
          v203 = *(v279 + 16);
          v204 = OUTLINED_FUNCTION_21();
          v192 = sub_227B63540(v204, v205, v206, v279);
        }

        v195 = *(v192 + 16);
        v194 = *(v192 + 24);
        v279 = v192;
        v12 = v195 + 1;
        if (v195 >= v194 >> 1)
        {
          v207 = OUTLINED_FUNCTION_55(v194);
          v279 = sub_227B63540(v207, v208, v209, v279);
        }

        v196 = v0[12];
        v197 = v0[10];
        *(v279 + 16) = v12;
        v198 = *(v272 + 80);
        OUTLINED_FUNCTION_19();
        (v191)(v200 + v199 + *(v201 + 72) * v195);
        v11 = v182;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    OUTLINED_FUNCTION_12(v10);
    sub_227B1BEF0();
    v9 = v230;
  }

  __break(1u);
}

void sub_227C231A0()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C23260(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C231A0();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C232C4()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

void sub_227C23364()
{
  OUTLINED_FUNCTION_450_0();
  v4 = OUTLINED_FUNCTION_346_0(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_227C41938(v4, 1, v5);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v11 = *(v8(0) - 8);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_451_0();
    return;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v0);
  v15 = v14 + v0;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_227C23460()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_385_0(v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9(v2);
  v43 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_61_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9618, &qword_227D5E1D0);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_103();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9620, &qword_227D5E1D8);
  v44 = OUTLINED_FUNCTION_9(v13);
  v45 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_363_0(v18, v19, v20, v21, v22, v23, v24, v25, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  OUTLINED_FUNCTION_324();
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_377_0();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_612();
  v28 = *(v9 + 8);
  v29 = OUTLINED_FUNCTION_193();
  v28(v29);
  v30 = *(v43 + 8);
  v31 = OUTLINED_FUNCTION_227();
  v30(v31);
  OUTLINED_FUNCTION_394_0();
  sub_227D48FE8();
  OUTLINED_FUNCTION_439_0();
  OUTLINED_FUNCTION_612();
  v32 = OUTLINED_FUNCTION_193();
  v28(v32);
  v33 = OUTLINED_FUNCTION_227();
  v30(v33);
  v34 = OUTLINED_FUNCTION_9_2();
  *(v46 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_85_1();
  v37 = sub_227C4AAF4(v36);
  OUTLINED_FUNCTION_449_0(v37);
  OUTLINED_FUNCTION_87();
  sub_227B1A6E4(v38);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_324();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FA8();
  v39 = *(v45 + 8);
  v40 = OUTLINED_FUNCTION_167_2();
  v39(v40);
  v41 = OUTLINED_FUNCTION_127_1();
  v39(v41);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C23794()
{
  OUTLINED_FUNCTION_351();
  v3 = sub_227D49F28();
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v7 = sub_227D49918();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_68_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_75_2();
  v19 = sub_227D49188();
  v20 = OUTLINED_FUNCTION_5(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_126_1();
  sub_227C24B78();
  sub_227C31D74();
  sub_227C32040();
  sub_227C32454();
  sub_227C32714();
  v26[3] = sub_227D49528();
  OUTLINED_FUNCTION_41_4();
  v26[4] = sub_227B17E0C(v23);
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_227D49518();
  sub_227C32CC8();
  sub_227C32ED0();
  sub_227C33178();
  sub_227C333DC();
  sub_227C33C58(v27);
  if (!v27[1])
  {
    v24 = 1;
LABEL_6:
    v25 = sub_227D4AA38();
    __swift_storeEnumTagSinglePayload(v1, v24, 1, v25);
    sub_227C2F620();
    sub_227C336DC();
    sub_227C338A8();
    sub_227C2EC44();
    sub_227C3DCA8();

    sub_227C340B8();
    sub_227C34248();
    sub_227C2E440();
    sub_227C2E050();
    sub_227C2F188();
    sub_227C3DE00();

    sub_227C2E830();
    sub_227C322E8();
    sub_227D49928();
    goto LABEL_7;
  }

  memcpy(v28, v27, sizeof(v28));
  sub_227C3DB48();
  v24 = v0;
  if (!v0)
  {
    sub_227C1CB1C(v27, &qword_27D7E91E8);
    goto LABEL_6;
  }

  sub_227C1CB1C(v27, &qword_27D7E91E8);
  sub_227C1CB1C(v2, &qword_27D7E6CD8);
  __swift_destroy_boxed_opaque_existential_0(v26);
LABEL_7:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C23BD4()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_5(v2);
  v4 = *(v3 + 64);
  v1[3] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49AB8();
  v1[4] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[5] = v6;
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_379();
  v1[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9500, &qword_227D5E0E8);
  v1[9] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[10] = v13;
  v15 = *(v14 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v1[12] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v16);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v17 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227C23D70()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v9);
  OUTLINED_FUNCTION_302_0();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v10);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_223();
  v11 = sub_227D4CB38();
  v12 = v0[5];

  result = sub_227B4BF3C(v11);
  v14 = result;
  v15 = 0;
  v56 = (v12 + 32);
  v57 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v15)
    {

      sub_227D4CE58();
      sub_227C419B0();
      v43 = v0[10];
      v44 = v0[11];
      v46 = v0[8];
      v45 = v0[9];
      v48 = v0[6];
      v47 = v0[7];
      v49 = v0[3];

      v50 = *(v43 + 8);
      v51 = OUTLINED_FUNCTION_147();
      v52(v51);

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_90();

      __asm { BRAA            X2, X16 }
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x22AAA63D0](v15, v11);
    }

    else
    {
      if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      result = OUTLINED_FUNCTION_383(v11 + 8 * v15);
    }

    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v17 = v0[3];
    sub_227C23794();
    v19 = v0[3];
    v18 = v0[4];
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);

    OUTLINED_FUNCTION_318(v19, 1, v18);
    if (v23)
    {
      result = sub_227C1CB1C(v0[3], &qword_27D7E6AD8);
      ++v15;
    }

    else
    {
      v24 = v0[7];
      v55 = v0[6];
      v25 = v0[4];
      v26 = *v56;
      (*v56)(v24, v0[3], v25);
      v26(v55, v24, v25);
      v27 = v26;
      v28 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = *(v57 + 16);
        v37 = OUTLINED_FUNCTION_21();
        v28 = sub_227B63540(v37, v38, v39, v57);
      }

      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (v31 >= v30 >> 1)
      {
        v40 = OUTLINED_FUNCTION_55(v30);
        v28 = sub_227B63540(v40, v41, v42, v28);
      }

      v32 = v0[6];
      v33 = v0[4];
      *(v28 + 16) = v31 + 1;
      OUTLINED_FUNCTION_104_2();
      v57 = v28;
      result = v27(v28 + v34 + *(v35 + 72) * v31);
      v15 = v16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_227C241BC()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9500, &qword_227D5E0E8);
  v1[10] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  v1[13] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v1[16] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v18);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v19 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227C24334()
{
  v1 = *(v0 + 120);
  v40 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v39 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v9 + 16) = v39;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  *(v0 + 16) = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_552();
  sub_227D49378();
  v10 = *(v3 + 16);
  v11 = OUTLINED_FUNCTION_173();
  v12(v11);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9508, &qword_227D5E0F0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9510, &qword_227D5E0F8);
  OUTLINED_FUNCTION_10_0(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_227D4E520;
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v21);
  sub_227D48ED8();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v22);
  OUTLINED_FUNCTION_173();
  sub_227D4CBF8();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v23);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_179();
  v24 = sub_227D4CB38();

  result = sub_227B4BF3C(v24);
  if (result)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AAA63D0](0, v24);
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v26 = *(v24 + 32);
    }

    v27 = *(v0 + 24);

    sub_227C23794();

    v28 = 0;
  }

  else
  {

    v28 = 1;
  }

  v30 = *(v0 + 112);
  v29 = *(v0 + 120);
  v31 = *(v0 + 104);
  v32 = *(v0 + 72);
  v33 = *(v0 + 24);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v34 = *(v30 + 8);
  v35 = OUTLINED_FUNCTION_91_0();
  v36(v35);
  v37 = sub_227D49AB8();
  __swift_storeEnumTagSinglePayload(v33, v28, 1, v37);

  OUTLINED_FUNCTION_18();

  return v38();
}

void sub_227C24708()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v43 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v44);
  v46 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_103();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9(v15);
  v45 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_72_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9498, &qword_227D5E0D8);
  v41 = OUTLINED_FUNCTION_9(v20);
  v42 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_219_1();
  v40 = *v3;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_446_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_5();
  sub_227D48F28();

  v39 = *(v11 + 8);
  v26 = OUTLINED_FUNCTION_264_0();
  v27(v26);
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v29);
  OUTLINED_FUNCTION_91_0();
  sub_227D48F08();
  v30 = *(v46 + 8);
  v30(v1, v44);
  v31 = *(v45 + 8);
  v31(v0, v15);
  OUTLINED_FUNCTION_446_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_335_0();

  v32 = OUTLINED_FUNCTION_264_0();
  v39(v32);
  sub_227D48FE8();
  OUTLINED_FUNCTION_91_0();
  sub_227D48F08();
  v33 = OUTLINED_FUNCTION_173_0();
  (v30)(v33);
  v31(v0, v15);
  *(v43 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9518, &unk_227D5E100);
  v34 = sub_227C4B0F8();
  OUTLINED_FUNCTION_421(v34);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v35);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FA8();
  v36 = *(v42 + 8);
  v37 = OUTLINED_FUNCTION_168_1();
  v36(v37);
  v38 = OUTLINED_FUNCTION_127_1();
  v36(v38);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C24B78()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C24C38(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C24B78();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C24C7C()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C24DE8()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v0;
  v1[5] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_379();
  v1[8] = swift_task_alloc();
  v8 = sub_227D492A8();
  v1[9] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_379();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9500, &qword_227D5E0E8);
  v1[17] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[18] = v16;
  v18 = *(v17 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  v1[20] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[21] = v20;
  v22 = *(v21 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v1[23] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v23);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v24 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227C25014()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 48);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v0 + 16) = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  sub_227D49378();
  v11 = *(v3 + 16);
  v12 = OUTLINED_FUNCTION_173();
  v13(v12);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v17);
  sub_227D4CBF8();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v18);
  OUTLINED_FUNCTION_416_0();
  sub_227D4CAF8();
  OUTLINED_FUNCTION_179();
  v19 = sub_227D4CB38();

  if (!sub_227B4BF3C(v19))
  {
    v30 = *(v0 + 168);
    v31 = *(v0 + 176);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v35 = *(v0 + 136);
    v34 = *(v0 + 144);

    v36 = *(v34 + 8);
    v37 = OUTLINED_FUNCTION_141();
    v38(v37);
    v39 = *(v30 + 8);
    v40 = OUTLINED_FUNCTION_147();
    v41(v40);
    goto LABEL_20;
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 56);
  swift_getKeyPath();
  swift_retain_n();
  sub_227D4CE58();
  sub_227C1B0B8(v21);
  OUTLINED_FUNCTION_318(v21, 1, v20);
  if (v22)
  {
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 56);

    sub_227C1CB1C(v25, &qword_27D7E6D08);
    OUTLINED_FUNCTION_71_0();
    v29 = v23;
LABEL_18:
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    v63 = *(v0 + 64);
    v62 = *(v0 + 72);

    OUTLINED_FUNCTION_424();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, v65, v66);
    v69 = *(v0 + 168);
    v68 = *(v0 + 176);
    v70 = *(v0 + 152);
    v71 = *(v0 + 136);
    v72 = *(v0 + 144);
    if (EnumTagSinglePayload != 1)
    {
      v103 = *(v0 + 160);
      v80 = *(v0 + 80);
      v81 = *(v0 + 40);
      (*(v80 + 32))(*(v0 + 120), *(v0 + 64), *(v0 + 72));
      sub_227D49298();
      sub_227D491D8();
      v83 = v82;
      v84 = *(v80 + 8);
      v85 = OUTLINED_FUNCTION_299_0();
      v84(v85);
      v86 = OUTLINED_FUNCTION_355_0();
      v84(v86);
      v87 = *(v72 + 8);
      v88 = OUTLINED_FUNCTION_141();
      v89(v88);
      (*(v69 + 8))(v68, v103);
      v106 = v83 < v81;
      goto LABEL_22;
    }

    v73 = *(v0 + 64);
    v74 = *(v72 + 8);
    v75 = OUTLINED_FUNCTION_141();
    v76(v75);
    v77 = *(v69 + 8);
    v78 = OUTLINED_FUNCTION_9_2();
    v79(v78);
    sub_227C1CB1C(v73, &qword_27D7E6D08);
LABEL_20:
    v106 = 0;
LABEL_22:
    v90 = *(v0 + 176);
    v91 = *(v0 + 152);
    v93 = *(v0 + 120);
    v92 = *(v0 + 128);
    v95 = *(v0 + 104);
    v94 = *(v0 + 112);
    v97 = *(v0 + 88);
    v96 = *(v0 + 96);
    v98 = *(v0 + 64);
    v104 = *(v0 + 56);

    OUTLINED_FUNCTION_115();

    return v99(v106);
  }

  v42 = *(v0 + 80);
  v43 = *(v42 + 32);
  (v43)(*(v0 + 112), *(v0 + 56), *(v0 + 72));
  result = sub_227B4BF3C(v19);
  v102 = v19 & 0xC000000000000001;
  v105 = result;
  v100 = v19;
  v101 = v19 & 0xFFFFFFFFFFFFFF8;
  for (i = 0; ; ++i)
  {
    if (v105 == i)
    {
      v58 = *(v0 + 112);
      v60 = *(v0 + 64);
      v59 = *(v0 + 72);

      v61 = OUTLINED_FUNCTION_336();
      v43(v61);
      OUTLINED_FUNCTION_99();
      v29 = v59;
      goto LABEL_18;
    }

    if (v102)
    {
      result = MEMORY[0x22AAA63D0](i, v19);
      goto LABEL_11;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v101 + 16))
    {
      goto LABEL_27;
    }

    result = OUTLINED_FUNCTION_383(v19 + 8 * i);
LABEL_11:
    if (__OFADD__(i, 1))
    {
      goto LABEL_26;
    }

    v47 = *(v0 + 104);
    v46 = *(v0 + 112);
    v48 = v43;
    v49 = *(v0 + 96);
    v50 = *(v0 + 72);

    sub_227C24D1C();

    v51 = OUTLINED_FUNCTION_551();
    v43 = v48;
    v48(v51);
    OUTLINED_FUNCTION_16_9();
    sub_227B17E0C(&unk_280E7B6F0);
    if (sub_227D4CEE8())
    {
      v52 = *(v0 + 104);
      v53 = *(v0 + 112);
      v54 = *(v0 + 72);
      v55 = OUTLINED_FUNCTION_147();
      v56(v55);
      v57 = OUTLINED_FUNCTION_57_0();
      v43 = v48;
      result = (v48)(v57);
    }

    else
    {
      result = (*(v42 + 8))(*(v0 + 104), *(v0 + 72));
    }

    v19 = v100;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_227C256B8()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9500, &qword_227D5E0E8);
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  v1[10] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v1[13] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v15);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v16 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227C2582C()
{
  v1 = v0[12];
  v31 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v0[2] = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_209_2();
  sub_227D49378();
  v10 = *(v2 + 16);
  v11 = OUTLINED_FUNCTION_93_0();
  v12(v11);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v16);
  sub_227D4CBF8();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v17);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_246();
  v29 = sub_227D4CB18();
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[9];
  v21 = v0[10];
  v23 = v0[7];
  v22 = v0[8];
  v30 = v0[6];

  v24 = *(v22 + 8);
  v25 = OUTLINED_FUNCTION_236();
  v26(v25);
  (*(v19 + 8))(v18, v21);

  v27 = v0[1];

  return v27(v29 > 0);
}

uint64_t sub_227C25A70()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_227D4CAB8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_379();
  v1[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9468, &qword_227D5E0A8);
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v12 = sub_227D492A8();
  v1[12] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v1[15] = type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v16);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v17 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227C25BD8()
{
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  sub_227D49288();
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v5;
  v6[5] = v3;
  sub_227C26CEC(sub_227C4AD68, v6, v4);
  v7 = v0[15];
  v8 = v0[6];

  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v9);
  OUTLINED_FUNCTION_132_0();
  sub_227D4CAF8();
  sub_227D4CB28();
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[11];
  v18 = v0[6];
  v29 = *(v0 + 2);

  OUTLINED_FUNCTION_132_0();
  sub_227D4CAF8();
  v19 = OUTLINED_FUNCTION_407();
  v20 = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(v19);
  v21 = swift_task_alloc();
  *(v21 + 16) = v29;
  *(v21 + 32) = v16;
  v0[2] = v20;
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_552();
  sub_227D49378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9470, &qword_227D5E0B0);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v26);
  OUTLINED_FUNCTION_82();
  sub_227D4CB48();
  v27 = v0[15];
  v28 = v0[6];
  sub_227C1CB1C(v0[11], &qword_27D7E9468);

  OUTLINED_FUNCTION_236();
  sub_227D4CAF8();
  sub_227D4CB28();

  v10 = v0[11];
  v12 = v0[9];
  v11 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_18();

  return v13();
}

void sub_227C260A0()
{
  OUTLINED_FUNCTION_351();
  v140 = v0;
  v124 = v3;
  v127 = v4;
  v128 = v5;
  OUTLINED_FUNCTION_342();
  v6 = sub_227D49528();
  v7 = OUTLINED_FUNCTION_9(v6);
  v138 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_3();
  v137 = v11;
  OUTLINED_FUNCTION_191_2();
  v12 = sub_227D49F28();
  v13 = OUTLINED_FUNCTION_9(v12);
  v110 = v14;
  v111 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v109 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_26_0();
  v141 = v22;
  OUTLINED_FUNCTION_191_2();
  v23 = sub_227D49918();
  v24 = OUTLINED_FUNCTION_9(v23);
  v129 = v25;
  v130 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_126_1();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  v28 = OUTLINED_FUNCTION_62_0(v125);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_3();
  v126 = v31;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_329_0();
  v33 = sub_227D49188();
  v34 = OUTLINED_FUNCTION_9(v33);
  v122 = v35;
  v123 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  v40 = v39 - v38;
  v41 = sub_227D492A8();
  v42 = OUTLINED_FUNCTION_9(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_3();
  v115 = v45;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  v160 = v47;
  v48 = *(v47 + 16);
  v142 = &v99 - v50;
  v143 = v49;
  v107 = v48;
  v108 = v47 + 16;
  v48();
  v112 = sub_227D49848();
  v131 = v51;
  v113 = sub_227D49A78();
  v133 = v52;
  v114 = sub_227D49A58();
  v132 = v53;
  sub_227D49A98();
  sub_227D49978();
  v139 = v6;
  v150 = v6;
  OUTLINED_FUNCTION_41_4();
  v116 = sub_227B17E0C(v54);
  v151 = v116;
  __swift_allocate_boxed_opaque_existential_1(v149);
  OUTLINED_FUNCTION_349_0();
  v121 = v40;
  sub_227D49518();
  v117 = sub_227D49A38();
  v134 = v55;
  v118 = sub_227D49A68();
  v136 = v56;
  v135 = sub_227D49998();
  v144 = v2;
  sub_227D49958();
  v119 = sub_227D499A8();
  sub_227D49938();
  v120 = v57;
  sub_227D49948();
  sub_227D49AA8();
  sub_227C3EF8C();
  (*(v129 + 8))(v1, v130);
  v58 = v141;
  sub_227D49A48();
  v59 = v58;
  v60 = sub_227D4AA38();
  v61 = OUTLINED_FUNCTION_215_2();
  OUTLINED_FUNCTION_318(v61, v62, v60);
  if (v63)
  {
    OUTLINED_FUNCTION_390_0();
    sub_227C1CB1C(v59, &qword_27D7E67F0);
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
  }

  else
  {
    v71 = v140;
    sub_227C3F0B4();
    if (v71)
    {

      sub_227C1CB1C(v144, &qword_27D7E6CD8);
      (*(v160 + 8))(v142, v143);
      OUTLINED_FUNCTION_14_0(v60);
      (*(v72 + 8))(v141, v60);
      __swift_destroy_boxed_opaque_existential_0(v149);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_390_0();
    v140 = 0;
    v104 = v153;
    v105 = v152;
    v102 = v155;
    v103 = v154;
    v100 = v157;
    v101 = v156;
    v99 = v158;
    OUTLINED_FUNCTION_14_0(v60);
    (*(v73 + 8))(v141, v60);
    v70 = v99;
    v69 = v100;
    v68 = v101;
    v67 = v102;
    v66 = v103;
    v65 = v104;
    v64 = v105;
  }

  v159[0] = v64;
  v159[1] = v65;
  v159[2] = v66;
  v159[3] = v67;
  v159[4] = v68;
  v159[5] = v69;
  v159[6] = v70;
  *&v101 = sub_227D499E8();
  *&v102 = sub_227D49A28();
  *&v103 = sub_227D499C8();
  *&v105 = sub_227D49A08();
  v74 = v109;
  sub_227D49968();
  LODWORD(v104) = sub_227C3F370();
  (*(v110 + 8))(v74, v111);
  LODWORD(v141) = sub_227D49A88();
  v75 = __swift_mutable_project_boxed_opaque_existential_1(v149, v150);
  v76 = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_166_2(v76);
  v77 = swift_allocObject();
  (*(v138 + 16))(v137, v75, v139);
  *(v77 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91F0, &qword_227D5C220);
  OUTLINED_FUNCTION_1_22();
  v79 = sub_227B17E0C(v78);
  v145 = v76;
  v146 = v76;
  v147 = v79;
  v148 = v79;
  OUTLINED_FUNCTION_13_1();
  *(v77 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v77 + 24));
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v77 + 16) = 16843009;
  *(v77 + 20) = 257;
  v110 = v77 + 20;
  *(v77 + 22) = 1;
  v111 = (v77 + 22);
  sub_227D494B8();
  (v107)(v115, v142, v143);
  v80 = *(v77 + 56);
  OUTLINED_FUNCTION_256((v77 + 24), *(v77 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v81);
  OUTLINED_FUNCTION_149_0();
  sub_227D4CAD8();

  v82 = *(v160 + 8);
  v83 = OUTLINED_FUNCTION_200();
  v115 = v84;
  (v84)(v83);
  sub_227C3C834();
  sub_227C31FB4();
  sub_227C31FB4();
  sub_227D4CE58();
  OUTLINED_FUNCTION_51_5();
  sub_227C34014();
  v85 = v137;
  v86 = v139;
  sub_227D49AE8();
  sub_227C3C834();
  sub_227D49AD8();
  (*(v138 + 8))(v85, v86);
  v87 = *(v77 + 56);
  OUTLINED_FUNCTION_256((v77 + 24), *(v77 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_31_3();
  sub_227B17E0C(v88);
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_412();
  sub_227D4CAD8();

  v89 = *(v122 + 8);
  v90 = OUTLINED_FUNCTION_261_0();
  v91(v90);
  sub_227D4CE58();
  sub_227C3C834();
  sub_227C3C834();
  sub_227C31FB4();
  sub_227C330DC();
  sub_227C4BC80();
  v92 = *(v77 + 56);
  OUTLINED_FUNCTION_256((v77 + 24), *(v77 + 48));
  swift_getKeyPath();
  sub_227C3F494();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_193_3();
  sub_227C1CB1C(v93, v94);
  *(v77 + 19) = 0;
  v95 = *(v77 + 56);
  OUTLINED_FUNCTION_256((v77 + 24), *(v77 + 48));
  swift_getKeyPath();
  LOBYTE(v145) = v119 & 1;
  OUTLINED_FUNCTION_412();
  sub_227D4CAD8();

  sub_227C3381C();
  sub_227C3381C();
  if (!v106)
  {
    OUTLINED_FUNCTION_381_0();
  }

  v96 = v141;
  v97 = v111;
  sub_227C3C834();
  sub_227C33B9C(v159, (v77 + 24), v97);
  sub_227C34014();
  OUTLINED_FUNCTION_371_0();
  OUTLINED_FUNCTION_371_0();
  OUTLINED_FUNCTION_371_0();
  sub_227C3C834();
  v98 = *(v77 + 56);
  OUTLINED_FUNCTION_256((v77 + 24), *(v77 + 48));
  swift_getKeyPath();
  LOBYTE(v145) = v96 & 1;
  OUTLINED_FUNCTION_412();
  sub_227D4CAD8();

  sub_227C1CB1C(v144, &qword_27D7E6CD8);
  v115(v142, v143);
  __swift_destroy_boxed_opaque_existential_0(v149);
LABEL_10:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C26CEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_227D49AB8() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void sub_227C26DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v99 = v25;
  v26 = sub_227D48FD8();
  v27 = OUTLINED_FUNCTION_9(v26);
  v94 = v28;
  v95 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_3();
  v92 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8760, &qword_227D5B6F0);
  OUTLINED_FUNCTION_9(v32);
  v97 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26_0();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9478, &qword_227D5E0B8);
  OUTLINED_FUNCTION_9(v93);
  v96 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_26_0();
  v89 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9480, &qword_227D5E0C0);
  v98 = OUTLINED_FUNCTION_9(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_26_0();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v88);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_75_2();
  v49 = OUTLINED_FUNCTION_9_2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
  OUTLINED_FUNCTION_9(v51);
  v53 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_67_1();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9(v87);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_105_1();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9498, &qword_227D5E0D8);
  OUTLINED_FUNCTION_9(v90);
  v91 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_104();
  v86 = *v24;
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_85_1();
  sub_227B1A6E4(v64);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_199_1();
  sub_227D48F28();

  v65 = *(v53 + 8);
  v66 = OUTLINED_FUNCTION_336();
  v65(v66);
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v67);
  sub_227B1A6E4(&unk_280E7B750);
  OUTLINED_FUNCTION_324();
  sub_227D48F08();
  OUTLINED_FUNCTION_163_1(&a18);
  v68 = OUTLINED_FUNCTION_349_0();
  v69(v68);
  OUTLINED_FUNCTION_163_1(&a16);
  v70(v20, v87);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_371();
  sub_227D48F28();

  v71 = OUTLINED_FUNCTION_336();
  v65(v71);
  sub_227D492A8();
  sub_227D48FE8();
  (*(v94 + 104))(v92, *MEMORY[0x277CC8FD8], v95);
  sub_227B1A6E4(&unk_27D7E94B0);
  sub_227B1A6E4(&unk_280E7B760);
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v72);
  sub_227D48F88();
  v73 = OUTLINED_FUNCTION_196_2();
  v74(v73, v95);
  v75 = *(v97 + 8);
  v76 = OUTLINED_FUNCTION_226_0();
  v77(v76);
  (*(v96 + 8))(v89, v93);
  *(v99 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E94B8, &qword_227D5E0E0);
  v78 = sub_227C4AEDC();
  OUTLINED_FUNCTION_421(v78);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v79);
  OUTLINED_FUNCTION_265();
  sub_227B1A6E4(v80);
  OUTLINED_FUNCTION_340();
  sub_227D48FA8();
  v81 = OUTLINED_FUNCTION_249();
  v82(v81, v98);
  v83 = *(v91 + 8);
  v84 = OUTLINED_FUNCTION_201();
  v85(v84);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C27564()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_387_0();
  OUTLINED_FUNCTION_142_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_208_1();

  return sub_227C241BC();
}

uint64_t sub_227C27608()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227C21AD0();
}

uint64_t sub_227C27694()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C23BD4();
}

uint64_t sub_227C27714()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_242();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C25A70();
}

uint64_t sub_227C277B0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227C24DE8();
}

uint64_t sub_227C27844()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return sub_227C256B8();
}

uint64_t sub_227C278D0()
{
  result = sub_227D4DC48();
  qword_280E7BC90 = result;
  *algn_280E7BC98 = v1;
  return result;
}

void sub_227C278F8()
{
  OUTLINED_FUNCTION_351();
  v4 = v3;
  v136 = v5;
  OUTLINED_FUNCTION_407();
  v6 = sub_227D4CAB8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_191_2();
  v11 = sub_227D4CCB8();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  v131 = v20;
  OUTLINED_FUNCTION_191_2();
  v132 = sub_227D49188();
  v21 = OUTLINED_FUNCTION_9(v132);
  v129 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_314();
  v128 = v27;
  OUTLINED_FUNCTION_191_2();
  v28 = sub_227D49308();
  v29 = OUTLINED_FUNCTION_9(v28);
  v130 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_311_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92B8, &qword_227D5CC20);
  OUTLINED_FUNCTION_5(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_105_1();
  v37 = sub_227D49328();
  v38 = OUTLINED_FUNCTION_9(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_191_2();
  v41 = sub_227D4CCF8();
  v42 = OUTLINED_FUNCTION_9(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_172_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_120_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_219_1();
  if (v4)
  {
    sub_227D4CCC8();
    sub_227C28428();
    sub_227C1CB1C(v136, &unk_27D7E92C0);
    sub_227C1CB1C(v2, &qword_27D7E92B8);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_201_1(v48);
  sub_227C4BC80();
  OUTLINED_FUNCTION_318(v1, 1, v37);
  if (v49)
  {
    sub_227C1CB1C(v1, &qword_27D7E92B8);
    v52 = v136;
LABEL_12:
    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v80);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_413_0();
    sub_227D49D98();
    swift_willThrow();
    sub_227C1CB1C(v52, &unk_27D7E92C0);
    sub_227C1CB1C(v2, &qword_27D7E92B8);
    goto LABEL_18;
  }

  v50 = OUTLINED_FUNCTION_310_0();
  v51(v50);
  v52 = v136;
  sub_227C4BC80();
  if (!v133[3])
  {
    v77 = *(v4 + 8);
    v78 = OUTLINED_FUNCTION_113();
    v79(v78);
    sub_227C1CB1C(v133, &unk_27D7E92C0);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_337_0();
  v53 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_440_0(v53);
  v54 = sub_227D492F8();
  OUTLINED_FUNCTION_328_0(v54, v55, v135);
  v56 = *(v130 + 8);
  v57 = OUTLINED_FUNCTION_278();
  v58(v57);
  OUTLINED_FUNCTION_256(v134, v135[0]);
  v59 = sub_227B281AC();
  v60 = *v59;
  v61 = v59[1];
  OUTLINED_FUNCTION_379_0();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_120();
  v28(v62, v63);

  OUTLINED_FUNCTION_318(v131, 1, v132);
  if (v49)
  {
    sub_227C1CB1C(v131, &qword_27D7E6CD8);
    sub_227B1AF8C();
    v64 = OUTLINED_FUNCTION_265_0();
    v65(v64);
    OUTLINED_FUNCTION_420_0();
    sub_227D4CE58();
    v66 = sub_227D4CA98();
    sub_227D4D438();

    if (OUTLINED_FUNCTION_447_0())
    {
      OUTLINED_FUNCTION_415();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_229();
      v68 = swift_slowAlloc();
      v133[0] = v68;
      *(v67 + 4) = OUTLINED_FUNCTION_303_0(4.8149e-34);
      OUTLINED_FUNCTION_218_1();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v74 = OUTLINED_FUNCTION_105_2();
      MEMORY[0x22AAA7130](v74);
      OUTLINED_FUNCTION_420_0();
      OUTLINED_FUNCTION_135_3();
      MEMORY[0x22AAA7130]();
    }

    v75 = OUTLINED_FUNCTION_146_3();
    v76(v75);
    OUTLINED_FUNCTION_437_0();

    OUTLINED_FUNCTION_3_7();
    v133[1] = v110;
    v111 = OUTLINED_FUNCTION_165_3();
    MEMORY[0x22AAA5DA0](v111);

    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v112);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_413_0();
    OUTLINED_FUNCTION_58();
    sub_227D49D98();

    swift_willThrow();

    sub_227C1CB1C(v136, &unk_27D7E92C0);
    v113 = OUTLINED_FUNCTION_269_0();
    sub_227C1CB1C(v113, v114);
    OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_403_0();
    v115();
    __swift_destroy_boxed_opaque_existential_0(v134);
  }

  else
  {

    v81 = *(v129 + 32);
    OUTLINED_FUNCTION_199_1();
    v82();
    v83 = *(v129 + 16);
    v84 = OUTLINED_FUNCTION_94();
    v85(v84);
    sub_227D4CCA8();
    OUTLINED_FUNCTION_351_0();
    OUTLINED_FUNCTION_376(27, v86);
    v87 = OUTLINED_FUNCTION_188_2();
    v88(v87);
    sub_227C28428();
    OUTLINED_FUNCTION_428();
    if (v126)
    {
      v90 = v89;
      sub_227B1AF8C();
      OUTLINED_FUNCTION_411_0();
      v91 = OUTLINED_FUNCTION_228_0();
      v92(v91);
      v93 = v127;
      v94 = sub_227D4CA98();
      sub_227D4D438();

      if (OUTLINED_FUNCTION_447_0())
      {
        OUTLINED_FUNCTION_415();
        v95 = swift_slowAlloc();
        OUTLINED_FUNCTION_301();
        v96 = swift_slowAlloc();
        *v95 = 138412290;
        v97 = v127;
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v95 + 4) = v98;
        *v96 = v98;
        OUTLINED_FUNCTION_438_0(&dword_227B0D000, v99, v100, "Failed to construct model container for activity store with error, deleting files: %@");
        sub_227C1CB1C(v96, &qword_27D7E68C8);
        v101 = OUTLINED_FUNCTION_101_2();
        MEMORY[0x22AAA7130](v101);
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
      }

      v103 = *(v90 + 8);
      v102 = (v90 + 8);
      v104 = OUTLINED_FUNCTION_114();
      v105(v104);
      OUTLINED_FUNCTION_336_0();
      sub_227D49128();
      v106 = OUTLINED_FUNCTION_350_0();
      v102(v106);
      sub_227B281D4();

      v107 = OUTLINED_FUNCTION_200();
      v102(v107);
      v108 = OUTLINED_FUNCTION_221_0();
      v109(v108);
      sub_227C28428();

      sub_227C1CB1C(v136, &unk_27D7E92C0);
      v119 = OUTLINED_FUNCTION_269_0();
      sub_227C1CB1C(v119, v120);
      v121 = OUTLINED_FUNCTION_78_6();
      v122(v121);
      v123 = OUTLINED_FUNCTION_407_0();
      v102(v123);
    }

    else
    {

      sub_227C1CB1C(v136, &unk_27D7E92C0);
      sub_227C1CB1C(v0, &qword_27D7E92B8);
      v116 = *(v2 + 8);
      v117 = OUTLINED_FUNCTION_261_0();
      v118(v117);
      (*(v129 + 8))(v128, v132);
    }

    OUTLINED_FUNCTION_406_0();
    OUTLINED_FUNCTION_403_0();
    v124();
    __swift_destroy_boxed_opaque_existential_0(v134);
  }

LABEL_18:
  OUTLINED_FUNCTION_352();
}

void *sub_227C28428()
{
  OUTLINED_FUNCTION_419();
  sub_227D4CBB8();
  OUTLINED_FUNCTION_304_0();
  sub_227D4CDE8();
  sub_227C45EE4();
  v1 = sub_227D4CD38();
  sub_227C4B97C();
  v2 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_380();
  v4 = v3;

  if (v4)
  {
    type metadata accessor for GameActivityInstanceStore();
    OUTLINED_FUNCTION_198_2();
    swift_allocObject();
    OUTLINED_FUNCTION_300_0();
    v5 = sub_227D4CB88();
    OUTLINED_FUNCTION_166_2(v5);
    swift_allocObject();
    OUTLINED_FUNCTION_308();

    sub_227D4CB98();
    OUTLINED_FUNCTION_342();
    v6 = sub_227D4CD28();
    OUTLINED_FUNCTION_166_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_78_0();
    v7 = sub_227D4CD18();
    OUTLINED_FUNCTION_181_0();
    v9 = sub_227B17E0C(v8);
    v1[2] = v7;
    v1[3] = v9;
    v1[4] = v4;
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_20_8();
    sub_227B17E0C(v12);
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_378_0();
    swift_willThrow();
  }

  v10 = sub_227D4CCF8();
  OUTLINED_FUNCTION_15_6(v10);
  (*(v11 + 8))(v0);
  return v1;
}

uint64_t sub_227C285FC()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_227D498E8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4CAB8();
  v1[10] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v16 = sub_227D49B48();
  v1[14] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[15] = v17;
  v19 = *(v18 + 64);
  v1[16] = OUTLINED_FUNCTION_379();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v20);
  v22 = *(v21 + 64);
  v1[19] = OUTLINED_FUNCTION_30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9330, &unk_227D5DF40);
  v1[20] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v1[21] = v24;
  v26 = *(v25 + 64);
  v1[22] = OUTLINED_FUNCTION_30();
  v27 = sub_227D492A8();
  v1[23] = v27;
  OUTLINED_FUNCTION_10_0(v27);
  v1[24] = v28;
  v30 = *(v29 + 64);
  v1[25] = OUTLINED_FUNCTION_30();
  v1[26] = type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v31);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v32 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_227C2888C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[6];
  v7 = v0[3];
  sub_227D49298();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v13);
  OUTLINED_FUNCTION_302_0();
  sub_227D4CBF8();
  *(swift_task_alloc() + 16) = v7;
  v0[2] = v12;
  sub_227D49378();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  OUTLINED_FUNCTION_359();
  sub_227D4CBE8();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v17);
  v18 = sub_227D4CAF8();
  OUTLINED_FUNCTION_179();
  sub_227D4CB38();
  OUTLINED_FUNCTION_308();

  result = sub_227B4BF3C(v18);
  if (result)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AAA63D0](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v20 = *(v18 + 32);
    }

    v22 = v0[13];
    v21 = v0[14];

    sub_227C29638();
    sub_227D49B28();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v21);
    v24 = v0[18];
    v26 = v0[14];
    v25 = v0[15];
    v27 = v0[13];
    if (EnumTagSinglePayload == 1)
    {
      (*(v25 + 104))(v24, *MEMORY[0x277D0CD18], v0[14]);
      OUTLINED_FUNCTION_424();
      OUTLINED_FUNCTION_318(v28, v29, v30);
      if (!v31)
      {
        sub_227C1CB1C(v0[13], &qword_27D7E6CE8);
      }
    }

    else
    {
      (*(v25 + 32))(v24, v0[13], v0[14]);
    }

    v39 = v0[17];
    v38 = v0[18];
    v40 = v0[14];
    v41 = v0[15];
    v42 = v0[3];
    sub_227D497E8();
    OUTLINED_FUNCTION_114_2();
    LOBYTE(v42) = sub_227D49B18();
    v43 = *(v41 + 8);
    v44 = OUTLINED_FUNCTION_307_0();
    v43(v44);
    v135 = v43;
    if ((v42 & 1) == 0)
    {
      v132 = v0[18];
      v50 = v0[15];
      v49 = v0[16];
      v51 = v0[14];
      v52 = v0[11];
      v53 = v0[12];
      v54 = v0[10];
      v130 = v0[9];
      v56 = v0[7];
      v55 = v0[8];
      v57 = v0[3];
      v58 = sub_227B1AF8C();
      (*(v52 + 16))(v53, v58, v54);
      (*(v50 + 16))(v49, v132, v51);
      (*(v55 + 16))(v130, v57, v56);
      v59 = sub_227D4CA98();
      v60 = sub_227D4D418();
      v61 = os_log_type_enabled(v59, v60);
      v133 = v0[25];
      v129 = v0[23];
      v131 = v0[24];
      v127 = v0[22];
      v128 = v0[21];
      v62 = v0[18];
      v125 = v62;
      v126 = v0[20];
      if (v61)
      {
        v121 = v60;
        v63 = v0[16];
        v64 = v0[17];
        v65 = v0[14];
        v122 = v0[11];
        v123 = v0[10];
        v124 = v0[12];
        v119 = v0[9];
        v66 = v0[8];
        v120 = v0[7];
        v67 = swift_slowAlloc();
        swift_slowAlloc();
        *v67 = 136315394;
        sub_227D49B38();
        (v135)(v63, v65);
        v68 = OUTLINED_FUNCTION_94();
        v71 = sub_227B1B1A4(v68, v69, v70);

        *(v67 + 4) = v71;
        *(v67 + 12) = 2080;
        sub_227D497E8();
        v72 = sub_227D49B38();
        v73 = OUTLINED_FUNCTION_91_0();
        v135(v73);
        (*(v66 + 8))(v119, v120);
        v74 = OUTLINED_FUNCTION_57_0();
        sub_227B1B1A4(v74, v75, v76);
        OUTLINED_FUNCTION_223();

        *(v67 + 14) = v72;
        _os_log_impl(&dword_227B0D000, v59, v121, "Cannot transition from %s to %s", v67, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();

        (*(v122 + 8))(v124, v123);
        (v135)(v125, v65);
      }

      else
      {
        v77 = v0[16];
        v78 = v0[14];
        v80 = v0[11];
        v79 = v0[12];
        v82 = v0[9];
        v81 = v0[10];
        v83 = v0[7];
        v84 = v0[8];

        v85 = *(v84 + 8);
        v86 = OUTLINED_FUNCTION_173();
        v87(v86);
        v88 = OUTLINED_FUNCTION_57_0();
        v135(v88);
        v89 = *(v80 + 8);
        v90 = OUTLINED_FUNCTION_179();
        v91(v90);
        (v135)(v125, v78);
      }

      (*(v128 + 8))(v127, v126);
      (*(v131 + 8))(v133, v129);
      goto LABEL_21;
    }

    v45 = v0[25];
    v46 = v0[4];
    v47 = v0[5];
    v48 = v0[3];
    sub_227C296F8();
    v92 = v0[26];
    v134 = v0[18];
    v93 = v0[14];
    v94 = v0[6];
    OUTLINED_FUNCTION_355_0();
    sub_227D4CAF8();
    OUTLINED_FUNCTION_148();
    sub_227D4CB58();

    OUTLINED_FUNCTION_355_0();
    sub_227D4CAF8();
    sub_227D4CB68();

    (v135)(v134, v93);
  }

  else
  {
    v32 = v0[25];
    v34 = v0[4];
    v33 = v0[5];
    v35 = v0[3];

    OUTLINED_FUNCTION_324();
    sub_227C296F8();
    v36 = v0[26];
    v37 = v0[6];
    sub_227D4CAF8();
    OUTLINED_FUNCTION_148();
    sub_227D4CB68();
  }

  v95 = v0[26];
  v96 = v0[6];
  sub_227D4CAF8();
  sub_227D4CB28();
  v98 = v0[24];
  v97 = v0[25];
  v100 = v0[22];
  v99 = v0[23];
  v101 = v0[20];
  v102 = v0[21];

  v103 = *(v102 + 8);
  v104 = OUTLINED_FUNCTION_148();
  v105(v104);
  v106 = *(v98 + 8);
  v107 = OUTLINED_FUNCTION_9_2();
  v108(v107);
LABEL_21:
  v109 = v0[25];
  v110 = v0[22];
  v112 = v0[18];
  v111 = v0[19];
  v114 = v0[16];
  v113 = v0[17];
  v116 = v0[12];
  v115 = v0[13];
  v117 = v0[9];

  OUTLINED_FUNCTION_18();

  return v118();
}

void sub_227C2912C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9428, &qword_227D5E060);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9430, &qword_227D5E068);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_72_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_103();
  v23 = *v0;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_222_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_384_0();

  v25 = *(v13 + 8);
  v26 = OUTLINED_FUNCTION_307_0();
  v27(v26);
  sub_227D498E8();
  OUTLINED_FUNCTION_253_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_68_4();

  v29 = OUTLINED_FUNCTION_75_3();
  v30(v29);
  *(v38 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9440, &qword_227D5E0A0);
  v31 = sub_227C4AB70();
  OUTLINED_FUNCTION_421(v31);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v32);
  sub_227B1A6E4(&unk_27D7E9460);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v33 = OUTLINED_FUNCTION_74_4();
  v34(v33);
  v35 = *(v19 + 8);
  v36 = OUTLINED_FUNCTION_196_3();
  v37(v36);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C29468()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C29528(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C29468();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C2956C()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C2960C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49848();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227C29638()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C296F8()
{
  OUTLINED_FUNCTION_351();
  v312 = v0;
  v296 = v3;
  v295 = v4;
  v272 = sub_227D4CAB8();
  v5 = OUTLINED_FUNCTION_9(v272);
  v278 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v9);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9200, &unk_227D5C318);
  OUTLINED_FUNCTION_9(v276);
  v275 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v14);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9(v273);
  v280 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_0();
  v279 = v19;
  OUTLINED_FUNCTION_191_2();
  v292 = sub_227D49AC8();
  v20 = OUTLINED_FUNCTION_9(v292);
  v282 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_314();
  v285 = v25;
  OUTLINED_FUNCTION_191_2();
  v287 = sub_227D49B48();
  v26 = OUTLINED_FUNCTION_9(v287);
  v286 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  v32 = OUTLINED_FUNCTION_5(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v36);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v37 = OUTLINED_FUNCTION_9(v299);
  v307 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  v42 = MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_119_3(v42, v43, v44, v45, v46, v47, v48, v49, v254);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v50 = OUTLINED_FUNCTION_62_0(v290);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_266();
  v306 = v54;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_266();
  v305[2] = v56;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_314();
  v305[1] = v58;
  OUTLINED_FUNCTION_191_2();
  v308 = sub_227D49648();
  v59 = OUTLINED_FUNCTION_9(v308);
  v284 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_5_3();
  v305[0] = v63;
  OUTLINED_FUNCTION_191_2();
  v289 = sub_227D49188();
  v64 = OUTLINED_FUNCTION_9(v289);
  v288 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_314();
  v301 = v69;
  OUTLINED_FUNCTION_191_2();
  v70 = sub_227D49528();
  v71 = OUTLINED_FUNCTION_9(v70);
  v303 = v72;
  v304 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v78 = OUTLINED_FUNCTION_9(v77);
  v310 = v79;
  v311 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_2_3();
  v300 = v82;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_266();
  v309 = v84;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_438();
  v86 = sub_227D492A8();
  v87 = OUTLINED_FUNCTION_9(v86);
  v89 = v88;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_54_0();
  v94 = v92 - v93;
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_325_0();
  MEMORY[0x28223BE20](v96);
  v318 = v89;
  v99 = *(v89 + 16);
  v98 = v89 + 16;
  v97 = v99;
  v313 = &v254 - v101;
  v314 = v100;
  v99();
  v102 = sub_227D49848();
  v104 = v103;
  sub_227D497C8();
  v105 = v312;
  v106 = sub_227D4A708();
  if (v105)
  {

    v108 = OUTLINED_FUNCTION_196_2();
    v109(v108);
    (*(v318 + 8))(v313, v314);
    goto LABEL_4;
  }

  v265 = v106;
  v266 = v102;
  v271 = v107;
  v312 = v104;
  v267 = v97;
  v268 = v98;
  v269 = v94;
  v270 = v2;
  v110 = v310[1];
  v110(v1, v311);
  sub_227D497C8();
  v264 = sub_227D4A728();
  v111 = OUTLINED_FUNCTION_173();
  (v110)(v111);
  sub_227D497C8();
  sub_227D4A6F8();
  v310 = 0;
  v112 = OUTLINED_FUNCTION_264_0();
  (v110)(v112);
  v113 = v293;
  OUTLINED_FUNCTION_186_2();
  sub_227D49518();
  v262 = sub_227D49758();
  sub_227D49858();
  v264 = sub_227D498C8();
  v263 = v114;
  sub_227D49788();
  sub_227D498D8();
  sub_227D497D8();
  sub_227D49888();
  v309 = sub_227D49898();
  v300 = v115;
  v259 = sub_227D497A8();
  v311 = sub_227D49798();
  v255 = sub_227D49828();
  sub_227D49878();
  HIDWORD(v256) = sub_227D49818();
  sub_227D49808();
  v258 = sub_227D497B8();
  v257 = v116;
  sub_227D497E8();
  v117 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_166_2(v117);
  v118 = swift_allocObject();
  v119 = v303;
  (*(v303 + 16))(v297, v113, v304);
  *(v118 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9208, &qword_227D5C328);
  OUTLINED_FUNCTION_0_41();
  v121 = sub_227B17E0C(v120);
  v315 = v117;
  v316 = v117;
  v317[0] = v121;
  v317[1] = v121;
  OUTLINED_FUNCTION_13_1();
  *(v118 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v118 + 24));
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v118 + 16) = 0x101010101010101;
  v261 = v118 + 16;
  sub_227D494B8();
  sub_227D4CE58();
  sub_227C3C834();
  v122 = v269;
  v123 = v314;
  OUTLINED_FUNCTION_352_0();
  v124();
  v125 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_9();
  v260 = sub_227B17E0C(v126);
  sub_227D4CAD8();

  v301 = *(v318 + 8);
  v301(v122, v123);
  sub_227C3C834();
  sub_227C3C834();
  OUTLINED_FUNCTION_41_4();
  sub_227B17E0C(v127);
  OUTLINED_FUNCTION_233();
  sub_227D49AE8();
  sub_227C3C834();
  OUTLINED_FUNCTION_233();
  sub_227D49AD8();
  v128 = *(v119 + 8);
  v129 = OUTLINED_FUNCTION_299_0();
  v303 = v119 + 8;
  v297 = v130;
  (v130)(v129);
  v131 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_31_3();
  sub_227B17E0C(v132);
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_163_1(v317);
  v133 = OUTLINED_FUNCTION_278();
  v134(v133);
  sub_227C330DC();
  sub_227D49638();
  sub_227C3C834();
  sub_227C31FB4();
  OUTLINED_FUNCTION_352_0();
  v135();
  v136 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  sub_227D4CAD8();

  v137 = OUTLINED_FUNCTION_82();
  (v301)(v137);
  v138 = v291;
  sub_227C4BC80();
  v139 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  sub_227C3F588();
  OUTLINED_FUNCTION_292_0();

  sub_227C1CB1C(v138, &qword_27D7E6D08);
  *(v118 + 17) = 0;
  OUTLINED_FUNCTION_418_0();
  sub_227C4BC80();
  v140 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_292_0();

  sub_227C1CB1C(v138, &qword_27D7E6D08);
  *(v118 + 18) = 0;
  OUTLINED_FUNCTION_418_0();
  sub_227C4BC80();
  v141 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_292_0();

  sub_227C1CB1C(v138, &qword_27D7E6D08);
  *(v118 + 19) = 0;
  v142 = sub_227D4DC28();
  v143 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  v315 = v142;
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  v145 = *(v311 + 56);
  v144 = v311 + 56;
  v146 = *(v311 + 32);
  OUTLINED_FUNCTION_102_3();
  v149 = v148 & v147;
  v151 = (v150 + 63) >> 6;
  v152 = v307;
  v309 = v307 + 16;
  v312 = (v307 + 8);
  sub_227D4CE58();
  v153 = 0;
  v300 = MEMORY[0x277D84F90];
  v154 = v308;
  while (1)
  {
    v155 = v153;
    if (!v149)
    {
      break;
    }

    while (1)
    {
      v153 = v155;
LABEL_10:
      OUTLINED_FUNCTION_402_0();
      v156 = *(v311 + 48);
      v157 = *(v152 + 72);
      v158 = *(v152 + 16);
      v159 = OUTLINED_FUNCTION_305();
      v160(v159);
      v161 = v310;
      v162 = sub_227D4A898();
      if (!v161)
      {
        break;
      }

      v164 = *v312;
      v165 = OUTLINED_FUNCTION_196_3();
      v166(v165);
      v310 = 0;
      v155 = v153;
      v152 = v307;
    }

    v167 = v162;
    v168 = v163;
    v310 = 0;
    v169 = *v312;
    v170 = OUTLINED_FUNCTION_196_3();
    v171(v170);
    v172 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = *(v172 + 2);
      v178 = OUTLINED_FUNCTION_21();
      v172 = sub_227B25F88(v178, v179, v180, v172);
    }

    v154 = v308;
    v174 = *(v172 + 2);
    v173 = *(v172 + 3);
    v175 = v174 + 1;
    if (v174 >= v173 >> 1)
    {
      v181 = OUTLINED_FUNCTION_12(v173);
      v300 = v182;
      v183 = v172;
      v185 = v184;
      v186 = sub_227B25F88(v181, v182, 1, v183);
      v175 = v300;
      v174 = v185;
      v172 = v186;
    }

    *(v172 + 2) = v175;
    v300 = v172;
    v176 = &v172[16 * v174];
    *(v176 + 4) = v167;
    *(v176 + 5) = v168;
    v152 = v307;
  }

  while (1)
  {
    v153 = v155 + 1;
    if (__OFADD__(v155, 1))
    {
      __break(1u);
      return;
    }

    if (v153 >= v151)
    {
      break;
    }

    v149 = *(v144 + 8 * v153);
    ++v155;
    if (v149)
    {
      goto LABEL_10;
    }
  }

  sub_227B30834(v300);
  OUTLINED_FUNCTION_285();
  sub_227C34014();
  sub_227C37E24();

  sub_227C330DC();
  v187 = v310;
  sub_227D4A898();
  if (v187)
  {

    OUTLINED_FUNCTION_333();
  }

  else
  {
    v310 = 0;
  }

  v188 = v286;
  v189 = v294;
  v190 = v270;
  sub_227C31FB4();
  v191 = *(v118 + 56);
  OUTLINED_FUNCTION_256((v118 + 24), *(v118 + 48));
  swift_getKeyPath();
  LOBYTE(v315) = BYTE4(v256) & 1;
  sub_227D4CAD8();

  v192 = v298;
  v193 = v283;
  sub_227C4BC80();
  v194 = OUTLINED_FUNCTION_215_2();
  v195 = v292;
  OUTLINED_FUNCTION_318(v194, v196, v292);
  if (v197)
  {
    sub_227C1CB1C(v193, &qword_27D7E6CF0);
    v198 = v295;
  }

  else
  {
    v199 = v193;
    v200 = v282;
    (*(v282 + 32))(v285, v199, v195);
    v201 = v200[2];
    v202 = OUTLINED_FUNCTION_236();
    v203(v202);
    v204 = v200[11];
    v205 = OUTLINED_FUNCTION_201_0();
    v207 = v206(v205);
    v198 = v295;
    if (v207 == *MEMORY[0x277D0CB90])
    {
      v208 = v200[12];
      v209 = OUTLINED_FUNCTION_201_0();
      v210(v209);
      v211 = *(v280 + 32);
      v212 = OUTLINED_FUNCTION_174();
      v213 = v273;
      v214(v212);
      v215 = v310;
      sub_227D4A7D8();
      if (v215)
      {

        OUTLINED_FUNCTION_333();
      }

      else
      {
        v310 = 0;
      }

      sub_227C31FB4();
      OUTLINED_FUNCTION_163_1(&v308);
      v235(v279, v213);
      OUTLINED_FUNCTION_163_1(&v310);
      v236 = OUTLINED_FUNCTION_57_0();
      v237(v236);
      goto LABEL_34;
    }

    if (v207 == *MEMORY[0x277D0CB98])
    {
      v216 = v200[12];
      v217 = OUTLINED_FUNCTION_201_0();
      v218(v217);
      v219 = *(v275 + 32);
      v220 = OUTLINED_FUNCTION_174();
      v221(v220);
      v222 = v310;
      sub_227D4A868();
      if (v222)
      {

        OUTLINED_FUNCTION_333();
      }

      else
      {
        v310 = 0;
      }

      v190 = v270;
      sub_227C31FB4();
      OUTLINED_FUNCTION_163_1(v305);
      v238(v274, v276);
      OUTLINED_FUNCTION_163_1(&v310);
      v239 = OUTLINED_FUNCTION_57_0();
      v240(v239);
    }

    else
    {
      v223 = sub_227B1AF8C();
      v224 = v272;
      (*(v278 + 16))(v277, v223, v272);
      v225 = sub_227D4CA98();
      v226 = sub_227D4D418();
      if (os_log_type_enabled(v225, v226))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_218_1();
        _os_log_impl(v227, v228, v229, v230, v231, 2u);
        v192 = v298;
        OUTLINED_FUNCTION_135_3();
        MEMORY[0x22AAA7130]();
      }

      OUTLINED_FUNCTION_163_1(&v306);
      v232(v277, v224);
      v233 = *(v282 + 8);
      v234 = v292;
      v233(v285, v292);
      v233(v281, v234);
      v154 = v308;
LABEL_34:
      v190 = v270;
    }
  }

  sub_227C3C834();
  sub_227D49B38();
  sub_227C3C834();
  sub_227C38398(v198, v296, v118, v259, v241, v242, v243, v244, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263);

  sub_227C36CE8();
  (*(v188 + 8))(v189, v287);
  sub_227C1CB1C(v192, &qword_27D7E6CF0);
  (*v312)(v302, v299);
  OUTLINED_FUNCTION_199_1();
  sub_227C1CB1C(v245, v246);
  OUTLINED_FUNCTION_199_1();
  sub_227C1CB1C(v247, v248);
  OUTLINED_FUNCTION_199_1();
  sub_227C1CB1C(v249, v250);
  v251 = v314;
  v252 = v301;
  v301(v190, v314);
  OUTLINED_FUNCTION_163_1(&v312);
  v253(v305[0], v154);
  v297(v293, v304);
  v252(v313, v251);
LABEL_4:
  OUTLINED_FUNCTION_352();
}

void sub_227C2AD90()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C2AE50(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C2AD90();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C2AE94()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

void sub_227C2AF34()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v35 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v3);
  v34 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9370, &qword_227D5DF80);
  OUTLINED_FUNCTION_9(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_68_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9378, &qword_227D5DF88);
  OUTLINED_FUNCTION_9(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_67_1();
  v20 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v21);
  OUTLINED_FUNCTION_127_1();
  sub_227D48FF8();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v22);
  OUTLINED_FUNCTION_334_0();
  OUTLINED_FUNCTION_391_0();
  sub_227D48F78();
  v23 = *(v10 + 8);
  v24 = OUTLINED_FUNCTION_114();
  v25(v24);
  v26 = *(v34 + 8);
  v27 = OUTLINED_FUNCTION_168_1();
  v28(v27);
  *(v35 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9380, &qword_227D5DF90);
  v29 = sub_227C4A214();
  OUTLINED_FUNCTION_421(v29);
  OUTLINED_FUNCTION_87();
  sub_227B1A6E4(v30);
  OUTLINED_FUNCTION_371();
  sub_227D48F48();
  v31 = *(v16 + 8);
  v32 = OUTLINED_FUNCTION_371();
  v33(v32);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_26_0();
  v143 = v28;
  OUTLINED_FUNCTION_191_2();
  v142 = sub_227D49B48();
  v29 = OUTLINED_FUNCTION_9(v142);
  v141 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_17(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  OUTLINED_FUNCTION_5(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_26_0();
  v151 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D00, &unk_227D5C4A0);
  OUTLINED_FUNCTION_5(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_26_0();
  v140 = v43;
  OUTLINED_FUNCTION_191_2();
  v139 = sub_227D49648();
  v44 = OUTLINED_FUNCTION_9(v139);
  v138 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_3();
  v150 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v50 = OUTLINED_FUNCTION_5(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_65_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_191_2();
  v55 = sub_227D492A8();
  v56 = OUTLINED_FUNCTION_5(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_3();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v60 = OUTLINED_FUNCTION_9(v59);
  v148 = v61;
  v149 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_3();
  v146 = v64;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_314();
  v147 = v66;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v67 = OUTLINED_FUNCTION_9(v152);
  v144 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_3();
  v145 = v71;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_314();
  v153 = v73;
  OUTLINED_FUNCTION_191_2();
  v74 = sub_227D49188();
  v75 = OUTLINED_FUNCTION_5(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3();
  v78 = sub_227D49528();
  v79 = OUTLINED_FUNCTION_9(v78);
  v81 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3();
  v86 = v85 - v84;
  a10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(a10);
  v88 = v87;
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_61_4();
  sub_227C2AD90();
  sub_227D4A698();
  sub_227C30920();
  sub_227C35820();
  OUTLINED_FUNCTION_113();
  sub_227D49518();
  sub_227C2FBD8();
  v154[3] = v78;
  OUTLINED_FUNCTION_41_4();
  v154[4] = sub_227B17E0C(v92);
  __swift_allocate_boxed_opaque_existential_1(v154);
  v93 = *(v81 + 16);
  OUTLINED_FUNCTION_251_0();
  v94();
  sub_227D4A668();
  if (v20)
  {

    v95 = *(v81 + 8);
    v96 = OUTLINED_FUNCTION_148();
    v97(v96);
    (*(v88 + 8))(v21, a10);
    __swift_destroy_boxed_opaque_existential_0(v154);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v154);
    sub_227C2FB00();
    if (v98)
    {
      if (sub_227C36BA4())
      {
        sub_227C39D18();
      }

      OUTLINED_FUNCTION_113();
      sub_227D4A888();
      sub_227C29468();
      v112 = (*(v144 + 16))(v145, v153, v152);
      sub_227C36E14(v112);
      sub_227C3DFDC();

      sub_227C37044();
      sub_227C3E1EC();

      v113 = (*(v148 + 16))(v146, v147, v149);
      sub_227C2DBF4(v113);
      sub_227C35D98();
      v114 = sub_227C360FC();
      v115 = sub_227C363A4(v114);
      v116 = sub_227C3664C(v115);
      v117 = sub_227C368E0(v116);
      sub_227C36AC8(v117);
      sub_227C30074();
      sub_227D49628();
      v118 = OUTLINED_FUNCTION_215_2();
      OUTLINED_FUNCTION_318(v118, v119, v139);
      if (v120)
      {
        (*(v138 + 104))(v150, *MEMORY[0x277D0CA50], v139);
        v121 = OUTLINED_FUNCTION_215_2();
        v123 = OUTLINED_FUNCTION_318(v121, v122, v139);
        v124 = v141;
        v125 = v151;
        if (!v120)
        {
          v123 = sub_227C1CB1C(v140, &qword_27D7E6D00);
        }
      }

      else
      {
        v123 = (*(v138 + 32))(v150, v140, v139);
        v124 = v141;
        v125 = v151;
      }

      sub_227C3721C(v123);
      sub_227C37878(v125);
      sub_227C35AF4();
      sub_227C37458();
      sub_227C29638();
      sub_227D49B28();
      OUTLINED_FUNCTION_318(v143, 1, v142);
      if (v120)
      {
        v126 = *MEMORY[0x277D0CD18];
        v127 = *(v124 + 104);
        v128 = OUTLINED_FUNCTION_228_0();
        v129(v128);
        OUTLINED_FUNCTION_424();
        OUTLINED_FUNCTION_318(v130, v131, v132);
        if (!v120)
        {
          sub_227C1CB1C(v143, &qword_27D7E6CE8);
        }
      }

      else
      {
        v133 = *(v124 + 32);
        v134 = OUTLINED_FUNCTION_228_0();
        v135(v134, v143, v142);
      }

      sub_227D49838();
      (*(v148 + 8))(v147, v149);
      (*(v144 + 8))(v153, v152);
      OUTLINED_FUNCTION_163_1(&a11);
      v136(v86, v78);
      OUTLINED_FUNCTION_163_1(&a10);
      v137(v21, a10);
    }

    else
    {
      v99 = sub_227D49E08();
      OUTLINED_FUNCTION_20_8();
      sub_227B17E0C(v100);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      v102 = v101;
      sub_227C2FB00();
      v154[0] = v103;
      v154[1] = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
      *v102 = sub_227D4CFF8();
      v102[1] = v105;
      v106 = *MEMORY[0x277D0CE70];
      OUTLINED_FUNCTION_14_0(v99);
      (*(v107 + 104))(v102);
      swift_willThrow();
      v108 = OUTLINED_FUNCTION_249();
      v109(v108, v152);
      OUTLINED_FUNCTION_163_1(&a11);
      v110(v86, v78);
      OUTLINED_FUNCTION_163_1(&a10);
      v111(v21, a10);
    }
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227C2C0FC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_322_0(v1);

  return sub_227C2C5CC();
}

uint64_t sub_227C2C194()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v8);
  OUTLINED_FUNCTION_10_6();
  v10 = sub_227D4D278();
  v1[8] = v10;
  v1[9] = v9;

  return MEMORY[0x2822009F8](sub_227C2C28C, v10, v9);
}

uint64_t sub_227C2C28C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[3];
  sub_227D4A6D8();
  v0[10] = v2;
  v3 = v0[7];
  v4 = v0[3];
  sub_227D4A6E8();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_227C2C3B0;
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[2];

  return sub_227C2C5CC();
}

uint64_t sub_227C2C3B0()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  v3[12] = v0;

  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_141();
  v13(v12);

  if (v0)
  {
    v14 = v3[8];
    v15 = v3[9];

    return MEMORY[0x2822009F8](sub_227C2C570, v14, v15);
  }

  else
  {
    v16 = v3[7];

    v17 = *(v9 + 8);

    return v17();
  }
}

uint64_t sub_227C2C570()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227C2C5CC()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v6);
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9330, &unk_227D5DF40);
  v1[9] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_379();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v13);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v14 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227C2C6F8()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v9);
  sub_227D4CBF8();
  v10 = sub_227D4A6A8();
  v83 = v0[12];
  v11 = v0[8];
  v84 = v0[7];
  v86 = v0[13];
  v12 = v8;
  v13 = v4;
  v14 = v10;
  v16 = v15;
  v17 = swift_task_alloc();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  v0[2] = v12;
  OUTLINED_FUNCTION_213_2();
  sub_227D49378();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  OUTLINED_FUNCTION_359();
  sub_227D4CBE8();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v21);
  sub_227D4CAF8();
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_251_0();
  v81 = sub_227D4CB18();
  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[5];

  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v13);
  sub_227D4CBF8();
  v28 = v0[8];
  if (v24)
  {
    v29 = v0[4];
    v30 = v0[5];
    v31 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_393_0(v31, v32, v33, v34, v35, v36, v37, v38, v80, v81, v14);
    *(v39 + 32) = v29;
    *(v39 + 40) = v30;
  }

  else
  {
    v40 = swift_task_alloc();
    OUTLINED_FUNCTION_393_0(v40, v41, v42, v43, v44, v45, v46, v47, v80, v81, v14);
  }

  OUTLINED_FUNCTION_445();
  v85 = v0[13];
  v48 = v0[11];
  v50 = v0[8];
  v49 = v0[9];
  v51 = v0[7];

  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v13);
  OUTLINED_FUNCTION_359();
  sub_227D4CBE8();

  sub_227D4CAF8();
  OUTLINED_FUNCTION_353_0();
  OUTLINED_FUNCTION_251_0();
  v55 = sub_227D4CB38();

  result = sub_227B4BF3C(v55);
  if (result)
  {
    v57 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_18;
    }

    v58 = 0;
    do
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v59 = OUTLINED_FUNCTION_246();
        MEMORY[0x22AAA63D0](v59);
      }

      else
      {
        v60 = *(v55 + 8 * v58 + 32);
      }

      v61 = v0[13];
      v62 = v0[7];
      ++v58;
      sub_227D4CAF8();
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_251_0();
      sub_227D4CB58();
    }

    while (v57 != v58);
  }

  v63 = v0[13];
  v64 = v0[7];

  sub_227D4CAF8();
  sub_227D4CB28();
  v66 = v0[12];
  v65 = v0[13];
  v67 = v0[7];

  v68 = sub_227D4CAF8();
  OUTLINED_FUNCTION_251_0();
  sub_227D4CB18();
  OUTLINED_FUNCTION_223();

  result = v82 - v68;
  if (!__OFSUB__(v82, v68))
  {
    v72 = v0[11];
    v71 = v0[12];
    v73 = v0[9];
    v74 = v0[10];
    v75 = v0[8];
    v76 = v0[3];
    sub_227D4A598();
    v77 = *(v74 + 8);
    v78 = OUTLINED_FUNCTION_91_0();
    v77(v78);
    v79 = OUTLINED_FUNCTION_132_0();
    v77(v79);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_227C2CC68()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v47 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v3);
  v49 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_103();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9(v14);
  v48 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_72_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9340, &qword_227D5DF58);
  v45 = OUTLINED_FUNCTION_9(v19);
  v46 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_329_0();
  v44 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_446_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_5();
  sub_227D48F28();

  v43 = *(v10 + 8);
  v25 = OUTLINED_FUNCTION_264_0();
  v26(v25);
  sub_227D48FE8();
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_179();
  sub_227D48F08();
  v29 = *(v49 + 8);
  v30 = OUTLINED_FUNCTION_141();
  v29(v30);
  v31 = *(v48 + 8);
  v32 = OUTLINED_FUNCTION_91_0();
  v31(v32);
  OUTLINED_FUNCTION_446_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_335_0();

  v33 = OUTLINED_FUNCTION_264_0();
  v43(v33);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  OUTLINED_FUNCTION_179();
  sub_227D48F08();
  v34 = OUTLINED_FUNCTION_201_0();
  v29(v34);
  v35 = OUTLINED_FUNCTION_91_0();
  v31(v35);
  v36 = OUTLINED_FUNCTION_58();
  v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  OUTLINED_FUNCTION_199_1();
  v47[4] = sub_227C4AAF4(v38);
  __swift_allocate_boxed_opaque_existential_1(v47);
  OUTLINED_FUNCTION_30_6();
  sub_227B1A6E4(v39);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FA8();
  v40 = *(v46 + 8);
  v41 = OUTLINED_FUNCTION_168_1();
  v40(v41);
  v42 = OUTLINED_FUNCTION_127_1();
  v40(v42);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2D0F4()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92F0, &qword_227D5DEF8);
  OUTLINED_FUNCTION_5(v2);
  v4 = *(v3 + 64);
  v1[3] = OUTLINED_FUNCTION_30();
  v1[4] = type metadata accessor for GameActivityInstanceStore();
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v5);
  OUTLINED_FUNCTION_10_6();
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v6 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C2D1B4()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  OUTLINED_FUNCTION_12_9();
  sub_227B180A0(v4);
  OUTLINED_FUNCTION_150();
  sub_227D4CAF8();
  v5 = OUTLINED_FUNCTION_342();
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9308, &unk_227D5DF10);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v10);
  OUTLINED_FUNCTION_91_0();
  sub_227D4CB48();
  sub_227C1CB1C(v2, &qword_27D7E92F0);

  v11 = v0[4];
  v12 = v0[2];
  sub_227D4CAF8();
  sub_227D4CB28();

  v14 = v0[3];

  OUTLINED_FUNCTION_18();

  return v15();
}

void sub_227C2D320()
{
  OUTLINED_FUNCTION_11();
  v56 = v1;
  OUTLINED_FUNCTION_407();
  v58 = sub_227D48FD8();
  v2 = OUTLINED_FUNCTION_9(v58);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v51 = v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8760, &qword_227D5B6F0);
  OUTLINED_FUNCTION_9(v53);
  v60 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_72_3();
  v12 = OUTLINED_FUNCTION_340();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_6_2();
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  v21 = v20;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9318, &qword_227D5DF28);
  OUTLINED_FUNCTION_9(v57);
  v59 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_311_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9320, &qword_227D5DF30);
  v54 = OUTLINED_FUNCTION_9(v26);
  v55 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_226();
  v50 = *v0;
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_186_2();
  sub_227B1A6E4(v31);
  OUTLINED_FUNCTION_427_0();
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v49 = *(v16 + 8);
  v49(v21, v14);
  sub_227D492A8();
  sub_227D48FE8();
  v52 = *MEMORY[0x277CC8FD8];
  v48 = *(v4 + 104);
  v48(v51);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v32);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v33);
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v34);
  OUTLINED_FUNCTION_9_2();
  sub_227D48F88();
  v47 = *(v4 + 8);
  v47(v51, v58);
  v35 = *(v60 + 8);
  v36 = OUTLINED_FUNCTION_341();
  v35(v36);
  v37 = *(v59 + 8);
  v38 = OUTLINED_FUNCTION_94();
  v37(v38);
  sub_227D48FF8();
  swift_getKeyPath();
  sub_227D48F28();

  v49(v21, v14);
  sub_227D48FE8();
  (v48)(v51, v52, v58);
  sub_227D48F88();
  v39 = OUTLINED_FUNCTION_87_1();
  (v47)(v39);
  v40 = OUTLINED_FUNCTION_196_3();
  v35(v40);
  v41 = OUTLINED_FUNCTION_94();
  v37(v41);
  *(v56 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9328, &qword_227D5DF38);
  v42 = sub_227C4A01C();
  OUTLINED_FUNCTION_421(v42);
  OUTLINED_FUNCTION_265();
  sub_227B1A6E4(v43);
  OUTLINED_FUNCTION_364_0();
  OUTLINED_FUNCTION_324();
  OUTLINED_FUNCTION_150_3();
  sub_227D48FB8();
  v44 = *(v55 + 8);
  v45 = OUTLINED_FUNCTION_167_2();
  v44(v45);
  v46 = OUTLINED_FUNCTION_127_1();
  v44(v46);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2DA74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_103();
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_253();
  v16(v15);
  v17 = *a2;
  return a6(v6);
}

uint64_t sub_227C2DB2C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_239();

  v10 = sub_227D492A8();
  OUTLINED_FUNCTION_15_6(v10);
  return (*(v11 + 8))(a1);
}

uint64_t sub_227C2DD30(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_239();

  v10 = sub_227D492A8();
  OUTLINED_FUNCTION_15_6(v10);
  return (*(v11 + 8))(a1);
}

uint64_t sub_227C2DDFC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_242();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C285FC();
}

uint64_t sub_227C2DEB0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_322_0(v1);

  return sub_227C2C0FC();
}

uint64_t sub_227C2DF40()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_322_0(v1);

  return sub_227C2C194();
}

uint64_t sub_227C2DFD0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C2D0F4();
}

uint64_t sub_227C2E05C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C2E050();
  *a2 = result;
  return result;
}

uint64_t sub_227C2E088(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C2E0B4();
}

uint64_t sub_227C2E0B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

void sub_227C2E158()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_106_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_61_4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9528, &qword_227D5E120);
  OUTLINED_FUNCTION_9(v32);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_67_1();
  v19 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v20);
  OUTLINED_FUNCTION_551();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_93_0();
  sub_227D48F28();

  v21 = *(v10 + 8);
  v22 = OUTLINED_FUNCTION_227();
  v23(v22);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9530, &qword_227D5E128);
  v3[4] = sub_227C4B274();
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_412();
  sub_227D48F68();
  OUTLINED_FUNCTION_11_16();
  v27 = OUTLINED_FUNCTION_147();
  v28(v27);
  v29 = *(v15 + 8);
  v30 = OUTLINED_FUNCTION_478();
  v31(v30);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2E44C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C2E440();
  *a2 = result;
  return result;
}

uint64_t sub_227C2E478(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C2E4A4();
}

uint64_t sub_227C2E4A4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

void sub_227C2E548()
{
  OUTLINED_FUNCTION_11();
  v34 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_67_1();
  v19 = *v2;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v20);
  OUTLINED_FUNCTION_166_3();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_93_0();
  sub_227D48F28();

  v21 = *(v9 + 8);
  v22 = OUTLINED_FUNCTION_359();
  v23(v22);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  v24 = OUTLINED_FUNCTION_147();
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_166_3();
  v34[4] = sub_227C4B3BC(v26);
  __swift_allocate_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v27);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_193_3();
  sub_227D48F08();
  OUTLINED_FUNCTION_11_16();
  v29 = OUTLINED_FUNCTION_168_1();
  v30(v29);
  v31 = *(v15 + 8);
  v32 = OUTLINED_FUNCTION_82();
  v33(v32);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2E83C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C2E830();
  *a2 = result & 1;
  return result;
}

uint64_t sub_227C2E86C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227C2F784();
}

void sub_227C2E8D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9578, &qword_227D5E140);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9580, &qword_227D5E148);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_103();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_72_3();
  v24 = *v0;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_224_0();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_5();
  OUTLINED_FUNCTION_384_0();

  (*(v14 + 8))(v1, v12);
  sub_227D49918();
  OUTLINED_FUNCTION_253_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_68_4();

  v27 = OUTLINED_FUNCTION_75_3();
  v28(v27);
  v29 = OUTLINED_FUNCTION_58();
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_199_1();
  v38[4] = sub_227C4B3BC(v31);
  __swift_allocate_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v32);
  sub_227B1A6E4(&unk_27D7E95C0);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v33 = OUTLINED_FUNCTION_74_4();
  v34(v33);
  v35 = *(v20 + 8);
  v36 = OUTLINED_FUNCTION_246();
  v37(v36);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2EC44()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C2ED04(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C2EC44();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C2ED48()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C2EDE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227C2EE14()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E95C8, &qword_227D5E188);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E95D0, &qword_227D5E190);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9488, &qword_227D5E0C8);
  OUTLINED_FUNCTION_9(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_103();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9490, &qword_227D5E0D0);
  OUTLINED_FUNCTION_9(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_72_3();
  v24 = *v0;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_224_0();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57_5();
  OUTLINED_FUNCTION_384_0();

  (*(v14 + 8))(v1, v12);
  sub_227D49F28();
  OUTLINED_FUNCTION_253_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v26);
  OUTLINED_FUNCTION_68_4();

  v27 = OUTLINED_FUNCTION_75_3();
  v28(v27);
  v29 = OUTLINED_FUNCTION_58();
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_199_1();
  v38[4] = sub_227C4B3BC(v31);
  __swift_allocate_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v32);
  sub_227B1A6E4(&unk_27D7E9610);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v33 = OUTLINED_FUNCTION_74_4();
  v34(v33);
  v35 = *(v20 + 8);
  v36 = OUTLINED_FUNCTION_246();
  v37(v36);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2F188()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C2F248(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C2F188();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C2F28C()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C2F32C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49F18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227C2F358()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v36 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8970, &unk_227D5DFB0);
  OUTLINED_FUNCTION_9(v3);
  v37 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  v8 = OUTLINED_FUNCTION_336();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_9(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_75_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9550, &qword_227D5E130);
  OUTLINED_FUNCTION_9(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_61_4();
  v22 = *v1;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v23);
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_261_0();
  sub_227D48F28();

  v24 = *(v12 + 8);
  v25 = OUTLINED_FUNCTION_551();
  v26(v25);
  sub_227D48FE8();
  *(v36 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9558, &qword_227D5E138);
  v27 = sub_227C4B318();
  OUTLINED_FUNCTION_449_0(v27);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v29);
  OUTLINED_FUNCTION_193_3();
  sub_227D48F08();
  v30 = *(v37 + 8);
  v31 = OUTLINED_FUNCTION_168_1();
  v32(v31);
  v33 = *(v18 + 8);
  v34 = OUTLINED_FUNCTION_226_0();
  v35(v34);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C2F6F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C2F620();
  *a2 = result & 1;
  return result;
}

uint64_t sub_227C2F720(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227C2F784();
}

uint64_t sub_227C2F784()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_444_0();
}

void sub_227C2F824()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9390, &qword_227D5DF98);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_106_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_75_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9398, &qword_227D5DFA0);
  OUTLINED_FUNCTION_9(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_67_1();
  v21 = *v2;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v22);
  OUTLINED_FUNCTION_323();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_551();
  sub_227D48F28();

  (*(v11 + 8))(v0, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
  sub_227D48FE8();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93A0, &qword_227D5DFA8);
  v4[4] = sub_227C4A4C0();
  __swift_allocate_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v23);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v24);
  sub_227C4A688();
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_283();
  sub_227D48F08();
  OUTLINED_FUNCTION_11_16();
  v25 = OUTLINED_FUNCTION_147();
  v26(v25);
  v27 = *(v17 + 8);
  v28 = OUTLINED_FUNCTION_82();
  v29(v28);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C2FB0C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C2FB00();
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_227C2FB78@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8970, &unk_227D5DFB0);
  v1 = sub_227C19ADC();
  OUTLINED_FUNCTION_421(v1);
  return sub_227D48FE8();
}

void sub_227C2FBD8()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C2FC98(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C2FBD8();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C2FCDC()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

void sub_227C2FD7C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9(v8);
  v32 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_106_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8878, &qword_227D5B7E0);
  OUTLINED_FUNCTION_9(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_67_1();
  v19 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
  sub_227D48FE8();
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v20);
  OUTLINED_FUNCTION_149_0();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_349_0();
  sub_227D48F28();

  v21 = OUTLINED_FUNCTION_155_3();
  v22(v21);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E93D8, &qword_227D5DFC0);
  v3[4] = sub_227C4A704();
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v23);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_17_11();
  sub_227B1A6E4(v25);
  OUTLINED_FUNCTION_166_3();
  OUTLINED_FUNCTION_344();
  sub_227D48F68();
  v26 = *(v32 + 8);
  v27 = OUTLINED_FUNCTION_269();
  v28(v27);
  v29 = *(v15 + 8);
  v30 = OUTLINED_FUNCTION_371();
  v31(v30);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C30074()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C30134(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C30074();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C30178()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C30218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D49638();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_227C30244()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_152_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9408, &qword_227D5E010);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_75_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9410, &qword_227D5E018);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9310, &qword_227D5DF20);
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_72_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_103();
  v23 = *v0;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v24);
  OUTLINED_FUNCTION_222_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_384_0();

  v25 = *(v13 + 8);
  v26 = OUTLINED_FUNCTION_307_0();
  v27(v26);
  sub_227D49B48();
  OUTLINED_FUNCTION_253_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_68_4();

  v29 = OUTLINED_FUNCTION_75_3();
  v30(v29);
  *(v38 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9418, &qword_227D5E050);
  v31 = sub_227B1D344();
  OUTLINED_FUNCTION_421(v31);
  OUTLINED_FUNCTION_39();
  sub_227B1A6E4(v32);
  sub_227B1A6E4(&unk_280E7B730);
  OUTLINED_FUNCTION_77_3();
  sub_227D48F08();
  v33 = OUTLINED_FUNCTION_74_4();
  v34(v33);
  v35 = *(v19 + 8);
  v36 = OUTLINED_FUNCTION_196_3();
  v37(v36);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C30580(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C29638();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C305C4()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

void sub_227C30664()
{
  OUTLINED_FUNCTION_11();
  v32 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8778, &qword_227D5B708);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  v8 = OUTLINED_FUNCTION_227();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_9(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_67_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9338, &qword_227D5DF50);
  OUTLINED_FUNCTION_9(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_3();
  v22 = *v3;
  OUTLINED_FUNCTION_2_24();
  sub_227B1A6E4(v23);
  OUTLINED_FUNCTION_166_3();
  sub_227D48FF8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_173();
  sub_227D48F28();

  v24 = *(v12 + 8);
  v25 = OUTLINED_FUNCTION_336();
  v26(v25);
  OUTLINED_FUNCTION_389_0();
  sub_227D48FE8();
  *(v32 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9340, &qword_227D5DF58);
  v27 = sub_227B1BD94();
  OUTLINED_FUNCTION_449_0(v27);
  OUTLINED_FUNCTION_10_13();
  sub_227B1A6E4(v28);
  OUTLINED_FUNCTION_3_1();
  sub_227B1A6E4(v29);
  OUTLINED_FUNCTION_193_3();
  sub_227D48F08();
  OUTLINED_FUNCTION_11_16();
  v30 = OUTLINED_FUNCTION_168_1();
  v31(v30);
  (*(v18 + 8))(v0, v16);
  OUTLINED_FUNCTION_8_1();
}

void sub_227C30920()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C309E0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C30920();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C30A24()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C30B08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D4E520;
  v1 = type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
  OUTLINED_FUNCTION_1_22();
  v3 = sub_227B17E0C(v2);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return v0;
}

uint64_t sub_227C30B94()
{
  result = OUTLINED_FUNCTION_521();
  switch(v1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
    case 5:
    case 6:
      result = OUTLINED_FUNCTION_601();
      break;
    case 7:
      result = OUTLINED_FUNCTION_503();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227C30C88()
{
  sub_227C40EDC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227C30CC0()
{
  sub_227C40EDC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

uint64_t sub_227C30CF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9220, &qword_227D5C600);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_103();
  v11 = a1[4];
  OUTLINED_FUNCTION_256(a1, a1[3]);
  sub_227C40EDC();
  sub_227D4DC08();
  v12 = *v3;
  v13 = v3[1];
  OUTLINED_FUNCTION_2_5();
  sub_227D4D9C8();
  if (!v2)
  {
    v14 = v3[2];
    sub_227D4D9F8();
    v15 = v3[3];
    sub_227D4D9F8();
    v16 = v3[4];
    v17 = v3[5];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v18 = v3[6];
    v19 = v3[7];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v20 = v3[8];
    v21 = v3[9];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v22 = v3[10];
    v23 = v3[11];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v24 = v3[12];
    v25 = v3[13];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
  }

  v26 = *(v7 + 8);
  v27 = OUTLINED_FUNCTION_193();
  return v28(v27);
}

void sub_227C30EFC()
{
  OUTLINED_FUNCTION_351();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9228, &qword_227D5C608);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_75_2();
  v12 = v3[3];
  v13 = v3[4];
  v14 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_256(v14, v15);
  sub_227C40EDC();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    v16 = sub_227D4D8F8();
    v18 = v17;
    OUTLINED_FUNCTION_48_4(1);
    v32 = sub_227D4D928();
    OUTLINED_FUNCTION_48_4(2);
    v31 = sub_227D4D928();
    OUTLINED_FUNCTION_48_4(3);
    v30 = sub_227D4D8A8();
    v36 = v19;
    OUTLINED_FUNCTION_48_4(4);
    v29 = sub_227D4D8A8();
    v35 = v20;
    OUTLINED_FUNCTION_48_4(5);
    v21 = sub_227D4D8A8();
    OUTLINED_FUNCTION_328_0(v21, v22, v39);
    OUTLINED_FUNCTION_48_4(6);
    v27 = sub_227D4D8A8();
    v33 = v23;
    v24 = sub_227D4D8A8();
    v26 = v25;
    (*(v8 + 8))(v1, v6);
    v37[0] = v16;
    v37[1] = v18;
    v37[2] = v32;
    v37[3] = v31;
    v37[4] = v30;
    v37[5] = v36;
    v37[6] = v29;
    v37[7] = v35;
    v37[8] = v28;
    v37[9] = v34;
    v37[10] = v27;
    v37[11] = v33;
    v37[12] = v24;
    v37[13] = v26;
    sub_227C40F30(v37, v38);
    __swift_destroy_boxed_opaque_existential_0(v3);
    v38[0] = v16;
    v38[1] = v18;
    v38[2] = v32;
    v38[3] = v31;
    v38[4] = v30;
    v38[5] = v36;
    v38[6] = v29;
    v38[7] = v35;
    v38[8] = v28;
    v39[0] = v34;
    v39[1] = v27;
    v39[2] = v33;
    v39[3] = v24;
    v39[4] = v26;
    sub_227C40F68(v38);
    memcpy(v5, v37, 0x70uLL);
  }

  OUTLINED_FUNCTION_352();
}

__n128 sub_227C3138C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13;
  return result;
}

void sub_227C313B0(void *a1@<X8>)
{
  sub_227C30EFC();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_227C31414()
{
  sub_227D4D868();
  OUTLINED_FUNCTION_223();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227C3145C(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_381_0();
  }

  if (a1 == 1)
  {
    return 0x6E6F7268636E7973;
  }

  return 0x6F7268636E797361;
}

uint64_t sub_227C314D0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6E6F7268636E7973;
    }

    else
    {
      v5 = 0x6F7268636E797361;
    }

    if (v4 == 1)
    {
      v6 = 0xEB0000000073756FLL;
    }

    else
    {
      v6 = 0xEC00000073756F6ELL;
    }
  }

  else
  {
    v5 = 0x6669636570736E75;
    v6 = 0xEB00000000646569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E6F7268636E7973;
    }

    else
    {
      v3 = 0x6F7268636E797361;
    }

    if (a2 == 1)
    {
      v2 = 0xEB0000000073756FLL;
    }

    else
    {
      v2 = 0xEC00000073756F6ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227C315F0(unsigned __int8 a1, char a2)
{
  v2 = 1702259052;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646567617473;
    }

    else
    {
      v4 = 0x6D706F6C65766564;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000746E65;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1702259052;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646567617473;
    }

    else
    {
      v2 = 0x6D706F6C65766564;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227C31718()
{
  sub_227D4D048();
}

uint64_t sub_227C317BC()
{
  sub_227D4D048();
}

uint64_t sub_227C3184C()
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227C318E8()
{
  sub_227D4DB58();
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227C319A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227C31414();
  *a2 = result;
  return result;
}

uint64_t sub_227C319D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C3145C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227C319FC()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B928();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227C31A44()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B928();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227C31A7C()
{
  sub_227D4D868();
  OUTLINED_FUNCTION_223();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_227C31AC4(char a1)
{
  if (!a1)
  {
    return 1702259052;
  }

  if (a1 == 1)
  {
    return 0x646567617473;
  }

  return 0x6D706F6C65766564;
}

uint64_t sub_227C31B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227C31A7C();
  *a2 = result;
  return result;
}

uint64_t sub_227C31B6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227C31AC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227C31B98()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B8D4();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D198();
}

uint64_t sub_227C31BE0()
{
  OUTLINED_FUNCTION_0_21();
  sub_227C4B8D4();
  OUTLINED_FUNCTION_1_0();
  return sub_227D4D158();
}

uint64_t sub_227C31C24()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D492A8();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_147_1(v8);
  sub_227C24D1C();
  return OUTLINED_FUNCTION_348_0();
}

uint64_t sub_227C31D10(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C24B78();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C31D74()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  sub_227C17488();
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_54_7();
  sub_227D4CC68();

  OUTLINED_FUNCTION_319();
}

void sub_227C31E38(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C31D74();
  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_227C31E7C(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_608(a1, a2);
  v3 = OUTLINED_FUNCTION_253();
  return v2(v3);
}

void sub_227C31EB0()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C31F50(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C31D74();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C31FB4()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_386_0(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
  sub_227C1740C();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_344();
  sub_227D4CAD8();

  *v0 = 0;
  OUTLINED_FUNCTION_254();
}

void sub_227C32040()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  sub_227C17488();
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_54_7();
  sub_227D4CC68();

  OUTLINED_FUNCTION_319();
}

void sub_227C32104(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C32040();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C32148()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C321E8(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32040();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C32240(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];
    sub_227D4CE58();
    v8 = OUTLINED_FUNCTION_253();
    a3(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_253();
    return (a3)(v10);
  }
}

uint64_t sub_227C322F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C322E8();
  *a2 = result;
  return result;
}

uint64_t sub_227C32320(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C3234C();
}

uint64_t sub_227C3234C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C323F0(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C322E8();
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C32454()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C32514(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C32454();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C32558()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C325F8(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32454();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3265C()
{
  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_108_3(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_419();
  v2 = sub_227D49188();
  OUTLINED_FUNCTION_31_3();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_14_0(v2);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_179();

  return v7(v6);
}

uint64_t sub_227C32750()
{
  OUTLINED_FUNCTION_142_4();
  OUTLINED_FUNCTION_490();
  swift_getKeyPath();
  v1 = sub_227B17E0C(&unk_27D7E91D0);
  OUTLINED_FUNCTION_45_5(v1, v2, v3, v4, v5, v6, v7, v8, v12, v0);
  sub_227D494A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v9);
  v10 = OUTLINED_FUNCTION_236();
  sub_227B17E0C(v10);
  OUTLINED_FUNCTION_336();
  sub_227D4CC68();
}

uint64_t sub_227C328A8(uint64_t a1, uint64_t *a2)
{
  v3 = OUTLINED_FUNCTION_304_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104();
  v10 = *(v9 + 16);
  v11 = OUTLINED_FUNCTION_236();
  v12(v11);
  v13 = *a2;
  OUTLINED_FUNCTION_165_3();
  OUTLINED_FUNCTION_224();
  return sub_227C329A0(v14, v15, v16, v17);
}

uint64_t sub_227C329A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v6);
  OUTLINED_FUNCTION_32_4();
  sub_227D49498();

  v7 = a4(0);
  OUTLINED_FUNCTION_15_6(v7);
  return (*(v8 + 8))(a1);
}

uint64_t sub_227C32A78()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D49188();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_147_1(v8);
  sub_227C32714();
  return OUTLINED_FUNCTION_348_0();
}

void sub_227C32B58()
{
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  if (v4)
  {
    v5 = v1[2];
    v6 = *v1;
    v7 = *(v5 + 16);
    v8 = OUTLINED_FUNCTION_323();
    v9(v8);
    OUTLINED_FUNCTION_153_3();
    sub_227C329A0(v10, v11, v12, v13);
    v14 = *(v5 + 8);
    v15 = OUTLINED_FUNCTION_264_0();
    v16(v15);
  }

  else
  {
    v17 = *v1;
    v18 = (*v0)[4];
    OUTLINED_FUNCTION_153_3();
    sub_227C329A0(v19, v20, v21, v22);
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_8_1();

  free(v23);
}

uint64_t sub_227C32C64(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C231A0();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C32CC8()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C32D88(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C32CC8();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C32DCC()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C32E6C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32CC8();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C32ED0()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  sub_227C17488();
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_54_7();
  sub_227D4CC68();

  OUTLINED_FUNCTION_319();
}

void sub_227C32F94(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C32ED0();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C32FD8()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C33078(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C32ED0();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C330DC()
{
  OUTLINED_FUNCTION_320_0();
  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_108_3(v0, v1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
  OUTLINED_FUNCTION_179_2();
  sub_227C411D0(v2);
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_319();
}

uint64_t sub_227C33258@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C33178();
  *a2 = result;
  return result;
}

uint64_t sub_227C33284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C332B0();
}

uint64_t sub_227C332B0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C33354(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C33178(v2);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C334F4(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_239();

  return sub_227C1CB1C(a1, &qword_27D7E6CD8);
}

uint64_t sub_227C335A8(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C333DC(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t (*sub_227C33660(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = sub_227C2F620();
  OUTLINED_FUNCTION_210_2(v1);
  return sub_227C336A0;
}

uint64_t sub_227C336A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_392_0(a1);
  OUTLINED_FUNCTION_290_0();
  return sub_227C2F784();
}

void sub_227C336E8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_227C336DC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

void sub_227C3371C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  sub_227C33A14();
}

uint64_t sub_227C3378C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C336DC();
  *v1 = v2;
  *(v1 + 8) = v3 & 1;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C337D4(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_282_0();
  sub_227C33A14();
}

void sub_227C3381C()
{
  OUTLINED_FUNCTION_255();
  OUTLINED_FUNCTION_386_0(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7170, &qword_227D5B5F0);
  sub_227C17AB8();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_344();
  sub_227D4CAD8();

  *v0 = 0;
  OUTLINED_FUNCTION_254();
}

void sub_227C338B4()
{
  OUTLINED_FUNCTION_320_0();
  OUTLINED_FUNCTION_345_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_13_13();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v1);
  sub_227C17B34();
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_54_7();
  sub_227D4CC68();

  OUTLINED_FUNCTION_319();
}

void sub_227C33970(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_227C338A8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

void sub_227C339A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  sub_227C33A14();
}

void sub_227C33A14()
{
  OUTLINED_FUNCTION_483();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_444_0();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C33AB4(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C338A8();
  *v1 = v2;
  *(v1 + 8) = v3 & 1;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C33AFC(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_281_0();
  sub_227C33A14();
}

uint64_t sub_227C33B44(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2EC44();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C33B9C@<X0>(const void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  OUTLINED_FUNCTION_108_3(a1, a2);
  swift_getKeyPath();
  memcpy(v10, a1, sizeof(v10));
  v5 = OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  sub_227C41480();
  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  v7 = OUTLINED_FUNCTION_278();
  result = sub_227C1CB1C(v7, v8);
  *a3 = 0;
  return result;
}

void *sub_227C33C58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_177_2();
  sub_227B17E0C(v2);
  sub_227D494A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_9();
  sub_227B17E0C(v3);
  sub_227C41558();
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_168_1();
  sub_227D4CC68();

  memcpy(__dst, v5, sizeof(__dst));
  return memcpy(a1, __dst, 0x70uLL);
}

void *sub_227C33D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C33C58(v5);
  return memcpy(a2, v5, 0x70uLL);
}

uint64_t sub_227C33DA4(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  sub_227C4BC80();
  return sub_227C33E0C(__dst);
}

uint64_t sub_227C33E0C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_239();
  sub_227C1CB1C(a1, &qword_27D7E91E8);
}

void (*sub_227C33EC0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x238uLL);
  *a1 = v3;
  v3[70] = v1;
  sub_227C33C58(v3 + 28);
  return sub_227C33F24;
}

void sub_227C33F24(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 70);
  if (a2)
  {
    memcpy(*a1, (v2 + 224), 0x70uLL);
    sub_227C4BC80();
    sub_227C33E0C(v2);
    memcpy((v2 + 336), (v2 + 224), 0x70uLL);
    sub_227C1CB1C(v2 + 336, &qword_27D7E91E8);
  }

  else
  {
    memcpy((v2 + 112), (v2 + 224), 0x70uLL);
    sub_227C33E0C(v2 + 112);
  }

  free(v2);
}

void sub_227C34014()
{
  OUTLINED_FUNCTION_255();
  v1 = v0;
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getKeyPath();
  v4 = OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v1();
  OUTLINED_FUNCTION_305();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C340C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C340B8();
  *a2 = result;
  return result;
}

uint64_t sub_227C340F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C3411C();
}

uint64_t sub_227C3411C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C341C0(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C340B8();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C34318@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C34248();
  *a2 = result;
  return result;
}

uint64_t sub_227C34344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C34370();
}

uint64_t sub_227C34370()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_1_22();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C34414(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C34248();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3449C(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C2E440();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C34524(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C2E050();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C34588(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2F188();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t (*sub_227C345EC(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = sub_227C2E830();
  OUTLINED_FUNCTION_210_2(v1);
  return sub_227C3462C;
}

uint64_t sub_227C3462C(uint64_t *a1)
{
  OUTLINED_FUNCTION_392_0(a1);
  OUTLINED_FUNCTION_291();
  return sub_227C2F784();
}

void sub_227C346E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, __int16 a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int16 a39, uint64_t a40, void (*a41)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, _BYTE, uint64_t, _WORD, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __int16, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_11();
  v65 = v43;
  v66 = v44;
  v63 = v45;
  v64 = v46;
  v61 = v47;
  v62 = v48;
  v60 = v49;
  v52 = *(v50 + 24);
  v51 = *(v50 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v50, v52);
  OUTLINED_FUNCTION_6_2();
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3();
  v57 = OUTLINED_FUNCTION_362_0(v56);
  v58(v57);
  a41(v60, v61, v62, v63, v64, v65, v66, v42, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31 & 1, a32, a33 & 0xFF01, a34, a35, a36, a37, a38, a39, a40, v41, v52, v51);
  v59 = OUTLINED_FUNCTION_223();
  __swift_destroy_boxed_opaque_existential_0(v59);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C348CC()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91F0, &qword_227D5C220);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_421(v3);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C3497C()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

void sub_227C349E4()
{
  OUTLINED_FUNCTION_11();
  v24 = sub_227D4CD98();
  v0 = *(v24 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_3();
  v23 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  v4 = *(v0 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_227D5C180;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9258, &qword_227D5C838);
  OUTLINED_FUNCTION_198_2();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8648, &qword_227D5C840);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_227D59C70;
  *(v7 + 32) = swift_getKeyPath();
  *(v7 + 40) = swift_getKeyPath();
  *(v7 + 48) = swift_getKeyPath();
  *(v6 + 32) = v7;
  v8 = OUTLINED_FUNCTION_340();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_166_2(v10);
  swift_allocObject();
  OUTLINED_FUNCTION_267_0();
  sub_227D4CDA8();
  OUTLINED_FUNCTION_186_2();
  v12 = sub_227B1A6E4(v11);
  OUTLINED_FUNCTION_469(v12);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  v13 = OUTLINED_FUNCTION_100_3();
  v17 = sub_227C10AC0(v13, v14, v15, v16);
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  if (v19 >= v18 >> 1)
  {
    v20 = OUTLINED_FUNCTION_55(v18);
    v17 = sub_227C10AC0(v20, v21, v22, v17);
  }

  *(v17 + 16) = v19 + 1;
  (*(v1 + 32))(v17 + v5 + v19 * v4, v23, v24);
  sub_227C23364();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C3517C()
{
  OUTLINED_FUNCTION_70_4();
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91F0, &qword_227D5C220);
  OUTLINED_FUNCTION_1_22();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_338(v3);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v0 + 16) = 16843009;
  *(v0 + 20) = 257;
  *(v0 + 22) = 1;
  sub_227D494B8();
  *(v0 + 19) = 0;
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_143_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_227B132F0(v1, v0 + 24);
  swift_endAccess();
  return v0;
}

uint64_t sub_227C3534C()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91B8, &qword_227D5BFD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_227D4E520;
  v3 = v1();
  *(v2 + 32) = v0;
  *(v2 + 40) = v3;
  return v2;
}

uint64_t sub_227C353D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8748, &qword_227D5B6D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227D59C40;
  v1 = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v4 = type metadata accessor for GameActivityRuntimeStatsSchema(0);
  OUTLINED_FUNCTION_2_26();
  v6 = sub_227B17E0C(v5);
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  v7 = type metadata accessor for GameActivityLeaderBoardScoreSchema(0);
  OUTLINED_FUNCTION_7_17();
  v9 = sub_227B17E0C(v8);
  *(v0 + 64) = v7;
  *(v0 + 72) = v9;
  v10 = type metadata accessor for GameActivityAchievementProgressSchema(0);
  OUTLINED_FUNCTION_3_19();
  v12 = sub_227B17E0C(v11);
  *(v0 + 80) = v10;
  *(v0 + 88) = v12;
  return v0;
}

uint64_t sub_227C35504(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2AD90();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C35568()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D492A8();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_147_1(v8);
  sub_227C2D938(v9);
  return OUTLINED_FUNCTION_348_0();
}

void sub_227C3562C()
{
  OUTLINED_FUNCTION_450_0();
  v2 = v1;
  v3 = *v0;
  v4 = (*v0)[3];
  v5 = (*v0)[4];
  if (v6)
  {
    v7 = v3[1];
    v8 = v3[2];
    v9 = *v3;
    v10 = *(v8 + 16);
    v11 = (*v0)[3];
    OUTLINED_FUNCTION_193_3();
    v12();
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v13 = *v3;
    v1((*v0)[4]);
  }

  free(v5);
  free(v4);
  OUTLINED_FUNCTION_451_0();

  free(v14);
}

uint64_t sub_227C356F4(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C29468();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C35758(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2FBD8();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C357BC(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C30920();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3595C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_239();

  v10 = sub_227D49188();
  OUTLINED_FUNCTION_15_6(v10);
  return (*(v11 + 8))(a1);
}

uint64_t sub_227C35A24()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D49188();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_147_1(v8);
  sub_227C35820(v9);
  return OUTLINED_FUNCTION_348_0();
}

uint64_t sub_227C35BD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C35AF4();
  *a2 = result;
  return result;
}

uint64_t sub_227C35C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C35C2C();
}

uint64_t sub_227C35C2C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C35CD0(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C35AF4();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C35D34(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C30074();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C35DA4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C35D98();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C35DF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  sub_227D4CE58();
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_224();
  sub_227C377D4();
}

uint64_t sub_227C35E60(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C35D98();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C35EC0()
{
  OUTLINED_FUNCTION_236_0();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  if (v4)
  {
    v5 = v0[1];
    sub_227D4CE58();
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_224();
    sub_227C377D4();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_224();
    sub_227C377D4();
  }
}

uint64_t sub_227C35F50()
{
  OUTLINED_FUNCTION_396_0();
  OUTLINED_FUNCTION_108_3(v0, v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_419();
  v2 = sub_227D492A8();
  OUTLINED_FUNCTION_16_9();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_283();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_14_0(v2);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_179();

  return v7(v6);
}

uint64_t sub_227C36008()
{
  v1 = OUTLINED_FUNCTION_360_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_71_4(v2);
  v3 = sub_227D492A8();
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_10_0(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_343_0(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_147_1(v8);
  sub_227C2DBF4(v9);
  return OUTLINED_FUNCTION_348_0();
}

uint64_t sub_227C36214(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_239();

  return sub_227C1CB1C(a1, &qword_27D7E6D08);
}

uint64_t sub_227C362C8(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C360FC(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C364BC(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_239();

  return sub_227C1CB1C(a1, &qword_27D7E6D08);
}

uint64_t sub_227C36570(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C363A4(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C36764(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_227B17E0C(v2);
  OUTLINED_FUNCTION_19_9(v3, v4, v5, v6, v7, v3, v8, v9, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_239();

  return sub_227C1CB1C(a1, &qword_27D7E6D08);
}

uint64_t sub_227C36818(void *a1)
{
  OUTLINED_FUNCTION_223_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_357_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_144_2(v5);
  sub_227C3664C(v6);
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C369B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C368E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_227C369DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227C36A04();
}

uint64_t sub_227C36A04()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C36AA0(uint64_t a1)
{
  v1 = sub_227C368E0(a1);

  return sub_227C36AC8(v1);
}

uint64_t sub_227C36AFC()
{
  sub_227D4DC28();

  return sub_227C36A04();
}

uint64_t sub_227C36B24(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_107_3(a1);
  v3 = sub_227C368E0(v2);
  *v1 = sub_227C36AC8(v3);
  v1[1] = v4;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C36B68(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  sub_227D4DC28();
  return sub_227C36A04();
}

uint64_t sub_227C36C90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C36BA4();
  *a2 = result;
  return result;
}

uint64_t sub_227C36CBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_227C36CE8();
}

uint64_t sub_227C36CE8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C36D8C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C36BA4(v2);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C36EE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C36E14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_227C36F10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C36F3C();
}

uint64_t sub_227C36F3C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C36FE0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C36E14(v2);
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C37050@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C37044();
  *a2 = result;
  return result;
}

uint64_t sub_227C3707C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C370A8();
}

uint64_t sub_227C370A8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_0_41();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C3714C(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C37044();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C371B0(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C2FB00();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C372EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C3721C(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_227C37344(char a1)
{
  swift_getKeyPath();
  LOBYTE(v14) = a1;
  OUTLINED_FUNCTION_0_41();
  v4 = sub_227B17E0C(v3);
  OUTLINED_FUNCTION_19_9(v4, v5, v6, v7, v8, v4, v9, v10, v12, v13, v1, v14, v15, v16);
  OUTLINED_FUNCTION_239();
}

uint64_t (*sub_227C373E8(void *a1))(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_223_0(a1);
  v2 = sub_227C3721C(v1);
  OUTLINED_FUNCTION_210_2(v2);
  return sub_227C37428;
}

void sub_227C37458()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C37518(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C37458();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C3755C()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C375FC(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C37458();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3766C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C37660();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C376D0()
{
  OUTLINED_FUNCTION_320_0();
  OUTLINED_FUNCTION_345_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_10();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_4_19();
  sub_227B17E0C(v1);
  sub_227C17488();
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_54_7();
  sub_227D4CC68();

  OUTLINED_FUNCTION_319();
}

void sub_227C37788(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C376C4();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C377D4()
{
  OUTLINED_FUNCTION_483();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_444_0();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C37878@<X0>(uint64_t a1@<X8>)
{
  sub_227C37660();
  if (v2)
  {
    sub_227C2AD90();
    OUTLINED_FUNCTION_185();
    OUTLINED_FUNCTION_323();
    sub_227D4A7B8();
    v3 = MEMORY[0x277D0CB90];
LABEL_5:
    v5 = *v3;
    v6 = sub_227D49AC8();
    OUTLINED_FUNCTION_62_0(v6);
    (*(v7 + 104))(a1, v5, v6);
    OUTLINED_FUNCTION_99();
    v11 = v6;
    goto LABEL_6;
  }

  sub_227C376C4();
  if (v4)
  {
    sub_227C2AD90();
    OUTLINED_FUNCTION_185();
    OUTLINED_FUNCTION_323();
    sub_227D4A858();
    v3 = MEMORY[0x277D0CB98];
    goto LABEL_5;
  }

  sub_227D49AC8();
  OUTLINED_FUNCTION_71_0();
LABEL_6:

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_227C37978(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C29638();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C37A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void (*a40)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_11();
  v64 = v42;
  v65 = v43;
  v61 = v44;
  v62 = v45;
  v59 = v46;
  v60 = v47;
  v63 = v48;
  v51 = *(v49 + 24);
  v50 = *(v49 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v49, v51);
  OUTLINED_FUNCTION_6_2();
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  v56 = OUTLINED_FUNCTION_362_0(v55);
  v57(v56);
  a40(v59, v60, v61, v62, v63, v64, v65, v41, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v40, v51, v50);
  v58 = OUTLINED_FUNCTION_223();
  __swift_destroy_boxed_opaque_existential_0(v58);
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C37BC0()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9208, &qword_227D5C328);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_421(v3);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C37C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  v11 = sub_227B1A6E4(&unk_27D7E6868);
  v12 = MEMORY[0x22AAA60B0](v10, v2, v11);
  v23 = v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v22 = a1;
    v18 = a1 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v7, v18, v2);
      sub_227C43208(v9, v7);
      (*(v14 - 8))(v9, v2);
      v18 += v19;
      --v13;
    }

    while (v13);

    return v23;
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

void sub_227C37E24()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_419();
  v104 = sub_227D49B88();
  v1 = OUTLINED_FUNCTION_9(v104);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_3();
  v103 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26_0();
  v102 = v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96D8, &unk_227D5E260);
  v14 = OUTLINED_FUNCTION_62_0(v99);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  v98 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v20 = v86 - v19;
  v88 = sub_227D4CE28();
  v22 = v0 + 64;
  v21 = *(v0 + 64);
  v23 = *(v0 + 32);
  OUTLINED_FUNCTION_102_3();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v96 = v3 + 16;
  v97 = v9 + 16;
  v94 = v3 + 32;
  v95 = v9 + 32;
  v100 = v9;
  v101 = v3;
  v91 = (v9 + 8);
  v92 = (v3 + 8);
  v105 = v0;
  sub_227D4CE58();
  v29 = 0;
  v89 = v28;
  v90 = v0 + 64;
  v93 = v20;
  while (1)
  {
    v30 = v29;
    v31 = v7;
    if (!v26)
    {
      break;
    }

    while (1)
    {
      v106 = 0;
      v29 = v30;
LABEL_8:
      OUTLINED_FUNCTION_402_0();
      v33 = v32 | (v29 << 6);
      v34 = v105;
      v35 = v100;
      v36 = v31;
      (*(v100 + 16))(v20, *(v105 + 48) + *(v100 + 72) * v33, v31);
      v37 = v101;
      v38 = *(v34 + 56) + *(v101 + 72) * v33;
      v39 = v99;
      v40 = v104;
      (*(v101 + 16))(&v20[*(v99 + 48)], v38, v104);
      v41 = v98;
      sub_227C4BC80();
      v42 = *(v39 + 48);
      v43 = *(v35 + 32);
      v44 = OUTLINED_FUNCTION_299_0();
      v45(v44);
      v7 = v36;
      (*(v37 + 32))(v103, v41 + v42, v40);
      v46 = v106;
      v47 = sub_227D4A898();
      if (!v46)
      {
        break;
      }

      v49 = *v92;
      v50 = OUTLINED_FUNCTION_233();
      v51(v50);
      v52 = OUTLINED_FUNCTION_375();
      v53(v52, v7);
      v54 = v93;
      v55 = OUTLINED_FUNCTION_278();
      sub_227C1CB1C(v55, v56);
      v30 = v29;
      v31 = v7;
      v20 = v54;
    }

    v57 = v47;
    v58 = v48;
    v20 = v93;
    v87 = sub_227D49B78();
    v106 = v59;
    v60 = v88;
    v86[1] = swift_isUniquelyReferenced_nonNull_native();
    v107 = v60;
    v61 = sub_227B2664C(v57, v58);
    v63 = *(v60 + 16);
    v64 = (v62 & 1) == 0;
    v88 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_21;
    }

    v65 = v61;
    v66 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
    if (sub_227D4D7C8())
    {
      v67 = sub_227B2664C(v57, v58);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_23;
      }

      v65 = v67;
    }

    if (v66)
    {

      v88 = v107;
      v69 = (v107[7] + 16 * v65);
      v70 = v69[1];
      OUTLINED_FUNCTION_430_0(v69);

      v71 = OUTLINED_FUNCTION_375();
      v72(v71, v104);
      v73 = *v91;
      v74 = OUTLINED_FUNCTION_394_0();
      v75(v74);
      sub_227C1CB1C(v20, &qword_27D7E96D8);
    }

    else
    {
      v76 = v107;
      v107[(v65 >> 6) + 8] |= 1 << v65;
      v77 = (v76[6] + 16 * v65);
      *v77 = v57;
      v77[1] = v58;
      OUTLINED_FUNCTION_430_0((v76[7] + 16 * v65));
      v78 = OUTLINED_FUNCTION_375();
      v79(v78, v104);
      v80 = *v91;
      v81 = OUTLINED_FUNCTION_394_0();
      v82(v81);
      sub_227C1CB1C(v20, &qword_27D7E96D8);
      v83 = v76[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_22;
      }

      v88 = v76;
      v76[2] = v85;
    }

    v28 = v89;
    v22 = v90;
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v29 >= v28)
    {

      OUTLINED_FUNCTION_8_1();
      return;
    }

    v26 = *(v22 + 8 * v29);
    ++v30;
    if (v26)
    {
      v106 = 0;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_227D4DAE8();
  __break(1u);
}

void sub_227C38398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_320_0();
  a17 = v19;
  a18 = v20;
  v22 = *(v21 + 16);
  if (v22)
  {
    OUTLINED_FUNCTION_236_0();
    v23 = OUTLINED_FUNCTION_304_0();
    v24 = type metadata accessor for GameActivityRuntimeStatsSchema(v23);
    OUTLINED_FUNCTION_166_2(v24);
    v25 = swift_allocObject();
    sub_227D4CE58();

    OUTLINED_FUNCTION_201();
    sub_227C39AC8();
    a10 = v25;
    v26 = sub_227D49AF8();
    OUTLINED_FUNCTION_10_0(v26);
    v28 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v30 = *(v29 + 72);
    do
    {
      sub_227C3E6A8(&a10);
      v28 += v30;
      --v22;
    }

    while (v22);
    v31 = *(sub_227C39D18() + 16);

    if (!v31)
    {
    }
  }

  OUTLINED_FUNCTION_319();
}

uint64_t sub_227C384A8()
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_397_0();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  v0(v2, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_227C38504()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

void sub_227C38554(uint64_t *a1, char a2, void (*a3)(uint64_t *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_227C19454(*a1, (v4 + 5));
    OUTLINED_FUNCTION_397_0();
    __swift_destroy_boxed_opaque_existential_0((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    OUTLINED_FUNCTION_397_0();
    __swift_destroy_boxed_opaque_existential_0((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

void sub_227C38610()
{
  OUTLINED_FUNCTION_11();
  v17 = sub_227D4CD48();
  v0 = OUTLINED_FUNCTION_9(v17);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_419();
  v8 = sub_227D4CD98();
  OUTLINED_FUNCTION_10_0(v8);
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_241_0();
  *(swift_allocObject() + 16) = xmmword_227D5C180;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_165_2();
  v11 = sub_227D4CDC8();
  OUTLINED_FUNCTION_166_2(v11);
  swift_allocObject();
  OUTLINED_FUNCTION_120();
  sub_227D4CDD8();
  v12 = sub_227B17E0C(&unk_280E7A828);
  OUTLINED_FUNCTION_469(v12);
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_165_2();
  (*(v2 + 104))(v7, *MEMORY[0x277CDD5A0], v17, v13);
  swift_getKeyPath();
  OUTLINED_FUNCTION_342();
  v14 = sub_227D4CD58();
  OUTLINED_FUNCTION_166_2(v14);
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_478();
  OUTLINED_FUNCTION_132_3();
  OUTLINED_FUNCTION_183_3();
  v16 = sub_227B17E0C(v15);
  OUTLINED_FUNCTION_469(v16);
  OUTLINED_FUNCTION_53_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_52_5();
  sub_227D4CD88();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C38E10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C38D24();
  *a2 = result;
  return result;
}

uint64_t sub_227C38E3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_227C38E68();
}

uint64_t sub_227C38E68()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_2_26();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

void *sub_227C38F24()
{
  OUTLINED_FUNCTION_70_4();
  v0[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9208, &qword_227D5C328);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_338(v3);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  v0[2] = 0x101010101010101;
  sub_227D494B8();
  v0[2] = 0;
  OUTLINED_FUNCTION_143_0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  sub_227B132F0(v1, (v0 + 3));
  swift_endAccess();
  return v0;
}

uint64_t sub_227C390A8(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  v3 = *a1;
  v4 = sub_227D494C8();
  OUTLINED_FUNCTION_15_6(v4);
  (*(v5 + 8))(v1 + v3);
  return v1;
}

uint64_t sub_227C39110(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 3);
  v3 = *a1;
  v4 = sub_227D494C8();
  OUTLINED_FUNCTION_15_6(v4);
  (*(v5 + 8))(v1 + v3);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v6, v7);
}

void sub_227C391B8()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_175_1();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_63_2();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C39278(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C391B8();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C392BC()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C3935C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C391B8();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C393B4()
{
  OUTLINED_FUNCTION_450_0();
  v1 = v0;
  OUTLINED_FUNCTION_108_3(v2, v3);
  swift_getKeyPath();
  v4 = OUTLINED_FUNCTION_300_0();
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v4);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v5);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_283();
  sub_227D4CAE8();

  *v1 = 0;
  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227C39450(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C38D24(v2);
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C394A8()
{
  OUTLINED_FUNCTION_255();
  v1 = v0[4];
  OUTLINED_FUNCTION_256(v0, v0[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9278, &qword_227D5CA10);
  v2 = OUTLINED_FUNCTION_300_0();
  type metadata accessor for GameActivityLeaderBoardScoreSchema(v2);
  sub_227C47C88();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_302_0();
  sub_227D4CAC8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C3957C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C39548();
  *a2 = result;
  return result;
}

uint64_t sub_227C395A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C395D4();
}

uint64_t sub_227C395D4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_2_26();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C39678(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C39548();
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C396D0()
{
  OUTLINED_FUNCTION_255();
  v1 = v0[4];
  OUTLINED_FUNCTION_256(v0, v0[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9288, &qword_227D5CA40);
  v2 = OUTLINED_FUNCTION_300_0();
  type metadata accessor for GameActivityAchievementProgressSchema(v2);
  sub_227C47D74();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_302_0();
  sub_227D4CAC8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C3989C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C39770();
  *a2 = result;
  return result;
}

uint64_t sub_227C398C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_227D4CE58();
  return sub_227C398F4();
}

uint64_t sub_227C398F4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_2_26();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C39998(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C39770();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C399F0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;
  v7 = sub_227D4CE58();
  a3(v7);
}

uint64_t sub_227C39A60()
{
  OUTLINED_FUNCTION_387_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_236();
  sub_227C39AC8();
  return v3;
}

void *sub_227C39AC8()
{
  v1 = v0;
  OUTLINED_FUNCTION_294_0();
  v2 = *v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9298, &qword_227D5CA48);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_338(v4);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v1 + 16) = 1;
  sub_227D494B8();
  OUTLINED_FUNCTION_82();
  sub_227C3C834();
  v5 = v1[7];
  OUTLINED_FUNCTION_256(v1 + 3, v1[6]);
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_407();
  type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(v6);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v7);

  OUTLINED_FUNCTION_227();
  sub_227D4CAE8();

  *(v1 + 16) = 0;
  sub_227C394A8();
  sub_227C396D0();

  return v1;
}

uint64_t sub_227C39C80()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for GameActivityRuntimeStatsSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9298, &qword_227D5CA48);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_421(v3);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C39D18()
{
  v0 = sub_227C39548();
  v13 = MEMORY[0x277D84F90];
  v1 = sub_227B4BF3C(v0);
  for (i = 0; v1 != i; ++i)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = OUTLINED_FUNCTION_165_3();
      MEMORY[0x22AAA63D0](v4);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);

      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_399();
    sub_227C39EF0();
  }

  v5 = sub_227C39770();
  v6 = sub_227B4BF3C(v5);
  for (j = 0; v6 != j; ++j)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_165_3();
      MEMORY[0x22AAA63D0](v11);
    }

    else
    {
      if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_399();
    sub_227C3A648(v9, v10);
  }

  sub_227C23364();
  return v13;
}

void sub_227C39EF0()
{
  OUTLINED_FUNCTION_351();
  v77 = v0;
  v3 = v2;
  v75 = v4;
  v5 = sub_227D49AF8();
  v6 = OUTLINED_FUNCTION_9(v5);
  v73 = v7;
  v74 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_3();
  v76 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_68_3();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v15 = OUTLINED_FUNCTION_9(v80);
  v72 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  v71 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_314();
  v81 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v23 = OUTLINED_FUNCTION_9(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_54_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v70 - v32;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v34 = OUTLINED_FUNCTION_9(v83);
  v82 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  v70[1] = v38;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_438();
  v40 = *v3;
  sub_227C3A3C0();
  sub_227D4A888();
  sub_227C391B8();
  sub_227D4A698();
  sub_227C3A480();
  v78 = v25;
  v79 = v22;
  v41 = v22;
  v42 = v1;
  (*(v25 + 16))(v30, v33, v41);
  OUTLINED_FUNCTION_269();
  v43 = v77;
  sub_227D4A7C8();
  if (v43)
  {

    OUTLINED_FUNCTION_256_0();
    v44(v33);
    v45 = OUTLINED_FUNCTION_196_2();
    v46(v45, v83);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v80);
    sub_227C1CB1C(v1, &qword_27D7E8390);
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v50 = v80;
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v80);
    v54 = v72;
    v55 = v42;
    v56 = v50;
    (*(v72 + 32))(v81, v55, v50);
    v57 = *(v82 + 16);
    v58 = OUTLINED_FUNCTION_341();
    v59(v58);
    v77 = sub_227C3A540();
    sub_227C3A634();
    (*(v54 + 16))(v71, v81, v50);
    v60 = v76;
    OUTLINED_FUNCTION_305();
    sub_227D4A118();
    v61 = v73;
    v62 = v60;
    v63 = v74;
    (*(v73 + 104))(v62, *MEMORY[0x277D0CC00], v74);
    v64 = v75;
    sub_227C408D8();
    v65 = *(*v64 + 16);
    sub_227C40924(v65);
    (*(v54 + 8))(v81, v56);
    OUTLINED_FUNCTION_256_0();
    v66(v33);
    v67 = OUTLINED_FUNCTION_196_2();
    v68(v67, v83);
    v69 = *v64;
    *(v69 + 16) = v65 + 1;
    (*(v61 + 32))(v69 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v65, v76, v63);
    *v64 = v69;
  }

  OUTLINED_FUNCTION_352();
}

void sub_227C3A3C0()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_5();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_39_5();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C3A480()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_61_5();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_39_5();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

uint64_t sub_227C3A648(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_117_2(v11);
  v12 = sub_227D49AF8();
  v13 = OUTLINED_FUNCTION_9(v12);
  v65 = v14;
  v66 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v70 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_75_2();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v22 = OUTLINED_FUNCTION_9(v74);
  v64 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_314();
  v69 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v29 = OUTLINED_FUNCTION_9(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_325_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_329_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v36 = OUTLINED_FUNCTION_9(v35);
  v72 = v37;
  v73 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  v68 = v40;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_438();
  v42 = *a2;
  sub_227C3AB5C();
  sub_227D4A888();
  sub_227C391B8();
  sub_227D4A698();
  sub_227C3AC1C();
  (*(v31 + 16))(v3, v4, v28);
  OUTLINED_FUNCTION_269();
  sub_227D4A738();
  if (v71)
  {

    OUTLINED_FUNCTION_256_0();
    v43(v4);
    v44 = OUTLINED_FUNCTION_196_2();
    v45(v44);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v74);
    return sub_227C1CB1C(v5, &qword_27D7E96A0);
  }

  else
  {
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v74);
    v53 = *(v64 + 32);
    OUTLINED_FUNCTION_199_1();
    v54();
    (*(v72 + 16))(v68, v2, v73);
    v55 = *(v64 + 16);
    v56 = OUTLINED_FUNCTION_233();
    v58 = v57(v56);
    sub_227C3ACDC(v58);
    sub_227C3ADAC();
    sub_227C3AE7C();
    sub_227D4A278();
    (*(v65 + 104))(v70, *MEMORY[0x277D0CBF8], v66);
    sub_227C408D8();
    v59 = *(*a1 + 16);
    sub_227C40924(v59);
    (*(v64 + 8))(v69, v74);
    OUTLINED_FUNCTION_256_0();
    v60(v4);
    v61 = OUTLINED_FUNCTION_196_2();
    v62(v61);
    v63 = *a1;
    *(v63 + 16) = v59 + 1;
    result = (*(v65 + 32))(v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v59, v70, v66);
    *a1 = v63;
  }

  return result;
}

void sub_227C3AB5C()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_7();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_22_7();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

void sub_227C3AC1C()
{
  OUTLINED_FUNCTION_320_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_7();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_56_4();

  swift_getKeyPath();
  OUTLINED_FUNCTION_22_7();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_106_2();

  OUTLINED_FUNCTION_319();
}

uint64_t sub_227C3AF58()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

void sub_227C3AFA8()
{
  OUTLINED_FUNCTION_11();
  v18 = sub_227D4CD48();
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_311_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_342();
  v6 = sub_227D4CD98();
  OUTLINED_FUNCTION_10_0(v6);
  v8 = *(v7 + 72);
  OUTLINED_FUNCTION_241_0();
  *(swift_allocObject() + 16) = xmmword_227D59C40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v9 = OUTLINED_FUNCTION_165_2();
  v10 = *MEMORY[0x277CDD5A0];
  v11 = *(v2 + 104);
  v11(v0, v10, v18, v9);
  swift_getKeyPath();
  OUTLINED_FUNCTION_342();
  v12 = sub_227D4CD58();
  OUTLINED_FUNCTION_166_2(v12);
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_132_3();
  OUTLINED_FUNCTION_183_3();
  v14 = sub_227B17E0C(v13);
  OUTLINED_FUNCTION_469(v14);
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_165_2();
  v11(v0, v10, v18, v15);
  swift_getKeyPath();
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_174_2();
  OUTLINED_FUNCTION_132_3();
  OUTLINED_FUNCTION_164_2();
  sub_227D4CD88();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227C3B398@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C3B2AC();
  *a2 = result;
  return result;
}

uint64_t sub_227C3B3C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_227C3B3F0();
}

uint64_t sub_227C3B3F0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_7_17();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C3B580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C3B494();
  *a2 = result;
  return result;
}

uint64_t sub_227C3B5AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_227C3B5D8();
}

uint64_t sub_227C3B5D8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_204_1();
  OUTLINED_FUNCTION_3_19();
  v1 = sub_227B17E0C(v0);
  OUTLINED_FUNCTION_19_9(v1, v2, v3, v4, v5, v1, v6, v7, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_239();
}

uint64_t sub_227C3B694()
{
  OUTLINED_FUNCTION_70_4();
  *(v0 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9298, &qword_227D5CA48);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_338(v3);
  OUTLINED_FUNCTION_47_4();
  sub_227D4CC08();
  *(v0 + 16) = 1;
  sub_227D494B8();
  *(v0 + 16) = 0;
  OUTLINED_FUNCTION_143_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_227B132F0(v1, v0 + 24);
  swift_endAccess();
  return v0;
}

uint64_t sub_227C3B838(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3B2AC(v2);
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3B89C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C3A3C0();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C3B8E0()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C3B980(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C3A3C0();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3B9F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C3A540();
  *a2 = result;
  return result;
}

uint64_t sub_227C3BA20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227C3BA84();
}

uint64_t sub_227C3BA84()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_444_0();
}

uint64_t sub_227C3BB20(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3A540();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3BB60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_284_0();
  return sub_227C3BA84();
}

void sub_227C3BBAC()
{
  OUTLINED_FUNCTION_255();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_344();
  sub_227D4CAD8();

  OUTLINED_FUNCTION_254();
}

uint64_t sub_227C3BC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_227C3A634();
  *a2 = result;
  return result;
}

uint64_t sub_227C3BC58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_227C3BA84();
}

uint64_t sub_227C3BCBC(uint64_t a1)
{
  OUTLINED_FUNCTION_134_0(a1);
  *v1 = sub_227C3A634();
  return OUTLINED_FUNCTION_93_3();
}

uint64_t sub_227C3BCFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_283_0();
  return sub_227C3BA84();
}

void sub_227C3BD38(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_227C3A480();
  *a2 = v4;
  a2[1] = v5;
}

void sub_227C3BD7C()
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_104_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_481();
}

uint64_t sub_227C3BE1C(uint64_t a1)
{
  OUTLINED_FUNCTION_107_3(a1);
  sub_227C3A480();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_93_3();
}

void sub_227C3BE74()
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_153_3();
  sub_227C3BEC8();
  OUTLINED_FUNCTION_451_0();
}

void *sub_227C3BEC8()
{
  v1 = v0;
  v2 = *v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A0, &qword_227D5CC08);
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v3);
  OUTLINED_FUNCTION_13_1();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_338(OpaqueTypeConformance2);
  OUTLINED_FUNCTION_77_2();
  sub_227D4CC08();
  *(v1 + 16) = 1;
  sub_227D494B8();
  v5 = v1[7];
  OUTLINED_FUNCTION_256(v1 + 3, v1[6]);
  swift_getKeyPath();
  v6 = OUTLINED_FUNCTION_304_0();
  type metadata accessor for GameActivityRuntimeStatsSchema(v6);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v7);

  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_302_0();
  sub_227D4CAE8();

  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_114();
  sub_227C3C834();
  v8 = v1[7];
  OUTLINED_FUNCTION_256(v1 + 3, v1[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_443_0();

  v9 = v1[7];
  OUTLINED_FUNCTION_256(v1 + 3, v1[6]);
  swift_getKeyPath();
  OUTLINED_FUNCTION_443_0();

  sub_227C3C834();

  return v1;
}

uint64_t sub_227C3C114()
{
  v1 = OUTLINED_FUNCTION_40();
  type metadata accessor for GameActivityLeaderBoardScoreSchema(v1);
  *(v0 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E92A0, &qword_227D5CC08);
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v2);
  OUTLINED_FUNCTION_13_1();
  v3 = OUTLINED_FUNCTION_502();
  OUTLINED_FUNCTION_421(v3);
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_296_0();
  return sub_227D4CC08();
}

uint64_t sub_227C3C1AC()
{
  v0 = OUTLINED_FUNCTION_377();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_62_4(v1);
  OUTLINED_FUNCTION_499();
  return OUTLINED_FUNCTION_343();
}

uint64_t sub_227C3C1FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8638, &qword_227D5C800);
  OUTLINED_FUNCTION_419();
  v0 = sub_227D4CD98();
  OUTLINED_FUNCTION_10_0(v0);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_241_0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_227D59C80;
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_178_3();
  OUTLINED_FUNCTION_374_0();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  swift_getKeyPath();
  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_178_3();
  sub_227D4CD88();
  return v3;
}