uint64_t OUTLINED_FUNCTION_81_8()
{
  v2 = v0[16];
  v4 = v0[15];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[11];
}

void OUTLINED_FUNCTION_86_6()
{
  v6 = *(v1 + 184);
  *(v3 + 16) = v2;
  v7 = v3 + 16 * v0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
}

uint64_t OUTLINED_FUNCTION_98_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_112_4()
{
  v2 = v0[16];
  v4 = v0[15];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[11];
}

uint64_t OUTLINED_FUNCTION_113_6()
{
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
}

void OUTLINED_FUNCTION_121_4()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[7];
}

void OUTLINED_FUNCTION_122_3()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
}

uint64_t OUTLINED_FUNCTION_123_1()
{
  result = *(v0 + 208);
  v2 = *(v0 + 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_124_2(uint64_t result, uint64_t a2)
{
  v2[38] = result;
  v2[39] = a2;
  v3 = v2[33];
  return result;
}

uint64_t OUTLINED_FUNCTION_127_2()
{
  v2 = *(v0 + 72) + 16;

  return sub_227C19454(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_128_3()
{
  v2 = *(v0 + 136);

  return sub_227D4A758();
}

void OUTLINED_FUNCTION_131_3()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
}

uint64_t OUTLINED_FUNCTION_139_2(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  return v2[22];
}

void OUTLINED_FUNCTION_141_3()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
}

uint64_t OUTLINED_FUNCTION_142_5()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  result = v2 + 88;
  v4 = *(v2 + 88);
  return result;
}

void OUTLINED_FUNCTION_144_4()
{

  JUMPOUT(0x22AAA5DA0);
}

char *OUTLINED_FUNCTION_145_3(uint64_t a1, int64_t a2)
{

  return sub_227B3CA88(0, a2, 0);
}

uint64_t OUTLINED_FUNCTION_147_3()
{

  return sub_227D4A758();
}

uint64_t OUTLINED_FUNCTION_148_3()
{
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);

  return sub_227BD8C70(v3, v4, v0);
}

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_227CB7E0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_62_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_85_8();

  return v4(v3);
}

uint64_t sub_227CB7F30@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  OUTLINED_FUNCTION_6_15(v7);
  return (*(v8 + 16))(a3, v3 + v6);
}

uint64_t sub_227CB7FD0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  OUTLINED_FUNCTION_6_15(v7);
  (*(v8 + 40))(v3 + v6, a1);
  return swift_endAccess();
}

uint64_t sub_227CB85C4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return sub_227D4CE58();
}

uint64_t sub_227CB8614(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_227CB86B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_253();
  sub_227CB8708(v8, v9, a3);
  return v7;
}

uint64_t sub_227CB8708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievements) = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievementDescriptions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievementProgress) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_reportedAchievements) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_challengeDefinitions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_gameActivityDefinitions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboards) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardProperties) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardDescriptions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardEntryProperties) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_classicLeaderboardScores) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSets) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSetDescriptions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSetMembers) = v7;
  v8 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_6_15(v9);
  (*(v10 + 32))(v3 + v8, a1);
  v11 = OBJC_IVAR____TtC16GameServicesCore8GameData_directoryURL;
  v12 = sub_227D49188();
  OUTLINED_FUNCTION_6_15(v12);
  (*(v13 + 32))(v3 + v11, a2);
  v14 = OBJC_IVAR____TtC16GameServicesCore8GameData_timestamp;
  v15 = sub_227D492A8();
  OUTLINED_FUNCTION_6_15(v15);
  (*(v16 + 32))(v3 + v14, a3);
  return v3;
}

void sub_227CB88B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_450_0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_120_4();
  v27 = sub_227D49188();
  v28 = OUTLINED_FUNCTION_9(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_227D49168();
  if (__swift_getEnumTagSinglePayload(v18, 1, v27) == 1)
  {
    sub_227CCBB4C(v18, &qword_27D7E6CD8);
    sub_227D4D7F8();
    __break(1u);
  }

  else
  {
    (*(v30 + 32))(v35, v18, v27);
    v36 = *(v30 + 16);
    v37 = OUTLINED_FUNCTION_323();
    v38(v37);
    v22[3] = sub_227D49528();
    v22[4] = sub_227CB8EB0(&qword_27D7E91E0, MEMORY[0x277D0C9B8]);
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_227D49518();
    v39 = *(v30 + 8);
    v40 = OUTLINED_FUNCTION_168_1();
    v41(v40);
    OUTLINED_FUNCTION_451_0();
  }
}

void sub_227CB8B0C()
{
  OUTLINED_FUNCTION_450_0();
  v1 = sub_227D492A8();
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_55_9();
  v7 = sub_227D49188();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_236();
  v17(v16);
  OUTLINED_FUNCTION_45();
  (*(v18 + 232))(v13);
  v19 = *(v4 + 16);
  v20 = OUTLINED_FUNCTION_193();
  v21(v20);
  OUTLINED_FUNCTION_33_9();
  (*(v22 + 256))(v0);
  OUTLINED_FUNCTION_451_0();
}

void sub_227CB8C8C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  v2 = sub_227D492A8();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_55_9();
  v8 = sub_227D49188();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_45();
  (*(v14 + 224))();
  sub_227CB8EB0(&qword_27D7E9F68, MEMORY[0x277CC9260]);
  v15 = sub_227D4CF38();
  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_200();
  v19 = v18(v17);
  if (v15)
  {
    (*(*v1 + 248))(v19);
    sub_227CB8EB0(&qword_27D7E9F70, MEMORY[0x277CC9578]);
    OUTLINED_FUNCTION_323();
    sub_227D4CF38();
    v20 = *(v5 + 8);
    v21 = OUTLINED_FUNCTION_193();
    v22(v21);
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CB8EB0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_227CB8EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v23;
  a20 = v24;
  v297 = v21;
  v298 = v20;
  v25 = type metadata accessor for AchievementPlayerKey(0);
  v26 = OUTLINED_FUNCTION_10_0(v25);
  v275 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v31);
  v281 = sub_227D49188();
  v32 = OUTLINED_FUNCTION_9(v281);
  v316 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_17(v37 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA090, &unk_227D634B0);
  v39 = OUTLINED_FUNCTION_5(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  OUTLINED_FUNCTION_5(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  v50 = OUTLINED_FUNCTION_5(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_266();
  v317 = v54;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v56);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9(v293);
  v315 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v61);
  v313 = sub_227D4A4D8();
  v62 = OUTLINED_FUNCTION_9(v313);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  v72 = OUTLINED_FUNCTION_5(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v78 = OUTLINED_FUNCTION_9(v77);
  v80 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_437();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v84 + 280))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA098, &qword_227D634C0);
  OUTLINED_FUNCTION_31_6();
  sub_227CCB9FC(v85, &qword_27D7E6D70);
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v86 + 304))();
  v87 = 0;
  OUTLINED_FUNCTION_136_3();
  v89 = *v88;
  v278 = *(v89 + 16);
  v276 = v89 + 32;
  v266 = v80 + 32;
  v291 = v315 + 16;
  v283 = (v64 + 32);
  v295 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v280 = v316 + 2;
  v324 = *MEMORY[0x277D0CEE8];
  v90 = v22;
  v91 = v80 + 8;
  v92 = v21;
  v269 = v91;
  v271 = v77;
  v270 = v22;
  while (1)
  {
    if (v87 == v278)
    {
      v241 = v298;
      OUTLINED_FUNCTION_45();
      v243 = (*(v242 + 320))();

      v244 = sub_227CC5184(v243, v241, sub_227CC5C3C, sub_227CC5C3C);

      OUTLINED_FUNCTION_33_9();
      (*(v245 + 328))(v244);
      OUTLINED_FUNCTION_33_9();
      v247 = (*(v246 + 344))();
      v248 = 0;
      v317 = *(v247 + 16);
      v316 = MEMORY[0x277D84F90];
      while (v317 != v248)
      {
        if (v248 >= *(v247 + 16))
        {
          goto LABEL_70;
        }

        v249 = (*(v275 + 80) + 32) & ~*(v275 + 80);
        v250 = *(v275 + 72);
        OUTLINED_FUNCTION_3_24();
        sub_227CCB9A8();
        OUTLINED_FUNCTION_129_4(&v321);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          OUTLINED_FUNCTION_71_7();
          OUTLINED_FUNCTION_131_4();
          swift_task_reportUnexpectedExecutor();
        }

        OUTLINED_FUNCTION_45();
        v252 = (*(v251 + 272))();
        MEMORY[0x28223BE20](v252);
        OUTLINED_FUNCTION_109();
        *(v253 - 16) = v277;
        sub_227CC8728();
        v255 = v254;

        if (v255)
        {
          OUTLINED_FUNCTION_3_24();
          sub_227CCBBA0();
          v258 = v316;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v319[0] = v258;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v260 = *(v258 + 16);
            sub_227CC5554();
            v258 = v319[0];
          }

          v262 = *(v258 + 16);
          v261 = *(v258 + 24);
          if (v262 >= v261 >> 1)
          {
            OUTLINED_FUNCTION_12(v261);
            sub_227CC5554();
            v258 = v319[0];
          }

          ++v248;
          *(v258 + 16) = v262 + 1;
          v316 = v258;
          OUTLINED_FUNCTION_3_24();
          sub_227CCBBA0();
        }

        else
        {
          v256 = OUTLINED_FUNCTION_5_24();
          sub_227CCB950(v256, v257);
          ++v248;
        }
      }

      OUTLINED_FUNCTION_45();
      (*(v263 + 352))(v316);
      goto LABEL_51;
    }

    v93 = (v276 + (v87 << 6));
    v94 = *v93;
    v95 = v93[1];
    v96 = v93[3];
    v322 = v93[2];
    v323 = v96;
    v320 = v94;
    v321 = v95;
    sub_227BA49D8(&v320, v319);
    sub_227BA4D50();
    OUTLINED_FUNCTION_115_4();
    sub_227D4A5F8();
    if (v92)
    {

      sub_227BA4A10(&v320);
LABEL_51:
      OUTLINED_FUNCTION_352();
      return;
    }

    v279 = v87;

    v97 = sub_227BA4D50();
    v99 = v98;
    OUTLINED_FUNCTION_37_8(v294);
    v100(v274, v90, v77);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v77);
    OUTLINED_FUNCTION_33_9();
    v105 = (*(v104 + 288))(v319);
    v107 = v106;
    if (__swift_getEnumTagSinglePayload(v274, 1, v77) == 1)
    {
      sub_227CCBB4C(v274, &qword_27D7E96A0);
      OUTLINED_FUNCTION_173_0();
      sub_227CC4C28();

      sub_227CCBB4C(v268, &qword_27D7E96A0);
    }

    else
    {
      OUTLINED_FUNCTION_37_8(&v287);
      v108(v267, v274, v77);
      v109 = *v107;
      v110 = swift_isUniquelyReferenced_nonNull_native();
      v318 = *v107;
      sub_227CC7910(v267, v97, v99, v110, &unk_27D7EA0B8, &unk_227D634E0, &qword_27D7E6D70, &unk_227D5E210, v264, v265, v266, v267, v268, v269);
      *v107 = v318;
    }

    v105(v319, 0);
    OUTLINED_FUNCTION_136_3();
    v112 = *(v111 + 104);
    v113 = *(v112 + 16);
    v297 = 0;
    if (v113 && (v114 = sub_227C76F0C(0), (v115 & 1) != 0))
    {
      v116 = *(*(v112 + 56) + 8 * v114);
      v118 = v116 + 64;
      v117 = *(v116 + 64);
      v119 = *(v116 + 32);
      OUTLINED_FUNCTION_18_15();
      v122 = v121 & v120;
      v124 = (v123 + 63) >> 6;
      v316 = v125;
      swift_bridgeObjectRetain_n();
      v126 = 0;
      if (!v122)
      {
        goto LABEL_11;
      }

      do
      {
        v127 = v126;
LABEL_14:
        v128 = __clz(__rbit64(v122)) | (v127 << 6);
        v129 = v316[7];
        v130 = (v316[6] + 16 * v128);
        v131 = v130[1];
        v296 = *v130;
        v132 = *(v129 + 8 * v128);
        sub_227D4CE58();
        sub_227D4CE58();
        v319[0] = sub_227BA4D50();
        v319[1] = v133;
        MEMORY[0x28223BE20](v319[0]);
        OUTLINED_FUNCTION_109();
        *(v134 - 16) = v319;
        v135 = v297;
        v137 = sub_227BB7050(sub_227CCBC10, v136, v132);
        v297 = v135;

        if (v137)
        {

          goto LABEL_19;
        }

        v122 &= v122 - 1;

        v126 = v127;
      }

      while (v122);
      while (1)
      {
LABEL_11:
        v127 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          goto LABEL_68;
        }

        if (v127 >= v124)
        {
          break;
        }

        v122 = *(v118 + 8 * v127);
        ++v126;
        if (v122)
        {
          goto LABEL_14;
        }
      }

      v296 = 0;
      v131 = 0;
    }

    else
    {
      v296 = 0;
      v131 = 0;
    }

    v138 = BYTE8(v322);
    v311 = v322;
    v315 = *(&v321 + 1);
    v139 = v320;
    sub_227D4CE58();
    v314 = sub_227D4CE28();
    v140 = sub_227CB7D30();
    v141 = v140[1];
    v316 = *v140;
    OUTLINED_FUNCTION_101_6();
    v289 = *v142;
    (v289)(v292, v298 + v295, v293);
    sub_227D4CE58();
    v310 = sub_227BA4D50();
    v307 = v143;
    v306 = sub_227BA4D50();
    v305 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v300 = v145;
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v145);
    v149 = sub_227D49F28();
    OUTLINED_FUNCTION_62_0(v149);
    v287 = *(v150 + 104);
    v287(v294[0], v324, v149);
    OUTLINED_FUNCTION_99();
    v288 = v149;
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v149);
    sub_227D4CE58();
    swift_bridgeObjectRetain_n();
    sub_227D4CE58();
    v294[1] = v139;
    v294[2] = v131;
    v290[1] = v138;
    sub_227D4A4C8();
    v282 = *v283;
    (*v283)(v273, v272, v313);
    OUTLINED_FUNCTION_129_4(&a18);
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v319[0] = v149;
    sub_227CC75B0(v273, v316, v141, v154, &qword_27D7EA0A0, &qword_227D634C8, MEMORY[0x277D0D308], MEMORY[0x277D0D308], v264, v265, v266, v267, v268, v269);

    v155 = v319[0];
    OUTLINED_FUNCTION_136_3();
    v157 = *(v156 + 8);
    v158 = sub_227BA4D50();
    if (!*(v157 + 16))
    {
      goto LABEL_22;
    }

LABEL_19:
    v160 = sub_227B2664C(v158, v159);
    if (v161)
    {
      v162 = *(*(v157 + 56) + 8 * v160);
      sub_227D4CE58();
    }

    else
    {
LABEL_22:
      v162 = MEMORY[0x277D84F90];
    }

    v163 = v299;
    v286 = *(v162 + 16);
    if (v286)
    {
      break;
    }

LABEL_48:

    sub_227BA4A10(&v320);

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_33_9();
    v235 = (*(v234 + 312))(v319);
    v237 = v236;
    v238 = *v236;
    swift_isUniquelyReferenced_nonNull_native();
    v318 = *v237;
    *v237 = 0x8000000000000000;
    v90 = v270;
    sub_227CC6F68(v155, v270);
    *v237 = v318;
    v87 = v279 + 1;
    v235(v319, 0);
    OUTLINED_FUNCTION_37_8(v290);
    v77 = v271;
    v239(v270, v271);
    v92 = v297;
  }

  OUTLINED_FUNCTION_136_3();
  v285 = *(v166 + 16);
  v284 = v162;
  while (v165 < *(v162 + 16))
  {
    v302 = v165;
    v303 = v164;
    v167 = v162 + v164;
    v168 = *(v162 + v164 + 40);
    v304[0] = *(v162 + v164 + 48);
    v169 = *(v162 + v164 + 56);
    v305 = *(v162 + v164 + 64);
    v170 = *(v162 + v164 + 72);
    v314 = *(v162 + v164 + 80);
    v171 = *(v162 + v164 + 88);
    v304[1] = *(v162 + v164 + 96);
    v172 = *(v162 + v164 + 104);
    v173 = *(v285 + 16);
    v315 = v172;
    v316 = v169;
    v310 = v168;
    v311 = v171;
    if (!v173)
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
LABEL_31:
      v181 = type metadata accessor for AchievementImage();
      v183 = v312;
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v184, v185, v186, v181);
      goto LABEL_34;
    }

    v174 = v155;
    v175 = *(v167 + 32);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v176 = v175;
    v155 = v174;
    v177 = sub_227B2664C(v176, v168);
    if ((v178 & 1) == 0)
    {
      goto LABEL_31;
    }

    v179 = *(*(*(v285 + 56) + 8 * v177) + 16);
    v180 = type metadata accessor for AchievementImage();
    v181 = v180;
    if (v179)
    {
      v182 = *(*(v180 - 8) + 80);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_40_7();
      v183 = v312;
      sub_227CCB9A8();
    }

    else
    {
      v183 = v312;
    }

    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v187, v188, v189, v190);
    v163 = v299;
LABEL_34:
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v300);
    sub_227CCBAFC();
    type metadata accessor for AchievementImage();
    OUTLINED_FUNCTION_10_16(v163);
    v307 = v155;
    v306 = v170;
    if (v194)
    {
      v195 = OUTLINED_FUNCTION_193();
      sub_227CCBB4C(v195, v196);
    }

    else
    {
      v197 = *v280;
      v198 = v163 + *(v181 + 20);
      v199 = OUTLINED_FUNCTION_129_4(v304);
      v200(v199);
      OUTLINED_FUNCTION_39_9();
      sub_227CCB950(v163, v201);
      sub_227D490C8();
      OUTLINED_FUNCTION_37_8(&v301);
      v202(v181, v281);
      v203 = v297;
      sub_227D4A768();
      v297 = v203;
      if (v203)
      {

        OUTLINED_FUNCTION_135_6();

        sub_227BA4A10(&v320);

        sub_227CCBB4C(v317, &qword_27D7E6800);
        sub_227CCBB4C(v183, &qword_27D7EA090);
        OUTLINED_FUNCTION_37_8(v290);
        v240(v270, v271);

        goto LABEL_51;
      }

      sub_227CCBB4C(v317, &qword_27D7E6800);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v204, v205, v206, v300);
      sub_227CCBA3C();
    }

    OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_101_6();
    v289();
    sub_227D4CE58();
    v301 = sub_227BA4D50();
    v207 = sub_227BA4D50();
    sub_227CCBAFC();
    v208 = v288;
    v287(v294[0], v324, v288);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v208);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v212 = v308;
    OUTLINED_FUNCTION_111_4();
    sub_227D4A4C8();
    OUTLINED_FUNCTION_37_8(&v309);
    v213(v309, v212, v313);
    OUTLINED_FUNCTION_129_4(&a11);
    swift_isUniquelyReferenced_nonNull_native();
    v319[0] = v207;
    v214 = v311;
    sub_227B2664C(v314, v311);
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v217, v218))
    {
      goto LABEL_67;
    }

    v219 = v215;
    v220 = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0A0, &qword_227D634C8);
    v221 = v319;
    if (sub_227D4D7C8())
    {
      v221 = v319[0];
      v222 = sub_227B2664C(v314, v214);
      if ((v220 & 1) != (v223 & 1))
      {
        goto LABEL_71;
      }

      v219 = v222;
    }

    v155 = v319[0];
    if (v220)
    {
      v224 = OUTLINED_FUNCTION_108_5();
      (v221[5])(v224, v309, v313);

      OUTLINED_FUNCTION_135_6();

      v225 = OUTLINED_FUNCTION_86_7();
      v226(v225);
      sub_227CCBB4C(v317, &qword_27D7E6800);
      sub_227CCBB4C(v312, &qword_27D7EA090);
    }

    else
    {
      OUTLINED_FUNCTION_13_18(v319[0] + 8 * (v219 >> 6));
      v227 = (*(v155 + 48) + 16 * v219);
      *v227 = v314;
      v227[1] = v214;
      v228 = OUTLINED_FUNCTION_108_5();
      v282(v228, v309, v313);

      OUTLINED_FUNCTION_135_6();

      v229 = OUTLINED_FUNCTION_86_7();
      v230(v229);
      sub_227CCBB4C(v317, &qword_27D7E6800);
      sub_227CCBB4C(v312, &qword_27D7EA090);
      v231 = *(v155 + 16);
      v232 = __OFADD__(v231, 1);
      v233 = v231 + 1;
      if (v232)
      {
        goto LABEL_69;
      }

      *(v155 + 16) = v233;
    }

    v165 = v302 + 1;
    v164 = v303 + 80;
    v163 = v299;
    v162 = v284;
    if (v286 == v302 + 1)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_227D4DAE8();
  __break(1u);
}

