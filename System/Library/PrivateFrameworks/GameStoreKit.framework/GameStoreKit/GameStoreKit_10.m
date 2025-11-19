void sub_24E6F4280(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v28 = a8;
  v29 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = [objc_opt_self() proxyForPlayer_];
  v18 = [v17 gameServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93DE60;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;

  v20 = sub_24F92B588();

  (*(v13 + 16))(v16, a1, v12);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v13 + 32))(v23 + v21, v16, v12);
  *(v23 + v22) = a2;
  v24 = v28;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_24E6F6488;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0E9C;
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);
  v26 = a2;
  v27 = v24;

  [v18 getGameStatsForPlayer:v29 bundleIDs:v20 handler:v25];
  _Block_release(v25);
  swift_unknownObjectRelease();
}

void sub_24E6F4530(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  if (a2)
  {
    aBlock[0] = a2;
    v14 = a2;
    sub_24F92B788();
    return;
  }

  if (a1 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_5;
    }

LABEL_10:
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24F92B798();
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x253052270](0, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(a1 + 32);
LABEL_8:
    v26 = v15;
    v16 = [objc_allocWithZone(MEMORY[0x277D0C068]) initWithInternalRepresentation_];
    v27 = v16;
    v17 = [objc_opt_self() proxyForPlayer_];
    v18 = [v17 gameStatServicePrivate];

    v19 = [v16 gameDescriptor];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F941C80;
    *(v20 + 32) = [a5 internal];
    sub_24E69A5C4(0, &qword_27F235850);
    v21 = sub_24F92B588();

    (*(v11 + 16))(v13, a3, v10);
    v22 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    (*(v11 + 32))(v23 + v22, v13, v10);
    aBlock[4] = sub_24E6F6634;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E6F5B9C;
    aBlock[3] = &block_descriptor_17;
    v24 = _Block_copy(aBlock);
    v25 = a5;

    [v18 loadAchievementsForGameWithProfileFetchOptions:v19 players:v21 includeUnreported:1 includeHidden:1 profileFetchOptions:1 withCompletionHandler:v24];
    _Block_release(v24);

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_24E6F48D8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Achievement(0);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a3 referenceKey];
  v12 = sub_24F92B0D8();
  v14 = v13;

  if (!*(a1 + 16))
  {

    goto LABEL_13;
  }

  v15 = sub_24E76D644(v12, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_13:
    v45 = a2;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020);
    return sub_24F92B788();
  }

  v18 = *(*(a1 + 56) + 8 * v15);
  if (v18 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v20 = MEMORY[0x277D84F90];
    if (i)
    {
      break;
    }

    v26 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_28;
    }

LABEL_15:
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_29;
    }

LABEL_16:
    v28 = v26;
    v40[1] = a4;
    v45 = v20;
    result = sub_24F457DCC(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      goto LABEL_35;
    }

    v29 = 0;
    v18 = 0;
    v30 = v45;
    v31 = v28;
    v41 = v28 & 0xFFFFFFFFFFFFFF8;
    v42 = v28 & 0xC000000000000001;
    v32 = v28;
    a4 = v27;
    while (1)
    {
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v42)
      {
        v34 = MEMORY[0x253052270](v29, v31);
      }

      else
      {
        if (v29 >= *(v41 + 16))
        {
          goto LABEL_32;
        }

        v34 = *(v31 + 8 * v29 + 32);
      }

      v35 = v34;
      v44 = v34;
      sub_24E6F4CE8(&v44, v10);

      v45 = v30;
      v36 = v10;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_24F457DCC(v37 > 1, v38 + 1, 1);
        v30 = v45;
      }

      v30[2] = v38 + 1;
      sub_24E6F6734(v36, v30 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, type metadata accessor for Achievement);
      ++v29;
      v10 = v36;
      v31 = v32;
      if (v33 == a4)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v42 = v10;
  v45 = MEMORY[0x277D84F90];

  result = sub_24F92C978();
  if (i < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = 0;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x253052270](v22, v18);
    }

    else
    {
      v23 = *(v18 + 8 * v22 + 32);
    }

    v24 = v23;
    ++v22;
    [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (i != v22);

  v26 = v45;
  v10 = v42;
  v20 = MEMORY[0x277D84F90];
  if (!(v45 >> 62))
  {
    goto LABEL_15;
  }

LABEL_28:
  v39 = v26;
  v27 = sub_24F92C738();
  v26 = v39;
  if (v27)
  {
    goto LABEL_16;
  }

LABEL_29:

  v30 = MEMORY[0x277D84F90];
LABEL_30:
  v45 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020);
  return sub_24F92B798();
}

id sub_24E6F4CE8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v135 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030);
  MEMORY[0x28223BE20](v3 - 8);
  v134 = v123 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v129 = v123 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v142 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v130 = v123 - v11;
  MEMORY[0x28223BE20](v10);
  v133 = v123 - v12;
  v151 = sub_24F91F648();
  v157 = *(v151 - 8);
  v13 = MEMORY[0x28223BE20](v151);
  v150 = v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = v123 - v15;
  v16 = type metadata accessor for PlayerWithTimeStamp();
  v147 = *(v16 - 8);
  v148 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v146 = (v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v156 = v123 - v19;
  v20 = sub_24F91F4A8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v125 = v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v123 - v24;
  v26 = type metadata accessor for AchievementProgressStatus(0);
  v27 = MEMORY[0x28223BE20](v26);
  v141 = v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = (v123 - v29);
  v31 = *a1;
  v32 = [*a1 title];
  v137 = sub_24F92B0D8();
  v139 = v33;

  v34 = [v31 isCompleted];
  v35 = &selRef_achievedDescription;
  if (!v34)
  {
    v35 = &selRef_unachievedDescription;
  }

  v36 = [v31 *v35];
  v136 = sub_24F92B0D8();
  v138 = v37;

  v38 = [v31 game];
  v39 = [v38 internal];

  v40 = [v39 storeURL];
  sub_24F91F428();

  v132 = sub_24F91F398();
  v131 = v41;
  v127 = v21;
  v42 = *(v21 + 8);
  v124 = v25;
  v128 = v20;
  v123[1] = v21 + 8;
  v123[0] = v42;
  v42(v25, v20);
  v43 = [v31 isCompleted];
  v140 = v31;
  if (!v43)
  {
    [v31 percentComplete];
    if (v46 <= 0.0)
    {
      v49 = [v31 internal];
      v50 = [v49 isHidden];

      if (v50)
      {

        v136 = 0;
        v137 = 0;
        v138 = 0xE000000000000000;
        v139 = 0xE000000000000000;
      }

      v45 = v30;
      goto LABEL_13;
    }

    result = [v31 percentComplete];
    if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v48 > -9.22337204e18)
    {
      if (v48 < 9.22337204e18)
      {
        v45 = v30;
        *v30 = v48;
LABEL_13:
        v31 = v140;
        goto LABEL_14;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_51;
  }

  v44 = [v31 lastReportedDate];
  sub_24F91F608();

  v45 = v30;
LABEL_14:
  v126 = v45;
  swift_storeEnumTagMultiPayload();
  v51 = [v31 friendsWhoHaveThis];
  sub_24E69A5C4(0, &qword_27F219038);
  v52 = sub_24F92B5A8();

  if (v52 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v54 = 0;
    v152 = v52 & 0xFFFFFFFFFFFFFF8;
    v153 = v52 & 0xC000000000000001;
    v143 = (v157 + 1);
    v55 = MEMORY[0x277D84F90];
    v144 = i;
    v145 = v52;
    while (1)
    {
      if (v153)
      {
        v56 = MEMORY[0x253052270](v54, v52);
      }

      else
      {
        if (v54 >= *(v152 + 16))
        {
          goto LABEL_32;
        }

        v56 = *(v52 + 8 * v54 + 32);
      }

      v57 = v56;
      v58 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      v59 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
      [v59 setUnitsStyle_];
      v60 = [v57 friendPlayer];
      if (v60)
      {
        v61 = v60;
        v155 = v54 + 1;
        v157 = v55;
        result = [v57 timestamp];
        v154 = v57;
        if (!result)
        {
          goto LABEL_52;
        }

        v62 = result;
        v63 = v149;
        sub_24F91F608();

        v64 = sub_24F91F578();
        v65 = *v143;
        v66 = v63;
        v67 = v151;
        (*v143)(v66, v151);
        v68 = v150;
        sub_24F91F618();
        v69 = sub_24F91F578();
        v65(v68, v67);
        v70 = [v59 localizedStringForDate:v64 relativeToDate:v69];

        v71 = sub_24F92B0D8();
        v73 = v72;

        v74 = v146;
        sub_24F3FAC70(v61, 0, 0, v146);

        v75 = (v74 + *(v148 + 20));
        *v75 = v71;
        v75[1] = v73;
        sub_24E6F6734(v74, v156, type metadata accessor for PlayerWithTimeStamp);
        v55 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_24E616F9C(0, v55[2] + 1, 1, v55);
        }

        v77 = v55[2];
        v76 = v55[3];
        i = v144;
        if (v77 >= v76 >> 1)
        {
          v55 = sub_24E616F9C(v76 > 1, v77 + 1, 1, v55);
        }

        v55[2] = v77 + 1;
        sub_24E6F6734(v156, v55 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v77, type metadata accessor for PlayerWithTimeStamp);
        v52 = v145;
        v58 = v155;
      }

      else
      {
      }

      ++v54;
      if (v58 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_35:
  v157 = v55;

  v78 = v140;
  v79 = [v140 imageURL];
  sub_24F92B0D8();

  v80 = v129;
  sub_24F91F488();

  v81 = v127;
  v82 = v128;
  if ((*(v127 + 48))(v80, 1, v128) == 1)
  {
    sub_24E601704(v80, &qword_27F228530);
    v83 = 1;
    v84 = v133;
    v85 = &off_279691000;
    v86 = v130;
  }

  else
  {
    v87 = v125;
    (*(v81 + 32))(v125, v80, v82);
    (*(v81 + 16))(v124, v87, v82);
    v86 = v130;
    sub_24F928978();
    (v123[0])(v87, v82);
    v83 = 0;
    v84 = v133;
    v85 = &off_279691000;
  }

  v88 = sub_24F9289E8();
  (*(*(v88 - 8) + 56))(v86, v83, 1, v88);
  sub_24E6009C8(v86, v84, &qword_27F213FB0);
  v89 = [v78 identifier];
  if (v89)
  {
    v90 = v89;
    v155 = sub_24F92B0D8();
    v156 = v91;
  }

  else
  {
    v155 = 0;
    v156 = 0xE000000000000000;
  }

  v92 = v126;
  sub_24E6F66C4(v84, v142);
  sub_24E6C059C(v92, v141);
  v93 = [v78 v85[265]];
  v94 = [v93 rarityPercent];

  if (v94)
  {
    [v94 doubleValue];
    v96 = v95;
  }

  else
  {
    v96 = 0;
  }

  v97 = [v78 v85[265]];
  v98 = [v97 activityIdentifier];

  v99 = sub_24F92B0D8();
  v153 = v100;
  v154 = v99;

  v101 = [v78 v85[265]];
  v102 = v78;
  v103 = [v101 activityProperties];

  v104 = sub_24F92AE38();
  v105 = sub_24E9E19FC(v104);

  if (!v105)
  {
    v105 = sub_24E6086DC(MEMORY[0x277D84F90]);
  }

  v106 = v94 == 0;
  v107 = [v102 v85[265]];
  v108 = [v107 releaseState];

  sub_24E601704(v84, &qword_27F213FB0);
  sub_24E6C0600(v92);
  v109 = sub_24F920818();
  v110 = *(v109 - 8);
  v111 = MEMORY[0x277D0CEF0];
  if (v108 != 2)
  {
    v111 = MEMORY[0x277D0CEE8];
  }

  v112 = v134;
  (*(*(v109 - 8) + 104))(v134, *v111, v109);
  (*(v110 + 56))(v112, 0, 1, v109);
  v113 = v135;
  v114 = v156;
  *v135 = v155;
  v113[1] = v114;
  v115 = v139;
  v113[2] = v137;
  v113[3] = v115;
  v116 = v138;
  v113[4] = v136;
  v113[5] = v116;
  v117 = type metadata accessor for Achievement(0);
  sub_24E6009C8(v142, v113 + v117[7], &qword_27F213FB0);
  sub_24E6F6734(v141, v113 + v117[8], type metadata accessor for AchievementProgressStatus);
  v118 = v113 + v117[9];
  *v118 = v96;
  v118[8] = v106;
  *(v113 + v117[10]) = v157;
  v119 = (v113 + v117[11]);
  v120 = v131;
  *v119 = v132;
  v119[1] = v120;
  v121 = (v113 + v117[12]);
  v122 = v153;
  *v121 = v154;
  v121[1] = v122;
  *(v113 + v117[13]) = v105;
  return sub_24E6009C8(v112, v113 + v117[14], &qword_27F219030);
}

void sub_24E6F5B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219028);
  v5 = sub_24F92AE38();

  v6 = a3;
  v4(v5, v6);
}

uint64_t sub_24E6F5C58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return (sub_24E6F5D08)(a2);
}

uint64_t sub_24E6F5D08(uint64_t a1)
{
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  *(v1 + 56) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_24E6F5D3C, 0, 0);
}

uint64_t sub_24E6F5D3C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8);
  *v4 = v0;
  v4[1] = sub_24E6F5E48;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24E6F5E48()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E6F61FC;
  }

  else
  {

    v2 = sub_24E6F5F64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6F5F64()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v10 = *(v0 + 32);
  v3 = *(v0 + 16);
  *(v0 + 88) = v3;
  v4 = [v3 internal];
  *(v0 + 96) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];
  *(v0 + 104) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v10;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1;
  *(v6 + 64) = v3;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219018);
  *v7 = v0;
  v7[1] = sub_24E6F60E0;

  return MEMORY[0x2822008A0](v0 + 24, 0, 0, 0xD000000000000017, 0x800000024FA460C0, sub_24E6F63BC, v6, v8);
}

uint64_t sub_24E6F60E0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E6F62D4;
  }

  else
  {

    v2 = sub_24E6F6260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6F61FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6F6260()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24E6F62D4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_24E6F6358()
{
  result = qword_27F219010;
  if (!qword_27F219010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219010);
  }

  return result;
}

uint64_t sub_24E6F63D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24E6F6488(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24E6F4530(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E6F6564()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E6F6634(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24E6F48D8(a1, a2, v6, v7);
}

uint64_t sub_24E6F66C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6F6734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6F67C0(uint64_t a1)
{
  v2 = sub_24E6F694C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6F67FC(uint64_t a1)
{
  v2 = sub_24E6F694C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameKitAuthenticationDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6F694C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E6F694C()
{
  result = qword_27F219048;
  if (!qword_27F219048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219048);
  }

  return result;
}

uint64_t sub_24E6F6A10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6F694C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E6F6B48()
{
  result = qword_27F219050;
  if (!qword_27F219050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219050);
  }

  return result;
}

unint64_t sub_24E6F6BA0()
{
  result = qword_27F219058;
  if (!qword_27F219058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219058);
  }

  return result;
}

uint64_t sub_24E6F6C68()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v9 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BD840);
  v6 = sub_24E609BF0(&unk_2861BD8B0);
  v7 = sub_24E609CD8(&unk_2861BD948);
  xmmword_27F39A5F0 = 5uLL;
  *&xmmword_27F39A600 = v0;
  *(&xmmword_27F39A600 + 1) = v2;
  xmmword_27F39A610 = v9;
  *&xmmword_27F39A620 = v3;
  *(&xmmword_27F39A620 + 1) = v4;
  unk_27F39A630 = v5;
  qword_27F39A638 = v6;
  unk_27F39A640 = v7;
  byte_27F39A648 = 1;
}

uint64_t sub_24E6F6D68()
{
  v0 = sub_24F9275F8();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v9 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BD9B8);
  v6 = sub_24E609BF0(&unk_2861BDA28);
  v7 = sub_24E609CD8(&unk_2861BDAC0);
  *&xmmword_27F39A650 = 5;
  *(&xmmword_27F39A650 + 1) = 0x4050000000000000;
  *&xmmword_27F39A660 = v0;
  *(&xmmword_27F39A660 + 1) = v2;
  xmmword_27F39A670 = v9;
  *&xmmword_27F39A680 = v3;
  *(&xmmword_27F39A680 + 1) = v4;
  unk_27F39A690 = v5;
  qword_27F39A698 = v6;
  unk_27F39A6A0 = v7;
  byte_27F39A6A8 = 1;
}

uint64_t sub_24E6F6E6C()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211958 != -1)
  {
    swift_once();
  }

  v9 = xmmword_27F254420;
  v3 = qword_27F254430;
  v4 = qword_27F254438;
  v5 = sub_24E609BDC(&unk_2861BDB30);
  v6 = sub_24E609BF0(&unk_2861BDB80);
  v7 = sub_24E609CD8(&unk_2861BDBE8);
  xmmword_27F39A6B0 = 3uLL;
  *&xmmword_27F39A6C0 = v0;
  *(&xmmword_27F39A6C0 + 1) = v2;
  xmmword_27F39A6D0 = v9;
  *&xmmword_27F39A6E0 = v3;
  *(&xmmword_27F39A6E0 + 1) = v4;
  unk_27F39A6F0 = v5;
  qword_27F39A6F8 = v6;
  unk_27F39A700 = v7;
  byte_27F39A708 = 0;
}

uint64_t sub_24E6F6F68()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v9 = xmmword_27F254460;
  v3 = qword_27F254470;
  v4 = qword_27F254478;
  v5 = sub_24E609BDC(&unk_2861BD7A8);
  v6 = sub_24E609BF0(&unk_2861BD7D8);
  v7 = sub_24E609CD8(&unk_2861BD810);
  xmmword_27F39A710 = 1uLL;
  *&xmmword_27F39A720 = v0;
  *(&xmmword_27F39A720 + 1) = v2;
  xmmword_27F39A730 = v9;
  *&xmmword_27F39A740 = v3;
  *(&xmmword_27F39A740 + 1) = v4;
  unk_27F39A750 = v5;
  qword_27F39A758 = v6;
  unk_27F39A760 = v7;
  byte_27F39A768 = 0;
}

uint64_t sub_24E6F7064()
{
  v0 = sub_24F927618();
  v2 = v1;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v9 = xmmword_27F2543E0;
  v3 = qword_27F2543F0;
  v4 = qword_27F2543F8;
  v5 = sub_24E609BDC(&unk_2861BDC58);
  v6 = sub_24E609BF0(&unk_2861BDCC8);
  v7 = sub_24E609CD8(&unk_2861BDD60);
  xmmword_27F39A770 = 5uLL;
  *&xmmword_27F39A780 = v0;
  *(&xmmword_27F39A780 + 1) = v2;
  xmmword_27F39A790 = v9;
  *&xmmword_27F39A7A0 = v3;
  *(&xmmword_27F39A7A0 + 1) = v4;
  unk_27F39A7B0 = v5;
  qword_27F39A7B8 = v6;
  unk_27F39A7C0 = v7;
  byte_27F39A7C8 = 0;
}

double sub_24E6F7160@<D0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E658;
    }

LABEL_20:
    v10 = __swift_project_value_buffer(v6, v9);
    sub_24E701D44(v10, v8, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (!a1)
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E640;
    goto LABEL_20;
  }

  if (a1 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E628;
    goto LABEL_20;
  }

  sub_24F4E9E44(a2, v8);
LABEL_21:
  sub_24E701C34(v8, a3, type metadata accessor for CardLayoutMetrics);
  *(a3 + *(v6 + 60)) = 0x4030000000000000;
  v11 = (a3 + *(v6 + 56));
  result = 0.0;
  *v11 = xmmword_24F94BC80;
  v11[1] = xmmword_24F94BC80;
  return result;
}

