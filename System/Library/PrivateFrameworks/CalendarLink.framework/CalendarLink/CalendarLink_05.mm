uint64_t (*CreateEventIntent_v0.floatingTimeZoneID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static CreateEventIntent_v0.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38B0, &qword_2428BDF30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38B8, &qword_2428BDF38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_242822740();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38C8, &qword_2428BDF68);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38D0, &qword_2428BDF98);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242840BEC()
{
  swift_getKeyPath();
  sub_242822740();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v1 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v2 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v3 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v4 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v5 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BDE70;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  sub_2428B2F38();
  v7 = sub_2428B3218();

  return v7;
}

uint64_t CreateEventIntent_v0.perform()(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  *(v2 + 1352) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00) - 8) + 64) + 15;
  *(v2 + 1360) = swift_task_alloc();
  v4 = sub_2428B3BB8();
  *(v2 + 1368) = v4;
  v5 = *(v4 - 8);
  *(v2 + 1376) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 1384) = swift_task_alloc();
  *(v2 + 1392) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960) - 8) + 64) + 15;
  *(v2 + 1400) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560) - 8) + 64) + 15;
  *(v2 + 1408) = swift_task_alloc();
  v9 = sub_2428B3768();
  *(v2 + 1416) = v9;
  v10 = *(v9 - 8);
  *(v2 + 1424) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 1432) = swift_task_alloc();
  *(v2 + 1440) = swift_task_alloc();
  v12 = sub_2428B3688();
  *(v2 + 1448) = v12;
  v13 = *(v12 - 8);
  *(v2 + 1456) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 1464) = swift_task_alloc();
  *(v2 + 1472) = swift_task_alloc();
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1488) = swift_task_alloc();
  *(v2 + 1496) = swift_task_alloc();
  *(v2 + 1504) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3A00, &qword_2428BDFD0) - 8) + 64) + 15;
  *(v2 + 1512) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  *(v2 + 1520) = v16;
  v17 = *(v16 - 8);
  *(v2 + 1528) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 1536) = swift_task_alloc();
  *(v2 + 1544) = swift_task_alloc();
  *(v2 + 1552) = swift_task_alloc();
  v19 = v1[7];
  *(v2 + 592) = v1[6];
  *(v2 + 608) = v19;
  *(v2 + 624) = v1[8];
  v20 = v1[3];
  *(v2 + 528) = v1[2];
  *(v2 + 544) = v20;
  v21 = v1[5];
  *(v2 + 560) = v1[4];
  *(v2 + 576) = v21;
  v22 = v1[1];
  *(v2 + 496) = *v1;
  *(v2 + 512) = v22;
  sub_2428B4758();
  *(v2 + 1560) = sub_2428B4748();
  v23 = sub_2428B4728();
  v25 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_242841194, v23, v24);
}

uint64_t sub_242841194()
{
  v293 = v0;
  v292 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1560);

  v2 = sub_2428B43D8();
  *(v0 + 1168) = v2;
  *(v0 + 1176) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1144));
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v2);
  LOBYTE(v2) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1144));
  v279 = v0;
  if ((v2 & 1) == 0)
  {
    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_8;
  }

  v4 = sub_2427F475C();
  v5 = *(v0 + 544);
  sub_2428B2DC8();
  v6 = *(v0 + 784);
  *(v0 + 688) = *(v0 + 768);
  *(v0 + 704) = v6;
  v7 = *(v0 + 752);
  *(v0 + 656) = *(v0 + 736);
  *(v0 + 672) = v7;
  *(v0 + 640) = *(v0 + 720);
  if (*(v0 + 640))
  {
    v8 = *(v0 + 648);
    v9 = *(v0 + 656);
    v10 = *(v0 + 672);
    v11 = v4;
    v12 = *(v0 + 688);
    v13 = *(v0 + 696);
    v14 = *(v0 + 704);
    v15 = *(v0 + 712);
    sub_2428B3218();
    v4 = v11;
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B3218();
    v16 = sub_2428B4608();
    v17 = [v11 calendarWithIdentifier_];

    sub_2427E0980(v0 + 640, &qword_27ECC2248, &unk_2428B7CE0);
    sub_2427E0980(v0 + 640, &qword_27ECC2248, &unk_2428B7CE0);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_13:
    sub_2427CCDB0();
    swift_allocError();
    *v45 = 48;
    swift_willThrow();

    goto LABEL_8;
  }

  v17 = [v4 defaultCalendarForNewEvents];
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_4:
  v256 = v4;
  v18 = [objc_opt_self() eventWithEventStore_];
  v19 = *(v0 + 504);
  v20 = v18;
  sub_2428B2DC8();
  v21 = *(v0 + 1280);
  v22 = *(v0 + 1288);
  v23 = sub_2428B4608();

  [v20 setTitle_];

  [v20 setCalendar_];
  v24 = *(v0 + 528);
  sub_2428B2DC8();
  v270 = v20;
  v252 = v17;
  if (*(v0 + 1307) == 1)
  {
    v25 = *(v0 + 632);
    sub_2428B2DC8();
    v26 = *(v0 + 1552);
    v27 = *(v0 + 1528);
    v28 = *(v0 + 1520);
    v29 = *(v0 + 1512);
    if (*(v0 + 1240))
    {
      v30 = *(v0 + 1232);
      v31 = *(v0 + 1240);
      sub_2428B3218();
      sub_2428B3718();
      swift_bridgeObjectRelease_n();
      (*(v27 + 56))(v29, 0, 1, v28);
      sub_2428431F0(v29, v26);
    }

    else
    {
      v54 = *(v0 + 1424);
      v55 = *(v0 + 1416);
      (*(v27 + 56))(*(v0 + 1512), 1, 1, *(v0 + 1520));
      sub_2428B3758();
      (*(v54 + 56))(v26, 0, 1, v55);
      if ((*(v27 + 48))(v29, 1, v28) != 1)
      {
        sub_2427E0980(*(v0 + 1512), &unk_27ECC3A00, &qword_2428BDFD0);
      }
    }

    v56 = *(v0 + 1504);
    v57 = *(v0 + 1456);
    v58 = *(v0 + 1448);
    v59 = *(v0 + 512);
    sub_2428B2DC8();
    v60 = sub_2428B3658();
    v261 = *(v57 + 8);
    v261(v56, v58);
    v61 = [v256 timeZone];
    if (v61)
    {
      v62 = *(v0 + 1440);
      v63 = *(v0 + 1424);
      v64 = *(v0 + 1416);
      v65 = v61;
      sub_2428B3748();

      v66 = sub_2428B3738();
      (*(v63 + 8))(v62, v64);
    }

    else
    {
      v66 = 0;
    }

    v67 = *(v0 + 1544);
    v68 = *(v0 + 1424);
    v69 = *(v0 + 1416);
    sub_2427E0918(*(v0 + 1552), v67, &qword_27ECC38E0, &unk_2428C40D0);
    v274 = *(v68 + 48);
    if (v274(v67, 1, v69) == 1)
    {
      v70 = 0;
    }

    else
    {
      v71 = *(v0 + 1544);
      v72 = *(v0 + 1424);
      v73 = *(v0 + 1416);
      v70 = sub_2428B3738();
      (*(v72 + 8))(v71, v73);
    }

    v74 = [v60 dateInTimeZone:v66 fromTimeZone:v70];

    if (v74)
    {
      v75 = *(v0 + 1496);
      v76 = *(v0 + 1448);
      sub_2428B3678();

      v77 = sub_2428B3658();
      v78 = v261;
      v261(v75, v76);
    }

    else
    {
      v77 = 0;
      v78 = v261;
    }

    v79 = *(v0 + 1488);
    v80 = *(v0 + 1448);
    [v270 byte_278D6C3F8];

    v81 = *(v0 + 520);
    sub_2428B2DC8();
    v82 = sub_2428B3658();
    v78(v79, v80);
    v83 = [v256 timeZone];
    if (v83)
    {
      v84 = *(v0 + 1432);
      v85 = *(v0 + 1424);
      v86 = *(v0 + 1416);
      v87 = v83;
      sub_2428B3748();

      v88 = sub_2428B3738();
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      v88 = 0;
    }

    v89 = *(v0 + 1536);
    v90 = *(v0 + 1416);
    sub_2427E0918(*(v0 + 1552), v89, &qword_27ECC38E0, &unk_2428C40D0);
    if (v274(v89, 1, v90) == 1)
    {
      v91 = 0;
    }

    else
    {
      v92 = *(v0 + 1536);
      v93 = *(v0 + 1424);
      v94 = *(v0 + 1416);
      v91 = sub_2428B3738();
      (*(v93 + 8))(v92, v94);
    }

    v95 = [v82 dateInTimeZone:v88 fromTimeZone:v91];

    if (v95)
    {
      v96 = *(v0 + 1480);
      v97 = *(v0 + 1448);
      sub_2428B3678();

      v98 = sub_2428B3658();
      v99 = v97;
      v51 = v261;
      v261(v96, v99);
    }

    else
    {
      v98 = 0;
      v51 = v261;
    }

    v100 = *(v0 + 1552);
    v20 = v270;
    [v270 setEndDate_];

    sub_2427E0980(v100, &qword_27ECC38E0, &unk_2428C40D0);
  }

  else
  {
    v46 = *(v0 + 1472);
    v47 = *(v0 + 1456);
    v48 = *(v0 + 1448);
    v49 = *(v0 + 512);
    sub_2428B2DC8();
    v50 = sub_2428B3658();
    v51 = *(v47 + 8);
    v51(v46, v48);
    [v20 setStartDate_];

    v52 = *(v0 + 520);
    sub_2428B2DC8();
    v53 = sub_2428B3658();
    v51(v46, v48);
    [v20 setEndDate_];
  }

  sub_2428B2DC8();
  [v20 setAllDay_];
  v101 = *(v0 + 536);
  sub_2428B2DC8();
  v102 = *(v0 + 944);
  *(v0 + 848) = *(v0 + 928);
  *(v0 + 864) = v102;
  v103 = *(v0 + 912);
  *(v0 + 816) = *(v0 + 896);
  *(v0 + 832) = v103;
  *(v0 + 800) = *(v0 + 880);
  if (*(v0 + 800))
  {
    v104 = *(v0 + 928);
    v284 = *(v0 + 912);
    v285 = v104;
    v286 = *(v0 + 944);
    v105 = *(v0 + 896);
    v282 = *(v0 + 880);
    v283 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_2428B5A90;
    *(v106 + 32) = RecurrenceRuleEntity.ekRecurrenceRule.getter();
    sub_2427E0980(v0 + 800, &qword_27ECC38E8, qword_2428BDFD8);
    sub_2428431A4();
    v107 = sub_2428B46B8();
  }

  else
  {
    v107 = 0;
  }

  [v20 setRecurrenceRules_];

  v108 = *(v0 + 552);
  sub_2428B2DC8();
  v262 = v51;
  if (*(v0 + 1272))
  {
    v109 = *(v0 + 1264);
    v110 = sub_2428B4608();
  }

  else
  {
    v110 = 0;
  }

  [v20 setLocation_];

  v111 = *(v0 + 560);
  sub_2428B2DC8();
  v112 = *(v0 + 1088);
  v113 = *(v0 + 1096);
  v114 = *(v0 + 1104);
  v115 = *(v0 + 1112);
  v116 = *(v0 + 1120);
  v117 = *(v0 + 1128);
  v118 = *(v0 + 1136);
  if (v112)
  {
    v119 = *(v0 + 1088);
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_24284301C(v112);
    *&v282 = v112;
    *(&v282 + 1) = v113;
    *&v283 = v114;
    *(&v283 + 1) = v115;
    *&v284 = v116;
    *(&v284 + 1) = v117;
    *&v285 = v118;
    v120 = LocationEntity.ekStructuredLocation.getter();
    sub_24284301C(v112);
  }

  else
  {
    v121 = *(v0 + 1096);
    v122 = *(v0 + 1104);
    v123 = *(v0 + 1112);
    v124 = *(v0 + 1120);
    v125 = *(v0 + 1128);
    v126 = *(v0 + 1136);
    sub_24284301C(0);
    v120 = 0;
  }

  [v270 setStructuredLocation_];

  v127 = *(v0 + 568);
  sub_2428B2DC8();
  if (*(v0 + 1256))
  {
    v128 = *(v0 + 1248);
    v129 = *(v0 + 1256);
    v130 = sub_2428B4608();
  }

  else
  {
    v130 = 0;
  }

  [v270 setNotes_];

  v131 = *(v0 + 600);
  sub_2428B2DC8();
  v132 = *(v0 + 1308);
  if (*(v0 + 1308) <= 1u)
  {
    if (*(v0 + 1308))
    {
      v132 = 1;
    }
  }

  else if (v132 == 2)
  {
    v132 = 2;
  }

  else
  {
    if (v132 != 3)
    {
      goto LABEL_56;
    }

    v132 = 3;
  }

  [v270 setPrivacyLevel_];