uint64_t sub_227CBA87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_227CCBB4C(a1, &qword_27D7E8390);
    sub_227CC4C28();

    return sub_227CCBB4C(v11, &qword_27D7E8390);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v18 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_227CC7910(v16, a2, a3, isUniquelyReferenced_nonNull_native, &unk_27D7EA088, &unk_227D634A8, &qword_27D7E6938, &qword_227D4E760, v20[0], *v4, v20[2], v20[3], v20[4], v20[5]);

    *v4 = v20[1];
  }

  return result;
}

uint64_t sub_227CBAA90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_227D4A298();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_227CCBB4C(a1, &qword_27D7E9EE0);
    sub_227CC4D54(a2, v9);
    sub_227CCB950(a2, type metadata accessor for AchievementPlayerKey);
    return sub_227CCBB4C(v9, &qword_27D7E9EE0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_227CC7E88(v14, a2);
    *v3 = v18;
    return sub_227CCB950(a2, type metadata accessor for AchievementPlayerKey);
  }
}

uint64_t sub_227CBAC78(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_227C76F0C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  return sub_227D4CE58();
}

uint64_t sub_227CBACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_227B2664C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return sub_227D4CE58();
}

uint64_t sub_227CBAD18(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227CC4A1C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 56) + 24 * v3;
  result = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 17);
  LODWORD(v5) = *(v5 + 18);
  return result;
}

uint64_t sub_227CBADC8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227CC4A1C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  return sub_227D4CE58();
}

uint64_t sub_227CBAE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_227B2664C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = OUTLINED_FUNCTION_253();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_62_0(v12);
    (*(v13 + 16))(a4, v9 + *(v13 + 72) * v8, v12);
    OUTLINED_FUNCTION_99();
    v17 = v12;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_253();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_71_0();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_227CBAEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = a2(0);
  if (v2)
  {
    v4 = *(*(v3 - 8) + 80);
    OUTLINED_FUNCTION_19();
    sub_227CCB9A8();
  }

  OUTLINED_FUNCTION_51_10();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_227CBAF98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F80, &qword_227D63238);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  result = sub_227BB78B0(a1);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v11 = *(v4 + 48);
    *a2 = sub_227CCB1D4(&v7[v11], result, v9, 0, a1);
    a2[1] = v12;
    v13 = *(v4 + 48);
    v14 = sub_227D4A4D8();
    (*(*(v14 - 8) + 32))(a2 + v13, &v7[v11], v14);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

uint64_t sub_227CBB10C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_227D4A0E8();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        v21 = *(v18 + 16);
        sub_227CC565C();
        v20 = v35;
      }

      a3 = v16;
      v22 = *(v20 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v20 + 24) >> 1)
      {
        v29 = v22 + 1;
        v25 = v22;
        sub_227CC565C();
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      *(v20 + 16) = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227CBB3D0(uint64_t a1)
{
  v367 = a1;
  v374 = sub_227D49188();
  v3 = OUTLINED_FUNCTION_9(v374);
  v432 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v373 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA030, &unk_227D63440);
  v10 = OUTLINED_FUNCTION_5(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v407 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_314();
  v423 = v15;
  OUTLINED_FUNCTION_191_2();
  v399 = sub_227D4A4A8();
  v16 = OUTLINED_FUNCTION_9(v399);
  v431 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_3();
  v384 = v20;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_314();
  v351 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  v24 = OUTLINED_FUNCTION_5(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_3();
  v383 = v27;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_314();
  v350 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  v31 = OUTLINED_FUNCTION_5(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  v382 = v34;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_266();
  v372 = v36;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_266();
  v430 = v38;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_314();
  v349 = v40;
  OUTLINED_FUNCTION_191_2();
  v401 = sub_227D4A4F8();
  v41 = OUTLINED_FUNCTION_9(v401);
  v385 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  v381 = v45;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_266();
  v421 = v47;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_266();
  v348 = v49;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_314();
  v347 = v51;
  OUTLINED_FUNCTION_191_2();
  v344 = sub_227D492A8();
  v52 = OUTLINED_FUNCTION_9(v344);
  v429 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_3();
  v343 = v56;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_266();
  v342 = v58;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_266();
  v341 = v60;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_314();
  v358 = v62;
  OUTLINED_FUNCTION_191_2();
  v400 = sub_227D49FA8();
  v63 = OUTLINED_FUNCTION_9(v400);
  v428 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_3();
  v380 = v67;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_266();
  v346 = v69;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v70);
  v72 = &v337 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA038, &qword_227D63450);
  v74 = OUTLINED_FUNCTION_5(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_2_3();
  v379 = v77;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_266();
  v345 = v79;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_266();
  v340 = v81;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_314();
  v402 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_26_0();
  v354 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v90 = OUTLINED_FUNCTION_9(v89);
  v92 = v91;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_2_3();
  v353 = v95;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_437();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v97 + 424))();
  OUTLINED_FUNCTION_31_6();
  v98 = v2;
  sub_227CCB9FC(v99, &qword_27D7E6938);
  OUTLINED_FUNCTION_201();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v100 + 448))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA040, &qword_227D63458);
  OUTLINED_FUNCTION_201();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v101 + 472))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA048, &qword_227D63460);
  v368 = v89;
  v102 = v367;
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  v104 = (*(v103 + 496))();
  v105 = 0;
  v106 = *(v102 + 112);
  v356 = v106 + 32;
  v366 = (v92 + 16);
  v365 = (v92 + 8);
  v107 = v1;
  v357 = *(v106 + 16);
  v363 = (v428 + 104);
  v339 = (v429 + 16);
  v338 = (v429 + 8);
  v362 = (v428 + 8);
  v397 = (v431 + 104);
  v398 = (v428 + 16);
  v355 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v376 = (v385 + 32);
  v371 = (v432 + 2);
  v352 = *MEMORY[0x277D0CFE8];
  v378 = (v385 + 16);
  HIDWORD(v337) = *MEMORY[0x277D0CFF0];
  v369 = v385 + 40;
  v370 = (v432 + 1);
  v377 = v385 + 8;
  v396 = *MEMORY[0x277D0CEE8];
  v395 = *MEMORY[0x277D0D300];
  v394 = *MEMORY[0x277D0D2F8];
  v359 = v1;
  v361 = v98;
  v403 = v72;
  while (1)
  {
    if (v105 == v357)
    {
      v334 = (*(*v107 + 512))(v104);

      v335 = sub_227CC5184(v334, v107, sub_227CC622C, sub_227CC622C);

      OUTLINED_FUNCTION_139_3();
      return (*(v336 + 520))(v335);
    }

    v360 = v105;
    memcpy(v435, (v356 + 176 * v105), 0xB0uLL);
    sub_227BA9A88(v435, v434);
    sub_227BAAA78();
    v108 = v408;
    sub_227D4A608();
    if (v108)
    {

      return sub_227BA9AC0(v435);
    }

    v408 = 0;

    v109 = sub_227BAAA78();
    v111 = v110;
    v112 = v354;
    v113 = v368;
    v429 = *v366;
    (v429)(v354, v98, v368);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v113);
    OUTLINED_FUNCTION_139_3();
    v118 = (*(v117 + 432))(v434);
    sub_227CBA87C(v112, v109, v111);
    v118(v434, 0);
    v119 = sub_227CBAC78(7, *(v102 + 104));
    if (v119)
    {
      v120 = v119;
      v122 = v119 + 64;
      v121 = *(v119 + 64);
      v123 = *(v119 + 32);
      OUTLINED_FUNCTION_18_15();
      v126 = v125 & v124;
      v128 = (v127 + 63) >> 6;
      v129 = sub_227D4CE58();
      v130 = 0;
      v431 = v129;
      if (!v126)
      {
        goto LABEL_7;
      }

      while (1)
      {
        v131 = v130;
LABEL_10:
        v132 = __clz(__rbit64(v126)) | (v131 << 6);
        v133 = *(v120 + 56);
        v134 = (*(v120 + 48) + 16 * v132);
        v135 = v134[1];
        v405 = *v134;
        v136 = *(v133 + 8 * v132);
        sub_227D4CE58();
        sub_227D4CE58();
        v137 = sub_227BAAA78();
        v432 = &v337;
        v434[0] = v137;
        v434[1] = v138;
        MEMORY[0x28223BE20](v137);
        OUTLINED_FUNCTION_109();
        *(v139 - 16) = v434;
        v140 = v408;
        v142 = sub_227BB7050(sub_227BB7AF0, v141, v136);
        v408 = v140;

        if (v142)
        {
          break;
        }

        v126 &= v126 - 1;

        v130 = v131;
        v120 = v431;
        if (!v126)
        {
LABEL_7:
          while (1)
          {
            v131 = v130 + 1;
            if (__OFADD__(v130, 1))
            {
              break;
            }

            if (v131 >= v128)
            {

              v405 = 0;
              v425 = 0;
              goto LABEL_14;
            }

            v126 = *(v122 + 8 * v131);
            ++v130;
            if (v126)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

      v425 = v135;

LABEL_14:
      v98 = v361;
    }

    else
    {
      v405 = 0;
      v425 = 0;
    }

    v143 = v435[0];
    v144 = v353;
    (v429)(v353, v98, v368);
    v404 = v143;
    sub_227D4CE58();
    sub_227D4CE58();
    v145 = OUTLINED_FUNCTION_323();
    v147 = sub_227CBD0A8(v145, v146);
    v149 = (v148 & 1) != 0 ? 0 : v147;
    sub_227D4CE58();
    v150 = OUTLINED_FUNCTION_87_1();
    v152 = sub_227CBD0A8(v150, v151);
    v154 = (v153 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v152;
    v432 = v435[5];
    v155 = sub_227BAACF0();
    v156 = sub_227BAAE3C();
    OUTLINED_FUNCTION_139_3();
    v158 = (*(v157 + 456))(v434);
    v160 = v159;
    v161 = *v159;
    swift_isUniquelyReferenced_nonNull_native();
    v433 = *v160;
    v162 = (v156 & 1) != 0 ? 0x10000 : 0;
    v163 = (v155 & 1) != 0 ? 256 : 0;
    sub_227CC7700(v149, v154, v162 | v163, v144);
    *v160 = v433;
    v364 = *v365;
    v364(v144, v368);
    v158(v434, 0);
    v164 = sub_227D4A5D8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v165, v166, v167, v164);
    v168 = *v363;
    v169 = v403;
    v170 = v400;
    (*v363)(v403, v352, v400);
    if (v432)
    {
      break;
    }

LABEL_32:
    v429 = v435[8];
    v431 = sub_227D4CE28();
    v188 = sub_227CB7D30();
    v190 = *v188;
    v189 = *(v188 + 1);
    v432 = v190;
    v428 = v189;
    sub_227D4CE58();
    v427 = sub_227BAAA78();
    v426 = v191;
    v424 = sub_227BAAA78();
    v422 = v192;
    sub_227CCBAFC();
    v393 = *v398;
    v393(v346, v169, v170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v409 = v193;
    __swift_storeEnumTagSinglePayload(v194, v195, v196, v193);
    v197 = sub_227D49F28();
    OUTLINED_FUNCTION_62_0(v197);
    v199 = *(v198 + 104);
    v390 = v198 + 104;
    v391 = v199;
    v199(v350, v396, v197);
    OUTLINED_FUNCTION_99();
    v392 = v197;
    __swift_storeEnumTagSinglePayload(v200, v201, v202, v197);
    sub_227D4CE58();
    v203 = sub_227BAAFA8();
    v204 = *v397;
    if (v203)
    {
      v205 = v394;
    }

    else
    {
      v205 = v395;
    }

    v389 = *v397;
    v204(v351, v205, v399);
    sub_227D4CE58();
    swift_bridgeObjectRetain_n();
    sub_227D4A4E8();
    v206 = *v376;
    v207 = v348;
    v208 = OUTLINED_FUNCTION_336();
    v375 = v209;
    (v209)(v208);
    v210 = v431;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v434[0] = v210;
    sub_227CC75B0(v207, v432, v428, isUniquelyReferenced_nonNull_native, &qword_27D7EA050, &qword_227D63468, MEMORY[0x277D0D320], MEMORY[0x277D0D320], v337, v338, v339, v340, v341, v342);

    v424 = v434[0];
    v212 = MEMORY[0x277D84F90];
    v213 = sub_227D4CE28();
    v214 = v367;
    v215 = *(v367 + 120);
    v216 = sub_227BAAA78();
    v218 = sub_227CBACC8(v216, v217, v215);

    if (v218)
    {
      v219 = v218;
    }

    else
    {
      v219 = v212;
    }

    v388 = *(v219 + 16);
    if (v388)
    {
      v220 = 0;
      v221 = 0;
      v222 = BYTE1(v435[1]);
      v223 = *(v214 + 128);
      if (BYTE1(v435[1]) == 19)
      {
        v222 = 0;
      }

      v386 = v222;
      v224 = v407;
      v387 = v219;
      v406 = v223;
      while (1)
      {
        if (v221 >= *(v219 + 16))
        {
          goto LABEL_82;
        }

        v413 = v221;
        v414 = v220;
        v225 = (v219 + v220);
        v226 = *(v219 + v220 + 40);
        v418 = *(v219 + v220 + 48);
        v227 = *(v219 + v220 + 56);
        v420 = *(v219 + v220 + 64);
        v228 = *(v219 + v220 + 80);
        v415 = *(v219 + v220 + 72);
        v230 = *(v219 + v220 + 88);
        v229 = v225[12];
        v416 = v230;
        v231 = v225[14];
        v431 = v225[13];
        v232 = v225[16];
        v419 = v225[15];
        v233 = *(v223 + 16);
        v429 = v227;
        v426 = v232;
        v432 = v231;
        v422 = v226;
        v428 = v228;
        v427 = v229;
        if (!v233)
        {
          break;
        }

        v234 = v213;
        v235 = v225[4];
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        v236 = v235;
        v213 = v234;
        v237 = sub_227B2664C(v236, v226);
        if ((v238 & 1) == 0)
        {
          goto LABEL_48;
        }

        v239 = *(*(*(v406 + 56) + 8 * v237) + 16);
        v240 = type metadata accessor for LeaderboardImage();
        v241 = v240;
        v242 = v423;
        if (v239)
        {
          v243 = *(*(v240 - 8) + 80);
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_49_6();
          sub_227CCB9A8();
        }

        OUTLINED_FUNCTION_51_10();
        __swift_storeEnumTagSinglePayload(v247, v248, v249, v250);
        v224 = v407;
LABEL_50:
        OUTLINED_FUNCTION_71_0();
        __swift_storeEnumTagSinglePayload(v251, v252, v253, v409);
        OUTLINED_FUNCTION_82();
        sub_227CCBAFC();
        type metadata accessor for LeaderboardImage();
        OUTLINED_FUNCTION_10_16(v224);
        v417 = v213;
        if (v254)
        {
          sub_227CCBB4C(v224, &qword_27D7EA030);
        }

        else
        {
          v255 = v224 + *(v241 + 20);
          v256 = v373;
          v257 = v224;
          v258 = v374;
          (*v371)(v373, v255, v374);
          OUTLINED_FUNCTION_48_8();
          sub_227CCB950(v257, v259);
          sub_227D490C8();
          (*v370)(v256, v258);
          v260 = v408;
          sub_227D4A768();
          if (v260)
          {

            sub_227BA9AC0(v435);

            sub_227CCBB4C(v430, &qword_27D7E6800);
            sub_227CCBB4C(v242, &qword_27D7EA030);
            v331 = OUTLINED_FUNCTION_116_5();
            v332(v331);
            sub_227CCBB4C(v402, &qword_27D7EA038);
            v364(v361, v368);
          }

          v408 = 0;
          sub_227CCBB4C(v430, &qword_27D7E6800);
          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v261, v262, v263, v409);
          OUTLINED_FUNCTION_236();
          sub_227CCBA3C();
        }

        v412 = sub_227BAAA78();
        v411 = v264;
        v410 = sub_227BAAA78();
        sub_227CCBAFC();
        v393(v380, v403, v400);
        sub_227CCBAFC();
        v265 = v392;
        v391(v383, v396, v392);
        OUTLINED_FUNCTION_99();
        __swift_storeEnumTagSinglePayload(v266, v267, v268, v265);
        sub_227D4CE58();
        if (sub_227BAAFA8())
        {
          v269 = v394;
        }

        else
        {
          v269 = v395;
        }

        v389(v384, v269, v399);
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        v270 = v421;
        sub_227D4A4E8();
        v271 = v381;
        v272 = v401;
        (*v378)(v381, v270, v401);
        sub_227D4CE58();
        sub_227D4CE58();
        v273 = v424;
        swift_isUniquelyReferenced_nonNull_native();
        v434[0] = v273;
        sub_227B2664C(v431, v432);
        OUTLINED_FUNCTION_5_19();
        if (__OFADD__(v276, v277))
        {
          goto LABEL_83;
        }

        v278 = v274;
        v279 = v275;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA050, &qword_227D63468);
        if (sub_227D4D7C8())
        {
          v280 = sub_227B2664C(v431, v432);
          v282 = v417;
          if ((v279 & 1) != (v281 & 1))
          {
            goto LABEL_89;
          }

          v278 = v280;
        }

        else
        {
          v282 = v417;
        }

        v283 = v434[0];
        if (v279)
        {
          (*(v385 + 40))(*(v434[0] + 56) + *(v385 + 72) * v278, v271, v272);
          v284 = v432;
        }

        else
        {
          OUTLINED_FUNCTION_13_18(v434[0] + 8 * (v278 >> 6));
          v285 = (v283[6] + 16 * v278);
          v284 = v432;
          *v285 = v431;
          v285[1] = v284;
          v375(v283[7] + *(v385 + 72) * v278, v271, v272);
          v286 = v283[2];
          v287 = __OFADD__(v286, 1);
          v288 = v286 + 1;
          if (v287)
          {
            goto LABEL_85;
          }

          v283[2] = v288;
          sub_227D4CE58();
        }

        swift_isUniquelyReferenced_nonNull_native();
        v434[0] = v282;
        sub_227B2664C(v431, v284);
        OUTLINED_FUNCTION_5_19();
        if (__OFADD__(v291, v292))
        {
          goto LABEL_84;
        }

        v293 = v289;
        v294 = v290;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA058, &qword_227D63470);
        v295 = sub_227D4D7C8();
        v424 = v283;
        if (v295)
        {
          v296 = sub_227B2664C(v431, v432);
          if ((v294 & 1) != (v297 & 1))
          {
            goto LABEL_89;
          }

          v293 = v296;
        }

        v213 = v434[0];
        if (v294)
        {
          v298 = *(v434[0] + 56) + 40 * v293;
          v299 = *(v298 + 16);
          v300 = *(v298 + 32);
          OUTLINED_FUNCTION_128_4(v298);
          v301 = v427;
          *(v302 + 24) = v303;
          *(v302 + 32) = v301;

          v304 = OUTLINED_FUNCTION_124_3();
          v305(v304);
          sub_227CCBB4C(v430, &qword_27D7E6800);
          sub_227CCBB4C(v423, &qword_27D7EA030);
        }

        else
        {
          OUTLINED_FUNCTION_13_18(v434[0] + 8 * (v293 >> 6));
          v306 = (v213[6] + 16 * v293);
          v307 = v432;
          *v306 = v431;
          v306[1] = v307;
          OUTLINED_FUNCTION_128_4(v213[7] + 40 * v293);
          v308 = v427;
          *(v309 + 24) = v310;
          *(v309 + 32) = v308;

          v311 = OUTLINED_FUNCTION_124_3();
          v312(v311);
          sub_227CCBB4C(v430, &qword_27D7E6800);
          sub_227CCBB4C(v423, &qword_27D7EA030);
          v313 = v213[2];
          v287 = __OFADD__(v313, 1);
          v314 = v313 + 1;
          if (v287)
          {
            goto LABEL_86;
          }

          v213[2] = v314;
        }

        v221 = v413 + 1;
        v220 = v414 + 104;
        v219 = v387;
        v224 = v407;
        v223 = v406;
        if (v388 == v413 + 1)
        {
          goto LABEL_76;
        }
      }

      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
LABEL_48:
      v241 = type metadata accessor for LeaderboardImage();
      v242 = v423;
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v244, v245, v246, v241);
      goto LABEL_50;
    }