uint64_t sub_24E6F7380@<X0>(int a1@<W0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v215 = a4;
  v243 = a3;
  LODWORD(v240) = a1;
  v237 = a6;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v231);
  v200 = &v182 - v8;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219068);
  MEMORY[0x28223BE20](v189);
  v191 = (&v182 - v9);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070);
  v10 = MEMORY[0x28223BE20](v190);
  v186 = (&v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v187 = &v182 - v12;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219078);
  MEMORY[0x28223BE20](v204);
  v192 = &v182 - v13;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219080);
  MEMORY[0x28223BE20](v201);
  v203 = (&v182 - v14);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219088);
  MEMORY[0x28223BE20](v214);
  v205 = &v182 - v15;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219090);
  MEMORY[0x28223BE20](v218);
  v219 = &v182 - v16;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219098);
  MEMORY[0x28223BE20](v227);
  v220 = &v182 - v17;
  v194 = type metadata accessor for ColorGroup();
  v193 = *(v194 - 8);
  v18 = MEMORY[0x28223BE20](v194);
  v185 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v182 - v20;
  v217 = type metadata accessor for CardContentBackgroundStyle(0);
  v22 = MEMORY[0x28223BE20](v217);
  v184 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v199 = &v182 - v25;
  MEMORY[0x28223BE20](v24);
  v202 = &v182 - v26;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v197);
  v198 = &v182 - v27;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190A0);
  MEMORY[0x28223BE20](v213);
  v29 = &v182 - v28;
  v233 = sub_24F9289E8();
  v242 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  *&v234 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190A8);
  MEMORY[0x28223BE20](v229);
  v230 = &v182 - v31;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190B0);
  MEMORY[0x28223BE20](v223);
  v225 = &v182 - v32;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190B8);
  MEMORY[0x28223BE20](v209);
  v211 = &v182 - v33;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190C0);
  MEMORY[0x28223BE20](v224);
  v212 = &v182 - v34;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190C8);
  MEMORY[0x28223BE20](v228);
  v226 = &v182 - v35;
  v210 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  v36 = MEMORY[0x28223BE20](v210);
  v195 = (&v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v196 = &v182 - v38;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D0);
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v232 = &v182 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v208 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v182 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v48 = &v182 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46);
  v183 = &v182 - v50;
  MEMORY[0x28223BE20](v49);
  v241 = &v182 - v51;
  v216 = a5;
  sub_24E6F99F8(a2, &v182 - v51);
  v222 = type metadata accessor for SearchCard();
  v52 = a2 + v222[8];
  v53 = type metadata accessor for CommonCardAttributes(0);
  v54 = v53;
  v55 = (v52 + *(v53 + 36));
  v56 = *v55;
  v206 = v55[1];
  if (v56)
  {
    v57 = 1;
  }

  else
  {
    sub_24E60169C(v52 + *(v53 + 32), v44, &qword_27F213FB8);
    v58 = type metadata accessor for GSKVideo();
    v59 = *(*(v58 - 8) + 48);
    LODWORD(v221) = 1;
    v60 = v59(v44, 1, v58);
    sub_24E601704(v44, &qword_27F213FB8);
    if (v60 != 1)
    {
      goto LABEL_8;
    }

    v61 = *(a2 + v222[9]);
    if (v61 >> 62)
    {
      v62 = sub_24F92C738();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v62 != 0;
  }

  LODWORD(v221) = v57;
LABEL_8:
  v207 = v52;
  v188 = v48;
  if (v243 > 2u)
  {
    if (v243 == 3)
    {
      if (qword_27F20FDD0 != -1)
      {
        swift_once();
      }

      v63 = &xmmword_27F39A650;
    }

    else if (v243 == 4)
    {
      if (qword_27F20FDC8 != -1)
      {
        swift_once();
      }

      v63 = &xmmword_27F39A5F0;
    }

    else
    {
      if (qword_27F20FDE8 != -1)
      {
        swift_once();
      }

      v63 = &xmmword_27F39A770;
    }
  }

  else
  {
    if (!v243 || v243 == 1)
    {
      if (qword_27F20FDE0 != -1)
      {
        goto LABEL_95;
      }

      goto LABEL_12;
    }

    if (qword_27F20FDD8 != -1)
    {
      swift_once();
    }

    v63 = &xmmword_27F39A6B0;
  }

LABEL_27:
  *&v249[25] = *(v63 + 73);
  v64 = v63[4];
  *v249 = v63[3];
  *&v249[16] = v64;
  v65 = v63[2];
  v247 = v63[1];
  v248 = v65;
  v246 = *v63;
  v66 = v249[40];
  v239 = *&v249[24];
  v67 = v65;
  v68 = *v249;
  v238 = *&v249[8];
  v69 = v247;
  v70 = *(&v246 + 1);
  v71 = v246;
  sub_24E701364(&v246, &v245);
  v246 = __PAIR128__(v70, v71);
  v247 = v69;
  v248 = v67;
  *v249 = v68;
  *&v249[8] = v238;
  *&v249[24] = v239;
  v249[40] = v66;
  v72 = v240;
  if ((sub_24E70139C(v240, a2, v243) & 1) == 0)
  {
    sub_24E601704(v241, &qword_27F2190D8);
    sub_24E701614(&v246);
    return (*(v235 + 56))(v237, 1, 1, v236);
  }

  if (v72 > 0xAu)
  {
    if (v72 != 11)
    {
      if (v72 == 12)
      {
        if (v243)
        {
          v102 = v188;
          sub_24E60169C(v241, v188, &qword_27F2190D8);
          v103 = (*(v193 + 48))(v102, 1, v194);
          v104 = v205;
          if (v103 == 1)
          {
            sub_24E601704(v102, &qword_27F2190D8);
            v105 = sub_24F926C98();
            v106 = sub_24F925808();
            v107 = v191;
            *v191 = v105;
            *(v107 + 8) = v106;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
            sub_24E602068(&qword_27F219118, &qword_27F219070);
            sub_24E63D098();
            v108 = v192;
            sub_24F924E28();
          }

          else
          {
            v166 = v185;
            sub_24E701C34(v102, v185, type metadata accessor for ColorGroup);
            v167 = v243 != 5;
            v168 = sub_24F927618();
            v169 = v186;
            *v186 = v168;
            *(v169 + 8) = v170;
            v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120);
            sub_24F594F18(v167, v166, v169 + *(v171 + 44));
            v172 = v187;
            sub_24E6009C8(v169, v187, &qword_27F219070);
            sub_24E60169C(v172, v191, &qword_27F219070);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
            sub_24E602068(&qword_27F219118, &qword_27F219070);
            sub_24E63D098();
            v108 = v192;
            sub_24F924E28();
            sub_24E601704(v172, &qword_27F219070);
            sub_24E701C9C(v166, type metadata accessor for ColorGroup);
          }

          v138 = v237;
          v139 = v236;
          sub_24E60169C(v108, v203, &qword_27F219078);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
          sub_24E63D098();
          sub_24E7018B8();
          sub_24F924E28();
          sub_24E601704(v108, &qword_27F219078);
        }

        else
        {
          v145 = sub_24F926C98();
          v146 = sub_24F925808();
          v147 = v203;
          *v203 = v145;
          *(v147 + 8) = v146;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
          sub_24E63D098();
          sub_24E7018B8();
          v104 = v205;
          sub_24F924E28();
          v138 = v237;
          v139 = v236;
        }

        sub_24E60169C(v104, v219, &qword_27F219088);
        swift_storeEnumTagMultiPayload();
        sub_24E7017E4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E70182C();
        v173 = v220;
        sub_24F924E28();
        sub_24E60169C(v173, v225, &qword_27F219098);
        swift_storeEnumTagMultiPayload();
        sub_24E7016FC();
        sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
        v174 = v226;
        sub_24F924E28();
        sub_24E601704(v173, &qword_27F219098);
        sub_24E60169C(v174, v230, &qword_27F2190C8);
        swift_storeEnumTagMultiPayload();
        sub_24E701644();
        sub_24E701970();
        v98 = v232;
        sub_24F924E28();
        sub_24E701614(&v246);
        sub_24E601704(v174, &qword_27F2190C8);
        sub_24E601704(v104, &qword_27F219088);
        goto LABEL_92;
      }

      goto LABEL_38;
    }

    if (v243 <= 1u)
    {
      v138 = v237;
      v139 = v236;
      v98 = v232;
      v140 = v199;
      if (v243)
      {
        v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        (*(*(v158 - 8) + 56))(v140, 2, 5, v158);
LABEL_91:
        v178 = v140;
        v179 = v202;
        sub_24E701C34(v178, v202, type metadata accessor for CardContentBackgroundStyle);
        sub_24E701D44(v179, v219, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E7017E4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E70182C();
        v180 = v220;
        sub_24F924E28();
        sub_24E60169C(v180, v225, &qword_27F219098);
        swift_storeEnumTagMultiPayload();
        sub_24E7016FC();
        sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
        v181 = v226;
        sub_24F924E28();
        sub_24E601704(v180, &qword_27F219098);
        sub_24E60169C(v181, v230, &qword_27F2190C8);
        swift_storeEnumTagMultiPayload();
        sub_24E701644();
        sub_24E701970();
        sub_24F924E28();
        sub_24E701614(&v246);
        sub_24E601704(v181, &qword_27F2190C8);
        sub_24E701C9C(v179, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_92;
      }
    }

    else
    {
      v138 = v237;
      v139 = v236;
      v98 = v232;
      v140 = v199;
      if (v243 - 2 < 2)
      {
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
        if (v221)
        {
          v142 = 5;
        }

        else
        {
          v142 = 1;
        }

        (*(*(v141 - 8) + 56))(v140, v142, 5, v141);
        goto LABEL_91;
      }

      if (v243 == 4)
      {
        v159 = v21;
        v160 = v183;
        sub_24E60169C(v241, v183, &qword_27F2190D8);
        v161 = v193;
        v162 = v194;
        if ((*(v193 + 48))(v160, 1, v194) == 1)
        {
          sub_24E601704(v160, &qword_27F2190D8);
          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
          v164 = v184;
          (*(*(v163 - 8) + 56))(v184, 1, 5, v163);
        }

        else
        {
          v175 = v161;
          sub_24E701C34(v160, v159, type metadata accessor for ColorGroup);
          v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
          v177 = *(v176 + 48);
          v164 = v184;
          sub_24E701C34(v159, v184, type metadata accessor for ColorGroup);
          (*(v175 + 56))(v164, 0, 1, v162);
          *(v164 + v177) = 1;
          (*(*(v176 - 8) + 56))(v164, 0, 5, v176);
        }

        sub_24E701C34(v164, v140, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_91;
      }
    }

    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
    (*(*(v165 - 8) + 56))(v140, 1, 5, v165);
    goto LABEL_91;
  }

  if (v72 != 2)
  {
    if (v72 == 8)
    {
      v74 = v222[11];
      v233 = *(a2 + v222[10]);
      v240 = *(a2 + v74);
      LODWORD(v242) = *(a2 + v74 + 8);
      v75 = (a2 + v222[12]);
      v76 = v75[1];
      v77 = (a2 + v222[13]);
      *&v238 = v77[1];
      v78 = v213;
      v79 = *(v213 + 48);
      *&v73 = *v77;
      v239 = v73;
      *&v73 = *v75;
      v234 = v73;

      sub_24E91E34C(8, a2, v243, v215, v216, v29 + v79);
      v80 = sub_24F9251C8();
      v81 = *(v197 + 36);
      v82 = *MEMORY[0x277CE13B8];
      v83 = sub_24F927748();
      v84 = v198;
      (*(*(v83 - 8) + 104))(&v198[v81], v82, v83);
      *v84 = v80;
      sub_24E602068(&qword_27F214428, &qword_27F213F10);
      v85 = sub_24F925C58();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      sub_24E601704(v84, &qword_27F213F10);
      *(v29 + *(v78 + 56)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      v92 = v240;
      *v29 = v233;
      *(v29 + 8) = v92;
      *&v93 = v234;
      *(&v93 + 1) = v76;
      *(v29 + 16) = v242;
      *&v94 = v239;
      *(&v94 + 1) = v238;
      *(v29 + 40) = v94;
      *(v29 + 24) = v93;
      v95 = v29 + *(v78 + 52);
      *v95 = v85;
      *(v95 + 8) = v87;
      *(v95 + 16) = v89 & 1;
      *(v95 + 24) = v91;
      sub_24E60169C(v29, v211, &qword_27F2190A0);
      swift_storeEnumTagMultiPayload();
      sub_24E7017E4(&qword_27F2190F0, type metadata accessor for SearchCardConfiguration.CardVisual);
      sub_24E602068(&qword_27F2190F8, &qword_27F2190A0);
      v96 = v212;
      sub_24F924E28();
      sub_24E60169C(v96, v225, &qword_27F2190C0);
      swift_storeEnumTagMultiPayload();
      sub_24E7016FC();
      sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
      v97 = v226;
      sub_24F924E28();
      sub_24E601704(v96, &qword_27F2190C0);
      sub_24E60169C(v97, v230, &qword_27F2190C8);
      swift_storeEnumTagMultiPayload();
      sub_24E701644();
      sub_24E701970();
      v98 = v232;
      sub_24F924E28();
      sub_24E701614(&v246);
      sub_24E601704(v97, &qword_27F2190C8);
      v99 = v29;
      v100 = &qword_27F2190A0;
LABEL_39:
      sub_24E601704(v99, v100);
LABEL_77:
      v138 = v237;
      v139 = v236;
LABEL_92:
      sub_24E601704(v241, &qword_27F2190D8);
      sub_24E6009C8(v98, v138, &qword_27F2190D0);
      return (*(v235 + 56))(v138, 0, 1, v139);
    }

LABEL_38:
    v109 = v200;
    sub_24E91E34C(v72, a2, v243, v215, v216, v200);
    sub_24E60169C(v109, v230, &qword_27F214A20);
    swift_storeEnumTagMultiPayload();
    sub_24E701644();
    sub_24E701970();
    v98 = v232;
    sub_24F924E28();
    sub_24E701614(&v246);
    v99 = v109;
    v100 = &qword_27F214A20;
    goto LABEL_39;
  }

  v220 = v56;
  sub_24E60169C(v207 + *(v54 + 32), v208, &qword_27F213FB8);
  v110 = *(a2 + v222[9]);
  if (v110 >> 62)
  {
    v111 = sub_24F92C738();
  }

  else
  {
    v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v232;
  v29 = v233;
  v112 = v234;
  v219 = v54;
  if (!v111)
  {
    v143 = v220;
    v144 = v206;
    sub_24E701D04(v220);
    v113 = MEMORY[0x277D84F90];
LABEL_76:
    v148 = v210;
    v149 = v195;
    sub_24E60169C(v207 + *(v219 + 40), v195 + *(v210 + 28), &qword_27F213FB0);
    *v149 = v143;
    v149[1] = v144;
    sub_24E6009C8(v208, v149 + v148[5], &qword_27F213FB8);
    *(v149 + v148[6]) = v113;
    v150 = (v149 + v148[8]);
    v151 = *v249;
    v150[2] = v248;
    v150[3] = v151;
    v150[4] = *&v249[16];
    *(v150 + 73) = *&v249[25];
    v152 = v247;
    *v150 = v246;
    v150[1] = v152;
    *(v149 + v148[9]) = v243;
    v153 = v149 + v148[10];
    type metadata accessor for CardSafeArea(0);
    sub_24E701364(&v246, &v245);
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    *v153 = sub_24F923598();
    v153[8] = v154 & 1;
    v155 = v196;
    sub_24E701C34(v149, v196, type metadata accessor for SearchCardConfiguration.CardVisual);
    sub_24E701D44(v155, v211, type metadata accessor for SearchCardConfiguration.CardVisual);
    swift_storeEnumTagMultiPayload();
    sub_24E7017E4(&qword_27F2190F0, type metadata accessor for SearchCardConfiguration.CardVisual);
    sub_24E602068(&qword_27F2190F8, &qword_27F2190A0);
    v156 = v212;
    sub_24F924E28();
    sub_24E60169C(v156, v225, &qword_27F2190C0);
    swift_storeEnumTagMultiPayload();
    sub_24E7016FC();
    sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
    v157 = v226;
    sub_24F924E28();
    sub_24E601704(v156, &qword_27F2190C0);
    sub_24E60169C(v157, v230, &qword_27F2190C8);
    swift_storeEnumTagMultiPayload();
    sub_24E701644();
    sub_24E701970();
    sub_24F924E28();
    sub_24E701614(&v246);
    sub_24E601704(v157, &qword_27F2190C8);
    sub_24E701C9C(v155, type metadata accessor for SearchCardConfiguration.CardVisual);
    goto LABEL_77;
  }

  sub_24E701D04(v220);
  v245 = MEMORY[0x277D84F90];
  sub_24F457BB4(0, v111 & ~(v111 >> 63), 0);
  if ((v111 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v113 = v245;
    v240 = v110 & 0xC000000000000001;
    *&v238 = *MEMORY[0x277CEE210];
    *&v239 = v242 + 32;
    v114 = MEMORY[0x277D84F98];
    v222 = v110;
    v221 = v111;
    while (1)
    {
      if (v240)
      {
        v21 = MEMORY[0x253052270](v56, v110);
        v115 = *(v21 + 6);
        if (!v115)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v21 = *&v110[2 * v56 + 8];

        v115 = *(v21 + 6);
        if (!v115)
        {
LABEL_53:

          goto LABEL_66;
        }
      }

      v116 = v238;
      v117 = v115;
      v118 = [v117 CGColor];
      if (v118)
      {
        v119 = v118;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v244 = v114;
        v54 = MEMORY[0x277D84F98];
        a2 = sub_24E7728E8(v116);
        v122 = *(MEMORY[0x277D84F98] + 16);
        v123 = (v121 & 1) == 0;
        v124 = v122 + v123;
        if (__OFADD__(v122, v123))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          swift_once();
LABEL_12:
          v63 = &xmmword_27F39A710;
          goto LABEL_27;
        }

        v29 = v121;
        if (*(MEMORY[0x277D84F98] + 24) >= v124)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24E8ADF98();
          }
        }

        else
        {
          sub_24E899898(v124, isUniquelyReferenced_nonNull_native);
          v125 = sub_24E7728E8(v116);
          if ((v29 & 1) != (v126 & 1))
          {
            goto LABEL_99;
          }

          a2 = v125;
        }

        v112 = v234;
        v54 = v244;
        if (v29)
        {
          v131 = *(v244 + 56);
          v132 = *(v131 + 8 * a2);
          *(v131 + 8 * a2) = v119;

          v117 = v132;
        }

        else
        {
          *(v244 + 8 * (a2 >> 6) + 64) |= 1 << a2;
          *(*(v54 + 48) + 8 * a2) = v116;
          *(*(v54 + 56) + 8 * a2) = v119;
          v133 = *(v54 + 16);
          v134 = __OFADD__(v133, 1);
          v135 = v133 + 1;
          if (v134)
          {
            goto LABEL_94;
          }

          *(v54 + 16) = v135;
        }

        v29 = v233;
        v110 = v222;
        v111 = v221;
      }

      else
      {
        v127 = sub_24E7728E8(v116);
        v111 = v221;
        if (v128)
        {
          v129 = v127;
          v130 = swift_isUniquelyReferenced_nonNull_native();
          v244 = v114;
          if ((v130 & 1) == 0)
          {
            sub_24E8ADF98();
            v114 = v244;
          }

          sub_24EB52DDC(v129, v114);
        }

        v110 = v222;
      }

LABEL_66:

      sub_24F928948();

      v245 = v113;
      v137 = *(v113 + 16);
      v136 = *(v113 + 24);
      if (v137 >= v136 >> 1)
      {
        sub_24F457BB4(v136 > 1, v137 + 1, 1);
        v113 = v245;
      }

      ++v56;
      *(v113 + 16) = v137 + 1;
      (*(v242 + 32))(v113 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v137, v112, v29);
      v114 = MEMORY[0x277D84F98];
      if (v111 == v56)
      {
        v98 = v232;
        v143 = v220;
        v144 = v206;
        goto LABEL_76;
      }
    }
  }

  __break(1u);
LABEL_99:
  type metadata accessor for AMSMediaArtworkColorKind(0);
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24E6F99F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v72 - v6;
  v80 = type metadata accessor for GSKVideo();
  v8 = *(v80 - 8);
  v9 = MEMORY[0x28223BE20](v80);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v72 - v11;
  v12 = sub_24F9289E8();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = &v72 - v17;
  v18 = type metadata accessor for MixedMediaItem.ContentType();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v72 - v26;
  v28 = a1 + *(type metadata accessor for SearchCard() + 32);
  v29 = type metadata accessor for CommonCardAttributes(0);
  v30 = (v28 + v29[9]);
  if (*v30)
  {
    v31 = v30[1];
    if (*(v31 + 16))
    {
      v32 = sub_24E76DCB8(0);
      if (v33)
      {
        sub_24E701D44(*(v31 + 56) + *(v19 + 72) * v32, v25, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E701C34(v25, v27, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E701D44(v27, v22, type metadata accessor for MixedMediaItem.ContentType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v73;
          sub_24E701C34(v22, v73, type metadata accessor for GSKVideo);
          v35 = sub_24F9289A8();
          v36 = v74;
          if (v35)
          {
            v37 = qword_27F20FEE0;
            v38 = v35;
            if (v37 != -1)
            {
              v70 = v38;
              swift_once();
              v38 = v70;
            }

            v39 = v38;
            v40 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v40);

            sub_24E701C9C(v34, type metadata accessor for GSKVideo);
LABEL_25:
            sub_24E701C9C(v27, type metadata accessor for MixedMediaItem.ContentType);
            return sub_24E6009C8(v36, v81, &qword_27F2190D8);
          }

          sub_24E701C9C(v34, type metadata accessor for GSKVideo);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128);

          v59 = v78;
          v58 = v79;
          v60 = v72;
          (*(v78 + 32))(v72, v22, v79);
          v61 = sub_24F9289A8();
          v36 = v74;
          if (v61)
          {
            v62 = qword_27F20FEE0;
            v63 = v61;
            if (v62 != -1)
            {
              v71 = v63;
              swift_once();
              v63 = v71;
            }

            v64 = v63;
            v65 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v65);

            (*(v59 + 8))(v60, v58);
            goto LABEL_25;
          }

          (*(v59 + 8))(v60, v58);
        }

        sub_24E701C9C(v27, type metadata accessor for MixedMediaItem.ContentType);
        v67 = type metadata accessor for ColorGroup();
        (*(*(v67 - 8) + 56))(v36, 1, 1, v67);
        return sub_24E6009C8(v36, v81, &qword_27F2190D8);
      }
    }
  }

  sub_24E60169C(v28 + v29[8], v7, &qword_27F213FB8);
  if ((*(v8 + 48))(v7, 1, v80) == 1)
  {
    sub_24E601704(v7, &qword_27F213FB8);
    v41 = v77;
    sub_24E60169C(v28 + v29[10], v77, &qword_27F213FB0);
    v43 = v78;
    v42 = v79;
    if ((*(v78 + 48))(v41, 1, v79) == 1)
    {
      sub_24E601704(v41, &qword_27F213FB0);
LABEL_27:
      v66 = type metadata accessor for ColorGroup();
      return (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
    }

    v52 = v75;
    (*(v43 + 32))(v75, v41, v42);
    v53 = sub_24F9289A8();
    if (!v53)
    {
      (*(v43 + 8))(v52, v42);
      goto LABEL_27;
    }

    v54 = qword_27F20FEE0;
    v55 = v53;
    if (v54 != -1)
    {
      v69 = v55;
      swift_once();
      v55 = v69;
    }

    v56 = v55;
    v57 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v57);

    return (*(v43 + 8))(v52, v42);
  }

  else
  {
    v44 = v7;
    v45 = v76;
    sub_24E701C34(v44, v76, type metadata accessor for GSKVideo);
    v46 = sub_24F9289A8();
    if (!v46)
    {
      sub_24E701C9C(v45, type metadata accessor for GSKVideo);
      goto LABEL_27;
    }

    v47 = qword_27F20FEE0;
    v48 = v46;
    if (v47 != -1)
    {
      v68 = v48;
      swift_once();
      v48 = v68;
    }

    v49 = v48;
    v50 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v50);

    return sub_24E701C9C(v45, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24E6FA354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219450);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v28 - v6;
  v8 = *(a1 + 16);
  v28[0] = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = sub_24F924E38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - v16;
  if (*(*v2 + 16) || *(v2 + 16) != 1 || *(v2 + 32) || *(v2 + 48))
  {
    *v7 = sub_24F9249A8();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219458);
    v19 = *(a1 + 24);
    sub_24E6FA6A4(v2, v8, v19, &v7[*(v18 + 44)]);
    sub_24F925A08();
    v20 = sub_24F9258E8();

    KeyPath = swift_getKeyPath();
    v22 = &v7[*(v4 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    sub_24E703FA4();
    sub_24ECCCC98(v7, v8, v4);
    sub_24E601704(v7, &qword_27F219450);
  }

  else
  {
    v26 = *(a1 + 48);
    v19 = *(a1 + 24);
    sub_24E7896B8(v2 + v26, v8, v19);
    sub_24E7896B8(v13, v8, v19);
    sub_24E703FA4();
    sub_24ECCCBA0(v11, v8);
    v27 = *(v28[0] + 8);
    v27(v11, v8);
    v27(v13, v8);
  }

  v23 = sub_24E703FA4();
  v28[2] = v19;
  v28[3] = v23;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v17, v14, WitnessTable);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_24E6FA6A4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v174 = a3;
  v173 = a2;
  v180 = a4;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219478);
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v167 = &v159 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219480);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v179 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v183 = &v159 - v9;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219488);
  v10 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v161 = &v159 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219490);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v160 = &v159 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v159 = (&v159 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219498);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v176 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v159 - v19;
  v190 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v165 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v186 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = type metadata accessor for PlayerAvatarView(0);
  v189 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath);
  v166 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194A0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v172 = &v159 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v188 = &v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v195 = (&v159 - v29);
  v30 = type metadata accessor for Player(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8);
  v194 = (&v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v201 = type metadata accessor for PlayerAvatar(0);
  v193 = *(v201 - 8);
  v33 = MEMORY[0x28223BE20](v201);
  v196 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v187 = &v159 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = (&v159 - v37);
  v169 = type metadata accessor for OverlappingPlayerAvatarsView();
  v39 = MEMORY[0x28223BE20](v169);
  v171 = &v159 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v159 - v42;
  MEMORY[0x28223BE20](v41);
  v170 = &v159 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194A8);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v175 = &v159 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v159 - v48;
  v182 = a1;
  v50 = *a1;
  v51 = *(*&v50 + 16);
  v184 = v20;
  v185 = &v159 - v48;
  if (v51)
  {
    v162 = v43;
    v163 = v24;
    v164 = v23;
    v168 = v10;
    v208 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v51, 0);
    v52 = v208;
    v53 = *&v50 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v192 = *(v31 + 72);
    v54 = v38;
    do
    {
      v200 = v52;
      v55 = v194;
      sub_24E701D44(v53, v194, type metadata accessor for Player);
      v56 = v55[3];
      v199 = v55[2];

      sub_24E701C9C(v55, type metadata accessor for Player);
      v57 = type metadata accessor for PlayerAvatar.Overlay(0);
      v191 = *(v57 - 8);
      v58 = *(v191 + 56);
      v59 = v195;
      v58(v195, 1, 1, v57);
      v207 = 0;
      v205 = 0u;
      v206 = 0u;
      v60 = v201;
      v61 = *(v201 + 20);
      v198 = v57;
      v58((v54 + v61), 1, 1, v57);
      v62 = v54 + *(v60 + 24);
      v204 = 0;
      memset(v203, 0, sizeof(v203));
      *v62 = 0u;
      *(v62 + 16) = 0u;
      *(v62 + 32) = 0;
      sub_24E61DA68(v203, v62, qword_27F21B590);
      *v54 = v199;
      v54[1] = v56;
      v52 = v200;
      sub_24E61DA68(v59, v54 + v61, &qword_27F22DF80);
      sub_24E61DA68(&v205, v62, qword_27F21B590);
      v208 = v52;
      v64 = *(v52 + 16);
      v63 = *(v52 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_24F457BF8(v63 > 1, v64 + 1, 1);
        v52 = v208;
      }

      *(v52 + 16) = v64 + 1;
      v65 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v66 = *(v193 + 72);
      sub_24E701C34(v54, v52 + v65 + v66 * v64, type metadata accessor for PlayerAvatar);
      v53 += v192;
      --v51;
    }

    while (v51);
    v67 = *(v52 + 16);
    if (v67)
    {
      *&v203[0] = MEMORY[0x277D84F90];
      sub_24F457C7C(0, v67, 0);
      v195 = (v191 + 48);
      v194 = (v165 + 56);
      v200 = v52;
      v68 = v52 + v65;
      v69 = *&v203[0];
      v70 = &qword_27F22DF80;
      v71 = &unk_24F942E50;
      v72 = v166;
      do
      {
        v199 = v69;
        v73 = v71;
        v74 = v70;
        v75 = v187;
        sub_24E701D44(v68, v187, type metadata accessor for PlayerAvatar);
        v76 = v196;
        sub_24E701D44(v75, v196, type metadata accessor for PlayerAvatar);

        sub_24F928948();
        v77 = v75;
        v70 = v74;
        v71 = v73;
        sub_24E701C9C(v77, type metadata accessor for PlayerAvatar);
        type metadata accessor for PlayerAvatarView.AvatarType(0);
        swift_storeEnumTagMultiPayload();
        v78 = v76 + *(v201 + 20);
        v79 = v188;
        sub_24E60169C(v78, v188, v70);
        v80 = *(KeyPath + 20);
        if ((*v195)(v79, 1, v198) == 1)
        {
          sub_24E601704(v79, v70);
          v81 = 1;
          v82 = v190;
        }

        else
        {
          v83 = v79;
          v84 = v186;
          sub_24E701C34(v83, v186, type metadata accessor for PlayerAvatar.Overlay);
          v82 = v190;
          v85 = v84 + *(v190 + 20);
          *v85 = 0;
          *(v85 + 8) = 1;
          v86 = (v84 + *(v82 + 24));
          *v86 = 0;
          v86[1] = 0;
          sub_24E701C34(v84, v72 + v80, type metadata accessor for PlayerAvatarView.Overlay);
          v81 = 0;
        }

        (*v194)(v72 + v80, v81, 1, v82);
        v87 = KeyPath;
        v88 = v72 + *(KeyPath + 24);
        v89 = v196;
        sub_24E60169C(v196 + *(v201 + 24), &v205, qword_27F24EC90);
        sub_24E701C9C(v89, type metadata accessor for PlayerAvatar);
        v90 = v206;
        *v88 = v205;
        *(v88 + 16) = v90;
        *(v88 + 32) = v207;
        *(v72 + *(v87 + 28)) = 7;
        v69 = v199;
        *&v203[0] = v199;
        v92 = *(v199 + 2);
        v91 = *(v199 + 3);
        if (v92 >= v91 >> 1)
        {
          sub_24F457C7C(v91 > 1, v92 + 1, 1);
          v69 = *&v203[0];
        }

        *(v69 + 2) = v92 + 1;
        sub_24E701C34(v72, v69 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v92, type metadata accessor for PlayerAvatarView);
        v68 += v66;
        --v67;
      }

      while (v67);
    }

    else
    {

      v69 = MEMORY[0x277D84F90];
    }

    v96 = v182;
    *&v205 = 0x4010000000000000;
    sub_24E66ED98();
    v97 = v162;
    sub_24F9237C8();
    v98 = v169;
    *(v97 + *(v169 + 20)) = v69;
    v99 = v97 + *(v98 + 24);
    *v99 = 3;
    *(v99 + 8) = 0;
    *(v97 + *(v98 + 28)) = 0;
    v100 = v170;
    sub_24E701C34(v97, v170, type metadata accessor for OverlappingPlayerAvatarsView);
    v101 = v96 + *(type metadata accessor for SearchCardConfiguration.SubtitleTextStack() + 52);
    v102 = *v101;
    v103 = *(v101 + 8);
    v104 = *(v101 + 16);
    v105 = *(v101 + 24);
    v106 = v171;
    sub_24E701D44(v100, v171, type metadata accessor for OverlappingPlayerAvatarsView);
    v107 = v172;
    sub_24E701D44(v106, v172, type metadata accessor for OverlappingPlayerAvatarsView);
    v108 = v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194B0) + 48);
    sub_24E5FD138(v102, v103, v104);

    sub_24E5FD138(v102, v103, v104);

    sub_24E701C9C(v100, type metadata accessor for OverlappingPlayerAvatarsView);
    *v108 = v102;
    *(v108 + 8) = v103;
    *(v108 + 16) = v104;
    *(v108 + 24) = v105;
    v109 = v103;
    v93 = v96;
    sub_24E600B40(v102, v109, v104);

    sub_24E701C9C(v106, type metadata accessor for OverlappingPlayerAvatarsView);
    v49 = v185;
    sub_24E6009C8(v107, v185, &qword_27F2194A0);
    (*(v163 + 56))(v49, 0, 1, v164);
    v94 = v183;
    v20 = v184;
    v95 = v181;
    v10 = v168;
    if (v93[2])
    {
      goto LABEL_25;
    }
  }

  else
  {
    (*(v24 + 56))(&v159 - v48, 1, 1, v23);
    v93 = v182;
    v94 = v183;
    v95 = v181;
    if (v182[2])
    {
LABEL_25:
      v129 = 1;
      goto LABEL_26;
    }
  }

  v110 = v93[1];
  if (v110 <= 0.0)
  {
    goto LABEL_25;
  }

  v111 = *(v93 + 4);
  if (!v111)
  {
    goto LABEL_25;
  }

  v112 = *(v93 + 3);
  v113 = HIBYTE(v111) & 0xF;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v113 = v112 & 0xFFFFFFFFFFFFLL;
  }

  if (v113)
  {
    v114 = sub_24F924978();
    v115 = v159;
    *v159 = v114;
    *(v115 + 8) = 0x4000000000000000;
    *(v115 + 16) = 0;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194C0);
    sub_24E6FBB84(v112, v111, v115 + *(v116 + 44), v110);
    v117 = v93 + *(type metadata accessor for SearchCardConfiguration.SubtitleTextStack() + 52);
    v118 = *v117;
    v119 = *(v117 + 8);
    v168 = v10;
    v120 = *(v117 + 16);
    v121 = *(v117 + 24);
    v122 = v160;
    sub_24E60169C(v115, v160, &qword_27F219490);
    v123 = v161;
    sub_24E60169C(v122, v161, &qword_27F219490);
    v124 = v123 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194C8) + 48);
    sub_24E5FD138(v118, v119, v120);

    sub_24E5FD138(v118, v119, v120);

    sub_24E601704(v115, &qword_27F219490);
    *v124 = v118;
    *(v124 + 8) = v119;
    *(v124 + 16) = v120;
    *(v124 + 24) = v121;
    v125 = v118;
    v126 = v119;
    v94 = v183;
    v127 = v181;
    v128 = v120;
    v10 = v168;
    sub_24E600B40(v125, v126, v128);
    v93 = v182;

    sub_24E601704(v122, &qword_27F219490);
    sub_24E6009C8(v123, v20, &qword_27F219488);
    v95 = v127;
    v129 = 0;
  }

  else
  {
    v129 = 1;
  }

  v49 = v185;