LABEL_56:
  v133 = *(v0 + 608);
  sub_2428B2DC8();
  v134 = *(v0 + 1305);
  if (v134 <= 2)
  {
    if (*(v0 + 1305))
    {
      v135 = v134 != 1;
    }

    else
    {
      v135 = -1;
    }

    goto LABEL_64;
  }

  if (v134 == 3)
  {
    v135 = 2;
    goto LABEL_64;
  }

  if (v134 == 4)
  {
    v135 = 3;
LABEL_64:
    [v270 setAvailability_];
  }

  v136 = *(v0 + 616);
  sub_2428B2DC8();
  if ((*(v0 + 1304) & 1) == 0)
  {
    [v270 setTravelTime_];
  }

  v137 = *(v0 + 1408);
  v138 = *(v0 + 624);
  sub_2428B2DC8();
  v139 = sub_2428B35D8();
  v140 = *(v139 - 8);
  v141 = 0;
  if ((*(v140 + 48))(v137, 1, v139) != 1)
  {
    v142 = *(v0 + 1408);
    v141 = sub_2428B35A8();
    (*(v140 + 8))(v142, v139);
  }

  [v270 setURL_];

  v143 = *(v0 + 584);
  sub_2428B2DC8();
  v144 = *(v0 + 1328);
  if (!v144)
  {
    v176 = *(v0 + 576);
    sub_2428B2DC8();
    v177 = *(v0 + 1184);
    v178 = *(v0 + 1192);
    v179 = *(v0 + 1200);
    if (v177)
    {
      v180 = *(v0 + 1184);
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428430A8(v177);
      *&v282 = v177;
      *(&v282 + 1) = v178;
      *&v283 = v179;
      v181 = sub_24286CE20();
      sub_2428430A8(v177);
      if (v181)
      {
        [v270 addAlarm_];
      }
    }

    else
    {
      v184 = *(v0 + 1192);
      v185 = *(v0 + 1200);
      sub_2428430A8(0);
    }

    goto LABEL_118;
  }

  v145 = MEMORY[0x277D84F90];
  *&v282 = MEMORY[0x277D84F90];
  v146 = *(v144 + 16);
  v258 = v144;
  if (!v146)
  {
    goto LABEL_83;
  }

  v147 = 0;
  v148 = (v0 + 1312);
  v149 = *(v0 + 1456);
  v265 = (v149 + 48);
  v268 = *(v144 + 16);
  v254 = (v149 + 32);
  v150 = v144 + 48;
  v248 = v144 + 48;
  v250 = v146 - 1;
  do
  {
    v151 = (v150 + 24 * v147);
    v152 = v147;
    v153 = v258;
    v275 = v145;
    while (1)
    {
      if (v152 >= *(v153 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v156 = *(v151 - 2);
      v114 = *(v151 - 1);
      v157 = *v151;
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2C68();
      if (*(v0 + 1320))
      {
        break;
      }

      v154 = [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];

      if (v154)
      {
        goto LABEL_80;
      }

LABEL_74:
      ++v152;
      v151 += 3;
      v145 = v275;
      v148 = (v0 + 1312);
      if (v146 == v152)
      {
        goto LABEL_83;
      }
    }

    v158 = *(v0 + 1448);
    v159 = *(v0 + 1400);
    sub_2428B2C68();
    if ((*v265)(v159, 1, v158) == 1)
    {
      sub_2427E0980(*(v0 + 1400), &qword_27ECC26F0, &unk_2428B7960);

      v146 = v268;
      goto LABEL_74;
    }

    v160 = *(v0 + 1464);
    v161 = *(v0 + 1448);
    (*v254)(v160, *(v0 + 1400), v161);
    v162 = objc_allocWithZone(MEMORY[0x277CC5988]);
    v163 = sub_2428B3658();
    v164 = [v162 initWithAbsoluteDate_];

    v153 = v258;
    v155 = v262(v160, v161);
    v146 = v268;
    if (!v164)
    {
      goto LABEL_74;
    }

LABEL_80:
    MEMORY[0x245D1B200](v155);
    if (*((v282 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v165 = *((v282 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2428B46E8();
    }

    v147 = v152 + 1;
    sub_2428B4708();
    v145 = v282;
    v150 = v248;
    v148 = (v0 + 1312);
  }

  while (v250 != v152);
LABEL_83:

  v280 = v145;
  v166 = *(v0 + 576);
  sub_2428B2DC8();
  v167 = *(v0 + 1208);
  v168 = *(v0 + 1216);
  v169 = *(v0 + 1224);
  if (!v167)
  {
    v182 = *(v0 + 1216);
    v183 = *(v0 + 1224);
    sub_2428430A8(0);
    goto LABEL_100;
  }

  v170 = *(v0 + 1208);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428430A8(v167);
  *&v282 = v167;
  *(&v282 + 1) = v168;
  *&v283 = v169;
  v171 = sub_24286CE20();
  sub_2428430A8(v167);
  if (!v171)
  {
LABEL_100:
    v151 = v270;
    goto LABEL_105;
  }

  v151 = v270;
  v0 = v145 & 0xFFFFFFFFFFFFFF8;
  if (v145 >> 62)
  {
    goto LABEL_143;
  }

  for (i = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2428B49C8())
  {
    v173 = 0;
    v114 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    while (i != v173)
    {
      if ((v145 & 0xC000000000000001) != 0)
      {
        v174 = MEMORY[0x245D1B5D0](v173, v145);
      }

      else
      {
        if (v173 >= *(v0 + 16))
        {
          goto LABEL_115;
        }

        v174 = *(v145 + 8 * v173 + 32);
      }

      v151 = v174;
      if (__OFADD__(v173, 1))
      {
        goto LABEL_114;
      }

      v175 = [v171 isTopographicallyEqualToAlarm_];

      ++v173;
      v151 = v270;
      if (v175)
      {

        v0 = v279;
        goto LABEL_105;
      }
    }

    v186 = v171;
    MEMORY[0x245D1B200]();
    v0 = v279;
    if (*((v280 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v280 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v243 = *((v280 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2428B46E8();
    }

    sub_2428B4708();

    v145 = v280;
LABEL_105:
    if (v145 >> 62)
    {
LABEL_116:
      v171 = sub_2428B49C8();
      if (!v171)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v171 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v171)
      {
        goto LABEL_117;
      }
    }

    if (v171 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_143:
    ;
  }

  for (j = 0; j != v171; ++j)
  {
    if ((v145 & 0xC000000000000001) != 0)
    {
      v188 = MEMORY[0x245D1B5D0](j, v145);
    }

    else
    {
      v188 = *(v145 + 8 * j + 32);
    }

    v189 = v188;
    [v151 addAlarm_];
  }

LABEL_117:

LABEL_118:
  v190 = *(v0 + 592);
  sub_2428B2DC8();
  v191 = *(v0 + 1336);
  v192 = v256;
  if (!v191)
  {
    v200 = v270;

    goto LABEL_146;
  }

  v193 = [v270 allowsAttendeesModifications];

  if ((v193 & 1) == 0)
  {

    sub_2427CCDB0();
    swift_allocError();
    *v201 = 113;
    swift_willThrow();

    goto LABEL_8;
  }

  v194 = *(v191 + 16);
  if (!v194)
  {

    v202 = MEMORY[0x277D84F90];
    goto LABEL_128;
  }

  v281 = MEMORY[0x277D84F90];
  sub_2428B4AC8();
  if (!*(v191 + 16))
  {
    goto LABEL_141;
  }

  v114 = (v279 + 1024);
  v195 = *(v191 + 32);
  v196 = *(v191 + 48);
  v197 = *(v191 + 80);
  *(v279 + 1056) = *(v191 + 64);
  *(v279 + 1072) = v197;
  *(v279 + 1024) = v195;
  *(v279 + 1040) = v196;
  v198 = *(v191 + 48);
  v282 = *(v191 + 32);
  v283 = v198;
  v199 = *(v191 + 80);
  v284 = *(v191 + 64);
  v285 = v199;
  sub_2428430F4(v279 + 1024, v279 + 960);
  sub_2428307AC();
  sub_242843150(v279 + 1024);
  sub_2428B4AA8();
  v203 = *(v281 + 16);
  sub_2428B4AD8();
  sub_2428B4AE8();
  sub_2428B4AB8();
  if (v194 == 1)
  {
    goto LABEL_127;
  }

  if (*(v191 + 16) < 2uLL)
  {
LABEL_141:
    __break(1u);
    v0 = v279;

    sub_242843150(v114);

    goto LABEL_8;
  }

  v208 = (v191 + 96);
  v209 = 1;
  while (1)
  {
    v210 = *v208;
    v211 = v208[1];
    v212 = v208[3];
    *(v279 + 1056) = v208[2];
    *(v279 + 1072) = v212;
    *v114 = v210;
    *(v279 + 1040) = v211;
    v213 = v208[1];
    v282 = *v208;
    v283 = v213;
    v214 = v208[3];
    v284 = v208[2];
    v285 = v214;
    sub_2428430F4(v114, v279 + 960);
    sub_2428307AC();
    sub_242843150(v114);
    sub_2428B4AA8();
    v215 = *(v281 + 16);
    sub_2428B4AD8();
    sub_2428B4AE8();
    sub_2428B4AB8();
    if (2 - v194 + v209 == 1)
    {
      break;
    }

    v208 += 4;
    if (++v209 >= *(v191 + 16))
    {
      goto LABEL_141;
    }
  }

LABEL_127:

  v0 = v279;
  v202 = v281;
  v192 = v256;
LABEL_128:
  v200 = v270;
  if (v202 >> 62)
  {
    v204 = sub_2428B49C8();
    if (!v204)
    {
      goto LABEL_145;
    }

LABEL_130:
    if (v204 < 1)
    {
      __break(1u);
    }

    for (k = 0; k != v204; ++k)
    {
      if ((v202 & 0xC000000000000001) != 0)
      {
        v206 = MEMORY[0x245D1B5D0](k, v202);
      }

      else
      {
        v206 = *(v202 + 8 * k + 32);
      }

      v207 = v206;
      [v270 addAttendee_];
    }

    v0 = v279;
    v192 = v256;
  }

  else
  {
    v204 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v204)
    {
      goto LABEL_130;
    }

LABEL_145:
  }

LABEL_146:
  *(v0 + 1344) = 0;
  v216 = [v192 saveEvent:v200 span:0 error:v0 + 1344];
  v217 = *(v0 + 1344);
  if (v216)
  {
    v218 = *(v0 + 1376);
    v219 = *(v0 + 1368);
    v220 = *(v0 + 1360);
    v221 = v200;
    v222 = v217;
    sub_2428B3BC8();
    if ((*(v218 + 48))(v220, 1, v219) == 1)
    {
      sub_2427E0980(*(v0 + 1360), &qword_27ECC3240, &qword_2428BBF00);
      sub_2427CCDB0();
      swift_allocError();
      *v223 = 25;
      swift_willThrow();

      goto LABEL_8;
    }

    v244 = *(v0 + 1552);
    v245 = *(v0 + 1544);
    v246 = *(v0 + 1536);
    v247 = *(v0 + 1512);
    v249 = *(v0 + 1504);
    v251 = *(v0 + 1496);
    v253 = *(v0 + 1488);
    v255 = *(v0 + 1480);
    v259 = *(v0 + 1472);
    v263 = *(v0 + 1464);
    v266 = *(v0 + 1440);
    v269 = *(v0 + 1432);
    v272 = *(v0 + 1408);
    v276 = *(v0 + 1400);
    v225 = *(v0 + 1392);
    v226 = *(v279 + 1384);
    v227 = *(v279 + 1376);
    v228 = *(v279 + 1368);
    v278 = *(v279 + 1360);
    v229 = *(v279 + 1352);
    (*(v227 + 32))(v225);
    (*(v227 + 16))(v226, v225, v228);
    EventEntity.init(_:)(v226, &v282);
    (*(v227 + 8))(v225, v228);
    v230 = v289;
    *(v279 + 112) = v288;
    *(v279 + 128) = v230;
    v231 = v291;
    *(v279 + 144) = v290;
    *(v279 + 160) = v231;
    v232 = v285;
    *(v279 + 48) = v284;
    *(v279 + 64) = v232;
    v233 = v287;
    *(v279 + 80) = v286;
    *(v279 + 96) = v233;
    v234 = v283;
    *(v279 + 16) = v282;
    *(v279 + 32) = v234;
    sub_2427CD4FC(v279 + 16, v279 + 336);
    OpenEventDetailsIntent.init()(&v282);
    v235 = v282;
    v236 = v283;
    v237 = *(v279 + 128);
    *(v279 + 272) = *(v279 + 112);
    *(v279 + 288) = v237;
    v238 = *(v279 + 160);
    *(v279 + 304) = *(v279 + 144);
    *(v279 + 320) = v238;
    v239 = *(v279 + 64);
    *(v279 + 208) = *(v279 + 48);
    *(v279 + 224) = v239;
    v240 = *(v279 + 96);
    *(v279 + 240) = *(v279 + 80);
    *(v279 + 256) = v240;
    v241 = *(v279 + 32);
    *(v279 + 176) = *(v279 + 16);
    *(v279 + 192) = v241;
    sub_2428B2DD8();
    sub_24280B1C4((v279 + 16), v235, *(&v235 + 1), v236, *(&v236 + 1), v229);

    sub_2427CCE04(v279 + 16);

    v42 = *(v279 + 8);
    v242 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v224 = v217;
    sub_2428B3538();

    swift_willThrow();
LABEL_8:
    v32 = *(v0 + 1552);
    v33 = *(v279 + 1544);
    v34 = *(v279 + 1536);
    v35 = *(v279 + 1512);
    v36 = *(v279 + 1504);
    v37 = *(v279 + 1496);
    v38 = *(v279 + 1488);
    v39 = *(v279 + 1480);
    v40 = *(v279 + 1472);
    v41 = *(v279 + 1464);
    v257 = *(v279 + 1440);
    v260 = *(v279 + 1432);
    v264 = *(v279 + 1408);
    v267 = *(v279 + 1400);
    v271 = *(v279 + 1392);
    v273 = *(v279 + 1384);
    v277 = *(v279 + 1360);

    v42 = *(v279 + 8);
    v43 = *MEMORY[0x277D85DE8];
  }

  return v42();
}

uint64_t sub_242842CA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1838 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3810);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242842D54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return CreateEventIntent_v0.perform()(a1);
}

uint64_t CreateEventIntent_v0.managedDestinationAccountIdentifier.getter()
{
  v1 = v0[7];
  v19[12] = v0[6];
  v19[13] = v1;
  v19[14] = v0[8];
  v2 = v0[3];
  v19[8] = v0[2];
  v19[9] = v2;
  v3 = v0[5];
  v19[10] = v0[4];
  v19[11] = v3;
  v4 = v0[1];
  v19[6] = *v0;
  v19[7] = v4;
  v5 = sub_2427F475C();
  sub_2428B2DC8();
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v18;
  if (v14)
  {
    sub_2428B3218();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B3218();
    v6 = sub_2428B4608();
    v7 = [v5 calendarWithIdentifier_];

    sub_2427E0980(v19, &qword_27ECC2248, &unk_2428B7CE0);
    sub_2427E0980(v19, &qword_27ECC2248, &unk_2428B7CE0);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [v5 defaultCalendarForNewEvents];
    if (!v7)
    {
LABEL_10:

      return 0;
    }
  }

  v8 = [v7 source];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 externalID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_2428B4618();

      return v12;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_24284301C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2428430A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2428431A4()
{
  result = qword_27ECC2E20;
  if (!qword_27ECC2E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC2E20);
  }

  return result;
}

uint64_t sub_2428431F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242843264()
{
  result = qword_27ECC38F0;
  if (!qword_27ECC38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC38F0);
  }

  return result;
}

unint64_t sub_2428432BC()
{
  result = qword_27ECC38F8;
  if (!qword_27ECC38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC38F8);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_242843390(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2428433D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2428434B4(uint64_t result)
{
  if (result)
  {
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();

    return sub_2428B2F38();
  }

  return result;
}

uint64_t sub_24284355C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC3930);
  __swift_project_value_buffer(v7, qword_27ECC3930);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static EditEventIntent_v0.title.modify())()
{
  if (qword_27ECC1848 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3568();
  __swift_project_value_buffer(v0, qword_27ECC3930);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242843868()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC3948);
  __swift_project_value_buffer(v12, qword_27ECC3948);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t (*static EditEventIntent_v0.description.modify())()
{
  if (qword_27ECC1850 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC3948);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t EditEventIntent_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v202 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v184 = &v176[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v182 = *(v4 - 8);
  v183 = v4;
  v5 = *(v182 + 64);
  MEMORY[0x28223BE20](v4);
  v181 = &v176[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v180 = &v176[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v11 = *(v10 - 8);
  v188 = v10;
  v189 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v187 = &v176[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v193 = &v176[-v16];
  v17 = sub_2428B3298();
  v213 = *(v17 - 8);
  v214 = v17;
  v18 = *(v213 + 64);
  MEMORY[0x28223BE20](v17);
  v212 = &v176[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v196 = &v176[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v209 = &v176[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v200 = &v176[-v27];
  v207 = sub_2428B3558();
  v28 = *(v207 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v207);
  v31 = &v176[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_2428B36C8();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v176[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_2428B45F8();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v176[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = sub_2428B3568();
  v215 = *(v211 - 8);
  v40 = *(v215 + 64);
  MEMORY[0x28223BE20](v211);
  v42 = &v176[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v226 = 0u;
  v227 = 0u;
  *&v228 = 0;
  sub_2428B2948();
  *v202 = sub_2428B2918();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v44 = *(v28 + 104);
  v198 = *MEMORY[0x277CC9110];
  v43 = v198;
  v45 = v207;
  v44(v31, v198, v207);
  v199 = v44;
  v204 = v28 + 104;
  sub_2428B3578();
  v195 = v39;
  sub_2428B4578();
  sub_2428B36B8();
  v185 = v31;
  v44(v31, v43, v45);
  v46 = v200;
  sub_2428B3578();
  v47 = *(v215 + 56);
  v215 += 56;
  v206 = v47;
  v47(v46, 0, 1, v211);
  sub_2427CBC50(&v226);
  v222 = v232;
  v223 = v233;
  v224 = v234;
  v225 = v235;
  v218 = v228;
  v219 = v229;
  v220 = v230;
  v221 = v231;
  v216 = v226;
  v217 = v227;
  v48 = sub_2428B2AE8();
  v205 = v48;
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v210 = v50;
  v208 = v49 + 56;
  v50(v209, 1, 1, v48);
  v50(v196, 1, 1, v48);
  v203 = *MEMORY[0x277CBA308];
  v201 = *(v213 + 104);
  v213 += 104;
  v201(v212);
  sub_2427C2774();
  v197 = v42;
  v202[1] = sub_2428B2E68();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B4578();
  v51 = v35;
  sub_2428B36B8();
  v52 = v185;
  v53 = v198;
  v54 = v207;
  v55 = v199;
  v199(v185, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v55(v52, v53, v54);
  v56 = v200;
  sub_2428B3578();
  v206(v56, 0, 1, v211);
  v190 = sub_2428B4568();
  v216 = 0uLL;
  v57 = *(v190 - 8);
  v58 = *(v57 + 56);
  v191 = v57 + 56;
  v192 = v58;
  v58(v193, 1, 1, v190);
  v59 = v205;
  v210(v209, 1, 1, v205);
  (v201)(v212, v203, v214);
  v202[2] = sub_2428B2EB8();
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B4578();
  sub_2428B36B8();
  v60 = v198;
  v61 = v207;
  v62 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v62(v52, v60, v61);
  v63 = v200;
  sub_2428B3578();
  v206(v63, 0, 1, v211);
  v210(v209, 1, 1, v59);
  v177 = *MEMORY[0x277CB9EF0];
  v64 = *(v189 + 104);
  v189 += 104;
  v178 = v64;
  v64(v187);
  (v201)(v212, v203, v214);
  v65 = sub_2428B2E98();
  v66 = v202;
  v202[3] = v65;
  sub_2428B4578();
  sub_2428B36B8();
  v67 = v60;
  v68 = v60;
  v69 = v207;
  v70 = v199;
  v199(v52, v68, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v70(v52, v67, v69);
  v71 = v200;
  sub_2428B3578();
  v206(v71, 0, 1, v211);
  v210(v209, 1, 1, v205);
  v178(v187, v177, v188);
  (v201)(v212, v203, v214);
  v66[4] = sub_2428B2E98();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D20, &qword_2428BB328);
  sub_2428B4578();
  sub_2428B36B8();
  v72 = v198;
  v73 = v207;
  v74 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v74(v52, v72, v73);
  sub_2428B3578();
  v206(v71, 0, 1, v211);
  LOBYTE(v216) = 2;
  v75 = sub_2428B4718();
  (*(*(v75 - 8) + 56))(v180, 1, 1, v75);
  v210(v209, 1, 1, v205);
  v76 = v201;
  (v201)(v212, v203, v214);
  v202[5] = sub_2428B2EC8();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D28, &unk_2428BDEE0);
  sub_2428B4578();
  sub_2428B36B8();
  v77 = v198;
  v78 = v207;
  v79 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v79(v52, v77, v78);
  v80 = v200;
  sub_2428B3578();
  v81 = v80;
  v206(v80, 0, 1, v211);
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v216 = 0u;
  v82 = v210;
  v83 = v205;
  v210(v209, 1, 1, v205);
  v82(v196, 1, 1, v83);
  v76(v212, v203, v214);
  sub_2427FE688();
  v202[6] = sub_2428B2E68();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v84 = v198;
  v85 = v207;
  v86 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v86(v52, v84, v85);
  sub_2428B3578();
  v206(v81, 0, 1, v211);
  LOBYTE(v216) = 4;
  v87 = v210;
  v88 = v205;
  v210(v209, 1, 1, v205);
  v87(v196, 1, 1, v88);
  (v201)(v212, v203, v214);
  sub_24281E43C();
  v202[7] = sub_2428B2E38();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D38, &unk_2428BE310);
  sub_2428B4578();
  sub_2428B36B8();
  v89 = v198;
  v90 = v207;
  v91 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v91(v52, v89, v90);
  v92 = v200;
  sub_2428B3578();
  v206(v92, 0, 1, v211);
  LOBYTE(v216) = 3;
  v93 = v205;
  v94 = v210;
  v210(v209, 1, 1, v205);
  v94(v196, 1, 1, v93);
  (v201)(v212, v203, v214);
  sub_24281E490();
  v202[8] = sub_2428B2E38();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v95 = v198;
  v96 = v207;
  v97 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v97(v52, v95, v96);
  v98 = v200;
  sub_2428B3578();
  v206(v98, 0, 1, v211);
  LOBYTE(v216) = 5;
  v99 = v205;
  v100 = v210;
  v210(v209, 1, 1, v205);
  v100(v196, 1, 1, v99);
  (v201)(v212, v203, v214);
  sub_24281E4E4();
  v202[9] = sub_2428B2E38();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3880, &unk_2428BE320);
  sub_2428B4578();
  sub_2428B36B8();
  v101 = v198;
  v102 = v207;
  v103 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v103(v52, v101, v102);
  sub_2428B3578();
  v206(v98, 0, 1, v211);
  *&v216 = 0;
  v104 = v205;
  v105 = v210;
  v210(v209, 1, 1, v205);
  v105(v196, 1, 1, v104);
  (v201)(v212, v203, v214);
  v188 = sub_24282F540();
  v202[10] = sub_2428B2E68();
  sub_2428B4578();
  sub_2428B36B8();
  v106 = v198;
  v107 = v207;
  v108 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v108(v52, v106, v107);
  v109 = v200;
  sub_2428B3578();
  v206(v109, 0, 1, v211);
  *&v216 = 0;
  v110 = v210;
  v111 = v205;
  v210(v209, 1, 1, v205);
  v110(v196, 1, 1, v111);
  (v201)(v212, v203, v214);
  v202[11] = sub_2428B2E68();
  sub_2428B4578();
  sub_2428B36B8();
  v112 = v198;
  v113 = v207;
  v114 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v114(v52, v112, v113);
  v115 = v200;
  sub_2428B3578();
  v206(v115, 0, 1, v211);
  v216 = 0uLL;
  v192(v193, 1, 1, v190);
  v210(v209, 1, 1, v205);
  (v201)(v212, v203, v214);
  v202[12] = sub_2428B2EB8();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3860, &qword_2428BDEF0);
  sub_2428B4578();
  sub_2428B36B8();
  v116 = v198;
  v117 = v207;
  v114(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v114(v52, v116, v117);
  v118 = v200;
  sub_2428B3578();
  v206(v118, 0, 1, v211);
  *&v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v216 = 0u;
  v119 = v205;
  v120 = v210;
  v210(v209, 1, 1, v205);
  v120(v196, 1, 1, v119);
  (v201)(v212, v203, v214);
  sub_242806258();
  v121 = sub_2428B2E68();
  v122 = v202;
  v202[13] = v121;
  sub_2428B4578();
  sub_2428B36B8();
  v123 = v198;
  v124 = v207;
  v125 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v125(v52, v123, v124);
  v126 = v200;
  sub_2428B3578();
  v206(v126, 0, 1, v211);
  v216 = 0uLL;
  v192(v193, 1, 1, v190);
  v210(v209, 1, 1, v205);
  (v201)(v212, v203, v214);
  v122[14] = sub_2428B2EB8();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3858, &unk_2428BE330);
  sub_2428B4578();
  sub_2428B36B8();
  v127 = v198;
  v128 = v207;
  v129 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v129(v52, v127, v128);
  v130 = v200;
  sub_2428B3578();
  v206(v130, 0, 1, v211);
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v216 = 0u;
  v131 = v210;
  v132 = v205;
  v210(v209, 1, 1, v205);
  v131(v196, 1, 1, v132);
  v133 = v203;
  (v201)(v212, v203, v214);
  sub_24283FA24();
  v202[15] = sub_2428B2E68();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v134 = v198;
  v135 = v207;
  v136 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v136(v52, v134, v135);
  v137 = v200;
  sub_2428B3578();
  v206(v137, 0, 1, v211);
  *&v216 = 0;
  BYTE8(v216) = 1;
  v210(v209, 1, 1, v205);
  (*(v182 + 104))(v181, *MEMORY[0x277CB9ED0], v183);
  v138 = v201;
  (v201)(v212, v133, v214);
  v202[16] = sub_2428B2ED8();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3970, &unk_2428BDF00);
  sub_2428B4578();
  sub_2428B36B8();
  v139 = v198;
  v140 = v207;
  v141 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v141(v52, v139, v140);
  v142 = v200;
  sub_2428B3578();
  v206(v142, 0, 1, v211);
  *&v216 = 0;
  v143 = v205;
  v144 = v210;
  v210(v209, 1, 1, v205);
  v144(v196, 1, 1, v143);
  v138(v212, v203, v214);
  sub_24283FACC();
  v145 = sub_2428B2E68();
  v146 = v202;
  v202[17] = v145;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v147 = v198;
  v148 = v207;
  v149 = v199;
  v199(v52, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v149(v52, v147, v148);
  v150 = v200;
  v151 = v51;
  sub_2428B3578();
  v206(v150, 0, 1, v211);
  v152 = sub_2428B35D8();
  (*(*(v152 - 8) + 56))(v184, 1, 1, v152);
  v210(v209, 1, 1, v205);
  (v201)(v212, v203, v214);
  v146[18] = sub_2428B2E88();
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3988, &qword_2428BE340);
  sub_2428B4578();
  sub_2428B36B8();
  v153 = v52;
  v154 = v52;
  v155 = v198;
  v156 = v207;
  v157 = v199;
  v199(v154, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  v179 = v151;
  sub_2428B36B8();
  v157(v153, v155, v156);
  v158 = v200;
  sub_2428B3578();
  v159 = v211;
  v160 = v206;
  v206(v158, 0, 1, v211);
  LOBYTE(v216) = 8;
  v162 = v209;
  v161 = v210;
  v163 = v205;
  v210(v209, 1, 1, v205);
  v161(v196, 1, 1, v163);
  v164 = v203;
  (v201)(v212, v203, v214);
  sub_24282BEBC();
  v165 = v200;
  v166 = sub_2428B2E38();
  v167 = v202;
  v202[19] = v166;
  sub_2428B3548();
  v160(v165, 1, 1, v159);
  v216 = 0uLL;
  v192(v193, 1, 1, v190);
  v210(v162, 1, 1, v205);
  (v201)(v212, v164, v214);
  v167[20] = sub_2428B2EB8();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  sub_2428B4578();
  sub_2428B36B8();
  v168 = v185;
  v169 = v198;
  v170 = v207;
  v171 = v199;
  v199(v185, v198, v207);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v171(v168, v169, v170);
  v172 = v200;
  sub_2428B3578();
  v206(v172, 0, 1, v211);
  LOBYTE(v216) = 3;
  v173 = v205;
  v174 = v210;
  v210(v209, 1, 1, v205);
  v174(v196, 1, 1, v173);
  (v201)(v212, v203, v214);
  sub_24281E538();
  result = sub_2428B2E38();
  v202[21] = result;
  return result;
}

uint64_t EditEventIntent_v0.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_242846C54(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_242852D84(v11, v9);
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return sub_242852DBC(v11);
}

uint64_t EditEventIntent_v0.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*EditEventIntent_v0.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_242846DE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v24 = a1[6];
  v25 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v26 = a1[8];
  v27 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v20 = a1[2];
  v21 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v22 = a1[4];
  v23 = v9;
  v10 = a1[1];
  v19[0] = *a1;
  v19[1] = v10;
  v11 = a2[9];
  v28[8] = a2[8];
  v28[9] = v11;
  v28[10] = a2[10];
  v12 = a2[5];
  v28[4] = a2[4];
  v28[5] = v12;
  v13 = a2[7];
  v28[6] = a2[6];
  v28[7] = v13;
  v14 = a2[1];
  v28[0] = *a2;
  v28[1] = v14;
  v15 = a2[3];
  v28[2] = a2[2];
  v28[3] = v15;
  v18[17] = v24;
  v18[18] = v4;
  v16 = a1[9];
  v18[19] = v26;
  v18[20] = v16;
  v18[13] = v20;
  v18[14] = v8;
  v18[15] = v22;
  v18[16] = v3;
  v18[11] = v19[0];
  v18[12] = v7;
  sub_2427CD4FC(v19, v18);
  sub_242852D84(v28, v18);
  sub_2428B2DD8();
  return sub_242852DBC(v28);
}

uint64_t EditEventIntent_v0.target.setter(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 8);
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.title.getter()
{
  v1 = *(v0 + 16);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242846FDC(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24284714C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC26F0, &unk_2428B7960);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_242852D84(v18, v17);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_242852DBC(v18);
}

uint64_t EditEventIntent_v0.startDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent_v0.startDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847408(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC26F0, &unk_2428B7960);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_242852D84(v18, v17);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_242852DBC(v18);
}

uint64_t EditEventIntent_v0.endDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntent_v0.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.isAllDay.getter()
{
  v1 = *(v0 + 40);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_2428476D4(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t (*EditEventIntent_v0.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847844(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = a1[3];
  v16 = a1[4];
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[9];
  v17[8] = a2[8];
  v17[9] = v6;
  v17[10] = a2[10];
  v7 = a2[5];
  v17[4] = a2[4];
  v17[5] = v7;
  v8 = a2[7];
  v17[6] = a2[6];
  v17[7] = v8;
  v9 = a2[1];
  v17[0] = *a2;
  v17[1] = v9;
  v10 = a2[3];
  v17[2] = a2[2];
  v17[3] = v10;
  v12[13] = v14;
  v12[14] = v4;
  v12[15] = a1[4];
  v12[11] = v13[0];
  v12[12] = v2;
  sub_2427E0918(v13, v12, &qword_27ECC2248, &unk_2428B7CE0);
  sub_242852D84(v17, v12);
  sub_2428B2DD8();
  return sub_242852DBC(v17);
}

uint64_t EditEventIntent_v0.calendar.setter(__int128 *a1)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 48);
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.calendar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847A08(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t EditEventIntent_v0.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 56);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.privacyLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847B7C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t EditEventIntent_v0.status.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242847CF0(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t EditEventIntent_v0.availability.setter(char *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.availability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.addAttendees.getter()
{
  v1 = *(v0 + 80);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242847E74(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_242852D84(v11, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.addAttendees.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.removeAttendees.getter()
{
  v1 = *(v0 + 88);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242847FF8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_242852D84(v11, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.removeAttendees.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.location.getter()
{
  v1 = *(v0 + 96);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_24284817C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.location.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2428482EC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[9];
  v23[8] = a2[8];
  v23[9] = v9;
  v23[10] = a2[10];
  v10 = a2[5];
  v23[4] = a2[4];
  v23[5] = v10;
  v11 = a2[7];
  v23[6] = a2[6];
  v23[7] = v11;
  v12 = a2[1];
  v23[0] = *a2;
  v23[1] = v12;
  v13 = a2[3];
  v23[2] = a2[2];
  v23[3] = v13;
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  sub_2428434B4(v2);
  sub_242852D84(v23, v15);
  sub_2428B2DD8();
  return sub_242852DBC(v23);
}

uint64_t EditEventIntent_v0.structuredLocation.setter(__int128 *a1)
{
  v2 = *(v1 + 104);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.structuredLocation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.notes.getter()
{
  v1 = *(v0 + 112);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_2428484A4(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.notes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 112);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242848614(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = a1[3];
  v16 = a1[4];
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[9];
  v17[8] = a2[8];
  v17[9] = v6;
  v17[10] = a2[10];
  v7 = a2[5];
  v17[4] = a2[4];
  v17[5] = v7;
  v8 = a2[7];
  v17[6] = a2[6];
  v17[7] = v8;
  v9 = a2[1];
  v17[0] = *a2;
  v17[1] = v9;
  v10 = a2[3];
  v17[2] = a2[2];
  v17[3] = v10;
  v12[13] = v14;
  v12[14] = v4;
  v12[15] = a1[4];
  v12[11] = v13[0];
  v12[12] = v2;
  sub_2427E0918(v13, v12, &qword_27ECC38E8, qword_2428BDFD8);
  sub_242852D84(v17, v12);
  sub_2428B2DD8();
  return sub_242852DBC(v17);
}

uint64_t EditEventIntent_v0.recurrenceRule.setter(__int128 *a1)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 120);
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.recurrenceRule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.travelTime.getter()
{
  v1 = *(v0 + 128);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_2428487EC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[9];
  v12[8] = a2[8];
  v12[9] = v4;
  v12[10] = a2[10];
  v5 = a2[5];
  v12[4] = a2[4];
  v12[5] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = a2[3];
  v12[2] = a2[2];
  v12[3] = v8;
  v10[22] = v2;
  v11 = v3;
  sub_242852D84(v12, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v12);
}

uint64_t (*EditEventIntent_v0.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t EditEventIntent_v0.alarms.getter()
{
  v1 = *(v0 + 136);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242848978(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v11[8] = a2[8];
  v11[9] = v3;
  v11[10] = a2[10];
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_242852D84(v11, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.alarms.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242848AEC(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC2CE0, &qword_2428B6560);
  v11 = a2[9];
  v18[8] = a2[8];
  v18[9] = v11;
  v18[10] = a2[10];
  v12 = a2[5];
  v18[4] = a2[4];
  v18[5] = v12;
  v13 = a2[7];
  v18[6] = a2[6];
  v18[7] = v13;
  v14 = a2[1];
  v18[0] = *a2;
  v18[1] = v14;
  v15 = a2[3];
  v18[2] = a2[2];
  v18[3] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_242852D84(v18, v17);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_242852DBC(v18);
}

uint64_t EditEventIntent_v0.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 144);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EditEventIntent_v0.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242848DA8(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t EditEventIntent_v0.participationStatus.setter(char *a1)
{
  v2 = *(v1 + 152);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.participationStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 152);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t EditEventIntent_v0.floatingTimeZoneID.getter()
{
  v1 = *(v0 + 160);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242848F2C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v11[10] = a2[10];
  v5 = a2[5];
  v11[4] = a2[4];
  v11[5] = v5;
  v6 = a2[7];
  v11[6] = a2[6];
  v11[7] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = a2[3];
  v11[2] = a2[2];
  v11[3] = v8;
  v10[22] = v3;
  v10[23] = v2;
  sub_2428B3218();
  sub_242852D84(v11, v10);
  sub_2428B2DD8();
  return sub_242852DBC(v11);
}

uint64_t (*EditEventIntent_v0.floatingTimeZoneID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 160);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24284909C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[9];
  v10[8] = a2[8];
  v10[9] = v3;
  v10[10] = a2[10];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[183] = v2;
  sub_242852D84(v10, v9);
  sub_2428B2DD8();
  return sub_242852DBC(v10);
}

uint64_t EditEventIntent_v0.span.setter(char *a1)
{
  v2 = *(v1 + 168);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*EditEventIntent_v0.span.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 168);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static EditEventIntent_v0.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B0, &qword_2428BE348);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B8, &qword_2428BE350);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428226EC();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39C8, &qword_2428BE380);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_2428493A0()
{
  swift_getKeyPath();
  sub_2428226EC();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v1 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v2 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v3 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v4 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v10 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v9 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v12 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v14 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v13 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v5 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v11 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BB310;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v10;
  *(v6 + 80) = v9;
  *(v6 + 88) = v12;
  *(v6 + 96) = v14;
  *(v6 + 104) = v13;
  *(v6 + 112) = v5;
  *(v6 + 120) = v11;
  sub_2428B2F38();
  v7 = sub_2428B3218();

  return v7;
}

uint64_t EditEventIntent_v0.perform()(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  *(v2 + 3472) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39D0, &qword_2428BE390);
  *(v2 + 3480) = v3;
  v4 = *(v3 - 8);
  *(v2 + 3488) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 3496) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39D8, &qword_2428BE398);
  *(v2 + 3504) = v6;
  v7 = *(v6 - 8);
  *(v2 + 3512) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 3520) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39E0, &qword_2428BE3A0);
  *(v2 + 3528) = v9;
  v10 = *(v9 - 8);
  *(v2 + 3536) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 3544) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39E8, &qword_2428BE3A8);
  *(v2 + 3552) = v12;
  v13 = *(v12 - 8);
  *(v2 + 3560) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 3568) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC39F0, &unk_2428BE3B0);
  *(v2 + 3576) = v15;
  v16 = *(v15 - 8);
  *(v2 + 3584) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 3592) = swift_task_alloc();
  *(v2 + 3600) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560) - 8) + 64) + 15;
  *(v2 + 3608) = swift_task_alloc();
  *(v2 + 3616) = swift_task_alloc();
  *(v2 + 3624) = swift_task_alloc();
  v19 = sub_2428B35D8();
  *(v2 + 3632) = v19;
  v20 = *(v19 - 8);
  *(v2 + 3640) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 3648) = swift_task_alloc();
  *(v2 + 3656) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2E08, &qword_2428BB3B0);
  *(v2 + 3664) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v2 + 3672) = swift_task_alloc();
  *(v2 + 3680) = swift_task_alloc();
  v24 = sub_2428B3768();
  *(v2 + 3688) = v24;
  v25 = *(v24 - 8);
  *(v2 + 3696) = v25;
  v26 = *(v25 + 64) + 15;
  *(v2 + 3704) = swift_task_alloc();
  *(v2 + 3712) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960) - 8) + 64) + 15;
  *(v2 + 3720) = swift_task_alloc();
  *(v2 + 3728) = swift_task_alloc();
  *(v2 + 3736) = swift_task_alloc();
  *(v2 + 3744) = swift_task_alloc();
  *(v2 + 3752) = swift_task_alloc();
  *(v2 + 3760) = swift_task_alloc();
  *(v2 + 3768) = swift_task_alloc();
  *(v2 + 3776) = swift_task_alloc();
  v28 = sub_2428B3688();
  *(v2 + 3784) = v28;
  v29 = *(v28 - 8);
  *(v2 + 3792) = v29;
  v30 = *(v29 + 64) + 15;
  *(v2 + 3800) = swift_task_alloc();
  *(v2 + 3808) = swift_task_alloc();
  *(v2 + 3816) = swift_task_alloc();
  *(v2 + 3824) = swift_task_alloc();
  *(v2 + 3832) = swift_task_alloc();
  *(v2 + 3840) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3A00, &qword_2428BDFD0) - 8) + 64) + 15;
  *(v2 + 3848) = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  *(v2 + 3856) = v32;
  v33 = *(v32 - 8);
  *(v2 + 3864) = v33;
  v34 = *(v33 + 64) + 15;
  *(v2 + 3872) = swift_task_alloc();
  *(v2 + 3880) = swift_task_alloc();
  *(v2 + 3888) = swift_task_alloc();
  v35 = v1[9];
  *(v2 + 320) = v1[8];
  *(v2 + 336) = v35;
  *(v2 + 352) = v1[10];
  v36 = v1[5];
  *(v2 + 256) = v1[4];
  *(v2 + 272) = v36;
  v37 = v1[7];
  *(v2 + 288) = v1[6];
  *(v2 + 304) = v37;
  v38 = v1[1];
  *(v2 + 192) = *v1;
  *(v2 + 208) = v38;
  v39 = v1[3];
  *(v2 + 224) = v1[2];
  *(v2 + 240) = v39;
  v40 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_242849D40, 0, 0);
}