LABEL_76:
    v315 = v360 + 1;

    sub_227BA9AC0(v435);

    swift_bridgeObjectRelease_n();
    v316 = v359;
    v317 = (*(*v359 + 480))(v434);
    v319 = *v318;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_134_3();
    v433 = v320;
    v321 = v213;
    v107 = v316;
    v98 = v361;
    sub_227CC7398(v424, v361);
    v322 = OUTLINED_FUNCTION_130_3();
    v317(v322);
    OUTLINED_FUNCTION_139_3();
    v324 = (*(v323 + 504))(v434);
    v326 = *v325;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_134_3();
    v433 = v327;
    sub_227CC7180(v321, v98);
    v328 = OUTLINED_FUNCTION_130_3();
    v324(v328);
    v105 = v315;
    v329 = OUTLINED_FUNCTION_116_5();
    v330(v329);
    sub_227CCBB4C(v402, &qword_27D7EA038);
    v104 = (v364)(v98, v368);
    v102 = v367;
  }

  sub_227BD4434(v358);
  sub_227BD395C();
  v172 = v171;
  v173 = sub_227BD3BC0();
  v174 = sub_227BD4B18(v172, v173);
  if ((v174 * 60) >> 64 != (60 * v174) >> 63)
  {
    goto LABEL_87;
  }

  v175 = sub_227BD3F28();
  v176 = sub_227BD40D4();
  v177 = sub_227BD4B18(v175, v176);
  if ((v177 * 60) >> 64 == (60 * v177) >> 63)
  {
    v431 = v164;
    v178 = v341;
    v179 = v358;
    sub_227D491E8();
    v180 = *v339;
    v432 = v168;
    v181 = v344;
    v180(v342, v179, v344);
    v180(v343, v178, v181);
    OUTLINED_FUNCTION_200();
    sub_227D4A5C8();
    v182 = *v338;
    (*v338)(v178, v181);
    v183 = v179;
    v184 = v402;
    v182(v183, v181);
    v169 = v403;
    (*v362)(v403, v170);
    sub_227CCBB4C(v184, &qword_27D7EA038);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v431);
    sub_227CCBA3C();
    (v432)(v169, HIDWORD(v337), v170);
    goto LABEL_32;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227CBD0A8(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_227D4D6C8();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_227BD2F40(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_227CBD3D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_227CBD3E0()
{
  OUTLINED_FUNCTION_351();
  v287 = v0;
  v265 = v1;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v2 = OUTLINED_FUNCTION_9(v291);
  v293 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v7);
  v272 = sub_227D49188();
  v8 = OUTLINED_FUNCTION_9(v272);
  v308 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_17(v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE8, &unk_227D63400);
  v15 = OUTLINED_FUNCTION_5(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_314();
  v292 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_266();
  v306 = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v27);
  v304 = sub_227D4A548();
  v28 = OUTLINED_FUNCTION_9(v304);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_3();
  v303 = v33;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_266();
  v302 = v35;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F98, qword_227D63258);
  v40 = OUTLINED_FUNCTION_5(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v46 = OUTLINED_FUNCTION_9(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v52);
  v54 = &v252 - v53;
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v55 + 544))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FF0, &qword_227D63410);
  OUTLINED_FUNCTION_31_6();
  sub_227CCB9FC(v56, &qword_27D7E83F8);
  OUTLINED_FUNCTION_278();
  sub_227D4CE28();
  OUTLINED_FUNCTION_114_5();
  (*(v57 + 568))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
  OUTLINED_FUNCTION_85_8();
  v264 = v45;
  sub_227D4CE28();
  OUTLINED_FUNCTION_114_5();
  (*(v58 + 592))();
  v59 = 0;
  v60 = *(v265 + 136);
  v260 = v60 + 32;
  v263 = (v48 + 16);
  v61 = *(v60 + 16);
  v252 = v48 + 32;
  v274 = (v30 + 32);
  v259 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v270 = (v308 + 16);
  v269 = v308 + 8;
  v281 = v30 + 16;
  v279 = v30 + 8;
  v280 = v30;
  v268 = v30 + 40;
  v266 = v293 + 16;
  v277 = v293 + 32;
  v62 = v54;
  v256 = (v48 + 8);
  v276 = v54;
  for (i = v61; ; v61 = i)
  {
    if (v59 == v61)
    {
      goto LABEL_85;
    }

    v261 = v59;
    v63 = (v260 + 32 * v59);
    v65 = *v63;
    v64 = v63[1];
    v67 = v63[2];
    v66 = v63[3];
    sub_227D4CE58();
    sub_227D4CE58();
    v68 = OUTLINED_FUNCTION_236();
    sub_227BACD14(v68, v69, v67);
    v70 = v62;
    v72 = v71;
    v73 = v287;
    sub_227D4A618();
    if (v73)
    {
      v307 = v72;

LABEL_84:

LABEL_85:
      OUTLINED_FUNCTION_352();
      return;
    }

    v305 = v65;
    v288 = v64;
    v289 = v67;
    v290 = v66;
    sub_227BACD14(v65, v64, v67);
    v75 = v74;
    v76 = v257;
    v77 = v264;
    v262 = *v263;
    v262(v257, v70, v264);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
    OUTLINED_FUNCTION_114_5();
    v82 = v77;
    v83 = (*(v81 + 552))(v309);
    v85 = v84;
    OUTLINED_FUNCTION_10_16(v76);
    v287 = 0;
    if (v86)
    {
      sub_227CCBB4C(v76, &qword_27D7E9F98);
      v87 = v254;
      sub_227CC4C28();

      sub_227CCBB4C(v87, &qword_27D7E9F98);
    }

    else
    {
      OUTLINED_FUNCTION_37_8(&v282);
      v88(v253, v76, v82);
      v89 = *v85;
      swift_isUniquelyReferenced_nonNull_native();
      v311 = *v85;
      v90 = OUTLINED_FUNCTION_278();
      sub_227CC7910(v90, v91, v75, v92, &unk_27D7EA008, &unk_227D63420, &qword_27D7E83F8, &unk_227D61E50, v252, v253, v254, i, v256, v257);
      *v85 = v311;
    }

    v93 = OUTLINED_FUNCTION_91_7();
    v83(v93);
    v301 = sub_227D4CE28();
    v94 = sub_227CB7D30();
    v95 = *v94;
    v307 = *(v94 + 1);
    v308 = v95;
    sub_227D4CE58();
    v96 = v305;
    v97 = v289;
    v300 = sub_227BACD14(v305, v288, v289);
    v98 = OUTLINED_FUNCTION_236();
    sub_227BACD14(v98, v99, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v294 = v100;
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
    sub_227D4CE58();
    sub_227D4A538();
    v104 = *v274;
    v105 = v258;
    v106 = OUTLINED_FUNCTION_58();
    v273 = v107;
    (v107)(v106);
    v108 = v301;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v108;
    sub_227CC75B0(v105, v308, v307, isUniquelyReferenced_nonNull_native, &qword_27D7EA000, &qword_227D63418, MEMORY[0x277D0D458], MEMORY[0x277D0D458], v252, v253, v254, i, v256, v257);

    v307 = v309[0];
    OUTLINED_FUNCTION_101_6();
    v111 = *(v110 + 144);
    v112 = OUTLINED_FUNCTION_236();
    v113 = v289;
    v115 = sub_227BACD14(v112, v114, v289);
    if (*(v111 + 16))
    {
      v117 = sub_227B2664C(v115, v116);
      if (v118)
      {
        v119 = *(*(v111 + 56) + 8 * v117);
        sub_227D4CE58();
      }

      else
      {
        v119 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v119 = MEMORY[0x277D84F90];
    }

    v285 = *(v119 + 16);
    if (v285)
    {
      break;
    }

LABEL_37:

    OUTLINED_FUNCTION_80_0();
    v184 = *(v183 + 576);
    v185 = v307;
    sub_227D4CE58();
    v186 = v184(v309);
    v187 = v113;
    v189 = v188;
    v190 = *v188;
    swift_isUniquelyReferenced_nonNull_native();
    v312 = *v189;
    *v189 = 0x8000000000000000;
    v191 = v185;
    v62 = v276;
    sub_227CC7C70(v191, v276);
    *v189 = v312;
    v192 = OUTLINED_FUNCTION_91_7();
    v186(v192);
    OUTLINED_FUNCTION_101_6();
    v194 = *(v193 + 160);
    v195 = sub_227BACD14(v96, v288, v187);
    v197 = v196;

    if (*(v194 + 16))
    {
      v198 = sub_227B2664C(v195, v197);
      v199 = v262;
      if (v200)
      {
        v201 = *(*(v194 + 56) + 8 * v198);
        sub_227D4CE58();
      }

      else
      {
        v201 = 0;
      }

      v202 = v275;
    }

    else
    {
      v201 = 0;
      v202 = v275;
      v199 = v262;
    }

    v203 = v307;

    v199(v202, v62, v264);
    if (v201)
    {
      v204 = 0;
      v296 = *(v201 + 16);
      v297 = v201;
      v295 = v201 + 32;
      v205 = MEMORY[0x277D84F90];
      v307 = v203;
      while (1)
      {
LABEL_45:
        if (v204 == v296)
        {

          goto LABEL_79;
        }

        if (v204 >= *(v297 + 16))
        {
          goto LABEL_91;
        }

        v308 = v204;
        v206 = v295 + 24 * v204;
        v207 = *(v206 + 16);
        v300 = *(v206 + 8);
        v301 = v205;
        sub_227D4CE58();
        sub_227D4CE58();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          OUTLINED_FUNCTION_71_7();
          swift_task_reportUnexpectedExecutor();
        }

        v208 = 0;
        ++v308;
        v209 = *(v207 + 16);
        v210 = v207 + 40;
        v305 = MEMORY[0x277D84F90];
        v299 = v207 + 40;
LABEL_50:
        v211 = (v210 + 16 * v208);
        while (v209 != v208)
        {
          if (v208 >= *(v207 + 16))
          {
            __break(1u);
            goto LABEL_85;
          }

          v212 = *(v211 - 1);
          v213 = *v211;
          sub_227D4CE58();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            OUTLINED_FUNCTION_71_7();
            swift_task_reportUnexpectedExecutor();
          }

          OUTLINED_FUNCTION_80_0();
          v215 = (*(v214 + 416))();
          if (*(v215 + 16))
          {
            v216 = sub_227B2664C(v212, v213);
            if (v217)
            {
              v218 = *(v215 + 56);
              v219 = v293;
              v298 = *(v293 + 72);
              v220 = v267;
              v221 = v291;
              (*(v293 + 16))(v267, v218 + v298 * v216, v291);

              v222 = *(v219 + 32);
              v222(v278, v220, v221);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v305 = sub_227CC8ACC(0, *(v305 + 16) + 1, 1, v305);
              }

              v210 = v299;
              v224 = *(v305 + 16);
              v223 = *(v305 + 24);
              if (v224 >= v223 >> 1)
              {
                v228 = OUTLINED_FUNCTION_22_12(v223);
                v305 = sub_227CC8ACC(v228, v229, v230, v305);
              }

              ++v208;
              *(v305 + 16) = v224 + 1;
              v225 = *(v293 + 80);
              OUTLINED_FUNCTION_19();
              v222(v227 + v226 + v224 * v298, v278, v291);
              goto LABEL_50;
            }
          }

          v211 += 2;
          ++v208;
        }

        v231 = v305;
        v232 = *(v305 + 16);
        v205 = v301;
        v233 = *(v301 + 16);
        v234 = v233 + v232;
        if (__OFADD__(v233, v232))
        {
          goto LABEL_92;
        }

        v235 = swift_isUniquelyReferenced_nonNull_native();
        if ((v235 & 1) == 0 || v234 > *(v205 + 24) >> 1)
        {
          if (v233 <= v234)
          {
            v236 = v233 + v232;
          }

          else
          {
            v236 = v233;
          }

          v205 = sub_227CC8ACC(v235, v236, 1, v205);
        }

        v62 = v276;
        v202 = v275;
        v204 = v308;
        if (!*(v231 + 16))
        {
          break;
        }

        if ((*(v205 + 24) >> 1) - *(v205 + 16) < v232)
        {
          goto LABEL_95;
        }

        v237 = (*(v293 + 80) + 32) & ~*(v293 + 80);
        v238 = *(v293 + 72);
        swift_arrayInitWithCopy();

        if (v232)
        {
          v239 = *(v205 + 16);
          v181 = __OFADD__(v239, v232);
          v240 = v239 + v232;
          if (v181)
          {
            goto LABEL_96;
          }

          *(v205 + 16) = v240;
        }
      }

      if (!v232)
      {
        goto LABEL_45;
      }

      goto LABEL_93;
    }

    v205 = 0;
LABEL_79:
    OUTLINED_FUNCTION_80_0();
    v243 = (*(v241 + 600))(v309);
    v244 = v242;
    if (v205)
    {
      v245 = *v242;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_134_3();
      v313 = v246;
      *v244 = 0x8000000000000000;
      sub_227CC7A58(v205, v202);
      *v244 = v313;
    }

    else
    {
      sub_227CC4AAC();
    }

    v59 = v261 + 1;
    v247 = *v256;
    v248 = v202;
    v249 = v264;
    (*v256)(v248, v264);
    v250 = OUTLINED_FUNCTION_91_7();
    v243(v250);
    v247(v62, v249);
  }

  OUTLINED_FUNCTION_101_6();
  v284 = *(v121 + 152);
  v122 = (v119 + 72);
  v283 = v119;
  while (v120 < *(v119 + 16))
  {
    v297 = v120;
    v124 = *(v122 - 4);
    v123 = *(v122 - 3);
    v125 = *(v122 - 2);
    v299 = *(v122 - 1);
    v300 = v123;
    v126 = *v122;
    v127 = v284;
    v128 = *(v284 + 16);
    v296 = v122;
    if (!v128)
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
LABEL_20:
      v134 = type metadata accessor for LeaderboardSetImage();
      goto LABEL_21;
    }

    v129 = *(v122 - 5);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v130 = sub_227B2664C(v129, v124);
    if ((v131 & 1) == 0)
    {
      goto LABEL_20;
    }

    v132 = *(*(*(v127 + 56) + 8 * v130) + 16);
    v133 = type metadata accessor for LeaderboardSetImage();
    v134 = v133;
    if (v132)
    {
      v135 = *(*(v133 - 8) + 80);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_46_7();
      sub_227CCB9A8();
      goto LABEL_22;
    }

LABEL_21:
    OUTLINED_FUNCTION_115_1();
LABEL_22:
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v294);
    v143 = v282;
    sub_227CCBAFC();
    type metadata accessor for LeaderboardSetImage();
    v144 = OUTLINED_FUNCTION_115_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v144, v145, v134);
    v298 = v124;
    v301 = v126;
    v308 = v125;
    if (EnumTagSinglePayload == 1)
    {
      sub_227CCBB4C(v143, &qword_27D7E9FE8);
    }

    else
    {
      (*v270)(v271, v143 + *(v134 + 20), v272);
      OUTLINED_FUNCTION_45_8();
      sub_227CCB950(v143, v147);
      sub_227D490C8();
      OUTLINED_FUNCTION_105_6();
      OUTLINED_FUNCTION_37_8(&v300);
      v148 = OUTLINED_FUNCTION_200();
      v149(v148);
      OUTLINED_FUNCTION_58();
      v150 = v287;
      sub_227D4A768();
      if (v150)
      {

        sub_227CCBB4C(v306, &qword_27D7E6800);
        sub_227CCBB4C(v292, &qword_27D7E9FE8);
        OUTLINED_FUNCTION_37_8(&v286);
        v251(v276, v264);
        goto LABEL_84;
      }

      v287 = 0;
      sub_227CCBB4C(v306, &qword_27D7E6800);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v151, v152, v153, v294);
      OUTLINED_FUNCTION_173();
      sub_227CCBA3C();
    }

    v113 = v289;
    v295 = sub_227BACD14(v305, v288, v289);
    v154 = OUTLINED_FUNCTION_278();
    sub_227BACD14(v154, v155, v113);
    sub_227CCBAFC();
    sub_227D4CE58();
    v156 = v302;
    sub_227D4A538();
    OUTLINED_FUNCTION_37_8(&v310);
    v157(v303, v156, v304);
    v158 = v307;
    swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v158;
    v159 = v300;
    sub_227B2664C(v300, v308);
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v162, v163))
    {
      goto LABEL_90;
    }

    v164 = v160;
    v165 = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA000, &qword_227D63418);
    if (sub_227D4D7C8())
    {
      v166 = sub_227B2664C(v159, v308);
      if ((v165 & 1) != (v167 & 1))
      {
        goto LABEL_97;
      }

      v164 = v166;
    }

    v307 = v309[0];
    if (v165)
    {
      v168 = OUTLINED_FUNCTION_103_4();
      (*(v159 + 40))(v168, v303, v304);

      v169 = *(v159 + 8);
      v170 = OUTLINED_FUNCTION_132_5();
      v171(v170);
      sub_227CCBB4C(v306, &qword_27D7E6800);
      sub_227CCBB4C(v292, &qword_27D7E9FE8);
    }

    else
    {
      OUTLINED_FUNCTION_13_18(v309[0] + 8 * (v164 >> 6));
      v173 = (*(v172 + 48) + 16 * v164);
      v174 = v308;
      *v173 = v159;
      v173[1] = v174;
      v175 = OUTLINED_FUNCTION_103_4();
      v273(v175, v303, v304);

      v176 = *(v159 + 8);
      v177 = v307;
      v178 = OUTLINED_FUNCTION_132_5();
      v179(v178);
      sub_227CCBB4C(v306, &qword_27D7E6800);
      sub_227CCBB4C(v292, &qword_27D7E9FE8);
      v180 = *(v177 + 16);
      v181 = __OFADD__(v180, 1);
      v182 = v180 + 1;
      if (v181)
      {
        goto LABEL_94;
      }

      *(v177 + 16) = v182;
    }

    v120 = v297 + 1;
    v122 = v296 + 6;
    v96 = v305;
    v119 = v283;
    if (v285 == v297 + 1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  sub_227D4DAE8();
  __break(1u);
}