LABEL_26:
  (*(v10 + 56))(v20, v129, 1, v95);
  v130 = *(v93 + 6);
  if (!v130)
  {
    goto LABEL_31;
  }

  v131 = HIBYTE(v130) & 0xF;
  if ((v130 & 0x2000000000000000) == 0)
  {
    v131 = v93[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v131)
  {
    *&v205 = v93[5];
    *(&v205 + 1) = v130;
    sub_24E600AEC();

    v132 = sub_24F925E18();
    v199 = v133;
    v200 = v132;
    v135 = v134;
    v201 = v136;
    KeyPath = swift_getKeyPath();
    sub_24F925A08();
    v198 = sub_24F9258E8();

    v137 = swift_getKeyPath();
    v138 = v135 & 1;
    LOBYTE(v208) = v135 & 1;
    v202 = 0;
    v139 = sub_24F9251C8();
    v140 = v178;
    v141 = v94;
    v142 = v167;
    v143 = v20;
    v144 = &v167[*(v178 + 36)];
    v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v146 = *MEMORY[0x277CE13B8];
    v147 = sub_24F927748();
    (*(*(v147 - 8) + 104))(&v144[v145], v146, v147);
    *v144 = v139;
    v20 = v143;
    v94 = v141;
    v49 = v185;
    v148 = v199;
    *v142 = v200;
    *(v142 + 8) = v148;
    *(v142 + 16) = v138;
    *(v142 + 17) = v205;
    *(v142 + 20) = *(&v205 + 3);
    v149 = KeyPath;
    *(v142 + 24) = v201;
    *(v142 + 32) = v149;
    *(v142 + 40) = 1;
    *(v142 + 48) = 0;
    *(v142 + 49) = v203[0];
    *(v142 + 52) = *(v203 + 3);
    v150 = v198;
    *(v142 + 56) = v137;
    *(v142 + 64) = v150;
    sub_24E6009C8(v142, v94, &qword_27F219478);
    (*(v177 + 56))(v94, 0, 1, v140);
  }

  else
  {
LABEL_31:
    (*(v177 + 56))(v94, 1, 1, v178);
  }

  v151 = v49;
  v152 = v175;
  sub_24E60169C(v151, v175, &qword_27F2194A8);
  v153 = v20;
  v154 = v176;
  sub_24E60169C(v153, v176, &qword_27F219498);
  v155 = v179;
  sub_24E60169C(v94, v179, &qword_27F219480);
  v156 = v180;
  sub_24E60169C(v152, v180, &qword_27F2194A8);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194B8);
  sub_24E60169C(v154, v156 + *(v157 + 48), &qword_27F219498);
  sub_24E60169C(v155, v156 + *(v157 + 64), &qword_27F219480);
  sub_24E601704(v94, &qword_27F219480);
  sub_24E601704(v184, &qword_27F219498);
  sub_24E601704(v185, &qword_27F2194A8);
  sub_24E601704(v155, &qword_27F219480);
  sub_24E601704(v154, &qword_27F219498);
  return sub_24E601704(v152, &qword_27F2194A8);
}

uint64_t sub_24E6FBB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v40 = a2;
  v41 = a1;
  v45 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194D0) - 8;
  v5 = MEMORY[0x28223BE20](v43);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194D8);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = sub_24F925A08();
  v16 = sub_24F9251C8();
  v17 = &v14[*(v10 + 44)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  v18 = *(v39 + 36);
  v38 = *MEMORY[0x277CE13B8];
  v19 = v38;
  v20 = sub_24F927748();
  v21 = *(*(v20 - 8) + 104);
  v21(&v17[v18], v19, v20);
  *v17 = v16;
  *v14 = a4;
  *(v14 + 1) = 5;
  v14[16] = 0;
  *(v14 + 3) = 0x4008000000000000;
  *(v14 + 4) = v15;
  v46 = v41;
  v47 = v40;
  sub_24E600AEC();

  v40 = sub_24F925E18();
  v41 = v22;
  v37 = v23;
  LOBYTE(v16) = v24;
  KeyPath = swift_getKeyPath();
  sub_24F925A08();
  v36 = sub_24F9258E8();

  v26 = swift_getKeyPath();
  LOBYTE(v15) = v16 & 1;
  v49 = v16 & 1;
  v48 = 0;
  v27 = sub_24F9251C8();
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219478) + 36)];
  v21(&v28[*(v39 + 36)], v38, v20);
  *v28 = v27;
  v29 = v37;
  *v8 = v40;
  *(v8 + 1) = v29;
  v8[16] = v15;
  *(v8 + 17) = v46;
  *(v8 + 5) = *(&v46 + 3);
  *(v8 + 3) = v41;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 1;
  v8[48] = 0;
  *(v8 + 49) = *v50;
  *(v8 + 13) = *&v50[3];
  v30 = v36;
  *(v8 + 7) = v26;
  *(v8 + 8) = v30;
  v31 = v42;
  *&v8[*(v43 + 44)] = 257;
  sub_24E60169C(v14, v31, &qword_27F2194D8);
  v32 = v44;
  sub_24E60169C(v8, v44, &qword_27F2194D0);
  v33 = v45;
  sub_24E60169C(v31, v45, &qword_27F2194D8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194E0);
  sub_24E60169C(v32, v33 + *(v34 + 48), &qword_27F2194D0);
  sub_24E601704(v8, &qword_27F2194D0);
  sub_24E601704(v14, &qword_27F2194D8);
  sub_24E601704(v32, &qword_27F2194D0);
  return sub_24E601704(v31, &qword_27F2194D8);
}

uint64_t sub_24E6FBF60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219530);
  MEMORY[0x28223BE20](v2);
  v3 = sub_24E6B7C74(*(a1 + 8), *a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((v8 & 1) == 0)
  {

LABEL_3:
    sub_24E6B88C8(v3, v5, v7, v9);
    v11 = v10;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 != (v9 >> 1) - v7)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v20[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538);
  sub_24E602068(&qword_27F219540, &qword_27F219538);
  sub_24F921BA8();
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(a1 + 96);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  v17 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24E7045D0;
  *(v18 + 24) = v14;
  sub_24E704678(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219548);
  sub_24E602068(&qword_27F219550, &qword_27F219530);
  sub_24E7046B0();
  return sub_24F927228();
}