id sub_242849D40()
{
  v650 = v0;
  v1 = v0;
  v649 = *MEMORY[0x277D85DE8];
  v2 = sub_2428B43D8();
  *(v0 + 3320) = v2;
  *(v0 + 3328) = sub_242853048(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3296));
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v2);
  LOBYTE(v2) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 3296));
  v635 = v0;
  if ((v2 & 1) == 0)
  {
    sub_2428B2938();
    sub_242853048(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_247;
  }

  v4 = *(v0 + 192);
  sub_2428B28E8();
  v5 = [*(v0 + 3464) eventStore];
  *(v0 + 3896) = v5;
  swift_unknownObjectRelease();
  if (!v5)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v28 = 24;
    swift_willThrow();
    goto LABEL_247;
  }

  *(v0 + 3904) = *(v0 + 200);
  sub_2428B2DC8();
  v6 = *(v0 + 1152);
  *(v0 + 2576) = *(v0 + 1136);
  *(v0 + 2592) = v6;
  v7 = *(v0 + 1184);
  *(v0 + 2608) = *(v0 + 1168);
  *(v0 + 2624) = v7;
  v8 = *(v0 + 1088);
  *(v0 + 2512) = *(v0 + 1072);
  *(v0 + 2528) = v8;
  v9 = *(v0 + 1120);
  *(v0 + 2544) = *(v0 + 1104);
  *(v0 + 2560) = v9;
  v10 = *(v0 + 1056);
  *(v0 + 2480) = *(v0 + 1040);
  *(v0 + 2496) = v10;
  v11 = *(v0 + 2480);
  v12 = *(v0 + 2488);
  sub_2428B3218();
  sub_2427CCE04(v1 + 2480);
  v13 = sub_2428B4608();

  v14 = [v5 eventWithIdentifier_];
  *(v1 + 3912) = v14;

  if (!v14)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v29 = 25;
    swift_willThrow();

    goto LABEL_247;
  }

  v15 = [v14 isEditable];
  *(v1 + 3988) = v15;
  if ((v15 & 1) == 0 && ![v14 isExternallyOrganizedInvitation])
  {
    sub_2427CCDB0();
    swift_allocError();
    v31 = 49;
LABEL_22:
    *v30 = v31;
    swift_willThrow();

    goto LABEL_247;
  }

  v16 = *(v1 + 208);
  sub_2428B2DC8();
  if (*(v1 + 3344))
  {
    if (!v15)
    {
      v32 = *(v1 + 3344);

LABEL_21:
      sub_2427CCDB0();
      swift_allocError();
      v31 = 56;
      goto LABEL_22;
    }

    v17 = *(v1 + 3336);
    v18 = v14;
    v19 = sub_2428B4608();

    [v18 setTitle_];
  }

  v20 = *(v1 + 232);
  sub_2428B2DC8();
  v21 = *(v1 + 3413);
  if (v21 == 2 || [v14 isAllDay] == (v21 & 1))
  {
    goto LABEL_14;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  if ((v21 & 1) == 0)
  {
    [v14 setAllDay_];
  }

LABEL_14:
  v22 = *(v1 + 352);
  sub_2428B2DC8();
  v23 = *(v1 + 3888);
  v24 = *(v1 + 3864);
  v25 = *(v1 + 3856);
  v26 = *(v1 + 3848);
  if (*(v1 + 3392))
  {
    v27 = *(v635 + 3384);
    sub_2428B3218();
    v1 = v635;
    sub_2428B3718();
    swift_bridgeObjectRelease_n();
    (*(v24 + 56))(v26, 0, 1, v25);
    sub_24281E660(v26, v23, &qword_27ECC38E0, &unk_2428C40D0);
  }

  else
  {
    v33 = *(v635 + 3696);
    v34 = *(v635 + 3688);
    (*(v24 + 56))(v26, 1, 1, v25);
    sub_2428B3758();
    (*(v33 + 56))(v23, 0, 1, v34);
    v1 = v635;
    if ((*(v24 + 48))(v26, 1, v25) != 1)
    {
      sub_2427E0980(*(v635 + 3848), &unk_27ECC3A00, &qword_2428BDFD0);
    }
  }

  v35 = *(v1 + 3792);
  v36 = *(v1 + 3784);
  v37 = *(v1 + 3776);
  v38 = *(v1 + 216);
  sub_2428B2DC8();
  v39 = *(v35 + 48);
  if (v39(v37, 1, v36) == 1)
  {
    sub_2427E0980(*(v1 + 3776), &qword_27ECC26F0, &unk_2428B7960);
    goto LABEL_51;
  }

  v40 = *(*(v1 + 3792) + 32);
  v40(*(v1 + 3840), *(v1 + 3776), *(v1 + 3784));
  if (!v15)
  {
    v42 = *(v1 + 3888);
    v43 = *(v1 + 3840);
    goto LABEL_58;
  }

  sub_2428B2DC8();
  v41 = *(v1 + 3987);
  v617 = v39;
  v590 = v40;
  if (v41 == 2)
  {
    if (([v14 isFloating] & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v41 & 1) == 0)
  {
    goto LABEL_41;
  }

  v44 = *(v1 + 3840);
  v45 = sub_2428B3658();
  v46 = [v5 timeZone];
  if (v46)
  {
    v47 = *(v1 + 3712);
    v48 = *(v1 + 3696);
    v49 = *(v1 + 3688);
    v50 = v46;
    sub_2428B3748();

    v51 = sub_2428B3738();
    (*(v48 + 8))(v47, v49);
  }

  else
  {
    v51 = 0;
  }

  v52 = *(v1 + 3880);
  v53 = *(v1 + 3696);
  v54 = *(v1 + 3688);
  sub_2427E0918(*(v1 + 3888), v52, &qword_27ECC38E0, &unk_2428C40D0);
  if ((*(v53 + 48))(v52, 1, v54) == 1)
  {
    v55 = 0;
  }

  else
  {
    v56 = *(v1 + 3880);
    v57 = *(v1 + 3696);
    v58 = *(v1 + 3688);
    v55 = sub_2428B3738();
    (*(v57 + 8))(v56, v58);
  }

  v59 = [v45 dateInTimeZone:v51 fromTimeZone:v55];

  if (!v59)
  {
    __break(1u);
    goto LABEL_378;
  }

  v1 = v635;
  v60 = *(v635 + 3840);
  v61 = *(v635 + 3832);
  v62 = *(v635 + 3792);
  v63 = *(v635 + 3784);
  sub_2428B3678();

  (*(v62 + 8))(v60, v63);
  v590(v60, v61, v63);
LABEL_41:
  v64 = *(v1 + 3792);
  v65 = *(v1 + 3784);
  v66 = *(v1 + 3768);
  (*(v64 + 16))(v66, *(v1 + 3840), v65);
  v67 = 1;
  v602 = *(v64 + 56);
  v602(v66, 0, 1, v65);
  v68 = [v14 startDate];
  if (v68)
  {
    v69 = *(v1 + 3760);
    v70 = v68;
    sub_2428B3678();

    v67 = 0;
  }

  v71 = *(v1 + 3784);
  v72 = *(v1 + 3768);
  v73 = *(v635 + 3760);
  v74 = *(v635 + 3680);
  v75 = *(v635 + 3664);
  v602(v73, v67, 1, v71);
  v76 = *(v75 + 48);
  sub_2427E0918(v72, v74, &qword_27ECC26F0, &unk_2428B7960);
  v603 = v76;
  v77 = v73;
  v1 = v635;
  sub_2427E0918(v77, v74 + v76, &qword_27ECC26F0, &unk_2428B7960);
  v39 = v617;
  v78 = v617(v74, 1, v71);
  v79 = *(v635 + 3784);
  if (v78 != 1)
  {
    sub_2427E0918(*(v635 + 3680), *(v635 + 3752), &qword_27ECC26F0, &unk_2428B7960);
    if (v617(v74 + v603, 1, v79) != 1)
    {
      v104 = *(v635 + 3824);
      v105 = *(v635 + 3792);
      v106 = *(v635 + 3784);
      v581 = *(v635 + 3760);
      v584 = *(v635 + 3768);
      v107 = *(v635 + 3752);
      v587 = *(v635 + 3680);
      v590(v104, v74 + v603, v106);
      sub_242853048(&qword_27ECC2E38, MEMORY[0x277CC9578]);
      v108 = sub_2428B4558();
      v109 = *(v105 + 8);
      v109(v104, v106);
      sub_2427E0980(v581, &qword_27ECC26F0, &unk_2428B7960);
      sub_2427E0980(v584, &qword_27ECC26F0, &unk_2428B7960);
      v109(v107, v106);
      v1 = v635;
      sub_2427E0980(v587, &qword_27ECC26F0, &unk_2428B7960);
      v39 = v617;
      if (v108)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v82 = *(v635 + 3792);
    v83 = *(v635 + 3784);
    v84 = *(v635 + 3768);
    v85 = *(v635 + 3752);
    v81 = v635;
    sub_2427E0980(*(v635 + 3760), &qword_27ECC26F0, &unk_2428B7960);
    sub_2427E0980(v84, &qword_27ECC26F0, &unk_2428B7960);
    (*(v82 + 8))(v85, v83);
    v39 = v617;
LABEL_48:
    sub_2427E0980(*(v81 + 3680), &qword_27ECC2E08, &qword_2428BB3B0);
    v1 = v81;
LABEL_49:
    v86 = *(v1 + 3840);
    v87 = sub_2428B3658();
    [v14 setStartDate_];

    goto LABEL_50;
  }

  v80 = *(v635 + 3768);
  v81 = v635;
  sub_2427E0980(*(v635 + 3760), &qword_27ECC26F0, &unk_2428B7960);
  sub_2427E0980(v80, &qword_27ECC26F0, &unk_2428B7960);
  if (v617(v74 + v603, 1, v79) != 1)
  {
    goto LABEL_48;
  }

  sub_2427E0980(*(v635 + 3680), &qword_27ECC26F0, &unk_2428B7960);
LABEL_50:
  (*(*(v1 + 3792) + 8))(*(v1 + 3840), *(v1 + 3784));
LABEL_51:
  v88 = *(v1 + 3784);
  v89 = *(v1 + 3744);
  v90 = *(v1 + 224);
  sub_2428B2DC8();
  if (v39(v89, 1, v88) != 1)
  {
    v20 = *(v1 + 3792);
    v92 = *(v20 + 32);
    LODWORD(v20) = v20 + 32;
    v91 = v92;
    v92(*(v1 + 3816), *(v1 + 3744), *(v1 + 3784));
    if (v15)
    {
      sub_2428B2DC8();
      v93 = *(v1 + 3986);
      v618 = v39;
      if (v93 == 2)
      {
        if (([v14 isFloating] & 1) == 0)
        {
LABEL_70:
          v123 = *(v1 + 3792);
          v124 = *(v1 + 3784);
          v125 = *(v1 + 3736);
          (*(v123 + 16))(v125, *(v1 + 3816), v124);
          v126 = *(v123 + 56);
          v127 = 1;
          v126(v125, 0, 1, v124);
          v128 = [v14 endDate];
          v604 = v91;
          if (v128)
          {
            v129 = *(v1 + 3728);
            v130 = v128;
            sub_2428B3678();

            v127 = 0;
          }

          v131 = *(v1 + 3784);
          v132 = *(v1 + 3736);
          v133 = *(v1 + 3728);
          v134 = *(v1 + 3672);
          v135 = *(v635 + 3664);
          v126(v133, v127, 1, v131);
          v136 = *(v135 + 48);
          v1 = v635;
          sub_2427E0918(v132, v134, &qword_27ECC26F0, &unk_2428B7960);
          sub_2427E0918(v133, v134 + v136, &qword_27ECC26F0, &unk_2428B7960);
          v137 = v618(v134, 1, v131);
          v138 = *(v635 + 3784);
          if (v137 == 1)
          {
            v15 = *(v635 + 3736);
            sub_2427E0980(*(v635 + 3728), &qword_27ECC26F0, &unk_2428B7960);
            sub_2427E0980(v15, &qword_27ECC26F0, &unk_2428B7960);
            if (v618(v134 + v136, 1, v138) == 1)
            {
              sub_2427E0980(*(v635 + 3672), &qword_27ECC26F0, &unk_2428B7960);
LABEL_79:
              (*(*(v635 + 3792) + 8))(*(v635 + 3816), *(v635 + 3784));
              goto LABEL_80;
            }
          }

          else
          {
            sub_2427E0918(*(v635 + 3672), *(v635 + 3720), &qword_27ECC26F0, &unk_2428B7960);
            if (v618(v134 + v136, 1, v138) != 1)
            {
              v197 = *(v635 + 3824);
              v198 = *(v635 + 3792);
              v15 = *(v635 + 3784);
              v199 = *(v635 + 3736);
              v200 = *(v635 + 3728);
              v201 = *(v635 + 3720);
              v609 = v199;
              v619 = *(v635 + 3672);
              v604(v197, v134 + v136, v15);
              sub_242853048(&qword_27ECC2E38, MEMORY[0x277CC9578]);
              v202 = sub_2428B4558();
              v203 = *(v198 + 8);
              v203(v197, v15);
              sub_2427E0980(v200, &qword_27ECC26F0, &unk_2428B7960);
              sub_2427E0980(v609, &qword_27ECC26F0, &unk_2428B7960);
              v203(v201, v15);
              sub_2427E0980(v619, &qword_27ECC26F0, &unk_2428B7960);
              if (v202)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }

            v139 = *(v635 + 3792);
            v140 = *(v635 + 3784);
            v141 = *(v635 + 3736);
            v15 = *(v635 + 3720);
            sub_2427E0980(*(v635 + 3728), &qword_27ECC26F0, &unk_2428B7960);
            sub_2427E0980(v141, &qword_27ECC26F0, &unk_2428B7960);
            (*(v139 + 8))(v15, v140);
          }

          sub_2427E0980(*(v635 + 3672), &qword_27ECC2E08, &qword_2428BB3B0);
LABEL_78:
          v142 = *(v635 + 3816);
          v143 = sub_2428B3658();
          [v14 setEndDate_];

          goto LABEL_79;
        }
      }

      else if ((v93 & 1) == 0)
      {
        goto LABEL_70;
      }

      v97 = *(v1 + 3816);
      v15 = sub_2428B3658();
      v98 = [v5 timeZone];
      if (v98)
      {
        v99 = *(v1 + 3704);
        v100 = *(v1 + 3696);
        v101 = *(v1 + 3688);
        v102 = v98;
        sub_2428B3748();

        v103 = sub_2428B3738();
        (*(v100 + 8))(v99, v101);
      }

      else
      {
        v103 = 0;
      }

      v110 = *(v1 + 3872);
      v111 = *(v1 + 3696);
      v112 = *(v1 + 3688);
      sub_2427E0918(*(v1 + 3888), v110, &qword_27ECC38E0, &unk_2428C40D0);
      if ((*(v111 + 48))(v110, 1, v112) == 1)
      {
        v55 = 0;
      }

      else
      {
        v113 = *(v1 + 3872);
        v114 = *(v1 + 3696);
        v594 = v15;
        v115 = v91;
        v116 = *(v1 + 3688);
        v55 = sub_2428B3738();
        v117 = v116;
        v91 = v115;
        v15 = v594;
        (*(v114 + 8))(v113, v117);
      }

      v118 = [v15 dateInTimeZone:v103 fromTimeZone:v55];

      if (v118)
      {
        v119 = *(v1 + 3816);
        v120 = *(v1 + 3808);
        v121 = *(v1 + 3792);
        v122 = *(v1 + 3784);
        sub_2428B3678();

        (*(v121 + 8))(v119, v122);
        v91(v119, v120, v122);
        goto LABEL_70;
      }

LABEL_378:
      __break(1u);
      goto LABEL_379;
    }

    v42 = *(v1 + 3888);
    v43 = *(v1 + 3816);
LABEL_58:
    v94 = *(v1 + 3792);
    v95 = *(v1 + 3784);
    sub_2427CCDB0();
    swift_allocError();
    *v96 = 56;
    swift_willThrow();

    (*(v94 + 8))(v43, v95);
    goto LABEL_245;
  }

  sub_2427E0980(*(v1 + 3744), &qword_27ECC26F0, &unk_2428B7960);
LABEL_80:
  v144 = (v1 + 2880);
  sub_2428B2DC8();
  v145 = *(v1 + 3414);
  if (v145 != 2)
  {
    v146 = v145 & 1;
    if ([v14 isAllDay] != v146)
    {
      [v14 setAllDay_];
    }
  }

  v147 = *(v1 + 240);
  sub_2428B2DC8();
  if (!*(v1 + 2880))
  {
    v174 = *(v1 + 2928);
    *(v1 + 2672) = *(v1 + 2912);
    *(v1 + 2688) = v174;
    *(v1 + 2704) = *(v1 + 2944);
    v175 = *(v1 + 2896);
    *(v1 + 2640) = *v144;
    *(v1 + 2656) = v175;
    sub_2427E0980(v1 + 2640, &qword_27ECC2248, &unk_2428B7CE0);
    goto LABEL_90;
  }

  v148 = v1 + 2720;
  v149 = *v144;
  v150 = *(v1 + 2896);
  v151 = (v1 + 2800);
  v152 = *(v1 + 2928);
  v153 = *(v1 + 2944);
  v154 = *(v1 + 2912);
  *(v1 + 2768) = v152;
  *(v1 + 2784) = v153;
  v155 = *(v1 + 2896);
  v156 = *(v1 + 2912);
  v157 = *v144;
  *(v1 + 2720) = v149;
  *(v1 + 2736) = v155;
  *(v1 + 2752) = v154;
  v158 = *(v1 + 2944);
  *(v1 + 2848) = v152;
  *(v1 + 2864) = v158;
  v159 = *(v1 + 2720);
  v160 = *(v1 + 2728);
  v15 = *(v1 + 2736);
  v161 = *(v1 + 2752);
  v162 = *(v1 + 2768);
  v163 = *(v1 + 2776);
  v164 = *(v635 + 2784);
  v20 = *(v635 + 2792);
  v151[1] = v150;
  v151[2] = v156;
  *v151 = v157;
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  v1 = v635;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B3218();
  sub_2427E0980(v151, &qword_27ECC2248, &unk_2428B7CE0);
  v55 = v159;
  sub_2428B28E8();
  v165 = *(v635 + 3432);
  v166 = [v165 eventStore];
  if (!v166)
  {
    __break(1u);
    goto LABEL_326;
  }

  v167 = v166;
  swift_unknownObjectRelease();
  v15 = sub_2428B4608();
  v168 = [v167 calendarWithIdentifier_];
  *(v635 + 3920) = v168;

  sub_2427E0980(v148, &qword_27ECC2248, &unk_2428B7CE0);
  if (!v168)
  {
LABEL_90:
    v176 = *(v1 + 248);
    sub_2428B2DC8();
    v177 = *(v1 + 3415);
    if (*(v1 + 3415) <= 1u)
    {
      v178 = *(v1 + 3415);
      if (*(v1 + 3415))
      {
        v178 = 1;
      }
    }

    else if (v177 == 2)
    {
      v178 = 2;
    }

    else
    {
      if (v177 != 3)
      {
        goto LABEL_103;
      }

      v178 = 3;
    }

    if (v178 != [*(v1 + 3912) privacyLevel])
    {
      if (![*(v1 + 3912) allowsPrivacyLevelModifications])
      {
        v190 = *(v1 + 3912);
        v191 = *(v1 + 3896);
        v42 = *(v1 + 3888);
        sub_2427CCDB0();
        swift_allocError();
        v193 = 64;
        goto LABEL_243;
      }

      [*(v1 + 3912) setPrivacyLevel_];
    }

LABEL_103:
    v187 = *(v1 + 256);
    sub_2428B2DC8();
    v188 = *(v1 + 3409);
    if (*(v1 + 3409) > 1u)
    {
      if (v188 != 2)
      {
        goto LABEL_113;
      }

      v189 = 3;
    }

    else if (*(v1 + 3409))
    {
      v189 = 2;
    }

    else
    {
      v189 = 1;
    }

    if (v189 != [*(v1 + 3912) status])
    {
      if (*(v1 + 3988) != 1)
      {
        v190 = *(v1 + 3912);
        v191 = *(v1 + 3896);
        v42 = *(v1 + 3888);
        sub_2427CCDB0();
        swift_allocError();
        v193 = 56;
        goto LABEL_243;
      }

      [*(v1 + 3912) setStatus_];
    }

LABEL_113:
    v194 = *(v1 + 264);
    sub_2428B2DC8();
    v195 = *(v1 + 3985);
    if (v195 > 2)
    {
      if (v195 == 3)
      {
        v196 = 2;
      }

      else
      {
        if (v195 != 4)
        {
LABEL_125:
          v204 = *(v1 + 280);
          sub_2428B2DC8();
          v205 = *(v1 + 3416);
          if (!v205)
          {
            goto LABEL_229;
          }

          v206 = *(v1 + 3912);
          if (*(v1 + 3988) != 1)
          {
            v239 = *(v1 + 3896);
            v240 = *(v1 + 3888);
            v241 = *(v1 + 3416);
LABEL_239:

            sub_2427CCDB0();
            swift_allocError();
            v243 = 56;
            goto LABEL_240;
          }

          v207 = [*(v1 + 3912) currentUserMayActAsOrganizer];
          v206 = *(v1 + 3912);
          if (v207)
          {
            v208 = [*(v1 + 3912) attendees];
            if (v208)
            {
              v209 = v208;
              sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
              v210 = sub_2428B46C8();

              v15 = sub_242851D1C(MEMORY[0x277D84F98]);
              if (v210 >> 62)
              {
                goto LABEL_202;
              }

              v211 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v610 = v205;
              if (!v211)
              {
LABEL_203:
                v271 = MEMORY[0x277D84F98];
                sub_242852214(MEMORY[0x277D84F98]);
                v605 = v272;
                sub_242852214(v271);
                v268 = v273;
                goto LABEL_204;
              }

LABEL_131:
              v212 = 0;
              v620 = v210 & 0xFFFFFFFFFFFFFF8;
              v629 = v210 & 0xC000000000000001;
              v595 = *(v1 + 3640);
              do
              {
                if (v629)
                {
                  v205 = v210;
                  v216 = MEMORY[0x245D1B5D0](v212, v210);
                }

                else
                {
                  if (v212 >= *(v620 + 16))
                  {
                    goto LABEL_195;
                  }

                  v205 = v210;
                  v216 = *(v210 + 8 * v212 + 32);
                }

                v217 = v216;
                v210 = v212 + 1;
                if (__OFADD__(v212, 1))
                {
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
LABEL_200:
                  __break(1u);
LABEL_201:
                  __break(1u);
LABEL_202:
                  v211 = sub_2428B49C8();
                  v610 = v205;
                  if (!v211)
                  {
                    goto LABEL_203;
                  }

                  goto LABEL_131;
                }

                v218 = v211;
                v219 = *(v1 + 3656);
                v220 = [v216 URL];
                sub_2428B35B8();

                v221 = v217;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v639 = v15;
                v223 = sub_24281E894(v219);
                v1 = v224;
                v225 = *(v15 + 16);
                v226 = (v224 & 1) == 0;
                if (__OFADD__(v225, v226))
                {
                  goto LABEL_196;
                }

                v227 = v223;
                v15 = v639;
                if (sub_242852DEC(isUniquelyReferenced_nonNull_native, v225 + v226))
                {
                  v228 = sub_24281E894(*(v635 + 3656));
                  if ((v1 & 1) != (v229 & 1))
                  {
                    v269 = *(v635 + 3632);
                    v270 = *MEMORY[0x277D85DE8];

                    return sub_2428B4C38();
                  }

                  v227 = v228;
                }

                v230 = *(v635 + 3656);
                v231 = *(v635 + 3632);
                if (v1)
                {
                  v213 = *(v639 + 56);
                  v214 = *(v213 + 8 * v227);
                  *(v213 + 8 * v227) = v221;

                  (*(v595 + 8))(v230, v231);
                }

                else
                {
                  *(v639 + 8 * (v227 >> 6) + 64) |= 1 << v227;
                  v1 = v595;
                  (*(v595 + 16))(*(v15 + 48) + *(v595 + 72) * v227, v230, v231);
                  *(*(v15 + 56) + 8 * v227) = v221;

                  (*(v595 + 8))(v230, v231);
                  v232 = *(v15 + 16);
                  v233 = __OFADD__(v232, 1);
                  v234 = v232 + 1;
                  if (v233)
                  {
                    goto LABEL_201;
                  }

                  *(v15 + 16) = v234;
                }

                v1 = v635;
                v211 = v218;
                ++v212;
                v215 = v210 == v218;
                v210 = v205;
              }

              while (!v215);
              sub_242852214(MEMORY[0x277D84F98]);
              v605 = v244;
              v245 = 0;
              v205 = v610;
              do
              {
                while (1)
                {
                  if (v629)
                  {
                    v246 = MEMORY[0x245D1B5D0](v245, v210);
                  }

                  else
                  {
                    if (v245 >= *(v620 + 16))
                    {
                      goto LABEL_198;
                    }

                    v246 = *(v210 + 8 * v245 + 32);
                  }

                  v247 = v246;
                  v248 = v245 + 1;
                  if (__OFADD__(v245, 1))
                  {
                    goto LABEL_197;
                  }

                  v249 = [v246 emailAddress];
                  if (v249)
                  {
                    break;
                  }

                  ++v245;
                  if (v248 == v218)
                  {
                    goto LABEL_177;
                  }
                }

                v250 = v249;
                v596 = sub_2428B4618();
                v252 = v251;

                v253 = v247;
                v254 = swift_isUniquelyReferenced_nonNull_native();
                *&v639 = v605;
                sub_2428203F8(v253, v596, v252, v254);

                v1 = v635;

                v245 = v248;
              }

              while (v248 != v218);
LABEL_177:
              sub_242852214(MEMORY[0x277D84F98]);
              v597 = v255;
              v256 = 0;
              do
              {
                while (1)
                {
                  if (v629)
                  {
                    v257 = MEMORY[0x245D1B5D0](v256, v210);
                  }

                  else
                  {
                    if (v256 >= *(v620 + 16))
                    {
                      goto LABEL_200;
                    }

                    v257 = *(v210 + 8 * v256 + 32);
                  }

                  v258 = v257;
                  v259 = v256 + 1;
                  if (__OFADD__(v256, 1))
                  {
                    goto LABEL_199;
                  }

                  v260 = [v257 phoneNumber];
                  if (v260)
                  {
                    break;
                  }

                  ++v256;
                  if (v259 == v211)
                  {
                    goto LABEL_188;
                  }
                }

                v261 = v260;
                v262 = sub_2428B4618();
                v264 = v263;

                v265 = v258;
                v266 = swift_isUniquelyReferenced_nonNull_native();
                *&v639 = v597;
                v267 = v262;
                v1 = v635;
                sub_2428203F8(v265, v267, v264, v266);

                v211 = v218;

                v256 = v259;
              }

              while (v259 != v218);
LABEL_188:
              v268 = v597;
LABEL_204:

              v274 = *(v205 + 16);
              if (v274)
              {
                v598 = v268;
                v275 = (v1 + 3104);
                v276 = *(v1 + 3640);
                v277 = (v276 + 48);
                v621 = (v276 + 8);
                v630 = (v276 + 32);
                v278 = v274 - 1;
                for (i = 32; ; i += 64)
                {
                  v280 = v635;
                  v281 = *(v635 + 3632);
                  v282 = *(v635 + 3624);
                  v284 = *(v610 + i);
                  v283 = *(v610 + i + 16);
                  v285 = *(v610 + i + 48);
                  v275[2] = *(v610 + i + 32);
                  v275[3] = v285;
                  *v275 = v284;
                  v275[1] = v283;
                  v286 = *(v635 + 3160);
                  sub_2428430F4(v275, v635 + 3040);
                  sub_2428B2C68();
                  if ((*v277)(v282, 1, v281) == 1)
                  {
                    sub_2427E0980(*(v635 + 3624), &qword_27ECC2CE0, &qword_2428B6560);
                  }

                  else
                  {
                    (*v630)(*(v635 + 3648), *(v635 + 3624), *(v635 + 3632));
                    if (*(v15 + 16))
                    {
                      v287 = sub_24281E894(*(v635 + 3648));
                      if (v288)
                      {
                        v289 = *(v635 + 3912);
                        v290 = *(v635 + 3648);
                        v291 = *(v635 + 3632);
                        v292 = *(*(v15 + 56) + 8 * v287);
                        [v289 removeAttendee_];
                        sub_242843150(v275);

                        (*v621)(v290, v291);
                        goto LABEL_224;
                      }
                    }

                    (*v621)(*(v635 + 3648), *(v635 + 3632));
                  }

                  v293 = *(v635 + 3144);
                  sub_2428B2C68();
                  v294 = *(v635 + 3376);
                  if (v294)
                  {
                    if (*(v605 + 16))
                    {
                      v280 = v635;
                      v295 = sub_242801C04(*(v635 + 3368), v294);
                      v297 = v296;

                      if (v297)
                      {
                        v298 = *(v635 + 3912);
                        v299 = *(*(v605 + 56) + 8 * v295);
LABEL_221:
                        v306 = v299;
                        [v298 removeAttendee_];
                        sub_242843150(v275);

                        goto LABEL_224;
                      }
                    }

                    else
                    {
                      v300 = *(v635 + 3376);

                      v280 = v635;
                    }
                  }

                  v301 = *(v280 + 3152);
                  sub_2428B2C68();
                  v302 = *(v280 + 3360);
                  if (!v302)
                  {
                    goto LABEL_222;
                  }

                  if (*(v598 + 16))
                  {
                    break;
                  }

                  sub_242843150(v275);

LABEL_224:
                  if (!v278)
                  {

                    v1 = v635;
                    goto LABEL_229;
                  }

                  --v278;
                }

                v303 = sub_242801C04(*(v635 + 3352), v302);
                v305 = v304;

                if (v305)
                {
                  v298 = *(v635 + 3912);
                  v299 = *(*(v598 + 56) + 8 * v303);
                  goto LABEL_221;
                }

LABEL_222:
                sub_242843150(v275);
                goto LABEL_224;
              }
            }

LABEL_229:
            v307 = *(v1 + 272);
            sub_2428B2DC8();
            v308 = *(v1 + 3424);
            if (!v308)
            {
LABEL_283:
              v342 = *(v1 + 3600);
              v343 = *(v1 + 3584);
              v344 = *(v1 + 3576);
              v345 = *(v1 + 304);
              sub_2428B2DE8();
              sub_2427CD47C(&unk_27ECC3A10, &qword_27ECC24F8, &qword_2428B8AD8);
              sub_2428B2EE8();

              v346 = *(v343 + 88);
              v347 = v346(v342, v344);
              LODWORD(v20) = *MEMORY[0x277CB9F00];
              if (v347 == *MEMORY[0x277CB9F00])
              {
                v348 = *(v1 + 3988);
                v349 = *(v1 + 3600);
                (*(*(v1 + 3584) + 96))(v349, *(v1 + 3576));
                if (v348 != 1)
                {
LABEL_294:
                  v365 = *(v1 + 3912);
                  v366 = *(v1 + 3896);
                  v240 = *(v1 + 3888);

                  sub_2427CCDB0();
                  swift_allocError();
                  *v367 = 56;
                  swift_willThrow();

                  goto LABEL_241;
                }

                v350 = *(v1 + 3912);
                if (v349[1])
                {
                  v351 = *v349;
                  v352 = v350;
                  v353 = sub_2428B4608();

                  v354 = *(v1 + 3912);
                }

                else
                {
                  v354 = v350;
                  v353 = 0;
                }

                [v354 setNotes_];
              }

              else
              {
                (*(*(v1 + 3584) + 8))(*(v1 + 3600), *(v1 + 3576));
              }

              v355 = *(v1 + 3592);
              v356 = *(v1 + 3576);
              v357 = *(v1 + 288);
              sub_2428B2DE8();
              sub_2428B2EE8();

              if (v346(v355, v356) != v20)
              {
                (*(*(v1 + 3584) + 8))(*(v1 + 3592), *(v1 + 3576));
LABEL_298:
                v368 = *(v1 + 3568);
                v369 = *(v1 + 3560);
                v370 = *(v1 + 3552);
                v371 = *(v1 + 296);
                sub_2428B2DE8();
                sub_2427CD47C(&qword_27ECC3A20, &qword_27ECC3A28, &unk_2428BE3C0);
                sub_2428B2EE8();

                if ((*(v369 + 88))(v368, v370) == v20)
                {
                  v624 = v20;
                  v372 = *(v1 + 3988);
                  v373 = *(v1 + 3568);
                  (*(*(v1 + 3560) + 96))(v373, *(v1 + 3552));
                  v20 = *v373;
                  v374 = v373[1];
                  v376 = v373[2];
                  v375 = v373[3];
                  v378 = v373[4];
                  v377 = v373[5];
                  v379 = v373[6];
                  if (v372 != 1)
                  {
                    v381 = *(v1 + 3896);
                    v613 = *(v1 + 3912);
                    v625 = *(v1 + 3888);
                    sub_2427CCDB0();
                    swift_allocError();
                    *v382 = 56;
                    swift_willThrow();

                    sub_24284301C(v20);
                    v318 = v625;
                    goto LABEL_246;
                  }

                  if (v20)
                  {
                    *&v639 = *v373;
                    *(&v639 + 1) = v374;
                    *&v640 = v376;
                    *(&v640 + 1) = v375;
                    *&v641 = v378;
                    *(&v641 + 1) = v377;
                    *&v642 = v379;
                    v380 = LocationEntity.ekStructuredLocation.getter();
                  }

                  else
                  {
                    v380 = 0;
                  }

                  v1 = v635;
                  [*(v635 + 3912) setStructuredLocation_];

                  sub_24284301C(v20);
                  LODWORD(v20) = v624;
                }

                else
                {
                  (*(*(v1 + 3560) + 8))(*(v1 + 3568), *(v1 + 3552));
                }

                v383 = *(v1 + 3544);
                v384 = *(v1 + 3536);
                v385 = *(v1 + 3528);
                v386 = *(v1 + 312);
                sub_2428B2DE8();
                sub_2427CD47C(&unk_27ECC3A30, &qword_27ECC38E8, qword_2428BDFD8);
                sub_2428B2EE8();

                if ((*(v384 + 88))(v383, v385) != v20)
                {
                  (*(*(v1 + 3536) + 8))(*(v1 + 3544), *(v1 + 3528));
LABEL_331:
                  v14 = 0;
LABEL_332:
                  *(v1 + 3944) = v14;
                  v418 = *(v1 + 320);
                  sub_2428B2DC8();
                  if ((*(v1 + 3408) & 1) == 0)
                  {
                    [*(v1 + 3912) setTravelTime_];
                  }

                  v419 = *(v1 + 3520);
                  v420 = *(v1 + 3512);
                  v421 = *(v1 + 3504);
                  v422 = *(v1 + 328);
                  sub_2428B2DE8();
                  sub_2427CD47C(&qword_27ECC3A40, &qword_27ECC3A48, &qword_2428BE3D0);
                  sub_2428B2EE8();

                  v423 = (*(v420 + 88))(v419, v421);
                  v424 = *(v1 + 3520);
                  v425 = *(v1 + 3512);
                  v426 = *(v1 + 3504);
                  if (v423 == v20)
                  {
                    (*(v425 + 96))(*(v1 + 3520), v426);
                    v427 = *v424;
                    v428 = *(v1 + 3912);
                    if (*v424)
                    {
                      v638[0] = MEMORY[0x277D84F90];
                      v429 = *(v427 + 16);
                      v430 = v428;
                      v431 = 0;
LABEL_337:
                      v432 = (v427 + 48 + 24 * v431);
                      while (v429 != v431)
                      {
                        if (v431 >= *(v427 + 16))
                        {
                          __break(1u);
                        }

                        v433 = v432 + 3;
                        ++v431;
                        v434 = *v432;
                        v639 = *(v432 - 1);
                        *&v640 = v434;
                        v435 = AlarmEntity.ekAlarm.getter();
                        v432 = v433;
                        v1 = v635;
                        if (v435)
                        {
                          MEMORY[0x245D1B200]();
                          if (*((v638[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v638[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            v436 = *((v638[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                            sub_2428B46E8();
                            v1 = v635;
                          }

                          sub_2428B4708();
                          goto LABEL_337;
                        }
                      }

                      sub_242822BFC(0, &qword_27ECC2FE8, 0x277CC5988);
                      v437 = sub_2428B46B8();

                      v438 = *(v1 + 3912);
                    }

                    else
                    {
                      v438 = v428;
                      v437 = 0;
                    }

                    [v438 setAlarms_];
                  }

                  else
                  {
                    (*(v425 + 8))(*(v1 + 3520), v426);
                  }

                  v439 = *(v1 + 3496);
                  v440 = *(v1 + 3488);
                  v441 = *(v1 + 3480);
                  v442 = *(v1 + 336);
                  sub_2428B2DE8();
                  sub_2427CD47C(&unk_27ECC3A50, &qword_27ECC2CE0, &qword_2428B6560);
                  sub_2428B2EE8();

                  if ((*(v440 + 88))(v439, v441) == v20)
                  {
                    v443 = *(v1 + 3988);
                    v444 = *(v1 + 3616);
                    v445 = *(v1 + 3496);
                    (*(*(v1 + 3488) + 96))(v445, *(v1 + 3480));
                    sub_24281E660(v445, v444, &qword_27ECC2CE0, &qword_2428B6560);
                    v446 = *(v1 + 3912);
                    if (v443 != 1)
                    {
                      v452 = *(v1 + 3896);
                      v42 = *(v1 + 3888);
                      v453 = *(v1 + 3616);
                      sub_2427CCDB0();
                      swift_allocError();
                      *v454 = 56;
                      swift_willThrow();

                      sub_2427E0980(v453, &qword_27ECC2CE0, &qword_2428B6560);
                      goto LABEL_245;
                    }

                    v447 = *(v1 + 3640);
                    v448 = *(v1 + 3632);
                    v449 = *(v1 + 3608);
                    sub_2427E0918(*(v1 + 3616), v449, &qword_27ECC2CE0, &qword_2428B6560);
                    LODWORD(v448) = (*(v447 + 48))(v449, 1, v448);
                    v450 = v446;
                    if (v448 == 1)
                    {
                      v451 = 0;
                    }

                    else
                    {
                      v455 = *(v1 + 3640);
                      v456 = *(v1 + 3632);
                      v457 = *(v1 + 3608);
                      v451 = sub_2428B35A8();
                      (*(v455 + 8))(v457, v456);
                    }

                    v458 = *(v1 + 3912);
                    v459 = *(v1 + 3616);
                    [v458 setURL_];

                    sub_2427E0980(v459, &qword_27ECC2CE0, &qword_2428B6560);
                  }

                  else
                  {
                    (*(*(v1 + 3488) + 8))(*(v1 + 3496), *(v1 + 3480));
                  }

                  v460 = *(v1 + 344);
                  sub_2428B2DC8();
                  v461 = *(v1 + 3984);
                  if (v461 == 8)
                  {
                    goto LABEL_359;
                  }

                  v462 = [*(v1 + 3912) allowsParticipationStatusModifications];
                  v463 = *(v1 + 3912);
                  if (v462)
                  {
                    LOBYTE(v639) = v461;
                    [v463 setParticipationStatus_];
LABEL_359:
                    v464 = [*(v1 + 3912) hasChanges];
                    v465 = *(v1 + 3912);
                    if (!v14 && !v464)
                    {
                      v466 = *(v1 + 3904);
                      v632 = *(v1 + 3896);
                      v636 = *(v1 + 3888);
                      v626 = *(v1 + 3472);

                      sub_2428B2DC8();
                      v467 = *(v1 + 992);
                      v645 = *(v1 + 976);
                      v646 = v467;
                      v468 = *(v1 + 1024);
                      v647 = *(v1 + 1008);
                      v648 = v468;
                      v469 = *(v1 + 928);
                      v641 = *(v1 + 912);
                      v642 = v469;
                      v470 = *(v1 + 960);
                      v643 = *(v1 + 944);
                      v644 = v470;
                      v471 = *(v1 + 896);
                      v639 = *(v1 + 880);
                      v640 = v471;
                      OpenEventDetailsIntent.init()(v638);
                      v472 = v638[0];
                      v473 = v638[1];
                      v474 = v638[3];
                      v614 = v638[2];
                      v475 = v646;
                      *(v1 + 2416) = v645;
                      *(v1 + 2432) = v475;
                      v476 = v648;
                      *(v1 + 2448) = v647;
                      *(v1 + 2464) = v476;
                      v477 = v642;
                      *(v1 + 2352) = v641;
                      *(v1 + 2368) = v477;
                      v478 = v644;
                      *(v1 + 2384) = v643;
                      *(v1 + 2400) = v478;
                      v479 = v640;
                      *(v1 + 2320) = v639;
                      *(v1 + 2336) = v479;
                      sub_2428B2DD8();
                      sub_2428B2DC8();
                      v480 = *(v1 + 2272);
                      *(v1 + 816) = *(v1 + 2256);
                      *(v1 + 832) = v480;
                      v481 = *(v1 + 2304);
                      *(v1 + 848) = *(v1 + 2288);
                      *(v1 + 864) = v481;
                      v482 = *(v1 + 2208);
                      *(v1 + 752) = *(v1 + 2192);
                      *(v1 + 768) = v482;
                      v483 = *(v1 + 2240);
                      *(v1 + 784) = *(v1 + 2224);
                      *(v1 + 800) = v483;
                      v484 = *(v1 + 2176);
                      *(v1 + 720) = *(v1 + 2160);
                      *(v1 + 736) = v484;
                      sub_24280B6C8((v1 + 720), v472, v473, v614, v474, v626);

                      sub_2427CCE04(v1 + 720);

                      v485 = v636;
LABEL_362:
                      sub_2427E0980(v485, &qword_27ECC38E0, &unk_2428C40D0);
                      v486 = *(v1 + 3888);
                      v487 = *(v1 + 3880);
                      v488 = *(v1 + 3872);
                      v489 = *(v1 + 3848);
                      v490 = *(v1 + 3840);
                      v491 = *(v1 + 3832);
                      v492 = *(v1 + 3824);
                      v493 = *(v1 + 3816);
                      v494 = *(v1 + 3808);
                      v495 = *(v1 + 3800);
                      v556 = *(v1 + 3776);
                      v558 = *(v1 + 3768);
                      v560 = *(v1 + 3760);
                      v562 = *(v1 + 3752);
                      v564 = *(v1 + 3744);
                      v566 = *(v1 + 3736);
                      v568 = *(v1 + 3728);
                      v570 = *(v1 + 3720);
                      v572 = *(v1 + 3712);
                      v574 = *(v1 + 3704);
                      v576 = *(v1 + 3680);
                      v578 = *(v1 + 3672);
                      v580 = *(v1 + 3656);
                      v583 = *(v1 + 3648);
                      v586 = *(v1 + 3624);
                      v589 = *(v1 + 3616);
                      v593 = *(v1 + 3608);
                      v601 = *(v1 + 3600);
                      v608 = *(v1 + 3592);
                      v615 = *(v1 + 3568);
                      v627 = *(v1 + 3544);
                      v633 = *(v1 + 3520);
                      v637 = *(v1 + 3496);

                      v329 = *(v1 + 8);
                      v496 = *MEMORY[0x277D85DE8];
                      goto LABEL_248;
                    }

                    v497 = [*(v1 + 3912) hasChanges];

                    if (v497)
                    {
                      v498 = *(v1 + 3912);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
                      v499 = swift_allocObject();
                      *(v1 + 3952) = v499;
                      *(v499 + 16) = xmmword_2428B5A90;
                      *(v499 + 32) = v498;
                      v500 = *(v1 + 360);
                      v501 = v498;
                      v502 = sub_2428B2DE8();
                      *(v1 + 3960) = v502;
                      v503 = swift_task_alloc();
                      *(v1 + 3968) = v503;
                      *v503 = v1;
                      v503[1] = sub_2428501A0;
                      v504 = *MEMORY[0x277D85DE8];

                      return sub_24280C5F4(v1 + 3412, v499, v502);
                    }

                    v507 = *(v1 + 3944);
                    if (v507)
                    {
                      v508 = *(v1 + 3896);
                      *(v1 + 3448) = 0;
                      v509 = v507;
                      v510 = [v508 saveEvent:v509 span:1 commit:0 error:v1 + 3448];
                      v511 = *(v1 + 3448);

                      if (!v510)
                      {
                        v533 = *(v1 + 3912);
                        v534 = *(v1 + 3896);
                        v535 = *(v1 + 3888);
                        sub_2428B3538();

                        swift_willThrow();
                        v318 = v535;
                        goto LABEL_246;
                      }
                    }

                    v512 = *(v1 + 3896);
                    *(v1 + 3440) = 0;
                    v513 = [v512 commitWithRollback_];
                    v514 = *(v1 + 3440);
                    if (v513)
                    {
                      v515 = (v1 + 1840);
                      v516 = (v1 + 2000);
                      v517 = *(v1 + 3912);
                      v518 = v514;
                      EventEntity.init(_:)(v517, (v1 + 1840));
                      v519 = *(v1 + 1952);
                      *(v1 + 2096) = *(v1 + 1936);
                      *(v1 + 2112) = v519;
                      v520 = *(v1 + 1984);
                      *(v1 + 2128) = *(v1 + 1968);
                      *(v1 + 2144) = v520;
                      v521 = *(v1 + 1888);
                      *(v1 + 2032) = *(v1 + 1872);
                      *(v1 + 2048) = v521;
                      v522 = *(v1 + 1920);
                      *(v1 + 2064) = *(v1 + 1904);
                      *(v1 + 2080) = v522;
                      v523 = *(v1 + 1856);
                      *(v1 + 2000) = *(v1 + 1840);
                      *(v1 + 2016) = v523;
                      v524 = sub_24281E5E0(v1 + 2000);
                      v525 = *(v1 + 3944);
                      v526 = *(v1 + 3912);
                      v527 = *(v1 + 3896);
                      v616 = v525;
                      v628 = *(v1 + 3888);
                      if (v524 != 1)
                      {
                        v1 = v635;
                        v634 = *(v635 + 3472);
                        v536 = v516[7];
                        *(v635 + 1296) = v516[6];
                        *(v635 + 1312) = v536;
                        v537 = v516[9];
                        *(v635 + 1328) = v516[8];
                        *(v635 + 1344) = v537;
                        v538 = v516[3];
                        *(v635 + 1232) = v516[2];
                        *(v635 + 1248) = v538;
                        v539 = v516[5];
                        *(v635 + 1264) = v516[4];
                        *(v635 + 1280) = v539;
                        v540 = v516[1];
                        *(v635 + 1200) = *v516;
                        *(v635 + 1216) = v540;
                        v541 = v515[7];
                        *(v635 + 1776) = v515[6];
                        *(v635 + 1792) = v541;
                        v542 = v515[9];
                        *(v635 + 1808) = v515[8];
                        *(v635 + 1824) = v542;
                        v543 = v515[3];
                        *(v635 + 1712) = v515[2];
                        *(v635 + 1728) = v543;
                        v544 = v515[5];
                        *(v635 + 1744) = v515[4];
                        *(v635 + 1760) = v544;
                        v545 = v515[1];
                        *(v635 + 1680) = *v515;
                        *(v635 + 1696) = v545;
                        sub_2427CD4FC(v635 + 1680, v635 + 1520);
                        OpenEventDetailsIntent.init()(&v639);
                        v546 = v639;
                        v547 = v640;
                        v548 = *(v635 + 1312);
                        *(v635 + 1456) = *(v635 + 1296);
                        *(v635 + 1472) = v548;
                        v549 = *(v635 + 1344);
                        *(v635 + 1488) = *(v635 + 1328);
                        *(v635 + 1504) = v549;
                        v550 = *(v635 + 1248);
                        *(v635 + 1392) = *(v635 + 1232);
                        *(v635 + 1408) = v550;
                        v551 = *(v635 + 1280);
                        *(v635 + 1424) = *(v635 + 1264);
                        *(v635 + 1440) = v551;
                        v552 = *(v635 + 1216);
                        *(v635 + 1360) = *(v635 + 1200);
                        *(v635 + 1376) = v552;
                        sub_2428B2DD8();
                        sub_24280B6C8((v635 + 1200), v546, *(&v546 + 1), v547, *(&v547 + 1), v634);

                        sub_2427E0980(v515, &unk_27ECC2E10, &qword_2428BB3B8);

                        v485 = v628;
                        goto LABEL_362;
                      }

                      sub_2427CCDB0();
                      swift_allocError();
                      *v528 = 25;
                      swift_willThrow();

                      sub_2427E0980(v628, &qword_27ECC38E0, &unk_2428C40D0);
                      v1 = v635;
LABEL_247:
                      v319 = *(v1 + 3888);
                      v320 = *(v1 + 3880);
                      v321 = *(v1 + 3872);
                      v322 = *(v635 + 3848);
                      v323 = *(v635 + 3840);
                      v324 = *(v635 + 3832);
                      v325 = *(v635 + 3824);
                      v326 = *(v635 + 3816);
                      v327 = *(v635 + 3808);
                      v328 = *(v635 + 3800);
                      v553 = *(v635 + 3776);
                      v554 = *(v635 + 3768);
                      v555 = *(v635 + 3760);
                      v557 = *(v635 + 3752);
                      v559 = *(v635 + 3744);
                      v561 = *(v635 + 3736);
                      v563 = *(v635 + 3728);
                      v565 = *(v635 + 3720);
                      v567 = *(v635 + 3712);
                      v569 = *(v635 + 3704);
                      v571 = *(v635 + 3680);
                      v573 = *(v635 + 3672);
                      v575 = *(v635 + 3656);
                      v577 = *(v635 + 3648);
                      v579 = *(v635 + 3624);
                      v582 = *(v635 + 3616);
                      v585 = *(v635 + 3608);
                      v588 = *(v635 + 3600);
                      v591 = *(v635 + 3592);
                      v599 = *(v635 + 3568);
                      v606 = *(v635 + 3544);
                      v611 = *(v635 + 3520);
                      v622 = *(v635 + 3496);

                      v329 = *(v635 + 8);
                      v330 = *MEMORY[0x277D85DE8];
LABEL_248:

                      return v329();
                    }

                    v529 = *(v1 + 3944);
                    v530 = *(v1 + 3912);
                    v531 = *(v1 + 3896);
                    v240 = *(v1 + 3888);
                    v532 = v514;
                    sub_2428B3538();

                    swift_willThrow();
                    goto LABEL_241;
                  }

                  v505 = *(v1 + 3896);
                  v42 = *(v1 + 3888);
                  sub_2427CCDB0();
                  swift_allocError();
                  *v506 = 73;
                  swift_willThrow();

LABEL_245:
                  v318 = v42;
                  goto LABEL_246;
                }

                v165 = (v1 + 2960);
                v387 = *(v1 + 3988);
                v388 = *(v1 + 3544);
                (*(*(v1 + 3536) + 96))(v388, *(v1 + 3528));
                *(v1 + 2960) = *v388;
                v389 = v388[1];
                v390 = v388[2];
                v391 = v388[4];
                *(v1 + 3008) = v388[3];
                *(v1 + 3024) = v391;
                *(v1 + 2976) = v389;
                *(v1 + 2992) = v390;
                if (v387 == 1)
                {
                  v392 = *(v1 + 3912);
                  if (*(v1 + 2960))
                  {
                    v393 = *(v1 + 3544);
                    v394 = v393[3];
                    v641 = v393[2];
                    v642 = v394;
                    v643 = v393[4];
                    v395 = v393[1];
                    v639 = *v393;
                    v640 = v395;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
                    v396 = swift_allocObject();
                    *(v396 + 16) = xmmword_2428B5A90;
                    v397 = v392;
                    *(v396 + 32) = RecurrenceRuleEntity.ekRecurrenceRule.getter();
                    sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
                    v398 = sub_2428B46B8();

                    v399 = *(v1 + 3912);
LABEL_330:
                    [v399 setRecurrenceRules_];

                    v417 = *(v1 + 360);
                    *(v1 + 3411) = 1;
                    sub_242852D84(v1 + 192, v1 + 16);
                    sub_2428B2DD8();
                    sub_2427E0980(v165, &qword_27ECC38E8, qword_2428BDFD8);
                    sub_242852DBC(v1 + 192);
                    goto LABEL_331;
                  }

                  if (![*(v1 + 3912) isOrWasPartOfRecurringSeries] || objc_msgSend(*(v1 + 3912), sel_isFirstOccurrence) && !objc_msgSend(*(v1 + 3912), sel_isDetached) || (v402 = objc_msgSend(*(v1 + 3912), sel_masterEvent)) == 0)
                  {
LABEL_329:
                    v399 = *(v1 + 3912);
                    v398 = 0;
                    goto LABEL_330;
                  }

                  v14 = v402;
                  v15 = v402;
                  v403 = [v15 recurrenceRules];
                  if (!v403)
                  {
LABEL_328:

                    v1 = v635;
                    goto LABEL_329;
                  }

                  v404 = v403;
                  sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
                  v55 = sub_2428B46C8();

                  if (!(v55 >> 62))
                  {
                    result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (result)
                    {
                      goto LABEL_319;
                    }

LABEL_327:

                    goto LABEL_328;
                  }

LABEL_326:
                  result = sub_2428B49C8();
                  if (result)
                  {
LABEL_319:
                    if ((v55 & 0xC000000000000001) == 0)
                    {
                      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v405 = *(v55 + 32);
LABEL_322:
                        v406 = v405;
                        v407 = *(v635 + 3912);

                        v408 = [v407 endDate];
                        if (v408)
                        {
                          v409 = *(v635 + 3800);
                          v410 = *(v635 + 3792);
                          v411 = *(v635 + 3784);
                          sub_2428B3678();

                          v408 = sub_2428B3658();
                          (*(v410 + 8))(v409, v411);
                        }

                        v412 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithEndDate_];

                        [v406 setRecurrenceEnd_];
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
                        v413 = swift_allocObject();
                        *(v413 + 16) = xmmword_2428B5A90;
                        *(v413 + 32) = v406;
                        v414 = v406;
                        v415 = sub_2428B46B8();

                        [v15 setRecurrenceRules_];

                        v1 = v635;
                        v416 = *(v635 + 360);
                        *(v635 + 3410) = 0;
                        sub_242852D84(v635 + 192, v635 + 544);
                        sub_2428B2DD8();

                        sub_242852DBC(v635 + 192);
                        goto LABEL_332;
                      }

                      __break(1u);
LABEL_381:
                      __break(1u);
                      return result;
                    }

LABEL_379:
                    v405 = MEMORY[0x245D1B5D0](0, v55);
                    goto LABEL_322;
                  }

                  goto LABEL_327;
                }

                v190 = *(v1 + 3912);
                v400 = *(v1 + 3896);
                v42 = *(v1 + 3888);
                sub_2427CCDB0();
                swift_allocError();
                *v401 = 56;
                swift_willThrow();

                sub_2427E0980(v1 + 2960, &qword_27ECC38E8, qword_2428BDFD8);
LABEL_244:

                goto LABEL_245;
              }

              v358 = *(v1 + 3988);
              v359 = *(v1 + 3592);
              (*(*(v1 + 3584) + 96))(v359, *(v1 + 3576));
              if (v358 == 1)
              {
                v360 = *(v1 + 3912);
                if (v359[1])
                {
                  v361 = *v359;
                  v362 = v360;
                  v363 = sub_2428B4608();

                  v364 = *(v1 + 3912);
                }

                else
                {
                  v364 = v360;
                  v363 = 0;
                }

                [v364 setLocation_];

                goto LABEL_298;
              }

              goto LABEL_294;
            }

            v206 = *(v1 + 3912);
            if (*(v1 + 3988) != 1)
            {
LABEL_238:
              v239 = *(v1 + 3896);
              v240 = *(v1 + 3888);
              goto LABEL_239;
            }

            if ([*(v1 + 3912) currentUserMayActAsOrganizer])
            {
              v309 = *(v308 + 16);
              if (!v309)
              {

                v331 = MEMORY[0x277D84F90];
LABEL_253:
                if (v331 >> 62)
                {
                  goto LABEL_281;
                }

                for (j = *((v331 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2428B49C8())
                {
                  v333 = 0;
                  v612 = v331;
                  v623 = v331 & 0xC000000000000001;
                  v592 = v331 + 32;
                  v600 = v331 & 0xFFFFFFFFFFFFFF8;
                  v607 = j;
                  while (1)
                  {
                    if (v623)
                    {
                      v334 = MEMORY[0x245D1B5D0](v333, v331);
                    }

                    else
                    {
                      if (v333 >= *(v600 + 16))
                      {
                        goto LABEL_280;
                      }

                      v334 = *(v592 + 8 * v333);
                    }

                    v335 = v334;
                    v233 = __OFADD__(v333++, 1);
                    if (v233)
                    {
                      break;
                    }

                    v336 = [*(v1 + 3912) attendees];
                    if (v336)
                    {
                      v337 = v336;
                      sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
                      v331 = sub_2428B46C8();

                      v631 = v15;
                      if (v331 >> 62)
                      {
                        v338 = sub_2428B49C8();
                      }

                      else
                      {
                        v338 = *((v331 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      v1 = 0;
                      v15 = v331 & 0xC000000000000001;
                      while (1)
                      {
                        if (v338 == v1)
                        {

                          v15 = v631;
                          v1 = v635;
                          j = v607;
                          v331 = v612;
                          goto LABEL_257;
                        }

                        if (v15)
                        {
                          v339 = MEMORY[0x245D1B5D0](v1, v331);
                        }

                        else
                        {
                          if (v1 >= *((v331 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_278;
                          }

                          v339 = *(v331 + 8 * v1 + 32);
                        }

                        v340 = v339;
                        if (__OFADD__(v1, 1))
                        {
                          break;
                        }

                        v341 = [v339 isEqualToParticipant_];

                        ++v1;
                        if (v341)
                        {

                          v15 = v631;
                          v1 = v635;
                          j = v607;
                          v331 = v612;
                          goto LABEL_258;
                        }
                      }

                      __break(1u);
LABEL_278:
                      __break(1u);
                      break;
                    }

LABEL_257:
                    [*(v1 + 3912) addAttendee_];
LABEL_258:

                    if (v333 == j)
                    {
                      goto LABEL_282;
                    }
                  }

                  __break(1u);
LABEL_280:
                  __break(1u);
LABEL_281:
                  ;
                }

LABEL_282:

                goto LABEL_283;
              }

              v638[0] = MEMORY[0x277D84F90];
              v206 = v638;
              sub_2428B4AC8();
              if (*(v308 + 16))
              {
                v310 = 0;
                v311 = (v635 + 3232);
                v1 = 32;
                while (1)
                {
                  v312 = *(v308 + v1);
                  v313 = *(v308 + v1 + 16);
                  v314 = *(v308 + v1 + 48);
                  *(v635 + 3264) = *(v308 + v1 + 32);
                  *(v635 + 3280) = v314;
                  *v311 = v312;
                  *(v635 + 3248) = v313;
                  v315 = *(v308 + v1 + 16);
                  v639 = *(v308 + v1);
                  v640 = v315;
                  v316 = *(v308 + v1 + 48);
                  v641 = *(v308 + v1 + 32);
                  v642 = v316;
                  sub_2428430F4(v311, v635 + 3168);
                  v15 = 0;
                  sub_2428307AC();
                  sub_242843150(v311);
                  sub_2428B4AA8();
                  v317 = *(v638[0] + 16);
                  sub_2428B4AD8();
                  sub_2428B4AE8();
                  v206 = v638;
                  sub_2428B4AB8();
                  if (v309 - 1 == v310)
                  {
                    break;
                  }

                  v1 += 64;
                  if (++v310 >= *(v308 + 16))
                  {
                    goto LABEL_237;
                  }
                }

                v1 = v635;
                v331 = v638[0];
                goto LABEL_253;
              }

LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

            v190 = *(v1 + 3912);
            v191 = *(v1 + 3896);
            v42 = *(v1 + 3888);

            sub_2427CCDB0();
            swift_allocError();
            v193 = 113;
LABEL_243:
            *v192 = v193;
            swift_willThrow();

            goto LABEL_244;
          }

          v239 = *(v1 + 3896);
          v240 = *(v1 + 3888);

          sub_2427CCDB0();
          swift_allocError();
          v243 = 120;
LABEL_240:
          *v242 = v243;
          swift_willThrow();

LABEL_241:
          v318 = v240;
LABEL_246:
          sub_2427E0980(v318, &qword_27ECC38E0, &unk_2428C40D0);
          goto LABEL_247;
        }

        v196 = 3;
      }
    }

    else if (*(v1 + 3985))
    {
      v196 = v195 != 1;
    }

    else
    {
      v196 = -1;
    }

    if (v196 == [*(v1 + 3912) availability])
    {
      goto LABEL_125;
    }

    v235 = [*(v1 + 3912) allowsAvailabilityModifications];
    v206 = *(v1 + 3912);
    if (!v235)
    {
      v239 = *(v1 + 3896);
      v240 = *(v1 + 3888);
      sub_2427CCDB0();
      swift_allocError();
      v243 = 65;
      goto LABEL_240;
    }

    result = [*(v1 + 3912) calendar];
    if (!result)
    {
      goto LABEL_381;
    }

    v236 = result;
    v237 = [result supportedEventAvailabilities];

    if (v195 <= 1)
    {
      if (v195)
      {
        if (v237)
        {
          v238 = 0;
          goto LABEL_190;
        }
      }

      else if (!v237)
      {
        v238 = -1;
        goto LABEL_190;
      }
    }

    else if (v195 == 2)
    {
      if ((v237 & 2) != 0)
      {
        v238 = 1;
        goto LABEL_190;
      }
    }

    else if (v195 == 3)
    {
      if ((v237 & 4) != 0)
      {
        v238 = 2;
LABEL_190:
        [*(v1 + 3912) setAvailability_];
        goto LABEL_125;
      }
    }

    else if ((v237 & 8) != 0)
    {
      v238 = 3;
      goto LABEL_190;
    }

    v190 = *(v1 + 3912);
    v191 = *(v1 + 3896);
    v42 = *(v1 + 3888);
    sub_2427CCDB0();
    swift_allocError();
    v193 = 72;
    goto LABEL_243;
  }

  v169 = v14;
  v15 = v168;
  v170 = [v169 calendar];
  if (v170)
  {
    v171 = v170;
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    v172 = v15;
    v173 = sub_2428B48E8();

    if (v173)
    {

      goto LABEL_90;
    }
  }

  v179 = *(v635 + 336);
  *(v635 + 496) = *(v635 + 320);
  *(v635 + 512) = v179;
  *(v635 + 528) = *(v635 + 352);
  v180 = *(v635 + 272);
  *(v635 + 432) = *(v635 + 256);
  *(v635 + 448) = v180;
  v181 = *(v635 + 304);
  *(v635 + 464) = *(v635 + 288);
  *(v635 + 480) = v181;
  v182 = *(v635 + 208);
  *(v635 + 368) = *(v635 + 192);
  *(v635 + 384) = v182;
  v183 = *(v635 + 240);
  *(v635 + 400) = *(v635 + 224);
  *(v635 + 416) = v183;
  v184 = swift_task_alloc();
  *(v635 + 3928) = v184;
  *v184 = v635;
  v184[1] = sub_24284D890;
  v185 = *MEMORY[0x277D85DE8];

  return sub_242851058(v169, v15);
}

uint64_t sub_24284D890()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 3928);
  v9 = *v1;
  *(*v1 + 3936) = v0;

  if (v0)
  {
    v4 = *(v2 + 3912);

    v5 = sub_242850B28;
  }

  else
  {
    v5 = sub_24284D9E8;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_24284D9E8()
{
  v460 = v0;
  v1 = v0;
  v459 = *MEMORY[0x277D85DE8];
  v2 = v0[490];
  v3 = v0[489];
  [v3 setCalendar_];

  v4 = *(v1 + 492);
  v5 = *(v1 + 31);
  sub_2428B2DC8();
  v6 = v1[3415];
  v445 = v1;
  if (v1[3415] <= 1u)
  {
    v7 = v1[3415];
    if (v1[3415])
    {
      v7 = 1;
    }
  }

  else if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    if (v6 != 3)
    {
      goto LABEL_11;
    }

    v7 = 3;
  }

  if (v7 != [*(v1 + 489) privacyLevel])
  {
    if (![*(v1 + 489) allowsPrivacyLevelModifications])
    {
      v11 = *(v1 + 489);
      v12 = *(v1 + 487);
      v13 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      v15 = 64;
      goto LABEL_147;
    }

    [*(v1 + 489) setPrivacyLevel_];
  }

LABEL_11:
  v8 = *(v1 + 32);
  sub_2428B2DC8();
  v9 = v1[3409];
  if (v1[3409] > 1u)
  {
    if (v9 != 2)
    {
      goto LABEL_21;
    }

    v10 = 3;
  }

  else if (v1[3409])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10 != [*(v1 + 489) status])
  {
    if (v1[3988] != 1)
    {
      v11 = *(v1 + 489);
      v12 = *(v1 + 487);
      v13 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      v15 = 56;
      goto LABEL_147;
    }

    [*(v1 + 489) setStatus_];
  }

LABEL_21:
  v16 = *(v1 + 33);
  sub_2428B2DC8();
  v17 = v1[3985];
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      v18 = 2;
    }

    else
    {
      if (v17 != 4)
      {
        goto LABEL_31;
      }

      v18 = 3;
    }
  }

  else if (v1[3985])
  {
    v18 = v17 != 1;
  }

  else
  {
    v18 = -1;
  }

  if (v18 != [*(v1 + 489) availability])
  {
    v50 = [*(v1 + 489) allowsAvailabilityModifications];
    v21 = *(v1 + 489);
    if (!v50)
    {
      v55 = *(v1 + 487);
      v56 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      v59 = 65;
LABEL_144:
      *v58 = v59;
      swift_willThrow();

      goto LABEL_145;
    }

    result = [*(v1 + 489) calendar];
    if (!result)
    {
LABEL_289:
      __break(1u);
      return result;
    }

    v52 = result;
    v53 = [result supportedEventAvailabilities];

    if (v17 <= 1)
    {
      if (v17)
      {
        if (v53)
        {
          v54 = 0;
          goto LABEL_96;
        }
      }

      else if (!v53)
      {
        v54 = -1;
        goto LABEL_96;
      }
    }

    else if (v17 == 2)
    {
      if ((v53 & 2) != 0)
      {
        v54 = 1;
        goto LABEL_96;
      }
    }

    else if (v17 == 3)
    {
      if ((v53 & 4) != 0)
      {
        v54 = 2;
LABEL_96:
        [*(v1 + 489) setAvailability_];
        goto LABEL_31;
      }
    }

    else if ((v53 & 8) != 0)
    {
      v54 = 3;
      goto LABEL_96;
    }

    v11 = *(v1 + 489);
    v12 = *(v1 + 487);
    v13 = *(v1 + 486);
    sub_2427CCDB0();
    swift_allocError();
    v15 = 72;
LABEL_147:
    *v14 = v15;
    swift_willThrow();

LABEL_148:
    goto LABEL_149;
  }

LABEL_31:
  v19 = *(v1 + 35);
  sub_2428B2DC8();
  v20 = *(v1 + 427);
  if (!v20)
  {
    goto LABEL_135;
  }

  v21 = *(v1 + 489);
  if (v1[3988] != 1)
  {
    v55 = *(v1 + 487);
    v56 = *(v1 + 486);
    v57 = *(v1 + 427);
LABEL_143:

    sub_2427CCDB0();
    swift_allocError();
    v59 = 56;
    goto LABEL_144;
  }

  v22 = [*(v1 + 489) currentUserMayActAsOrganizer];
  v21 = *(v1 + 489);
  if (!v22)
  {
    v55 = *(v1 + 487);
    v56 = *(v1 + 486);

    sub_2427CCDB0();
    swift_allocError();
    v59 = 120;
    goto LABEL_144;
  }

  v23 = [*(v1 + 489) attendees];
  if (v23)
  {
    v24 = v23;
    sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
    v25 = sub_2428B46C8();

    v26 = sub_242851D1C(MEMORY[0x277D84F98]);
    v426 = v20;
    if (v25 >> 62)
    {
      goto LABEL_108;
    }

    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v410 = v4;
    if (!v27)
    {
LABEL_109:
      v83 = MEMORY[0x277D84F98];
      sub_242852214(MEMORY[0x277D84F98]);
      v422 = v84;
      sub_242852214(v83);
      goto LABEL_110;
    }

LABEL_37:
    v20 = 0;
    v432 = v25 & 0xFFFFFFFFFFFFFF8;
    v440 = v25 & 0xC000000000000001;
    v416 = *(v1 + 455);
    do
    {
      if (v440)
      {
        v31 = MEMORY[0x245D1B5D0](v20, v25);
      }

      else
      {
        if (v20 >= *(v432 + 16))
        {
          goto LABEL_101;
        }

        v31 = *(v25 + 8 * v20 + 32);
      }

      v32 = v31;
      v1 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_101:
        __break(1u);
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
LABEL_108:
        v27 = sub_2428B49C8();
        v410 = v4;
        if (!v27)
        {
          goto LABEL_109;
        }

        goto LABEL_37;
      }

      v4 = v27;
      v33 = v25;
      v34 = *(v445 + 457);
      v35 = [v31 URL];
      sub_2428B35B8();

      v36 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v449 = v26;
      v38 = sub_24281E894(v34);
      v25 = v39;
      v40 = v26[2];
      v41 = (v39 & 1) == 0;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_102;
      }

      v42 = v38;
      v26 = v449;
      if (sub_242852DEC(isUniquelyReferenced_nonNull_native, v40 + v41))
      {
        v43 = sub_24281E894(*(v445 + 457));
        if ((v25 & 1) != (v44 & 1))
        {
          v81 = *(v445 + 454);
          v82 = *MEMORY[0x277D85DE8];

          return sub_2428B4C38();
        }

        v42 = v43;
      }

      v45 = *(v445 + 457);
      v46 = *(v445 + 454);
      if (v25)
      {
        v28 = *(v449 + 56);
        v29 = *(v28 + 8 * v42);
        *(v28 + 8 * v42) = v36;

        (*(v416 + 8))(v45, v46);
      }

      else
      {
        *(v449 + 8 * (v42 >> 6) + 64) |= 1 << v42;
        v25 = v416;
        (*(v416 + 16))(v26[6] + *(v416 + 72) * v42, v45, v46);
        *(v26[7] + 8 * v42) = v36;

        (*(v416 + 8))(v45, v46);
        v47 = v26[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_107;
        }

        v26[2] = v49;
      }

      ++v20;
      v27 = v4;
      v30 = v1 == v4;
      v1 = v445;
      v25 = v33;
    }

    while (!v30);
    sub_242852214(MEMORY[0x277D84F98]);
    v422 = v60;
    v61 = 0;
    do
    {
      while (1)
      {
        if (v440)
        {
          v62 = MEMORY[0x245D1B5D0](v61, v33);
        }

        else
        {
          if (v61 >= *(v432 + 16))
          {
            goto LABEL_104;
          }

          v62 = *(v33 + 8 * v61 + 32);
        }

        v63 = v62;
        v20 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          goto LABEL_103;
        }

        v64 = [v62 emailAddress];
        if (v64)
        {
          break;
        }

        ++v61;
        if (v20 == v27)
        {
          goto LABEL_83;
        }
      }

      v65 = v64;
      v417 = sub_2428B4618();
      v67 = v66;

      v68 = v63;
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v449 = v422;
      sub_2428203F8(v68, v417, v67, v69);

      v27 = v4;

      v61 = v20;
    }

    while (v20 != v4);
LABEL_83:
    sub_242852214(MEMORY[0x277D84F98]);
    v71 = 0;
    v4 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    do
    {
      v418 = v70;
      while (1)
      {
        if (v440)
        {
          v72 = MEMORY[0x245D1B5D0](v71, v25);
        }

        else
        {
          if (v71 >= *(v432 + 16))
          {
            goto LABEL_106;
          }

          v72 = *(v25 + 8 * v71 + 32);
        }

        v73 = v72;
        v20 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_105;
        }

        v74 = [v72 phoneNumber];
        if (v74)
        {
          break;
        }

        ++v71;
        if (v20 == v27)
        {
          goto LABEL_111;
        }
      }

      v75 = v74;
      v76 = sub_2428B4618();
      v78 = v77;

      v79 = v73;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *&v449 = v418;
      sub_2428203F8(v79, v76, v78, v80);

      v25 = v33;

      v70 = v418;
      v71 = v20;
    }

    while (v20 != v27);
LABEL_110:
    v418 = v70;
LABEL_111:

    v85 = *(v426 + 16);
    if (v85)
    {
      v86 = v1 + 3104;
      v87 = *(v1 + 455);
      v88 = (v87 + 48);
      v20 = v87 + 32;
      v433 = (v87 + 48);
      v441 = (v87 + 8);
      v89 = v85 - 1;
      for (i = 32; ; i += 64)
      {
        v91 = *(v1 + 454);
        v92 = *(v1 + 453);
        v94 = *(v426 + i);
        v93 = *(v426 + i + 16);
        v95 = *(v426 + i + 48);
        v86[2] = *(v426 + i + 32);
        v86[3] = v95;
        *v86 = v94;
        v86[1] = v93;
        v96 = *(v1 + 395);
        sub_2428430F4(v86, (v1 + 3040));
        sub_2428B2C68();
        if ((*v88)(v92, 1, v91) == 1)
        {
          sub_2427E0980(*(v1 + 453), &qword_27ECC2CE0, &qword_2428B6560);
        }

        else
        {
          (*v20)(*(v1 + 456), *(v1 + 453), *(v1 + 454));
          if (v26[2])
          {
            v97 = sub_24281E894(*(v1 + 456));
            if (v98)
            {
              v99 = *(v1 + 489);
              v100 = *(v1 + 456);
              v101 = *(v1 + 454);
              v102 = *(v26[7] + 8 * v97);
              [v99 removeAttendee_];
              sub_242843150(v86);

              v1 = v445;
              (*v441)(v100, v101);
              goto LABEL_132;
            }
          }

          (*v441)(*(v1 + 456), *(v1 + 454));
        }

        v103 = *(v1 + 393);
        sub_2428B2C68();
        if (*(v1 + 422))
        {
          if (*(v422 + 16))
          {
            v104 = sub_242801C04(*(v1 + 421), *(v1 + 422));
            v106 = v105;

            if (v106)
            {
              v107 = *(v1 + 489);
              v108 = *(*(v422 + 56) + 8 * v104);
              [v107 removeAttendee_];
              sub_242843150(v86);

              goto LABEL_132;
            }
          }

          else
          {
            v109 = *(v1 + 422);
          }
        }

        v110 = *(v1 + 394);
        sub_2428B2C68();
        if (*(v1 + 420))
        {
          if (*(v418 + 16))
          {
            v111 = v20;
            v112 = sub_242801C04(*(v1 + 419), *(v1 + 420));
            v114 = v113;

            if (v114)
            {
              v115 = *(v1 + 489);
              v116 = *(*(v418 + 56) + 8 * v112);
              [v115 removeAttendee_];
              sub_242843150(v86);
            }

            else
            {
              sub_242843150(v86);
            }

            v20 = v111;
            v88 = v433;
          }

          else
          {
            sub_242843150(v86);
          }
        }

        else
        {
          sub_242843150(v86);
        }

LABEL_132:
        if (!v89)
        {
          break;
        }

        --v89;
      }
    }

    v4 = v410;
  }

  else
  {
  }

LABEL_135:
  v117 = *(v1 + 34);
  sub_2428B2DC8();
  v118 = *(v1 + 428);
  if (!v118)
  {
    goto LABEL_193;
  }

  v21 = *(v1 + 489);
  if (v1[3988] != 1)
  {
    v55 = *(v1 + 487);
    v56 = *(v1 + 486);
    v127 = *(v1 + 428);
    goto LABEL_143;
  }

  if (![*(v1 + 489) currentUserMayActAsOrganizer])
  {
    v11 = *(v1 + 489);
    v12 = *(v1 + 487);
    v13 = *(v1 + 486);

    sub_2427CCDB0();
    swift_allocError();
    v15 = 113;
    goto LABEL_147;
  }

  v119 = *(v118 + 16);
  if (v119)
  {
    v448[0] = MEMORY[0x277D84F90];
    sub_2428B4AC8();
    if (*(v118 + 16))
    {
      v1 = v445;
      v20 = (v445 + 3232);
      v120 = *(v118 + 32);
      v121 = *(v118 + 48);
      v122 = *(v118 + 80);
      *(v445 + 204) = *(v118 + 64);
      *(v445 + 205) = v122;
      *(v445 + 202) = v120;
      *(v445 + 203) = v121;
      v123 = *(v118 + 48);
      v449 = *(v118 + 32);
      v450 = v123;
      v124 = *(v118 + 80);
      v451 = *(v118 + 64);
      v452 = v124;
      sub_2428430F4((v445 + 3232), (v445 + 3168));
      sub_2428307AC();
      if (v4)
      {
LABEL_141:
        v125 = *(v1 + 489);
        v126 = *(v1 + 487);
        sub_2427E0980(*(v1 + 486), &qword_27ECC38E0, &unk_2428C40D0);

        sub_242843150(v20);

LABEL_151:
        v129 = *(v1 + 486);
        v130 = *(v445 + 485);
        v131 = *(v445 + 484);
        v132 = *(v445 + 481);
        v133 = *(v445 + 480);
        v134 = *(v445 + 479);
        v135 = *(v445 + 478);
        v136 = *(v445 + 477);
        v137 = *(v445 + 476);
        v138 = *(v445 + 475);
        v378 = *(v445 + 472);
        v379 = *(v445 + 471);
        v380 = *(v445 + 470);
        v382 = *(v445 + 469);
        v384 = *(v445 + 468);
        v386 = *(v445 + 467);
        v388 = *(v445 + 466);
        v390 = *(v445 + 465);
        v392 = *(v445 + 464);
        v394 = *(v445 + 463);
        v396 = *(v445 + 460);
        v398 = *(v445 + 459);
        v400 = *(v445 + 457);
        v402 = *(v445 + 456);
        v404 = *(v445 + 453);
        v406 = *(v445 + 452);
        v408 = *(v445 + 451);
        v411 = *(v445 + 450);
        v413 = *(v445 + 449);
        v419 = *(v445 + 446);
        v423 = *(v445 + 443);
        v427 = *(v445 + 440);
        v434 = *(v445 + 437);

        v139 = *(v445 + 1);
        v140 = *MEMORY[0x277D85DE8];
LABEL_152:

        return v139();
      }

      sub_242843150(v20);
      sub_2428B4AA8();
      v142 = *(v448[0] + 16);
      sub_2428B4AD8();
      sub_2428B4AE8();
      sub_2428B4AB8();
      if (v119 == 1)
      {
        goto LABEL_157;
      }

      if (*(v118 + 16) >= 2uLL)
      {
        v153 = (v118 + 96);
        v154 = 2 - v119;
        v155 = 1;
        while (1)
        {
          v156 = *v153;
          v157 = v153[1];
          v158 = v153[3];
          *(v445 + 204) = v153[2];
          *(v445 + 205) = v158;
          *v20 = v156;
          *(v445 + 203) = v157;
          v159 = v153[1];
          v449 = *v153;
          v450 = v159;
          v160 = v153[3];
          v451 = v153[2];
          v452 = v160;
          sub_2428430F4(v20, (v445 + 3168));
          sub_2428307AC();
          sub_242843150(v20);
          sub_2428B4AA8();
          v161 = *(v448[0] + 16);
          sub_2428B4AD8();
          sub_2428B4AE8();
          sub_2428B4AB8();
          if (v154 + v155 == 1)
          {
            break;
          }

          v153 += 4;
          if (++v155 >= *(v118 + 16))
          {
            goto LABEL_186;
          }
        }

LABEL_157:

        v1 = v445;
        v141 = v448[0];
        goto LABEL_158;
      }
    }

LABEL_186:
    __break(1u);
    v1 = v445;
    goto LABEL_141;
  }

  v141 = MEMORY[0x277D84F90];
LABEL_158:
  if (v141 >> 62)
  {
    goto LABEL_191;
  }

  for (j = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2428B49C8())
  {
    v144 = 0;
    v428 = v141;
    v435 = v141 & 0xC000000000000001;
    v414 = v141 + 32;
    v420 = v141 & 0xFFFFFFFFFFFFFF8;
    v424 = j;
    while (1)
    {
      if (v435)
      {
        v145 = MEMORY[0x245D1B5D0](v144, v141);
      }

      else
      {
        if (v144 >= *(v420 + 16))
        {
          goto LABEL_190;
        }

        v145 = *(v414 + 8 * v144);
      }

      v1 = v145;
      v48 = __OFADD__(v144++, 1);
      if (v48)
      {
        break;
      }

      v146 = [*(v445 + 489) attendees];
      if (v146)
      {
        v147 = v146;
        sub_242822BFC(0, &qword_27ECC3260, 0x277CC5A70);
        v141 = sub_2428B46C8();

        if (v141 >> 62)
        {
          v148 = sub_2428B49C8();
        }

        else
        {
          v148 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v149 = 0;
        while (1)
        {
          if (v148 == v149)
          {

            j = v424;
            v141 = v428;
            goto LABEL_162;
          }

          if ((v141 & 0xC000000000000001) != 0)
          {
            v150 = MEMORY[0x245D1B5D0](v149, v141);
          }

          else
          {
            if (v149 >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_188;
            }

            v150 = *(v141 + 8 * v149 + 32);
          }

          v151 = v150;
          if (__OFADD__(v149, 1))
          {
            break;
          }

          v152 = [v150 isEqualToParticipant_];

          ++v149;
          if (v152)
          {

            j = v424;
            v141 = v428;
            goto LABEL_163;
          }
        }

        __break(1u);
LABEL_188:
        __break(1u);
        break;
      }

LABEL_162:
      [*(v445 + 489) addAttendee_];
LABEL_163:

      v1 = v445;
      if (v144 == j)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    ;
  }

LABEL_192:

LABEL_193:
  v162 = *(v1 + 450);
  v163 = *(v1 + 448);
  v164 = *(v1 + 447);
  v165 = *(v1 + 38);
  sub_2428B2DE8();
  sub_2427CD47C(&unk_27ECC3A10, &qword_27ECC24F8, &qword_2428B8AD8);
  sub_2428B2EE8();

  v166 = *(v163 + 88);
  v167 = v166(v162, v164);
  v168 = *MEMORY[0x277CB9F00];
  if (v167 == *MEMORY[0x277CB9F00])
  {
    v169 = v1[3988];
    v170 = *(v1 + 450);
    (*(*(v1 + 448) + 96))(v170, *(v1 + 447));
    if (v169 != 1)
    {
      goto LABEL_204;
    }

    v171 = *(v1 + 489);
    if (v170[1])
    {
      v172 = *v170;
      v173 = v171;
      v174 = sub_2428B4608();

      v175 = *(v1 + 489);
    }

    else
    {
      v175 = v171;
      v174 = 0;
    }

    [v175 setNotes_];
  }

  else
  {
    (*(*(v1 + 448) + 8))(*(v1 + 450), *(v1 + 447));
  }

  v176 = *(v1 + 449);
  v177 = *(v1 + 447);
  v178 = *(v1 + 36);
  sub_2428B2DE8();
  sub_2428B2EE8();

  if (v166(v176, v177) != v168)
  {
    (*(*(v1 + 448) + 8))(*(v1 + 449), *(v1 + 447));
    goto LABEL_208;
  }

  v179 = v1[3988];
  v180 = *(v1 + 449);
  (*(*(v1 + 448) + 96))(v180, *(v1 + 447));
  if (v179 != 1)
  {
LABEL_204:
    v186 = *(v1 + 489);
    v187 = *(v1 + 487);
    v56 = *(v1 + 486);

    sub_2427CCDB0();
    swift_allocError();
    *v188 = 56;
    swift_willThrow();

    goto LABEL_145;
  }

  v181 = *(v1 + 489);
  if (v180[1])
  {
    v182 = *v180;
    v183 = v181;
    v184 = sub_2428B4608();

    v185 = *(v1 + 489);
  }

  else
  {
    v185 = v181;
    v184 = 0;
  }

  [v185 setLocation_];

LABEL_208:
  v189 = *(v1 + 446);
  v190 = *(v1 + 445);
  v191 = *(v1 + 444);
  v192 = *(v1 + 37);
  sub_2428B2DE8();
  sub_2427CD47C(&qword_27ECC3A20, &qword_27ECC3A28, &unk_2428BE3C0);
  sub_2428B2EE8();

  if ((*(v190 + 88))(v189, v191) == v168)
  {
    v436 = v168;
    v193 = v1[3988];
    v194 = *(v1 + 446);
    (*(*(v1 + 445) + 96))(v194, *(v1 + 444));
    v195 = *v194;
    v196 = v194[1];
    v198 = v194[2];
    v197 = v194[3];
    v200 = v194[4];
    v199 = v194[5];
    v201 = v194[6];
    if (v193 != 1)
    {
      v203 = *(v1 + 487);
      v429 = *(v1 + 489);
      v437 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      *v204 = 56;
      swift_willThrow();

      sub_24284301C(v195);
      v128 = v437;
      goto LABEL_150;
    }

    if (v195)
    {
      *&v449 = *v194;
      *(&v449 + 1) = v196;
      *&v450 = v198;
      *(&v450 + 1) = v197;
      *&v451 = v200;
      *(&v451 + 1) = v199;
      *&v452 = v201;
      v202 = LocationEntity.ekStructuredLocation.getter();
    }

    else
    {
      v202 = 0;
    }

    v1 = v445;
    [*(v445 + 489) setStructuredLocation_];

    sub_24284301C(v195);
    v168 = v436;
  }

  else
  {
    (*(*(v1 + 445) + 8))(*(v1 + 446), *(v1 + 444));
  }

  v205 = *(v1 + 443);
  v206 = *(v1 + 442);
  v207 = *(v1 + 441);
  v208 = *(v1 + 39);
  sub_2428B2DE8();
  sub_2427CD47C(&unk_27ECC3A30, &qword_27ECC38E8, qword_2428BDFD8);
  sub_2428B2EE8();

  if ((*(v206 + 88))(v205, v207) != v168)
  {
    (*(*(v1 + 442) + 8))(*(v1 + 443), *(v1 + 441));
LABEL_241:
    v225 = 0;
    goto LABEL_242;
  }

  v209 = v1[3988];
  v210 = *(v1 + 443);
  (*(*(v1 + 442) + 96))(v210, *(v1 + 441));
  *(v1 + 185) = *v210;
  v211 = v210[1];
  v212 = v210[2];
  v213 = v210[4];
  *(v1 + 188) = v210[3];
  *(v1 + 189) = v213;
  *(v1 + 186) = v211;
  *(v1 + 187) = v212;
  if (v209 != 1)
  {
    v11 = *(v1 + 489);
    v222 = *(v1 + 487);
    v13 = *(v1 + 486);
    sub_2427CCDB0();
    swift_allocError();
    *v223 = 56;
    swift_willThrow();

    sub_2427E0980((v1 + 2960), &qword_27ECC38E8, qword_2428BDFD8);
    goto LABEL_148;
  }

  v214 = *(v1 + 489);
  if (*(v1 + 370))
  {
    v215 = *(v1 + 443);
    v216 = v215[3];
    v451 = v215[2];
    v452 = v216;
    v453 = v215[4];
    v217 = v215[1];
    v449 = *v215;
    v450 = v217;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    v218 = swift_allocObject();
    *(v218 + 16) = xmmword_2428B5A90;
    v219 = v214;
    *(v218 + 32) = RecurrenceRuleEntity.ekRecurrenceRule.getter();
    sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
    v220 = sub_2428B46B8();

    v221 = *(v1 + 489);
LABEL_240:
    [v221 setRecurrenceRules_];

    v244 = *(v1 + 45);
    v1[3411] = 1;
    sub_242852D84((v1 + 192), (v1 + 16));
    sub_2428B2DD8();
    sub_2427E0980((v1 + 2960), &qword_27ECC38E8, qword_2428BDFD8);
    sub_242852DBC((v1 + 192));
    goto LABEL_241;
  }

  if (![*(v1 + 489) isOrWasPartOfRecurringSeries] || objc_msgSend(*(v1 + 489), sel_isFirstOccurrence) && !objc_msgSend(*(v1 + 489), sel_isDetached) || (v224 = objc_msgSend(*(v1 + 489), sel_masterEvent)) == 0)
  {
LABEL_239:
    v221 = *(v1 + 489);
    v220 = 0;
    goto LABEL_240;
  }

  v225 = v224;
  v226 = v224;
  v227 = [v226 recurrenceRules];
  if (!v227)
  {
LABEL_238:

    goto LABEL_239;
  }

  v228 = v227;
  sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
  v229 = sub_2428B46C8();

  if (!(v229 >> 62))
  {
    result = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_229;
    }

    goto LABEL_237;
  }

  result = sub_2428B49C8();
  if (!result)
  {
LABEL_237:

    goto LABEL_238;
  }

LABEL_229:
  if ((v229 & 0xC000000000000001) != 0)
  {
    v230 = MEMORY[0x245D1B5D0](0, v229);
    goto LABEL_232;
  }

  if (!*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_289;
  }

  v230 = *(v229 + 32);
LABEL_232:
  v231 = v230;
  v232 = *(v1 + 489);

  v233 = [v232 endDate];
  if (v233)
  {
    v234 = *(v1 + 475);
    v235 = *(v445 + 474);
    v236 = *(v445 + 473);
    v237 = v233;
    sub_2428B3678();

    v238 = sub_2428B3658();
    (*(v235 + 8))(v234, v236);
    v1 = v445;
  }

  else
  {
    v238 = 0;
  }

  v239 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithEndDate_];

  [v231 setRecurrenceEnd_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_2428B5A90;
  *(v240 + 32) = v231;
  v241 = v231;
  v242 = sub_2428B46B8();

  [v226 setRecurrenceRules_];

  v243 = *(v1 + 45);
  v1[3410] = 0;
  sub_242852D84((v1 + 192), (v1 + 544));
  sub_2428B2DD8();

  sub_242852DBC((v1 + 192));
LABEL_242:
  *(v1 + 493) = v225;
  v245 = *(v1 + 40);
  sub_2428B2DC8();
  if ((v1[3408] & 1) == 0)
  {
    [*(v1 + 489) setTravelTime_];
  }

  v246 = *(v1 + 440);
  v247 = *(v1 + 439);
  v248 = *(v1 + 438);
  v249 = *(v1 + 41);
  sub_2428B2DE8();
  sub_2427CD47C(&qword_27ECC3A40, &qword_27ECC3A48, &qword_2428BE3D0);
  sub_2428B2EE8();

  v250 = (*(v247 + 88))(v246, v248);
  v251 = *(v1 + 440);
  v252 = *(v1 + 439);
  v253 = *(v1 + 438);
  if (v250 == v168)
  {
    (*(v252 + 96))(*(v1 + 440), v253);
    v254 = *v251;
    v255 = *(v1 + 489);
    if (*v251)
    {
      v448[0] = MEMORY[0x277D84F90];
      v256 = *(v254 + 16);
      v257 = v255;
      v258 = 0;
LABEL_247:
      v259 = (v254 + 48 + 24 * v258);
      while (v256 != v258)
      {
        if (v258 >= *(v254 + 16))
        {
          __break(1u);
        }

        v260 = v259 + 3;
        ++v258;
        v261 = *v259;
        v449 = *(v259 - 1);
        *&v450 = v261;
        v262 = AlarmEntity.ekAlarm.getter();
        v259 = v260;
        if (v262)
        {
          MEMORY[0x245D1B200]();
          if (*((v448[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v448[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v263 = *((v448[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2428B46E8();
          }

          sub_2428B4708();
          goto LABEL_247;
        }
      }

      sub_242822BFC(0, &qword_27ECC2FE8, 0x277CC5988);
      v264 = sub_2428B46B8();

      v1 = v445;
      v265 = *(v445 + 489);
    }

    else
    {
      v265 = v255;
      v264 = 0;
    }

    [v265 setAlarms_];
  }

  else
  {
    (*(v252 + 8))(*(v1 + 440), v253);
  }

  v266 = *(v1 + 437);
  v267 = *(v1 + 436);
  v268 = *(v1 + 435);
  v269 = *(v1 + 42);
  sub_2428B2DE8();
  sub_2427CD47C(&unk_27ECC3A50, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2EE8();

  if ((*(v267 + 88))(v266, v268) == v168)
  {
    v270 = v1[3988];
    v271 = *(v1 + 452);
    v272 = *(v1 + 437);
    (*(*(v1 + 436) + 96))(v272, *(v1 + 435));
    sub_24281E660(v272, v271, &qword_27ECC2CE0, &qword_2428B6560);
    v273 = *(v1 + 489);
    v274 = *(v1 + 452);
    if (v270 != 1)
    {
      v281 = *(v1 + 487);
      v56 = *(v1 + 486);
      sub_2427CCDB0();
      swift_allocError();
      *v282 = 56;
      swift_willThrow();

      sub_2427E0980(v274, &qword_27ECC2CE0, &qword_2428B6560);
      goto LABEL_145;
    }

    v275 = *(v1 + 455);
    v276 = *(v1 + 454);
    v277 = *(v1 + 451);
    sub_2427E0918(*(v1 + 452), v277, &qword_27ECC2CE0, &qword_2428B6560);
    v278 = (*(v275 + 48))(v277, 1, v276);
    v279 = v273;
    if (v278 == 1)
    {
      v280 = 0;
    }

    else
    {
      v283 = *(v1 + 455);
      v284 = *(v1 + 454);
      v285 = *(v1 + 451);
      v280 = sub_2428B35A8();
      (*(v283 + 8))(v285, v284);
    }

    v286 = *(v1 + 489);
    v287 = *(v1 + 452);
    [v286 setURL_];

    sub_2427E0980(v287, &qword_27ECC2CE0, &qword_2428B6560);
  }

  else
  {
    (*(*(v1 + 436) + 8))(*(v1 + 437), *(v1 + 435));
  }

  v288 = *(v1 + 43);
  sub_2428B2DC8();
  v289 = v1[3984];
  if (v289 != 8)
  {
    v290 = [*(v1 + 489) allowsParticipationStatusModifications];
    v291 = *(v1 + 489);
    if (v290)
    {
      LOBYTE(v449) = v289;
      [v291 setParticipationStatus_];
      goto LABEL_269;
    }

    v332 = *(v1 + 487);
    v13 = *(v1 + 486);
    sub_2427CCDB0();
    swift_allocError();
    *v333 = 73;
    swift_willThrow();

LABEL_149:
    v128 = v13;
    goto LABEL_150;
  }

LABEL_269:
  v292 = [*(v1 + 489) hasChanges];
  v293 = *(v1 + 489);
  if (!v225 && !v292)
  {
    v294 = *(v1 + 488);
    v442 = *(v1 + 487);
    v446 = *(v1 + 486);
    v438 = *(v1 + 434);

    sub_2428B2DC8();
    v295 = *(v1 + 62);
    v455 = *(v1 + 61);
    v456 = v295;
    v296 = *(v1 + 64);
    v457 = *(v1 + 63);
    v458 = v296;
    v297 = *(v1 + 58);
    v451 = *(v1 + 57);
    v452 = v297;
    v298 = *(v1 + 60);
    v453 = *(v1 + 59);
    v454 = v298;
    v299 = *(v1 + 56);
    v449 = *(v1 + 55);
    v450 = v299;
    OpenEventDetailsIntent.init()(v448);
    v301 = v448[0];
    v300 = v448[1];
    v302 = v448[3];
    v430 = v448[2];
    v303 = v456;
    *(v1 + 151) = v455;
    *(v1 + 152) = v303;
    v304 = v458;
    *(v1 + 153) = v457;
    *(v1 + 154) = v304;
    v305 = v452;
    *(v1 + 147) = v451;
    *(v1 + 148) = v305;
    v306 = v454;
    *(v1 + 149) = v453;
    *(v1 + 150) = v306;
    v307 = v450;
    *(v1 + 145) = v449;
    *(v1 + 146) = v307;
    sub_2428B2DD8();
    sub_2428B2DC8();
    v308 = *(v1 + 142);
    *(v1 + 51) = *(v1 + 141);
    *(v1 + 52) = v308;
    v309 = *(v1 + 144);
    *(v1 + 53) = *(v1 + 143);
    *(v1 + 54) = v309;
    v310 = *(v1 + 138);
    *(v1 + 47) = *(v1 + 137);
    *(v1 + 48) = v310;
    v311 = *(v1 + 140);
    *(v1 + 49) = *(v1 + 139);
    *(v1 + 50) = v311;
    v312 = *(v1 + 136);
    *(v1 + 45) = *(v1 + 135);
    *(v1 + 46) = v312;
    sub_24280B6C8(v1 + 45, v301, v300, v430, v302, v438);

    sub_2427CCE04((v1 + 720));

LABEL_272:
    sub_2427E0980(v446, &qword_27ECC38E0, &unk_2428C40D0);
    v313 = *(v1 + 486);
    v314 = *(v1 + 485);
    v315 = *(v1 + 484);
    v316 = *(v1 + 481);
    v317 = *(v1 + 480);
    v318 = *(v1 + 479);
    v319 = *(v1 + 478);
    v320 = *(v1 + 477);
    v321 = *(v1 + 476);
    v322 = *(v1 + 475);
    v381 = *(v1 + 472);
    v383 = *(v1 + 471);
    v385 = *(v1 + 470);
    v387 = *(v1 + 469);
    v389 = *(v1 + 468);
    v391 = *(v1 + 467);
    v393 = *(v1 + 466);
    v395 = *(v1 + 465);
    v397 = *(v1 + 464);
    v399 = *(v1 + 463);
    v401 = *(v1 + 460);
    v403 = *(v1 + 459);
    v405 = *(v1 + 457);
    v407 = *(v1 + 456);
    v409 = *(v1 + 453);
    v412 = *(v1 + 452);
    v415 = *(v1 + 451);
    v421 = *(v1 + 450);
    v425 = *(v1 + 449);
    v431 = *(v1 + 446);
    v439 = *(v1 + 443);
    v443 = *(v1 + 440);
    v447 = *(v1 + 437);

    v139 = *(v1 + 1);
    v323 = *MEMORY[0x277D85DE8];
    goto LABEL_152;
  }

  v324 = [*(v1 + 489) hasChanges];

  if (!v324)
  {
    v334 = *(v1 + 493);
    if (v334)
    {
      v335 = *(v1 + 487);
      *(v1 + 431) = 0;
      v336 = v334;
      v337 = [v335 saveEvent:v336 span:1 commit:0 error:v1 + 3448];
      v338 = *(v1 + 431);

      if (!v337)
      {
        v358 = *(v1 + 489);
        v359 = *(v1 + 487);
        v360 = *(v1 + 486);
        sub_2428B3538();

        swift_willThrow();
        v128 = v360;
        goto LABEL_150;
      }
    }

    v339 = *(v1 + 487);
    *(v1 + 430) = 0;
    v340 = [v339 commitWithRollback_];
    v341 = *(v1 + 430);
    if (v340)
    {
      v342 = *(v1 + 489);
      v343 = v341;
      EventEntity.init(_:)(v342, v1 + 115);
      v344 = *(v1 + 122);
      *(v1 + 131) = *(v1 + 121);
      *(v1 + 132) = v344;
      v345 = *(v1 + 124);
      *(v1 + 133) = *(v1 + 123);
      *(v1 + 134) = v345;
      v346 = *(v1 + 118);
      *(v1 + 127) = *(v1 + 117);
      *(v1 + 128) = v346;
      v347 = *(v1 + 120);
      *(v1 + 129) = *(v1 + 119);
      *(v1 + 130) = v347;
      v348 = *(v1 + 116);
      *(v1 + 125) = *(v1 + 115);
      *(v1 + 126) = v348;
      v349 = sub_24281E5E0((v1 + 2000));
      v350 = *(v1 + 493);
      v351 = *(v1 + 489);
      v352 = *(v1 + 487);
      v13 = *(v1 + 486);
      if (v349 != 1)
      {
        v444 = *(v1 + 434);
        v446 = *(v1 + 486);
        v361 = *(v1 + 132);
        *(v1 + 81) = *(v1 + 131);
        *(v1 + 82) = v361;
        v362 = *(v1 + 134);
        *(v1 + 83) = *(v1 + 133);
        *(v1 + 84) = v362;
        v363 = *(v1 + 128);
        *(v1 + 77) = *(v1 + 127);
        *(v1 + 78) = v363;
        v364 = *(v1 + 130);
        *(v1 + 79) = *(v1 + 129);
        *(v1 + 80) = v364;
        v365 = *(v1 + 126);
        *(v1 + 75) = *(v1 + 125);
        *(v1 + 76) = v365;
        v366 = *(v1 + 122);
        *(v1 + 111) = *(v1 + 121);
        *(v1 + 112) = v366;
        v367 = *(v1 + 124);
        *(v1 + 113) = *(v1 + 123);
        *(v1 + 114) = v367;
        v368 = *(v1 + 118);
        *(v1 + 107) = *(v1 + 117);
        *(v1 + 108) = v368;
        v369 = *(v1 + 120);
        *(v1 + 109) = *(v1 + 119);
        *(v1 + 110) = v369;
        v370 = *(v1 + 116);
        *(v1 + 105) = *(v1 + 115);
        *(v1 + 106) = v370;
        sub_2427CD4FC((v1 + 1680), (v1 + 1520));
        OpenEventDetailsIntent.init()(&v449);
        v371 = v449;
        v372 = v450;
        v373 = *(v1 + 82);
        *(v1 + 91) = *(v1 + 81);
        *(v1 + 92) = v373;
        v374 = *(v1 + 84);
        *(v1 + 93) = *(v1 + 83);
        *(v1 + 94) = v374;
        v375 = *(v1 + 78);
        *(v1 + 87) = *(v1 + 77);
        *(v1 + 88) = v375;
        v376 = *(v1 + 80);
        *(v1 + 89) = *(v1 + 79);
        *(v1 + 90) = v376;
        v377 = *(v1 + 76);
        *(v1 + 85) = *(v1 + 75);
        *(v1 + 86) = v377;
        sub_2428B2DD8();
        sub_24280B6C8(v1 + 75, v371, *(&v371 + 1), v372, *(&v372 + 1), v444);

        sub_2427E0980((v1 + 1840), &unk_27ECC2E10, &qword_2428BB3B8);

        goto LABEL_272;
      }

      sub_2427CCDB0();
      swift_allocError();
      *v353 = 25;
      swift_willThrow();

      goto LABEL_149;
    }

    v354 = *(v1 + 493);
    v355 = *(v1 + 489);
    v356 = *(v1 + 487);
    v56 = *(v1 + 486);
    v357 = v341;
    sub_2428B3538();

    swift_willThrow();
LABEL_145:
    v128 = v56;
LABEL_150:
    sub_2427E0980(v128, &qword_27ECC38E0, &unk_2428C40D0);
    goto LABEL_151;
  }

  v325 = *(v1 + 489);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v326 = swift_allocObject();
  *(v1 + 494) = v326;
  *(v326 + 16) = xmmword_2428B5A90;
  *(v326 + 32) = v325;
  v327 = *(v1 + 45);
  v328 = v325;
  v329 = sub_2428B2DE8();
  *(v1 + 495) = v329;
  v330 = swift_task_alloc();
  *(v1 + 496) = v330;
  *v330 = v1;
  v330[1] = sub_2428501A0;
  v331 = *MEMORY[0x277D85DE8];

  return sub_24280C5F4((v1 + 3412), v326, v329);
}

uint64_t sub_2428501A0()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 3968);
  v4 = *v1;
  *(*v1 + 3976) = v0;

  v5 = *(v2 + 3960);
  v6 = *(v2 + 3952);
  if (v0)
  {

    v7 = sub_242850DC0;
  }

  else
  {

    v7 = sub_242850338;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_242850338()
{
  v134 = v0;
  v133[5] = *MEMORY[0x277D85DE8];
  v1 = qword_2428BE7D0[*(v0 + 3412)];
  v2 = *(v0 + 3912);
  v3 = *(v0 + 3896);
  *(v0 + 3456) = 0;
  v4 = [v3 saveEvent:v2 span:v1 commit:0 error:v0 + 3456];
  v5 = *(v0 + 3456);
  v6 = *(v0 + 3944);
  if (!v4)
  {
    v27 = *(v0 + 3912);
    v28 = *(v0 + 3896);
    v29 = *(v0 + 3888);
    v30 = v5;
    sub_2428B3538();

    swift_willThrow();
    v31 = v29;
LABEL_11:
    sub_2427E0980(v31, &qword_27ECC38E0, &unk_2428C40D0);
    v39 = *(v0 + 3888);
    v40 = *(v0 + 3880);
    v41 = *(v0 + 3872);
    v42 = *(v0 + 3848);
    v43 = *(v0 + 3840);
    v44 = *(v0 + 3832);
    v45 = *(v0 + 3824);
    v46 = *(v0 + 3816);
    v47 = *(v0 + 3808);
    v48 = *(v0 + 3800);
    v84 = *(v0 + 3776);
    v86 = *(v0 + 3768);
    v88 = *(v0 + 3760);
    v90 = *(v0 + 3752);
    v92 = *(v0 + 3744);
    v94 = *(v0 + 3736);
    v96 = *(v0 + 3728);
    v98 = *(v0 + 3720);
    v100 = *(v0 + 3712);
    v102 = *(v0 + 3704);
    v104 = *(v0 + 3680);
    v106 = *(v0 + 3672);
    v108 = *(v0 + 3656);
    v110 = *(v0 + 3648);
    v112 = *(v0 + 3624);
    v114 = *(v0 + 3616);
    v116 = *(v0 + 3608);
    v118 = *(v0 + 3600);
    v120 = *(v0 + 3592);
    v122 = *(v0 + 3568);
    v124 = *(v0 + 3544);
    v127 = *(v0 + 3520);
    v130 = *(v0 + 3496);

    v49 = *(v0 + 8);
    v50 = *MEMORY[0x277D85DE8];
    goto LABEL_12;
  }

  v7 = v5;
  if (v6)
  {
    v8 = *(v0 + 3896);
    *(v0 + 3448) = 0;
    v9 = v6;
    v10 = [v8 saveEvent:v9 span:1 commit:0 error:v0 + 3448];
    v11 = *(v0 + 3448);

    if (!v10)
    {
      v36 = *(v0 + 3912);
      v37 = *(v0 + 3896);
      v38 = *(v0 + 3888);
      sub_2428B3538();

      swift_willThrow();
      v31 = v38;
      goto LABEL_11;
    }
  }

  v12 = *(v0 + 3896);
  *(v0 + 3440) = 0;
  v13 = [v12 commitWithRollback_];
  v14 = *(v0 + 3440);
  if (!v13)
  {
    v32 = *(v0 + 3944);
    v33 = *(v0 + 3912);
    v34 = *(v0 + 3896);
    v25 = *(v0 + 3888);
    v35 = v14;
    sub_2428B3538();

    swift_willThrow();
    goto LABEL_9;
  }

  v15 = *(v0 + 3912);
  v16 = v14;
  EventEntity.init(_:)(v15, (v0 + 1840));
  v17 = *(v0 + 1952);
  *(v0 + 2096) = *(v0 + 1936);
  *(v0 + 2112) = v17;
  v18 = *(v0 + 1984);
  *(v0 + 2128) = *(v0 + 1968);
  *(v0 + 2144) = v18;
  v19 = *(v0 + 1888);
  *(v0 + 2032) = *(v0 + 1872);
  *(v0 + 2048) = v19;
  v20 = *(v0 + 1920);
  *(v0 + 2064) = *(v0 + 1904);
  *(v0 + 2080) = v20;
  v21 = *(v0 + 1856);
  *(v0 + 2000) = *(v0 + 1840);
  *(v0 + 2016) = v21;
  if (sub_24281E5E0(v0 + 2000) == 1)
  {
    v22 = *(v0 + 3944);
    v23 = *(v0 + 3912);
    v24 = *(v0 + 3896);
    v25 = *(v0 + 3888);
    sub_2427CCDB0();
    swift_allocError();
    *v26 = 25;
    swift_willThrow();

LABEL_9:
    v31 = v25;
    goto LABEL_11;
  }

  v52 = *(v0 + 2112);
  *(v0 + 1296) = *(v0 + 2096);
  *(v0 + 1312) = v52;
  v53 = *(v0 + 2144);
  *(v0 + 1328) = *(v0 + 2128);
  *(v0 + 1344) = v53;
  v54 = *(v0 + 2048);
  *(v0 + 1232) = *(v0 + 2032);
  *(v0 + 1248) = v54;
  v55 = *(v0 + 2080);
  *(v0 + 1264) = *(v0 + 2064);
  *(v0 + 1280) = v55;
  v56 = *(v0 + 2016);
  *(v0 + 1200) = *(v0 + 2000);
  *(v0 + 1216) = v56;
  v57 = *(v0 + 1952);
  *(v0 + 1776) = *(v0 + 1936);
  *(v0 + 1792) = v57;
  v58 = *(v0 + 1984);
  *(v0 + 1808) = *(v0 + 1968);
  *(v0 + 1824) = v58;
  v59 = *(v0 + 1888);
  *(v0 + 1712) = *(v0 + 1872);
  *(v0 + 1728) = v59;
  v60 = *(v0 + 1920);
  *(v0 + 1744) = *(v0 + 1904);
  *(v0 + 1760) = v60;
  v61 = *(v0 + 1856);
  *(v0 + 1680) = *(v0 + 1840);
  v125 = *(v0 + 3912);
  v128 = *(v0 + 3944);
  v62 = *(v0 + 3896);
  v131 = *(v0 + 3888);
  v63 = *(v0 + 3472);
  *(v0 + 1696) = v61;
  sub_2427CD4FC(v0 + 1680, v0 + 1520);
  OpenEventDetailsIntent.init()(v133);
  v64 = *(v0 + 1312);
  *(v0 + 1456) = *(v0 + 1296);
  *(v0 + 1472) = v64;
  v65 = *(v0 + 1344);
  *(v0 + 1488) = *(v0 + 1328);
  *(v0 + 1504) = v65;
  v66 = *(v0 + 1248);
  *(v0 + 1392) = *(v0 + 1232);
  *(v0 + 1408) = v66;
  v67 = *(v0 + 1280);
  *(v0 + 1424) = *(v0 + 1264);
  *(v0 + 1440) = v67;
  v68 = *(v0 + 1216);
  *(v0 + 1360) = *(v0 + 1200);
  v69 = v133[0];
  v70 = v133[1];
  v71 = v133[2];
  v72 = v133[3];
  *(v0 + 1376) = v68;
  sub_2428B2DD8();
  sub_24280B6C8((v0 + 1200), v69, v70, v71, v72, v63);

  sub_2427E0980(v0 + 1840, &unk_27ECC2E10, &qword_2428BB3B8);

  sub_2427E0980(v131, &qword_27ECC38E0, &unk_2428C40D0);
  v73 = *(v0 + 3888);
  v74 = *(v0 + 3880);
  v75 = *(v0 + 3872);
  v76 = *(v0 + 3848);
  v77 = *(v0 + 3840);
  v78 = *(v0 + 3832);
  v79 = *(v0 + 3824);
  v80 = *(v0 + 3816);
  v81 = *(v0 + 3808);
  v82 = *(v0 + 3800);
  v85 = *(v0 + 3776);
  v87 = *(v0 + 3768);
  v89 = *(v0 + 3760);
  v91 = *(v0 + 3752);
  v93 = *(v0 + 3744);
  v95 = *(v0 + 3736);
  v97 = *(v0 + 3728);
  v99 = *(v0 + 3720);
  v101 = *(v0 + 3712);
  v103 = *(v0 + 3704);
  v105 = *(v0 + 3680);
  v107 = *(v0 + 3672);
  v109 = *(v0 + 3656);
  v111 = *(v0 + 3648);
  v113 = *(v0 + 3624);
  v115 = *(v0 + 3616);
  v117 = *(v0 + 3608);
  v119 = *(v0 + 3600);
  v121 = *(v0 + 3592);
  v123 = *(v0 + 3568);
  v126 = *(v0 + 3544);
  v129 = *(v0 + 3520);
  v132 = *(v0 + 3496);

  v49 = *(v0 + 8);
  v83 = *MEMORY[0x277D85DE8];
LABEL_12:

  return v49();
}

uint64_t sub_242850B28()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3920);
  v2 = *(v0 + 3912);
  v3 = *(v0 + 3888);

  sub_2427E0980(v3, &qword_27ECC38E0, &unk_2428C40D0);
  v4 = *(v0 + 3888);
  v5 = *(v0 + 3880);
  v6 = *(v0 + 3872);
  v7 = *(v0 + 3848);
  v8 = *(v0 + 3840);
  v9 = *(v0 + 3832);
  v10 = *(v0 + 3824);
  v11 = *(v0 + 3816);
  v12 = *(v0 + 3808);
  v13 = *(v0 + 3800);
  v17 = *(v0 + 3936);
  v18 = *(v0 + 3776);
  v19 = *(v0 + 3768);
  v20 = *(v0 + 3760);
  v21 = *(v0 + 3752);
  v22 = *(v0 + 3744);
  v23 = *(v0 + 3736);
  v24 = *(v0 + 3728);
  v25 = *(v0 + 3720);
  v26 = *(v0 + 3712);
  v27 = *(v0 + 3704);
  v28 = *(v0 + 3680);
  v29 = *(v0 + 3672);
  v30 = *(v0 + 3656);
  v31 = *(v0 + 3648);
  v32 = *(v0 + 3624);
  v33 = *(v0 + 3616);
  v34 = *(v0 + 3608);
  v35 = *(v0 + 3600);
  v36 = *(v0 + 3592);
  v37 = *(v0 + 3568);
  v38 = *(v0 + 3544);
  v39 = *(v0 + 3520);
  v40 = *(v0 + 3496);

  v14 = *(v0 + 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_242850DC0()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 3944);
  v2 = *(v0 + 3912);
  v3 = *(v0 + 3888);

  sub_2427E0980(v3, &qword_27ECC38E0, &unk_2428C40D0);
  v4 = *(v0 + 3888);
  v5 = *(v0 + 3880);
  v6 = *(v0 + 3872);
  v7 = *(v0 + 3848);
  v8 = *(v0 + 3840);
  v9 = *(v0 + 3832);
  v10 = *(v0 + 3824);
  v11 = *(v0 + 3816);
  v12 = *(v0 + 3808);
  v13 = *(v0 + 3800);
  v17 = *(v0 + 3976);
  v18 = *(v0 + 3776);
  v19 = *(v0 + 3768);
  v20 = *(v0 + 3760);
  v21 = *(v0 + 3752);
  v22 = *(v0 + 3744);
  v23 = *(v0 + 3736);
  v24 = *(v0 + 3728);
  v25 = *(v0 + 3720);
  v26 = *(v0 + 3712);
  v27 = *(v0 + 3704);
  v28 = *(v0 + 3680);
  v29 = *(v0 + 3672);
  v30 = *(v0 + 3656);
  v31 = *(v0 + 3648);
  v32 = *(v0 + 3624);
  v33 = *(v0 + 3616);
  v34 = *(v0 + 3608);
  v35 = *(v0 + 3600);
  v36 = *(v0 + 3592);
  v37 = *(v0 + 3568);
  v38 = *(v0 + 3544);
  v39 = *(v0 + 3520);
  v40 = *(v0 + 3496);

  v14 = *(v0 + 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_242851058(uint64_t a1, uint64_t a2)
{
  *(v3 + 368) = a1;
  *(v3 + 376) = a2;
  v4 = sub_2428B2AE8();
  *(v3 + 384) = v4;
  v5 = *(v4 - 8);
  *(v3 + 392) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 400) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC28E0, &qword_2428B9AE0);
  *(v3 + 408) = v7;
  v8 = *(v7 - 8);
  *(v3 + 416) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v10 = sub_2428B31E8();
  *(v3 + 432) = v10;
  v11 = *(v10 - 8);
  *(v3 + 440) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 448) = swift_task_alloc();
  v13 = *(*(sub_2428B36C8() - 8) + 64) + 15;
  *(v3 + 456) = swift_task_alloc();
  v14 = sub_2428B3558();
  *(v3 + 464) = v14;
  v15 = *(v14 - 8);
  *(v3 + 472) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 480) = swift_task_alloc();
  v17 = *(*(sub_2428B45F8() - 8) + 64) + 15;
  *(v3 + 488) = swift_task_alloc();
  v18 = sub_2428B3568();
  *(v3 + 496) = v18;
  v19 = *(v18 - 8);
  *(v3 + 504) = v19;
  v20 = *(v19 + 64) + 15;
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  v21 = v2[9];
  *(v3 + 144) = v2[8];
  *(v3 + 160) = v21;
  *(v3 + 176) = v2[10];
  v22 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v22;
  v23 = v2[7];
  *(v3 + 112) = v2[6];
  *(v3 + 128) = v23;
  v24 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v24;
  v25 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v25;

  return MEMORY[0x2822009F8](sub_242851358, 0, 0);
}

uint64_t sub_242851358()
{
  v1 = [*(v0 + 368) requirementsToMoveToCalendar_];
  if ((v1 & 6) != 0)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v2 = 57;
    swift_willThrow();
    v3 = *(v0 + 552);
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v8 = *(v0 + 512);
    v10 = *(v0 + 480);
    v9 = *(v0 + 488);
    v11 = *(v0 + 448);
    v12 = *(v0 + 456);
    v56 = *(v0 + 424);
    v58 = *(v0 + 400);

    v13 = *(v0 + 8);
LABEL_5:

    return v13();
  }

  v14 = v1;
  if (v1 == 1)
  {
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
    v22 = *(v0 + 480);
    v21 = *(v0 + 488);
    v24 = *(v0 + 448);
    v23 = *(v0 + 456);
    v59 = *(v0 + 424);
    v61 = *(v0 + 400);

    v13 = *(v0 + 8);
    goto LABEL_5;
  }

  v26 = *(v0 + 488);
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 552);
  v62 = *(v0 + 544);
  v47 = *(v0 + 536);
  v48 = *(v0 + 528);
  v28 = *(v0 + 488);
  v51 = *(v0 + 496);
  v52 = *(v0 + 520);
  v29 = *(v0 + 472);
  v30 = *(v0 + 480);
  v31 = *(v0 + 464);
  v49 = *(v0 + 448);
  v50 = *(v0 + 504);
  v54 = *(v0 + 512);
  v55 = *(v0 + 424);
  v53 = *(v0 + 400);
  v57 = *(v0 + 392);
  v60 = *(v0 + 384);
  v32 = __swift_project_value_buffer(v31, qword_27ECD4500);
  v33 = *(v29 + 16);
  v33(v30, v32, v31);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428523F4(v14);
  sub_2428B4578();
  v33(v30, v32, v31);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428B4578();
  v33(v30, v32, v31);
  sub_2428B36B8();
  sub_2428B3588();
  sub_2428B31C8();
  v34 = *(v0 + 160);
  *(v0 + 320) = *(v0 + 144);
  *(v0 + 336) = v34;
  *(v0 + 352) = *(v0 + 176);
  v35 = *(v0 + 96);
  *(v0 + 256) = *(v0 + 80);
  *(v0 + 272) = v35;
  v36 = *(v0 + 128);
  *(v0 + 288) = *(v0 + 112);
  *(v0 + 304) = v36;
  v37 = *(v0 + 32);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 208) = v37;
  v38 = *(v0 + 64);
  *(v0 + 224) = *(v0 + 48);
  *(v0 + 240) = v38;
  v39 = *(v50 + 16);
  v39(v52, v27, v51);
  v39(v54, v62, v51);
  sub_2428B2AD8();
  sub_2428B2C18();
  (*(v57 + 8))(v53, v60);
  v40 = *(MEMORY[0x277CB9C30] + 4);
  v41 = swift_task_alloc();
  *(v0 + 560) = v41;
  v42 = sub_2428226EC();
  v43 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0);
  *v41 = v0;
  v41[1] = sub_2428518C8;
  v44 = *(v0 + 448);
  v45 = *(v0 + 424);
  v46 = *(v0 + 408);

  return MEMORY[0x28210B510](v45, v44, 1, &type metadata for EditEventIntent_v0, v46, v42, v43);
}

uint64_t sub_2428518C8()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v6 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[52] + 8))(v2[53], v2[51]);
  if (v0)
  {
    v4 = sub_242851B90;
  }

  else
  {
    v4 = sub_242851A0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_242851A0C()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[62];
  v6 = v0[63];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v7(v2, v5);
  v7(v1, v5);
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v15 = v0[60];
  v14 = v0[61];
  v17 = v0[56];
  v16 = v0[57];
  v20 = v0[53];
  v21 = v0[50];

  v18 = v0[1];

  return v18();
}

uint64_t sub_242851B90()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[62];
  v6 = v0[63];
  (*(v0[55] + 8))(v0[56], v0[54]);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v7(v2, v5);
  v7(v1, v5);
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v15 = v0[60];
  v14 = v0[61];
  v16 = v0[56];
  v17 = v0[57];
  v20 = v0[53];
  v21 = v0[50];
  v22 = v0[71];

  v18 = v0[1];

  return v18();
}

uint64_t sub_242851D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A80, &qword_2428BE5D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A88, &qword_2428BE5D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v47 - v7;
  v8 = sub_2428B35D8();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A90, &qword_2428BE5E0);
  v11 = *(*(v53 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v47 - v14;
  v57 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3A98, &qword_2428BE5E8);
    v15 = sub_2428B4BA8();
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
  }

  v16 = v57 + 64;
  v17 = 1 << *(v57 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v57 + 64);
  v20 = (v17 + 63) >> 6;
  v49 = v56 + 16;
  v61 = v56 + 32;
  v21 = v15 + 64;
  sub_2428B2F38();
  result = sub_2428B3218();
  v23 = 0;
  v47 = v20;
  v48 = v16;
  v50 = v15;
  while (v19)
  {
LABEL_15:
    v26 = __clz(__rbit64(v19)) | (v23 << 6);
    v28 = v56;
    v27 = v57;
    v29 = *(v57 + 48);
    v59 = *(v56 + 72);
    v30 = v51;
    (*(v56 + 16))(v51, v29 + v59 * v26, v8);
    v60 = *(*(v27 + 56) + 8 * v26);
    v31 = v53;
    *&v30[*(v53 + 48)] = v60;
    v32 = v30;
    v33 = v52;
    sub_24281E660(v32, v52, &qword_27ECC3A90, &qword_2428BE5E0);
    v34 = *(v31 + 48);
    v35 = *(v28 + 32);
    v36 = v55;
    v35(v55, v33, v8);
    v58 = *(v33 + v34);
    v37 = v54;
    v35(v54, v36, v8);
    v35(v62, v37, v8);
    v15 = v50;
    v38 = *(v50 + 40);
    sub_242853048(&qword_27ECC3230, MEMORY[0x277CC9260]);
    v39 = v60;
    result = sub_2428B4538();
    v40 = -1 << *(v15 + 32);
    v41 = result & ~v40;
    v42 = v41 >> 6;
    if (((-1 << v41) & ~*(v21 + 8 * (v41 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v40) >> 6;
      while (++v42 != v44 || (v43 & 1) == 0)
      {
        v45 = v42 == v44;
        if (v42 == v44)
        {
          v42 = 0;
        }

        v43 |= v45;
        v46 = *(v21 + 8 * v42);
        if (v46 != -1)
        {
          v24 = __clz(__rbit64(~v46)) + (v42 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v24 = __clz(__rbit64((-1 << v41) & ~*(v21 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v19 &= v19 - 1;
    *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (v35)(*(v15 + 48) + v24 * v59, v62, v8);
    *(*(v15 + 56) + 8 * v24) = v58;
    ++*(v15 + 16);
    v20 = v47;
    v16 = v48;
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v20)
    {

      return v15;
    }

    v19 = *(v16 + 8 * v25);
    ++v23;
    if (v19)
    {
      v23 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_242852214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC48B0, &unk_2428C3360);
    v2 = sub_2428B4BA8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_2428B2F38();
  sub_2428B3218();
  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_2428B3218();
        v20 = v19;
        v21 = sub_242801C04(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2428523F4(uint64_t a1)
{
  v2 = sub_2428B36C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (a1 != 1 && (a1 & 6) == 0)
  {
    if ((a1 & 0x20) != 0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }
    }

    else if ((a1 & 0x40) != 0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
LABEL_14:
        v12 = __swift_project_value_buffer(v4, qword_27ECD4500);
        (*(v5 + 16))(v8, v12, v4);
        sub_2428B36B8();
        return sub_2428B3588();
      }
    }

    swift_once();
    goto LABEL_14;
  }

LABEL_6:

  return sub_2428B3548();
}

id EditEventIntent_v0.managedDestinationAccountIdentifier.getter()
{
  v1 = v0[1];
  v2 = v0[6];
  v3 = *v0;
  sub_2428B28E8();
  v4 = [*&v32[0] eventStore];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_2428B2DC8();
    v32[6] = v28;
    v32[7] = v29;
    v32[8] = v30;
    v32[9] = v31;
    v32[2] = v24;
    v32[3] = v25;
    v32[4] = v26;
    v32[5] = v27;
    v32[0] = v22;
    v32[1] = v23;
    sub_2428B3218();
    sub_2427CCE04(v32);
    v5 = sub_2428B4608();

    v6 = [v4 eventWithIdentifier_];

    if (v6)
    {
      sub_2428B2DC8();
      v22 = *v17;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      if (v17[0])
      {
        sub_2428B28E8();
        result = [v17[0] eventStore];
        if (!result)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v8 = result;
        swift_unknownObjectRelease();
        v9 = sub_2428B4608();
        v10 = [v8 calendarWithIdentifier_];

        if (v10)
        {
          result = [v10 source];
          if (result)
          {
            v11 = result;

            sub_2427E0980(&v22, &qword_27ECC2248, &unk_2428B7CE0);
LABEL_12:
            v14 = [v11 externalID];
            if (v14)
            {
              v15 = v14;
              v16 = sub_2428B4618();

              return v16;
            }

            return 0;
          }

          goto LABEL_20;
        }

        sub_2427E0980(&v22, &qword_27ECC2248, &unk_2428B7CE0);
      }

      else
      {
        v12 = [v6 calendar];
        if (v12)
        {
          v13 = v12;
          result = [v12 source];
          if (result)
          {
            v11 = result;

            goto LABEL_12;
          }

LABEL_21:
          __break(1u);
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_242852A60@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1848 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3930);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242852B20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B0, &qword_2428BE348);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39B8, &qword_2428BE350);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC39C8, &qword_2428BE380);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242852CCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return EditEventIntent_v0.perform()(a1);
}

uint64_t sub_242852DEC(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_24288DA84();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_24288CE94(v4, v5);
  return 1;
}

unint64_t sub_242852E54()
{
  result = qword_27ECC3A60;
  if (!qword_27ECC3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3A60);
  }

  return result;
}

unint64_t sub_242852EAC()
{
  result = qword_27ECC3A68;
  if (!qword_27ECC3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3A68);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_242852F84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242852FCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242853048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2428530AC()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC3AA0);
  __swift_project_value_buffer(v7, qword_27ECC3AA0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static DeleteEventIntent_v0.title.modify())()
{
  if (qword_27ECC1858 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3568();
  __swift_project_value_buffer(v0, qword_27ECC3AA0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2428533C0()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC3AB8);
  __swift_project_value_buffer(v12, qword_27ECC3AB8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t (*static DeleteEventIntent_v0.description.modify())()
{
  if (qword_27ECC1860 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC3AB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t DeleteEventIntent_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v54 = sub_2428B3298();
  v56 = *(v54 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v51 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v38 - v11;
  v12 = sub_2428B3558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B36C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2428B45F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_2428B3568();
  v47 = v21;
  v55 = *(v21 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x28223BE20](v21);
  v38 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3AD8, &qword_2428BEB50);
  sub_2428B4578();
  sub_2428B36B8();
  v25 = *(v13 + 104);
  v41 = *MEMORY[0x277CC9110];
  v24 = v41;
  v40 = v12;
  v25(v16, v41, v12);
  v39 = v25;
  v42 = v13 + 104;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v25(v16, v24, v12);
  v26 = v49;
  v27 = v16;
  sub_2428B3578();
  v28 = *(v55 + 56);
  v55 += 56;
  v48 = v28;
  v28(v26, 0, 1, v21);
  *&v57 = 0;
  v29 = sub_2428B2AE8();
  v30 = *(*(v29 - 8) + 56);
  v43 = v30;
  v30(v50, 1, 1, v29);
  v30(v51, 1, 1, v29);
  v44 = *MEMORY[0x277CBA308];
  v31 = *(v56 + 104);
  v56 += 104;
  v45 = v31;
  v31(v52);
  sub_2427C2774();
  v53[1] = sub_2428B2E68();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  sub_2428B4578();
  sub_2428B36B8();
  v32 = v41;
  v33 = v40;
  v34 = v39;
  v39(v27, v41, v40);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v34(v27, v32, v33);
  v35 = v49;
  sub_2428B3578();
  v48(v35, 0, 1, v47);
  LOBYTE(v57) = 3;
  v36 = v43;
  v43(v50, 1, 1, v29);
  v36(v51, 1, 1, v29);
  v45(v52, v44, v54);
  sub_24281E538();
  result = sub_2428B2E38();
  v53[2] = result;
  return result;
}

uint64_t DeleteEventIntent_v0.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t DeleteEventIntent_v0.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*DeleteEventIntent_v0.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t DeleteEventIntent_v0.entities.getter()
{
  v1 = *(v0 + 8);
  sub_2428B2DC8();
  return v3;
}

uint64_t (*DeleteEventIntent_v0.entities.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t DeleteEventIntent_v0.span.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*DeleteEventIntent_v0.span.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static DeleteEventIntent_v0.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AE8, &qword_2428BE818);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AF0, &qword_2428BE820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428559A4();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3B00, &qword_2428BE850);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242854440()
{
  swift_getKeyPath();
  sub_2428559A4();
  v0 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2428B5A90;
  *(v1 + 32) = v0;
  sub_2428B2F38();
  v2 = sub_2428B3218();

  return v2;
}

uint64_t DeleteEventIntent_v0.perform()(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(v2 + 120) = a1;
  v3 = sub_2428B31E8();
  *(v2 + 128) = v3;
  v4 = *(v3 - 8);
  *(v2 + 136) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v6 = sub_2428B2AE8();
  *(v2 + 152) = v6;
  v7 = *(v6 - 8);
  *(v2 + 160) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC28E0, &qword_2428B9AE0);
  *(v2 + 176) = v9;
  v10 = *(v9 - 8);
  *(v2 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = *v1;
  *(v2 + 216) = *(v1 + 16);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2428546BC, 0, 0);
}

uint64_t sub_2428546BC()
{
  v68 = v0;
  v67[2] = *MEMORY[0x277D85DE8];
  v1 = sub_2428B43D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v1 & 1) == 0)
  {
    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    goto LABEL_27;
  }

  v3 = *(v0 + 200);
  sub_2428B28E8();
  v4 = [*(v0 + 80) eventStore];
  *(v0 + 224) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v25 = 24;
LABEL_27:
    swift_willThrow();
LABEL_28:
    v26 = *(v0 + 192);
    v27 = *(v0 + 168);
    v28 = *(v0 + 144);

    v29 = *(v0 + 8);
    v30 = *MEMORY[0x277D85DE8];
    goto LABEL_40;
  }

  v66 = v4;
  v5 = *(v0 + 208);
  sub_2428B2DC8();
  v65 = v0;
  v6 = *(v0 + 88);
  v7 = v6[2];
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    v10 = v6 + 5;
    while (v9 < v6[2])
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_2428B3218();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2427F7828(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_2427F7828((v13 > 1), v14 + 1, 1, v8);
      }

      ++v9;
      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      v10 += 20;
      if (v7 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_13:

  v16 = sub_2428B46B8();

  v17 = [v66 eventsWithIdentifiers_];

  if (v17)
  {
    sub_2427DE3E4();
    v0 = sub_2428B46C8();

    v6 = (v0 >> 62);
    if (!(v0 >> 62))
    {
      v18 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
LABEL_38:

        goto LABEL_39;
      }

LABEL_16:
      v64 = v6;
      v19 = 0;
      v67[0] = MEMORY[0x277D84F90];
      v20 = v0 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x245D1B5D0](v19, v0);
        }

        else
        {
          if (v19 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v21 = *(v0 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_35;
        }

        if ([v21 isDeletable])
        {
          sub_2428B4AA8();
          v24 = *(v67[0] + 16);
          sub_2428B4AD8();
          sub_2428B4AE8();
          v6 = v67;
          sub_2428B4AB8();
        }

        else
        {
        }

        ++v19;
      }

      while (v23 != v18);
      v31 = v67[0];
      v0 = v65;
      *(v65 + 232) = v67[0];
      if (v31 < 0 || (v31 & 0x4000000000000000) != 0)
      {
        if (sub_2428B49C8())
        {
          v32 = sub_2428B49C8();
          if (!v64)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }
      }

      else
      {
        v32 = *(v31 + 16);
        if (v32)
        {
          if (!v64)
          {
LABEL_33:
            v33 = *(v20 + 16);
            goto LABEL_46;
          }

LABEL_45:
          v33 = sub_2428B49C8();
LABEL_46:

          v41 = *(v65 + 216);
          if (v32 == v33)
          {
            v42 = *(v65 + 216);
            v43 = sub_2428B2DE8();
            *(v65 + 256) = v43;
            v44 = swift_task_alloc();
            *(v65 + 264) = v44;
            *v44 = v65;
            v44[1] = sub_242855120;
            v45 = *(v65 + 232);
            v46 = *MEMORY[0x277D85DE8];

            return sub_24280C5F4(v65 + 280, v45, v43);
          }

          else
          {
            v51 = *(v65 + 192);
            v53 = *(v65 + 160);
            v52 = *(v65 + 168);
            v55 = *(v65 + 144);
            v54 = *(v65 + 152);
            *(v65 + 56) = *(v65 + 200);
            *(v65 + 72) = v41;
            sub_2428B2AC8();
            sub_2428B2C18();
            (*(v53 + 8))(v52, v54);
            sub_2428B31D8();
            v56 = *(MEMORY[0x277CB9C30] + 4);
            v57 = swift_task_alloc();
            *(v65 + 240) = v57;
            v58 = sub_2428559A4();
            v59 = sub_2427CD47C(&unk_27ECC2900, &unk_27ECC28E0, &qword_2428B9AE0);
            *v57 = v65;
            v57[1] = sub_242854E5C;
            v60 = *(v65 + 192);
            v61 = *(v65 + 176);
            v62 = *(v65 + 144);
            v63 = *MEMORY[0x277D85DE8];

            return MEMORY[0x28210B510](v60, v62, 1, &type metadata for DeleteEventIntent_v0, v61, v58, v59);
          }
        }
      }

      v47 = *(v65 + 208);

      sub_2428B2DC8();
      v48 = *(*(v65 + 112) + 16);

      if (v48 <= 1)
      {
        v49 = 40;
      }

      else
      {
        v49 = 41;
      }

      sub_2427CCDB0();
      swift_allocError();
      *v50 = v49;
      swift_willThrow();

      goto LABEL_28;
    }

LABEL_37:
    v18 = sub_2428B49C8();
    if (!v18)
    {
      goto LABEL_38;
    }

    goto LABEL_16;
  }

LABEL_39:
  v34 = *(v65 + 224);
  v35 = *(v65 + 192);
  v36 = *(v65 + 168);
  v37 = *(v65 + 144);
  v38 = *(v65 + 120);
  sub_2428B2C28();

  v29 = *(v65 + 8);
  v39 = *MEMORY[0x277D85DE8];
LABEL_40:

  return v29();
}

uint64_t sub_242854E5C()
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 240);
  v18 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[29];
    v6 = v2[23];
    v5 = v2[24];
    v7 = v2[22];
    v9 = v2[17];
    v8 = v2[18];
    v10 = v2[16];

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v11 = sub_242855510;
  }

  else
  {
    v13 = v2[23];
    v12 = v2[24];
    v14 = v2[22];
    (*(v2[17] + 8))(v2[18], v2[16]);
    (*(v13 + 8))(v12, v14);
    v11 = sub_242855034;
  }

  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_242855034()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  v2 = sub_2428B2DE8();
  v0[32] = v2;
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_242855120;
  v4 = v0[29];
  v5 = *MEMORY[0x277D85DE8];

  return sub_24280C5F4((v0 + 35), v4, v2);
}

uint64_t sub_242855120()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  v2[34] = v0;

  v5 = v2[32];
  if (v0)
  {
    v6 = v2[29];

    v7 = sub_2428555C8;
  }

  else
  {

    v7 = sub_242855298;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_242855298()
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = qword_2428BEA20[*(v0 + 280)];
  v2 = *(v0 + 232);
  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_6:
    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D1B5D0](v5, *(v0 + 232));
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v6 = *(v2 + 32 + 8 * v5);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v9 = *(v0 + 224);
      *(v0 + 96) = 0;
      v10 = [v9 removeEvent:v7 span:v1 commit:0 error:v0 + 96];
      v11 = *(v0 + 96);
      if (!v10)
      {
        break;
      }

      v12 = v11;

      ++v5;
      if (v8 == v3)
      {
        v16 = *(v0 + 232);
        goto LABEL_16;
      }
    }

    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = v11;

    sub_2428B3538();

    swift_willThrow();
    goto LABEL_19;
  }

  v4 = *(v0 + 232);
  v3 = sub_2428B49C8();
  v2 = *(v0 + 232);
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_16:
  v17 = *(v0 + 224);

  *(v0 + 104) = 0;
  v18 = [v17 commitWithRollback_];
  v19 = *(v0 + 104);
  v14 = *(v0 + 224);
  if (v18)
  {
    v20 = *(v0 + 192);
    v21 = *(v0 + 168);
    v22 = *(v0 + 144);
    v23 = *(v0 + 120);
    v24 = v19;
    sub_2428B2C28();

    v25 = *(v0 + 8);
    v26 = *MEMORY[0x277D85DE8];
    goto LABEL_20;
  }

  v27 = v19;
  sub_2428B3538();

  swift_willThrow();
LABEL_19:

  v28 = *(v0 + 192);
  v29 = *(v0 + 168);
  v30 = *(v0 + 144);

  v25 = *(v0 + 8);
  v31 = *MEMORY[0x277D85DE8];
LABEL_20:

  return v25();
}

uint64_t sub_242855510()
{
  v8 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_2428555C8()
{
  v8 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_242855680@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1858 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3AA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242855740()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AE8, &qword_2428BE818);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3AF0, &qword_2428BE820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3B00, &qword_2428BE850);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_2428558EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return DeleteEventIntent_v0.perform()(a1);
}

unint64_t sub_2428559A4()
{
  result = qword_27ECC3AF8;
  if (!qword_27ECC3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3AF8);
  }

  return result;
}