uint64_t sub_227CBEA90(uint64_t a1, uint64_t *a2)
{
  v49 = a2;
  v45 = sub_227D4A0E8();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  v16 = 0;
  v17 = *(a1 + 16);
  v42 = a1;
  v43 = v17;
  v52 = v18 + 16;
  v53 = v18;
  v54 = (v18 + 8);
  v39 = (v3 + 16);
  v50 = MEMORY[0x277D84F90];
  v41 = v3;
  for (i = (v3 + 32); ; result = (*i)(v34 + v48 + v33 * v47, v44, v45))
  {
    v19 = v16;
LABEL_3:
    if (v19 == v43)
    {
      return v50;
    }

    if (v19 >= v43)
    {
      break;
    }

    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_19;
    }

    v48 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v47 = *(v41 + 72);
    v20 = v42 + v48 + v47 * v19;
    v21 = *v49;
    sub_227D4CE58();
    v46 = v20;
    sub_227D4A0C8();
    if (*(v21 + 16))
    {
      v51 = v16;
      v22 = *(v21 + 40);
      sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
      v23 = sub_227D4CE98();
      v24 = ~(-1 << *(v21 + 32));
      while (1)
      {
        v25 = v23 & v24;
        if (((*(v21 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
        {
          break;
        }

        v26 = v53;
        (*(v53 + 16))(v12, *(v21 + 48) + *(v53 + 72) * v25, v6);
        sub_227CCB9FC(&qword_27D7E6870, &qword_27D7E67C0);
        v27 = sub_227D4CF38();
        v28 = *(v26 + 8);
        v28(v12, v6);
        v23 = v25 + 1;
        if (v27)
        {

          result = (v28)(v15, v6);
          v19 = v51;
          goto LABEL_3;
        }
      }

      v16 = v51;
    }

    v29 = *v54;
    (*v54)(v15, v6);
    v30 = v40;
    v31 = v46;
    sub_227D4A0C8();
    sub_227C43208(v12, v30);
    v29(v12, v6);
    (*v39)(v44, v31, v45);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_227CC8CA8(0, *(v50 + 16) + 1, 1, v50, &qword_27D7E9FC8, &qword_227D633E0, MEMORY[0x277D0D080], MEMORY[0x277D0D080]);
      v50 = v35;
    }

    v33 = *(v50 + 16);
    v32 = *(v50 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_227CC8CA8(v32 > 1, v33 + 1, 1, v50, &qword_27D7E9FC8, &qword_227D633E0, MEMORY[0x277D0D080], MEMORY[0x277D0D080]);
      v50 = v36;
    }

    v34 = v50;
    *(v50 + 16) = v33 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_227CBEF7C(uint64_t a1)
{
  v2[323] = v1;
  v2[322] = a1;
  v3 = sub_227D4C9D8();
  v2[324] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v2[325] = v4;
  v6 = *(v5 + 64) + 15;
  v2[326] = swift_task_alloc();
  v7 = sub_227D49188();
  v2[327] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v2[328] = v8;
  v10 = *(v9 + 64) + 15;
  v2[329] = swift_task_alloc();
  v2[330] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227CBF098, v1, 0);
}

void sub_227CBF098()
{
  v1 = *(v0 + 2640);
  v2 = *(v0 + 2632);
  v3 = *(v0 + 2624);
  v4 = *(v0 + 2616);
  v5 = *(v0 + 2608);
  v6 = *(v0 + 2600);
  v7 = *(v0 + 2592);
  v8 = *(v0 + 2584);
  OUTLINED_FUNCTION_45();
  (*(v9 + 224))();
  sub_227D4C9C8();
  sub_227D49118();
  (*(v6 + 8))(v5, v7);
  v10 = *(v3 + 8);
  v10(v2, v4);
  v11 = sub_227D49198();
  v10(*(v0 + 2640), *(v0 + 2616));
  v12 = sub_227D48D98();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_227D48D88();
  sub_227BB0AF4();
  sub_227D48D78();
  v172 = (v0 + 2536);
  v174 = (v0 + 2552);
  v15 = OUTLINED_FUNCTION_236();
  sub_227B728BC(v15, v16);

  memcpy((v0 + 200), (v0 + 16), 0xB8uLL);
  sub_227BAFF94(v0 + 216, v0 + 1224);
  sub_227BB09C8(v0 + 200);
  v17 = *(v0 + 368);
  v18 = *(v0 + 344);
  v19 = *(v0 + 232);
  *(v0 + 2536) = *(v0 + 216);
  memcpy((v0 + 2400), (v0 + 240), 0x68uLL);
  *(v0 + 2552) = *(v0 + 352);
  v173 = *(v0 + 376);
  *(v0 + 2648) = v173;
  v20 = *(v19 + 16);
  v196 = v0;
  v176 = v17;
  v177 = v18;
  if (v20)
  {
    v198 = MEMORY[0x277D84F90];
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227CC561C();
    v21 = v198;
    v24 = sub_227BB78B0(v19);
    v25 = 0;
    v26 = v19 + 64;
    v179 = v22;
    v182 = v20;
    v178 = v19 + 72;
    v184 = v19 + 64;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(v19 + 32))
    {
      v11 = v24 >> 6;
      if ((*(v26 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_103;
      }

      if (*(v19 + 36) != v22)
      {
        goto LABEL_104;
      }

      v190 = v25;
      v193 = v22;
      v187 = v23;
      v27 = *(v0 + 2584);
      v28 = *(v19 + 56);
      v29 = (*(v19 + 48) + 16 * v24);
      v30 = v19;
      v31 = *v29;
      v32 = v29[1];
      v33 = *(v28 + 8 * v24);
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227CC058C();
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v197 = v21;
      v41 = v21[2];
      v40 = v21[3];
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_12(v40);
        sub_227CC561C();
      }

      v21[2] = v41 + 1;
      v42 = &v21[3 * v41];
      v42[4] = v35;
      v42[5] = v37;
      v42[6] = v39;
      v43 = 1 << *(v30 + 32);
      if (v24 >= v43)
      {
        goto LABEL_105;
      }

      v26 = v184;
      v44 = *(v184 + 8 * v11);
      if ((v44 & (1 << v24)) == 0)
      {
        goto LABEL_106;
      }

      v19 = v30;
      if (*(v30 + 36) != v193)
      {
        goto LABEL_107;
      }

      v45 = v44 & (-2 << (v24 & 0x3F));
      if (v45)
      {
        v43 = __clz(__rbit64(v45)) | v24 & 0x7FFFFFFFFFFFFFC0;
        v0 = v196;
        v46 = v190;
      }

      else
      {
        v47 = v11 << 6;
        v48 = (v178 + 8 * v11);
        v49 = v11 + 1;
        v0 = v196;
        while (v49 < (v43 + 63) >> 6)
        {
          v51 = *v48++;
          v50 = v51;
          v47 += 64;
          ++v49;
          if (v51)
          {
            sub_227B3E218(v24, v193, v187 & 1);
            v43 = __clz(__rbit64(v50)) + v47;
            goto LABEL_19;
          }
        }

        sub_227B3E218(v24, v193, v187 & 1);
LABEL_19:
        v46 = v190;
      }

      v23 = 0;
      v25 = v46 + 1;
      v24 = v43;
      v22 = v179;
      if (v25 == v182)
      {

        goto LABEL_23;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_227D4CE58();
  sub_227D4CE58();
  v21 = MEMORY[0x277D84F90];
LABEL_23:
  v168 = v0 + 552;
  v170 = v0 + 1392;
  v167 = v0 + 1560;
  v52 = v21[2];
  v53 = MEMORY[0x277D84F90];
LABEL_24:
  v54 = v21 + 5;
  while (v52)
  {
    if (!v21[2])
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_112_5(v54);
    if (v11)
    {
      v56 = *(v55 - 32);
      v57 = *(v55 - 16);
      sub_227D4CE58();
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_9();
        sub_227CC8BC4();
        v53 = v61;
      }

      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_22_12(v58);
        sub_227CC8BC4();
        v53 = v62;
      }

      *(v53 + 16) = v59 + 1;
      v60 = (v53 + 24 * v59);
      v60[4] = v56;
      v60[5] = v11;
      v60[6] = v57;
      goto LABEL_24;
    }
  }

  v63 = v196;
  v171 = sub_227CC08D4(v53, &unk_27D7EA138, &unk_227D63560, &qword_27D7EA140, &qword_227D63568);
  *(v196 + 2656) = v171;

  v64 = *(v177 + 16);
  if (v64)
  {
    OUTLINED_FUNCTION_94_5(MEMORY[0x277D84F90]);
    sub_227CC55DC();
    v65 = v197;
    v11 = sub_227BB78B0(v177);
    v68 = v177;
    v69 = 0;
    v194 = v177 + 64;
    v178 = v66;
    v180 = v64;
    v70 = 1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < v70 << *(v68 + 32))
    {
      v71 = v11 >> 6;
      v72 = v70 << v11;
      if ((*(v194 + 8 * (v11 >> 6)) & (v70 << v11)) == 0)
      {
        goto LABEL_109;
      }

      if (*(v68 + 36) != v66)
      {
        goto LABEL_110;
      }

      v185 = v69;
      v188 = v66;
      v183 = v67;
      v73 = *(v63 + 2584);
      v74 = (*(v68 + 48) + 16 * v11);
      v75 = *v74;
      v76 = v74[1];
      v63 = *(*(v68 + 56) + 8 * v11);
      v77 = v68;
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227CC09A8();
      v79 = v78;
      v191 = v80;
      v82 = v81;

      v197 = v65;
      v84 = v65[2];
      v83 = v65[3];
      if (v84 >= v83 >> 1)
      {
        OUTLINED_FUNCTION_12(v83);
        sub_227CC55DC();
      }

      v65[2] = v84 + 1;
      v85 = &v65[3 * v84];
      v85[4] = v79;
      v85[5] = v191;
      v85[6] = v82;
      v86 = 1 << *(v77 + 32);
      if (v11 >= v86)
      {
        goto LABEL_111;
      }

      v87 = *(v194 + 8 * v71);
      if ((v87 & v72) == 0)
      {
        goto LABEL_112;
      }

      if (*(v77 + 36) != v188)
      {
        goto LABEL_113;
      }

      if ((v87 & (-2 << (v11 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_102_5();
        v88 = v180;
        v89 = v185;
      }

      else
      {
        v90 = v71 << 6;
        v91 = (v177 + 72 + 8 * v71);
        v92 = v71 + 1;
        v63 = v196;
        v88 = v180;
        v89 = v185;
        while (v92 < (v86 + 63) >> 6)
        {
          v94 = *v91++;
          v93 = v94;
          v90 += 64;
          ++v92;
          if (v94)
          {
            sub_227B3E218(v11, v188, v183 & 1);
            v68 = v177;
            v86 = __clz(__rbit64(v93)) + v90;
            goto LABEL_51;
          }
        }

        sub_227B3E218(v11, v188, v183 & 1);
        v68 = v177;
LABEL_51:
        v70 = 1;
      }

      v67 = 0;
      v69 = v89 + 1;
      v11 = v86;
      v66 = v178;
      if (v69 == v88)
      {

        goto LABEL_55;
      }
    }

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
    return;
  }

  v65 = MEMORY[0x277D84F90];
LABEL_55:
  v95 = MEMORY[0x277D84F90];
  v96 = v65[2];
LABEL_56:
  v97 = v65 + 5;
  while (v96)
  {
    if (!v65[2])
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_112_5(v97);
    if (v11)
    {
      v99 = *(v98 - 32);
      v100 = *(v98 - 16);
      sub_227D4CE58();
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_9();
        sub_227CC8BC4();
        v95 = v104;
      }

      v102 = *(v95 + 16);
      v101 = *(v95 + 24);
      if (v102 >= v101 >> 1)
      {
        OUTLINED_FUNCTION_22_12(v101);
        sub_227CC8BC4();
        v95 = v105;
      }

      *(v95 + 16) = v102 + 1;
      v103 = (v95 + 24 * v102);
      v103[4] = v99;
      v103[5] = v11;
      v103[6] = v100;
      v63 = v196;
      goto LABEL_56;
    }
  }

  v175 = sub_227CC08D4(v95, &unk_27D7EA100, &unk_227D63528, &qword_27D7EA108, &qword_227D63530);
  *(v63 + 2664) = v175;

  v106 = *(v176 + 16);
  if (v106)
  {
    OUTLINED_FUNCTION_94_5(MEMORY[0x277D84F90]);
    sub_227CC559C();
    v107 = v197;
    v110 = sub_227BB78B0(v176);
    v111 = v176;
    v112 = 0;
    v113 = v176 + 64;
    v178 = v108;
    v181 = v106;
    v177 = v176 + 72;
    while ((v110 & 0x8000000000000000) == 0 && v110 < 1 << *(v111 + 32))
    {
      v114 = v110 >> 6;
      if ((*(v113 + 8 * (v110 >> 6)) & (1 << v110)) == 0)
      {
        goto LABEL_115;
      }

      if (*(v111 + 36) != v108)
      {
        goto LABEL_116;
      }

      v189 = v112;
      v192 = v108;
      v186 = v109;
      v115 = *(v63 + 2584);
      v116 = (*(v111 + 48) + 16 * v110);
      v117 = *v116;
      v118 = v116[1];
      v119 = *(*(v111 + 56) + 8 * v110);
      v120 = v111;
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227CC0CF0();
      v122 = v121;
      v195 = v123;
      v125 = v124;

      v127 = v197[2];
      v126 = v197[3];
      v63 = v127 + 1;
      if (v127 >= v126 >> 1)
      {
        OUTLINED_FUNCTION_12(v126);
        sub_227CC559C();
      }

      v197[2] = v63;
      v128 = &v197[3 * v127];
      v128[4] = v122;
      v128[5] = v195;
      v128[6] = v125;
      v129 = 1 << *(v120 + 32);
      if (v110 >= v129)
      {
        goto LABEL_117;
      }

      v113 = v176 + 64;
      v130 = *(v176 + 64 + 8 * v114);
      if ((v130 & (1 << v110)) == 0)
      {
        goto LABEL_118;
      }

      if (*(v120 + 36) != v192)
      {
        goto LABEL_119;
      }

      if ((v130 & (-2 << (v110 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_102_5();
      }

      else
      {
        v131 = v114 << 6;
        v132 = (v177 + 8 * v114);
        v133 = v114 + 1;
        v63 = v196;
        while (v133 < (v129 + 63) >> 6)
        {
          v135 = *v132++;
          v134 = v135;
          v131 += 64;
          ++v133;
          if (v135)
          {
            sub_227B3E218(v110, v192, v186 & 1);
            v111 = v176;
            v129 = __clz(__rbit64(v134)) + v131;
            goto LABEL_83;
          }
        }

        sub_227B3E218(v110, v192, v186 & 1);
        v111 = v176;
      }

LABEL_83:
      v109 = 0;
      v112 = v189 + 1;
      v110 = v129;
      v108 = v178;
      if (v189 + 1 == v181)
      {

        goto LABEL_86;
      }
    }

    goto LABEL_114;
  }

  v107 = MEMORY[0x277D84F90];
LABEL_86:
  v136 = 0;
  v137 = MEMORY[0x277D84F90];
  v138 = v107[2];
LABEL_87:
  v139 = &v107[3 * v136 + 5];
  while (v138 != v136)
  {
    if (v136 >= v107[2])
    {
      goto LABEL_101;
    }

    v140 = v139 + 3;
    ++v136;
    v141 = *v139;
    v139 += 3;
    if (v141)
    {
      v142 = *(v140 - 4);
      v143 = *(v140 - 2);
      sub_227D4CE58();
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_9();
        sub_227CC8BC4();
        v137 = v147;
      }

      v145 = *(v137 + 16);
      v144 = *(v137 + 24);
      if (v145 >= v144 >> 1)
      {
        OUTLINED_FUNCTION_22_12(v144);
        sub_227CC8BC4();
        v137 = v148;
      }

      *(v137 + 16) = v145 + 1;
      v146 = (v137 + 24 * v145);
      v146[4] = v142;
      v146[5] = v141;
      v146[6] = v143;
      goto LABEL_87;
    }
  }

  v149 = *(v196 + 2584);

  v150 = sub_227CC08D4(v137, &unk_27D7EA0C8, &unk_227D634F0, &qword_27D7EA0D0, &qword_227D634F8);
  *(v196 + 2672) = v150;

  v152 = v171;
  v151 = v172;
  *(v196 + 384) = *v172;
  *(v196 + 400) = v171;
  OUTLINED_FUNCTION_88_5((v196 + 408));
  v153 = v175;
  *(v196 + 512) = v175;
  v155 = v173;
  v154 = v174;
  *(v196 + 520) = *v174;
  *(v196 + 536) = v150;
  *(v196 + 544) = v173;
  sub_227CB8EF4(v196 + 384, v156, v157, v158, v159, v160, v161, v162, v167, v168, v170, v171, v172, v173, v174, 0, v175, v176, v177, v178);
  v163 = *(v196 + 2584);
  *v169 = *v151;
  *(v196 + 568) = v152;
  OUTLINED_FUNCTION_88_5((v196 + 576));
  *(v196 + 680) = v153;
  *(v196 + 688) = *v154;
  *(v196 + 704) = v150;
  *(v196 + 712) = v155;
  sub_227BE0128(v169);
  *(v196 + 720) = *v151;
  *(v196 + 736) = v152;
  OUTLINED_FUNCTION_88_5((v196 + 744));
  *(v196 + 848) = v153;
  *(v196 + 856) = *v154;
  *(v196 + 872) = v150;
  *(v196 + 880) = v155;
  v164 = swift_task_alloc();
  *(v196 + 2680) = v164;
  *v164 = v196;
  v164[1] = sub_227CC019C;
  v165 = *(v196 + 2584);
  v166 = *(v196 + 2576);

  sub_227C74874(v196 + 720, v166);
}

uint64_t sub_227CC019C()
{
  v2 = *v1;
  v3 = *(*v1 + 2680);
  v7 = *v1;
  *(*v1 + 2688) = v0;

  v4 = *(v2 + 2584);
  if (v0)
  {
    v5 = sub_227CC04C0;
  }

  else
  {
    v5 = sub_227CC02B4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227CC02B4()
{
  v4 = (v0 + 2536);
  v5 = (v0 + 2552);
  v6 = *(v0 + 2688);
  OUTLINED_FUNCTION_67_2();
  *(v0 + 904) = v7;
  OUTLINED_FUNCTION_88_5((v0 + 912));
  *(v0 + 1016) = v2;
  *(v0 + 1024) = *(v0 + 2552);
  *(v0 + 1040) = v1;
  *(v0 + 1048) = v3;
  sub_227CBB3D0(v0 + 888);
  if (v6)
  {
    v9 = *(v0 + 2672);
    v10 = *(v0 + 2664);
    v11 = *(v0 + 2656);
    v12 = *(v0 + 2648);
    *(v0 + 1896) = *v4;
    *(v0 + 1912) = v11;
    OUTLINED_FUNCTION_88_5((v0 + 1920));
    *(v0 + 2024) = v10;
    *(v0 + 2032) = *(v0 + 2552);
    *(v0 + 2048) = v9;
    *(v0 + 2056) = v12;
    sub_227BB0664(v0 + 1896);
    v13 = *(v0 + 2640);
    v14 = *(v0 + 2632);
    v15 = *(v0 + 2608);
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
    *(v0 + 1072) = v8;
    OUTLINED_FUNCTION_88_5((v0 + 1080));
    *(v0 + 1184) = v2;
    *(v0 + 1192) = *v5;
    *(v0 + 1208) = v1;
    *(v0 + 1216) = v3;
    sub_227CBD3E0();
    v18 = *(v0 + 2672);
    v19 = *(v0 + 2664);
    v20 = *(v0 + 2656);
    v21 = *(v0 + 2648);
    v22 = *(v0 + 2640);
    v23 = *(v0 + 2632);
    v24 = *(v0 + 2608);
    *(v0 + 2232) = *v4;
    *(v0 + 2248) = v20;
    OUTLINED_FUNCTION_88_5((v0 + 2256));
    *(v0 + 2360) = v19;
    *(v0 + 2368) = *v5;
    *(v0 + 2384) = v18;
    *(v0 + 2392) = v21;
    sub_227BB0664(v0 + 2232);
  }

  OUTLINED_FUNCTION_18();

  return v16();
}

uint64_t sub_227CC04C0()
{
  v1 = *(v0 + 2672);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 2656);
  v4 = *(v0 + 2648);
  *(v0 + 1728) = *(v0 + 2536);
  *(v0 + 1744) = v3;
  OUTLINED_FUNCTION_88_5((v0 + 1752));
  *(v0 + 1856) = v2;
  *(v0 + 1864) = *(v0 + 2552);
  *(v0 + 1880) = v1;
  *(v0 + 1888) = v4;
  sub_227BB0664(v0 + 1728);
  v5 = *(v0 + 2688);
  v6 = *(v0 + 2640);
  v7 = *(v0 + 2632);
  v8 = *(v0 + 2608);

  OUTLINED_FUNCTION_18();

  return v9();
}

void sub_227CC058C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_98_6(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_8();
  v11 = sub_227D49188();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_438();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA090, &unk_227D634B0);
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_90_0();
  v20 = type metadata accessor for AchievementImage();
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  if ((OUTLINED_FUNCTION_75_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_131_4();
    swift_task_reportUnexpectedExecutor();
  }

  v24 = OUTLINED_FUNCTION_111_4();
  sub_227CBAEE8(v24, v25);
  v26 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v26, v27, v20) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7EA090);
LABEL_8:
    OUTLINED_FUNCTION_96_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_278();
  sub_227CCBBA0();
  OUTLINED_FUNCTION_45();
  (*(v28 + 224))();
  v29 = *(v20 + 20);
  v30 = *(*v1 + 728);
  v31 = OUTLINED_FUNCTION_97_4();
  v32(v31);
  v33 = OUTLINED_FUNCTION_62_7();
  v4(v33);
  OUTLINED_FUNCTION_100_5();
  if (v34)
  {
    sub_227CCBB4C(v2, &qword_27D7E6CD8);
    OUTLINED_FUNCTION_39_9();
    sub_227CCB950(v3, v35);
    goto LABEL_8;
  }

  v36 = OUTLINED_FUNCTION_28_12();
  v37(v36);
  v38 = OUTLINED_FUNCTION_61_8();
  v39(v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA168, &unk_227D63590);
  *(OUTLINED_FUNCTION_25_8() + 16) = xmmword_227D4E520;
  sub_227CCB9A8();
  sub_227D4CE58();
  v40 = OUTLINED_FUNCTION_201();
  v4(v40);
  v41 = OUTLINED_FUNCTION_336();
  sub_227CCB950(v41, v42);
LABEL_9:
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC08D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    v9 = OUTLINED_FUNCTION_82();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_78_0();
    v11 = sub_227D4D838();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v14 = v11;
  v12 = sub_227D4CE58();
  sub_227CC8E10(v12, 1, &v14, a2, a3, a4, a5);

  return v14;
}

void sub_227CC09A8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_98_6(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_8();
  v11 = sub_227D49188();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_438();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA030, &unk_227D63440);
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_90_0();
  v20 = type metadata accessor for LeaderboardImage();
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  if ((OUTLINED_FUNCTION_75_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_131_4();
    swift_task_reportUnexpectedExecutor();
  }

  v24 = OUTLINED_FUNCTION_111_4();
  sub_227CBAEE8(v24, v25);
  v26 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v26, v27, v20) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7EA030);
LABEL_8:
    OUTLINED_FUNCTION_96_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_278();
  sub_227CCBBA0();
  OUTLINED_FUNCTION_45();
  (*(v28 + 224))();
  v29 = *(v20 + 20);
  v30 = *(*v1 + 728);
  v31 = OUTLINED_FUNCTION_97_4();
  v32(v31);
  v33 = OUTLINED_FUNCTION_62_7();
  v4(v33);
  OUTLINED_FUNCTION_100_5();
  if (v34)
  {
    sub_227CCBB4C(v2, &qword_27D7E6CD8);
    OUTLINED_FUNCTION_48_8();
    sub_227CCB950(v3, v35);
    goto LABEL_8;
  }

  v36 = OUTLINED_FUNCTION_28_12();
  v37(v36);
  v38 = OUTLINED_FUNCTION_61_8();
  v39(v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA130, &qword_227D63558);
  *(OUTLINED_FUNCTION_25_8() + 16) = xmmword_227D4E520;
  sub_227CCB9A8();
  sub_227D4CE58();
  v40 = OUTLINED_FUNCTION_201();
  v4(v40);
  v41 = OUTLINED_FUNCTION_336();
  sub_227CCB950(v41, v42);
LABEL_9:
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_8_1();
}

void sub_227CC0CF0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_98_6(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_8();
  v11 = sub_227D49188();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_438();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE8, &unk_227D63400);
  OUTLINED_FUNCTION_5(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_90_0();
  v20 = type metadata accessor for LeaderboardSetImage();
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  if ((OUTLINED_FUNCTION_75_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_131_4();
    swift_task_reportUnexpectedExecutor();
  }

  v24 = OUTLINED_FUNCTION_111_4();
  sub_227CBAEE8(v24, v25);
  v26 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v26, v27, v20) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7E9FE8);
LABEL_8:
    OUTLINED_FUNCTION_96_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_278();
  sub_227CCBBA0();
  OUTLINED_FUNCTION_45();
  (*(v28 + 224))();
  v29 = *(v20 + 20);
  v30 = *(*v1 + 728);
  v31 = OUTLINED_FUNCTION_97_4();
  v32(v31);
  v33 = OUTLINED_FUNCTION_62_7();
  v4(v33);
  OUTLINED_FUNCTION_100_5();
  if (v34)
  {
    sub_227CCBB4C(v2, &qword_27D7E6CD8);
    OUTLINED_FUNCTION_45_8();
    sub_227CCB950(v3, v35);
    goto LABEL_8;
  }

  v36 = OUTLINED_FUNCTION_28_12();
  v37(v36);
  v38 = OUTLINED_FUNCTION_61_8();
  v39(v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0F8, &qword_227D63520);
  *(OUTLINED_FUNCTION_25_8() + 16) = xmmword_227D4E520;
  sub_227CCB9A8();
  sub_227D4CE58();
  v40 = OUTLINED_FUNCTION_201();
  v4(v40);
  v41 = OUTLINED_FUNCTION_336();
  sub_227CCB950(v41, v42);
LABEL_9:
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC1038()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_121_5();
  v8 = type metadata accessor for AchievementPlayerKey(v7);
  v9 = OUTLINED_FUNCTION_5(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54_8();
  v12 = sub_227D4A298();
  v13 = OUTLINED_FUNCTION_9(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v21 = *(v15 + 16);
  v22 = OUTLINED_FUNCTION_336();
  v21(v22);
  sub_227D4A258();
  sub_227D4A268();
  sub_227D4A258();
  sub_227D4A268();
  sub_227D4A258();
  sub_227D4A248();
  OUTLINED_FUNCTION_3_24();
  sub_227CCB9A8();
  (v21)(v1, v20, v12);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v12);
  (*(*v0 + 336))(v27);
  OUTLINED_FUNCTION_105_6();
  sub_227CBAA90(v1, v2);
  v0(v27, 0);
  return (*(v15 + 8))(v20, v12);
}

void sub_227CC1270()
{
  OUTLINED_FUNCTION_11();
  v50 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v52 = v8;
  v9 = OUTLINED_FUNCTION_191_2();
  v10 = type metadata accessor for AchievementPlayerKey(v9);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v51 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_9(v49);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_90_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_120_4();
  v30 = sub_227D4A298();
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  (*(v26 + 16))(v2, v50 + *(v11 + 28), v24);
  (*(v20 + 16))(v0, v50, v49);
  sub_227D49288();
  sub_227D492A8();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_173_0();
  sub_227D4A278();
  OUTLINED_FUNCTION_3_24();
  sub_227CCB9A8();
  (*(v33 + 16))(v52, v38, v30);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v30);
  v46 = (*(*v1 + 336))(v54);
  sub_227CBAA90(v52, v51);
  v46(v54, 0);
  v53[2] = v50;
  (*(*v1 + 360))(v54);
  OUTLINED_FUNCTION_105_6();
  v47 = sub_227CC90E4(sub_227CCB18C, v53);
  v48 = *(*v1 + 16);
  if (v48 < v47)
  {
    __break(1u);
  }

  else
  {
    sub_227CCB2A8(v47, v48);
    v1(v54, 0);
    (*(v33 + 8))(v38, v30);
    OUTLINED_FUNCTION_8_1();
  }
}

uint64_t sub_227CC1684()
{
  OUTLINED_FUNCTION_118_4();
  v3 = OUTLINED_FUNCTION_397(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = OUTLINED_FUNCTION_9_2();
  sub_227CCB9FC(v5, v6);
  sub_227D4D148();
  sub_227D4D148();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

void sub_227CC1764()
{
  OUTLINED_FUNCTION_11();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F78, &qword_227D63230);
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_121_5();
  v80 = sub_227D4A4D8();
  v12 = OUTLINED_FUNCTION_9(v80);
  v82 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v79 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_314();
  v81 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_90_0();
  v23 = sub_227D4A298();
  v24 = OUTLINED_FUNCTION_9(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v31 = v30 - v29;
  v32 = type metadata accessor for AchievementPlayerKey(0);
  v33 = v32 - 8;
  v78 = *(v32 - 8);
  v34 = *(v78 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_6_15(v38);
  (*(v39 + 16))(v37, v7);
  v40 = *(v33 + 28);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15(v41);
  v43 = (*(v42 + 16))(v37 + v40, v5);
  (*(*v3 + 320))(v43);
  v44 = OUTLINED_FUNCTION_168_1();
  sub_227CAE2D0(v44, v45, v46);

  v47 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v47, v48, v23) == 1)
  {
    v49 = OUTLINED_FUNCTION_5_24();
    sub_227CCB950(v49, v50);
    sub_227CCBB4C(v0, &qword_27D7E9EE0);
    goto LABEL_12;
  }

  v51 = (*(v26 + 32))(v31, v0, v23);
  v52 = (*(*v3 + 296))(v51);
  v53 = sub_227CBADC8(v7, v52);

  if (!v53)
  {
    goto LABEL_10;
  }

  sub_227CBAF98(v53, v2);

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F80, &qword_227D63238);
  if (__swift_getEnumTagSinglePayload(v2, 1, v54) == 1)
  {
    v55 = OUTLINED_FUNCTION_53_4();
    v56(v55);
    sub_227CCBB4C(v2, &qword_27D7E9F78);
LABEL_11:
    v69 = OUTLINED_FUNCTION_5_24();
    sub_227CCB950(v69, v70);
    goto LABEL_12;
  }

  v57 = v2[1];

  v58 = *(v82 + 32);
  v58(v79, v2 + *(v54 + 48), v80);
  v58(v81, v79, v80);
  if ((sub_227D4A238() & 1) == 0)
  {
    (*(v82 + 8))(v81, v80);
LABEL_10:
    v67 = OUTLINED_FUNCTION_53_4();
    v68(v67);
    goto LABEL_11;
  }

  v59 = (*(*v3 + 344))();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_109();
  *(v60 - 16) = v37;
  v62 = sub_227CC8900(sub_227CCB3EC, v61, v59);

  if (v62)
  {
    sub_227D4A4B8();
    (*(v82 + 8))(v81, v80);
    v63 = OUTLINED_FUNCTION_53_4();
    v64(v63);
    v65 = OUTLINED_FUNCTION_5_24();
    sub_227CCB950(v65, v66);
  }

  else
  {
    (*(*v3 + 360))(v83);
    OUTLINED_FUNCTION_105_6();
    sub_227CC8D9C();
    v71 = *(*v3 + 16);
    sub_227CC8A64(v71);
    *(*v3 + 16) = v71 + 1;
    v72 = *(v78 + 80);
    v73 = *(v78 + 72);
    sub_227CCB9A8();
    v59(v83, 0);
    (*(v82 + 8))(v81, v80);
    v74 = OUTLINED_FUNCTION_53_4();
    v75(v74);
    v76 = OUTLINED_FUNCTION_168_1();
    sub_227CCB950(v76, v77);
  }

LABEL_12:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC1DD0()
{
  OUTLINED_FUNCTION_37();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_6_15(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_87_1();
  v7(v6);
  v8 = *(type metadata accessor for AchievementPlayerKey(0) + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15(v9);
  v11 = *(v10 + 32);

  return v11(v2 + v8, v0);
}

void sub_227CC1E88()
{
  OUTLINED_FUNCTION_351();
  v119 = v0;
  v4 = v3;
  v5 = sub_227D4A0E8();
  v6 = OUTLINED_FUNCTION_9(v5);
  v115 = v7;
  v116 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v114 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_0();
  v117 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v18 = OUTLINED_FUNCTION_9(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v108 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v108 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  sub_227D4A078();
  v124 = sub_227D4A7D8();
  v33 = v32;
  v35 = *(v20 + 8);
  v34 = v20 + 8;
  v36 = v31;
  v37 = v35;
  v118 = v17;
  v35(v36, v17);
  if (v1)
  {
    goto LABEL_2;
  }

  v109 = v26;
  v110 = v29;
  v112 = v37;
  v113 = v34;
  v108 = v2;
  v38 = v116;
  v111 = 0;
  v39 = v4;
  v40 = v119;
  OUTLINED_FUNCTION_80_0();
  v42 = (*(v41 + 416))();
  v43 = v117;
  v44 = v33;
  sub_227CBAE28(v124, v33, v42, v117);

  v45 = v118;
  if (__swift_getEnumTagSinglePayload(v43, 1, v118) == 1)
  {
    v46 = v111;
    sub_227CCBB4C(v43, &qword_27D7E8390);
    v47 = sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v48, v49);
    OUTLINED_FUNCTION_208();
    v50 = swift_allocError();
    v52 = v51;
    v122 = 0;
    v123 = 0xE000000000000000;
    sub_227D4D668();

    OUTLINED_FUNCTION_56_6();
    v120 = v54;
    v121 = v53;
    MEMORY[0x22AAA5DA0](v124, v44);

    OUTLINED_FUNCTION_14_15();
    v55 = sub_227D4A6A8();
    if (v46)
    {

      MEMORY[0x22AAA6E40](v50, v47);
    }

    else
    {
      MEMORY[0x22AAA5DA0](v55);

      v92 = v121;
      *v52 = v120;
      v52[1] = v92;
      v93 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_14_0(v47);
      (*(v94 + 104))(v52);
      swift_willThrow();
    }

    goto LABEL_2;
  }

  sub_227CCBB4C(v43, &qword_27D7E8390);
  v56 = v110;
  sub_227D4A078();
  OUTLINED_FUNCTION_114_5();
  (*(v57 + 440))();
  v58 = OUTLINED_FUNCTION_173_0();
  v60 = sub_227CBAD18(v58, v59);
  v62 = v61;
  v64 = v63;

  v112(v56, v45);
  if ((v64 & 0xFF00) == 0x200)
  {
    v65 = 0;
  }

  else
  {
    v65 = v60;
  }

  if (((v64 & 0xFF00) == 512) | v64 & 1)
  {
    v66 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v66 = v62;
  }

  if (v66 < v65)
  {
    __break(1u);
  }

  else
  {
    v62 = v40;
    v67 = sub_227D4A0B8();
    v68 = v67 < v65 || v66 < v67;
    v64 = v115;
    v69 = v109;
    if (v68)
    {
      v70 = sub_227D49E08();
      OUTLINED_FUNCTION_0_52();
      sub_227CB8EB0(v71, v72);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_56_6();
      *v74 = v73 + 15;
      v74[1] = v75;
      v76 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_14_0(v70);
      (*(v77 + 104))();
      swift_willThrow();
      goto LABEL_2;
    }

    v78 = sub_227D4A078();
    (*(*v40 + 512))(v78);
    v79 = OUTLINED_FUNCTION_173_0();
    v81 = sub_227CBADC8(v79, v80);

    v112(v69, v45);
    if (v81)
    {
      v66 = v81;
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    v40 = v38;
    (*(v64 + 16))(v114, v39, v38);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_23;
    }
  }

  v95 = *(v66 + 16);
  OUTLINED_FUNCTION_43_7();
  sub_227CC8CA8(0, v96 + 1, 1, v66, v97, v98, v99, v100);
  v66 = v101;
LABEL_23:
  v83 = *(v66 + 16);
  v82 = *(v66 + 24);
  if (v83 >= v82 >> 1)
  {
    OUTLINED_FUNCTION_12(v82);
    OUTLINED_FUNCTION_43_7();
    sub_227CC8CA8(v102, v83 + 1, 1, v66, v103, v104, v105, v106);
    v66 = v107;
  }

  *(v66 + 16) = v83 + 1;
  (*(v64 + 32))(v66 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v83, v114, v40);
  v84 = v108;
  sub_227D4A078();
  v85 = (*(*v62 + 528))(&v120);
  v87 = v86;
  v88 = *v86;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_134_3();
  v122 = v89;
  v90 = OUTLINED_FUNCTION_201();
  sub_227CC8058(v90, v91);
  *v87 = v122;
  v112(v84, v45);
  v85(&v120, 0);
LABEL_2:
  OUTLINED_FUNCTION_352();
}

void sub_227CC2628()
{
  OUTLINED_FUNCTION_351();
  v118 = v1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F88, &unk_227D63240);
  v4 = OUTLINED_FUNCTION_62_0(v114);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_3();
  v112 = v7;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_314();
  v115 = v9;
  OUTLINED_FUNCTION_191_2();
  v116 = sub_227D4A0E8();
  v10 = OUTLINED_FUNCTION_9(v116);
  v113 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v111 = (v15 - v14);
  OUTLINED_FUNCTION_191_2();
  v16 = sub_227D492A8();
  v17 = OUTLINED_FUNCTION_5(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_55_9();
  v20 = sub_227D48E28();
  v21 = OUTLINED_FUNCTION_9(v20);
  v108 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v29 = OUTLINED_FUNCTION_5(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_437();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_90_0();
  v37 = sub_227D4A7D8();
  if (v2)
  {
    goto LABEL_2;
  }

  v39 = v38;
  v103 = v20;
  v106 = v3;
  v40 = v37;
  v41 = (*(*v1 + 416))();
  v42 = v40;
  sub_227CBAE28(v40, v39, v41, v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v43 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v43, v44, v45) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7E8390);
    v46 = sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v47, v48);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    v50 = v49;
    sub_227D4D668();

    OUTLINED_FUNCTION_56_6();
    v122 = v52;
    v123 = v51;
    MEMORY[0x22AAA5DA0](v42, v39);

    OUTLINED_FUNCTION_14_15();
    v53 = sub_227D4A6A8();
    MEMORY[0x22AAA5DA0](v53);

    v78 = v123;
    *v50 = v122;
    v50[1] = v78;
    v79 = *MEMORY[0x277D0CE68];
    OUTLINED_FUNCTION_14_0(v46);
    (*(v80 + 104))(v50);
    swift_willThrow();
LABEL_2:
    OUTLINED_FUNCTION_352();
    return;
  }

  v54 = sub_227CCBB4C(v0, &qword_27D7E8390);
  (*(*v1 + 512))(v54);
  v55 = OUTLINED_FUNCTION_193();
  v57 = sub_227CBADC8(v55, v56);

  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  (*(*v118 + 440))(v58);
  v60 = OUTLINED_FUNCTION_193();
  v119 = sub_227CBAD18(v60, v61);
  v63 = v62;
  v65 = v64;

  if ((v65 & 0xFF00) == 0x200)
  {
    v119 = 0;
    LOBYTE(v65) = 0;
    v66 = 0;
    v67 = 1;
    v63 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v66 = ((v65 & 0xFFFFFFu) >> 8) & 1;
    v67 = ((v65 & 0xFFFFFFu) >> 16) & 1;
  }

  sub_227CCBAFC();
  v68 = sub_227D4A478();
  if (__swift_getEnumTagSinglePayload(v106, 1, v68) != 1)
  {
    sub_227CCBAFC();
    v69 = *(v68 - 8);
    v70 = *(v69 + 88);
    v71 = OUTLINED_FUNCTION_173_0();
    v73 = v72(v71);
    if (v73 == *MEMORY[0x277D0D298])
    {
      sub_227D49288();
      v74 = sub_227D48E08();
      MEMORY[0x28223BE20](v74);
      OUTLINED_FUNCTION_109();
      *(v76 - 16) = v27;
      v77 = sub_227CCBBF4;
    }

    else
    {
      if (v73 != *MEMORY[0x277D0D2A0])
      {
        if (v73 != *MEMORY[0x277D0D290])
        {
          v100 = *(v69 + 8);
          v101 = OUTLINED_FUNCTION_173_0();
          v102(v101);
        }

        goto LABEL_18;
      }

      sub_227D49288();
      v81 = sub_227D48E08();
      MEMORY[0x28223BE20](v81);
      OUTLINED_FUNCTION_109();
      *(v82 - 16) = v27;
      v77 = sub_227CCB40C;
    }

    v59 = sub_227CBB10C(v77, v75, v59);
    (*(v108 + 8))(v27, v103);
  }

LABEL_18:
  sub_227CCBB4C(v106, &qword_27D7E82E0);
  v122 = v59;
  sub_227D4CE58();
  if (v67)
  {
    v83 = 0x10000;
  }

  else
  {
    v83 = 0;
  }

  if (v66)
  {
    v84 = 256;
  }

  else
  {
    v84 = 0;
  }

  sub_227CC94D0(&v122, v119, v63, (v83 | v84) & 0xFFFFFFFE | v65 & 1);
  v85 = 0;

  v86 = v122;
  if (v66 & v67)
  {
    v86 = sub_227CC31F8(v122);
  }

  v87 = v115;
  v88 = v116;
  v122 = MEMORY[0x277D84FA0];
  v89 = sub_227CBEA90(v86, &v122);

  if (!*(v89 + 16))
  {
LABEL_33:

    goto LABEL_2;
  }

  OUTLINED_FUNCTION_94_5(MEMORY[0x277D84F90]);
  v107 = v90;
  v92 = v91;
  sub_227CC565C();
  v93 = 0;
  v109 = v89;
  v110 = *(v89 + 16);
  v105 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v104 = v89 + v105;
  while (v110 != v93)
  {
    if (v93 >= *(v89 + 16))
    {
      goto LABEL_37;
    }

    v94 = *(v92 + 48);
    v117 = *(v113 + 16);
    v120 = *(v113 + 72);
    v117(v87 + v94, v104 + v120 * v93, v88);
    *v112 = v93;
    v95 = v87;
    v96 = *(v92 + 48);
    v97 = *(v113 + 32);
    v97(v112 + v96, v95 + v94, v88);
    v85 = v111;
    v117(v111, v112 + v96, v88);
    ++v93;
    sub_227D4A0A8();
    sub_227CCBB4C(v112, &qword_27D7E9F88);
    v99 = *(v121 + 16);
    v98 = *(v121 + 24);
    if (v99 >= v98 >> 1)
    {
      OUTLINED_FUNCTION_12(v98);
      sub_227CC565C();
    }

    *(v121 + 16) = v99 + 1;
    v97((v121 + v105 + v99 * v120), v111, v88);
    v89 = v109;
    v92 = v114;
    v87 = v115;
    if (v107 == v93)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);

  __break(1u);
}

uint64_t sub_227CC3010()
{
  OUTLINED_FUNCTION_37();
  v0 = sub_227D492A8();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  sub_227D4A068();
  v6 = sub_227D48E18();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_253();
  v9(v8);
  return v6 & 1;
}

void sub_227CC30D8()
{
  OUTLINED_FUNCTION_450_0();
  v1 = v0;
  v2 = sub_227D492A8();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_438();
  if ((v1 & 0x10000) != 0)
  {
    sub_227D4A0B8();
    sub_227D4A0B8();
  }

  else
  {
    sub_227D4A068();
    sub_227D4A068();
    OUTLINED_FUNCTION_201();
    sub_227D49208();
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_193();
    v9(v10);
    v11 = OUTLINED_FUNCTION_173_0();
    v9(v11);
  }

  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227CC31F8(uint64_t a1)
{
  v2 = sub_227D4A0E8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v31 = v25 - v9;
  v10 = *(a1 + 16);
  if (v10 < 2)
  {
    return a1;
  }

  v11 = 0;
  v12 = v10 >> 1;
  v13 = v10 - 1;
  v26 = v10 >> 1;
  v27 = v8;
  v25[1] = v8 + 16;
  v28 = (v8 + 40);
  while (1)
  {
    if (v11 == v13)
    {
      goto LABEL_11;
    }

    v14 = *(a1 + 16);
    if (v11 >= v14)
    {
      break;
    }

    v15 = v6;
    v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = a1 + v30;
    v17 = *(v8 + 72);
    v18 = a1;
    v19 = *(v8 + 16);
    v29 = v17 * v11;
    result = v19(v31, v16 + v17 * v11, v2);
    if (v13 >= v14)
    {
      goto LABEL_14;
    }

    v20 = v17 * v13;
    v21 = v16 + v17 * v13;
    v6 = v15;
    v19(v15, v21, v2);
    a1 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_227CC95F8(v18);
      a1 = v24;
    }

    v22 = a1 + v30;
    v23 = *v28;
    result = (*v28)(a1 + v30 + v29, v6, v2);
    if (v13 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    result = v23(v22 + v20, v31, v2);
    v12 = v26;
    v8 = v27;
LABEL_11:
    ++v11;
    --v13;
    if (v12 == v11)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_227CC3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9(v76);
  v78 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_55_9();
  v32 = sub_227D4A0E8();
  v33 = OUTLINED_FUNCTION_9(v32);
  v77 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_3();
  v81 = v37;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_438();
  v39 = sub_227D492D8();
  v40 = OUTLINED_FUNCTION_9(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v47 = v46 - v45;
  (*(v42 + 104))(v46 - v45, *MEMORY[0x277CC9670], v39);
  sub_227D492C8();
  v49 = v48;
  v51 = *(v42 + 8);
  v50 = v42 + 8;
  v51(v47, v39);
  v52 = *(v27 + 16);
  if (v52)
  {
    v68 = v49;
    v73 = v22;
    v82 = MEMORY[0x277D84F90];
    sub_227CC565C();
    v53 = v82;
    v80 = *(v77 + 16);
    v54 = v27 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v72 = *(*v25 + 488);
    v71 = *(*v25 + 712);
    v70 = (v78 + 8);
    v69 = *(v77 + 72);
    v75 = v21;
    v74 = v32;
    do
    {
      v79 = v53;
      v80(v81, v54, v32);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        OUTLINED_FUNCTION_71_7();
        swift_task_reportUnexpectedExecutor();
      }

      v55 = sub_227D4A078();
      v56 = v72(v55);
      if (*(v56 + 16) && (sub_227CC4A1C(), (v58 & 1) != 0) && (v59 = *(*(v56 + 56) + 8 * v57), sub_227D4CE58(), , *(v59 + 16)) && (v60 = OUTLINED_FUNCTION_135_6(), v61 = sub_227B2664C(v60, v68), (v62 & 1) != 0))
      {
        v63 = *(v59 + 56) + 40 * v61;
        LOBYTE(v22) = *v63;
        v50 = *(v63 + 8);
        v47 = *(v63 + 16);
        v32 = *(v63 + 24);
        v21 = *(v63 + 32);
        sub_227D4CE58();
        sub_227D4CE58();
      }

      else
      {
        OUTLINED_FUNCTION_99_4();
      }

      v83 = v22;
      v84 = v50;
      v85 = v47;
      v86 = v32;
      v87 = v21;
      LOBYTE(v22) = v73;
      v32 = v74;
      v50 = v81;
      v80(v73, v81, v74);
      v64 = sub_227D4A0B8();
      v71(v64, &v83);
      OUTLINED_FUNCTION_105_6();

      OUTLINED_FUNCTION_58();
      sub_227D4A088();
      v21 = v75;
      (*v70)(v75, v76);
      OUTLINED_FUNCTION_37_8(&a18);
      v65(v81, v74);
      v53 = v79;
      v47 = *(v79 + 16);
      v66 = *(v79 + 24);
      if (v47 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_12(v66);
        sub_227CC565C();
        v53 = v79;
      }

      *(v53 + 16) = v47 + 1;
      OUTLINED_FUNCTION_37_8(&a16);
      v67();
      v54 += v69;
      --v52;
    }

    while (v52);
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC3934(uint64_t a1, uint64_t a2)
{
  switch(*a2)
  {
    case 1:
      v28 = 0;
      goto LABEL_26;
    case 2:
      v28 = 0;
      goto LABEL_26;
    case 3:
      v28 = 0;
      goto LABEL_26;
    case 4:
      v8 = a1 % 360000 % 6000;
      v9 = v8 / 100;
      v10 = v8 % 100;
      goto LABEL_16;
    case 5:
      v17 = a1 % 3600000 % 60000;
      v9 = v17 / 1000;
      v10 = v17 % 1000;
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F90, &qword_227D63250);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_227D59C40;
      v19 = OUTLINED_FUNCTION_60_9(v18, MEMORY[0x277D83B88]);
      v19[17] = v20;
      v19[18] = v21;
      v19[14] = v9;
      v19[22] = v20;
      v19[23] = v21;
      v19[19] = v10;
      goto LABEL_19;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F90, &qword_227D63250);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_227D4F750;
      OUTLINED_FUNCTION_60_9(v22, MEMORY[0x277D83B88]);
      OUTLINED_FUNCTION_133_4();
      goto LABEL_19;
    case 7:
      v11 = a1 % 3600 % 60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F90, &qword_227D63250);
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D83B88];
      *(v12 + 16) = xmmword_227D50C20;
      v14 = OUTLINED_FUNCTION_60_9(v12, v13);
      v14[17] = v15;
      v14[18] = v16;
      v14[14] = v11;
      OUTLINED_FUNCTION_133_4();
LABEL_19:
      v4 = sub_227D4CFC8();
      goto LABEL_20;
    case 8:
      OUTLINED_FUNCTION_30_8();
      v5 = 41922;
      v6 = 0xA200000000000000;
      goto LABEL_25;
    case 9:
      v7 = 41922;
      goto LABEL_22;
    case 0xA:
      OUTLINED_FUNCTION_30_8();
      v5 = 36;
      v6 = 0xE100000000000000;
      goto LABEL_25;
    case 0xB:
      v7 = 36;
      goto LABEL_22;
    case 0xC:
      OUTLINED_FUNCTION_30_8();
      v5 = 11305698;
      v6 = 0xA300000000000000;
      goto LABEL_25;
    case 0xD:
      v7 = 11305698;
      goto LABEL_22;
    case 0xE:
      OUTLINED_FUNCTION_30_8();
      v5 = 541476931;
      v6 = 0xE400000000000000;
      goto LABEL_25;
    case 0xF:
      v7 = 541476931;
      goto LABEL_22;
    case 0x10:
      OUTLINED_FUNCTION_30_8();
      v5 = 2126443;
      v6 = 0xE300000000000000;
LABEL_25:
      MEMORY[0x22AAA5DA0](v5, v6);
LABEL_26:
      sub_227D4D318();
      break;
    case 0x11:
      v7 = 2126443;
      goto LABEL_22;
    case 0x12:
      v7 = 42434;
LABEL_22:
      v28 = v7;
      v23 = sub_227D4DA38();
      MEMORY[0x22AAA5DA0](v23);

      break;
    default:
      v4 = sub_227D4DA38();
LABEL_20:
      v28 = v4;
      break;
  }

  if (a1 == 1)
  {
    v24 = *(a2 + 32);
    if (!v24)
    {
      return v28;
    }

    v25 = *(a2 + 24);
  }

  else
  {
    v24 = *(a2 + 16);
    if (!v24)
    {
      return v28;
    }

    v25 = *(a2 + 8);
  }

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    MEMORY[0x22AAA5DA0]();
    MEMORY[0x22AAA5DA0](32, 0xE100000000000000);
  }

  return v28;
}

uint64_t sub_227CC3D48(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  v3 = (*(v2 + 528))(v9);
  v5 = v4;
  v6 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v5;
  sub_227CC8058(MEMORY[0x277D84F90], a1);
  *v5 = v8;
  return v3(v9, 0);
}

void sub_227CC3DFC()
{
  OUTLINED_FUNCTION_450_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_227D490B8();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  if (sub_227D490A8())
  {
    v13 = sub_227D49188();
    OUTLINED_FUNCTION_62_0(v13);
    (*(v14 + 16))(v3, v1, v13);
    OUTLINED_FUNCTION_99();
  }

  else
  {
    if (sub_227D490A8())
    {
      sub_227D49158();
      if (!v15)
      {
        sub_227D49148();
        (*(v7 + 104))(v12, *MEMORY[0x277CC91D8], v4);
        sub_227BA2B5C();
        sub_227D49178();
        (*(v7 + 8))(v12, v4);

        sub_227D49188();
        OUTLINED_FUNCTION_110_5();
        OUTLINED_FUNCTION_99();
        __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
        OUTLINED_FUNCTION_451_0();
        return;
      }
    }

    sub_227D49188();
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_71_0();
  }

  OUTLINED_FUNCTION_451_0();

  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void sub_227CC3FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_117_5();
  v10 = OUTLINED_FUNCTION_173();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v17 = (v29 - v16);
  OUTLINED_FUNCTION_33_9();
  v19 = (*(v18 + 416))();
  OUTLINED_FUNCTION_87_8();

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_109_6(v20);
  if (v19 == 1)
  {
    v21 = sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v22, v23);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_106_6();
    sub_227D4D668();

    v30 = 0x656461656C206F4ELL;
    v31 = 0xEF206472616F6272;
    MEMORY[0x22AAA5DA0](v29[0], v29[1]);
    OUTLINED_FUNCTION_14_15();
    v24 = sub_227D4A6A8();
    if (a10)
    {

      v25 = OUTLINED_FUNCTION_200();
      MEMORY[0x22AAA6E40](v25);
    }

    else
    {
      MEMORY[0x22AAA5DA0](v24);

      v26 = v31;
      *v17 = v30;
      v17[1] = v26;
      v27 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_14_0(v21);
      (*(v28 + 104))(v17);
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_352();
}

void sub_227CC41F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_117_5();
  v10 = OUTLINED_FUNCTION_173();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_5(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v17 = (v29 - v16);
  OUTLINED_FUNCTION_33_9();
  v19 = (*(v18 + 536))();
  OUTLINED_FUNCTION_87_8();

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  OUTLINED_FUNCTION_109_6(v20);
  if (v19 == 1)
  {
    v21 = sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v22, v23);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_106_6();
    sub_227D4D668();

    v30 = 0xD000000000000013;
    v31 = 0x8000000227D78910;
    MEMORY[0x22AAA5DA0](v29[0], v29[1]);
    OUTLINED_FUNCTION_14_15();
    v24 = sub_227D4A6A8();
    if (a10)
    {

      v25 = OUTLINED_FUNCTION_200();
      MEMORY[0x22AAA6E40](v25);
    }

    else
    {
      MEMORY[0x22AAA5DA0](v24);

      v26 = v31;
      *v17 = v30;
      v17[1] = v26;
      v27 = *MEMORY[0x277D0CE68];
      OUTLINED_FUNCTION_14_0(v21);
      (*(v28 + 104))(v17);
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CC43F8()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_62_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC16GameServicesCore8GameData_directoryURL;
  v5 = sub_227D49188();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtC16GameServicesCore8GameData_timestamp;
  v8 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievements);

  v11 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievementDescriptions);

  v12 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievementProgress);

  v13 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_reportedAchievements);

  v14 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_challengeDefinitions);

  v15 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_gameActivityDefinitions);

  v16 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboards);

  v17 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardProperties);

  v18 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardDescriptions);

  v19 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardEntryProperties);

  v20 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_classicLeaderboardScores);

  v21 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSets);

  v22 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSetDescriptions);

  v23 = *(v0 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSetMembers);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227CC45B4()
{
  sub_227CC43F8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CC45E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_62_0(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_58();

  return v4(v3);
}

uint64_t sub_227CC4648()
{
  v0 = *(type metadata accessor for AchievementPlayerKey(0) + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_85_8();

  return v5(v4);
}

uint64_t sub_227CC46C4()
{
  OUTLINED_FUNCTION_37();
  if (sub_227CC1684())
  {
    v0 = *(type metadata accessor for AchievementPlayerKey(0) + 20);
    v1 = sub_227CC1684();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_227CC4740()
{
  OUTLINED_FUNCTION_450_0();
  v0 = OUTLINED_FUNCTION_323();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_42_7();
  sub_227CCB9FC(v2, &qword_27D7E6D70);
  OUTLINED_FUNCTION_85_8();
  sub_227D4CEA8();
  v3 = *(type metadata accessor for AchievementPlayerKey(0) + 20);
  v4 = OUTLINED_FUNCTION_323();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
  sub_227D4CEA8();
  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227CC4808()
{
  sub_227D4DB58();
  v0 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v2 = sub_227CCB9FC(&qword_27D7E9F40, &qword_27D7E6D70);
  OUTLINED_FUNCTION_187_2(v2, v3, v4, v5, v6, v7, v8, v9, v22, v24);
  sub_227D4CEA8();
  v10 = *(type metadata accessor for AchievementPlayerKey(0) + 20);
  v11 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v13 = sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
  OUTLINED_FUNCTION_187_2(v13, v14, v15, v16, v17, v18, v19, v20, v23, v25);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CC48FC(uint64_t a1, uint64_t a2)
{
  sub_227D4DB58();
  v3 = OUTLINED_FUNCTION_323();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_42_7();
  v6 = sub_227CCB9FC(v5, &qword_27D7E6D70);
  OUTLINED_FUNCTION_187_2(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28);
  sub_227D4CEA8();
  v14 = *(a2 + 20);
  v15 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v17 = sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
  OUTLINED_FUNCTION_187_2(v17, v18, v19, v20, v21, v22, v23, v24, v27, v29);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CC49F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

void sub_227CC4A1C()
{
  OUTLINED_FUNCTION_450_0();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 40);
  v7 = OUTLINED_FUNCTION_356(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_31_6();
  sub_227CCB9FC(v2, v4);
  OUTLINED_FUNCTION_173();
  sub_227D4CE98();
  OUTLINED_FUNCTION_78_0();
  sub_227CC5AC4();
  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227CC4AAC()
{
  v1 = v0;
  v2 = *v0;
  sub_227CC4A1C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA018, &qword_227D63430);
  sub_227D4D7C8();
  v8 = *(v12 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
  sub_227CCB9FC(&qword_27D7E9FF8, &qword_27D7E83F8);
  sub_227D4D7E8();
  *v1 = v12;
  return v10;
}

uint64_t sub_227CC4C28()
{
  OUTLINED_FUNCTION_602();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v7 = sub_227B2664C(v5, v6);
  if (v8)
  {
    v9 = v7;
    v10 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v28 = *v1;
    v11 = *(*v1 + 24);
    v12 = OUTLINED_FUNCTION_200();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    sub_227D4D7C8();
    v14 = *(*(v28 + 48) + 16 * v9 + 8);

    v15 = *(v28 + 56);
    v16 = OUTLINED_FUNCTION_236();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    OUTLINED_FUNCTION_62_0(v18);
    (*(v19 + 32))(v3, v15 + *(v19 + 72) * v9, v18);
    OUTLINED_FUNCTION_168_1();
    sub_227D4D7E8();
    *v1 = v28;
    OUTLINED_FUNCTION_99();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_236();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_71_0();
  }

  OUTLINED_FUNCTION_449();

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_227CC4D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_227CB67B8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE0, &qword_227D633F8);
    sub_227D4D7C8();
    v11 = *(v19 + 48);
    v12 = type metadata accessor for AchievementPlayerKey(0);
    sub_227CCB950(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for AchievementPlayerKey);
    v13 = *(v19 + 56);
    v14 = sub_227D4A298();
    (*(*(v14 - 8) + 32))(a2, v13 + *(*(v14 - 8) + 72) * v8, v14);
    sub_227CB8EB0(&qword_27D7E9F30, type metadata accessor for AchievementPlayerKey);
    sub_227D4D7E8();
    *v3 = v19;
    v15 = a2;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_227D4A298();
    v15 = a2;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

void sub_227CC4F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v7 = *(*v3 + 24);
  }

  v8 = OUTLINED_FUNCTION_397(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_336();
  v44 = v5;
  v10 = sub_227D4D828();
  if (!*(v6 + 16))
  {
LABEL_30:

LABEL_31:
    *v4 = v10;
    return;
  }

  v42 = v4;
  v43 = v6;
  v11 = 0;
  v13 = (v6 + 64);
  v12 = *(v6 + 64);
  v14 = *(v6 + 32);
  OUTLINED_FUNCTION_18_15();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v20 = v10 + 64;
  if ((v16 & v15) == 0)
  {
LABEL_6:
    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v19)
      {
        break;
      }

      v23 = v13[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_11;
      }
    }

    if ((v44 & 1) == 0)
    {

      v4 = v42;
      goto LABEL_31;
    }

    v41 = 1 << *(v6 + 32);
    v4 = v42;
    if (v41 >= 64)
    {
      sub_227B26E40(0, (v41 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v6 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v24 = v21 | (v11 << 6);
    v25 = (*(v6 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v6 + 56) + 8 * v24);
    if ((v44 & 1) == 0)
    {
      v29 = v25[1];
      sub_227D4CE58();
      sub_227D4CE58();
    }

    v30 = *(v10 + 40);
    sub_227D4DB58();
    sub_227D4D048();
    v31 = sub_227D4DB98();
    v32 = -1 << *(v10 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v40 = (*(v10 + 48) + 16 * v35);
    *v40 = v26;
    v40[1] = v27;
    *(*(v10 + 56) + 8 * v35) = v28;
    ++*(v10 + 16);
    v6 = v43;
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  v36 = 0;
  v37 = (63 - v32) >> 6;
  while (++v34 != v37 || (v36 & 1) == 0)
  {
    v38 = v34 == v37;
    if (v34 == v37)
    {
      v34 = 0;
    }

    v36 |= v38;
    v39 = *(v20 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_227CC5184(_BYTE *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = a1[32];
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v9 = sub_227CC65E8(v18, v12, v9, a2, a4);
      MEMORY[0x22AAA7130](v18, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v13);
  sub_227B26E40(0, v12, v19 - ((8 * v12 + 15) & 0x3FFFFFFFFFFFFFF0));

  v14 = OUTLINED_FUNCTION_82();
  v15 = a3(v14);
  if (v7)
  {
    swift_willThrow();
  }

  else
  {
    v9 = v15;
  }

LABEL_6:

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

size_t sub_227CC535C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA010, &qword_227D64430);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_227CC5464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_397(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = a5(0);
  OUTLINED_FUNCTION_10_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if (result - v14 != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227CC5554()
{
  v1 = *v0;
  sub_227CC5788();
  *v0 = v2;
}

void sub_227CC559C()
{
  v1 = *v0;
  sub_227CC56A4();
  *v0 = v2;
}

void sub_227CC55DC()
{
  v1 = *v0;
  sub_227CC56A4();
  *v0 = v2;
}

void sub_227CC561C()
{
  v1 = *v0;
  sub_227CC56A4();
  *v0 = v2;
}

void sub_227CC565C()
{
  v1 = *v0;
  sub_227CC5788();
  *v0 = v2;
}

void sub_227CC56A4()
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_189_0();
  if (v4)
  {
    OUTLINED_FUNCTION_154();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_119_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_146_6(v2, v3, v4, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_143_2();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_92_3(v14 - 32);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[24 * v11 + 32] <= v13 + 32)
    {
      v16 = OUTLINED_FUNCTION_173();
      memmove(v16, v17, v18);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_87_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_173();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_451_0();
}

void sub_227CC5788()
{
  OUTLINED_FUNCTION_11();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_119_6();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_146_6(v0, v1, v2, v3, v4, v5);
  v17 = v9(0);
  OUTLINED_FUNCTION_10_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_92_3(v23 - v21);
LABEL_18:
  v25 = v9(0);
  OUTLINED_FUNCTION_11_12(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227CC59F8(v10 + v28, v15, v22 + v28, v7);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC590C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227CC59F8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_37();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_62_0(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_87_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_87_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_227CC5AC4()
{
  OUTLINED_FUNCTION_11();
  v23 = v1;
  v24 = v2;
  v4 = v3;
  v20 = v5;
  v22 = v6;
  v7 = OUTLINED_FUNCTION_397(v5, v3, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v25 = v0 + 64;
  v21 = v0;
  v17 = ~(-1 << *(v0 + 32));
  for (i = v4 & v17; ((1 << i) & *(v25 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v17)
  {
    (*(v11 + 16))(v16, *(v21 + 48) + *(v11 + 72) * i, v9);
    OUTLINED_FUNCTION_38_12();
    sub_227CCB9FC(v24, v22);
    v19 = sub_227D4CF38();
    (*(v11 + 8))(v16, v9);
    if (v19)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC5C3C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v72 = a4;
  v53 = a2;
  v54 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v52 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0A8, &qword_227D634D0);
  v8 = *(*(v76 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v76);
  v68 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v52 - v11;
  v12 = sub_227D4A298();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AchievementPlayerKey(0);
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  result = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v22 = 0;
  v71 = a3;
  v25 = a3[8];
  v24 = a3 + 8;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v56 = (v26 + 63) >> 6;
  v57 = v24;
  v61 = (v5 + 16);
  v62 = v13 + 16;
  v66 = v13;
  v67 = v12;
  v59 = (v13 + 8);
  v60 = (v5 + 8);
  v65 = v16;
  v63 = v21;
  while (v28)
  {
    v74 = (v28 - 1) & v28;
    v29 = __clz(__rbit64(v28)) | (v22 << 6);
    v30 = v72;
LABEL_11:
    v33 = v71;
    v34 = v71[6] + *(v64 + 72) * v29;
    sub_227CCB9A8();
    v35 = v33[7];
    v36 = *(v66 + 72);
    v58 = v29;
    v37 = *(v66 + 16);
    v37(v16, v35 + v36 * v29, v12);
    v38 = v75;
    sub_227CCB9A8();
    v37(&v38[*(v76 + 48)], v16, v12);
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    (*(*v30 + 272))(isCurrentExecutor);
    v40 = v75;
    v41 = v68;
    sub_227CCBAFC();
    v73 = *(v76 + 48);
    v42 = v69;
    v43 = v70;
    (*v61)(v69, v41, v70);
    v44 = sub_227CCB950(v41, type metadata accessor for AchievementPlayerKey);
    MEMORY[0x28223BE20](v44);
    *(&v52 - 2) = v42;
    v45 = v77;
    sub_227CC8728();
    v47 = v46;
    v77 = v45;

    sub_227CCBB4C(v40, &qword_27D7EA0A8);
    (*v60)(v42, v43);
    v48 = *v59;
    v49 = v41 + v73;
    v12 = v67;
    (*v59)(v49, v67);
    v16 = v65;
    v48(v65, v12);
    result = sub_227CCB950(v63, type metadata accessor for AchievementPlayerKey);
    v28 = v74;
    if (v47)
    {
      *(v54 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      if (__OFADD__(v55++, 1))
      {
        __break(1u);
LABEL_17:
        v51 = sub_227CC668C(v54, v53, v55, v71);

        return v51;
      }
    }
  }

  v31 = v22;
  v30 = v72;
  while (1)
  {
    v22 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v22 >= v56)
    {
      goto LABEL_17;
    }

    v32 = v57[v22];
    ++v31;
    if (v32)
    {
      v74 = (v32 - 1) & v32;
      v29 = __clz(__rbit64(v32)) | (v22 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227CC622C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a4;
  v39 = a2;
  v40 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA060, &qword_227D63478);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  v41 = 0;
  v13 = 0;
  v49 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46 = v10;
  v47 = result;
  v43 = (v10 + 8);
  v44 = v10 + 16;
  v45 = v12;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v51 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = v49;
    v26 = *(v46 + 16);
    v26(v12, v49[6] + *(v46 + 72) * v24, v7);
    v27 = v25[7];
    v42 = v24;
    v28 = *(v27 + 8 * v24);
    v29 = v52;
    v26(v52, v12, v7);
    *&v29[*(v48 + 48)] = v28;
    swift_bridgeObjectRetain_n();
    v30 = v50;
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v32 = (*(*v30 + 416))(isCurrentExecutor);
    MEMORY[0x28223BE20](v32);
    v33 = v52;
    *(&v39 - 2) = v52;
    v34 = v53;
    sub_227CC8728();
    v36 = v35;
    v53 = v34;

    sub_227CCBB4C(v33, &qword_27D7EA060);

    v12 = v45;
    v7 = v47;
    result = (*v43)(v45, v47);
    v19 = v51;
    if (v36)
    {
      *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_17:
        v38 = sub_227CC6BC8(v40, v39, v41, v49);

        return v38;
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_17;
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_227CC65E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v6 = OUTLINED_FUNCTION_82();
    v7 = a5(v6);

    return v7;
  }

  return result;
}

uint64_t sub_227CC668C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = sub_227D4A298();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v60 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v44 - v12;
  v13 = type metadata accessor for AchievementPlayerKey(0);
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = *(v51 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v50 = &v44 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0B0, &qword_227D634D8);
  result = sub_227D4D838();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v48 = v8 + 16;
  v58 = v8 + 32;
  v22 = result + 64;
  v49 = a1;
  v47 = a2;
  v46 = a4;
  v45 = v8;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v54 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[6];
    v57 = *(v51 + 72);
    sub_227CCB9A8();
    v28 = a4[7];
    v56 = *(v8 + 72);
    v29 = v28 + v56 * v26;
    v30 = v53;
    v31 = v61;
    (*(v8 + 16))(v53, v29, v61);
    sub_227CCBBA0();
    v55 = *(v8 + 32);
    v55(v60, v30, v31);
    v32 = *(v19 + 40);
    sub_227D4DB58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
    sub_227CCB9FC(&qword_27D7E9F40, &qword_27D7E6D70);
    sub_227D4CEA8();
    v33 = *(v52 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
    sub_227D4CEA8();
    result = sub_227D4DB98();
    v34 = -1 << *(v19 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a1 = v49;
      a2 = v47;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v22 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a1 = v49;
    a2 = v47;
LABEL_25:
    *(v22 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v42 = *(v19 + 48);
    sub_227CCBBA0();
    result = (v55)(*(v19 + 56) + v37 * v56, v60, v61);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v46;
    v8 = v45;
    v20 = v54;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v54 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227CC6BC8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA068, &qword_227D63480);
  result = sub_227D4D838();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_227CCB9FC(&qword_27D7E9FB8, &qword_27D7E6938);
    v44 = v24;
    sub_227D4CE58();
    result = sub_227D4CE98();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_25:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227CC6F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *v2;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0C0, &qword_227D634E8);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_227CC4A1C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_227CC8574(v14, v10, a1, v19);
  }
}

uint64_t sub_227CC7180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *v2;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA070, &qword_227D63488);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_227CC4A1C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_227CC8574(v14, v10, a1, v19);
  }
}

uint64_t sub_227CC7398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *v2;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA078, &qword_227D63490);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_227CC4A1C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_227CC8574(v14, v10, a1, v19);
  }
}

uint64_t sub_227CC75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_602();
  v54 = v15;
  v55 = v16;
  v18 = v17;
  v20 = v19;
  v21 = v14;
  v23 = v22;
  v25 = v24;
  v26 = *v14;
  v28 = OUTLINED_FUNCTION_356(v27, v24);
  sub_227B2664C(v28, v29);
  OUTLINED_FUNCTION_5_19();
  if (__OFADD__(v32, v33))
  {
    __break(1u);
    goto LABEL_13;
  }

  v34 = v30;
  v35 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v18);
  if ((OUTLINED_FUNCTION_144_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v36 = *v21;
  v37 = sub_227B2664C(v25, v23);
  if ((v35 & 1) != (v38 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v34 = v37;
LABEL_5:
  if (v35)
  {
    v39 = *(*v21 + 56);
    v40 = v54(0);
    OUTLINED_FUNCTION_62_0(v40);
    v42 = *(v41 + 40);
    v43 = v39 + *(v41 + 72) * v34;
    OUTLINED_FUNCTION_449();

    return v47(v44, v45, v46, v47, v48, v49, v50, v51, v54, v55, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_227CC8364();
    OUTLINED_FUNCTION_449();

    return sub_227D4CE58();
  }
}

void sub_227CC7700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v25 = a1;
  v26 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *v4;
  sub_227CC4A1C();
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA080, &unk_227D63498);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  sub_227CC4A1C();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_10:
    sub_227D4DAE8();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 24 * v16;
    v23 = v26;
    *v22 = v25;
    *(v22 + 8) = v23;
    *(v22 + 16) = a3 & 1;
    *(v22 + 17) = BYTE1(a3) & 1;
    *(v22 + 18) = BYTE2(a3) & 1;
  }

  else
  {
    (*(v9 + 16))(v12, a4, v8);
    sub_227CC8270(v16, v12, v25, v26, a3 & 0x10101, v21);
  }
}

uint64_t sub_227CC7910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_602();
  v54 = v16;
  v55 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v14;
  v24 = *v14;
  v26 = OUTLINED_FUNCTION_356(v15, v25);
  sub_227B2664C(v26, v27);
  OUTLINED_FUNCTION_5_19();
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_13;
  }

  v32 = v28;
  v33 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(v22, v20);
  if ((OUTLINED_FUNCTION_144_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  v34 = *v23;
  v35 = OUTLINED_FUNCTION_236();
  v37 = sub_227B2664C(v35, v36);
  if ((v33 & 1) != (v38 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v32 = v37;
LABEL_5:
  if (v33)
  {
    v39 = *(*v23 + 56);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v54);
    OUTLINED_FUNCTION_62_0(v40);
    v42 = *(v41 + 40);
    v43 = v39 + *(v41 + 72) * v32;
    OUTLINED_FUNCTION_449();

    return v47(v44, v45, v46, v47, v48, v49, v50, v51, v54, v55, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_227CC83F4();
    OUTLINED_FUNCTION_449();

    return sub_227D4CE58();
  }
}

uint64_t sub_227CC7A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *v2;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA018, &qword_227D63430);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_227CC4A1C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_227CC8574(v14, v10, a1, v19);
  }
}

uint64_t sub_227CC7C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *v2;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA028, &qword_227D63438);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_227CC4A1C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_227CC8574(v14, v10, a1, v19);
  }
}

uint64_t sub_227CC7E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AchievementPlayerKey(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_227CB67B8(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE0, &qword_227D633F8);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_227CB67B8(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v3;
  if (v14)
  {
    v19 = v18[7];
    v20 = sub_227D4A298();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v13;

    return v22(v24, a1, v23);
  }

  else
  {
    sub_227CCB9A8();
    return sub_227CC8484(v13, v9, a1, v18);
  }
}

uint64_t sub_227CC8058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = *v2;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FD0, &qword_227D633E8);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  sub_227CC4A1C();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v3;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    return sub_227CC8574(v14, v10, a1, v19);
  }
}

uint64_t sub_227CC8270(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5 & 1;
  *(v15 + 17) = BYTE1(a5) & 1;
  *(v15 + 18) = BYTE2(a5) & 1;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_227CC8364()
{
  OUTLINED_FUNCTION_118_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_18(v5 + 8 * (v3 >> 6));
  OUTLINED_FUNCTION_140_2(v6, v7, v8, v9, v10);
  v12 = v11(0);
  OUTLINED_FUNCTION_6_15(v12);
  result = (*(v13 + 32))(v2 + *(v13 + 72) * v4, v1);
  v15 = *(v0 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v17;
  }

  return result;
}

uint64_t sub_227CC83F4()
{
  OUTLINED_FUNCTION_118_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_18(v5 + 8 * (v3 >> 6));
  OUTLINED_FUNCTION_140_2(v6, v7, v8, v9, v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_6_15(v13);
  result = (*(v14 + 32))(v2 + *(v14 + 72) * v4, v1);
  v16 = *(v0 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v18;
  }

  return result;
}

uint64_t sub_227CC8484(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for AchievementPlayerKey(0) - 8) + 72);
  sub_227CCBBA0();
  v9 = a4[7];
  v10 = sub_227D4A298();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_227CC8574(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_18(a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v15 = OUTLINED_FUNCTION_146_6(v10, v11, v12, v8, v13, v14);
  OUTLINED_FUNCTION_6_15(v15);
  result = (*(v16 + 32))(v9 + *(v16 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v18 = *(a4 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v20;
  }

  return result;
}

uint64_t sub_227CC8614()
{
  OUTLINED_FUNCTION_118_4();
  v2 = v1;
  v5 = OUTLINED_FUNCTION_397(v3, v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_38_12();
  sub_227CCB9FC(v0, v2);
  OUTLINED_FUNCTION_82();
  return sub_227D4CF38() & 1;
}

uint64_t sub_227CC8698()
{
  if (sub_227CC1684())
  {
    v0 = *(type metadata accessor for AchievementPlayerKey(0) + 20);
    v1 = sub_227CC1684();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_227CC8728()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v25 = v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_9(v24);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_0();
  v22 = v10;
  v23 = v9;
  v21 = v2 + 64;
  v11 = 1 << *(v2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v2 + 64);
  v14 = (v11 + 63) >> 6;
  v26 = v2;
  sub_227D4CE58();
  v15 = 0;
  while (v13)
  {
LABEL_9:
    (*(v22 + 16))(v23, *(v26 + 56) + *(v22 + 72) * (__clz(__rbit64(v13)) | (v15 << 6)), v24);
    v17 = v25(v23);
    v18 = *(v22 + 8);
    v19 = OUTLINED_FUNCTION_173();
    v20(v19);
    if (!v0)
    {
      v13 &= v13 - 1;
      if ((v17 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    OUTLINED_FUNCTION_352();
    return;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_11;
    }

    v13 = *(v21 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_227CC8900(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for AchievementPlayerKey(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_227CC89D4(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_227CC8CA8(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &unk_27D7E9FD8, &unk_227D633F0, type metadata accessor for AchievementPlayerKey, type metadata accessor for AchievementPlayerKey);
    *v2 = v8;
  }
}

void sub_227CC8A64(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_227CC8CA8(v2 > 1, a1 + 1, 1, *v1, &unk_27D7E9FD8, &unk_227D633F0, type metadata accessor for AchievementPlayerKey, type metadata accessor for AchievementPlayerKey);
    *v1 = v3;
  }
}

size_t sub_227CC8ACC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_227CC535C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227CC590C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_227CC8BC4()
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_189_0();
  if (v4)
  {
    OUTLINED_FUNCTION_154();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_119_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_146_6(v2, v3, v4, v5, v6, v7);
    v13 = OUTLINED_FUNCTION_143_2();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_92_3(v14 - 32);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[24 * v11 + 32] <= v13 + 32)
    {
      v16 = OUTLINED_FUNCTION_173();
      memmove(v16, v17, v18);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_87_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_173();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_451_0();
}

void sub_227CC8CA8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_119_6();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_227CC5464(v15, v12, a5, a6, a7);
  v17 = a8(0);
  OUTLINED_FUNCTION_11_12(v17);
  v19 = *(v18 + 80);
  OUTLINED_FUNCTION_19();
  if (a1)
  {
    sub_227CC59F8(a4 + v20, v15, v16 + v20, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_227CC8D9C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_227CC8CA8(0, *(v1 + 16) + 1, 1, v1, &unk_27D7E9FD8, &unk_227D633F0, type metadata accessor for AchievementPlayerKey, type metadata accessor for AchievementPlayerKey);
    *v0 = v3;
  }
}

void sub_227CC8E10(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = 0;
  v37 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v37 == v8)
    {

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_227D4DAE8();
      __break(1u);
      goto LABEL_22;
    }

    v11 = *(i - 2);
    v10 = *(i - 1);
    v12 = *i;
    v13 = *a3;
    sub_227D4CE58();
    sub_227D4CE58();
    v14 = OUTLINED_FUNCTION_236();
    v16 = sub_227B2664C(v14, v15);
    OUTLINED_FUNCTION_5_19();
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v17;
    if (v13[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      sub_227D4D7D8();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v27 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v28 = (v27[6] + 16 * v16);
    *v28 = v11;
    v28[1] = v10;
    *(v27[7] + 8 * v16) = v12;
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v27[2] = v31;
    ++v8;
    a2 = 1;
  }

  sub_227CC4F04(v20, a2 & 1, a4);
  v22 = *a3;
  v23 = OUTLINED_FUNCTION_236();
  v25 = sub_227B2664C(v23, v24);
  if ((v21 & 1) != (v26 & 1))
  {
    goto LABEL_21;
  }

  v16 = v25;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  OUTLINED_FUNCTION_208();
  v32 = swift_allocError();
  swift_willThrow();
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_227D4D668();
  MEMORY[0x22AAA5DA0](0xD00000000000001BLL, 0x8000000227D77FE0);
  sub_227D4D7B8();
  MEMORY[0x22AAA5DA0](39, 0xE100000000000000);
  sub_227D4D7F8();
  __break(1u);
}

uint64_t sub_227CC90E4(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AchievementPlayerKey(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *v4;
  result = sub_227CC93EC(a1, a2, *v4);
  v42 = v3;
  if (!v3)
  {
    v39 = v17;
    v41 = result;
    v36 = v12;
    if (v20)
    {
      return *(v18 + 16);
    }

    else
    {
      v34 = v4;
      v21 = v41 + 1;
      if (!__OFADD__(v41, 1))
      {
        v22 = v39;
        v37 = a1;
        v38 = v8;
        v35 = v15;
        while (1)
        {
          v23 = *(v18 + 16);
          if (v21 == v23)
          {
            return v41;
          }

          if (v21 >= v23)
          {
            break;
          }

          v40 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v24 = *(v8 + 72);
          v25 = v21;
          v26 = v24 * v21;
          sub_227CCB9A8();
          v27 = v42;
          v28 = a1(v22);
          result = sub_227CCB950(v22, type metadata accessor for AchievementPlayerKey);
          v42 = v27;
          if (v27)
          {
            return result;
          }

          if (v28)
          {
            a1 = v37;
            v22 = v39;
          }

          else
          {
            v29 = v41;
            v22 = v39;
            if (v21 != v41)
            {
              if ((v41 & 0x8000000000000000) != 0)
              {
                goto LABEL_24;
              }

              v30 = *(v18 + 16);
              if (v41 >= v30)
              {
                goto LABEL_25;
              }

              v31 = v24 * v41;
              result = sub_227CCB9A8();
              if (v25 >= v30)
              {
                goto LABEL_26;
              }

              v21 = v25;
              sub_227CCB9A8();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_227CC95A8(v18);
                v18 = v33;
              }

              v32 = v18 + v40;
              result = sub_227CCB8EC(v36, v18 + v40 + v31);
              if (v25 >= *(v18 + 16))
              {
                goto LABEL_27;
              }

              result = sub_227CCB8EC(v35, v32 + v26);
              *v34 = v18;
              v29 = v41;
            }

            v41 = v29 + 1;
            a1 = v37;
          }

          ++v21;
          v8 = v38;
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_227CC93EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for AchievementPlayerKey(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_227CC94D0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(sub_227D4A0E8() - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227CCB89C(v9);
    v9 = v10;
  }

  v11 = *(v9 + 16);
  v13[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[1] = v11;
  result = sub_227CC9648(v13, a2, a3, a4 & 0x10101);
  *a1 = v9;
  return result;
}

uint64_t sub_227CC9648(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a1[1];
  result = sub_227D4DA28();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227D4A0E8();
        v12 = sub_227D4D218();
        *(v12 + 16) = v11;
      }

      v13 = *(sub_227D4A0E8() - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_227CC9B78(v14, v15, a1, v10, a2, a3, a4 & 0x10101);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_227CC97BC(0, v8, 1, a1, a2, a3, a4 & 0x10101);
  }

  return result;
}

uint64_t sub_227CC97BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7)
{
  v69 = a7;
  v61 = sub_227D492A8();
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v61);
  v60 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v50 - v15;
  v16 = sub_227D4A0E8();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v50 - v21;
  result = MEMORY[0x28223BE20](v20);
  v52 = a2;
  if (a3 != a2)
  {
    v26 = &v50 - v24;
    v27 = *a4;
    v29 = *(v25 + 16);
    v28 = v25 + 16;
    v30 = *(v28 + 56);
    v57 = v16;
    v58 = (v11 + 8);
    v66 = (v28 - 8);
    v67 = v29;
    v68 = v28;
    v31 = v27 + v30 * (a3 - 1);
    v62 = -v30;
    v63 = (v28 + 16);
    v32 = a1 - a3;
    v64 = v27;
    v51 = v30;
    v33 = v27 + v30 * a3;
    v70 = &v50 - v24;
    while (2)
    {
      v55 = v31;
      v56 = a3;
      v53 = v33;
      v54 = v32;
      v34 = v32;
      do
      {
        v35 = v67;
        v67(v26, v33, v16);
        v35(v22, v31, v16);
        if ((v69 & 0x10000) != 0)
        {
          v44 = sub_227D4A0B8();
          v39 = sub_227D4A0B8() < v44;
        }

        else
        {
          v36 = v22;
          v37 = v59;
          sub_227D4A068();
          v38 = v60;
          sub_227D4A068();
          v39 = sub_227D49208();
          v40 = *v58;
          v41 = v38;
          v42 = v61;
          (*v58)(v41, v61);
          v43 = v37;
          v22 = v36;
          v26 = v70;
          v40(v43, v42);
          v16 = v57;
        }

        v45 = *v66;
        (*v66)(v22, v16);
        result = (v45)(v26, v16);
        if ((v39 & 1) == 0)
        {
          break;
        }

        if (!v64)
        {
          __break(1u);
          return result;
        }

        v46 = *v63;
        v47 = v65;
        (*v63)(v65, v33, v16);
        swift_arrayInitWithTakeFrontToBack();
        v48 = v47;
        v26 = v70;
        result = (v46)(v31, v48, v16);
        v31 += v62;
        v33 += v62;
      }

      while (!__CFADD__(v34++, 1));
      a3 = v56 + 1;
      v31 = v55 + v51;
      v32 = v54 - 1;
      v33 = v53 + v51;
      if (v56 + 1 != v52)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227CC9B78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v7) = a7;
  v168 = a6;
  v167 = a5;
  v155 = a1;
  v176 = sub_227D492A8();
  v10 = *(v176 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v176);
  v175 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v174 = &v152 - v14;
  v15 = sub_227D4A0E8();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v160 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v180 = &v152 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v152 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v185 = &v152 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v163 = &v152 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v162 = &v152 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  result = MEMORY[0x28223BE20](v30);
  v169 = v33;
  v170 = a3;
  v35 = *(a3 + 8);
  v187 = v7;
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_111:
    v186 = *v155;
    if (!v186)
    {
      goto LABEL_153;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    LODWORD(a3) = 65792;
    if (result)
    {
LABEL_113:
      v144 = (v37 + 16);
      v145 = *(v37 + 16);
      LODWORD(v185) = v7 & a3;
      v146 = v171;
      while (v145 >= 2)
      {
        if (!*v170)
        {
          goto LABEL_150;
        }

        v7 = v37;
        v37 += 16 * v145;
        v147 = *v37;
        v148 = &v144[2 * v145];
        v149 = v148[1];
        sub_227CCA948(*v170 + *(v169 + 72) * *v37, *v170 + *(v169 + 72) * *v148, *v170 + *(v169 + 72) * v149, v186, v167, v168, v185 | v187 & 1);
        LODWORD(a3) = v146;
        if (v146)
        {
          break;
        }

        if (v149 < v147)
        {
          goto LABEL_138;
        }

        if (v145 - 2 >= *v144)
        {
          goto LABEL_139;
        }

        *v37 = v147;
        *(v37 + 8) = v149;
        v150 = *v144 - v145;
        if (*v144 < v145)
        {
          goto LABEL_140;
        }

        v145 = *v144 - 1;
        result = memmove(v148, v148 + 2, 16 * v150);
        *v144 = v145;
        v37 = v7;
      }
    }

LABEL_147:
    result = sub_227B65968(v37);
    v37 = result;
    goto LABEL_113;
  }

  v154 = &v152 - v32;
  v152 = v34;
  v36 = 0;
  v183 = v33 + 16;
  v165 = v7 & 0x10100;
  v184 = (v33 + 8);
  v173 = (v10 + 8);
  v182 = (v33 + 32);
  v37 = MEMORY[0x277D84F90];
  v157 = a4;
  v177 = v15;
  v186 = v23;
  while (1)
  {
    v38 = v36;
    v172 = v36 + 1;
    if (v36 + 1 >= v35)
    {
      v51 = v185;
    }

    else
    {
      v178 = v35;
      v39 = *v170;
      v40 = *(v33 + 72);
      v41 = *v170 + v40 * (v36 + 1);
      v42 = v15;
      v43 = *(v33 + 16);
      v43(v154, v41, v15);
      v179 = v40;
      v156 = v38;
      v44 = v152;
      v164 = v43;
      v43(v152, v39 + v40 * v38, v42);
      v45 = v154;
      sub_227CC30D8();
      LODWORD(v166) = v46;
      if (v171)
      {
        v151 = *v184;
        (*v184)(v44, v42);
        v151(v45, v42);
      }

      v153 = v37;
      v47 = *v184;
      (*v184)(v44, v42);
      v161 = v47;
      result = (v47)(v45, v42);
      v48 = (v156 + 2);
      v49 = v178;
      v37 = v179;
      v50 = v39 + v179 * (v156 + 2);
      v51 = v185;
      v23 = v186;
      a3 = v172;
      while (1)
      {
        v52 = v48;
        if (a3 + 1 >= v49)
        {
          break;
        }

        v181 = v48;
        v53 = v23;
        v172 = a3;
        v54 = v162;
        v55 = v177;
        v56 = v164;
        (v164)(v162, v50, v177);
        v57 = v163;
        v56(v163, v41, v55);
        if ((v7 & 0x10000) != 0)
        {
          v66 = sub_227D4A0B8();
          v60 = sub_227D4A0B8() < v66;
          v65 = v57;
          v37 = v179;
        }

        else
        {
          v58 = v174;
          sub_227D4A068();
          v59 = v175;
          sub_227D4A068();
          v60 = sub_227D49208();
          v61 = *v173;
          v62 = v59;
          v63 = v176;
          (*v173)(v62, v176);
          v64 = v63;
          v53 = v186;
          v61(v58, v64);
          v37 = v179;
          v65 = v57;
        }

        v67 = v177;
        v68 = v161;
        (v161)(v65, v177);
        result = v68(v54, v67);
        v50 += v37;
        v41 += v37;
        a3 = v172 + 1;
        v52 = v181;
        v48 = v181 + 1;
        v69 = (v166 & 1) == (v60 & 1);
        LODWORD(v7) = v187;
        v51 = v185;
        v23 = v53;
        v49 = v178;
        if (!v69)
        {
          goto LABEL_14;
        }
      }

      a3 = v49;
LABEL_14:
      v172 = a3;
      if (v166)
      {
        v38 = v156;
        a4 = v157;
        v15 = v177;
        if (a3 < v156)
        {
          goto LABEL_146;
        }

        v70 = v23;
        v71 = a3;
        if (v156 >= a3)
        {
          v37 = v153;
          v23 = v70;
          goto LABEL_37;
        }

        v72 = v49 >= v52 ? v52 : v49;
        a3 = v37 * (v72 - 1);
        v73 = v37;
        v74 = v156;
        v75 = v73 * v72;
        v76 = v156 * v73;
        v77 = v171;
        do
        {
          if (v74 != --v71)
          {
            v78 = *v170;
            if (!*v170)
            {
              goto LABEL_151;
            }

            v181 = *v182;
            (v181)(v160, v78 + v76, v15);
            v79 = v76 < a3 || v78 + v76 >= (v78 + v75);
            if (v79)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v181)(v78 + a3, v160, v15);
            a4 = v157;
            v51 = v185;
            v70 = v186;
          }

          ++v74;
          a3 -= v179;
          v75 -= v179;
          v76 += v179;
        }

        while (v74 < v71);
        v171 = v77;
        LODWORD(v7) = v187;
        v37 = v153;
        v23 = v70;
      }

      else
      {
        a4 = v157;
        v37 = v153;
        v15 = v177;
      }

      v38 = v156;
    }

LABEL_37:
    v80 = v170[1];
    if (v172 < v80)
    {
      if (__OFSUB__(v172, v38))
      {
        goto LABEL_143;
      }

      if (v172 - v38 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v172 < v38)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v37 + 16) + 1, 1, v37);
      v37 = result;
    }

    a3 = *(v37 + 16);
    v102 = *(v37 + 24);
    v103 = a3 + 1;
    if (a3 >= v102 >> 1)
    {
      result = sub_227B63228((v102 > 1), a3 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 16) = v103;
    v7 = v37 + 32;
    v104 = (v37 + 32 + 16 * a3);
    v105 = v172;
    *v104 = v38;
    v104[1] = v105;
    v181 = *v155;
    if (!v181)
    {
      goto LABEL_152;
    }

    if (a3)
    {
      while (1)
      {
        v106 = v103 - 1;
        v107 = (v7 + 16 * (v103 - 1));
        v108 = (v37 + 16 * v103);
        if (v103 >= 4)
        {
          break;
        }

        if (v103 == 3)
        {
          v109 = *(v37 + 32);
          v110 = *(v37 + 40);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_79:
          if (v112)
          {
            goto LABEL_129;
          }

          v124 = *v108;
          v123 = v108[1];
          v125 = __OFSUB__(v123, v124);
          v126 = v123 - v124;
          v127 = v125;
          if (v125)
          {
            goto LABEL_132;
          }

          v128 = v107[1];
          v129 = v128 - *v107;
          if (__OFSUB__(v128, *v107))
          {
            goto LABEL_135;
          }

          if (__OFADD__(v126, v129))
          {
            goto LABEL_137;
          }

          if (v126 + v129 >= v111)
          {
            if (v111 < v129)
            {
              v106 = v103 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v103 < 2)
        {
          goto LABEL_131;
        }

        v131 = *v108;
        v130 = v108[1];
        v119 = __OFSUB__(v130, v131);
        v126 = v130 - v131;
        v127 = v119;
LABEL_94:
        if (v127)
        {
          goto LABEL_134;
        }

        v133 = *v107;
        v132 = v107[1];
        v119 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v119)
        {
          goto LABEL_136;
        }

        if (v134 < v126)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v106 - 1 >= v103)
        {
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
LABEL_129:
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
          goto LABEL_145;
        }

        if (!*v170)
        {
          goto LABEL_149;
        }

        a3 = v7 + 16 * (v106 - 1);
        v138 = *a3;
        v139 = (v7 + 16 * v106);
        v140 = v139[1];
        v141 = v171;
        sub_227CCA948(*v170 + *(v169 + 72) * *a3, *v170 + *(v169 + 72) * *v139, *v170 + *(v169 + 72) * v140, v181, v167, v168, v165 | v187 & 1);
        if (v141)
        {
        }

        if (v140 < v138)
        {
          goto LABEL_124;
        }

        v142 = v37;
        v37 = *(v37 + 16);
        if (v106 > v37)
        {
          goto LABEL_125;
        }

        *a3 = v138;
        *(a3 + 8) = v140;
        if (v106 >= v37)
        {
          goto LABEL_126;
        }

        v171 = 0;
        v103 = v37 - 1;
        result = memmove((v7 + 16 * v106), v139 + 2, 16 * (v37 - 1 - v106));
        *(v142 + 16) = v37 - 1;
        v143 = v37 > 2;
        v37 = v142;
        v23 = v186;
        if (!v143)
        {
          goto LABEL_108;
        }
      }

      v113 = v7 + 16 * v103;
      v114 = *(v113 - 64);
      v115 = *(v113 - 56);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_127;
      }

      v118 = *(v113 - 48);
      v117 = *(v113 - 40);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_128;
      }

      v120 = v108[1];
      v121 = v120 - *v108;
      if (__OFSUB__(v120, *v108))
      {
        goto LABEL_130;
      }

      v119 = __OFADD__(v111, v121);
      v122 = v111 + v121;
      if (v119)
      {
        goto LABEL_133;
      }

      if (v122 >= v116)
      {
        v136 = *v107;
        v135 = v107[1];
        v119 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v119)
        {
          goto LABEL_141;
        }

        if (v111 < v137)
        {
          v106 = v103 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v33 = v169;
    v35 = v170[1];
    v36 = v172;
    LODWORD(v7) = v187;
    a4 = v157;
    if (v172 >= v35)
    {
      goto LABEL_111;
    }
  }

  if (__OFADD__(v38, a4))
  {
    goto LABEL_144;
  }

  if (v38 + a4 >= v80)
  {
    v81 = v170[1];
  }

  else
  {
    v81 = v38 + a4;
  }

  if (v81 < v38)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v172 == v81)
  {
    goto LABEL_59;
  }

  v153 = v37;
  v82 = *v170;
  v83 = *(v169 + 72);
  v181 = *(v169 + 16);
  v84 = v82 + v83 * (v172 - 1);
  v178 = -v83;
  v156 = v38;
  v85 = (v38 - v172);
  v179 = v82;
  v158 = v83;
  v86 = (v82 + v172 * v83);
  v159 = v81;
LABEL_47:
  v161 = v86;
  v164 = v85;
  v166 = v84;
  v87 = v84;
  while (1)
  {
    v88 = v181;
    (v181)(v51, v86, v15);
    v88(v23, v87, v15);
    if ((v7 & 0x10000) != 0)
    {
      a3 = v51;
      v98 = sub_227D4A0B8();
      v91 = sub_227D4A0B8() < v98;
    }

    else
    {
      v89 = v174;
      a3 = v51;
      sub_227D4A068();
      v90 = v175;
      sub_227D4A068();
      v91 = sub_227D49208();
      v92 = *v173;
      v93 = v90;
      v94 = v176;
      (*v173)(v93, v176);
      v95 = v89;
      v15 = v177;
      v96 = v94;
      v97 = v186;
      v92(v95, v96);
      v23 = v97;
    }

    v99 = *v184;
    (*v184)(v23, v15);
    result = (v99)(a3, v15);
    if ((v91 & 1) == 0)
    {
      LODWORD(v7) = v187;
      v51 = v185;
LABEL_57:
      v84 = v166 + v158;
      v85 = v164 - 1;
      v86 = &v161[v158];
      if (++v172 == v159)
      {
        v172 = v159;
        v37 = v153;
        v38 = v156;
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    LODWORD(v7) = v187;
    if (!v179)
    {
      break;
    }

    LODWORD(a3) = v182;
    v100 = *v182;
    v101 = v180;
    (*v182)(v180, v86, v15);
    swift_arrayInitWithTakeFrontToBack();
    v100(v87, v101, v15);
    v87 += v178;
    v86 += v178;
    v79 = __CFADD__(v85++, 1);
    v51 = v185;
    v23 = v186;
    if (v79)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_227CCA948(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v94 = a7;
  v95 = a3;
  v96 = a2;
  v97 = a1;
  v88 = sub_227D492A8();
  v8 = *(v88 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v88);
  v87 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v78 - v12;
  v13 = sub_227D4A0E8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v78 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v91 = &v78 - v22;
  result = MEMORY[0x28223BE20](v21);
  v90 = &v78 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v28 = v96 - v97;
  v29 = v96 - v97 == 0x8000000000000000 && v27 == -1;
  if (v29)
  {
    goto LABEL_67;
  }

  v30 = v95 - v96;
  if (v95 - v96 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_68;
  }

  v32 = v28 / v27;
  v100 = v97;
  v99 = a4;
  v84 = v13;
  v85 = (v8 + 8);
  v92 = (v24 + 8);
  v93 = (v24 + 16);
  v33 = v30 / v27;
  if (v28 / v27 >= v30 / v27)
  {
    sub_227CC59F8(v96, v30 / v27, a4, MEMORY[0x277D0D080]);
    v55 = (a4 + v33 * v27);
    v56 = -v27;
    v57 = v55;
    v83 = v56;
    v81 = a4;
LABEL_40:
    v58 = v95;
    v59 = v96 + v56;
    v79 = v57;
    v60 = v57;
    v82 = v96 + v56;
    while (1)
    {
      if (v55 <= a4)
      {
        v100 = v96;
        v98 = v60;
        goto LABEL_65;
      }

      if (v96 <= v97)
      {
        break;
      }

      v90 = v58;
      v91 = v55;
      v80 = v60;
      v61 = &v55[v56];
      v62 = *v93;
      (*v93)(v20, v61, v13);
      v62(v17, v59, v13);
      if ((v94 & 0x10000) != 0)
      {
        v70 = sub_227D4A0B8();
        v89 = sub_227D4A0B8() < v70;
        v63 = v17;
        v65 = v20;
      }

      else
      {
        v63 = v17;
        v64 = v86;
        sub_227D4A068();
        v65 = v20;
        v66 = v87;
        sub_227D4A068();
        v89 = sub_227D49208();
        v67 = *v85;
        v68 = v66;
        v69 = v88;
        (*v85)(v68, v88);
        v67(v64, v69);
        v56 = v83;
        v13 = v84;
      }

      v71 = v90;
      v95 = &v90[v56];
      v72 = *v92;
      v73 = v63;
      (*v92)(v63, v13);
      v20 = v65;
      v72(v65, v13);
      if (v89)
      {
        v75 = v71 < v96 || v95 >= v96;
        a4 = v81;
        v76 = v82;
        if (v75)
        {
          swift_arrayInitWithTakeFrontToBack();
          v96 = v76;
          v57 = v80;
          v17 = v63;
          v56 = v83;
          v55 = v91;
        }

        else
        {
          v77 = v80;
          v57 = v80;
          v29 = v71 == v96;
          v96 = v82;
          v17 = v73;
          v56 = v83;
          v55 = v91;
          if (!v29)
          {
            swift_arrayInitWithTakeBackToFront();
            v96 = v76;
            v57 = v77;
          }
        }

        goto LABEL_40;
      }

      v74 = v71 < v91 || v95 >= v91;
      a4 = v81;
      v59 = v82;
      if (v74)
      {
        v58 = v95;
        swift_arrayInitWithTakeFrontToBack();
        v55 = v61;
        v60 = v61;
        v17 = v73;
        v56 = v83;
      }

      else
      {
        v60 = v61;
        v29 = v91 == v71;
        v58 = v95;
        v55 = v61;
        v17 = v73;
        v56 = v83;
        if (!v29)
        {
          v58 = v95;
          swift_arrayInitWithTakeBackToFront();
          v55 = v61;
          v60 = v61;
        }
      }
    }

    v100 = v96;
    v98 = v79;
  }

  else
  {
    sub_227CC59F8(v97, v32, a4, MEMORY[0x277D0D080]);
    v34 = a4 + v32 * v27;
    v98 = v34;
    v35 = v27;
    v37 = v90;
    v36 = v91;
    while (a4 < v34 && v96 < v95)
    {
      v39 = *v93;
      (*v93)(v37, v96, v13);
      v39(v36, a4, v13);
      if ((v94 & 0x10000) != 0)
      {
        v50 = sub_227D4A0B8();
        v43 = sub_227D4A0B8() < v50;
      }

      else
      {
        v40 = v34;
        v41 = v86;
        sub_227D4A068();
        v42 = v87;
        sub_227D4A068();
        v43 = sub_227D49208();
        v44 = *v85;
        v45 = v42;
        v46 = a4;
        v47 = v88;
        (*v85)(v45, v88);
        v48 = v41;
        v34 = v40;
        v49 = v47;
        a4 = v46;
        v37 = v90;
        v44(v48, v49);
        v36 = v91;
        v13 = v84;
      }

      v51 = *v92;
      (*v92)(v36, v13);
      v51(v37, v13);
      if (v43)
      {
        v52 = v96 + v35;
        if (v97 < v96 || v97 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v97 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v96 = v52;
      }

      else
      {
        if (v97 < a4 || v97 >= a4 + v35)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v97 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v99 = a4 + v35;
        a4 += v35;
      }

      v97 += v35;
      v100 = v97;
    }
  }

LABEL_65:
  sub_227CCB08C(&v100, &v99, &v98);
  return 1;
}

uint64_t sub_227CCB08C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_227D4A0E8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227CCB1D4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = (*(a5 + 48) + 16 * a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = sub_227D4A4D8();
    (*(*(v11 - 8) + 16))(v6, v7 + *(*(v11 - 8) + 72) * a2, v11);
    sub_227D4CE58();
    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_227CCB2A8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_227CC89D4(result, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for AchievementPlayerKey(0) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_227CC59F8(v10 + v11 * a2, v13 - a2, v12, type metadata accessor for AchievementPlayerKey);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}