uint64_t sub_24E6FC24C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(a2 + 3);
  v50 = *(a2 + 1);
  v51 = v6;
  v7 = *(a2 + 7);
  v52 = *(a2 + 5);
  v53 = v7;
  v8 = a2[10];
  v9 = a2[11];
  if (*(a2[9] + 16))
  {
    result = sub_24E7728CC(result);
  }

  v10 = 0;
  v11 = 0;
  if (*(v9 + 16))
  {
    result = sub_24E7728CC(v4);
    if (v12)
    {
      v11 = *(*(v9 + 56) + 8 * result);
    }
  }

  if (*(v8 + 16))
  {
    result = sub_24E7728CC(v4);
    v13 = 0;
    if (v14)
    {
      v15 = (*(v8 + 56) + 16 * result);
      v10 = *v15;
      v13 = v15[1];
    }
  }

  else
  {
    v13 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *a2;
    if (*(v16 + 16) > v4)
    {
      v17 = sub_24F9289E8();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a3, v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v4, v17);
      (*(v18 + 56))(a3, 0, 1, v17);
      v19 = type metadata accessor for GameIcon(0);
      v20 = v19[8];
      *(a3 + v20) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
      swift_storeEnumTagMultiPayload();
      *(a3 + v19[5]) = 1;
      *(a3 + v19[6]) = 1;
      *(a3 + v19[7]) = 0;
      v54[0] = v52;
      v54[1] = v53;
      v21 = sub_24F927618();
      v23 = v22;
      v24 = v52;
      v25 = v53;
      LOBYTE(v38) = 1;
      *(&v38 + 1) = 0;
      *&v39 = 0;
      *(&v39 + 1) = *(&v53 + 1);
      *v40 = v53;
      *&v40[8] = v52;
      *&v40[24] = v21;
      v41 = v22;
      v26 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598) + 36);
      v27 = *&v40[16];
      *(v26 + 32) = *v40;
      *(v26 + 48) = v27;
      *(v26 + 64) = v41;
      v28 = v39;
      *v26 = v38;
      *(v26 + 16) = v28;
      v42[0] = 1;
      v43 = 0;
      v44 = 0;
      v45 = *(&v25 + 1);
      v46 = v25;
      v47 = v24;
      v48 = v21;
      v49 = v23;
      sub_24E7049FC(v54, v37);
      sub_24E60169C(&v38, v37, &qword_27F2195A8);
      sub_24E601704(v42, &qword_27F2195A8);
      sub_24F927618();
      sub_24F9238C8();
      v29 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588) + 36));
      v30 = v37[1];
      *v29 = v37[0];
      v29[1] = v30;
      v29[2] = v37[2];
      *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219578) + 36)) = -v4;
      sub_24F9278A8();
      v32 = v31;
      v34 = v33;
      v35 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219568) + 36));
      *v35 = v11;
      v35[1] = v32;
      v35[2] = v34;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219548);
      v36 = (a3 + *(result + 36));
      *v36 = v10;
      v36[1] = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6FC614@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = sub_24F9275F8();
  a1[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219528);
  return sub_24E6FBF60(v8);
}

uint64_t sub_24E6FC688()
{
  v1 = v0;
  v2 = sub_24F9289E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GSKVideo();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E701D44(v1, v11, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v11, v2);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_24E701C34(v11, v8, type metadata accessor for GSKVideo);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    return sub_24E701C9C(v8, type metadata accessor for GSKVideo);
  }
}

int64_t *sub_24E6FC8AC()
{
  v1 = v0;
  v2 = sub_24F9289E8();
  v63 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v61 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v51 - v5;
  v53 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  v62 = *(v53 - 8);
  v6 = MEMORY[0x28223BE20](v53);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v51 - v8;
  v9 = sub_24F922348();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for GSKVideo();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x277D84F90];
  v20 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  v59 = v1;
  v60 = v20;
  sub_24E60169C(v1 + *(v20 + 20), v15, &qword_27F213FB8);
  v21 = (*(v17 + 48))(v15, 1, v16);
  v55 = v9;
  if (v21 == 1)
  {
    sub_24E601704(v15, &qword_27F213FB8);
    v22 = v56;
    v23 = v9;
    v24 = v10;
  }

  else
  {
    sub_24E701C34(v15, v19, type metadata accessor for GSKVideo);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222C8();
    v26 = v25;
    sub_24F922338();
    v28 = v27;
    (*(v10 + 8))(v12, v9);
    v24 = v10;
    if (v26 < v28)
    {
      v29 = v58;
      sub_24E701D44(v19, v58, type metadata accessor for GSKVideo);
      swift_storeEnumTagMultiPayload();
      v24 = sub_24E616FC4(0, 1, 1, MEMORY[0x277D84F90]);
      v23 = v24[2];
      v30 = v24[3];
      v31 = v23 + 1;
      v22 = v56;
      if (v23 >= v30 >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }

    v23 = v9;
    sub_24E701C9C(v19, type metadata accessor for GSKVideo);
    v22 = v56;
  }

  while (1)
  {
    v10 = *(v59 + *(v60 + 24));
    v31 = MEMORY[0x277D84F90];
    v60 = *(v10 + 16);
    v64 = v2;
    if (!v60)
    {
      break;
    }

    v29 = 0;
    v58 = v63 + 16;
    v59 = v12;
    v32 = (v24 + 1);
    v54 = (v63 + 8);
    v57 = (v63 + 32);
    while (1)
    {
      v30 = *(v10 + 16);
      if (v29 >= v30)
      {
        break;
      }

      v12 = ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v19 = *(v63 + 72);
      (*(v63 + 16))(v22, &v12[v10 + v19 * v29], v2);
      sub_24F921BE8();
      v24 = v59;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F9222C8();
      v34 = v33;
      sub_24F922338();
      v36 = v35;
      (*v32)(v24, v23);
      if (v34 >= v36)
      {
        (*v54)(v22, v2);
      }

      else
      {
        v37 = *v57;
        (*v57)(v61, v22, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = &v65;
          sub_24F457BB4(0, *(v31 + 16) + 1, 1);
          v31 = v65;
        }

        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        if (v40 >= v39 >> 1)
        {
          v24 = &v65;
          sub_24F457BB4(v39 > 1, v40 + 1, 1);
          v31 = v65;
        }

        *(v31 + 16) = v40 + 1;
        v41 = &v12[v31 + v40 * v19];
        v2 = v64;
        v37(v41, v61, v64);
        v23 = v55;
        v22 = v56;
      }

      if (v60 == ++v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    v24 = sub_24E616FC4(v30 > 1, v31, 1, v24);
LABEL_5:
    sub_24E701C9C(v19, type metadata accessor for GSKVideo);
    v24[2] = v31;
    sub_24E701C34(v29, v24 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v23, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
    v66 = v24;
    v23 = v55;
    v24 = v10;
  }

LABEL_18:
  v42 = *(v31 + 16);
  if (v42)
  {
    v65 = MEMORY[0x277D84F90];
    sub_24F457E10(0, v42, 0);
    v43 = v63 + 16;
    v63 = *(v63 + 16);
    v44 = v65;
    v45 = v31 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v46 = *(v43 + 56);
    v47 = v52;
    do
    {
      (v63)(v47, v45, v64);
      swift_storeEnumTagMultiPayload();
      v65 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_24F457E10(v48 > 1, v49 + 1, 1);
        v44 = v65;
      }

      *(v44 + 16) = v49 + 1;
      sub_24E701C34(v47, v44 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v49, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
      v45 += v46;
      --v42;
    }

    while (v42);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  sub_24EA0A8AC(v44);
  return v66;
}

BOOL sub_24E6FD060()
{
  v1 = sub_24F9289E8();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F922348();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for GSKVideo();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  sub_24E60169C(v0 + *(v13 + 20), v8, &qword_27F213FB8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_24E701C34(v8, v12, type metadata accessor for GSKVideo);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222C8();
    v21 = v24;
    sub_24F922338();
    v23 = v25;
    (*(v3 + 8))(v5, v30);
    sub_24E701C9C(v12, type metadata accessor for GSKVideo);
    return v21 < v23;
  }

  v14 = v3;
  v15 = v30;
  sub_24E601704(v8, &qword_27F213FB8);
  v16 = *(v0 + *(v13 + 24));
  if (*(v16 + 16))
  {
    v18 = v27;
    v17 = v28;
    v19 = v29;
    (*(v28 + 16))(v27, v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v29);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222C8();
    v21 = v20;
    sub_24F922338();
    v23 = v22;
    (*(v14 + 8))(v5, v15);
    (*(v17 + 8))(v18, v19);
    return v21 < v23;
  }

  return 0;
}

uint64_t sub_24E6FD3F8@<X0>(uint64_t a1@<X8>)
{
  v330 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v2 - 8);
  v270 = &v270 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v275 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v276 = v6;
  v277 = &v270 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v274 = &v270 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2191F8);
  MEMORY[0x28223BE20](v8 - 8);
  v278 = &v270 - v9;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219200);
  MEMORY[0x28223BE20](v289);
  v279 = &v270 - v10;
  v290 = sub_24F9289E8();
  v303 = *(v290 - 8);
  v11 = MEMORY[0x28223BE20](v290);
  v271 = &v270 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v272 = v15;
  v273 = &v270 - v14;
  MEMORY[0x28223BE20](v13);
  v284 = &v270 - v16;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219208);
  MEMORY[0x28223BE20](v286);
  v287 = &v270 - v17;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219210);
  MEMORY[0x28223BE20](v326);
  v288 = &v270 - v18;
  v280 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v280);
  v294 = &v270 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219218);
  MEMORY[0x28223BE20](v281);
  v295 = &v270 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219220);
  MEMORY[0x28223BE20](v21 - 8);
  v282 = &v270 - v22;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219228);
  MEMORY[0x28223BE20](v285);
  v283 = &v270 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v24 - 8);
  v293 = &v270 - v25;
  v26 = type metadata accessor for GSKVideo();
  v291 = *(v26 - 8);
  v292 = v26;
  MEMORY[0x28223BE20](v26);
  v296 = &v270 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v304);
  v314 = &v270 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219230);
  MEMORY[0x28223BE20](v305);
  v306 = &v270 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219238);
  MEMORY[0x28223BE20](v30 - 8);
  v307 = &v270 - v31;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219240);
  MEMORY[0x28223BE20](v320);
  v308 = &v270 - v32;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219248);
  MEMORY[0x28223BE20](v329);
  v328 = (&v270 - v33);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219250);
  MEMORY[0x28223BE20](v322);
  v324 = &v270 - v34;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219258);
  MEMORY[0x28223BE20](v321);
  v318 = &v270 - v35;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219260);
  MEMORY[0x28223BE20](v323);
  v319 = &v270 - v36;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219268);
  MEMORY[0x28223BE20](v327);
  v325 = &v270 - v37;
  v38 = sub_24F924848();
  v310 = *(v38 - 8);
  v311 = v38;
  MEMORY[0x28223BE20](v38);
  v309 = &v270 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219270);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v270 - v41;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219278);
  MEMORY[0x28223BE20](v297);
  v44 = &v270 - v43;
  v45 = type metadata accessor for ScreenshotHStackLayout(0);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v270 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = &v270 - v49;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219280);
  MEMORY[0x28223BE20](v298);
  v52 = &v270 - v51;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219288);
  MEMORY[0x28223BE20](v299);
  v301 = &v270 - v53;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219290);
  v54 = MEMORY[0x28223BE20](v317);
  v300 = &v270 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v302 = &v270 - v56;
  v57 = sub_24F922348();
  v315 = *(v57 - 8);
  v316 = v57;
  MEMORY[0x28223BE20](v57);
  v313 = &v270 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59 - 8);
  v312 = &v270 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24E6FC8AC();
  v331 = v1;
  if (sub_24E6FD060() && v62[2])
  {
    sub_24E701D44(v62 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v312, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
    v63 = v313;
    sub_24E6FC688();
    (*(v315 + 16))(v50, v63, v316);
    *&v50[*(v45 + 20)] = 0x4024000000000000;
    sub_24E701C34(v50, v48, type metadata accessor for ScreenshotHStackLayout);
    sub_24E701D44(v48, v42, type metadata accessor for ScreenshotHStackLayout);
    sub_24E60169C(v42, v44, &qword_27F219270);
    sub_24E7004D8();

    sub_24E601704(v42, &qword_27F219270);
    sub_24E701C9C(v48, type metadata accessor for ScreenshotHStackLayout);
    sub_24F927618();
    sub_24F9242E8();
    sub_24E6009C8(v44, v52, &qword_27F219278);
    v64 = &v52[*(v298 + 36)];
    v65 = v350;
    *(v64 + 4) = v349;
    *(v64 + 5) = v65;
    *(v64 + 6) = v351;
    v66 = v346;
    *v64 = v345;
    *(v64 + 1) = v66;
    v67 = v348;
    *(v64 + 2) = v347;
    *(v64 + 3) = v67;
    v68 = sub_24F925808();
    sub_24F923318();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = v301;
    sub_24E6009C8(v52, v301, &qword_27F219280);
    v78 = v77 + *(v299 + 36);
    *v78 = v68;
    *(v78 + 8) = v70;
    *(v78 + 16) = v72;
    *(v78 + 24) = v74;
    *(v78 + 32) = v76;
    *(v78 + 40) = 0;
    v79 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
    v80 = v331;
    v81 = v331 + *(v79 + 40);
    v82 = *v81;
    v83 = v81[8];

    if ((v83 & 1) == 0)
    {
      sub_24F92BDC8();
      v84 = sub_24F9257A8();
      sub_24F921FD8();

      v85 = v309;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v310 + 8))(v85, v311);
      v82 = v334;
    }

    swift_getKeyPath();
    *&v334 = v82;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v86 = *(v82 + 16);

    v87 = *(v80 + *(v79 + 36));
    if (v87 < 4 || v87 == 4)
    {
      v149 = sub_24F92CE08();

      if ((v149 & 1) == 0)
      {
        sub_24F925818();
LABEL_37:
        v150 = sub_24EA91914(v86);
        v152 = v151;
        v154 = v153;
        v156 = v155;
        v157 = sub_24F925808();
        v158 = v300;
        sub_24E6009C8(v77, v300, &qword_27F219288);
        v159 = v158 + *(v317 + 36);
        *v159 = v157;
        *(v159 + 8) = v150;
        *(v159 + 16) = v152;
        *(v159 + 24) = v154;
        *(v159 + 32) = v156;
        *(v159 + 40) = 0;
        v160 = v302;
        sub_24E6009C8(v158, v302, &qword_27F219290);
        sub_24E60169C(v160, v318, &qword_27F219290);
        swift_storeEnumTagMultiPayload();
        sub_24E70340C();
        sub_24E70388C();
        v161 = v319;
        sub_24F924E28();
        sub_24E60169C(v161, v324, &qword_27F219260);
        swift_storeEnumTagMultiPayload();
        sub_24E703380();
        sub_24E703B18();
        v162 = v325;
        sub_24F924E28();
        sub_24E601704(v161, &qword_27F219260);
        sub_24E60169C(v162, v328, &qword_27F219268);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0);
        sub_24E703BA4();
        sub_24E703C30();
        v163 = v330;
        sub_24F924E28();
        sub_24E601704(v162, &qword_27F219268);
        sub_24E601704(v160, &qword_27F219290);
        (*(v315 + 8))(v313, v316);
        v164 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem;
        v165 = v312;
LABEL_80:
        sub_24E701C9C(v165, v164);
LABEL_81:
        v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219410);
        v235 = *(*(v234 - 8) + 56);
        v236 = v163;
        return v235(v236, 0, 1, v234);
      }
    }

    else
    {
    }

    sub_24F925848();
    goto LABEL_37;
  }

  v88 = v331;
  v89 = *v331;
  v90 = v314;
  if (*v331)
  {
    v91 = v331[1];
    v92 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
    v93 = *(v88 + *(v92 + 36));
    *v90 = v89;
    *(v90 + 8) = v91;
    *(v90 + 16) = v93;
    v94 = v304;
    v95 = *(v304 + 24);
    *(v90 + v95) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v96 = *(v94 + 28);
    *(v90 + v96) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v97 = v90 + *(v94 + 32);
    *v97 = swift_getKeyPath();
    *(v97 + 8) = 0;
    v98 = v88 + *(v92 + 40);
    if (v98[8] == 1)
    {
      *&v345 = *v98;
      sub_24E701D04(v89);
    }

    else
    {
      sub_24E701D04(v89);

      sub_24F92BDC8();
      v125 = sub_24F9257A8();
      sub_24F921FD8();

      v126 = v309;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v310 + 8))(v126, v311);
    }

    v127 = v307;
    v128 = v345;
    swift_getKeyPath();
    *&v345 = v128;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v129 = *(v128 + 16);

    v130 = v306;
    if (v93 == 3)
    {

      sub_24F925868();
    }

    else
    {
      v148 = sub_24F92CE08();

      if ((v148 & 1) == 0)
      {
        if (v93 <= 2 || v93 == 4)
        {
          v171 = sub_24F92CE08();

          if ((v171 & 1) == 0)
          {
            sub_24F925818();
            goto LABEL_46;
          }
        }

        else
        {
        }

        sub_24F925808();
        goto LABEL_46;
      }

      sub_24F925868();
    }

LABEL_46:
    v172 = sub_24EA91914(v129);
    v174 = v173;
    v176 = v175;
    v178 = v177;
    v179 = sub_24F925808();
    sub_24E701C34(v90, v130, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    v180 = v130 + *(v305 + 36);
    *v180 = v179;
    *(v180 + 8) = v172;
    *(v180 + 16) = v174;
    *(v180 + 24) = v176;
    *(v180 + 32) = v178;
    *(v180 + 40) = 0;
    if (v93 > 4)
    {

      v182 = 1;
      sub_24E9240A4(1);
      sub_24E601704(v130, &qword_27F219230);
    }

    else
    {
      v181 = sub_24F92CE08();

      sub_24E9240A4(v181 & 1);
      sub_24E601704(v130, &qword_27F219230);
      v182 = sub_24F92CE08();
    }

    *(&v346 + 1) = sub_24F925048();
    *&v347 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v345);
    sub_24F925258();
    v183 = v182 & 1;
    v184 = v308;
    sub_24E923A50(v183, &v345);
    sub_24E601704(v127, &qword_27F219238);
    __swift_destroy_boxed_opaque_existential_1(&v345);
    sub_24E60169C(v184, v318, &qword_27F219240);
    swift_storeEnumTagMultiPayload();
    sub_24E70340C();
    sub_24E70388C();
    v185 = v319;
    sub_24F924E28();
    sub_24E60169C(v185, v324, &qword_27F219260);
    swift_storeEnumTagMultiPayload();
    sub_24E703380();
    sub_24E703B18();
    v186 = v325;
    sub_24F924E28();
    sub_24E601704(v185, &qword_27F219260);
    sub_24E60169C(v186, v328, &qword_27F219268);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0);
    sub_24E703BA4();
    sub_24E703C30();
    v163 = v330;
    sub_24F924E28();
    sub_24E601704(v186, &qword_27F219268);
    sub_24E601704(v184, &qword_27F219240);
    goto LABEL_81;
  }

  v99 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  v100 = v293;
  sub_24E60169C(v88 + v99[5], v293, &qword_27F213FB8);
  if ((*(v291 + 48))(v100, 1, v292) != 1)
  {
    v131 = v100;
    v132 = v296;
    sub_24E701C34(v131, v296, type metadata accessor for GSKVideo);
    v133 = v294;
    sub_24E701D44(v132, v294, type metadata accessor for GSKVideo);
    v134 = v280;
    v135 = *(v280 + 20);
    v136 = type metadata accessor for VideoConfiguration();
    (*(*(v136 - 8) + 56))(v133 + v135, 1, 1, v136);
    v137 = sub_24F9238D8();
    v138 = (v133 + v134[12]);
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E7017E4(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    *v138 = sub_24F9243D8();
    v138[1] = v139;
    *(v133 + v134[9]) = 1;
    *(v133 + v134[10]) = v137;
    *(v133 + v134[11]) = 0;
    *(v133 + v134[6]) = 0x3FE8000000000000;
    *(v133 + v134[7]) = 0x3FE0000000000000;
    v140 = v133 + v134[8];
    *(v140 + 32) = 0u;
    *(v140 + 48) = 0u;
    *v140 = 0u;
    *(v140 + 16) = 0u;
    *(v140 + 64) = 5;
    v141 = v88 + v99[10];
    v142 = *v141;
    LOBYTE(v137) = v141[8];

    if ((v137 & 1) == 0)
    {
      sub_24F92BDC8();
      v143 = sub_24F9257A8();
      sub_24F921FD8();

      v144 = v309;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v310 + 8))(v144, v311);
      v142 = v345;
    }

    swift_getKeyPath();
    *&v345 = v142;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v145 = *(v142 + 16);

    v146 = *(v88 + v99[9]);
    if (v146 > 2)
    {
      v147 = v282;
      if (v146 == 3)
      {

        sub_24F925868();
        goto LABEL_77;
      }
    }

    else
    {
      v147 = v282;
    }

    v210 = sub_24F92CE08();

    if ((v210 & 1) == 0)
    {
      if (v146 <= 2 || v146 == 4)
      {
        v237 = sub_24F92CE08();

        if ((v237 & 1) == 0)
        {
          sub_24F925818();
          goto LABEL_77;
        }
      }

      else
      {
      }

      sub_24F925808();
      goto LABEL_77;
    }

    sub_24F925868();