unint64_t sub_2428559FC()
{
  result = qword_27ECC3B08;
  if (!qword_27ECC3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B08);
  }

  return result;
}

unint64_t sub_242855A58()
{
  result = qword_27ECC3B10;
  if (!qword_27ECC3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B10);
  }

  return result;
}

unint64_t sub_242855AB0()
{
  result = qword_27ECC3B18;
  if (!qword_27ECC3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B18);
  }

  return result;
}

unint64_t sub_242855B50()
{
  result = qword_280CDE120;
  if (!qword_280CDE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE120);
  }

  return result;
}

id sub_242855BA4()
{
  v1 = *v0;
  sub_2428B28E8();
  v2 = [v9 eventStore];
  swift_unknownObjectRelease();
  if (!v2)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v3 = sub_2428B4448();
    __swift_project_value_buffer(v3, qword_280CDE4E8);
    v4 = sub_2428B4428();
    v5 = sub_2428B4838();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2427C0000, v4, v5, "Failed to get event store", v6, 2u);
      MEMORY[0x245D1C000](v6, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v7 = 24;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_242855CF8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_242855D20, 0, 0);
}

uint64_t sub_242855D20()
{
  v8 = v0;
  v1 = v0[4];
  v7[0] = v0[3];
  v7[1] = v1;
  v2 = sub_242855BA4();
  v3 = v0[2];
  v7[0] = v0[4];
  v4 = v2;
  static CalendarSuggestionsProvider.suggestions(withEventStore:options:)(v2, v7, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_242855DF4()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC3B30);
  __swift_project_value_buffer(v0, qword_27ECC3B30);
  return sub_2428B3548();
}