LABEL_77:
    v238 = sub_24EA91914(v145);
    v240 = v239;
    v242 = v241;
    v244 = v243;
    v245 = sub_24F925808();
    v246 = v295;
    sub_24E701C34(v294, v295, type metadata accessor for GSKVideoView);
    v247 = v246 + *(v281 + 36);
    *v247 = v245;
    *(v247 + 8) = v238;
    *(v247 + 16) = v240;
    *(v247 + 24) = v242;
    *(v247 + 32) = v244;
    *(v247 + 40) = 0;
    if (v146 > 4)
    {

      v250 = 1;
      v254 = v295;
      sub_24E924370(1);
      sub_24E601704(v254, &qword_27F219218);
    }

    else
    {
      v248 = sub_24F92CE08();

      v249 = v295;
      sub_24E924370(v248 & 1);
      sub_24E601704(v249, &qword_27F219218);
      v250 = sub_24F92CE08();
    }

    *(&v346 + 1) = sub_24F925048();
    *&v347 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v345);
    sub_24F925258();
    v251 = v283;
    sub_24E923C6C(v250 & 1, &v345);
    sub_24E601704(v147, &qword_27F219220);
    __swift_destroy_boxed_opaque_existential_1(&v345);
    sub_24E60169C(v251, v287, &qword_27F219228);
    swift_storeEnumTagMultiPayload();
    sub_24E702DB8();
    sub_24E703044();
    v252 = v288;
    sub_24F924E28();
    sub_24E60169C(v252, v324, &qword_27F219210);
    swift_storeEnumTagMultiPayload();
    sub_24E703380();
    sub_24E703B18();
    v253 = v325;
    sub_24F924E28();
    sub_24E601704(v252, &qword_27F219210);
    sub_24E60169C(v253, v328, &qword_27F219268);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0);
    sub_24E703BA4();
    sub_24E703C30();
    v163 = v330;
    sub_24F924E28();
    sub_24E601704(v253, &qword_27F219268);
    sub_24E601704(v251, &qword_27F219228);
    v164 = type metadata accessor for GSKVideo;
    v165 = v296;
    goto LABEL_80;
  }

  sub_24E601704(v100, &qword_27F213FB8);
  v101 = *(v88 + v99[6]);
  if (*(v101 + 16))
  {
    v102 = *(v303 + 80);
    v103 = *(v303 + 16);
    v104 = v284;
    v105 = v290;
    v103(v284, v101 + ((v102 + 32) & ~v102), v290);
    v106 = v274;
    (*(v315 + 56))(v274, 1, 1, v316);
    v321 = *MEMORY[0x277CEE240];
    v107 = v273;
    v103(v273, v104, v105);
    v108 = v277;
    sub_24E6009C8(v106, v277, &qword_27F214148);
    v109 = (v102 + 16) & ~v102;
    v110 = v99;
    v111 = (v272 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + *(v275 + 80) + 8) & ~*(v275 + 80);
    v113 = v112 + v276;
    v114 = swift_allocObject();
    (*(v303 + 32))(v114 + v109, v107, v105);
    v115 = v321;
    *(v114 + v111) = v321;
    v116 = v110;
    v117 = v331;
    sub_24E6009C8(v108, v114 + v112, &qword_27F214148);
    *(v114 + v113) = 1;
    v118 = v117 + v110[10];
    v119 = *v118;
    LOBYTE(v108) = v118[8];
    v120 = v115;

    if ((v108 & 1) == 0)
    {
      sub_24F92BDC8();
      v121 = sub_24F9257A8();
      sub_24F921FD8();

      v122 = v309;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v310 + 8))(v122, v311);
      v119 = v345;
    }

    swift_getKeyPath();
    *&v345 = v119;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v123 = *(v119 + 16);

    v124 = *(v117 + v116[9]);
    if (v124 > 2 && v124 == 3)
    {

LABEL_62:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
      v212 = swift_allocObject();
      *(v212 + 16) = xmmword_24F93A400;
      v213 = sub_24F925818();
      *(v212 + 32) = v213;
      v214 = sub_24F925828();
      *(v212 + 33) = v214;
      sub_24F925848();
      sub_24F925848();
      if (sub_24F925848() != v213)
      {
        sub_24F925848();
      }

      sub_24F925848();
      if (sub_24F925848() != v214)
      {
        sub_24F925848();
      }

      v215 = v278;
      goto LABEL_88;
    }

    v211 = sub_24F92CE08();

    if (v211)
    {
      goto LABEL_62;
    }

    if (v124 > 2)
    {
      v215 = v278;
      if (v124 != 4)
      {

        goto LABEL_87;
      }
    }

    else
    {
      v215 = v278;
    }

    v255 = sub_24F92CE08();

    if ((v255 & 1) == 0)
    {
      sub_24F925818();
LABEL_88:
      v256 = sub_24EA91914(v123);
      v258 = v257;
      v260 = v259;
      v262 = v261;
      v263 = sub_24F925808();
      if (v124 > 4)
      {
        v264 = 1;
      }

      else
      {
        v264 = sub_24F92CE08();
      }

      v344 = 0;
      *&v345 = sub_24E623C20;
      *(&v345 + 1) = v114;
      LOBYTE(v346) = v263;
      *(&v346 + 1) = v256;
      *&v347 = v258;
      *(&v347 + 1) = v260;
      *&v348 = v262;
      BYTE8(v348) = 0;
      sub_24E92463C(v264 & 1);

      if (v124 > 4)
      {
        v265 = 1;
      }

      else
      {
        v265 = sub_24F92CE08();
      }

      *(&v335 + 1) = sub_24F925048();
      *&v336 = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(&v334);
      sub_24F925258();
      v266 = v265 & 1;
      v267 = v279;
      sub_24E923E88(v266, &v334);
      sub_24E601704(v215, &qword_27F2191F8);
      __swift_destroy_boxed_opaque_existential_1(&v334);
      sub_24E60169C(v267, v287, &qword_27F219200);
      swift_storeEnumTagMultiPayload();
      sub_24E702DB8();
      sub_24E703044();
      v268 = v288;
      sub_24F924E28();
      sub_24E60169C(v268, v324, &qword_27F219210);
      swift_storeEnumTagMultiPayload();
      sub_24E703380();
      sub_24E703B18();
      v269 = v325;
      sub_24F924E28();
      sub_24E601704(v268, &qword_27F219210);
      sub_24E60169C(v269, v328, &qword_27F219268);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0);
      sub_24E703BA4();
      sub_24E703C30();
      v163 = v330;
      sub_24F924E28();
      sub_24E601704(v269, &qword_27F219268);
      sub_24E601704(v267, &qword_27F219200);
      (*(v303 + 8))(v284, v290);
      goto LABEL_81;
    }

LABEL_87:
    sub_24F925808();
    goto LABEL_88;
  }

  v166 = v270;
  sub_24E60169C(v88 + v99[7], v270, &qword_27F213FB0);
  v167 = v303;
  v168 = v290;
  if ((*(v303 + 48))(v166, 1, v290) == 1)
  {
    sub_24E601704(v166, &qword_27F213FB0);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219410);
    return (*(*(v169 - 8) + 56))(v330, 1, 1, v169);
  }

  v187 = v271;
  (*(v167 + 32))(v271, v166, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C28);
  v188 = v167;
  v189 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_24F93DE60;
  (*(v188 + 16))(v190 + v189, v187, v168);
  v191 = (v88 + v99[8]);
  v192 = v191[3];
  v336 = v191[2];
  v337 = v192;
  v338[0] = v191[4];
  v193 = v338[0];
  *(v338 + 9) = *(v191 + 73);
  v194 = v191[1];
  v334 = *v191;
  v335 = v194;
  v342 = v192;
  v343[0] = v193;
  v340 = v194;
  v341 = v336;
  *(v343 + 9) = *(v338 + 9);
  v339 = v334;
  sub_24E701364(&v334, &v345);
  v195 = sub_24F925818();
  sub_24F923318();
  v197 = v196;
  v199 = v198;
  v201 = v200;
  v203 = v202;
  v332 = 0;
  v204 = v88 + v99[10];
  v205 = *v204;
  LOBYTE(v189) = v204[8];

  if ((v189 & 1) == 0)
  {
    sub_24F92BDC8();
    v206 = sub_24F9257A8();
    sub_24F921FD8();

    v207 = v309;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v310 + 8))(v207, v311);
    v205 = v345;
  }

  v208 = BYTE8(v338[1]);
  swift_getKeyPath();
  *&v345 = v205;
  sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v209 = *(v205 + 16);

  if (v208 == 1)
  {
    sub_24F925868();
  }

  else
  {
    sub_24F925848();
  }

  v216 = sub_24EA91914(v209);
  v218 = v217;
  v220 = v219;
  v222 = v221;
  v223 = sub_24F925808();
  v344 = 0;
  sub_24F9242E8();
  *&v333[55] = v348;
  *&v333[71] = v349;
  *&v333[87] = v350;
  *&v333[103] = v351;
  *&v333[7] = v345;
  *&v333[23] = v346;
  *&v333[39] = v347;
  v224 = v328;
  *v328 = v190;
  v225 = v340;
  *(v224 + 1) = v339;
  *(v224 + 3) = v225;
  v226 = v341;
  v227 = v342;
  v228 = v343[0];
  *(v224 + 81) = *(v343 + 9);
  *(v224 + 9) = v228;
  *(v224 + 7) = v227;
  *(v224 + 5) = v226;
  *(v224 + 104) = v195;
  v224[14] = v197;
  v224[15] = v199;
  v224[16] = v201;
  v224[17] = v203;
  *(v224 + 144) = 0;
  *(v224 + 152) = v223;
  *(v224 + 20) = v216;
  v224[21] = v218;
  v224[22] = v220;
  v224[23] = v222;
  *(v224 + 192) = 0;
  v229 = *&v333[32];
  *(v224 + 241) = *&v333[48];
  *(v224 + 225) = v229;
  v230 = *v333;
  *(v224 + 209) = *&v333[16];
  *(v224 + 193) = v230;
  v224[38] = *&v333[111];
  v231 = *&v333[96];
  v232 = *&v333[64];
  *(v224 + 273) = *&v333[80];
  *(v224 + 289) = v231;
  *(v224 + 257) = v232;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0);
  sub_24E703BA4();
  sub_24E703C30();
  v233 = v330;
  sub_24F924E28();
  (*(v303 + 8))(v271, v290);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219410);
  v235 = *(*(v234 - 8) + 56);
  v236 = v233;
  return v235(v236, 0, 1, v234);
}

uint64_t sub_24E7004D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219418);
  MEMORY[0x28223BE20](v0);
  type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219420);
  sub_24E602068(&qword_27F219428, &qword_27F219420);
  sub_24F921BA8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219360);
  sub_24E602068(&qword_27F219430, &qword_27F219418);
  sub_24E7036EC();
  return sub_24F927228();
}

uint64_t sub_24E7006D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = sub_24F9289E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219440);
  MEMORY[0x28223BE20](v41);
  v10 = (&v40 - v9);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219370);
  MEMORY[0x28223BE20](v42);
  v12 = &v40 - v11;
  v13 = type metadata accessor for GSKVideo();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E701D44(v40, v18, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v3 + 32);
    v19(v8, v18, v2);
    (*(v3 + 16))(v6, v8, v2);
    v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v21 = swift_allocObject();
    v19((v21 + v20), v6, v2);
    *v10 = sub_24E703EC8;
    v10[1] = v21;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219380);
    sub_24E7037A4();
    sub_24E602068(&qword_27F219378, &qword_27F219380);
    sub_24F924E28();
    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v23 = v15;
    sub_24E701C34(v18, v15, type metadata accessor for GSKVideo);
    sub_24E701D44(v15, v12, type metadata accessor for GSKVideo);
    v24 = type metadata accessor for GSKVideoView(0);
    v25 = v24[5];
    v26 = type metadata accessor for VideoConfiguration();
    (*(*(v26 - 8) + 56))(&v12[v25], 1, 1, v26);
    v27 = sub_24F9238D8();
    v28 = &v12[v24[12]];
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E7017E4(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    *v28 = sub_24F9243D8();
    v28[1] = v29;
    v12[v24[9]] = 1;
    *&v12[v24[10]] = v27;
    v12[v24[11]] = 0;
    *&v12[v24[6]] = 0x3FE8000000000000;
    *&v12[v24[7]] = 0x3FE0000000000000;
    v30 = &v12[v24[8]];
    *(v30 + 2) = 0u;
    *(v30 + 3) = 0u;
    *v30 = 0u;
    *(v30 + 1) = 0u;
    *(v30 + 32) = 5;
    v31 = &v12[*(v42 + 36)];
    v32 = *(sub_24F924258() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_24F924B38();
    (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
    __asm { FMOV            V0.2D, #12.0 }

    *v31 = _Q0;
    *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
    sub_24E60169C(v12, v10, &qword_27F219370);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219380);
    sub_24E7037A4();
    sub_24E602068(&qword_27F219378, &qword_27F219380);
    sub_24F924E28();
    sub_24E601704(v12, &qword_27F219370);
    return sub_24E701C9C(v23, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24E700CF4()
{
  v0 = sub_24F9289E8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F923998();
  sub_24F9289C8();
  sub_24E7017E4(&qword_27F214C28, MEMORY[0x277D21C48]);
  sub_24E703F48();
  sub_24F925ED8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E700E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219438) + 48);

  return sub_24E7006D4(v3, a2);
}

double sub_24E700EBC(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_24E700F9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24E701024()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195C8);
  MEMORY[0x28223BE20](v0);
  v2 = (&v21 - v1);
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  if (sub_24F921C08())
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v10 = sub_24F926E88();
    (*(v4 + 8))(v6, v3);
    v11 = &v9[*(v7 + 36)];
    v12 = *(sub_24F924258() + 20);
    v13 = *MEMORY[0x277CE0118];
    v14 = sub_24F924B38();
    (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
    __asm { FMOV            V0.2D, #12.0 }

    *v11 = _Q0;
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
    *v9 = v10;
    *(v9 + 1) = 0;
    *(v9 + 8) = 257;
    sub_24E60169C(v9, v2, &qword_27F2195D0);
    swift_storeEnumTagMultiPayload();
    sub_24E704A58();
    sub_24F924E28();

    return sub_24E601704(v9, &qword_27F2195D0);
  }

  else
  {
    *v2 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    sub_24E704A58();
    return sub_24F924E28();
  }
}

uint64_t sub_24E70139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  if (v6 == 3)
  {
    if (a3)
    {
      v11 = sub_24F92CE08();

      if ((v11 & 1) == 0)
      {
        v12 = type metadata accessor for SearchCard();
        v13 = a2 + *(v12 + 32);
        v14 = type metadata accessor for CommonCardAttributes(0);
        if (!*(v13 + *(v14 + 36)))
        {
          sub_24E60169C(v13 + *(v14 + 32), v9, &qword_27F213FB8);
          v15 = type metadata accessor for GSKVideo();
          v16 = (*(*(v15 - 8) + 48))(v9, 1, v15);
          sub_24E601704(v9, &qword_27F213FB8);
          result = 1;
          if (v16 == 1)
          {
            v17 = *(a2 + *(v12 + 36));
            if (v17 >> 62)
            {
              v18 = sub_24F92C738();
            }

            else
            {
              v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            return v18 != 0;
          }

          return result;
        }
      }
    }

    else
    {
    }

    return 1;
  }

  return sub_24E92D030(a1, a2, a3);
}

unint64_t sub_24E701644()
{
  result = qword_27F2190E0;
  if (!qword_27F2190E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2190C8);
    sub_24E7016FC();
    sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2190E0);
  }

  return result;
}

unint64_t sub_24E7016FC()
{
  result = qword_27F2190E8;
  if (!qword_27F2190E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2190C0);
    sub_24E7017E4(&qword_27F2190F0, type metadata accessor for SearchCardConfiguration.CardVisual);
    sub_24E602068(&qword_27F2190F8, &qword_27F2190A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2190E8);
  }

  return result;
}

uint64_t sub_24E7017E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E70182C()
{
  result = qword_27F219108;
  if (!qword_27F219108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219088);
    sub_24E63D098();
    sub_24E7018B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219108);
  }

  return result;
}

unint64_t sub_24E7018B8()
{
  result = qword_27F219110;
  if (!qword_27F219110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219078);
    sub_24E602068(&qword_27F219118, &qword_27F219070);
    sub_24E63D098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219110);
  }

  return result;
}

unint64_t sub_24E701970()
{
  result = qword_27F214AF0;
  if (!qword_27F214AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A20);
    sub_24E63C290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AF0);
  }

  return result;
}

unint64_t sub_24E7019F4()
{
  result = qword_27F214B38;
  if (!qword_27F214B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B40);
    sub_24E63C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B38);
  }

  return result;
}

unint64_t sub_24E701A78()
{
  result = qword_27F214B80;
  if (!qword_27F214B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B88);
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B80);
  }

  return result;
}

unint64_t sub_24E701AFC()
{
  result = qword_27F214BF8;
  if (!qword_27F214BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C00);
    sub_24E63CB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214BF8);
  }

  return result;
}

uint64_t sub_24E701B80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24E7017E4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E701C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E701C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E701D04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E701D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24E701DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E701E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E701E88()
{
  sub_24E7029DC(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F2191B8);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_24E7029DC(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24E701FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_24F923F78() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((*(v6 + 64) + ((v11 + 56) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v20 = *(v6 + 48);

        return v20((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_24E702260(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_24F923F78() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((*(v8 + 64) + ((v13 + 56) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_49:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *a1 = v22;
  }
}

uint64_t sub_24E702594(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24E7026E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24E702828()
{
  sub_24E66ECF0(319, &qword_27F2191D0);
  if (v0 <= 0x3F)
  {
    sub_24E7029DC(319, &qword_27F213FD8, type metadata accessor for GSKVideo, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E7029DC(319, &qword_27F2191D8, MEMORY[0x277D21C48], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24E7029DC(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E7029DC(319, &qword_27F214D30, type metadata accessor for CardSafeArea, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E7029DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E702A44()
{
  result = qword_27F2191E0;
  if (!qword_27F2191E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2191E8);
    sub_24E702AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2191E0);
  }

  return result;
}

unint64_t sub_24E702AC8()
{
  result = qword_27F2191F0;
  if (!qword_27F2191F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2190D0);
    sub_24E701644();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2191F0);
  }

  return result;
}

uint64_t sub_24E702BF4()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_24E702DB8()
{
  result = qword_27F219298;
  if (!qword_27F219298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219228);
    sub_24E702E44();
    sub_24E702ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219298);
  }

  return result;
}

unint64_t sub_24E702E44()
{
  result = qword_27F2192A0;
  if (!qword_27F2192A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2192A8);
    sub_24E702ED0();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192A0);
  }

  return result;
}

unint64_t sub_24E702ED0()
{
  result = qword_27F2192B0;
  if (!qword_27F2192B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219220);
    sub_24E703214(&qword_27F2192B8, &qword_27F2192C0, &unk_24F950260, sub_24E702F88);
    sub_24E702F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192B0);
  }

  return result;
}

unint64_t sub_24E702F88()
{
  result = qword_27F2192C8;
  if (!qword_27F2192C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219218);
    sub_24E7017E4(&qword_27F2141D8, type metadata accessor for GSKVideoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192C8);
  }

  return result;
}

unint64_t sub_24E703044()
{
  result = qword_27F2192D8;
  if (!qword_27F2192D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219200);
    sub_24E7030D0();
    sub_24E70315C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192D8);
  }

  return result;
}

unint64_t sub_24E7030D0()
{
  result = qword_27F2192E0;
  if (!qword_27F2192E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2192E8);
    sub_24E70315C();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192E0);
  }

  return result;
}

unint64_t sub_24E70315C()
{
  result = qword_27F2192F0;
  if (!qword_27F2192F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2191F8);
    sub_24E703214(&qword_27F2192F8, &qword_27F219300, &unk_24F950250, sub_24E7032C8);
    sub_24E7032C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192F0);
  }

  return result;
}

uint64_t sub_24E703214(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E7017E4(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7032C8()
{
  result = qword_27F219308;
  if (!qword_27F219308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219310);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219308);
  }

  return result;
}

unint64_t sub_24E703380()
{
  result = qword_27F219318;
  if (!qword_27F219318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219260);
    sub_24E70340C();
    sub_24E70388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219318);
  }

  return result;
}

unint64_t sub_24E70340C()
{
  result = qword_27F219320;
  if (!qword_27F219320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219290);
    sub_24E703498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219320);
  }

  return result;
}

unint64_t sub_24E703498()
{
  result = qword_27F219328;
  if (!qword_27F219328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219288);
    sub_24E703524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219328);
  }

  return result;
}

unint64_t sub_24E703524()
{
  result = qword_27F219330;
  if (!qword_27F219330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219280);
    sub_24E7035B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219330);
  }

  return result;
}

unint64_t sub_24E7035B0()
{
  result = qword_27F219338;
  if (!qword_27F219338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219278);
    sub_24E602068(&qword_27F219340, &qword_27F219270);
    sub_24E703668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219338);
  }

  return result;
}

unint64_t sub_24E703668()
{
  result = qword_27F219348;
  if (!qword_27F219348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219350);
    sub_24E7036EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219348);
  }

  return result;
}

unint64_t sub_24E7036EC()
{
  result = qword_27F219358;
  if (!qword_27F219358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219360);
    sub_24E7037A4();
    sub_24E602068(&qword_27F219378, &qword_27F219380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219358);
  }

  return result;
}

unint64_t sub_24E7037A4()
{
  result = qword_27F219368;
  if (!qword_27F219368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219370);
    sub_24E7017E4(&qword_27F2141D8, type metadata accessor for GSKVideoView);
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219368);
  }

  return result;
}

unint64_t sub_24E70388C()
{
  result = qword_27F219388;
  if (!qword_27F219388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219240);
    sub_24E703918();
    sub_24E7039A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219388);
  }

  return result;
}

unint64_t sub_24E703918()
{
  result = qword_27F219390;
  if (!qword_27F219390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219398);
    sub_24E7039A4();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219390);
  }

  return result;
}

unint64_t sub_24E7039A4()
{
  result = qword_27F2193A0;
  if (!qword_27F2193A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219238);
    sub_24E703214(&qword_27F2193A8, &qword_27F2193B0, &unk_24F94C040, sub_24E703A5C);
    sub_24E703A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193A0);
  }

  return result;
}

unint64_t sub_24E703A5C()
{
  result = qword_27F2193B8;
  if (!qword_27F2193B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219230);
    sub_24E7017E4(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193B8);
  }

  return result;
}

unint64_t sub_24E703B18()
{
  result = qword_27F2193C8;
  if (!qword_27F2193C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219210);
    sub_24E702DB8();
    sub_24E703044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193C8);
  }

  return result;
}

unint64_t sub_24E703BA4()
{
  result = qword_27F2193D8;
  if (!qword_27F2193D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219268);
    sub_24E703380();
    sub_24E703B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193D8);
  }

  return result;
}

unint64_t sub_24E703C30()
{
  result = qword_27F2193E0;
  if (!qword_27F2193E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2193D0);
    sub_24E703CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193E0);
  }

  return result;
}

unint64_t sub_24E703CBC()
{
  result = qword_27F2193E8;
  if (!qword_27F2193E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2193F0);
    sub_24E703D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193E8);
  }

  return result;
}

unint64_t sub_24E703D48()
{
  result = qword_27F2193F8;
  if (!qword_27F2193F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219400);
    sub_24E703DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193F8);
  }

  return result;
}

unint64_t sub_24E703DD4()
{
  result = qword_27F219408;
  if (!qword_27F219408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219408);
  }

  return result;
}

uint64_t sub_24E703E40()
{
  v1 = sub_24F9289E8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E703EC8()
{
  sub_24F9289E8();

  return sub_24E700CF4();
}

unint64_t sub_24E703F48()
{
  result = qword_27F219448;
  if (!qword_27F219448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219448);
  }

  return result;
}

unint64_t sub_24E703FA4()
{
  result = qword_27F219460;
  if (!qword_27F219460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219450);
    sub_24E602068(&qword_27F219468, &qword_27F219470);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219460);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24E7040BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_24E704104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E704180()
{
  result = type metadata accessor for GSKVideo();
  if (v1 <= 0x3F)
  {
    result = sub_24F9289E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E704208(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E704288(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E7042F8()
{
  result = sub_24F922348();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E704370()
{
  result = qword_27F219508;
  if (!qword_27F219508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219510);
    sub_24E7043F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219508);
  }

  return result;
}

unint64_t sub_24E7043F4()
{
  result = qword_27F219518;
  if (!qword_27F219518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219410);
    sub_24E703BA4();
    sub_24E703C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219518);
  }

  return result;
}

uint64_t sub_24E704480()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219450);
  sub_24F924E38();
  sub_24E703FA4();
  return swift_getWitnessTable();
}

uint64_t sub_24E704578()
{

  return swift_deallocObject();
}

uint64_t sub_24E7045D8()
{

  return swift_deallocObject();
}

uint64_t sub_24E704610(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195C0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_24E7046B0()
{
  result = qword_27F219558;
  if (!qword_27F219558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219548);
    sub_24E70473C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219558);
  }

  return result;
}

unint64_t sub_24E70473C()
{
  result = qword_27F219560;
  if (!qword_27F219560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219568);
    sub_24E7047C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219560);
  }

  return result;
}

unint64_t sub_24E7047C8()
{
  result = qword_27F219570;
  if (!qword_27F219570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219578);
    sub_24E704880();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219570);
  }

  return result;
}

unint64_t sub_24E704880()
{
  result = qword_27F219580;
  if (!qword_27F219580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219588);
    sub_24E70490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219580);
  }

  return result;
}

unint64_t sub_24E70490C()
{
  result = qword_27F219590;
  if (!qword_27F219590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219598);
    sub_24E7017E4(&qword_27F216790, type metadata accessor for GameIcon);
    sub_24E602068(&qword_27F2195A0, &qword_27F2195A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219590);
  }

  return result;
}

unint64_t sub_24E704A58()
{
  result = qword_27F2195D8;
  if (!qword_27F2195D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195D0);
    sub_24E6E97A8();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2195D8);
  }

  return result;
}

void sub_24E704B10(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_24F923A38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195E0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v67 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = (&v54 - v17);
  v18 = sub_24F923BB8();
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195E8);
  v20 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v54 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195F0);
  MEMORY[0x28223BE20](v57);
  v23 = &v54 - v22;
  sub_24E7017E4(&qword_27F2195F8, MEMORY[0x277CDF7F8]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (sub_24F92BBF8() < 1)
  {
    return;
  }

  v55 = v20;
  v56 = v11;
  v70.origin.x = a2;
  v70.origin.y = a3;
  v70.size.width = a4;
  v70.size.height = a5;
  CGRectGetHeight(v70);
  v24 = v64;
  sub_24F9222F8();
  v26 = v25;
  v27 = type metadata accessor for ScreenshotHStackLayout(0);
  v28 = 0;
  v29 = *(v24 + *(v27 + 20));
  do
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v31 = v28;
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    if (v26 * (v28 + 1) + v29 * v28 >= CGRectGetWidth(v71))
    {
      break;
    }

    sub_24F92BB88();
    sub_24F92BC08();
    v32 = sub_24F92BBF8();
    v28 = v31 + 1;
  }

  while (v32 >= v30);
  if (__OFSUB__(v31, 1))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v61 = v13;
  v62 = v10;
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  v33 = v31 - 1;
  v34 = (CGRectGetWidth(v72) - (v26 * v31 + v29 * v33)) * 0.5;
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  v35 = CGRectGetMinX(v73) + v34;
  (*(*&v58 + 16))(v60, a1, v18);
  sub_24E7017E4(&qword_27F219600, MEMORY[0x277CDF7F8]);
  v36 = v63;
  sub_24F921BA8();
  v37 = v55;
  v38 = v66;
  (*(v55 + 16))(v23, v36, v66);
  v39 = *(v57 + 36);
  sub_24E602068(&qword_27F219608, &qword_27F2195E8);
  sub_24F92BB88();
  (*(v37 + 8))(v36, v38);
  v60 = (v56 + 32);
  v63 = (v56 + 8);
  v58 = v26;
  v40 = v26 + v29;
  v64 = v39;
  v59 = v31;
LABEL_8:
  v41 = v67;
  while (1)
  {
    sub_24F92BC08();
    if (*&v23[v39] == v68[0])
    {
      v42 = 1;
    }

    else
    {
      v43 = sub_24F92BC88();
      sub_24E60169C(v44, v41, &qword_27F219610);
      v43(v68, 0);
      v31 = v59;
      sub_24F92BC18();
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219610);
    (*(*(v45 - 8) + 56))(v41, v42, 1, v45);
    v46 = v41;
    v47 = v65;
    sub_24E6009C8(v46, v65, &qword_27F2195E0);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219610);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {
      break;
    }

    v49 = *v47;
    v50 = *(v48 + 48);
    v51 = v61;
    v52 = v47 + v50;
    v53 = v62;
    (*v60)(v61, v52, v62);
    if (v49 < v31)
    {
      v74.origin.x = a2;
      v74.origin.y = a3;
      v74.size.width = a4;
      v74.size.height = a5;
      CGRectGetMinY(v74);
      v75.origin.x = a2;
      v75.origin.y = a3;
      v75.size.width = a4;
      v75.size.height = a5;
      CGRectGetHeight(v75);
      sub_24F927828();
      LOBYTE(v68[0]) = 0;
      v69 = 0;
      sub_24F923A28();
      (*v63)(v51, v53);
      v35 = v40 + v35;
      v39 = v64;
      goto LABEL_8;
    }

    sub_24F927828();
    LOBYTE(v68[0]) = 0;
    v69 = 0;
    sub_24F923A28();
    (*v63)(v51, v53);
    v41 = v67;
    v39 = v64;
  }

  sub_24E601704(v23, &qword_27F2195F0);
}

unint64_t sub_24E7053B8()
{
  result = qword_27F219628;
  if (!qword_27F219628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219630);
    sub_24E704A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219628);
  }

  return result;
}

uint64_t sub_24E705458(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_24E705644(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for SearchCard()
{
  result = qword_27F219638;
  if (!qword_27F219638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E705868()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E705BB0(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24E705A8C();
            if (v5 <= 0x3F)
            {
              sub_24E705BB0(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_24E66ECF0(319, &qword_27F2191B8);
                if (v7 <= 0x3F)
                {
                  sub_24E66ECF0(319, &qword_27F254DE0);
                  if (v8 <= 0x3F)
                  {
                    sub_24E705BB0(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
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

void sub_24E705A8C()
{
  if (!qword_27F219648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219650);
    sub_24E705AFC();
    v0 = sub_24F927EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F219648);
    }
  }
}

unint64_t sub_24E705AFC()
{
  result = qword_27F219658;
  if (!qword_27F219658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219650);
    sub_24E706CA8(&qword_27F219660, type metadata accessor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219658);
  }

  return result;
}

void sub_24E705BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E705C14(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x4D747865746E6F63;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x65726E6567;
    if (a1 != 9)
    {
      v2 = 0x74724165726E6567;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x68736E6565726373;
    v4 = 0x5073646E65697266;
    if (a1 != 6)
    {
      v4 = 0x7641676E69746172;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E705D9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v5 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219680);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for SearchCard();
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v18 + 40) = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 9) = 0;
  v52 = v18 + 40;
  sub_24E61DA68(&v54, (v18 + 40), qword_27F21B590);
  v50 = v16;
  v19 = *(v16 + 24);
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v51 = v19;
  v53 = v18;
  v21(&v18[v19], 1, 1, v20);
  v22 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24E706B3C();
  v45 = v15;
  v23 = v48;
  sub_24F92D108();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
    v25 = v53;
    sub_24E601704(v52, qword_27F24EC90);
    return sub_24E601704(v25 + v51, &qword_27F215440);
  }

  else
  {
    v24 = v8;
    v48 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v26 = v55;
    v27 = v53;
    *v53 = v54;
    v27[1] = v26;
    *(v27 + 4) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v57 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v50;
    sub_24E61DA68(&v54, v52, qword_27F24EC90);
    LOBYTE(v54) = 2;
    sub_24E65CAA0();
    v29 = v11;
    sub_24F92CC68();
    v30 = v53;
    sub_24E61DA68(v29, v53 + v51, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v54) = 3;
    sub_24E706CA8(&qword_27F213F48, MEMORY[0x277D21F70]);
    sub_24F92CC18();
    sub_24E6009C8(v24, v30 + v28[7], &qword_27F213E68);
    LOBYTE(v54) = 4;
    sub_24E706CA8(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    sub_24F92CC68();
    sub_24E706B90(0, v30 + v28[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219698);
    v57 = 5;
    sub_24E602068(&qword_27F2196A0, &qword_27F219698);
    sub_24F92CC68();
    *(v30 + v28[9]) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240);
    v57 = 6;
    sub_24E706BF4();
    sub_24F92CC68();
    *(v30 + v28[10]) = v54;
    LOBYTE(v54) = 7;
    v31 = sub_24F92CBE8();
    v32 = v30 + v28[11];
    *v32 = v31;
    v32[8] = v33 & 1;
    LOBYTE(v54) = 8;
    v34 = sub_24F92CBC8();
    v35 = (v30 + v28[12]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v54) = 9;
    v37 = sub_24F92CBC8();
    v38 = (v53 + v50[13]);
    *v38 = v37;
    v38[1] = v39;
    sub_24F9289E8();
    LOBYTE(v54) = 10;
    sub_24E706CA8(&qword_27F214018, MEMORY[0x277D21C48]);
    sub_24F92CC18();
    (*(v47 + 8))(v45, v46);
    v40 = v53;
    sub_24E6009C8(v44, v53 + v50[14], &qword_27F213FB0);
    sub_24E706CF0(v40, v43, type metadata accessor for SearchCard);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_24E706D58(v40, type metadata accessor for SearchCard);
  }
}

uint64_t sub_24E7068B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E707010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E7068E8(uint64_t a1)
{
  v2 = sub_24E706B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E706924(uint64_t a1)
{
  v2 = sub_24E706B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E706998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24E706A70(uint64_t a1)
{
  *(a1 + 8) = sub_24E706CA8(&qword_27F219668, type metadata accessor for SearchCard);
  result = sub_24E706CA8(&qword_27F219670, type metadata accessor for SearchCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24E706B3C()
{
  result = qword_27F219688;
  if (!qword_27F219688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219688);
  }

  return result;
}

uint64_t sub_24E706B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonCardAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E706BF4()
{
  result = qword_27F2196A8;
  if (!qword_27F2196A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240);
    sub_24E706CA8(&qword_27F213E38, type metadata accessor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196A8);
  }

  return result;
}

uint64_t sub_24E706CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E706CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E706D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchCard.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchCard.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E706F0C()
{
  result = qword_27F2196B0;
  if (!qword_27F2196B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196B0);
  }

  return result;
}

unint64_t sub_24E706F64()
{
  result = qword_27F2196B8;
  if (!qword_27F2196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196B8);
  }

  return result;
}

unint64_t sub_24E706FBC()
{
  result = qword_27F2196C0;
  if (!qword_27F2196C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196C0);
  }

  return result;
}

uint64_t sub_24E707010(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEB0000000073746FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5073646E65697266 && a2 == 0xEE00676E6979616CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7641676E69746172 && a2 == 0xED00006567617265 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46130 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74724165726E6567 && a2 == 0xEC0000006B726F77)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24E7073A0@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v15[0] = v1;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v15[8] = *(v1 + 152);
  v15[9] = v4;
  v15[10] = *(v1 + 184);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v15[4] = *(v1 + 88);
  v15[5] = v6;
  v15[6] = *(v1 + 120);
  v15[7] = v3;
  v7 = *(v1 + 40);
  v15[0] = *(v1 + 24);
  v15[1] = v7;
  v15[2] = *(v1 + 56);
  v15[3] = v5;
  v8 = *(v1 + 136);
  v9 = *(v1 + 168);
  a1[8] = *(v1 + 152);
  a1[9] = v9;
  a1[10] = *(v1 + 184);
  v10 = *(v1 + 72);
  v11 = *(v1 + 104);
  a1[4] = *(v1 + 88);
  a1[5] = v11;
  a1[6] = *(v1 + 120);
  a1[7] = v8;
  v12 = *(v1 + 40);
  *a1 = *(v1 + 24);
  a1[1] = v12;
  a1[2] = *(v1 + 56);
  a1[3] = v10;
  return sub_24E6691F8(v15, &v14);
}

uint64_t sub_24E7074DC()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v1 = *(v0 + 216);

  return v1;
}

uint64_t sub_24E70758C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  swift_beginAccess();
  return sub_24E70D448(v5 + v3, a1);
}

uint64_t sub_24E707654(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v59 = a1;
  v60 = a2;
  v16 = sub_24F91F6B8();
  v57 = *(v16 - 8);
  v58 = v16;
  MEMORY[0x28223BE20](v16);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v9 + 272);
  v19 = *(v9 + 280);
  *(v9 + 272) = a3;
  *(v9 + 280) = a4;
  *(v9 + 288) = a5;
  sub_24E70D68C(v18, v19);
  v21 = *(v9 + 248);
  v20 = *(v9 + 256);
  *(v9 + 248) = a6;
  *(v9 + 256) = a7;
  *(v9 + 264) = a8;

  sub_24E70D68C(v21, v20);
  swift_getKeyPath();
  *&v83[0] = v9;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);

  sub_24F91FD88();

  v22 = *(v9 + 136);
  v23 = *(v9 + 168);
  v83[8] = *(v9 + 152);
  v83[9] = v23;
  v83[10] = *(v9 + 184);
  v24 = *(v9 + 72);
  v25 = *(v9 + 104);
  v83[4] = *(v9 + 88);
  v83[5] = v25;
  v83[6] = *(v9 + 120);
  v83[7] = v22;
  v26 = *(v9 + 40);
  v83[0] = *(v9 + 24);
  v83[1] = v26;
  v83[2] = *(v9 + 56);
  v83[3] = v24;
  result = sub_24E66927C(v83);
  if (result == 1)
  {
    v28 = [objc_opt_self() defaultCenter];
    if (qword_27F210510 != -1)
    {
      swift_once();
    }

    [v28 addObserver:v9 selector:? name:? object:?];

    v30 = v59;
    v29 = v60;
    if (!v60)
    {
      goto LABEL_9;
    }

    v31 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v31 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      *(v9 + 232) = v59;
      *(v9 + 240) = v29;
      swift_bridgeObjectRetain_n();

      sub_24E707BCC(v30, v29);

      v32 = sub_24E608B90(MEMORY[0x277D84F90]);
      v33 = v56;
      sub_24F91F6A8();
      v34 = sub_24F91F668();
      v36 = v35;
      (*(v57 + 8))(v33, v58);
      *&v74 = v34;
      *(&v74 + 1) = v36;
      *&v75 = v30;
      *(&v75 + 1) = v29;
      LOBYTE(v76) = 4;
      *&v77 = 0;
      *(&v76 + 1) = 0;
      *(&v77 + 1) = v32;
      LOWORD(v78[0]) = 4;
      BYTE2(v78[0]) = 0;
      *(v78 + 8) = 0u;
      *(&v78[1] + 8) = 0u;
      *(&v78[2] + 1) = 0;
      v79 = 1uLL;
      v80 = 0uLL;
      LOBYTE(v81) = 0;
      *(&v81 + 1) = 0;
      v82 = 0uLL;
      CGSizeMake(&v74, v37, v38);
      v71 = v80;
      v72 = v81;
      v73 = v82;
      v67 = v78[0];
      v68 = v78[1];
      v69 = v78[2];
      v70 = v79;
      v63 = v74;
      v64 = v75;
      v65 = v76;
      v66 = v77;
      sub_24E708F2C(&v63);
    }

    else
    {
LABEL_9:
      sub_24E669254(v62);
      v80 = v62[8];
      v81 = v62[9];
      v82 = v62[10];
      v78[0] = v62[4];
      v78[1] = v62[5];
      v78[2] = v62[6];
      v79 = v62[7];
      v74 = v62[0];
      v75 = v62[1];
      v76 = v62[2];
      v77 = v62[3];
      v39 = *(v9 + 136);
      v40 = *(v9 + 168);
      v71 = *(v9 + 152);
      v72 = v40;
      v73 = *(v9 + 184);
      v41 = *(v9 + 72);
      v42 = *(v9 + 104);
      v67 = *(v9 + 88);
      v68 = v42;
      v69 = *(v9 + 120);
      v70 = v39;
      v43 = *(v9 + 40);
      v63 = *(v9 + 24);
      v64 = v43;
      v65 = *(v9 + 56);
      v66 = v41;
      if (sub_24E66927C(&v63) >= 2)
      {
        v45 = *(v9 + 136);
        v46 = *(v9 + 168);
        v61[8] = *(v9 + 152);
        v61[9] = v46;
        v61[10] = *(v9 + 184);
        v47 = *(v9 + 72);
        v48 = *(v9 + 104);
        v61[4] = *(v9 + 88);
        v61[5] = v48;
        v61[6] = *(v9 + 120);
        v61[7] = v45;
        v49 = *(v9 + 40);
        v61[0] = *(v9 + 24);
        v61[1] = v49;
        v61[2] = *(v9 + 56);
        v61[3] = v47;
        v50 = v78[2];
        *(v9 + 136) = v79;
        v51 = v81;
        *(v9 + 152) = v80;
        *(v9 + 168) = v51;
        *(v9 + 184) = v82;
        v52 = v76;
        *(v9 + 72) = v77;
        v53 = v78[1];
        *(v9 + 88) = v78[0];
        *(v9 + 104) = v53;
        *(v9 + 120) = v50;
        v54 = v75;
        *(v9 + 24) = v74;
        *(v9 + 40) = v54;
        *(v9 + 56) = v52;
        sub_24E70D2CC(v61);
        sub_24E708AD8();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v55 - 2) = v9;
        *(&v55 - 1) = &v74;
        *&v61[0] = v9;
        sub_24F91FD78();
      }
    }

    sub_24E70A270();
    return sub_24E70A56C();
  }

  return result;
}

uint64_t sub_24E707BCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 216);
  v5 = *(v2 + 224);
  v7 = v6 == a1 && v5 == a2;
  if (v7 || (sub_24F92CE08() & 1) != 0)
  {
    *(v2 + 216) = a1;
    *(v2 + 224) = a2;
    sub_24E709364(v6, v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
    sub_24F91FD78();
  }
}

uint64_t sub_24E707D3C()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  return *(v0 + 289);
}

uint64_t sub_24E707DDC(uint64_t result)
{
  if (*(v1 + 289) == (result & 1))
  {
    *(v1 + 289) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
    sub_24F91FD78();
  }

  return result;
}

void sub_24E707EEC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a3;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    a1 = *(v4 + 232);
    v14 = *(v4 + 240);

    v13 = v14;
  }

  *(v4 + 232) = a1;
  *(v4 + 240) = v13;

  sub_24E707BCC(a1, v13);
  swift_getKeyPath();
  *&v95 = v4;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v15 = *(v4 + 136);
  v16 = *(v4 + 168);
  v92 = *(v4 + 152);
  v93 = v16;
  v94 = *(v4 + 184);
  v17 = *(v4 + 72);
  v18 = *(v4 + 104);
  v88 = *(v4 + 88);
  v89 = v18;
  v90 = *(v4 + 120);
  v91 = v15;
  v19 = *(v4 + 40);
  v84 = *(v4 + 24);
  v85 = v19;
  v86 = *(v4 + 56);
  v87 = v17;
  v20 = sub_24E66927C(&v84);
  if (v20)
  {
    if (v20 == 1)
    {
LABEL_22:
      sub_24E70A270();
      goto LABEL_23;
    }

    v60 = v12;
    v22 = *(v4 + 232);
    v21 = *(v4 + 240);
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      v24 = sub_24E608B90(MEMORY[0x277D84F90]);
      sub_24F91F6A8();
      v25 = sub_24F91F668();
      v27 = v26;
      (*(v9 + 8))(v11, v8);
      *&v95 = v25;
      *(&v95 + 1) = v27;
      *&v96 = v22;
      *(&v96 + 1) = v21;
      LOBYTE(v97) = v60;
LABEL_16:
      *&v98 = 0;
      *(&v97 + 1) = 0;
      *(&v98 + 1) = v24;
      LOWORD(v99[0]) = 4;
      BYTE2(v99[0]) = 0;
      *(v99 + 8) = 0u;
      *(&v99[1] + 8) = 0u;
      *(&v99[2] + 1) = 0;
      v100 = 1uLL;
      v101 = 0uLL;
      LOBYTE(v102) = 0;
      *(&v102 + 1) = 0;
      v103 = 0uLL;
      CGSizeMake(&v95, v28, v29);
      v81 = v101;
      v82 = v102;
      v83 = v103;
      v77 = v99[0];
      v78 = v99[1];
      v79 = v99[2];
      v80 = v100;
      v73 = v95;
      v74 = v96;
      v75 = v97;
      v76 = v98;
      sub_24E708F2C(&v73);
      goto LABEL_22;
    }

    sub_24E669254(&v62);
    v101 = v70;
    v102 = v71;
    v103 = v72;
    v99[0] = v66;
    v99[1] = v67;
    v99[2] = v68;
    v100 = v69;
    v95 = v62;
    v96 = v63;
    v97 = v64;
    v98 = v65;
    v38 = *(v4 + 136);
    v39 = *(v4 + 168);
    v81 = *(v4 + 152);
    v82 = v39;
    v83 = *(v4 + 184);
    v40 = *(v4 + 72);
    v41 = *(v4 + 104);
    v77 = *(v4 + 88);
    v78 = v41;
    v79 = *(v4 + 120);
    v80 = v38;
    v42 = *(v4 + 40);
    v73 = *(v4 + 24);
    v74 = v42;
    v75 = *(v4 + 56);
    v76 = v40;
    if (sub_24E66927C(&v73) < 2)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v30 = *(v4 + 232);
  v31 = *(v4 + 240);
  if (v85 != __PAIR128__(v31, v30) && (sub_24F92CE08() & 1) == 0)
  {
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      v24 = sub_24E608B90(MEMORY[0x277D84F90]);
      sub_24F91F6A8();
      v33 = sub_24F91F668();
      v34 = v9;
      v35 = v12;
      v37 = v36;
      (*(v34 + 8))(v11, v8);
      *&v95 = v33;
      *(&v95 + 1) = v37;
      *&v96 = v30;
      *(&v96 + 1) = v31;
      LOBYTE(v97) = v35;
      goto LABEL_16;
    }

    sub_24E669254(&v62);
    v101 = v70;
    v102 = v71;
    v103 = v72;
    v99[0] = v66;
    v99[1] = v67;
    v99[2] = v68;
    v100 = v69;
    v95 = v62;
    v96 = v63;
    v97 = v64;
    v98 = v65;
    v43 = *(v4 + 136);
    v44 = *(v4 + 168);
    v81 = *(v4 + 152);
    v82 = v44;
    v83 = *(v4 + 184);
    v45 = *(v4 + 72);
    v46 = *(v4 + 104);
    v77 = *(v4 + 88);
    v78 = v46;
    v79 = *(v4 + 120);
    v80 = v43;
    v47 = *(v4 + 40);
    v73 = *(v4 + 24);
    v74 = v47;
    v75 = *(v4 + 56);
    v76 = v45;
    if (sub_24E66927C(&v73) < 2)
    {
LABEL_20:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v59[-16] = v4;
      *&v59[-8] = &v95;
      *&v61[0] = v4;
      sub_24F91FD78();

      goto LABEL_22;
    }

LABEL_21:
    v49 = *(v4 + 136);
    v50 = *(v4 + 168);
    v61[8] = *(v4 + 152);
    v61[9] = v50;
    v61[10] = *(v4 + 184);
    v51 = *(v4 + 72);
    v52 = *(v4 + 104);
    v61[4] = *(v4 + 88);
    v61[5] = v52;
    v61[6] = *(v4 + 120);
    v61[7] = v49;
    v53 = *(v4 + 40);
    v61[0] = *(v4 + 24);
    v61[1] = v53;
    v61[2] = *(v4 + 56);
    v61[3] = v51;
    v54 = v99[2];
    *(v4 + 136) = v100;
    v55 = v102;
    *(v4 + 152) = v101;
    *(v4 + 168) = v55;
    *(v4 + 184) = v103;
    v56 = v97;
    *(v4 + 72) = v98;
    v57 = v99[1];
    *(v4 + 88) = v99[0];
    *(v4 + 104) = v57;
    *(v4 + 120) = v54;
    v58 = v96;
    *(v4 + 24) = v95;
    *(v4 + 40) = v58;
    *(v4 + 56) = v56;
    sub_24E70D2CC(v61);
    sub_24E708AD8();
    goto LABEL_22;
  }

LABEL_23:
  sub_24E70A6DC(v4);
}

uint64_t sub_24E70854C()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();
}

uint64_t sub_24E7085F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__friendsPlayingGames;

  v5 = sub_24EBAD684(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
    sub_24F91FD78();
  }
}

uint64_t sub_24E708754()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v1 = *(v0 + 296);

  return v1;
}

uint64_t sub_24E708804(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 304);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 296) == a1 && v5 == a2;
      if (v6 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
    sub_24F91FD78();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
}

uint64_t sub_24E708974()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v17 = v0[7];
  v18 = v1;
  v4 = v0[10];
  v19 = v2;
  v20 = v4;
  v5 = v0[5];
  v14 = v0[4];
  v15 = v5;
  v16 = v3;
  v6 = v0[1];
  v10 = *v0;
  v11 = v6;
  v7 = v0[3];
  v12 = v0[2];
  v13 = v7;
  v8 = sub_24E66927C(&v10);
  if (v8)
  {
    if (v8 == 1)
    {
      return 0x6C616974696E69;
    }

    else
    {
      return 0x676E69646E616CLL;
    }
  }

  else
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0x2073746C75736572, 0xEC000000203A6469);
    MEMORY[0x253050C20](v10, *(&v10 + 1));
    MEMORY[0x253050C20](0x203A6D726574202CLL, 0xE800000000000000);
    MEMORY[0x253050C20](v11, *(&v11 + 1));
    MEMORY[0x253050C20](0x6E696769726F202CLL, 0xEA0000000000203ALL);
    sub_24F92CA38();
    return 0;
  }
}

void sub_24E708AD8()
{
  swift_getKeyPath();
  *&v28 = v0;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v1 = *(v0 + 136);
  v2 = *(v0 + 168);
  v36 = *(v0 + 152);
  v37 = v2;
  v38 = *(v0 + 184);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v32 = *(v0 + 88);
  v33 = v4;
  v34 = *(v0 + 120);
  v35 = v1;
  v5 = *(v0 + 40);
  v28 = *(v0 + 24);
  v29 = v5;
  v30 = *(v0 + 56);
  v31 = v3;
  sub_24E6691F8(&v28, v27);
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E928);
  sub_24E6691F8(&v28, v27);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  sub_24E70D2CC(&v28);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v11 = sub_24E708974();
    v13 = v12;
    v27[8] = v23;
    v27[9] = v24;
    v27[10] = v25;
    v27[4] = v19;
    v27[5] = v20;
    v27[6] = v21;
    v27[7] = v22;
    v27[0] = v15;
    v27[1] = v16;
    v27[2] = v17;
    v27[3] = v18;
    sub_24E70D2CC(v27);
    v14 = sub_24E7620D4(v11, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Updated search state: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {

    sub_24E70D2CC(&v28);
  }
}

uint64_t sub_24E708D78@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 56);
  v7 = *(v3 + 72);
  v8 = *(v3 + 104);
  v9 = *(v3 + 120);
  v20[4] = *(v3 + 88);
  v20[5] = v8;
  v20[2] = v6;
  v20[3] = v7;
  v10 = *(v3 + 136);
  v11 = *(v3 + 152);
  v12 = *(v3 + 184);
  v20[9] = *(v3 + 168);
  v20[10] = v12;
  v20[7] = v10;
  v20[8] = v11;
  v20[6] = v9;
  v20[0] = v4;
  v20[1] = v5;
  v13 = *(v3 + 136);
  v14 = *(v3 + 168);
  a2[8] = *(v3 + 152);
  a2[9] = v14;
  a2[10] = *(v3 + 184);
  v15 = *(v3 + 72);
  v16 = *(v3 + 104);
  a2[4] = *(v3 + 88);
  a2[5] = v16;
  a2[6] = *(v3 + 120);
  a2[7] = v13;
  v17 = *(v3 + 40);
  *a2 = *(v3 + 24);
  a2[1] = v17;
  a2[2] = *(v3 + 56);
  a2[3] = v15;
  return sub_24E6691F8(v20, &v19);
}

void sub_24E708EB4(__int128 *a1)
{
  v2 = a1[9];
  v8[8] = a1[8];
  v8[9] = v2;
  v8[10] = a1[10];
  v3 = a1[5];
  v8[4] = a1[4];
  v8[5] = v3;
  v4 = a1[7];
  v8[6] = a1[6];
  v8[7] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  sub_24E6691F8(v8, &v7);
  sub_24E708F2C(a1);
}

void sub_24E708F2C(__int128 *a1)
{
  v2 = a1[9];
  v44 = a1[8];
  v45 = v2;
  v46 = a1[10];
  v3 = a1[5];
  v40 = a1[4];
  v41 = v3;
  v4 = a1[7];
  v42 = a1[6];
  v43 = v4;
  v5 = a1[1];
  v36 = *a1;
  v37 = v5;
  v6 = a1[3];
  v38 = a1[2];
  v39 = v6;
  v7 = *(v1 + 136);
  v8 = *(v1 + 168);
  v66 = *(v1 + 152);
  v67 = v8;
  v68 = *(v1 + 184);
  v9 = *(v1 + 72);
  v10 = *(v1 + 104);
  v62 = *(v1 + 88);
  v63 = v10;
  v64 = *(v1 + 120);
  v65 = v7;
  v11 = *(v1 + 40);
  v58 = *(v1 + 24);
  v59 = v11;
  v60 = *(v1 + 56);
  v61 = v9;
  v12 = sub_24E66927C(&v58);
  if (!v12)
  {
    v55 = v44;
    v56 = v45;
    v57 = v46;
    v51 = v40;
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v47 = v36;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    if (!sub_24E66927C(&v47))
    {
      v24[8] = v55;
      v24[9] = v56;
      v24[10] = v57;
      v24[4] = v51;
      v24[5] = v52;
      v24[6] = v53;
      v24[7] = v54;
      v24[0] = v47;
      v24[1] = v48;
      v24[2] = v49;
      v24[3] = v50;
      v33 = v66;
      v34 = v67;
      v35 = v68;
      v29 = v62;
      v30 = v63;
      v31 = v64;
      v32 = v65;
      v25 = v58;
      v26 = v59;
      v27 = v60;
      v28 = v61;
      if (_s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(&v25, v24))
      {
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v55 = v44;
    v56 = v45;
    v57 = v46;
    v51 = v40;
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v47 = v36;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    if (sub_24E66927C(&v47) == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v25 = v1;
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
    sub_24F91FD78();
    sub_24E70D2CC(&v36);

    return;
  }

  v55 = v44;
  v56 = v45;
  v57 = v46;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v50 = v39;
  if (sub_24E66927C(&v47) != 2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v14 = *(v1 + 136);
  v15 = *(v1 + 168);
  v33 = *(v1 + 152);
  v34 = v15;
  v35 = *(v1 + 184);
  v16 = *(v1 + 72);
  v17 = *(v1 + 104);
  v29 = *(v1 + 88);
  v30 = v17;
  v31 = *(v1 + 120);
  v32 = v14;
  v18 = *(v1 + 40);
  v25 = *(v1 + 24);
  v26 = v18;
  v27 = *(v1 + 56);
  v28 = v16;
  v19 = v42;
  *(v1 + 136) = v43;
  v20 = v45;
  *(v1 + 152) = v44;
  *(v1 + 168) = v20;
  *(v1 + 184) = v46;
  v21 = v38;
  *(v1 + 72) = v39;
  v22 = v41;
  *(v1 + 88) = v40;
  *(v1 + 104) = v22;
  *(v1 + 120) = v19;
  v23 = v37;
  *(v1 + 24) = v36;
  *(v1 + 40) = v23;
  *(v1 + 56) = v21;
  sub_24E70D2CC(&v25);
  sub_24E708AD8();
}

void sub_24E709288(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 168);
  v13[8] = *(a1 + 152);
  v13[9] = v3;
  v13[10] = *(a1 + 184);
  v4 = *(a1 + 72);
  v5 = *(a1 + 104);
  v13[4] = *(a1 + 88);
  v13[5] = v5;
  v13[6] = *(a1 + 120);
  v13[7] = v2;
  v6 = *(a1 + 40);
  v13[0] = *(a1 + 24);
  v13[1] = v6;
  v13[2] = *(a1 + 56);
  v13[3] = v4;
  v7 = a2[6];
  *(a1 + 136) = a2[7];
  v8 = a2[9];
  *(a1 + 152) = a2[8];
  *(a1 + 168) = v8;
  *(a1 + 184) = a2[10];
  v9 = a2[2];
  *(a1 + 72) = a2[3];
  v10 = a2[5];
  *(a1 + 88) = a2[4];
  *(a1 + 104) = v10;
  *(a1 + 120) = v7;
  v11 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 40) = v11;
  *(a1 + 56) = v9;
  sub_24E6691F8(a2, &v12);
  sub_24E70D2CC(v13);
  sub_24E708AD8();
}

uint64_t sub_24E709364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v10 = v2;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  result = v2[27];
  if (result != a1 || v2[28] != a2)
  {
    result = sub_24F92CE08();
    if ((result & 1) == 0)
    {
      v2[25] = a1;
      v2[26] = a2;

      swift_getKeyPath();
      v10 = v2;
      sub_24F91FD88();

      v8 = v2[27];
      v9 = v3[28];
      LOBYTE(v10) = 10;

      sub_24E7094B8(v8, v9, &v10);
    }
  }

  return result;
}

uint64_t sub_24E7094B8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v4 + 232);
  if (result != a1 || *(v4 + 240) != a2)
  {
    v14 = *a3;
    result = sub_24F92CE08();
    if ((result & 1) == 0)
    {
      v63 = v14;
      v61 = v9;
      if (qword_27F211448 != -1)
      {
        swift_once();
      }

      v15 = sub_24F9220D8();
      __swift_project_value_buffer(v15, qword_27F39E928);

      v16 = sub_24F9220B8();
      v17 = sub_24F92BD98();

      v18 = os_log_type_enabled(v16, v17);
      v62 = v8;
      if (v18)
      {
        v19 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v78 = v60;
        *v19 = 141558530;
        *(v19 + 4) = 1752392040;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_24E7620D4(a1, a2, &v78);
        *(v19 + 22) = 2080;
        LOBYTE(v77[0]) = v63;
        v20 = SearchOrigin.rawValue.getter();
        v22 = sub_24E7620D4(v20, v21, &v78);

        *(v19 + 24) = v22;
        _os_log_impl(&dword_24E5DD000, v16, v17, "Update search term: %{mask.hash}s, origin: %s", v19, 0x20u);
        v23 = v60;
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v23, -1, -1);
        MEMORY[0x2530542D0](v19, -1, -1);
      }

      *(v4 + 232) = a1;
      *(v4 + 240) = a2;
      swift_bridgeObjectRetain_n();

      sub_24E707BCC(a1, a2);
      swift_getKeyPath();
      *&v78 = v4;
      sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
      sub_24F91FD88();

      v24 = *(v4 + 136);
      v25 = *(v4 + 168);
      v77[8] = *(v4 + 152);
      v77[9] = v25;
      v77[10] = *(v4 + 184);
      v26 = *(v4 + 72);
      v27 = *(v4 + 104);
      v77[4] = *(v4 + 88);
      v77[5] = v27;
      v77[6] = *(v4 + 120);
      v77[7] = v24;
      v28 = *(v4 + 40);
      v77[0] = *(v4 + 24);
      v77[1] = v28;
      v77[2] = *(v4 + 56);
      v77[3] = v26;
      result = sub_24E66927C(v77);
      if (result != 1)
      {
        v29 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v29 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          v30 = *(v4 + 280);
          if (v30)
          {
            v31 = *(v4 + 288);
            *&v78 = *(v4 + 272);
            *(&v78 + 1) = v30;
            LOBYTE(v79) = v31 & 1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
            sub_24F923358();
            v32 = v66;

            if ((v32 & 1) == 0)
            {

              v33 = sub_24E608B90(MEMORY[0x277D84F90]);
              sub_24F91F6A8();
              v34 = sub_24F91F668();
              v36 = v35;
              (*(v61 + 8))(v11, v62);
              *&v78 = v34;
              *(&v78 + 1) = v36;
              *&v79 = a1;
              *(&v79 + 1) = a2;
              LOBYTE(v80) = v63;
              *&v81 = 0;
              *(&v80 + 1) = 0;
              *(&v81 + 1) = v33;
              LOWORD(v82[0]) = 4;
              BYTE2(v82[0]) = 0;
              *(v82 + 8) = 0u;
              *(&v82[1] + 8) = 0u;
              *(&v82[2] + 1) = 0;
              v83 = 1uLL;
              v84 = 0uLL;
              LOBYTE(v85) = 0;
              *(&v85 + 1) = 0;
              v86 = 0uLL;
              CGSizeMake(&v78, v37, v38);
              v74 = v84;
              v75 = v85;
              v76 = v86;
              v70 = v82[0];
              v71 = v82[1];
              v72 = v82[2];
              v73 = v83;
              v66 = v78;
              v67 = v79;
              v68 = v80;
              v69 = v81;
              sub_24E708F2C(&v66);
            }
          }
        }

        else
        {
          sub_24E669254(v65);
          v84 = v65[8];
          v85 = v65[9];
          v86 = v65[10];
          v82[0] = v65[4];
          v82[1] = v65[5];
          v82[2] = v65[6];
          v83 = v65[7];
          v78 = v65[0];
          v79 = v65[1];
          v80 = v65[2];
          v81 = v65[3];
          v39 = *(v4 + 136);
          v40 = *(v4 + 168);
          v74 = *(v4 + 152);
          v75 = v40;
          v76 = *(v4 + 184);
          v41 = *(v4 + 72);
          v42 = *(v4 + 104);
          v70 = *(v4 + 88);
          v71 = v42;
          v72 = *(v4 + 120);
          v73 = v39;
          v43 = *(v4 + 40);
          v66 = *(v4 + 24);
          v67 = v43;
          v68 = *(v4 + 56);
          v69 = v41;
          if (sub_24E66927C(&v66) >= 2)
          {
            v45 = *(v4 + 136);
            v46 = *(v4 + 168);
            v64[8] = *(v4 + 152);
            v64[9] = v46;
            v64[10] = *(v4 + 184);
            v47 = *(v4 + 72);
            v48 = *(v4 + 104);
            v64[4] = *(v4 + 88);
            v64[5] = v48;
            v64[6] = *(v4 + 120);
            v64[7] = v45;
            v49 = *(v4 + 40);
            v64[0] = *(v4 + 24);
            v64[1] = v49;
            v64[2] = *(v4 + 56);
            v64[3] = v47;
            v50 = v82[2];
            *(v4 + 136) = v83;
            v51 = v85;
            *(v4 + 152) = v84;
            *(v4 + 168) = v51;
            *(v4 + 184) = v86;
            v52 = v80;
            *(v4 + 72) = v81;
            v53 = v82[1];
            *(v4 + 88) = v82[0];
            *(v4 + 104) = v53;
            *(v4 + 120) = v50;
            v54 = v79;
            *(v4 + 24) = v78;
            *(v4 + 40) = v54;
            *(v4 + 56) = v52;
            sub_24E70D2CC(v64);
            sub_24E708AD8();
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v60 - 2) = v4;
            *(&v60 - 1) = &v78;
            *&v64[0] = v4;
            sub_24F91FD78();
          }
        }

        v55 = *(v4 + 280);
        if (v55)
        {
          v56 = *(v4 + 288);
          *&v66 = *(v4 + 272);
          *(&v66 + 1) = v55;
          LOBYTE(v67) = v56 & 1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
          sub_24F923358();
          v57 = LOBYTE(v65[0]);

          if (v57 == 1)
          {
            v58 = *(v4 + 256);
            if (v58)
            {
              v59 = *(v4 + 264);
              *&v66 = *(v4 + 248);
              *(&v66 + 1) = v58;
              LOBYTE(v67) = v59 & 1;
              LOBYTE(v65[0]) = 1;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
              sub_24F927178();
            }
          }
        }

        return sub_24E70A270();
      }
    }
  }

  return result;
}

uint64_t sub_24E709C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 216);
  v4 = *(a1 + 224);
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;

  sub_24E709364(v3, v4);
}

uint64_t sub_24E709C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  swift_beginAccess();
  return sub_24E70D448(v3 + v4, a2);
}

uint64_t sub_24E709D24(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E70D448(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F2156B8);
}

uint64_t sub_24E709E6C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  swift_beginAccess();
  sub_24E70D3D8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24E709ED8(uint64_t a1)
{
  sub_24E70D8E0(v11);
  v3 = v11[6];
  *(v1 + 136) = v11[7];
  v4 = v11[9];
  *(v1 + 152) = v11[8];
  *(v1 + 168) = v4;
  *(v1 + 184) = v11[10];
  v5 = v11[2];
  *(v1 + 72) = v11[3];
  v6 = v11[5];
  *(v1 + 88) = v11[4];
  *(v1 + 104) = v6;
  *(v1 + 120) = v3;
  v7 = v11[1];
  *(v1 + 24) = v11[0];
  *(v1 + 40) = v7;
  *(v1 + 56) = v5;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0xE000000000000000;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0xE000000000000000;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0xE000000000000000;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  *(v1 + 304) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  v9 = type metadata accessor for SearchSuggestionsResult(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__friendsPlayingGames) = sub_24E608B7C(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchSuggestionTask) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchFriendsPlayingGamesTask) = 0;
  sub_24F91FDB8();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_24E70A008()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F210510 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_27F22CFB0 object:0];

  v2 = *(v0 + 136);
  v3 = *(v0 + 168);
  v10[8] = *(v0 + 152);
  v10[9] = v3;
  v10[10] = *(v0 + 184);
  v4 = *(v0 + 72);
  v5 = *(v0 + 104);
  v10[4] = *(v0 + 88);
  v10[5] = v5;
  v10[6] = *(v0 + 120);
  v10[7] = v2;
  v6 = *(v0 + 40);
  v10[0] = *(v0 + 24);
  v10[1] = v6;
  v10[2] = *(v0 + 56);
  v10[3] = v4;
  sub_24E70D2CC(v10);

  sub_24E70D68C(*(v0 + 248), *(v0 + 256));
  sub_24E70D68C(*(v0 + 272), *(v0 + 280));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions, &qword_27F2156B8);

  v7 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter___observationRegistrar;
  v8 = sub_24F91FDC8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_24E70A1C4()
{
  sub_24E70A008();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchPagePresenter()
{
  result = qword_27F2196E8;
  if (!qword_27F2196E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E70A270()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchSuggestionTask;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchSuggestionTask))
  {

    sub_24F92B958();
  }

  v8 = *(v0 + 240);
  v9 = *(v0 + 232) & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  if (v9)
  {
    v10 = sub_24F92B858();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    sub_24F92B7F8();

    v11 = sub_24F92B7E8();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v0;
    *(v0 + v7) = sub_24EA998B8(0, 0, v3, &unk_24F94C9D8, v12);
  }

  else
  {
    v15 = type metadata accessor for SearchSuggestionsResult(0);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v17[-2] = v0;
    v17[-1] = v6;
    v17[1] = v0;
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
    sub_24F91FD78();

    return sub_24E601704(v6, &qword_27F2156B8);
  }
}

uint64_t sub_24E70A56C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchFriendsPlayingGamesTask;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchFriendsPlayingGamesTask))
  {

    sub_24F92B958();
  }

  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_24F92B7F8();

  v7 = sub_24F92B7E8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  *(v1 + v5) = sub_24EA998B8(0, 0, v4, &unk_24F94CAC0, v8);
}

void sub_24E70A6DC(uint64_t a1)
{
  if (*(a1 + 256))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
    sub_24F927178();
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    if (*(a1 + 280))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230);
      sub_24F923368();
    }
  }

  else
  {
    v4 = [objc_opt_self() sharedApplication];
    [v4 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }
}

uint64_t sub_24E70A85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[10] = sub_24F92B7F8();
  v4[11] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_24E70A8F8, v6, v5);
}

uint64_t sub_24E70A8F8()
{
  v0[14] = *(v0[9] + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_24E70A9BC;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24E70A9BC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_24E70AF28;
  }

  else
  {
    v5 = sub_24E70AAF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E70AAF8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[8] = 100;
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = sub_24E70D7C4();
  *v3 = v0;
  v3[1] = sub_24E70ABE0;
  v5 = v0[14];

  return MEMORY[0x28217F4B0](v0 + 7, v0 + 8, v5, &type metadata for AllFriendsPlayingGamesDataIntent, v4, v1, v2);
}

uint64_t sub_24E70ABE0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_24E70B0D0;
  }

  else
  {
    v5 = sub_24E70ACF4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E70ACF4()
{
  v0[19] = v0[7];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (sub_24F92B978())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E70ADAC, 0, 0);
  }
}

uint64_t sub_24E70ADAC()
{
  *(v0 + 160) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E70AE38, v2, v1);
}

uint64_t sub_24E70AE38()
{
  v1 = v0[19];

  v2 = sub_24E70CD34(v1);

  sub_24E7085F8(v2);
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x2822009F8](sub_24E70AEC8, v3, v4);
}

uint64_t sub_24E70AEC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E70AF28()
{

  v1 = *(v0 + 128);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to fetch friends playing games: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E70B0D0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 144);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to fetch friends playing games: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E70B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for SearchSuggestionsResult(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_24F92CA08();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_24F92B7F8();
  v4[20] = sub_24F92B7E8();
  v8 = sub_24F92B778();
  v4[21] = v8;
  v4[22] = v7;

  return MEMORY[0x2822009F8](sub_24E70B418, v8, v7);
}

uint64_t sub_24E70B418()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_24E70B4F8;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24E70B4F8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[18];
  v5 = v2[17];
  v6 = v2[16];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_24E70D934;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_24E70B68C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24E70B68C()
{
  if (sub_24F92B978())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[10];
    v0[24] = v3[29];
    v0[25] = v3[30];
    v0[26] = v3[2];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);

    v5 = swift_task_alloc();
    v0[27] = v5;
    *v5 = v0;
    v5[1] = sub_24E70B7E0;

    return MEMORY[0x28217F228](v0 + 2, v4, v4);
  }
}

uint64_t sub_24E70B7E0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70BF74;
  }

  else
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70B910;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E70B910()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = v1;
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = sub_24E70D4B8();
  *v5 = v0;
  v5[1] = sub_24E70B9FC;
  v7 = v0[26];
  v8 = v0[12];

  return MEMORY[0x28217F4B0](v8, v0 + 7, v7, &type metadata for SearchSuggestionsIntent, v6, v3, v4);
}

uint64_t sub_24E70B9FC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70C03C;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70BB2C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E70BB2C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = *(v2 + 56);
  v0[30] = v4;
  v0[31] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_24E601704(v0[12], &qword_27F2156B8);
LABEL_5:

    v5 = v0[1];

    return v5();
  }

  sub_24E70D50C(v0[12], v0[15]);
  if (sub_24F92B978())
  {
    sub_24E70D880(v0[15], type metadata accessor for SearchSuggestionsResult);

    goto LABEL_5;
  }

  return MEMORY[0x2822009F8](sub_24E70BCB4, 0, 0);
}

uint64_t sub_24E70BCB4()
{
  *(v0 + 256) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E70BD40, v2, v1);
}

uint64_t sub_24E70BD40()
{
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  sub_24E70D818(v2, v4, type metadata accessor for SearchSuggestionsResult);
  v1(v4, 0, 1, v3);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v0[9] = v5;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter);
  sub_24F91FD78();

  sub_24E601704(v4, &qword_27F2156B8);
  v7 = v0[21];
  v8 = v0[22];

  return MEMORY[0x2822009F8](sub_24E70BEC4, v7, v8);
}

uint64_t sub_24E70BEC4()
{
  v1 = *(v0 + 120);

  sub_24E70D880(v1, type metadata accessor for SearchSuggestionsResult);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E70BF74()
{

  (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
  sub_24E601704(v0[12], &qword_27F2156B8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E70C03C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
  sub_24E601704(v0[12], &qword_27F2156B8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E70C118()
{
  v1 = v0;
  sub_24F91EB38();
  if (!v16[3])
  {
    return sub_24E601704(v16, &qword_27F2129B0);
  }

  type metadata accessor for SearchAction();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v3 = *(v15 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
  if (v3)
  {
    v4 = *(v15 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
    v5 = qword_27F211448;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E928);

    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 141558530;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_24E7620D4(v4, v3, v16);
      *(v9 + 22) = 2080;
      v11 = SearchOrigin.rawValue.getter();
      v13 = sub_24E7620D4(v11, v12, v16);

      *(v9 + 24) = v13;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Received SearchAction: %{mask.hash}s, origin: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v10, -1, -1);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    v14 = *(v1 + 232) == v4 && v3 == *(v1 + 240);
    if (v14 || (sub_24F92CE08() & 1) != 0)
    {
    }

    *(v1 + 232) = v4;
    *(v1 + 240) = v3;

    sub_24E707BCC(v4, v3);
    LOBYTE(v16[0]) = 4;
    sub_24E707EEC(0, 0, v16);
  }
}

void sub_24E70C4CC()
{
  sub_24E70C5F4();
  if (v0 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E70C5F4()
{
  if (!qword_27F2196F8)
  {
    type metadata accessor for SearchSuggestionsResult(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2196F8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit12ReferrerDataV4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit12ReferrerDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit11SearchStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_24E70C6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 176))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E70C72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_24E70C7A0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void sub_24E70C804(__int128 *a1)
{
  v2 = a1[9];
  v8[8] = a1[8];
  v8[9] = v2;
  v8[10] = a1[10];
  v3 = a1[5];
  v8[4] = a1[4];
  v8[5] = v3;
  v4 = a1[7];
  v8[6] = a1[6];
  v8[7] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  sub_24E6691F8(v8, &v7);
  sub_24E708F2C(a1);
}

uint64_t sub_24E70C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24F92C9F8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24E70C97C, 0, 0);
}

uint64_t sub_24E70C97C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24F92CA08();
  v5 = sub_24E70D570(&qword_27F219708, MEMORY[0x277D85928]);
  sub_24F92CF98();
  sub_24E70D570(&qword_27F219710, MEMORY[0x277D858F8]);
  sub_24F92CA18();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24E70CB0C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24E70CB0C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24E70CCC8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24E70CCC8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24E70CD34(uint64_t a1)
{
  v2 = type metadata accessor for GameSuggestion();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130A0);
  result = sub_24F92CB28();
  v5 = 0;
  v32 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v27 = result + 8;
  v28 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(v32 + 56);
      v18 = (*(v32 + 48) + 16 * v16);
      v19 = v18[1];
      v34 = *v18;
      v20 = v29;
      sub_24E70D818(v17 + *(v30 + 72) * v16, v29, type metadata accessor for GameSuggestion);
      v21 = *(v20 + *(v31 + 20));

      sub_24E70D880(v20, type metadata accessor for GameSuggestion);
      result = v28;
      *(v27 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (result[6] + 16 * v16);
      *v22 = v34;
      v22[1] = v19;
      *(result[7] + 8 * v16) = v21;
      v23 = result[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      result[2] = v25;
      v11 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E70CF74(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v56 = a1[8];
  v57 = v3;
  v4 = a1[9];
  v58 = a1[10];
  v5 = a1[3];
  v6 = a1[5];
  v52 = a1[4];
  v53 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v54 = a1[6];
  v55 = v8;
  v9 = a1[1];
  v49[0] = *a1;
  v49[1] = v9;
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v50 = a1[2];
  v51 = v10;
  v13 = a2[7];
  v14 = a2[9];
  v67 = a2[8];
  v68 = v14;
  v15 = a2[9];
  v69 = a2[10];
  v16 = a2[3];
  v17 = a2[5];
  v63 = a2[4];
  v64 = v17;
  v18 = a2[5];
  v19 = a2[7];
  v65 = a2[6];
  v66 = v19;
  v20 = a2[1];
  v59 = *a2;
  v60 = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v61 = a2[2];
  v62 = v21;
  v24 = a1[7];
  v25 = a1[9];
  v70[8] = a1[8];
  v70[9] = v25;
  v26 = a1[3];
  v27 = a1[5];
  v70[4] = a1[4];
  v70[5] = v27;
  v28 = a1[6];
  v70[7] = v24;
  v70[6] = v28;
  v29 = a1[1];
  v70[0] = *a1;
  v70[1] = v29;
  v30 = a1[2];
  v70[3] = v26;
  v70[2] = v30;
  v70[18] = v13;
  v70[19] = v67;
  v31 = a2[10];
  v70[20] = v15;
  v70[21] = v31;
  v70[14] = v16;
  v70[15] = v63;
  v70[16] = v18;
  v70[17] = v65;
  v70[10] = a1[10];
  v70[11] = v23;
  v70[12] = v22;
  v70[13] = v61;
  v79 = v56;
  v80 = v4;
  v81 = a1[10];
  v75 = v52;
  v76 = v7;
  v77 = v54;
  v78 = v2;
  v71 = v11;
  v72 = v12;
  v73 = v50;
  v74 = v5;
  v32 = sub_24E66927C(&v71);
  if (v32)
  {
    if (v32 == 1)
    {
      v46 = v67;
      v47 = v68;
      v48 = v69;
      v42 = v63;
      v43 = v64;
      v44 = v65;
      v45 = v66;
      v38 = v59;
      v39 = v60;
      v40 = v61;
      v41 = v62;
      if (sub_24E66927C(&v38) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v46 = v67;
    v47 = v68;
    v48 = v69;
    v42 = v63;
    v43 = v64;
    v44 = v65;
    v45 = v66;
    v38 = v59;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    if (sub_24E66927C(&v38) == 2)
    {
LABEL_8:
      sub_24E601704(v70, &qword_27F2156E8);
      v33 = 1;
      return v33 & 1;
    }

LABEL_9:
    sub_24E6691F8(&v59, &v38);
    sub_24E6691F8(v49, &v38);
    sub_24E601704(v70, &qword_27F2156E8);
    v33 = 0;
    return v33 & 1;
  }

  v46 = v67;
  v47 = v68;
  v48 = v69;
  v42 = v63;
  v43 = v64;
  v44 = v65;
  v45 = v66;
  v38 = v59;
  v39 = v60;
  v40 = v61;
  v41 = v62;
  if (sub_24E66927C(&v38))
  {
    goto LABEL_9;
  }

  v37[8] = v79;
  v37[9] = v80;
  v37[10] = v81;
  v37[4] = v75;
  v37[5] = v76;
  v37[6] = v77;
  v37[7] = v78;
  v37[0] = v71;
  v37[1] = v72;
  v37[2] = v73;
  v37[3] = v74;
  v36[8] = v46;
  v36[9] = v47;
  v36[10] = v48;
  v36[4] = v42;
  v36[5] = v43;
  v36[6] = v44;
  v36[7] = v45;
  v36[0] = v38;
  v36[1] = v39;
  v36[2] = v40;
  v36[3] = v41;
  sub_24E6691F8(&v59, v35);
  sub_24E6691F8(v49, v35);
  sub_24E6691F8(&v59, v35);
  sub_24E6691F8(v49, v35);
  v33 = _s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(v37, v36);
  sub_24E601704(v70, &qword_27F2156E8);
  sub_24E70D2CC(&v59);
  sub_24E70D2CC(v49);
  return v33 & 1;
}

uint64_t sub_24E70D300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E70B280(a1, v4, v5, v6);
}

uint64_t sub_24E70D3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E70D448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E70D4B8()
{
  result = qword_27F219700;
  if (!qword_27F219700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219700);
  }

  return result;
}

uint64_t sub_24E70D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchSuggestionsResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E70D570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E70D600()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 296) = v0[3];
  *(v1 + 304) = v2;
}

uint64_t sub_24E70D648()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__friendsPlayingGames) = *(v0 + 24);
}

uint64_t sub_24E70D68C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E70D710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E70A85C(a1, v4, v5, v6);
}

unint64_t sub_24E70D7C4()
{
  result = qword_27F219718;
  if (!qword_27F219718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219718);
  }

  return result;
}

uint64_t sub_24E70D818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E70D880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_24E70D8E0(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_24E70D960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E70D9F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E70DA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AchievementsByGameDataIntent()
{
  result = qword_27F219720;
  if (!qword_27F219720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E70DB34()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24E70DBA8(uint64_t a1, void *a2)
{
  v3 = sub_24F928AE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
    sub_24F92A9A8();
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
    sub_24F92A9C8();
    (*(v4 + 8))(v6, v3);
  }
}

id sub_24E70DCE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = aBlock - v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v7 = sub_24F92A9E8();
  sub_24F91F488();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E70E058(v2);
    type metadata accessor for OpenURLActionImplementation.OpenURLActionError();
    swift_getWitnessTable();
    v8 = swift_allocError();
    sub_24F92A9A8();

    return v7;
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    v11 = sub_24F91F3B8();
    v12 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    aBlock[4] = sub_24E70E0D8;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F56E000;
    aBlock[3] = &block_descriptor_9;
    v13 = _Block_copy(aBlock);

    [v10 openURL:v11 configuration:v12 completionHandler:v13];
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E70DFE8()
{
  result = qword_27F2162F8;
  if (!qword_27F2162F8)
  {
    type metadata accessor for OpenURLAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162F8);
  }

  return result;
}

uint64_t sub_24E70E058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ChallengesAllGamesShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t ChallengesAllGamesShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x73656D6167;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0);
  v8 = sub_24E70EA00(&qword_27F219830, &qword_27F217960);
  *(inited + 48) = v3;
  *(inited + 80) = v8;
  *(inited + 88) = 0x444965676170;
  v9 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v9;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;
  *(inited + 144) = 0x706574537478656ELL;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = &type metadata for ChallengesGamePickerNextStep;
  *(inited + 192) = sub_24E606E50();
  *(inited + 160) = v6;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}