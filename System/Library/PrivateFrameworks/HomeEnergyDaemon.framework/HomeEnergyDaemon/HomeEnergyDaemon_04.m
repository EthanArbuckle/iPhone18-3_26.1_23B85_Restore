uint64_t sub_22B18ABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v59 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - v6;
  MEMORY[0x28223BE20](v7);
  v53 = &v53 - v8;
  v9 = sub_22B35DA4C();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v53 - v13;
  MEMORY[0x28223BE20](v14);
  v54 = &v53 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  if (qword_27D8B9F90 != -1)
  {
    swift_once();
  }

  v19 = sub_22B35E04C();
  __swift_project_value_buffer(v19, qword_27D8BA3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v20 = sub_22B35E02C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B363640;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, *MEMORY[0x277CC9988], v20);
  v26(v25 + v22, *MEMORY[0x277CC9998], v20);
  v26(v25 + 2 * v22, *MEMORY[0x277CC9968], v20);
  v26(v25 + 3 * v22, *MEMORY[0x277CC9980], v20);
  v26(v25 + 4 * v22, *MEMORY[0x277CC99A0], v20);
  sub_22B310E30(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v27 = v62;
  sub_22B35DFCC();

  v28 = sub_22B35D9CC();
  if (v29 & 1) != 0 || (v30 = v28, result = sub_22B35DA0C(), (v32))
  {
    (*(v60 + 8))(v18, v61);
    v33 = sub_22B35DE9C();
    return (*(*(v33 - 8) + 16))(v59, v27, v33);
  }

  if (result > 29)
  {
    v43 = v60;
    v42 = v61;
    v44 = v57;
    (*(v60 + 16))(v57, v18, v61);
    sub_22B35DA1C();
    sub_22B35D9DC();
    sub_22B35DA2C();
    sub_22B35D96C();
    v45 = v58;
  }

  else
  {
    if (v30)
    {
      if (!__OFSUB__(v30, 1))
      {
        v35 = v60;
        v34 = v61;
        v36 = v55;
        (*(v60 + 16))(v55, v18, v61);
        sub_22B35DA1C();
        sub_22B35D9DC();
        sub_22B35DA2C();
        sub_22B35D96C();
        v37 = v56;
        sub_22B35DFDC();
        v38 = *(v35 + 8);
        v38(v36, v34);
        v38(v18, v34);
        v39 = sub_22B35DE9C();
        v40 = *(v39 - 8);
        v41 = *(v40 + 48);
        if (v41(v37, 1, v39) != 1)
        {
          return (*(v40 + 32))(v59, v37, v39);
        }

        (*(v40 + 16))(v59, v27, v39);
        result = (v41)(v37, 1, v39);
        if (result != 1)
        {
          return sub_22B123284(v37, &qword_27D8BA340, &qword_22B363FB0);
        }

        return result;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v43 = v60;
    v42 = v61;
    v44 = v54;
    (*(v60 + 16))(v54, v18, v61);
    sub_22B35DA1C();
    sub_22B35D9DC();
    sub_22B35DA2C();
    sub_22B35D96C();
    v46 = sub_22B35D9AC();
    if (v47)
    {
      v48 = 1;
    }

    else
    {
      v48 = v46;
    }

    result = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_25;
    }

    sub_22B35D9BC();
    v45 = v53;
  }

  sub_22B35DFDC();
  v49 = *(v43 + 8);
  v49(v44, v42);
  v49(v18, v42);
  v50 = sub_22B35DE9C();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v45, 1, v50) != 1)
  {
    return (*(v51 + 32))(v59, v45, v50);
  }

  (*(v51 + 16))(v59, v27, v50);
  result = (v52)(v45, 1, v50);
  if (result != 1)
  {
    return sub_22B123284(v45, &qword_27D8BA340, &qword_22B363FB0);
  }

  return result;
}

uint64_t sub_22B18B370(int *a1)
{
  v3 = v1;
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B18DC68(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
  sub_22B36072C();
  v4 = v1 + a1[5];
  sub_22B36072C();
  v5 = (v3 + a1[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_22B3608FC();
  v8 = (v3 + a1[7]);
  v9 = *v8;
  v10 = v8[1];
  sub_22B3608FC();
  v11 = (v3 + a1[8]);
  v12 = *v11;
  v13 = v11[1];
  sub_22B3608FC();
  v14 = v3 + a1[9];
  sub_22B36072C();
  return sub_22B3614DC();
}

uint64_t sub_22B18B484(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_22B35DF1C();
  sub_22B18DC68(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
  sub_22B36072C();
  v5 = v2 + a2[5];
  sub_22B36072C();
  v6 = (v4 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_22B3608FC();
  v9 = (v4 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_22B3608FC();
  v12 = (v4 + a2[8]);
  v13 = *v12;
  v14 = v12[1];
  sub_22B3608FC();
  v15 = v4 + a2[9];
  return sub_22B36072C();
}

uint64_t sub_22B18B580(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_22B36149C();
  sub_22B35DF1C();
  sub_22B18DC68(&unk_27D8BA320, 255, MEMORY[0x277CC95F0]);
  sub_22B36072C();
  v5 = v2 + a2[5];
  sub_22B36072C();
  v6 = (v4 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_22B3608FC();
  v9 = (v4 + a2[7]);
  v10 = *v9;
  v11 = v9[1];
  sub_22B3608FC();
  v12 = (v4 + a2[8]);
  v13 = *v12;
  v14 = v12[1];
  sub_22B3608FC();
  v15 = v4 + a2[9];
  sub_22B36072C();
  return sub_22B3614DC();
}

uint64_t sub_22B18B6B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SessionKey(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v9;
  v14 = *(v1 + v9 + *(v8 + 64));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_22B119A60;

  return sub_22B1887AC(a1, v10, v11, v12, v1 + v6, v13, v14);
}

uint64_t sub_22B18B868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B18B8D0(uint64_t a1, uint64_t a2)
{
  if ((sub_22B35DEEC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SessionKey(0);
  v5 = v4[5];
  if ((sub_22B35DEEC() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v21 = v4[9];

  return sub_22B35DEEC();
}

uint64_t sub_22B18B9D8(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22B35DF1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v11);
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  (*(v6 + 32))(v15 + v14, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v16 = v22;
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22B1913C8;
  *(v17 + 24) = v15;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_28;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  [v19 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B18BCE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v87 = a2;
  v4 = type metadata accessor for SessionKey(0);
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA448, &qword_22B364938);
  v7 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v79 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v76 - v10;
  MEMORY[0x28223BE20](v11);
  v80 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v76 - v15;
  v17 = sub_22B35DF1C();
  v85 = *(v17 - 8);
  v18 = v85[8];
  MEMORY[0x28223BE20](v17);
  v78 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v21 = sub_22B36081C();
  v86 = [v20 initWithEntityName_];

  v90 = MEMORY[0x277D84F90];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B364620;
  v23 = sub_22B35DDDC();
  *(v22 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v22 + 64) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v22 + 32) = v23;
  v24 = MEMORY[0x277D837D0];
  *(v22 + 96) = MEMORY[0x277D837D0];
  v25 = sub_22B1280E4();
  *(v22 + 72) = 0x6E69676562;
  *(v22 + 80) = 0xE500000000000000;
  *(v22 + 136) = v24;
  *(v22 + 144) = v25;
  *(v22 + 104) = v25;
  *(v22 + 112) = 6581861;
  *(v22 + 120) = 0xE300000000000000;
  v26 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  v27 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v83 = v26;
  if (v27 >= v28 >> 1)
  {
LABEL_44:
    sub_22B360A7C();
  }

  sub_22B360A9C();
  v29 = v90;
  sub_22B170BE0(v87, v16, &qword_27D8BA970, &unk_22B363560);
  v30 = v85;
  if ((v85[6])(v16, 1, v17) == 1)
  {
    sub_22B123284(v16, &qword_27D8BA970, &unk_22B363560);
  }

  else
  {
    v31 = v78;
    (v30[4])(v78, v16, v17);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_22B3634B0;
    v87 = v17;
    v33 = v30;
    v34 = sub_22B35DEDC();
    *(v32 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v32 + 64) = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v32 + 32) = v34;
    v35 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v75 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    v36 = v33[1];
    v17 = (v33 + 1);
    v36(v31, v87);
    v29 = v90;
  }

  v37 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v78 = v29;
  v38 = sub_22B360A3C();
  v39 = [v37 initWithType:1 subpredicates:v38];

  v16 = v86;
  v76 = v39;
  [v86 setPredicate_];
  [v16 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22B364830;
  *(v40 + 32) = 0x44497463656A626FLL;
  *(v40 + 40) = 0xE800000000000000;
  *(v40 + 56) = v24;
  strcpy((v40 + 64), "homeIdentifier");
  *(v40 + 79) = -18;
  *(v40 + 88) = v24;
  strcpy((v40 + 96), "siteIdentifier");
  *(v40 + 111) = -18;
  *(v40 + 120) = v24;
  *(v40 + 128) = 0xD000000000000010;
  *(v40 + 136) = 0x800000022B36AF80;
  *(v40 + 152) = v24;
  *(v40 + 160) = 0xD000000000000010;
  *(v40 + 168) = 0x800000022B36AFA0;
  *(v40 + 184) = v24;
  *(v40 + 192) = 0x496E6F6973736573;
  *(v40 + 200) = 0xE900000000000044;
  *(v40 + 216) = v24;
  strcpy((v40 + 224), "sessionState");
  *(v40 + 237) = 0;
  *(v40 + 238) = -5120;
  *(v40 + 280) = v24;
  *(v40 + 248) = v24;
  strcpy((v40 + 256), "loadEventType");
  *(v40 + 270) = -4864;
  v41 = sub_22B360A3C();

  [v16 setPropertiesToFetch_];

  [v16 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22B363650;
  v43 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v44 = sub_22B36081C();
  v45 = [v43 initWithKey:v44 ascending:1];

  *(v42 + 32) = v45;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v46 = sub_22B360A3C();

  [v16 setSortDescriptors_];

  v47 = 0;
  v89 = sub_22B3223E8(MEMORY[0x277D84F90]);
  v85 = a3;
  while (2)
  {
    v48 = v86;
    [v86 setFetchOffset_];
    [v48 setFetchLimit_];
    sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
    v49 = sub_22B360E9C();
    v50 = v49;
    v51 = v49 >> 62;
    if (v49 >> 62)
    {
      v52 = sub_22B36109C();
      if (v52)
      {
        goto LABEL_10;
      }

LABEL_25:

      a3 = v85;
      break;
    }

    v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_25;
    }

LABEL_10:
    v87 = v51;
    v24 = 0;
    a3 = (v50 & 0xC000000000000001);
    do
    {
      if (a3)
      {
        v53 = MEMORY[0x23188EAC0](v24, v50);
      }

      else
      {
        if (v24 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v53 = *(v50 + 8 * v24 + 32);
      }

      v54 = v53;
      v16 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = MEMORY[0x23188EEB0]();
      sub_22B184538(v54, &v89);
      objc_autoreleasePoolPop(v17);

      ++v24;
    }

    while (v16 != v52);
    v55 = __OFADD__(v47, 100);
    v47 += 100;
    if (v55)
    {
      goto LABEL_43;
    }

    if (v87)
    {
      v56 = sub_22B36109C();
    }

    else
    {
      v56 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a3 = v85;

    if (v56 >= 100)
    {
      [a3 reset];
      continue;
    }

    break;
  }

  [a3 reset];
  v58 = v89 + 64;
  v57 = *(v89 + 64);
  v87 = v89;
  v88 = MEMORY[0x277D84FA0];
  v59 = 1 << *(v89 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v57;
  v78 = v79 + 1;
  v24 = (v59 + 63) >> 6;

  v17 = 0;
  v62 = v83;
  v85 = v58;
  while (v61)
  {
LABEL_35:
    v64 = __clz(__rbit64(v61)) | (v17 << 6);
    v65 = v87;
    v66 = v80;
    sub_22B18B868(*(v87 + 48) + *(v82 + 72) * v64, v80, type metadata accessor for SessionKey);
    v67 = (*(v65 + 56) + 2 * v64);
    LODWORD(v64) = *v67;
    v68 = v67[1];
    v69 = v81;
    v16 = (v81 + *(v84 + 48));
    sub_22B19127C(v66, v81, type metadata accessor for SessionKey);
    *v16 = v64;
    v16[1] = v68;
    v70 = v64 == 1;
    a3 = &qword_22B364938;
    if (v70)
    {
      v71 = v79;
      sub_22B170BE0(v69, v79, &qword_27D8BA448, &qword_22B364938);
      v72 = v78[*(v84 + 48)];
      sub_22B1912E4(v71, type metadata accessor for SessionKey);
      if (v72)
      {
        v16 = v79;
        sub_22B170BE0(v69, v79, &qword_27D8BA448, &qword_22B364938);
        v73 = v77;
        sub_22B32E908(v77, v16);
        sub_22B1912E4(v73, type metadata accessor for SessionKey);
      }
    }

    v61 &= v61 - 1;
    sub_22B123284(v69, &qword_27D8BA448, &qword_22B364938);
    v62 = v83;
    v58 = v85;
  }

  while (1)
  {
    v63 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_42;
    }

    if (v63 >= v24)
    {
      break;
    }

    v61 = *(v58 + 8 * v63);
    ++v17;
    if (v61)
    {
      v17 = v63;
      goto LABEL_35;
    }
  }

  return v88;
}

char *sub_22B18C8B8(uint64_t a1, uint64_t a2, void *a3)
{
  v84 = a3;
  Event = type metadata accessor for CDRawLoadEvent(0);
  v82 = *(Event - 8);
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](Event - 8);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v82 - v10;
  v12 = sub_22B35DE9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v18 = sub_22B36081C();
  v83 = [v17 initWithEntityName_];

  sub_22B170BE0(a2, v11, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22B123284(v11, &qword_27D8BA340, &qword_22B363FB0);
    v88 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22B363640;
    v20 = sub_22B35DEDC();
    v21 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v19 + 56) = v21;
    v22 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
    v23 = type metadata accessor for SessionKey(0);
    v24 = a1 + v23[5];
    v25 = sub_22B35DEDC();
    *(v19 + 96) = v21;
    *(v19 + 104) = v22;
    *(v19 + 72) = v25;
    v26 = (a1 + v23[6]);
    v28 = *v26;
    v27 = v26[1];
    v29 = MEMORY[0x277D837D0];
    *(v19 + 136) = MEMORY[0x277D837D0];
    v30 = sub_22B1280E4();
    *(v19 + 144) = v30;
    *(v19 + 112) = v28;
    *(v19 + 120) = v27;
    v31 = (a1 + v23[7]);
    v32 = *v31;
    v33 = v31[1];
    *(v19 + 176) = v29;
    *(v19 + 184) = v30;
    *(v19 + 152) = v32;
    *(v19 + 160) = v33;
    v34 = v23[9];

    v35 = sub_22B35DEDC();
    *(v19 + 216) = v21;
    *(v19 + 224) = v22;
    *(v19 + 192) = v35;
    v36 = sub_22B360CCC();
    v37 = v83;
    [v83 setPredicate_];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v38 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v87 = " %@ AND sessionID == %@";
    v88 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_22B363660;
    v40 = sub_22B35DEDC();
    v41 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
    *(v39 + 56) = v41;
    v42 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
    *(v39 + 64) = v42;
    *(v39 + 32) = v40;
    v43 = type metadata accessor for SessionKey(0);
    v44 = a1 + v43[5];
    v45 = sub_22B35DEDC();
    *(v39 + 96) = v41;
    *(v39 + 104) = v42;
    *(v39 + 72) = v45;
    v46 = (a1 + v43[6]);
    v85 = v16;
    v86 = v12;
    v48 = *v46;
    v47 = v46[1];
    v49 = MEMORY[0x277D837D0];
    *(v39 + 136) = MEMORY[0x277D837D0];
    v50 = sub_22B1280E4();
    *(v39 + 144) = v50;
    *(v39 + 112) = v48;
    *(v39 + 120) = v47;
    v51 = (a1 + v43[7]);
    v52 = *v51;
    v53 = v51[1];
    *(v39 + 176) = v49;
    *(v39 + 184) = v50;
    *(v39 + 152) = v52;
    *(v39 + 160) = v53;
    v54 = v43[9];

    v55 = sub_22B35DEDC();
    *(v39 + 216) = v41;
    *(v39 + 224) = v42;
    *(v39 + 192) = v55;
    v56 = v85;
    v57 = sub_22B35DDDC();
    *(v39 + 256) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v39 + 264) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v39 + 232) = v57;
    v58 = sub_22B360CCC();
    v37 = v83;
    [v83 setPredicate_];

    (*(v13 + 8))(v56, v86);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_22B363650;
  v60 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v61 = sub_22B36081C();
  v62 = [v60 initWithKey:v61 ascending:1];

  *(v59 + 32) = v62;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v63 = sub_22B360A3C();

  [v37 setSortDescriptors_];

  [v37 setResultType_];
  [v37 setFetchBatchSize_];
  v64 = 0;
  v65 = 0;
  v90 = MEMORY[0x277D84F90];
  v66 = v84;
  while (2)
  {
    [v37 setFetchOffset_];
    [v37 setFetchLimit_];
    sub_22B35F46C();
    v67 = sub_22B360E9C();
    if (v65)
    {

      break;
    }

    v68 = v67;
    v69 = v67 >> 62;
    if (!(v67 >> 62))
    {
      v70 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
        goto LABEL_8;
      }

LABEL_28:

      break;
    }

    v70 = sub_22B36109C();
    if (!v70)
    {
      goto LABEL_28;
    }

LABEL_8:
    v85 = 0;
    v86 = v69;
    v88 = v64;
    result = MEMORY[0x23188EEB0]();
    v87 = result;
    v72 = 0;
    v73 = v68 & 0xC000000000000001;
    v74 = v68 & 0xFFFFFFFFFFFFFF8;
    v75 = MEMORY[0x277D84F90];
    v76 = v82;
    v77 = v68;
    do
    {
      if (v73)
      {
        result = MEMORY[0x23188EAC0](v72, v68);
        v78 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v72 >= *(v74 + 16))
        {
          goto LABEL_32;
        }

        result = *(v68 + 8 * v72 + 32);
        v78 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }
      }

      sub_22B181D80(result, v89);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_22B32D55C(0, v75[2] + 1, 1, v75);
      }

      v80 = v75[2];
      v79 = v75[3];
      if (v80 >= v79 >> 1)
      {
        v75 = sub_22B32D55C(v79 > 1, v80 + 1, 1, v75);
      }

      v75[2] = v80 + 1;
      result = sub_22B19127C(v89, v75 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v80, type metadata accessor for CDRawLoadEvent);
      ++v72;
      v68 = v77;
    }

    while (v78 != v70);
    objc_autoreleasePoolPop(v87);
    result = sub_22B35515C(v75);
    v64 = v88 + 50;
    if (__OFADD__(v88, 50))
    {
      goto LABEL_33;
    }

    if (v86)
    {
      v81 = sub_22B36109C();
    }

    else
    {
      v81 = *(v74 + 16);
    }

    v37 = v83;
    v66 = v84;

    if (v81 >= 50)
    {
      [v66 reset];
      v65 = v85;
      continue;
    }

    break;
  }

  [v66 reset];

  return v90;
}

unint64_t sub_22B18D174(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_22B36081C();
  v5 = [v3 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B364620;
  v7 = sub_22B35DEDC();
  v8 = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v6 + 56) = v8;
  v9 = sub_22B176FAC(&qword_281408540, &qword_281408548, 0x277CCAD78);
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v68 = a2;
  v10 = sub_22B35DEDC();
  *(v6 + 96) = v8;
  *(v6 + 104) = v9;
  *(v6 + 72) = v10;
  *(v6 + 136) = MEMORY[0x277D837D0];
  v11 = sub_22B1280E4();
  *(v6 + 144) = v11;
  *(v6 + 112) = 0x6E69676562;
  *(v6 + 120) = 0xE500000000000000;
  v12 = v5;
  v13 = sub_22B360CCC();
  [v5 setPredicate_];

  [v5 setResultType_];
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v14 = sub_22B360E9C();
  v66 = v8;
  if (v14 >> 62)
  {
    v54 = v14;
    v15 = sub_22B36109C();
    v14 = v54;
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v9;
  if (!v15)
  {

    return 0;
  }

  v65 = v12;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23188EAC0](0);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_35:
      sub_22B360A7C();
      goto LABEL_12;
    }

    v17 = *(v14 + 32);
  }

  v18 = v17;

  v19 = [v18 integerValue];

  if (v19)
  {
    v20 = v65;
LABEL_9:

    return 0;
  }

  v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v22 = sub_22B36081C();
  v64 = [v21 initWithEntityName_];

  v69 = MEMORY[0x277D84F90];
  v23 = swift_allocObject();
  v62 = xmmword_22B3634C0;
  *(v23 + 16) = xmmword_22B3634C0;
  v24 = sub_22B35DEDC();
  *(v23 + 56) = v8;
  *(v23 + 64) = v9;
  *(v23 + 32) = v24;
  v25 = sub_22B35DEDC();
  *(v23 + 96) = v8;
  *(v23 + 104) = v9;
  *(v23 + 72) = v25;
  v8 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

LABEL_12:
  v26 = 6581861;
  sub_22B360A9C();
  v27 = swift_allocObject();
  *(v27 + 16) = v62;
  v28 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v11;
  *(v27 + 32) = 0x657669746361;
  *(v27 + 40) = 0xE600000000000000;
  *(v27 + 96) = v28;
  *(v27 + 104) = v11;
  *(v27 + 72) = 6581861;
  *(v27 + 80) = 0xE300000000000000;
  v29 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v55 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B360A7C();
  }

  v61 = v29;
  v63 = v8;
  sub_22B360A9C();
  v30 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  v31 = v66;
  if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v56 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B360A7C();
  }

  sub_22B360A9C();
  v32 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v33 = sub_22B360A3C();

  v34 = [v32 initWithType:1 subpredicates:v33];

  v35 = v64;
  [v64 setPredicate_];
  [v64 setResultType_];
  result = sub_22B360E9C();
  v37 = v30;
  v38 = v68;
  v60 = v34;
  v67 = v37;
  v39 = v65;
  if (result >> 62)
  {
    v57 = result;
    v40 = sub_22B36109C();
    result = v57;
  }

  else
  {
    v40 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v40)
  {

    return 0;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x23188EAC0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v41 = *(result + 32);
  }

  v42 = v41;

  v26 = [v42 integerValue];

  v43 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v44 = sub_22B36081C();
  v45 = [v43 initWithEntityName_];

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22B364840;
  v47 = sub_22B35DEDC();
  *(v46 + 56) = v66;
  *(v46 + 64) = v16;
  *(v46 + 32) = v47;
  v38 = v45;
  v48 = sub_22B35DEDC();
  *(v46 + 96) = v66;
  *(v46 + 104) = v16;
  *(v46 + 72) = v48;
  v49 = MEMORY[0x277D837D0];
  *(v46 + 136) = MEMORY[0x277D837D0];
  *(v46 + 144) = v11;
  *(v46 + 112) = 0x657669746361;
  *(v46 + 120) = 0xE600000000000000;
  *(v46 + 176) = v49;
  *(v46 + 184) = v11;
  *(v46 + 152) = 6581861;
  *(v46 + 160) = 0xE300000000000000;
  v50 = sub_22B360CCC();
  [v45 setPredicate_];

  [v45 setResultType_];
  result = sub_22B360E9C();
  v31 = v65;
  v35 = v64;
  v11 = v63;
  v39 = v67;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

LABEL_40:

    v20 = v61;
    goto LABEL_9;
  }

LABEL_39:
  v58 = result;
  v59 = sub_22B36109C();
  result = v58;
  if (!v59)
  {
    goto LABEL_40;
  }

LABEL_28:
  if ((result & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x23188EAC0](0);
    goto LABEL_31;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(result + 32);
LABEL_31:
    v52 = v51;

    v53 = [v52 integerValue];

    return v26 == v53;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B18DAE8()
{
  v1 = *(type metadata accessor for SessionKey(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v6);
  v10 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v0 + v7);

  return sub_22B189710(v8, (v0 + v2), (v0 + v5), v9, v11, v12, v13);
}

uint64_t sub_22B18DC30(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B18DC68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22B18DCB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Event = type metadata accessor for CDRawLoadEvent(0);
  v7 = *(Event - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Event);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v55 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v57 = &v53 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v53 - v25;
  v27 = *(v7 + 56);
  v27(&v53 - v25, 1, 1, Event, v24);
  v59 = v22;
  v60 = v27;
  v61 = v7 + 56;
  result = (v27)(v22, 1, 1, Event);
  v58 = a3;
  v29 = *a3;
  v30 = Event;
  if (v29 >= 1)
  {
    while (v29 < *(a1 + 16))
    {
      v31 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v32 = *(v7 + 72);
      result = sub_22B35DDEC();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      if (v29-- <= 1)
      {
        v29 = 0;
        v34 = *(a1 + 16);
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_7:
  v34 = *(a1 + 16);
  if (v34 < v29)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_8:
  v62 = a2;
  if (v29 != v34)
  {
    v36 = v29;
    v35 = v29;
    while ((v29 & 0x8000000000000000) == 0)
    {
      v37 = v36;
      sub_22B18B868(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v36, v14, type metadata accessor for CDRawLoadEvent);
      sub_22B35DE9C();
      sub_22B18DC68(&qword_28140B490, 255, MEMORY[0x277CC9578]);
      if (sub_22B36074C())
      {
        v38 = v59;
        sub_22B123284(v59, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v38, type metadata accessor for CDRawLoadEvent);
        (v60)(v38, 0, 1, v30);
        goto LABEL_17;
      }

      ++v36;
      sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
      sub_22B19127C(v14, v26, type metadata accessor for CDRawLoadEvent);
      result = (v60)(v26, 0, 1, v30);
      v35 = v37;
      if (v34 == v37 + 1)
      {
        v35 = v37;
        goto LABEL_15;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = v29;
LABEL_15:
  v38 = v59;
LABEL_17:
  v39 = v57;
  *v58 = v35;
  sub_22B170BE0(v26, v39, &qword_27D8BA428, &qword_22B364920);
  v40 = *(v7 + 48);
  if (v40(v39, 1, v30) == 1)
  {
    sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v39, &qword_27D8BA428, &qword_22B364920);
    return 0;
  }

  v42 = v56;
  sub_22B19127C(v39, v56, type metadata accessor for CDRawLoadEvent);
  v43 = v55;
  sub_22B170BE0(v38, v55, &qword_27D8BA428, &qword_22B364920);
  if (v40(v43, 1, v30) == 1)
  {
    sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v43, &qword_27D8BA428, &qword_22B364920);
    v41 = *(v42 + *(v30 + 68));
    sub_22B1912E4(v42, type metadata accessor for CDRawLoadEvent);
    return v41;
  }

  v44 = v54;
  sub_22B19127C(v43, v54, type metadata accessor for CDRawLoadEvent);
  sub_22B35DE9C();
  sub_22B18DC68(&qword_27D8BA430, 255, MEMORY[0x277CC9578]);
  if (sub_22B36078C())
  {
    sub_22B1912E4(v44, type metadata accessor for CDRawLoadEvent);
    sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
    v41 = *(v42 + *(v30 + 68));
    sub_22B1912E4(v42, type metadata accessor for CDRawLoadEvent);
    return v41;
  }

  sub_22B35DD3C();
  v46 = v45;
  sub_22B35DD3C();
  v48 = v47;
  sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
  v49 = *(v44 + *(v30 + 68));
  sub_22B1912E4(v44, type metadata accessor for CDRawLoadEvent);
  v50 = *(v42 + *(v30 + 68));
  result = sub_22B1912E4(v42, type metadata accessor for CDRawLoadEvent);
  if (__OFSUB__(v49, v50))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v51 = v48 / v46 * (v49 - v50);
  if (COERCE__INT64(fabs(v51)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v52 = __OFADD__(v50, v51);
  v41 = v50 + v51;
  if (!v52)
  {
    return v41;
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_22B18E3FC(uint64_t a1)
{
  v2 = sub_22B35DE9C();
  v114 = *(v2 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v96[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Event = type metadata accessor for CDRawLoadEvent(0);
  v7 = *(Event - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Event);
  v103 = &v96[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v102 = &v96[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v96[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v96[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v104 = &v96[-v19];
  MEMORY[0x28223BE20](v20);
  v100 = &v96[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v96[-v23];
  v26 = MEMORY[0x28223BE20](v25);
  v27 = *(v7 + 56);
  v113 = &v96[-v28];
  v27(v26);
  v106 = v24;
  v116 = Event;
  v111 = v27;
  v112 = v7 + 56;
  (v27)(v24, 1, 1, Event);
  v29 = *(a1 + 16);
  v108 = v7;
  if (!v29)
  {
    LOBYTE(v34) = 0;
    LOBYTE(v31) = 0;
    v33 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v115 = v2;
  v30 = 0;
  v31 = 0;
  v110 = 0;
  v32 = 0;
  v107 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v114 += 8;
  v98 = (v7 + 48);
  v33 = MEMORY[0x277D84F90];
LABEL_3:
  v34 = v30;
  v99 = v30;
  do
  {
    v101 = v34;
    while (1)
    {
      v109 = v33;
      if (v32 >= v29)
      {
        goto LABEL_92;
      }

      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_93;
      }

      Event = *(v108 + 72);
      sub_22B18B868(v107 + Event * v32, v14, type metadata accessor for CDRawLoadEvent);
      sub_22B35D89C();
      v35 = sub_22B35DDFC();
      v36 = *v114;
      (*v114)(v5, v115);
      if (!(v110 & 1 | ((v35 & 1) == 0)))
      {
        v38 = v113;
        sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v38, type metadata accessor for CDRawLoadEvent);
        (v111)(v38, 0, 1, v116);
        if (v33 == v29)
        {
LABEL_45:
          LOBYTE(v31) = 0;
          v33 = v109;
          LOBYTE(v34) = v101;
          goto LABEL_47;
        }

        v39 = v107 + Event * v33;
        while (v33 < v29)
        {
          v32 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_93;
          }

          sub_22B18B868(v39, v14, type metadata accessor for CDRawLoadEvent);
          sub_22B35D89C();
          v40 = sub_22B35DDFC();
          v36(v5, v115);
          if ((v40 & 1) == 0)
          {
            v35 = 0;
            v37 = 0;
            v110 = 0;
            goto LABEL_17;
          }

          v41 = v113;
          sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
          sub_22B19127C(v14, v41, type metadata accessor for CDRawLoadEvent);
          (v111)(v41, 0, 1, v116);
          ++v33;
          v39 += Event;
          if (v32 == v29)
          {
            goto LABEL_45;
          }
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v95 = v106;
        sub_22B123284(v106, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v95, type metadata accessor for CDRawLoadEvent);
        (v111)(v95, 0, 1, v116);
        LOBYTE(v34) = 0;
        LOBYTE(v31) = Event;
        goto LABEL_47;
      }

      v37 = v31;
      ++v32;
LABEL_17:
      sub_22B35D89C();
      v42 = sub_22B35DE4C();
      v36(v5, v115);
      v33 = v109;
      if ((v42 & 1) == 0)
      {
        break;
      }

      v43 = *&v14[*(v116 + 44)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22B32D584(0, *(v33 + 2) + 1, 1, v33);
      }

      Event = *(v33 + 2);
      v44 = *(v33 + 3);
      if (Event >= v44 >> 1)
      {
        v33 = sub_22B32D584((v44 > 1), Event + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = Event + 1;
      *&v33[4 * Event + 32] = v43;
      v31 = 1;
      v110 = 1;
      if (v32 == v29)
      {
        LOBYTE(v34) = v101;
        goto LABEL_47;
      }
    }

    LODWORD(Event) = v35 | v37;
    sub_22B35D86C();
    v97 = sub_22B35DE4C();
    v45 = v115;
    v36(v5, v115);
    if (v97)
    {
      v55 = *&v14[*(v116 + 44)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22B32D584(0, *(v33 + 2) + 1, 1, v33);
      }

      v31 = Event;
      Event = *(v33 + 2);
      v56 = *(v33 + 3);
      if (Event >= v56 >> 1)
      {
        v33 = sub_22B32D584((v56 > 1), Event + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = Event + 1;
      *&v33[4 * Event + 32] = v55;
      v30 = 1;
      LOBYTE(v34) = 1;
      if (v32 == v29)
      {
        break;
      }

      goto LABEL_3;
    }

    sub_22B35D86C();
    v97 = sub_22B35DDEC();
    v36(v5, v45);
    if ((v97 & 1) == 0)
    {
      v34 = v101;
      goto LABEL_29;
    }

    v46 = v100;
    sub_22B170BE0(v106, v100, &qword_27D8BA428, &qword_22B364920);
    v47 = (*v98)(v46, 1, v116);
    v48 = v47 == 1;
    v97 = v47 != 1;
    sub_22B123284(v46, &qword_27D8BA428, &qword_22B364920);
    if (((v97 | v99) & 1) == 0)
    {
      goto LABEL_94;
    }

    v34 = v48 | v101;
LABEL_29:
    sub_22B35D89C();
    v49 = sub_22B35DDEC();
    v36(v5, v115);
    if (v49 & 1) != 0 && (sub_22B35D86C(), v50 = sub_22B35DDFC(), v36(v5, v115), (v50))
    {
      v51 = *&v14[*(v116 + 44)];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_22B32D584(0, *(v33 + 2) + 1, 1, v33);
      }

      v54 = *(v33 + 2);
      v53 = *(v33 + 3);
      if (v54 >= v53 >> 1)
      {
        v33 = sub_22B32D584((v53 > 1), v54 + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = v54 + 1;
      *&v33[4 * v54 + 32] = v51;
      v34 = v101;
    }

    else
    {
      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
    }

    v31 = Event;
  }

  while (v32 != v29);
LABEL_47:
  v57 = v104;
  sub_22B170BE0(v113, v104, &qword_27D8BA428, &qword_22B364920);
  v58 = *(v108 + 48);
  if ((v58)(v57, 1, v116) == 1)
  {
    sub_22B123284(v57, &qword_27D8BA428, &qword_22B364920);
  }

  else
  {
    v14 = v102;
    sub_22B19127C(v57, v102, type metadata accessor for CDRawLoadEvent);
    if ((v31 & 1) == 0)
    {
      v60 = *&v14[*(v116 + 44)];
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v106;
      if (v61)
      {
        goto LABEL_53;
      }

      goto LABEL_96;
    }

    sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
  }

  v59 = v106;
  while (2)
  {
    v64 = v105;
    sub_22B170BE0(v59, v105, &qword_27D8BA428, &qword_22B364920);
    if ((v58)(v64, 1, v116) == 1)
    {
      sub_22B123284(v64, &qword_27D8BA428, &qword_22B364920);
      v65 = *(v33 + 2);
      if (!v65)
      {
        goto LABEL_70;
      }

LABEL_61:
      v68 = *(v33 + 8);
      v69 = v65 - 1;
      if (v65 == 1)
      {
        v60 = *(v33 + 8);
        v70 = v60;
        goto LABEL_87;
      }

      if (v65 > 8)
      {
        v71 = v69 & 0xFFFFFFFFFFFFFFF8 | 1;
        v75 = vdupq_n_s32(v68);
        v76 = (v33 + 52);
        v77 = v69 & 0xFFFFFFFFFFFFFFF8;
        v78 = v75;
        do
        {
          v75 = vminq_s32(v76[-1], v75);
          v78 = vminq_s32(*v76, v78);
          v76 += 2;
          v77 -= 8;
        }

        while (v77);
        v68 = vminvq_s32(vminq_s32(v75, v78));
        if (v69 != (v69 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_74;
        }
      }

      else
      {
        v71 = 1;
LABEL_74:
        v79 = v65 - v71;
        v80 = &v33[4 * v71 + 32];
        do
        {
          v82 = *v80;
          v80 += 4;
          v81 = v82;
          if (v82 < v68)
          {
            v68 = v81;
          }

          --v79;
        }

        while (v79);
      }

      v60 = v68;
      v70 = *(v33 + 8);
      if (v65 >= 9)
      {
        v83 = v69 & 0xFFFFFFFFFFFFFFF8 | 1;
        v84 = vdupq_n_s32(v70);
        v85 = (v33 + 52);
        v86 = v69 & 0xFFFFFFFFFFFFFFF8;
        v87 = v84;
        do
        {
          v84 = vmaxq_s32(v84, v85[-1]);
          v87 = vmaxq_s32(v87, *v85);
          v85 += 2;
          v86 -= 8;
        }

        while (v86);
        v70 = vmaxvq_s32(vmaxq_s32(v84, v87));
        if (v69 == (v69 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_87;
        }
      }

      else
      {
        v83 = 1;
      }

      v88 = v65 - v83;
      v89 = &v33[4 * v83 + 32];
      do
      {
        v91 = *v89;
        v89 += 4;
        v90 = v91;
        if (v70 <= v91)
        {
          v70 = v90;
        }

        --v88;
      }

      while (v88);
    }

    else
    {
      v66 = v64;
      v67 = v103;
      sub_22B19127C(v66, v103, type metadata accessor for CDRawLoadEvent);
      if (v34)
      {
        sub_22B1912E4(v67, type metadata accessor for CDRawLoadEvent);
        v65 = *(v33 + 2);
        if (!v65)
        {
          goto LABEL_70;
        }

        goto LABEL_61;
      }

      v72 = *&v67[*(v116 + 44)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22B32D584(0, *(v33 + 2) + 1, 1, v33);
      }

      v74 = *(v33 + 2);
      v73 = *(v33 + 3);
      if (v74 >= v73 >> 1)
      {
        v33 = sub_22B32D584((v73 > 1), v74 + 1, 1, v33);
      }

      sub_22B1912E4(v103, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = v74 + 1;
      *&v33[4 * v74 + 32] = v72;
      v65 = *(v33 + 2);
      if (v65)
      {
        goto LABEL_61;
      }

LABEL_70:
      v60 = 0;
      v70 = 0;
    }

LABEL_87:
    v92 = v65 == 0;

    v58 = &qword_22B364920;
    sub_22B123284(v59, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v113, &qword_27D8BA428, &qword_22B364920);
    if (v92)
    {
      v93 = 0;
    }

    else
    {
      v93 = v70;
    }

    if (v93 < v60)
    {
      __break(1u);
LABEL_96:
      v33 = sub_22B32D584(0, *(v33 + 2) + 1, 1, v33);
LABEL_53:
      v63 = *(v33 + 2);
      v62 = *(v33 + 3);
      if (v63 >= v62 >> 1)
      {
        v33 = sub_22B32D584((v62 > 1), v63 + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = v63 + 1;
      *&v33[4 * v63 + 32] = v60;
      continue;
    }

    return v60 | (v93 << 32);
  }
}

uint64_t sub_22B18F110(uint64_t a1)
{
  v2 = sub_22B35DE9C();
  v117 = *(v2 - 8);
  v3 = *(v117 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v99[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Event = type metadata accessor for CDRawLoadEvent(0);
  v7 = *(Event - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Event);
  v106 = &v99[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v105 = &v99[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v99[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v99[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v107 = &v99[-v19];
  MEMORY[0x28223BE20](v20);
  v103 = &v99[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v99[-v23];
  v26 = MEMORY[0x28223BE20](v25);
  v27 = *(v7 + 56);
  v116 = &v99[-v28];
  v27(v26);
  v109 = v24;
  v119 = Event;
  v114 = v27;
  v115 = v7 + 56;
  (v27)(v24, 1, 1, Event);
  v29 = *(a1 + 16);
  v111 = v7;
  if (!v29)
  {
    LOBYTE(v34) = 0;
    LOBYTE(v31) = 0;
    v33 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v118 = v2;
  v30 = 0;
  v31 = 0;
  v113 = 0;
  v32 = 0;
  v110 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v117 += 8;
  v101 = (v7 + 48);
  v33 = MEMORY[0x277D84F90];
LABEL_3:
  v34 = v30;
  v102 = v30;
  do
  {
    v104 = v34;
    while (1)
    {
      v112 = v33;
      if (v32 >= v29)
      {
        goto LABEL_89;
      }

      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_90;
      }

      Event = *(v111 + 72);
      sub_22B18B868(v110 + Event * v32, v14, type metadata accessor for CDRawLoadEvent);
      sub_22B35D89C();
      v35 = sub_22B35DDFC();
      v36 = *v117;
      (*v117)(v5, v118);
      if (!(v113 & 1 | ((v35 & 1) == 0)))
      {
        v38 = v116;
        sub_22B123284(v116, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v38, type metadata accessor for CDRawLoadEvent);
        (v114)(v38, 0, 1, v119);
        if (v33 == v29)
        {
LABEL_45:
          LOBYTE(v31) = 0;
          v33 = v112;
          LOBYTE(v34) = v104;
          goto LABEL_47;
        }

        v39 = v110 + Event * v33;
        while (v33 < v29)
        {
          v32 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_90;
          }

          sub_22B18B868(v39, v14, type metadata accessor for CDRawLoadEvent);
          sub_22B35D89C();
          v40 = sub_22B35DDFC();
          v36(v5, v118);
          if ((v40 & 1) == 0)
          {
            v35 = 0;
            v37 = 0;
            v113 = 0;
            goto LABEL_17;
          }

          v41 = v116;
          sub_22B123284(v116, &qword_27D8BA428, &qword_22B364920);
          sub_22B19127C(v14, v41, type metadata accessor for CDRawLoadEvent);
          (v114)(v41, 0, 1, v119);
          ++v33;
          v39 += Event;
          if (v32 == v29)
          {
            goto LABEL_45;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        v98 = v109;
        sub_22B123284(v109, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v98, type metadata accessor for CDRawLoadEvent);
        (v114)(v98, 0, 1, v119);
        LOBYTE(v34) = 0;
        LOBYTE(v31) = Event;
        goto LABEL_47;
      }

      v37 = v31;
      ++v32;
LABEL_17:
      sub_22B35D89C();
      v42 = sub_22B35DE4C();
      v36(v5, v118);
      v33 = v112;
      if ((v42 & 1) == 0)
      {
        break;
      }

      v43 = *&v14[*(v119 + 72)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
      }

      Event = *(v33 + 2);
      v44 = *(v33 + 3);
      if (Event >= v44 >> 1)
      {
        v33 = sub_22B32D688((v44 > 1), Event + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = Event + 1;
      *&v33[8 * Event + 32] = v43;
      v31 = 1;
      v113 = 1;
      if (v32 == v29)
      {
        LOBYTE(v34) = v104;
        goto LABEL_47;
      }
    }

    LODWORD(Event) = v35 | v37;
    sub_22B35D86C();
    v100 = sub_22B35DE4C();
    v45 = v118;
    v36(v5, v118);
    if (v100)
    {
      v55 = *&v14[*(v119 + 72)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
      }

      v31 = Event;
      Event = *(v33 + 2);
      v56 = *(v33 + 3);
      if (Event >= v56 >> 1)
      {
        v33 = sub_22B32D688((v56 > 1), Event + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = Event + 1;
      *&v33[8 * Event + 32] = v55;
      v30 = 1;
      LOBYTE(v34) = 1;
      if (v32 == v29)
      {
        break;
      }

      goto LABEL_3;
    }

    sub_22B35D86C();
    v100 = sub_22B35DDEC();
    v36(v5, v45);
    if ((v100 & 1) == 0)
    {
      v34 = v104;
      goto LABEL_29;
    }

    v46 = v103;
    sub_22B170BE0(v109, v103, &qword_27D8BA428, &qword_22B364920);
    v47 = (*v101)(v46, 1, v119);
    v48 = v47 == 1;
    v100 = v47 != 1;
    sub_22B123284(v46, &qword_27D8BA428, &qword_22B364920);
    if (((v100 | v102) & 1) == 0)
    {
      goto LABEL_91;
    }

    v34 = v48 | v104;
LABEL_29:
    sub_22B35D89C();
    v49 = sub_22B35DDEC();
    v36(v5, v118);
    if (v49 & 1) != 0 && (sub_22B35D86C(), v50 = sub_22B35DDFC(), v36(v5, v118), (v50))
    {
      v51 = *&v14[*(v119 + 72)];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
      }

      v54 = *(v33 + 2);
      v53 = *(v33 + 3);
      if (v54 >= v53 >> 1)
      {
        v33 = sub_22B32D688((v53 > 1), v54 + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = v54 + 1;
      *&v33[8 * v54 + 32] = v51;
      v34 = v104;
    }

    else
    {
      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
    }

    v31 = Event;
  }

  while (v32 != v29);
LABEL_47:
  v57 = v107;
  sub_22B170BE0(v116, v107, &qword_27D8BA428, &qword_22B364920);
  v58 = *(v111 + 48);
  if (v58(v57, 1, v119) == 1)
  {
    sub_22B123284(v57, &qword_27D8BA428, &qword_22B364920);
    goto LABEL_51;
  }

  v59 = v105;
  sub_22B19127C(v57, v105, type metadata accessor for CDRawLoadEvent);
  if (v31)
  {
    sub_22B1912E4(v59, type metadata accessor for CDRawLoadEvent);
LABEL_51:
    v60 = v109;
  }

  else
  {
    v61 = *&v59[*(v119 + 72)];
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v109;
    if ((v62 & 1) == 0)
    {
      v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
    }

    v64 = *(v33 + 2);
    v63 = *(v33 + 3);
    if (v64 >= v63 >> 1)
    {
      v33 = sub_22B32D688((v63 > 1), v64 + 1, 1, v33);
    }

    sub_22B1912E4(v59, type metadata accessor for CDRawLoadEvent);
    *(v33 + 2) = v64 + 1;
    *&v33[8 * v64 + 32] = v61;
  }

  v65 = v108;
  sub_22B170BE0(v60, v108, &qword_27D8BA428, &qword_22B364920);
  if (v58(v65, 1, v119) == 1)
  {
    sub_22B123284(v65, &qword_27D8BA428, &qword_22B364920);
    v66 = *(v33 + 2);
    if (!v66)
    {
      goto LABEL_71;
    }

LABEL_62:
    v69 = *(v33 + 4);
    v70 = v66 - 1;
    if (v66 == 1)
    {
      v71 = *(v33 + 32);
      goto LABEL_88;
    }

    if (v66 >= 5)
    {
      v76 = vdupq_n_s64(v69);
      v72 = v70 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v77 = (v33 + 56);
      v78 = v70 & 0xFFFFFFFFFFFFFFFCLL;
      v79 = v76;
      do
      {
        v76 = vbslq_s8(vcgtq_s64(v76, v77[-1]), v77[-1], v76);
        v79 = vbslq_s8(vcgtq_s64(v79, *v77), *v77, v79);
        v77 += 2;
        v78 -= 4;
      }

      while (v78);
      v80 = vbslq_s8(vcgtq_s64(v79, v76), v76, v79);
      v81 = vextq_s8(v80, v80, 8uLL).u64[0];
      v71 = vbsl_s8(vcgtd_s64(v81, v80.i64[0]), *v80.i8, v81);
      if (v70 != (v70 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_75;
      }
    }

    else
    {
      v72 = 1;
      v71 = *(v33 + 32);
LABEL_75:
      v82 = v66 - v72;
      v83 = &v33[8 * v72 + 32];
      do
      {
        v85 = *v83;
        v83 += 8;
        v84 = v85;
        if (*&v85 < *&v71)
        {
          v71 = v84;
        }

        --v82;
      }

      while (v82);
    }

    if (v66 >= 5)
    {
      v86 = v70 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v87 = vdupq_n_s64(v69);
      v88 = (v33 + 56);
      v89 = v70 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = v87;
      do
      {
        v87 = vbslq_s8(vcgtq_s64(v87, v88[-1]), v87, v88[-1]);
        v90 = vbslq_s8(vcgtq_s64(v90, *v88), v90, *v88);
        v88 += 2;
        v89 -= 4;
      }

      while (v89);
      v91 = vbslq_s8(vcgtq_s64(v87, v90), v87, v90);
      v92 = vextq_s8(v91, v91, 8uLL).u64[0];
      v69 = vbsl_s8(vcgtd_s64(v91.i64[0], v92), *v91.i8, v92);
      if (v70 != (v70 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v86 = 1;
LABEL_84:
      v93 = v66 - v86;
      v94 = &v33[8 * v86 + 32];
      do
      {
        v96 = *v94++;
        v95 = v96;
        if (v69 <= v96)
        {
          v69 = v95;
        }

        --v93;
      }

      while (v93);
    }
  }

  else
  {
    v67 = v65;
    v68 = v106;
    sub_22B19127C(v67, v106, type metadata accessor for CDRawLoadEvent);
    if (v34)
    {
      sub_22B1912E4(v68, type metadata accessor for CDRawLoadEvent);
      v66 = *(v33 + 2);
      if (!v66)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    v73 = *&v68[*(v119 + 72)];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
    }

    v75 = *(v33 + 2);
    v74 = *(v33 + 3);
    if (v75 >= v74 >> 1)
    {
      v33 = sub_22B32D688((v74 > 1), v75 + 1, 1, v33);
    }

    sub_22B1912E4(v106, type metadata accessor for CDRawLoadEvent);
    *(v33 + 2) = v75 + 1;
    *&v33[8 * v75 + 32] = v73;
    v66 = *(v33 + 2);
    if (v66)
    {
      goto LABEL_62;
    }

LABEL_71:
    v71 = 0;
  }

LABEL_88:

  sub_22B123284(v60, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v116, &qword_27D8BA428, &qword_22B364920);
  return v71;
}

uint64_t sub_22B18FE20(uint64_t a1)
{
  v2 = sub_22B35DE9C();
  v117 = *(v2 - 8);
  v3 = *(v117 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v99[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Event = type metadata accessor for CDRawLoadEvent(0);
  v7 = *(Event - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Event);
  v106 = &v99[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v105 = &v99[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v99[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v99[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v107 = &v99[-v19];
  MEMORY[0x28223BE20](v20);
  v103 = &v99[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v99[-v23];
  v26 = MEMORY[0x28223BE20](v25);
  v27 = *(v7 + 56);
  v116 = &v99[-v28];
  v27(v26);
  v109 = v24;
  v119 = Event;
  v114 = v27;
  v115 = v7 + 56;
  (v27)(v24, 1, 1, Event);
  v29 = *(a1 + 16);
  v111 = v7;
  if (!v29)
  {
    LOBYTE(v34) = 0;
    LOBYTE(v31) = 0;
    v33 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v118 = v2;
  v30 = 0;
  v31 = 0;
  v113 = 0;
  v32 = 0;
  v110 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v117 += 8;
  v101 = (v7 + 48);
  v33 = MEMORY[0x277D84F90];
LABEL_3:
  v34 = v30;
  v102 = v30;
  do
  {
    v104 = v34;
    while (1)
    {
      v112 = v33;
      if (v32 >= v29)
      {
        goto LABEL_89;
      }

      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_90;
      }

      Event = *(v111 + 72);
      sub_22B18B868(v110 + Event * v32, v14, type metadata accessor for CDRawLoadEvent);
      sub_22B35D89C();
      v35 = sub_22B35DDFC();
      v36 = *v117;
      (*v117)(v5, v118);
      if (!(v113 & 1 | ((v35 & 1) == 0)))
      {
        v38 = v116;
        sub_22B123284(v116, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v38, type metadata accessor for CDRawLoadEvent);
        (v114)(v38, 0, 1, v119);
        if (v33 == v29)
        {
LABEL_45:
          LOBYTE(v31) = 0;
          v33 = v112;
          LOBYTE(v34) = v104;
          goto LABEL_47;
        }

        v39 = v110 + Event * v33;
        while (v33 < v29)
        {
          v32 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_90;
          }

          sub_22B18B868(v39, v14, type metadata accessor for CDRawLoadEvent);
          sub_22B35D89C();
          v40 = sub_22B35DDFC();
          v36(v5, v118);
          if ((v40 & 1) == 0)
          {
            v35 = 0;
            v37 = 0;
            v113 = 0;
            goto LABEL_17;
          }

          v41 = v116;
          sub_22B123284(v116, &qword_27D8BA428, &qword_22B364920);
          sub_22B19127C(v14, v41, type metadata accessor for CDRawLoadEvent);
          (v114)(v41, 0, 1, v119);
          ++v33;
          v39 += Event;
          if (v32 == v29)
          {
            goto LABEL_45;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        v98 = v109;
        sub_22B123284(v109, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v98, type metadata accessor for CDRawLoadEvent);
        (v114)(v98, 0, 1, v119);
        LOBYTE(v34) = 0;
        LOBYTE(v31) = Event;
        goto LABEL_47;
      }

      v37 = v31;
      ++v32;
LABEL_17:
      sub_22B35D89C();
      v42 = sub_22B35DE4C();
      v36(v5, v118);
      v33 = v112;
      if ((v42 & 1) == 0)
      {
        break;
      }

      v43 = *&v14[*(v119 + 80)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
      }

      Event = *(v33 + 2);
      v44 = *(v33 + 3);
      if (Event >= v44 >> 1)
      {
        v33 = sub_22B32D688((v44 > 1), Event + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = Event + 1;
      *&v33[8 * Event + 32] = v43;
      v31 = 1;
      v113 = 1;
      if (v32 == v29)
      {
        LOBYTE(v34) = v104;
        goto LABEL_47;
      }
    }

    LODWORD(Event) = v35 | v37;
    sub_22B35D86C();
    v100 = sub_22B35DE4C();
    v45 = v118;
    v36(v5, v118);
    if (v100)
    {
      v55 = *&v14[*(v119 + 80)];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
      }

      v31 = Event;
      Event = *(v33 + 2);
      v56 = *(v33 + 3);
      if (Event >= v56 >> 1)
      {
        v33 = sub_22B32D688((v56 > 1), Event + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = Event + 1;
      *&v33[8 * Event + 32] = v55;
      v30 = 1;
      LOBYTE(v34) = 1;
      if (v32 == v29)
      {
        break;
      }

      goto LABEL_3;
    }

    sub_22B35D86C();
    v100 = sub_22B35DDEC();
    v36(v5, v45);
    if ((v100 & 1) == 0)
    {
      v34 = v104;
      goto LABEL_29;
    }

    v46 = v103;
    sub_22B170BE0(v109, v103, &qword_27D8BA428, &qword_22B364920);
    v47 = (*v101)(v46, 1, v119);
    v48 = v47 == 1;
    v100 = v47 != 1;
    sub_22B123284(v46, &qword_27D8BA428, &qword_22B364920);
    if (((v100 | v102) & 1) == 0)
    {
      goto LABEL_91;
    }

    v34 = v48 | v104;
LABEL_29:
    sub_22B35D89C();
    v49 = sub_22B35DDEC();
    v36(v5, v118);
    if (v49 & 1) != 0 && (sub_22B35D86C(), v50 = sub_22B35DDFC(), v36(v5, v118), (v50))
    {
      v51 = *&v14[*(v119 + 80)];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
      }

      v54 = *(v33 + 2);
      v53 = *(v33 + 3);
      if (v54 >= v53 >> 1)
      {
        v33 = sub_22B32D688((v53 > 1), v54 + 1, 1, v33);
      }

      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
      *(v33 + 2) = v54 + 1;
      *&v33[8 * v54 + 32] = v51;
      v34 = v104;
    }

    else
    {
      sub_22B1912E4(v14, type metadata accessor for CDRawLoadEvent);
    }

    v31 = Event;
  }

  while (v32 != v29);
LABEL_47:
  v57 = v107;
  sub_22B170BE0(v116, v107, &qword_27D8BA428, &qword_22B364920);
  v58 = *(v111 + 48);
  if (v58(v57, 1, v119) == 1)
  {
    sub_22B123284(v57, &qword_27D8BA428, &qword_22B364920);
    goto LABEL_51;
  }

  v59 = v105;
  sub_22B19127C(v57, v105, type metadata accessor for CDRawLoadEvent);
  if (v31)
  {
    sub_22B1912E4(v59, type metadata accessor for CDRawLoadEvent);
LABEL_51:
    v60 = v109;
  }

  else
  {
    v61 = *&v59[*(v119 + 80)];
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v109;
    if ((v62 & 1) == 0)
    {
      v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
    }

    v64 = *(v33 + 2);
    v63 = *(v33 + 3);
    if (v64 >= v63 >> 1)
    {
      v33 = sub_22B32D688((v63 > 1), v64 + 1, 1, v33);
    }

    sub_22B1912E4(v59, type metadata accessor for CDRawLoadEvent);
    *(v33 + 2) = v64 + 1;
    *&v33[8 * v64 + 32] = v61;
  }

  v65 = v108;
  sub_22B170BE0(v60, v108, &qword_27D8BA428, &qword_22B364920);
  if (v58(v65, 1, v119) == 1)
  {
    sub_22B123284(v65, &qword_27D8BA428, &qword_22B364920);
    v66 = *(v33 + 2);
    if (!v66)
    {
      goto LABEL_71;
    }

LABEL_62:
    v69 = *(v33 + 4);
    v70 = v66 - 1;
    if (v66 == 1)
    {
      v71 = *(v33 + 32);
      goto LABEL_88;
    }

    if (v66 >= 5)
    {
      v76 = vdupq_n_s64(v69);
      v72 = v70 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v77 = (v33 + 56);
      v78 = v70 & 0xFFFFFFFFFFFFFFFCLL;
      v79 = v76;
      do
      {
        v76 = vbslq_s8(vcgtq_s64(v76, v77[-1]), v77[-1], v76);
        v79 = vbslq_s8(vcgtq_s64(v79, *v77), *v77, v79);
        v77 += 2;
        v78 -= 4;
      }

      while (v78);
      v80 = vbslq_s8(vcgtq_s64(v79, v76), v76, v79);
      v81 = vextq_s8(v80, v80, 8uLL).u64[0];
      v71 = vbsl_s8(vcgtd_s64(v81, v80.i64[0]), *v80.i8, v81);
      if (v70 != (v70 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_75;
      }
    }

    else
    {
      v72 = 1;
      v71 = *(v33 + 32);
LABEL_75:
      v82 = v66 - v72;
      v83 = &v33[8 * v72 + 32];
      do
      {
        v85 = *v83;
        v83 += 8;
        v84 = v85;
        if (*&v85 < *&v71)
        {
          v71 = v84;
        }

        --v82;
      }

      while (v82);
    }

    if (v66 >= 5)
    {
      v86 = v70 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v87 = vdupq_n_s64(v69);
      v88 = (v33 + 56);
      v89 = v70 & 0xFFFFFFFFFFFFFFFCLL;
      v90 = v87;
      do
      {
        v87 = vbslq_s8(vcgtq_s64(v87, v88[-1]), v87, v88[-1]);
        v90 = vbslq_s8(vcgtq_s64(v90, *v88), v90, *v88);
        v88 += 2;
        v89 -= 4;
      }

      while (v89);
      v91 = vbslq_s8(vcgtq_s64(v87, v90), v87, v90);
      v92 = vextq_s8(v91, v91, 8uLL).u64[0];
      v69 = vbsl_s8(vcgtd_s64(v91.i64[0], v92), *v91.i8, v92);
      if (v70 != (v70 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v86 = 1;
LABEL_84:
      v93 = v66 - v86;
      v94 = &v33[8 * v86 + 32];
      do
      {
        v96 = *v94++;
        v95 = v96;
        if (v69 <= v96)
        {
          v69 = v95;
        }

        --v93;
      }

      while (v93);
    }
  }

  else
  {
    v67 = v65;
    v68 = v106;
    sub_22B19127C(v67, v106, type metadata accessor for CDRawLoadEvent);
    if (v34)
    {
      sub_22B1912E4(v68, type metadata accessor for CDRawLoadEvent);
      v66 = *(v33 + 2);
      if (!v66)
      {
        goto LABEL_71;
      }

      goto LABEL_62;
    }

    v73 = *&v68[*(v119 + 80)];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_22B32D688(0, *(v33 + 2) + 1, 1, v33);
    }

    v75 = *(v33 + 2);
    v74 = *(v33 + 3);
    if (v75 >= v74 >> 1)
    {
      v33 = sub_22B32D688((v74 > 1), v75 + 1, 1, v33);
    }

    sub_22B1912E4(v106, type metadata accessor for CDRawLoadEvent);
    *(v33 + 2) = v75 + 1;
    *&v33[8 * v75 + 32] = v73;
    v66 = *(v33 + 2);
    if (v66)
    {
      goto LABEL_62;
    }

LABEL_71:
    v71 = 0;
  }

LABEL_88:

  sub_22B123284(v60, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v116, &qword_27D8BA428, &qword_22B364920);
  return v71;
}

uint64_t sub_22B190B30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Event = type metadata accessor for CDRawLoadEvent(0);
  v7 = *(Event - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Event);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA428, &qword_22B364920);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v55 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v57 = &v53 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v53 - v25;
  v27 = *(v7 + 56);
  v27(&v53 - v25, 1, 1, Event, v24);
  v59 = v22;
  v60 = v27;
  v61 = v7 + 56;
  result = (v27)(v22, 1, 1, Event);
  v58 = a3;
  v29 = *a3;
  v30 = Event;
  if (v29 >= 1)
  {
    while (v29 < *(a1 + 16))
    {
      v31 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v32 = *(v7 + 72);
      result = sub_22B35DDEC();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }

      if (v29-- <= 1)
      {
        v29 = 0;
        v34 = *(a1 + 16);
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_7:
  v34 = *(a1 + 16);
  if (v34 < v29)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_8:
  v62 = a2;
  if (v29 != v34)
  {
    v36 = v29;
    v35 = v29;
    while ((v29 & 0x8000000000000000) == 0)
    {
      v37 = v36;
      sub_22B18B868(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v36, v14, type metadata accessor for CDRawLoadEvent);
      sub_22B35DE9C();
      sub_22B18DC68(&qword_28140B490, 255, MEMORY[0x277CC9578]);
      if (sub_22B36074C())
      {
        v38 = v59;
        sub_22B123284(v59, &qword_27D8BA428, &qword_22B364920);
        sub_22B19127C(v14, v38, type metadata accessor for CDRawLoadEvent);
        (v60)(v38, 0, 1, v30);
        goto LABEL_17;
      }

      ++v36;
      sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
      sub_22B19127C(v14, v26, type metadata accessor for CDRawLoadEvent);
      result = (v60)(v26, 0, 1, v30);
      v35 = v37;
      if (v34 == v37 + 1)
      {
        v35 = v37;
        goto LABEL_15;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = v29;
LABEL_15:
  v38 = v59;
LABEL_17:
  v39 = v57;
  *v58 = v35;
  sub_22B170BE0(v26, v39, &qword_27D8BA428, &qword_22B364920);
  v40 = *(v7 + 48);
  if (v40(v39, 1, v30) == 1)
  {
    sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v39, &qword_27D8BA428, &qword_22B364920);
    return 0;
  }

  v42 = v56;
  sub_22B19127C(v39, v56, type metadata accessor for CDRawLoadEvent);
  v43 = v55;
  sub_22B170BE0(v38, v55, &qword_27D8BA428, &qword_22B364920);
  if (v40(v43, 1, v30) == 1)
  {
    sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v43, &qword_27D8BA428, &qword_22B364920);
    v41 = *(v42 + *(v30 + 76));
    sub_22B1912E4(v42, type metadata accessor for CDRawLoadEvent);
    return v41;
  }

  v44 = v54;
  sub_22B19127C(v43, v54, type metadata accessor for CDRawLoadEvent);
  sub_22B35DE9C();
  sub_22B18DC68(&qword_27D8BA430, 255, MEMORY[0x277CC9578]);
  if (sub_22B36078C())
  {
    sub_22B1912E4(v44, type metadata accessor for CDRawLoadEvent);
    sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
    sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
    v41 = *(v42 + *(v30 + 76));
    sub_22B1912E4(v42, type metadata accessor for CDRawLoadEvent);
    return v41;
  }

  sub_22B35DD3C();
  v46 = v45;
  sub_22B35DD3C();
  v48 = v47;
  sub_22B123284(v38, &qword_27D8BA428, &qword_22B364920);
  sub_22B123284(v26, &qword_27D8BA428, &qword_22B364920);
  v49 = *(v44 + *(v30 + 76));
  sub_22B1912E4(v44, type metadata accessor for CDRawLoadEvent);
  v50 = *(v42 + *(v30 + 76));
  result = sub_22B1912E4(v42, type metadata accessor for CDRawLoadEvent);
  if (__OFSUB__(v49, v50))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v51 = v48 / v46 * (v49 - v50);
  if (COERCE__INT64(fabs(v51)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v51 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v51 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v52 = __OFADD__(v50, v51);
  v41 = v50 + v51;
  if (!v52)
  {
    return v41;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22B19127C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B1912E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_22B1913C8()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22B35DE9C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B1829B0(v0 + v2, v0 + v5, v6);
}

uint64_t objectdestroy_30Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_22B1915F0(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v5);
}

uint64_t sub_22B1916C8()
{
  result = sub_22B35DE9C();
  if (v1 <= 0x3F)
  {
    result = sub_22B35DF1C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B1917C0()
{
  result = sub_22B35DF1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22B191868()
{
  sub_22B35DF1C();
  if (v0 <= 0x3F)
  {
    sub_22B35DE9C();
    if (v1 <= 0x3F)
    {
      sub_22B191954();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B191954()
{
  if (!qword_27D8BA498)
  {
    v0 = sub_22B36077C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8BA498);
    }
  }
}

uint64_t sub_22B191A78()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22B191B04()
{
  type metadata accessor for UtilityDiscoveryNotification();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_28140BC48 = v0;
  return result;
}

uint64_t sub_22B191B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = sub_22B36052C();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v10 = sub_22B35DF1C();
  v6[20] = v10;
  v11 = *(v10 - 8);
  v6[21] = v11;
  v12 = *(v11 + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B191C8C, v5, 0);
}

uint64_t sub_22B191C8C()
{
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v5 = v0[8];
  v4 = v0[9];
  sub_22B35F45C();

  sub_22B35F1EC();
  sub_22B35DEAC();
  v6 = sub_22B35DECC();
  v8 = v7;
  v0[23] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_22B191DE4;

  return sub_22B22250C(v6, v8, 1, 1);
}

uint64_t sub_22B191DE4(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_22B191F18, v4, 0);
}

uint64_t sub_22B191F18()
{
  v55 = v0;
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[25];
    v3 = sub_22B35F12C();
    if (v4)
    {
      v5 = v3;
      v6 = v4;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        if (qword_28140A0C8[0] != -1)
        {
          swift_once();
        }

        v8 = v0[19];
        v9 = v0[14];
        v10 = v0[15];
        v11 = v0[11];
        v12 = __swift_project_value_buffer(v9, qword_28140BD10);
        swift_beginAccess();
        (*(v10 + 16))(v8, v12, v9);

        v13 = sub_22B36050C();
        v14 = sub_22B360D0C();

        v15 = os_log_type_enabled(v13, v14);
        v16 = v0[19];
        v18 = v0[14];
        v17 = v0[15];
        if (v15)
        {
          v53 = v0[19];
          v20 = v0[10];
          v19 = v0[11];
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v54 = v22;
          *v21 = 136315138;
          *(v21 + 4) = sub_22B1A7B20(v20, v19, &v54);
          _os_log_impl(&dword_22B116000, v13, v14, "[UtilityDiscoveryNotification] Already onboarded for %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x23188F650](v22, -1, -1);
          MEMORY[0x23188F650](v21, -1, -1);

          (*(v17 + 8))(v53, v18);
        }

        else
        {

          (*(v17 + 8))(v16, v18);
        }

        v47 = v0[22];
        v48 = v0[18];
        v49 = v0[19];
        v51 = v0[16];
        v50 = v0[17];

        v52 = v0[1];

        return v52(0);
      }
    }
  }

  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v23 = v0[18];
  v24 = v0[14];
  v25 = v0[15];
  v26 = v0[11];
  v27 = __swift_project_value_buffer(v24, qword_28140BD10);
  v0[26] = v27;
  swift_beginAccess();
  v28 = *(v25 + 16);
  v0[27] = v28;
  v0[28] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v23, v27, v24);

  v29 = sub_22B36050C();
  v30 = sub_22B360D0C();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[18];
  v33 = v0[14];
  v34 = v0[15];
  if (v31)
  {
    v36 = v0[10];
    v35 = v0[11];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22B1A7B20(v36, v35, &v54);
    _os_log_impl(&dword_22B116000, v29, v30, "[UtilityDiscoveryNotification] Not onboarded for %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x23188F650](v38, -1, -1);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  v39 = *(v34 + 8);
  v39(v32, v33);
  v0[29] = v39;
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v40 = v0[12];
  v0[30] = qword_28140BCB0;

  [v40 coordinate];
  v42 = v41;
  v44 = v43;
  v45 = swift_task_alloc();
  v0[31] = v45;
  *v45 = v0;
  v45[1] = sub_22B1923F0;

  return sub_22B2029CC(v42, v44);
}

uint64_t sub_22B1923F0(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B192524, v4, 0);
}

uint64_t sub_22B192524()
{
  v45 = v0;
  v1 = *(v0 + 256);
  if (!v1)
  {
LABEL_6:
    v20 = *(v0 + 224);
    v21 = *(v0 + 88);
    (*(v0 + 216))(*(v0 + 128), *(v0 + 208), *(v0 + 112));

    v22 = sub_22B36050C();
    v23 = sub_22B360D0C();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 232);
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 112);
    if (v24)
    {
      v43 = *(v0 + 232);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_22B1A7B20(v30, v29, &v44);
      _os_log_impl(&dword_22B116000, v22, v23, "[UtilityDiscoveryNotification] No utility detected for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);

      v43(v26, v28);
    }

    else
    {

      v25(v26, v28);
    }

    v33 = 0;
    goto LABEL_12;
  }

  if (!*(v1 + 16))
  {
    v19 = *(v0 + 256);

    goto LABEL_6;
  }

  v2 = *(v0 + 224);
  v3 = *(v0 + 88);
  (*(v0 + 216))(*(v0 + 136), *(v0 + 208), *(v0 + 112));

  v4 = sub_22B36050C();
  v5 = sub_22B360D0C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 232);
  v8 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  if (v6)
  {
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v42 = *(v0 + 232);
    v13 = swift_slowAlloc();
    v41 = v8;
    v14 = swift_slowAlloc();
    v44 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v44);
    *(v13 + 12) = 2080;
    v15 = MEMORY[0x23188E390](v1, MEMORY[0x277D837D0]);
    v17 = v16;

    v18 = sub_22B1A7B20(v15, v17, &v44);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_22B116000, v4, v5, "[UtilityDiscoveryNotification] Utility detected for %s.%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v42(v41, v10);
  }

  else
  {

    v7(v8, v10);
  }

  v33 = 1;
LABEL_12:
  v34 = *(v0 + 176);
  v36 = *(v0 + 144);
  v35 = *(v0 + 152);
  v38 = *(v0 + 128);
  v37 = *(v0 + 136);

  v39 = *(v0 + 8);

  return v39(v33);
}

uint64_t sub_22B1928C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a3;
  v5[14] = a4;
  v5[11] = a1;
  v5[12] = a2;
  v6 = sub_22B35DF1C();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = *(*(sub_22B3607EC() - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v13 = *(*(sub_22B35DF8C() - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v14 = *(*(sub_22B36080C() - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B192A80, v4, 0);
}

uint64_t sub_22B192A80()
{
  v63 = v0;
  v1 = *(v0 + 200);
  sub_22B3607AC();
  if (qword_27D8BA000 != -1)
  {
    swift_once();
  }

  v2 = qword_27D8BB248;
  sub_22B35DF3C();
  v59 = v2;
  v3 = [v2 localizations];
  sub_22B360A5C();

  v4 = objc_opt_self();
  v5 = sub_22B360A3C();
  v6 = sub_22B360A3C();
  v57 = v4;
  v7 = [v4 preferredLocalizationsFromArray:v5 forPreferences:v6];

  v8 = sub_22B360A5C();
  v9 = *(v0 + 184);
  if (v8[2])
  {
    v10 = v8[4];
    v11 = v8[5];
  }

  sub_22B35DF2C();
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);

  v18 = v59;
  v19 = sub_22B3608AC();
  v21 = v20;
  sub_22B3607DC();
  sub_22B3607CC();
  sub_22B3607BC();
  sub_22B3607CC();
  sub_22B3607FC();
  sub_22B35DF3C();
  v22 = [v18 localizations];
  sub_22B360A5C();

  v23 = sub_22B360A3C();
  v24 = sub_22B360A3C();
  v25 = [v57 preferredLocalizationsFromArray:v23 forPreferences:v24];

  v26 = sub_22B360A5C();
  v27 = *(v0 + 176);
  if (v26[2])
  {
    v28 = v26[4];
    v29 = v26[5];
  }

  sub_22B35DF2C();
  v30 = *(v0 + 192);
  v31 = *(v0 + 176);
  v33 = *(v0 + 88);
  v32 = *(v0 + 96);

  v34 = sub_22B3608AC();
  v36 = v35;
  *&v61[0] = 0xD00000000000001ELL;
  *(&v61[0] + 1) = 0x800000022B36B930;
  MEMORY[0x23188E270](v33, v32);
  v37 = v61[0];
  *(v0 + 16) = v19;
  *(v0 + 24) = v21;
  *(v0 + 32) = v34;
  *(v0 + 40) = v36;
  *(v0 + 48) = v37;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  v54 = *(v0 + 200);
  v55 = *(v0 + 192);
  v56 = *(v0 + 184);
  v58 = *(v0 + 176);
  v38 = *(v0 + 160);
  v60 = *(v0 + 168);
  v40 = *(v0 + 144);
  v39 = *(v0 + 152);
  v42 = *(v0 + 128);
  v41 = *(v0 + 136);
  v43 = *(v0 + 120);
  sub_22B35DE6C();
  sub_22B35DF0C();
  v44 = sub_22B35DECC();
  v46 = v45;
  (*(v42 + 8))(v41, v43);
  v47 = *(v0 + 64);
  v61[2] = *(v0 + 48);
  v61[3] = v47;
  v62 = *(v0 + 80);
  v48 = *(v0 + 32);
  v61[0] = *(v0 + 16);
  v61[1] = v48;
  v49 = sub_22B28E828(v38, v44, v46, v61);
  v51 = v50;

  (*(v39 + 8))(v38, v40);
  sub_22B172400(v0 + 16);

  v52 = *(v0 + 8);

  return v52(v49, v51);
}

uint64_t sub_22B192FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a4;
  v6[9] = v5;
  v6[6] = a2;
  v6[7] = a3;
  v6[5] = a1;
  v12 = sub_22B36052C();
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v15 = swift_task_alloc();
  v6[13] = v15;
  *v15 = v6;
  v15[1] = sub_22B1930D4;

  return sub_22B191B44(a1, a2, a3, a4, a5);
}

uint64_t sub_22B1930D4(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22B1931EC, v3, 0);
}

uint64_t sub_22B1931EC()
{
  if (*(v0 + 120) != 1)
  {
LABEL_8:
    v12 = *(v0 + 96);

    v13 = *(v0 + 8);

    return v13(0, 0);
  }

  if (sub_22B360BFC())
  {
    if (qword_28140A0C8[0] != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "[UtilityDiscoveryNotification] Task Cancelled", v11, 2u);
      MEMORY[0x23188F650](v11, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    goto LABEL_8;
  }

  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  *v15 = v0;
  v15[1] = sub_22B1933F8;
  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  v20 = *(v0 + 40);

  return sub_22B1928C4(v20, v18, v19, v16);
}

uint64_t sub_22B1933F8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 112);
  v10 = *v2;

  v7 = *(v5 + 96);

  v8 = *(v10 + 8);

  return v8(a1, a2);
}

uint64_t sub_22B193520()
{
  v1[21] = v0;
  v2 = sub_22B35DF1C();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v5 = sub_22B36052C();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1936E4, v0, 0);
}

uint64_t sub_22B1936E4()
{
  v18 = v0;
  v0[42] = os_transaction_create();
  sub_22B19683C();
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[25];
  v3 = v0[26];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[43] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[44] = v5;
  v0[45] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  v10 = v0[25];
  v11 = v0[26];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000025, 0x800000022B36B7E0, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[UtilityDiscoveryNotification] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[46] = v14;
  if (qword_281408968 != -1)
  {
    swift_once();
  }

  v15 = qword_28140BC48;
  v0[47] = qword_28140BC48;

  return MEMORY[0x2822009F8](sub_22B193948, v15, 0);
}

uint64_t sub_22B193948()
{
  v1 = *(v0 + 168);
  *(v0 + 562) = *(*(v0 + 376) + 112);
  return MEMORY[0x2822009F8](sub_22B193970, v1, 0);
}

uint64_t sub_22B193970()
{
  if (*(v0 + 562) == 1)
  {
    v1 = *(v0 + 360);
    (*(v0 + 352))(*(v0 + 320), *(v0 + 344), *(v0 + 200));
    v2 = sub_22B36050C();
    v3 = sub_22B360D2C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 368);
    v6 = *(v0 + 336);
    v7 = *(v0 + 320);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "[UtilityDiscoveryNotification] Discovery in progress already", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    swift_unknownObjectRelease();

    v5(v7, v8);
    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v18 = *(v0 + 272);
    v17 = *(v0 + 280);
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);
    v24 = *(v0 + 248);
    v25 = *(v0 + 240);
    v26 = *(v0 + 232);
    v27 = *(v0 + 224);
    v28 = *(v0 + 216);
    v29 = *(v0 + 192);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = *(v0 + 376);

    return MEMORY[0x2822009F8](sub_22B193B9C, v23, 0);
  }
}

uint64_t sub_22B193B9C()
{
  v1 = *(v0 + 168);
  *(*(v0 + 376) + 112) = 1;
  return MEMORY[0x2822009F8](sub_22B193BC4, v1, 0);
}

uint64_t sub_22B193BC4()
{
  if (sub_22B360BFC())
  {
    v1 = v0[47];

    return MEMORY[0x2822009F8](sub_22B193D90, v1, 0);
  }

  else
  {
    if (qword_281408F18 != -1)
    {
      swift_once();
    }

    v3 = v0[44];
    v2 = v0[45];
    v4 = v0[43];
    v5 = v0[39];
    v6 = v0[25];
    v0[48] = qword_28140BCA8;
    v3(v5, v4, v6);
    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "[UtilityDiscoveryNotification] Load Homes", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v10 = v0[46];
    v11 = v0[39];
    v12 = v0[25];
    v13 = v0[26];

    v10(v11, v12);
    v14 = swift_task_alloc();
    v0[49] = v14;
    *v14 = v0;
    v14[1] = sub_22B193EE0;

    return sub_22B242190();
  }
}

uint64_t sub_22B193D90()
{
  v1 = *(v0 + 168);
  *(*(v0 + 376) + 112) = 0;
  return MEMORY[0x2822009F8](sub_22B193DB4, v1, 0);
}

uint64_t sub_22B193DB4()
{
  v1 = v0[42];
  swift_unknownObjectRelease();
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[32];
  v11 = v0[33];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[24];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22B193EE0()
{
  v1 = *(*v0 + 392);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B193FDC, 0, 0);
}

uint64_t sub_22B193FDC()
{
  v1 = v0[48];
  v2 = v0[21];
  v3 = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  v0[50] = OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager;
  v0[51] = [*(v1 + v3) dataSyncState];

  return MEMORY[0x2822009F8](sub_22B194064, v2, 0);
}

uint64_t sub_22B194064()
{
  v65 = v0;
  if (v0[51] == 1)
  {
    v1 = [*(v0[48] + v0[50]) hasOptedToHH2];
    v3 = v0[44];
    v2 = v0[45];
    v4 = v0[43];
    v5 = v0[25];
    if (v1)
    {
      v3(v0[36], v4, v5);
      v6 = sub_22B36050C();
      v7 = sub_22B360D0C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v64 = v9;
        *v8 = 136315138;
        if (qword_27D8BA000 != -1)
        {
          swift_once();
        }

        v60 = v0[36];
        v62 = v0[46];
        v10 = v0[26];
        v58 = v0[25];
        v11 = qword_27D8BB248;
        v12 = sub_22B35DF3C();
        v13 = [v11 localizations];
        v14 = sub_22B360A5C();

        v15 = sub_22B357898(v12, v14, 0, 0);
        v17 = v16;

        v18 = sub_22B1A7B20(v15, v17, &v64);

        *(v8 + 4) = v18;
        _os_log_impl(&dword_22B116000, v6, v7, "%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x23188F650](v9, -1, -1);
        MEMORY[0x23188F650](v8, -1, -1);

        v62(v60, v58);
      }

      else
      {
        v45 = v0[46];
        v46 = v0[36];
        v47 = v0[25];
        v48 = v0[26];

        v45(v46, v47);
      }

      if (qword_281408E18 != -1)
      {
        swift_once();
      }

      v49 = qword_28140BCA0;
      v0[52] = qword_28140BCA0;
      if (v49 && (v50 = sub_22B36081C(), v51 = [v49 dictionaryForKey_], v50, v51))
      {
        v52 = sub_22B3606EC();
      }

      else
      {
        v52 = sub_22B321AAC(MEMORY[0x277D84F90]);
      }

      v0[53] = v52;
      v53 = swift_task_alloc();
      v0[54] = v53;
      *v53 = v0;
      v53[1] = sub_22B1945D8;
      v54 = v0[48];

      return sub_22B2430B4();
    }

    v3(v0[37], v4, v5);
    v20 = sub_22B36050C();
    v21 = sub_22B360D2C();
    v30 = os_log_type_enabled(v20, v21);
    v23 = v0[46];
    v31 = v0[42];
    v25 = v0[37];
    v26 = v0[25];
    v32 = v0[26];
    if (v30)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "[UtilityDiscoveryNotification] HH2 not enabled";
      goto LABEL_11;
    }
  }

  else
  {
    v19 = v0[45];
    (v0[44])(v0[38], v0[43], v0[25]);
    v20 = sub_22B36050C();
    v21 = sub_22B360D1C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[46];
    v24 = v0[42];
    v25 = v0[38];
    v26 = v0[25];
    v27 = v0[26];
    if (v22)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "[UtilityDiscoveryNotification] Data sync state not good";
LABEL_11:
      _os_log_impl(&dword_22B116000, v20, v21, v29, v28, 2u);
      MEMORY[0x23188F650](v28, -1, -1);
    }
  }

  swift_unknownObjectRelease();

  v23(v25, v26);
  v34 = v0[40];
  v33 = v0[41];
  v36 = v0[38];
  v35 = v0[39];
  v38 = v0[36];
  v37 = v0[37];
  v40 = v0[34];
  v39 = v0[35];
  v41 = v0[32];
  v42 = v0[33];
  v55 = v0[31];
  v56 = v0[30];
  v57 = v0[29];
  v59 = v0[28];
  v61 = v0[27];
  v63 = v0[24];

  v43 = v0[1];

  return v43();
}

uint64_t sub_22B1945D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v5 = *v2;
  *(*v2 + 440) = a1;

  v6 = *(v3 + 168);
  if (v1)
  {

    v7 = sub_22B196658;
  }

  else
  {
    v7 = sub_22B194718;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B194718()
{
  v175 = v0;
  if (qword_28140A1F0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v1 = qword_28140BD28;

  v2 = sub_22B35EEFC();
  v4 = v3;
  v5 = *(v1 + 40);
  if (v5)
  {
    v6 = v2;
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);

    v10(ObjectType, v8);
    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    v13 = swift_getObjectType();
    v14 = (*(v12 + 48))(v6, v4, v13, v12);

    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = sub_22B321AAC(MEMORY[0x277D84F90]);

LABEL_7:
  *(v0 + 448) = v14;
  v15 = *(v0 + 440);
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v157 = *(v0 + 440);
    }

    v158 = sub_22B36109C();
    *(v0 + 456) = v158;
    if (v158)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 456) = v16;
    if (v16)
    {
LABEL_9:
      v17 = 0;
      v18 = *(v0 + 424);
      v19 = &off_2786FB000;
      v20 = &off_2786FB000;
      v21 = &off_2786FB000;
      v172 = v18;
      while (1)
      {
        *(v0 + 464) = v18;
        *(v0 + 472) = v18;
        v22 = *(v0 + 440);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x23188EAC0](v17);
        }

        else
        {
          if (v17 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v23 = *(v22 + 8 * v17 + 32);
        }

        v24 = v23;
        *(v0 + 480) = v23;
        *(v0 + 488) = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v25 = [v23 v19[484]];
        v26 = [v24 v20[485]];
        v27 = v26;
        if (v25)
        {
          if (v26)
          {
            sub_22B1972C4();
            v28 = sub_22B360FBC();

            if (v28)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        else
        {
          if (!v26)
          {
LABEL_23:
            if (sub_22B360BFC())
            {
              v118 = *(v0 + 440);
              v117 = *(v0 + 448);
              v120 = *(v0 + 352);
              v119 = *(v0 + 360);
              v121 = *(v0 + 344);
              v122 = *(v0 + 280);
              v123 = *(v0 + 200);

              v120(v122, v121, v123);
              v124 = sub_22B36050C();
              v125 = sub_22B360D2C();
              v126 = os_log_type_enabled(v124, v125);
              v127 = *(v0 + 368);
              v128 = *(v0 + 280);
              v129 = *(v0 + 200);
              v130 = *(v0 + 208);
              if (v126)
              {
                v131 = swift_slowAlloc();
                *v131 = 0;
                _os_log_impl(&dword_22B116000, v124, v125, "[UtilityDiscoveryNotification] Task Cancelled", v131, 2u);
                MEMORY[0x23188F650](v131, -1, -1);
              }

              else
              {
              }

              v127(v128, v129);
              v18 = v172;
              goto LABEL_65;
            }

            v29 = *(v0 + 184);
            v30 = *(v0 + 192);
            v31 = *(v0 + 176);
            v32 = [v24 uniqueIdentifier];
            sub_22B35DEFC();

            v33 = sub_22B35DECC();
            v35 = v34;
            *(v0 + 496) = v33;
            *(v0 + 504) = v34;
            (*(v29 + 8))(v30, v31);
            if (*(v18 + 16) && (v36 = sub_22B33B28C(v33, v35), (v37 & 1) != 0) && (sub_22B170C58(*(v18 + 56) + 32 * v36, v0 + 16), swift_dynamicCast()) && (*(v0 + 561) & 1) != 0)
            {
              v39 = *(v0 + 352);
              v38 = *(v0 + 360);
              v40 = *(v0 + 344);
              v41 = *(v0 + 272);
              v42 = *(v0 + 200);

              v39(v41, v40, v42);
              v43 = v24;
              v44 = sub_22B36050C();
              v45 = sub_22B360D0C();

              v46 = os_log_type_enabled(v44, v45);
              v47 = *(v0 + 368);
              v48 = *(v0 + 272);
              v50 = *(v0 + 200);
              v49 = *(v0 + 208);
              if (v46)
              {
                v167 = *(v0 + 272);
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                v174 = v52;
                *v51 = 136315138;
                v53 = [v43 v21[487]];
                v164 = v50;
                v54 = sub_22B36084C();
                v56 = v55;

                v57 = sub_22B1A7B20(v54, v56, &v174);
                v21 = &off_2786FB000;

                *(v51 + 4) = v57;
                v18 = v172;
                v58 = v45;
                v59 = v44;
                v60 = "[UtilityDiscoveryNotification] Already notified for %s";
                goto LABEL_36;
              }

LABEL_46:

              v47(v48, v50);
            }

            else if (*(*(v0 + 448) + 16) && (v61 = sub_22B33B28C(v33, v35), (v62 & 1) != 0) && (sub_22B170C58(*(*(v0 + 448) + 56) + 32 * v61, v0 + 48), swift_dynamicCast()) && (*(v0 + 560) & 1) != 0)
            {
              v64 = *(v0 + 352);
              v63 = *(v0 + 360);
              v65 = *(v0 + 344);
              v66 = *(v0 + 264);
              v67 = *(v0 + 200);

              v64(v66, v65, v67);
              v43 = v24;
              v44 = sub_22B36050C();
              v68 = sub_22B360D0C();

              v69 = os_log_type_enabled(v44, v68);
              v47 = *(v0 + 368);
              v48 = *(v0 + 264);
              v50 = *(v0 + 200);
              v70 = *(v0 + 208);
              if (!v69)
              {
                goto LABEL_46;
              }

              v167 = *(v0 + 264);
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v174 = v52;
              *v51 = 136315138;
              v71 = [v43 v21[487]];
              v164 = v50;
              v72 = sub_22B36084C();
              v74 = v73;

              v75 = sub_22B1A7B20(v72, v74, &v174);
              v21 = &off_2786FB000;

              *(v51 + 4) = v75;
              v18 = v172;
              v58 = v68;
              v59 = v44;
              v60 = "[UtilityDiscoveryNotification] Banner dismissed for %s";
LABEL_36:
              _os_log_impl(&dword_22B116000, v59, v58, v60, v51, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v52);
              MEMORY[0x23188F650](v52, -1, -1);
              MEMORY[0x23188F650](v51, -1, -1);

              v47(v167, v164);
            }

            else
            {
              v170 = v33;
              v76 = *(v0 + 360);
              (*(v0 + 352))(*(v0 + 256), *(v0 + 344), *(v0 + 200));
              v77 = v24;
              v78 = sub_22B36050C();
              v79 = sub_22B360D0C();

              v80 = os_log_type_enabled(v78, v79);
              v81 = *(v0 + 368);
              v82 = *(v0 + 256);
              v84 = *(v0 + 200);
              v83 = *(v0 + 208);
              if (v80)
              {
                v162 = *(v0 + 368);
                v85 = swift_slowAlloc();
                v168 = v35;
                v86 = swift_slowAlloc();
                v174 = v86;
                *v85 = 136315138;
                v87 = [v77 v21[487]];
                v88 = sub_22B36084C();
                v161 = v82;
                v90 = v89;

                v91 = sub_22B1A7B20(v88, v90, &v174);

                *(v85 + 4) = v91;
                _os_log_impl(&dword_22B116000, v78, v79, "[UtilityDiscoveryNotification] Not notified for %s", v85, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v86);
                v92 = v86;
                v35 = v168;
                MEMORY[0x23188F650](v92, -1, -1);
                MEMORY[0x23188F650](v85, -1, -1);

                v162(v161, v84);
              }

              else
              {

                v81(v82, v84);
              }

              v93 = [v77 location];
              *(v0 + 512) = v93;
              v95 = *(v0 + 352);
              v94 = *(v0 + 360);
              v96 = *(v0 + 344);
              if (v93)
              {
                v173 = v93;
                v95(*(v0 + 248), v96, *(v0 + 200));
                v132 = v77;
                v133 = sub_22B36050C();
                v134 = sub_22B360D0C();

                v135 = os_log_type_enabled(v133, v134);
                v136 = *(v0 + 368);
                v137 = *(v0 + 248);
                v139 = *(v0 + 200);
                v138 = *(v0 + 208);
                if (v135)
                {
                  v166 = *(v0 + 200);
                  v140 = swift_slowAlloc();
                  v141 = swift_slowAlloc();
                  v174 = v141;
                  *v140 = 136315138;
                  v171 = v137;
                  v142 = v35;
                  v143 = [v132 name];
                  v144 = sub_22B36084C();
                  v163 = v136;
                  v146 = v145;

                  v147 = v144;
                  v148 = &off_2786FB000;
                  v149 = sub_22B1A7B20(v147, v146, &v174);

                  *(v140 + 4) = v149;
                  v35 = v142;
                  _os_log_impl(&dword_22B116000, v133, v134, "[UtilityDiscoveryNotification] Valid location for %s", v140, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v141);
                  MEMORY[0x23188F650](v141, -1, -1);
                  MEMORY[0x23188F650](v140, -1, -1);

                  v163(v171, v166);
                }

                else
                {

                  v136(v137, v139);
                  v148 = &off_2786FB000;
                }

                v150 = [v132 v148[487]];
                v151 = sub_22B36084C();
                v153 = v152;

                *(v0 + 520) = v153;
                v154 = swift_task_alloc();
                *(v0 + 528) = v154;
                *v154 = v0;
                v154[1] = sub_22B1953F8;
                v155 = *(v0 + 168);

                return sub_22B192FA8(v170, v35, v151, v153, v173);
              }

              v97 = *(v0 + 224);
              v98 = *(v0 + 200);

              v95(v97, v96, v98);
              v99 = v77;
              v100 = sub_22B36050C();
              v101 = sub_22B360D0C();

              v102 = os_log_type_enabled(v100, v101);
              v103 = *(v0 + 368);
              v104 = *(v0 + 224);
              v106 = *(v0 + 200);
              v105 = *(v0 + 208);
              if (v102)
              {
                v169 = *(v0 + 224);
                v107 = swift_slowAlloc();
                v108 = swift_slowAlloc();
                v174 = v108;
                *v107 = 136315138;
                v165 = v103;
                v109 = [v99 name];
                v110 = sub_22B36084C();
                v112 = v111;

                v113 = sub_22B1A7B20(v110, v112, &v174);

                *(v107 + 4) = v113;
                _os_log_impl(&dword_22B116000, v100, v101, "[UtilityDiscoveryNotification] Invalid location for %s", v107, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v108);
                MEMORY[0x23188F650](v108, -1, -1);
                MEMORY[0x23188F650](v107, -1, -1);

                v114 = v106;
                v21 = &off_2786FB000;
                v165(v169, v114);
              }

              else
              {

                v103(v104, v106);
                v21 = &off_2786FB000;
              }

              v18 = v172;
            }

            v19 = &off_2786FB000;
            v20 = &off_2786FB000;
            goto LABEL_11;
          }
        }

LABEL_11:
        v17 = *(v0 + 488);
        if (v17 == *(v0 + 456))
        {
          v115 = *(v0 + 440);
          v116 = *(v0 + 448);

          goto LABEL_65;
        }
      }
    }
  }

  v159 = *(v0 + 440);

  v18 = *(v0 + 424);
LABEL_65:
  *(v0 + 552) = v18;
  v160 = *(v0 + 376);

  return MEMORY[0x2822009F8](sub_22B1964FC, v160, 0);
}

uint64_t sub_22B1953F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 528);
  v5 = *(*v2 + 520);
  v6 = *(*v2 + 168);
  v8 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = a2;

  return MEMORY[0x2822009F8](sub_22B195530, v6, 0);
}

uint64_t sub_22B195530()
{
  v215 = v0;
  v1 = *(v0 + 544);
  if (v1)
  {
    v2 = *(v0 + 480);
    v3 = *(v0 + 360);
    (*(v0 + 352))(*(v0 + 240), *(v0 + 344), *(v0 + 200));
    v4 = v2;

    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 536);
      v8 = *(v0 + 480);
      v211 = *(v0 + 368);
      v9 = *(v0 + 240);
      v10 = *(v0 + 200);
      v208 = *(v0 + 208) + 8;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v214 = v12;
      *v11 = 136315394;
      v13 = sub_22B1A7B20(v7, v1, &v214);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2080;
      v14 = [v8 name];
      v15 = sub_22B36084C();
      v17 = v16;

      v18 = sub_22B1A7B20(v15, v17, &v214);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_22B116000, v5, v6, "[UtilityDiscoveryNotification] [%s]Notified utility discovery for %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v12, -1, -1);
      MEMORY[0x23188F650](v11, -1, -1);

      v211(v9, v10);
    }

    else
    {
      v45 = *(v0 + 368);
      v46 = *(v0 + 240);
      v47 = *(v0 + 200);
      v48 = *(v0 + 208);

      v45(v46, v47);
    }

    v50 = *(v0 + 496);
    v49 = *(v0 + 504);
    v51 = *(v0 + 464);
    v52 = *(v0 + 416);
    *(v0 + 104) = MEMORY[0x277D839B0];
    *(v0 + 80) = 1;
    sub_22B172454((v0 + 80), (v0 + 112));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v214 = v51;
    sub_22B33F298((v0 + 112), v50, v49, isUniquelyReferenced_nonNull_native);

    v54 = v214;
    v55 = *(v0 + 512);
    v56 = *(v0 + 480);
    if (v52)
    {
      v57 = *(v0 + 416);
      v58 = sub_22B3606CC();
      v59 = sub_22B36081C();
      [v57 setObject:v58 forKey:v59];
    }

    else
    {
    }

    v60 = v54;
  }

  else
  {
    v19 = *(v0 + 504);
    v20 = *(v0 + 480);
    v22 = *(v0 + 352);
    v21 = *(v0 + 360);
    v23 = *(v0 + 344);
    v24 = *(v0 + 232);
    v25 = *(v0 + 200);

    v22(v24, v23, v25);
    v26 = v20;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 512);
    v31 = *(v0 + 480);
    v32 = *(v0 + 368);
    v33 = *(v0 + 232);
    v35 = *(v0 + 200);
    v34 = *(v0 + 208);
    if (v29)
    {
      v209 = *(v0 + 368);
      v36 = swift_slowAlloc();
      v205 = v33;
      v37 = swift_slowAlloc();
      v214 = v37;
      *v36 = 136315138;
      v203 = v35;
      v38 = [v31 name];
      v39 = sub_22B36084C();
      v41 = v40;

      v42 = sub_22B1A7B20(v39, v41, &v214);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_22B116000, v27, v28, "[UtilityDiscoveryNotification] Did not notify for %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23188F650](v37, -1, -1);
      MEMORY[0x23188F650](v36, -1, -1);

      v43 = v209(v205, v203);
    }

    else
    {

      v43 = v32(v33, v35);
    }

    v54 = *(v0 + 464);
    v60 = *(v0 + 472);
  }

  v61 = *(v0 + 488);
  if (v61 != *(v0 + 456))
  {
    v65 = &off_2786FB000;
    v66 = &off_2786FB000;
    v67 = &off_2786FB000;
    v204 = v54;
    v206 = v60;
    do
    {
      *(v0 + 464) = v54;
      *(v0 + 472) = v60;
      v64 = *(v0 + 440);
      if ((v64 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x23188EAC0](v61);
      }

      else
      {
        if (v61 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v43 = *(v64 + 8 * v61 + 32);
      }

      v68 = v43;
      *(v0 + 480) = v43;
      *(v0 + 488) = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
        return MEMORY[0x2822009F8](v43, v64, v44);
      }

      v69 = [v43 v65[484]];
      v70 = [v68 v66[485]];
      v71 = v70;
      if (v69)
      {
        if (v70)
        {
          sub_22B1972C4();
          v72 = sub_22B360FBC();

          if (v72)
          {
            goto LABEL_32;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v70)
        {
LABEL_32:
          if (sub_22B360BFC())
          {
            v158 = *(v0 + 440);
            v157 = *(v0 + 448);
            v160 = *(v0 + 352);
            v159 = *(v0 + 360);
            v161 = *(v0 + 344);
            v162 = *(v0 + 280);
            v163 = *(v0 + 200);

            v160(v162, v161, v163);
            v164 = sub_22B36050C();
            v165 = sub_22B360D2C();
            v166 = os_log_type_enabled(v164, v165);
            v167 = *(v0 + 368);
            v168 = *(v0 + 280);
            v169 = *(v0 + 200);
            v170 = *(v0 + 208);
            if (v166)
            {
              v171 = swift_slowAlloc();
              *v171 = 0;
              _os_log_impl(&dword_22B116000, v164, v165, "[UtilityDiscoveryNotification] Task Cancelled", v171, 2u);
              MEMORY[0x23188F650](v171, -1, -1);
            }

            else
            {
            }

            v167(v168, v169);
            goto LABEL_15;
          }

          v73 = *(v0 + 184);
          v74 = *(v0 + 192);
          v75 = *(v0 + 176);
          v76 = [v68 uniqueIdentifier];
          sub_22B35DEFC();

          v77 = sub_22B35DECC();
          v79 = v78;
          *(v0 + 496) = v77;
          *(v0 + 504) = v78;
          (*(v73 + 8))(v74, v75);
          if (*(v60 + 16))
          {
            v80 = sub_22B33B28C(v77, v79);
            if (v81)
            {
              sub_22B170C58(*(v60 + 56) + 32 * v80, v0 + 16);
              if (swift_dynamicCast())
              {
                if (*(v0 + 561))
                {
                  v83 = *(v0 + 352);
                  v82 = *(v0 + 360);
                  v84 = *(v0 + 344);
                  v85 = *(v0 + 272);
                  v86 = *(v0 + 200);

                  v83(v85, v84, v86);
                  v87 = v68;
                  v88 = sub_22B36050C();
                  v89 = sub_22B360D0C();

                  v90 = os_log_type_enabled(v88, v89);
                  v91 = *(v0 + 368);
                  v92 = *(v0 + 272);
                  v212 = *(v0 + 200);
                  if (v90)
                  {
                    v199 = *(v0 + 208) + 8;
                    v196 = *(v0 + 272);
                    v93 = swift_slowAlloc();
                    v94 = swift_slowAlloc();
                    v214 = v94;
                    *v93 = 136315138;
                    v95 = [v87 v67[487]];
                    v96 = sub_22B36084C();
                    v98 = v97;

                    v99 = v96;
                    v67 = &off_2786FB000;
                    v100 = sub_22B1A7B20(v99, v98, &v214);
                    v60 = v206;

                    *(v93 + 4) = v100;
                    v54 = v204;
                    v101 = v89;
                    v102 = v88;
                    v103 = "[UtilityDiscoveryNotification] Already notified for %s";
                    goto LABEL_45;
                  }

LABEL_55:

                  v119 = v92;
                  goto LABEL_56;
                }
              }
            }
          }

          if (*(*(v0 + 448) + 16) && (v104 = sub_22B33B28C(v77, v79), (v105 & 1) != 0) && (sub_22B170C58(*(*(v0 + 448) + 56) + 32 * v104, v0 + 48), swift_dynamicCast()) && (*(v0 + 560) & 1) != 0)
          {
            v107 = *(v0 + 352);
            v106 = *(v0 + 360);
            v108 = *(v0 + 344);
            v109 = *(v0 + 264);
            v110 = *(v0 + 200);

            v107(v109, v108, v110);
            v87 = v68;
            v88 = sub_22B36050C();
            v111 = sub_22B360D0C();

            v112 = os_log_type_enabled(v88, v111);
            v91 = *(v0 + 368);
            v92 = *(v0 + 264);
            v212 = *(v0 + 200);
            if (!v112)
            {
              goto LABEL_55;
            }

            v200 = *(v0 + 208) + 8;
            v196 = *(v0 + 264);
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v214 = v94;
            *v93 = 136315138;
            v113 = [v87 v67[487]];
            v114 = sub_22B36084C();
            v116 = v115;

            v117 = v114;
            v67 = &off_2786FB000;
            v118 = sub_22B1A7B20(v117, v116, &v214);
            v60 = v206;

            *(v93 + 4) = v118;
            v54 = v204;
            v101 = v111;
            v102 = v88;
            v103 = "[UtilityDiscoveryNotification] Banner dismissed for %s";
LABEL_45:
            _os_log_impl(&dword_22B116000, v102, v101, v103, v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v94);
            MEMORY[0x23188F650](v94, -1, -1);
            MEMORY[0x23188F650](v93, -1, -1);

            v119 = v196;
LABEL_56:
            v43 = v91(v119, v212);
          }

          else
          {
            v201 = v77;
            v120 = *(v0 + 360);
            (*(v0 + 352))(*(v0 + 256), *(v0 + 344), *(v0 + 200));
            v121 = v68;
            v122 = sub_22B36050C();
            v123 = sub_22B360D0C();

            v124 = os_log_type_enabled(v122, v123);
            v125 = *(v0 + 368);
            v126 = *(v0 + 256);
            v128 = *(v0 + 200);
            v127 = *(v0 + 208);
            v213 = v79;
            if (v124)
            {
              v195 = *(v0 + 368);
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v214 = v130;
              *v129 = 136315138;
              v194 = v126;
              v131 = [v121 v67[487]];
              v132 = sub_22B36084C();
              v134 = v133;

              v135 = sub_22B1A7B20(v132, v134, &v214);

              *(v129 + 4) = v135;
              v67 = &off_2786FB000;
              _os_log_impl(&dword_22B116000, v122, v123, "[UtilityDiscoveryNotification] Not notified for %s", v129, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v130);
              MEMORY[0x23188F650](v130, -1, -1);
              MEMORY[0x23188F650](v129, -1, -1);

              v195(v194, v128);
            }

            else
            {

              v125(v126, v128);
            }

            v136 = [v121 location];
            *(v0 + 512) = v136;
            v138 = *(v0 + 352);
            v137 = *(v0 + 360);
            v139 = *(v0 + 344);
            if (v136)
            {
              v207 = v136;
              v138(*(v0 + 248), v139, *(v0 + 200));
              v172 = v121;
              v173 = sub_22B36050C();
              v174 = sub_22B360D0C();

              v175 = os_log_type_enabled(v173, v174);
              v176 = *(v0 + 368);
              v177 = *(v0 + 248);
              v179 = *(v0 + 200);
              v178 = *(v0 + 208);
              if (v175)
              {
                v198 = *(v0 + 248);
                v180 = swift_slowAlloc();
                v181 = swift_slowAlloc();
                v214 = v181;
                *v180 = 136315138;
                v182 = [v172 v67[487]];
                v183 = sub_22B36084C();
                v210 = v176;
                v185 = v184;

                v186 = sub_22B1A7B20(v183, v185, &v214);

                *(v180 + 4) = v186;
                v67 = &off_2786FB000;
                _os_log_impl(&dword_22B116000, v173, v174, "[UtilityDiscoveryNotification] Valid location for %s", v180, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v181);
                MEMORY[0x23188F650](v181, -1, -1);
                MEMORY[0x23188F650](v180, -1, -1);

                v210(v198, v179);
              }

              else
              {

                v176(v177, v179);
              }

              v187 = [v172 v67[487]];
              v188 = sub_22B36084C();
              v190 = v189;

              *(v0 + 520) = v190;
              v191 = swift_task_alloc();
              *(v0 + 528) = v191;
              *v191 = v0;
              v191[1] = sub_22B1953F8;
              v192 = *(v0 + 168);

              return sub_22B192FA8(v201, v213, v188, v190, v207);
            }

            v140 = *(v0 + 224);
            v141 = *(v0 + 200);

            v138(v140, v139, v141);
            v142 = v121;
            v143 = sub_22B36050C();
            v144 = sub_22B360D0C();

            v145 = os_log_type_enabled(v143, v144);
            v146 = *(v0 + 368);
            v147 = *(v0 + 224);
            v149 = *(v0 + 200);
            v148 = *(v0 + 208);
            if (v145)
            {
              v202 = *(v0 + 224);
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v214 = v151;
              *v150 = 136315138;
              v197 = v146;
              v152 = [v142 v67[487]];
              v153 = sub_22B36084C();
              v155 = v154;

              v156 = sub_22B1A7B20(v153, v155, &v214);
              v67 = &off_2786FB000;

              *(v150 + 4) = v156;
              _os_log_impl(&dword_22B116000, v143, v144, "[UtilityDiscoveryNotification] Invalid location for %s", v150, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v151);
              MEMORY[0x23188F650](v151, -1, -1);
              MEMORY[0x23188F650](v150, -1, -1);

              v43 = v197(v202, v149);
            }

            else
            {

              v43 = v146(v147, v149);
            }

            v54 = v204;
            v60 = v206;
          }

          v65 = &off_2786FB000;
          v66 = &off_2786FB000;
          goto LABEL_20;
        }
      }

LABEL_20:
      v61 = *(v0 + 488);
    }

    while (v61 != *(v0 + 456));
  }

  v62 = *(v0 + 440);
  v63 = *(v0 + 448);

LABEL_15:
  *(v0 + 552) = v60;
  v64 = *(v0 + 376);
  v43 = sub_22B1964FC;
  v44 = 0;

  return MEMORY[0x2822009F8](v43, v64, v44);
}

uint64_t sub_22B1964FC()
{
  v1 = *(v0 + 168);
  *(*(v0 + 376) + 112) = 0;
  return MEMORY[0x2822009F8](sub_22B196520, v1, 0);
}

uint64_t sub_22B196520()
{
  v1 = v0[69];
  v2 = v0[42];
  swift_unknownObjectRelease();

  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[32];
  v12 = v0[33];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
  v18 = v0[28];
  v19 = v0[27];
  v20 = v0[24];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B196658()
{
  v1 = *(v0 + 360);
  (*(v0 + 352))(*(v0 + 216), *(v0 + 344), *(v0 + 200));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 424);
  v6 = *(v0 + 368);
  v7 = *(v0 + 336);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 200);
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "[UtilityDiscoveryNotification] Failed to load homes", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  swift_unknownObjectRelease();

  v6(v8, v10);

  v13 = *(v0 + 320);
  v12 = *(v0 + 328);
  v15 = *(v0 + 304);
  v14 = *(v0 + 312);
  v17 = *(v0 + 288);
  v16 = *(v0 + 296);
  v19 = *(v0 + 272);
  v18 = *(v0 + 280);
  v20 = *(v0 + 256);
  v21 = *(v0 + 264);
  v24 = *(v0 + 248);
  v25 = *(v0 + 240);
  v26 = *(v0 + 232);
  v27 = *(v0 + 224);
  v28 = *(v0 + 216);
  v29 = *(v0 + 192);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22B19683C()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[UtilityDiscoveryNotification] Taking extended lifetime", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22B1969F0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B196A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_22B360B6C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_22B12B3CC(a1, v13);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  sub_22B11A02C(v13, (v9 + 5));

  v10 = sub_22B145224(0, 0, v7, &unk_22B364B78, v9);
  sub_22B123284(v7, &qword_27D8BA8D0, &qword_22B363610);
  return v10;
}

uint64_t sub_22B196B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_22B119A60;

  return (sub_22B3448A4)(a5, a4);
}

unint64_t sub_22B196C6C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23188F670](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23188F670](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22B196CF8()
{
  v0 = sub_22B35E04C();
  v43 = *(v0 - 8);
  v44 = v0;
  v1 = *(v43 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v42 - v6;
  v7 = sub_22B35DE9C();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = sub_22B36052C();
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() sharedScheduler];
  v46 = 0x800000022B36B7E0;
  v23 = sub_22B36081C();
  v24 = [v22 taskRequestForIdentifier_];

  if (v24)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = v47;
    v26 = __swift_project_value_buffer(v47, qword_28140BD10);
    swift_beginAccess();
    v27 = v48;
    (*(v48 + 16))(v21, v26, v25);
    v28 = sub_22B36050C();
    v29 = sub_22B360D2C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22B1A7B20(0xD000000000000025, v46, &v49);
      _os_log_impl(&dword_22B116000, v28, v29, "[BackgroundTask] %s is already scheduled", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23188F650](v31, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    return (*(v27 + 8))(v21, v25);
  }

  else
  {
    sub_22B35DE6C();
    sub_22B35DE0C();
    sub_22B35DFFC();
    v33 = v45;
    sub_22B35F61C();
    (*(v43 + 8))(v3, v44);
    v34 = v42;
    v35 = *(v42 + 8);
    v35(v10, v7);
    if ((*(v34 + 48))(v33, 1, v7) == 1)
    {
      v35(v16, v7);
      return sub_22B123284(v33, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      (*(v34 + 32))(v13, v33, v7);
      sub_22B35DE2C();
      v37 = v36;
      result = sub_22B196C6C(0x3CuLL);
      v38 = 60 * (result + 1);
      if (((result + 1) * 60) >> 64 == v38 >> 63)
      {
        v39 = v37 + v38;
        v50[3] = &type metadata for BackgroundSystemTaskRequest;
        v50[4] = &off_283EFE7E8;
        v40 = swift_allocObject();
        v50[0] = v40;
        v41 = v46;
        *(v40 + 16) = 0xD000000000000025;
        *(v40 + 24) = v41;
        *(v40 + 32) = v39;
        *(v40 + 40) = 0;
        sub_22B348FC8(v50, 0, 0);
        v35(v13, v7);
        v35(v16, v7);
        return __swift_destroy_boxed_opaque_existential_0(v50);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_22B1972C4()
{
  result = qword_281408560;
  if (!qword_281408560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281408560);
  }

  return result;
}

uint64_t sub_22B197310()
{
  v5[3] = &type metadata for BackgroundSystemTaskScheduler;
  v5[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v5, &type metadata for BackgroundSystemTaskScheduler);
  v3 = &type metadata for BackgroundSystemTaskScheduler;
  v4 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v2, v0 + 112);
  __swift_destroy_boxed_opaque_existential_0(v5);

  sub_22B348848(0xD000000000000025, 0x800000022B36B7E0, sub_22B1973DC, v0);
}

uint64_t sub_22B1973E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B196B94(a1, v4, v5, v6, (v1 + 5));
}

uint64_t type metadata accessor for NextEnergyWindow()
{
  result = qword_281409180;
  if (!qword_281409180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B197518()
{
  sub_22B180EAC();
  if (v0 <= 0x3F)
  {
    sub_22B19759C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22B19759C()
{
  if (!qword_2814085D0)
  {
    v0 = sub_22B360FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_2814085D0);
    }
  }
}

uint64_t sub_22B1975EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 8);
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3614CC();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1976A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 8);
  sub_22B3608FC();
  sub_22B3614CC();
  sub_22B3608FC();
  sub_22B3608FC();

  return sub_22B3608FC();
}

uint64_t sub_22B19773C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 8);
  sub_22B36149C();
  sub_22B3608FC();
  sub_22B3614CC();
  sub_22B3608FC();
  sub_22B3608FC();
  sub_22B3608FC();
  return sub_22B3614DC();
}

uint64_t sub_22B1977F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v16 = *(a1 + 64);
  v17 = *(a1 + 56);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 64);
  v15 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_22B36134C();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if ((v3 != v9 || v4 != v8) && (sub_22B36134C() & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_22B36134C();
}

void *sub_22B197958()
{
  type metadata accessor for HomeEnergyForecastCache();
  swift_allocObject();
  result = sub_22B198A8C();
  qword_28140BD50 = result;
  return result;
}

uint64_t sub_22B197994()
{
  v0 = sub_22B321DD4(&unk_283EF8148);
  result = sub_22B123284(&unk_283EF8168, &qword_27D8BA550, &qword_22B364D50);
  qword_28140BD58 = v0;
  return result;
}

uint64_t sub_22B1979E4()
{
  v1[32] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v3 = type metadata accessor for CDEnergyGuidanceTracker();
  v1[35] = v3;
  v4 = *(v3 - 8);
  v1[36] = v4;
  v5 = *(v4 + 64) + 15;
  v1[37] = swift_task_alloc();
  v6 = sub_22B35DE9C();
  v1[38] = v6;
  v7 = *(v6 - 8);
  v1[39] = v7;
  v8 = *(v7 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v9 = sub_22B36052C();
  v1[44] = v9;
  v10 = *(v9 - 8);
  v1[45] = v10;
  v11 = *(v10 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B197BDC, v0, 0);
}

uint64_t sub_22B197BDC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[48];
  v2 = v0[44];
  v3 = v0[45];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[49] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[50] = v5;
  v0[51] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Initializing cache", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[48];
  v10 = v0[44];
  v11 = v0[45];
  v12 = v0[42];
  v13 = v0[43];
  v14 = v0[38];
  v15 = v0[39];

  v16 = *(v11 + 8);
  v0[52] = v16;
  v16(v9, v10);
  sub_22B35DE6C();
  v17 = [objc_opt_self() processInfo];
  [v17 systemUptime];

  sub_22B35DE1C();
  v18 = *(v15 + 8);
  v0[53] = v18;
  v0[54] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v12, v14);
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v19 = qword_28140BDC0;
  v0[55] = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B197E28, v19, 0);
}

uint64_t sub_22B197E28()
{
  v1 = v0[55];
  v2 = v0[32];
  v0[56] = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B197E98, v2, 0);
}

uint64_t sub_22B197E98()
{
  v43 = v0;
  v1 = *(v0 + 448);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    v5 = *(v0 + 280);
    v35 = *(v0 + 256);
    v36 = v4;
    v33 = (v4 + v5[9]);
    v34 = (v4 + v5[7]);
    v32 = (v4 + v5[8]);
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v31 = *(v3 + 72);
    for (i = v2 - 1; ; --i)
    {
      v7 = v6;
      sub_22B12B168(v6, v4);
      v8 = *v4;
      v9 = v36[1];
      v10 = *(v36 + 8);
      v11 = v34[1];
      v13 = *v33;
      v12 = v33[1];
      v14 = v32[1];
      v37 = *v32;
      v38 = *v34;

      sub_22B1A2058(v4, type metadata accessor for CDEnergyGuidanceTracker);
      *(v0 + 16) = v8;
      *(v0 + 24) = v9;
      *(v0 + 32) = v10;
      *(v0 + 40) = v38;
      *(v0 + 48) = v11;
      *(v0 + 56) = v13;
      *(v0 + 64) = v12;
      *(v0 + 72) = v37;
      *(v0 + 80) = v14;
      swift_beginAccess();
      sub_22B32E0A0(v41, v0 + 16);
      swift_endAccess();
      v15 = v41[0];
      *(v0 + 104) = v41[1];
      v16 = v41[3];
      *(v0 + 120) = v41[2];
      *(v0 + 136) = v16;
      *(v0 + 152) = v42;
      *(v0 + 88) = v15;
      sub_22B172074(v0 + 88);
      if (!i)
      {
        break;
      }

      v4 = *(v0 + 296);
      v6 = v7 + v31;
    }

    v17 = *(v0 + 448);
  }

  v18 = *(v0 + 256);
  swift_beginAccess();
  if (*(*(v18 + 120) + 16))
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v19 = qword_28140BD80;
    *(v0 + 456) = qword_28140BD80;

    return MEMORY[0x2822009F8](sub_22B19818C, v19, 0);
  }

  else
  {
    v20 = *(v0 + 432);
    v21 = *(v0 + 376);
    v22 = *(v0 + 384);
    v23 = *(v0 + 368);
    v24 = *(v0 + 336);
    v26 = *(v0 + 320);
    v25 = *(v0 + 328);
    v27 = *(v0 + 296);
    v28 = *(v0 + 272);
    v40 = *(v0 + 264);
    (*(v0 + 424))(*(v0 + 344), *(v0 + 304));

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22B19818C()
{
  v1 = v0[57];
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[32];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  v0[58] = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[59] = v7;
  v0[60] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B198258, v5, 0);
}

uint64_t sub_22B198258()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 304);
  sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578]);
  LOBYTE(v4) = sub_22B36074C();
  v2(v3, v5);
  if (v4)
  {
    v6 = *(v0 + 456);
    v7 = sub_22B198624;
  }

  else
  {
    v8 = *(v0 + 408);
    (*(v0 + 400))(*(v0 + 376), *(v0 + 392), *(v0 + 352));
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B116000, v9, v10, "Device has rebooted. Schedule cache refresh.", v11, 2u);
      MEMORY[0x23188F650](v11, -1, -1);
    }

    v12 = *(v0 + 424);
    v21 = *(v0 + 432);
    v22 = *(v0 + 456);
    v13 = *(v0 + 416);
    v14 = *(v0 + 376);
    v15 = *(v0 + 352);
    v16 = *(v0 + 360);
    v18 = *(v0 + 328);
    v17 = *(v0 + 336);
    v19 = *(v0 + 304);

    v13(v14, v15);
    sub_22B35DE6C();
    sub_22B35DE0C();
    v12(v17, v19);
    v7 = sub_22B198440;
    v6 = v22;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B198440()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  (*(v0 + 472))(v6, *(v0 + 328), v3);
  (*(v4 + 56))(v6, 0, 1, v3);
  sub_22B255CFC(v6, v5);
  sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = *(v0 + 432);
    v8 = *(v0 + 272);
    (*(v0 + 424))(*(v0 + 328), *(v0 + 304));
    sub_22B123284(v8, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v9 = *(v0 + 456);
    v11 = *(v0 + 424);
    v10 = *(v0 + 432);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v14 = *(v0 + 304);
    (*(*(v0 + 312) + 32))(v13, *(v0 + 272), v14);
    sub_22B255B48(v13);
    v11(v13, v14);
    v11(v12, v14);
  }

  v15 = *(v0 + 456);

  return MEMORY[0x2822009F8](sub_22B1985B8, v15, 0);
}

uint64_t sub_22B1985B8()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 256);
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B1A20C0, v2, 0);
}

uint64_t sub_22B198624()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 256);
  (*(v0 + 472))(*(v0 + 336), *(v0 + 456) + *(v0 + 464), *(v0 + 304));

  return MEMORY[0x2822009F8](sub_22B1986A0, v2, 0);
}

uint64_t sub_22B1986A0()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 304);
  v6 = sub_22B35DDEC();
  v2(v4, v5);
  if (v6)
  {
    v7 = *(v0 + 408);
    (*(v0 + 400))(*(v0 + 368), *(v0 + 392), *(v0 + 352));
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "Daemon restarted, no cache refresh needed", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v11 = *(v0 + 456);
    v12 = *(v0 + 416);
    v14 = *(v0 + 360);
    v13 = *(v0 + 368);
    v15 = *(v0 + 352);

    v12(v13, v15);

    return MEMORY[0x2822009F8](sub_22B1988AC, v11, 0);
  }

  else
  {
    v16 = *(v0 + 432);
    v17 = *(v0 + 376);
    v18 = *(v0 + 384);
    v19 = *(v0 + 368);
    v20 = *(v0 + 336);
    v22 = *(v0 + 320);
    v21 = *(v0 + 328);
    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v27 = *(v0 + 264);
    (*(v0 + 424))(*(v0 + 344), *(v0 + 304));

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_22B1988AC()
{
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 456);
  v2 = *(v0 + 256);
  sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);
  v3 = *(v1 + 112);

  sub_22B1B23B0();

  *(*(v1 + 112) + 40) = 0;
  swift_unknownObjectWeakAssign();
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B19899C, v2, 0);
}

uint64_t sub_22B19899C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 296);
  v9 = *(v0 + 272);
  v12 = *(v0 + 264);
  (*(v0 + 424))(*(v0 + 344), *(v0 + 304));

  v10 = *(v0 + 8);

  return v10();
}

void *sub_22B198A8C()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84FA0];
  v0[14] = MEMORY[0x277D84FA0];
  v0[15] = v1;
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  v3 = [objc_opt_self() sessionWithConfiguration_];

  v0[16] = v3;
  v0[17] = [objc_opt_self() standardUserDefaults];
  if (qword_28140AA38 != -1)
  {
    swift_once();
  }

  v0[18] = sub_22B2A5D90(qword_28140BD58);
  return v0;
}

uint64_t sub_22B198B80(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(MEMORY[0x277D17E80] + 4);
  v5 = swift_task_alloc();
  v3[15] = v5;
  *v5 = v3;
  v5[1] = sub_22B198C18;

  return MEMORY[0x282172090]();
}

uint64_t sub_22B198C18(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_22B198D30, v3, 0);
}

uint64_t sub_22B198D30()
{
  v1 = v0[16];
  if (!v1)
  {
    if (qword_28140AA38 != -1)
    {
      swift_once();
    }

    v1 = sub_22B2A5D90(qword_28140BD58);
  }

  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = *(v3 + 144);
  *(v3 + 144) = v1;

  sub_22B36116C();

  MEMORY[0x23188E270](v4, v2);
  v6 = *(v3 + 144);
  if (*(v6 + 16) && (v7 = *(v3 + 144), , v8 = sub_22B33B28C(0xD000000000000021, 0x800000022B36BA20), v10 = v9, , (v10 & 1) != 0))
  {
    sub_22B170C58(*(v6 + 56) + 32 * v8, (v0 + 2));

    if (swift_dynamicCast())
    {
      v11 = v0[11];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = *(v3 + 144);
  if (*(v12 + 16))
  {
    v13 = *(v3 + 144);

    v14 = sub_22B33B28C(0xD000000000000020, 0x800000022B368230);
    if (v15)
    {
      sub_22B170C58(*(v12 + 56) + 32 * v14, (v0 + 6));

      if (swift_dynamicCast())
      {
        v11 = v0[10];
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v11 = 2;
LABEL_16:
  v16 = v0[1];

  return v16(v11);
}

uint64_t sub_22B198F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v6 = sub_22B35DE9C();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B199070, v3, 0);
}

uint64_t sub_22B199070()
{
  v2 = v0 + 6;
  v1 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[3];
  sub_22B35E1BC();
  v6 = *(v4 + 48);
  if (v6(v1, 1, v3) == 1)
  {
    goto LABEL_4;
  }

  v2 = v0 + 5;
  v7 = v0[5];
  v8 = v0[7];
  v9 = v0[3];
  v10 = *(v0[8] + 32);
  v10(v0[10], v0[6], v8);
  sub_22B35E18C();
  v11 = v6(v7, 1, v8);
  v12 = v0[10];
  if (v11 != 1)
  {
    v10(v0[9], v0[5], v0[7]);
    result = sub_22B35DD3C();
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        if ((v15 * v0[4]) >> 64 == (v15 * v0[4]) >> 63)
        {
          v16 = v0[9];
          v17 = v0[10];
          v18 = v0[7];
          v19 = v0[8];
          v20 = v0[2];
          sub_22B35DDCC();
          v21 = *(v19 + 8);
          v21(v16, v18);
          v21(v17, v18);
          v13 = 0;
          goto LABEL_10;
        }

LABEL_16:
        __break(1u);
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  (*(v0[8] + 8))(v0[10], v0[7]);
LABEL_4:
  sub_22B123284(*v2, &qword_27D8BA340, &qword_22B363FB0);
  v13 = 1;
LABEL_10:
  v22 = v0[9];
  v23 = v0[10];
  v25 = v0[5];
  v24 = v0[6];
  (*(v0[8] + 56))(v0[2], v13, 1, v0[7]);

  v26 = v0[1];

  return v26();
}

uint64_t sub_22B1992BC(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_22B36052C();
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1993AC, v1, 0);
}

uint64_t sub_22B1993AC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[37];
  v3 = v0[38];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[44] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[45] = v5;
  v0[46] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Notifying clients of grid data refresh", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[43];
  v10 = v0[37];
  v11 = v0[38];

  v12 = *(v11 + 8);
  v0[47] = v12;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[48] = v13;
  *v13 = v0;
  v13[1] = sub_22B199588;

  return (sub_22B3512F8)(0xD000000000000018, 0x800000022B36BA50);
}

uint64_t sub_22B199588()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B199698, v2, 0);
}

uint64_t sub_22B199698()
{
  v73 = v0;
  v1 = *(v0 + 368);
  (*(v0 + 360))(*(v0 + 336), *(v0 + 352), *(v0 + 296));
  v2 = sub_22B36050C();
  v3 = sub_22B360CFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "Updating Client on guidance data refresh", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v5 = *(v0 + 376);
  v6 = *(v0 + 336);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);

  v5(v6, v7);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 280);
  v68 = qword_28140BDD8;
  v67 = *(qword_28140BDD8 + 112);
  v66 = sub_22B36081C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(v0 + 248) = sub_22B35EEDC();
  *(v0 + 256) = v11;
  sub_22B36110C();
  v70 = v9;
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = *(v0 + 280);
    v14 = sub_22B32DCA4(*(v9 + 16), 0);
    v64 = sub_22B24FA90(&v72, v14 + 4, v12, v13);

    sub_22B1A20B8();
    if (v64 == v12)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_9:
  v16 = *(v0 + 360);
  v15 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 328);
  v19 = *(v0 + 296);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
  *(inited + 96) = v65;
  *(inited + 72) = v14;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v20 = sub_22B3606CC();

  [v67 postNotificationName:v66 object:0 userInfo:v20 deliverImmediately:1];

  v16(v18, v17, v19);
  v21 = sub_22B36050C();
  v22 = sub_22B360CFC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22B116000, v21, v22, "Updated Client on guidance data refresh", v23, 2u);
    MEMORY[0x23188F650](v23, -1, -1);
  }

  v25 = *(v0 + 368);
  v24 = *(v0 + 376);
  v26 = *(v0 + 352);
  v27 = *(v0 + 360);
  v29 = *(v0 + 320);
  v28 = *(v0 + 328);
  v30 = *(v0 + 296);
  v31 = *(v0 + 304);

  v24(v28, v30);
  v27(v29, v26, v30);
  v32 = sub_22B36050C();
  v33 = sub_22B360CFC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_22B116000, v32, v33, "Updating Client on grid data refresh", v34, 2u);
    MEMORY[0x23188F650](v34, -1, -1);
  }

  v35 = *(v0 + 376);
  v36 = *(v0 + 320);
  v37 = *(v0 + 296);
  v38 = *(v0 + 304);

  v35(v36, v37);
  v39 = *(v68 + 112);
  sub_22B35EF0C();
  v69 = sub_22B36081C();

  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_22B3634B0;
  *(v0 + 264) = sub_22B35EEDC();
  *(v0 + 272) = v41;
  sub_22B36110C();
  v42 = *(v70 + 16);
  if (v42)
  {
    v43 = *(v0 + 280);
    v44 = sub_22B32DCA4(v42, 0);
    v71 = sub_22B24FA90(&v72, v44 + 4, v42, v43);

    result = sub_22B1A20B8();
    if (v71 != v42)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v47 = *(v0 + 360);
  v46 = *(v0 + 368);
  v48 = *(v0 + 352);
  v49 = *(v0 + 312);
  v50 = *(v0 + 296);
  *(v40 + 96) = v65;
  *(v40 + 72) = v44;
  sub_22B321BDC(v40);
  swift_setDeallocating();
  sub_22B123284(v40 + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v51 = sub_22B3606CC();

  [v39 postNotificationName:v69 object:0 userInfo:v51 deliverImmediately:1];

  v47(v49, v48, v50);
  v52 = sub_22B36050C();
  v53 = sub_22B360CFC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22B116000, v52, v53, "Updated Client on grid data refresh", v54, 2u);
    MEMORY[0x23188F650](v54, -1, -1);
  }

  v55 = *(v0 + 376);
  v57 = *(v0 + 336);
  v56 = *(v0 + 344);
  v59 = *(v0 + 320);
  v58 = *(v0 + 328);
  v61 = *(v0 + 304);
  v60 = *(v0 + 312);
  v62 = *(v0 + 296);

  v55(v60, v62);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_22B199D68(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 192) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v4 = sub_22B35DE9C();
  *(v2 + 88) = v4;
  v5 = *(v4 - 8);
  *(v2 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  v7 = sub_22B36052C();
  *(v2 + 128) = v7;
  v8 = *(v7 - 8);
  *(v2 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B199EE4, v1, 0);
}

uint64_t sub_22B199EE4()
{
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD80;
  *(v0 + 152) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B199F7C, v1, 0);
}

uint64_t sub_22B199F7C()
{
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);
  v2 = *(v1 + 112);

  sub_22B1B23B0();

  *(*(v1 + 112) + 40) = 0;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](sub_22B19A058, v1, 0);
}

uint64_t sub_22B19A058()
{
  if (qword_28140AC90 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v2, qword_28140BD88);
  v5 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v5, v4, v2);
  swift_endAccess();
  if (qword_28140AC78 != -1)
  {
    swift_once();
  }

  v6 = v0[19];
  v7 = qword_28140AC80;
  v8 = sub_22B36081C();
  [v7 removeObjectForKey_];

  return MEMORY[0x2822009F8](sub_22B19A1D0, v6, 0);
}

uint64_t sub_22B19A1D0()
{
  v1 = *(v0 + 64);
  *(v0 + 193) = *(*(v0 + 152) + 120);
  return MEMORY[0x2822009F8](sub_22B19A1F8, v1, 0);
}

uint64_t sub_22B19A1F8()
{
  if (*(v0 + 193) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_22B36134C();
  }

  *(v0 + 194) = v1 & 1;
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_22B19A2C0, v2, 0);
}

uint64_t sub_22B19A2C0()
{
  v1 = *(v0 + 64);
  *(*(v0 + 152) + OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_missedCacheRefresh) = *(v0 + 194);
  return MEMORY[0x2822009F8](sub_22B19A2F4, v1, 0);
}

uint64_t sub_22B19A2F4()
{
  if (*(v0 + 194) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v3 = *(v0 + 128);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Cache refresh will be skipped because network is offline", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);

    (*(v11 + 8))(v9, v10);
    sub_22B35DE6C();
    sub_22B35DE0C();
    v16 = *(v15 + 8);
    *(v0 + 160) = v16;
    *(v0 + 168) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v13, v14);

    return MEMORY[0x2822009F8](sub_22B19A550, v8, 0);
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_22B19A704;
    v18 = *(v0 + 64);
    v19 = *(v0 + 192);

    return sub_22B292A64(v19);
  }
}

uint64_t sub_22B19A550()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  (*(v3 + 16))(v5, *(v0 + 120), v2);
  (*(v3 + 56))(v5, 0, 1, v2);
  sub_22B255CFC(v5, v4);
  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  v6 = (*(v3 + 48))(v4, 1, v2);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  if (v6 == 1)
  {
    v9 = *(v0 + 80);
    v8(*(v0 + 120), *(v0 + 88));
    sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = *(v0 + 88);
    (*(*(v0 + 96) + 32))(v12, *(v0 + 80), v13);
    sub_22B255B48(v12);
    v8(v12, v13);
    v8(v11, v13);
  }

  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_22B19A704;
  v15 = *(v0 + 64);
  v16 = *(v0 + 192);

  return sub_22B292A64(v16);
}

uint64_t sub_22B19A704()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B19A814, v2, 0);
}

uint64_t sub_22B19A814()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 64);
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B19A880, v2, 0);
}

uint64_t sub_22B19A880()
{
  if (sub_22B35EEBC())
  {
    type metadata accessor for HomeEnergyDaemonUtilities();
    v1 = swift_task_alloc();
    v0[23] = v1;
    *v1 = v0;
    v1[1] = sub_22B19A9A8;

    return sub_22B34A2E4(1);
  }

  else
  {
    v3 = v0[18];
    v4 = v0[14];
    v5 = v0[15];
    v6 = v0[13];
    v8 = v0[9];
    v7 = v0[10];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B19A9A8()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v11 = *v0;

  v3 = v1[18];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[10];
  v8 = v1[9];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_22B19AB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X8>)
{
  v180 = a6;
  v196 = a5;
  v197 = a4;
  v198 = a3;
  v209 = a2;
  v191 = a1;
  v187 = a7;
  v224 = sub_22B36052C();
  v222 = *(v224 - 8);
  v7 = *(v222 + 64);
  MEMORY[0x28223BE20](v224);
  v189 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v177 - v10;
  MEMORY[0x28223BE20](v12);
  v183 = &v177 - v13;
  MEMORY[0x28223BE20](v14);
  v179 = &v177 - v15;
  v194 = sub_22B35E26C();
  v218 = *(v194 - 8);
  v16 = *(v218 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v202 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v177 - v22;
  v24 = sub_22B35DE9C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v185 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v184 = &v177 - v29;
  MEMORY[0x28223BE20](v30);
  v182 = &v177 - v31;
  MEMORY[0x28223BE20](v32);
  v181 = &v177 - v33;
  MEMORY[0x28223BE20](v34);
  v195 = &v177 - v35;
  MEMORY[0x28223BE20](v36);
  v178 = &v177 - v37;
  MEMORY[0x28223BE20](v38);
  v210 = &v177 - v39;
  MEMORY[0x28223BE20](v40);
  v213 = &v177 - v41;
  v42 = sub_22B35E17C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v177 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA540, &qword_22B364D40);
  v47 = *(v221 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v221);
  v206 = (&v177 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA548, &qword_22B364D48);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v177 - v54;
  v186 = 0;
  v56 = 0;
  v57 = *(v209 + 16);
  v205 = v43 + 16;
  v219 = (v47 + 48);
  v220 = (v47 + 56);
  v215 = (v43 + 32);
  v223 = (v25 + 48);
  v203 = (v25 + 32);
  v192 = (v218 + 8);
  v188 = v25;
  v208 = (v25 + 8);
  v207 = v43;
  v216 = (v43 + 8);
  v59 = v58;
  v211 = (v222 + 16);
  v212 = (v222 + 8);
  v53.n128_u64[0] = 134349056;
  v199 = v53;
  v222 = v24;
  v217 = v42;
  v218 = v58;
  v214 = v57;
  v204 = v46;
  v201 = v11;
  v200 = v23;
  while (2)
  {
    v60 = v221;
    while (1)
    {
      if (v56 == v57)
      {
        v61 = 1;
        v56 = v57;
      }

      else
      {
        if (v56 >= v57)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v151 = v224;
          v152 = __swift_project_value_buffer(v224, qword_28140BD10);
          swift_beginAccess();
          v153 = v179;
          (*v211)(v179, v152, v151);
          v154 = v188;
          v155 = *(v188 + 16);
          v156 = v178;
          v157 = v222;
          v155(v178, v191, v222);
          v223 = v155;
          v155(v60, v210, v157);
          v158 = sub_22B36050C();
          v159 = sub_22B360CFC();
          if (os_log_type_enabled(v158, v159))
          {
            v160 = swift_slowAlloc();
            v221 = swift_slowAlloc();
            v225 = v221;
            *v160 = 136446466;
            sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578]);
            v161 = sub_22B36131C();
            v163 = v162;
            v164 = *v208;
            (*v208)(v156, v222);
            v165 = sub_22B1A7B20(v161, v163, &v225);

            *(v160 + 4) = v165;
            *(v160 + 12) = 2082;
            v166 = v195;
            v167 = sub_22B36131C();
            v169 = v168;
            v164(v166, v222);
            v170 = sub_22B1A7B20(v167, v169, &v225);
            v157 = v222;

            *(v160 + 14) = v170;
            _os_log_impl(&dword_22B116000, v158, v159, "Good windows found between %{public}s-%{public}s", v160, 0x16u);
            v171 = v221;
            swift_arrayDestroy();
            MEMORY[0x23188F650](v171, -1, -1);
            MEMORY[0x23188F650](v160, -1, -1);

            (*v212)(v179, v224);
            v164(v213, v157);
            v154 = v188;
          }

          else
          {

            v172 = *v208;
            (*v208)(v60, v157);
            v172(v156, v157);
            (*v212)(v153, v151);
            v172(v213, v157);
          }

          (*v216)(v204, v217);
          v173 = v187;
          v223(v187, v191, v157);
          v174 = *(v154 + 56);
          v174(v173, 0, 1, v157);
          EnergyWindow = type metadata accessor for NextEnergyWindow();
          v176 = *(EnergyWindow + 20);
          v190(&v173[v176], v210, v157);
          result = (v174)(&v173[v176], 0, 1, v157);
          v173[*(EnergyWindow + 24)] = 1;
          return result;
        }

        if (__OFADD__(v56, 1))
        {
          goto LABEL_45;
        }

        v62 = v207;
        v63 = v209 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v56;
        v64 = *(v60 + 12);
        v65 = v24;
        v66 = v11;
        v67 = v206;
        *v206 = v56;
        (*(v62 + 16))(&v67[v64], v63, v42);
        v68 = v67;
        v11 = v66;
        v24 = v65;
        v59 = v218;
        sub_22B170CD0(v68, v218, &qword_27D8BA540, &qword_22B364D40);
        v61 = 0;
        ++v56;
      }

      (*v220)(v59, v61, 1, v60);
      sub_22B170CD0(v59, v55, &qword_27D8BA548, &qword_22B364D48);
      if ((*v219)(v55, 1, v60) == 1)
      {
        goto LABEL_30;
      }

      v69 = v60;
      v70 = *v55;
      (*v215)(v46, &v55[*(v69 + 12)], v42);
      sub_22B35E16C();
      v71 = *v223;
      v72 = (*v223)(v23, 1, v24);
      v73 = v23;
      if (v72 == 1)
      {
        goto LABEL_14;
      }

      v74 = *v203;
      v75 = v213;
      (*v203)(v213, v23, v24);
      v76 = v202;
      sub_22B35E15C();
      if (v71(v76, 1, v24) != 1)
      {
        break;
      }

      (*v208)(v75, v24);
      v73 = v76;
      v46 = v204;
      v11 = v201;
      v23 = v200;
      v59 = v218;
LABEL_14:
      sub_22B123284(v73, &qword_27D8BA340, &qword_22B363FB0);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v77 = v224;
      v78 = __swift_project_value_buffer(v224, qword_28140BD10);
      swift_beginAccess();
      (*v211)(v11, v78, v77);
      v79 = sub_22B36050C();
      v80 = sub_22B360D1C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = v199.n128_u32[0];
        *(v81 + 4) = v70;
        _os_log_impl(&dword_22B116000, v79, v80, "Error parsing window at idx: %{public}ld", v81, 0xCu);
        MEMORY[0x23188F650](v81, -1, -1);
      }

      (*v212)(v11, v224);
      v24 = v222;
LABEL_4:
      v42 = v217;
      (*v216)(v46, v217);
      v60 = v221;
      v57 = v214;
    }

    v74(v210, v76, v24);
    sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578]);
    if (sub_22B36074C())
    {
      v190 = v74;
      v82 = v193;
      v46 = v204;
      sub_22B35E14C();
      v83 = sub_22B35E25C();
      v85 = v84;
      (*v192)(v82, v194);
      if (v83 == v198 && v85 == v197)
      {

        v60 = v195;
        v11 = v201;
        v23 = v200;
        v59 = v218;
LABEL_23:
        if (sub_22B36074C() & 1) == 0 && (sub_22B35DDEC())
        {
          if (v180)
          {
            v89 = v210;
            v24 = v222;
            v90 = sub_22B36074C();
            v91 = *v208;
            (*v208)(v89, v24);
            v91(v213, v24);
            v46 = v204;
            v42 = v217;
            (*v216)(v204, v217);
            v186 |= v90 ^ 1;
            v57 = v214;
            continue;
          }

          goto LABEL_46;
        }

        v87 = v213;
        if (sub_22B35DDEC())
        {
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v121 = v224;
          v122 = __swift_project_value_buffer(v224, qword_28140BD10);
          swift_beginAccess();
          v123 = v183;
          (*v211)(v183, v122, v121);
          v124 = v188;
          v125 = *(v188 + 16);
          v126 = v181;
          v127 = v222;
          v125(v181, v213, v222);
          v128 = v182;
          v125(v182, v210, v127);
          v129 = sub_22B36050C();
          v130 = sub_22B360CFC();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v223 = swift_slowAlloc();
            v225 = v223;
            *v131 = 136446466;
            sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578]);
            v132 = sub_22B36131C();
            v133 = v128;
            v135 = v134;
            v136 = v126;
            v137 = *v208;
            (*v208)(v136, v222);
            v138 = sub_22B1A7B20(v132, v135, &v225);

            *(v131 + 4) = v138;
            *(v131 + 12) = 2082;
            v139 = sub_22B36131C();
            v141 = v140;
            v137(v133, v222);
            v142 = sub_22B1A7B20(v139, v141, &v225);
            v127 = v222;

            *(v131 + 14) = v142;
            _os_log_impl(&dword_22B116000, v129, v130, "Good windows found between %{public}s-%{public}s", v131, 0x16u);
            v143 = v223;
            swift_arrayDestroy();
            MEMORY[0x23188F650](v143, -1, -1);
            MEMORY[0x23188F650](v131, -1, -1);

            (*v212)(v183, v224);
          }

          else
          {

            v144 = *v208;
            (*v208)(v128, v127);
            v144(v126, v127);
            (*v212)(v123, v121);
          }

          (*v216)(v204, v217);
          v145 = v187;
          v146 = v190;
          v190(v187, v213, v127);
          v147 = *(v124 + 56);
          v147(v145, 0, 1, v127);
          v148 = type metadata accessor for NextEnergyWindow();
          v149 = v127;
          v150 = *(v148 + 20);
          v146(&v145[v150], v210, v149);
          result = (v147)(&v145[v150], 0, 1, v149);
          v145[*(v148 + 24)] = 0;
          return result;
        }
      }

      else
      {
        v86 = sub_22B36134C();

        v87 = v213;
        v60 = v195;
        v11 = v201;
        v23 = v200;
        v59 = v218;
        if (v86)
        {
          goto LABEL_23;
        }
      }

      v88 = *v208;
      v24 = v222;
      (*v208)(v210, v222);
      v88(v87, v24);
      goto LABEL_4;
    }

    break;
  }

  v92 = *v208;
  v24 = v222;
  (*v208)(v210, v222);
  v92(v213, v24);
  (*v216)(v204, v217);
LABEL_30:
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v93 = v224;
  v94 = __swift_project_value_buffer(v224, qword_28140BD10);
  swift_beginAccess();
  v95 = v189;
  (*v211)(v189, v94, v93);
  v96 = v188;
  v97 = *(v188 + 16);
  v98 = v184;
  v97(v184, v191, v24);
  v99 = v185;
  v97(v185, v196, v24);
  v100 = sub_22B36050C();
  v101 = sub_22B360CFC();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v225 = v223;
    *v102 = 136446466;
    sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578]);
    v103 = v24;
    LODWORD(v222) = v101;
    v104 = sub_22B36131C();
    v106 = v105;
    v107 = v98;
    v108 = *v208;
    (*v208)(v107, v24);
    v109 = sub_22B1A7B20(v104, v106, &v225);

    *(v102 + 4) = v109;
    *(v102 + 12) = 2082;
    v110 = sub_22B36131C();
    v112 = v111;
    v108(v99, v103);
    v113 = sub_22B1A7B20(v110, v112, &v225);

    *(v102 + 14) = v113;
    _os_log_impl(&dword_22B116000, v100, v222, "No good windows found between %{public}s-%{public}s", v102, 0x16u);
    v114 = v223;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v114, -1, -1);
    MEMORY[0x23188F650](v102, -1, -1);

    (*v212)(v189, v224);
    v115 = v187;
  }

  else
  {

    v116 = *v208;
    (*v208)(v99, v24);
    v116(v98, v24);
    (*v212)(v95, v93);
    v115 = v187;
    v103 = v24;
  }

  v117 = *(v96 + 56);
  v117(v115, 1, 1, v103);
  v118 = type metadata accessor for NextEnergyWindow();
  result = (v117)(&v115[*(v118 + 20)], 1, 1, v103);
  v120 = *(v118 + 24);
  if (v186)
  {
    v115[v120] = 1;
  }

  else
  {
    v115[v120] = 2;
  }

  return result;
}

void sub_22B19C32C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v142 = a6;
  v139 = a5;
  v146 = a4;
  v147 = a3;
  v134 = a1;
  v126 = a7;
  v167 = sub_22B36052C();
  v8 = *(v167 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v12 = *(*(v11 - 8) + 64);
  v13 = (MEMORY[0x28223BE20])(v11 - 8);
  v138 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v131 = &v119 - v15;
  v141 = sub_22B35D8BC();
  v160 = *(v141 - 8);
  v16 = *(v160 + 64);
  v17 = (MEMORY[0x28223BE20])(v141);
  v130 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (MEMORY[0x28223BE20])(v17);
  v127 = &v119 - v20;
  MEMORY[0x28223BE20](v19);
  v128 = &v119 - v21;
  v144 = sub_22B35E26C();
  v158 = *(v144 - 8);
  v22 = *(v158 + 64);
  v23 = (MEMORY[0x28223BE20])(v144);
  v137 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v129 = &v119 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v27 = *(*(v26 - 8) + 64);
  v28 = (MEMORY[0x28223BE20])(v26 - 8);
  v148 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v164 = &v119 - v30;
  v31 = sub_22B35DE9C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = (MEMORY[0x28223BE20])(v31);
  v124 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (MEMORY[0x28223BE20])(v34);
  v135 = &v119 - v37;
  v38 = (MEMORY[0x28223BE20])(v36);
  v40 = &v119 - v39;
  MEMORY[0x28223BE20](v38);
  v168 = &v119 - v41;
  v169 = sub_22B35E17C();
  v42 = *(v169 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v169);
  v170 = &v119 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA540, &qword_22B364D40);
  v45 = *(v163 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v163);
  v151 = (&v119 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA548, &qword_22B364D48);
  v49 = *(*(v48 - 8) + 64);
  v50 = (MEMORY[0x28223BE20])(v48 - 8);
  v52 = &v119 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v119 - v54;
  v56 = 0;
  v150 = v42 + 16;
  v153 = a2;
  v57 = *(a2 + 16);
  v161 = (v45 + 48);
  v162 = (v45 + 56);
  v159 = (v42 + 32);
  v165 = (v32 + 48);
  v149 = (v32 + 32);
  v143 = (v158 + 8);
  v123 = (v160 + 56);
  v140 = (v160 + 48);
  v133 = (v160 + 32);
  v125 = (v32 + 16);
  v132 = (v160 + 8);
  v122 = v32;
  v156 = (v32 + 8);
  v152 = v42;
  v160 = v42 + 8;
  v157 = (v8 + 8);
  v158 = v8 + 16;
  v53.n128_u64[0] = 134349056;
  v145 = v53;
  v154 = v40;
  v155 = v57;
  while (1)
  {
    v58 = v163;
    if (v56 != v57)
    {
      break;
    }

    v59 = 1;
    v56 = v57;
LABEL_9:
    (*v162)(v52, v59, 1, v58);
    sub_22B170CD0(v52, v55, &qword_27D8BA548, &qword_22B364D48);
    if ((*v161)(v55, 1, v58) == 1)
    {
      goto LABEL_47;
    }

    v64 = *v55;
    (*v159)(v170, &v55[*(v58 + 48)], v169);
    v65 = v164;
    sub_22B35E16C();
    v66 = *v165;
    if ((*v165)(v65, 1, v31) == 1)
    {
      goto LABEL_13;
    }

    v67 = *v149;
    (*v149)(v168, v164, v31);
    v68 = v148;
    sub_22B35E15C();
    if (v66(v68, 1, v31) == 1)
    {
      (*v156)(v168, v31);
      v65 = v68;
      v57 = v155;
LABEL_13:
      sub_22B123284(v65, &qword_27D8BA340, &qword_22B363FB0);
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v69 = v167;
      v70 = __swift_project_value_buffer(v167, qword_28140BD10);
      swift_beginAccess();
      (*v158)(v166, v70, v69);
      v71 = sub_22B36050C();
      v72 = sub_22B360D1C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = v145.n128_u32[0];
        *(v73 + 4) = v64;
        _os_log_impl(&dword_22B116000, v71, v72, "Error parsing window at idx: %{public}ld", v73, 0xCu);
        MEMORY[0x23188F650](v73, -1, -1);
      }

      (*v157)(v166, v167);
LABEL_3:
      (*v160)(v170, v169);
    }

    else
    {
      v74 = v154;
      v67(v154, v68, v31);
      sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578]);
      if ((sub_22B36074C() & 1) == 0)
      {
        v112 = *v156;
        (*v156)(v74, v31);
        v112(v168, v31);
        (*v160)(v170, v169);
LABEL_47:
        EnergyWindow = type metadata accessor for NextEnergyWindow();
        (*(*(EnergyWindow - 8) + 56))(v126, 1, 1, EnergyWindow);
        return;
      }

      v136 = v67;
      v57 = v155;
      if (!v64)
      {
        v83 = v129;
        sub_22B35E14C();
        v84 = sub_22B35E25C();
        v86 = v85;
        (*v143)(v83, v144);
        if (v84 == v147 && v86 == v146)
        {

          v87 = v131;
        }

        else
        {
          v96 = sub_22B36134C();

          v87 = v131;
          if ((v96 & 1) == 0)
          {
            v109 = v142;
            sub_22B123284(v142, &qword_27D8BA3E8, &unk_22B364790);
            (*v123)(v109, 1, 1, v141);
            goto LABEL_19;
          }
        }

        sub_22B170BE0(v142, v87, &qword_27D8BA3E8, &unk_22B364790);
        v97 = *v140;
        v98 = v141;
        if ((*v140)(v87, 1, v141) == 1)
        {
          sub_22B123284(v87, &qword_27D8BA3E8, &unk_22B364790);
        }

        else
        {
          v121 = v97;
          (*v133)(v128, v87, v98);
          v99 = *v125;
          (*v125)(v135, v168, v31);
          v120 = v99;
          v99(v124, v154, v31);
          v100 = v127;
          sub_22B35D88C();
          v101 = v128;
          if (sub_22B35D83C())
          {
            v102 = v98;
            v103 = v135;
            v104 = v101;
            sub_22B35D86C();
            v105 = sub_22B35DDFC();
            v106 = *v156;
            (*v156)(v103, v31);
            if (v105 & 1) != 0 || (sub_22B35D86C(), v107 = sub_22B35DDEC(), v106(v103, v31), (v107))
            {
              if (!v121(v142, 1, v102))
              {
                v120(v103, v154, v31);
                sub_22B35D87C();
              }

              v108 = *v132;
              (*v132)(v127, v102);
              v108(v128, v102);
            }

            else
            {
              v111 = *v132;
              (*v132)(v127, v102);
              v111(v104, v102);
            }
          }

          else
          {
            v110 = *v132;
            (*v132)(v100, v98);
            v110(v101, v98);
          }
        }
      }

LABEL_19:
      v75 = v137;
      sub_22B35E14C();
      v76 = sub_22B35E25C();
      v78 = v77;
      (*v143)(v75, v144);
      if (v76 == v147 && v78 == v146)
      {

        v79 = v138;
      }

      else
      {
        v80 = sub_22B36134C();

        v79 = v138;
        if ((v80 & 1) == 0)
        {
          v91 = *v156;
          v92 = v154;
          v93 = v31;
          goto LABEL_33;
        }
      }

      v81 = v79;
      sub_22B170BE0(v142, v79, &qword_27D8BA3E8, &unk_22B364790);
      v82 = v141;
      if ((*v140)(v81, 1, v141) == 1)
      {
        sub_22B123284(v81, &qword_27D8BA3E8, &unk_22B364790);
      }

      else
      {
        v88 = v130;
        (*v133)(v130, v81, v82);
        v89 = v135;
        sub_22B35D86C();
        v90 = sub_22B35DDFC();
        v57 = v155;
        v91 = *v156;
        (*v156)(v89, v31);
        (*v132)(v88, v82);
        if (v90)
        {
          v92 = v154;
          v93 = v31;
LABEL_33:
          v91(v92, v93);
          v91(v168, v31);
          goto LABEL_3;
        }
      }

      v94 = sub_22B35DDEC();
      (*v160)(v170, v169);
      if (v94)
      {
        v114 = v126;
        v115 = v136;
        v136(v126, v168, v31);
        v116 = *(v122 + 56);
        v116(v114, 0, 1, v31);
        v117 = type metadata accessor for NextEnergyWindow();
        v118 = *(v117 + 20);
        v115(&v114[v118], v154, v31);
        v116(&v114[v118], 0, 1, v31);
        v114[*(v117 + 24)] = 2;
        (*(*(v117 - 8) + 56))(v114, 0, 1, v117);
        return;
      }

      v95 = *v156;
      (*v156)(v154, v31);
      v95(v168, v31);
    }
  }

  if (v56 < v57)
  {
    if (__OFADD__(v56, 1))
    {
      goto LABEL_50;
    }

    v60 = v152;
    v61 = v153 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v56;
    v62 = *(v163 + 48);
    v63 = v151;
    *v151 = v56;
    (*(v60 + 16))(v63 + v62, v61, v169);
    sub_22B170CD0(v63, v52, &qword_27D8BA540, &qword_22B364D40);
    v59 = 0;
    ++v56;
    goto LABEL_9;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_22B19D504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 296) = a4;
  *(v6 + 304) = v5;
  *(v6 + 754) = a5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a3;
  *(v6 + 272) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v8 = sub_22B35DE9C();
  *(v6 + 328) = v8;
  v9 = *(v8 - 8);
  *(v6 + 336) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  EnergyWindow = type metadata accessor for NextEnergyWindow();
  *(v6 + 384) = EnergyWindow;
  v12 = *(*(EnergyWindow - 8) + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3B0, &unk_22B364610) - 8) + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  v14 = sub_22B35E1DC();
  *(v6 + 408) = v14;
  v15 = *(v14 - 8);
  *(v6 + 416) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 424) = swift_task_alloc();
  v17 = sub_22B35E26C();
  *(v6 + 432) = v17;
  v18 = *(v17 - 8);
  *(v6 + 440) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 448) = swift_task_alloc();
  v20 = sub_22B35E33C();
  *(v6 + 456) = v20;
  v21 = *(v20 - 8);
  *(v6 + 464) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  v23 = sub_22B36052C();
  *(v6 + 488) = v23;
  v24 = *(v23 - 8);
  *(v6 + 496) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  v26 = sub_22B35E20C();
  *(v6 + 552) = v26;
  v27 = *(v26 - 8);
  *(v6 + 560) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 568) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B19D8C0, v5, 0);
}

uint64_t sub_22B19D8C0()
{
  v64 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v57 = *MEMORY[0x277D17EE8];
  v55 = *(v2 + 104);
  v55(v1);

  v7 = sub_22B35E1FC();
  v8 = *(v2 + 8);
  v8(v1, v3);
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v7;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  v9 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v10;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 88) = v9;
  swift_beginAccess();
  v11 = *(v5 + 120);

  LOBYTE(v4) = sub_22B325AD4((v0 + 88), v11);
  sub_22B172074(v0 + 16);

  if (v4)
  {
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 568);
    v13 = *(v0 + 552);
    v14 = qword_28140BDC8;
    *(v0 + 576) = qword_28140BDC8;
    (v55)(v12, v57, v13);
    *(v0 + 752) = sub_22B35E1FC();
    v8(v12, v13);

    return MEMORY[0x2822009F8](sub_22B19DDAC, v14, 0);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 544);
    v16 = *(v0 + 488);
    v17 = *(v0 + 496);
    v18 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v17 + 16))(v15, v18, v16);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "API Misuse! Enable caching before using this API", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    v22 = *(v0 + 544);
    v23 = *(v0 + 488);
    v24 = *(v0 + 496);
    v25 = *(v0 + 384);
    v26 = *(v0 + 328);
    v27 = *(v0 + 336);
    v28 = *(v0 + 272);

    (*(v24 + 8))(v22, v23);
    v29 = [objc_opt_self() processInfo];
    v30 = [v29 processName];

    v31 = sub_22B36084C();
    v33 = v32;

    v59 = 0;
    v60 = 7;
    v61 = v31;
    v62 = v33;
    v63 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v59);

    v34 = *(v27 + 56);
    v34(v28, 1, 1, v26);
    v34(v28 + *(v25 + 20), 1, 1, v26);
    *(v28 + *(v25 + 24)) = 2;
    v35 = *(v0 + 568);
    v36 = *(v0 + 544);
    v37 = *(v0 + 536);
    v38 = *(v0 + 528);
    v39 = *(v0 + 520);
    v41 = *(v0 + 504);
    v40 = *(v0 + 512);
    v43 = *(v0 + 472);
    v42 = *(v0 + 480);
    v44 = *(v0 + 448);
    v47 = *(v0 + 424);
    v48 = *(v0 + 400);
    v49 = *(v0 + 392);
    v50 = *(v0 + 376);
    v51 = *(v0 + 368);
    v52 = *(v0 + 360);
    v53 = *(v0 + 352);
    v54 = *(v0 + 344);
    v56 = *(v0 + 320);
    v58 = *(v0 + 312);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_22B19DDAC()
{
  v33 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 536);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v0 + 296);
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 584) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 592) = v6;
  *(v0 + 600) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 752);
    v31 = *(v0 + 536);
    v10 = *(v0 + 488);
    v11 = *(v0 + 496);
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136381187;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v32);
    *(v14 + 12) = 512;
    *(v14 + 14) = v9;
    *(v14 + 16) = 1024;
    *(v14 + 18) = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Get energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v16 = *(v11 + 8);
    v16(v31, v10);
  }

  else
  {
    v17 = *(v0 + 536);
    v18 = *(v0 + 488);
    v19 = *(v0 + 496);

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  *(v0 + 608) = v16;
  v20 = *(*(v0 + 576) + 112);
  if (v20)
  {
    v21 = *(v0 + 752);
    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    v24 = *(v0 + 288);
    v25 = *(v20 + 48);
    v26 = swift_task_alloc();
    *(v26 + 16) = v20;
    *(v26 + 24) = v24;
    *(v26 + 32) = v23;
    *(v26 + 40) = v21;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0xE000000000000000;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0xE000000000000000;
    *(v26 + 80) = 0;
    *(v26 + 88) = 0xE000000000000000;
    v27 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA530, &qword_22B364D38);
    sub_22B360E7C();
    *(v0 + 616) = 0;

    *(v0 + 624) = *(v0 + 256);
    v28 = sub_22B19E0B8;
    v29 = v22;
  }

  else
  {
    v29 = *(v0 + 304);
    v28 = sub_22B19E870;
  }

  return MEMORY[0x2822009F8](v28, v29, 0);
}

uint64_t sub_22B19E0B8()
{
  v101 = v0;
  if (*(v0 + 632) >> 60 == 15)
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 328);
    v3 = *(v0 + 336);
    v4 = *(v0 + 272);
LABEL_10:
    v43 = *(v3 + 56);
    v43(v4, 1, 1, v2);
    v43(v4 + *(v1 + 20), 1, 1, v2);
LABEL_11:
    *(v4 + *(v1 + 24)) = 2;
    v44 = *(v0 + 568);
    v45 = *(v0 + 544);
    v46 = *(v0 + 536);
    v47 = *(v0 + 528);
    v48 = *(v0 + 520);
    v50 = *(v0 + 504);
    v49 = *(v0 + 512);
    v52 = *(v0 + 472);
    v51 = *(v0 + 480);
    v53 = *(v0 + 448);
    v80 = *(v0 + 424);
    v81 = *(v0 + 400);
    v82 = *(v0 + 392);
    v83 = *(v0 + 376);
    v84 = *(v0 + 368);
    v85 = *(v0 + 360);
    v86 = *(v0 + 352);
    v89 = *(v0 + 344);
    v92 = *(v0 + 320);
    v97 = *(v0 + 312);

    v54 = *(v0 + 8);

    return v54();
  }

  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  v7 = *(v0 + 472);
  v8 = *(v0 + 456);
  v9 = MEMORY[0x23188EEB0]();
  v10 = sub_22B35D7FC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_22B35D7EC();
  sub_22B1A1F70(&qword_27D8BA538, MEMORY[0x277D17FB0]);
  sub_22B35D7DC();
  v13 = *(v0 + 600);
  v14 = *(v0 + 592);
  v15 = *(v0 + 584);
  v16 = *(v0 + 488);
  if (v6)
  {
    v17 = *(v0 + 520);

    objc_autoreleasePoolPop(v9);
    v14(v17, v15, v16);
    v18 = v6;
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 632);
    v23 = *(v0 + 624);
    if (v21)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v6;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_22B116000, v19, v20, "Error unarchiving guidance data from cache. %@", v24, 0xCu);
      sub_22B123284(v25, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);
      sub_22B11EDC0(v23, v22);
    }

    else
    {

      sub_22B11EDC0(v23, v22);
    }

    v1 = *(v0 + 384);
    v2 = *(v0 + 328);
    v3 = *(v0 + 336);
    v4 = *(v0 + 272);
    v42 = *(v0 + 496) + 8;
    (*(v0 + 608))(*(v0 + 520), *(v0 + 488));
    goto LABEL_10;
  }

  v28 = *(v0 + 528);
  v88 = *(v0 + 472);
  v91 = *(v0 + 480);
  v30 = *(v0 + 456);
  v29 = *(v0 + 464);
  v95 = *(v0 + 296);

  objc_autoreleasePoolPop(v9);
  (*(v29 + 32))(v91, v88, v30);
  v14(v28, v15, v16);

  v31 = sub_22B36050C();
  v32 = sub_22B360D2C();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 608);
  v35 = *(v0 + 528);
  v36 = *(v0 + 488);
  v37 = *(v0 + 496);
  if (v33)
  {
    v96 = *(v0 + 608);
    v39 = *(v0 + 288);
    v38 = *(v0 + 296);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v100 = v41;
    *v40 = 136380675;
    *(v40 + 4) = sub_22B1A7B20(v39, v38, &v100);
    _os_log_impl(&dword_22B116000, v31, v32, "Returning cached energy guidance for %{private}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23188F650](v41, -1, -1);
    MEMORY[0x23188F650](v40, -1, -1);

    v96(v35, v36);
  }

  else
  {

    v34(v35, v36);
  }

  v56 = *(v0 + 480);
  v57 = *(v0 + 408);
  v58 = *(v0 + 416);
  v59 = *(v0 + 400);
  (*(*(v0 + 440) + 104))(*(v0 + 448), *MEMORY[0x277D17F20], *(v0 + 432));
  sub_22B35E31C();
  if ((*(v58 + 48))(v59, 1, v57) == 1)
  {
    v60 = *(v0 + 456);
    v61 = *(v0 + 464);
    v63 = *(v0 + 440);
    v62 = *(v0 + 448);
    v64 = *(v0 + 432);
    v93 = *(v0 + 480);
    v98 = *(v0 + 400);
    v1 = *(v0 + 384);
    v66 = *(v0 + 328);
    v65 = *(v0 + 336);
    v4 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    (*(v63 + 8))(v62, v64);
    (*(v61 + 8))(v93, v60);
    sub_22B123284(v98, &qword_27D8BA3B0, &unk_22B364610);
    v67 = *(v65 + 56);
    v67(v4, 1, 1, v66);
    v67(v4 + *(v1 + 20), 1, 1, v66);
    goto LABEL_11;
  }

  (*(*(v0 + 416) + 32))(*(v0 + 424), *(v0 + 400), *(v0 + 408));
  v68 = sub_22B35E1AC();
  *(v0 + 640) = v68;
  if (!v68)
  {
    v72 = *(v0 + 464);
    v94 = *(v0 + 456);
    v99 = *(v0 + 480);
    v73 = *(v0 + 440);
    v74 = *(v0 + 424);
    v87 = *(v0 + 432);
    v90 = *(v0 + 448);
    v76 = *(v0 + 408);
    v75 = *(v0 + 416);
    v1 = *(v0 + 384);
    v78 = *(v0 + 328);
    v77 = *(v0 + 336);
    v4 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    (*(v75 + 8))(v74, v76);
    (*(v73 + 8))(v90, v87);
    (*(v72 + 8))(v99, v94);
    v79 = *(v77 + 56);
    v79(v4, 1, 1, v78);
    v79(v4 + *(v1 + 20), 1, 1, v78);
    goto LABEL_11;
  }

  v69 = *(v0 + 448);
  *(v0 + 648) = sub_22B35E25C();
  *(v0 + 656) = v70;
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v71 = qword_28140BD80;
  *(v0 + 664) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B19EA28, v71, 0);
}

uint64_t sub_22B19E870()
{
  v1 = v0[48];
  v2 = v0[41];
  v3 = v0[34];
  v4 = *(v0[42] + 56);
  v4(v3, 1, 1, v2);
  v4(v3 + *(v1 + 20), 1, 1, v2);
  *(v3 + *(v1 + 24)) = 2;
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  v11 = v0[63];
  v10 = v0[64];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[56];
  v17 = v0[53];
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[43];
  v25 = v0[40];
  v26 = v0[39];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22B19EA28()
{
  v1 = v0[83];
  v2 = v0[47];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[38];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[84] = v7;
  v0[85] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B19EAF4, v5, 0);
}

uint64_t sub_22B19EAF4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  sub_22B19AB60(*(v0 + 280), *(v0 + 640), *(v0 + 648), *(v0 + 656), v2, *(v0 + 754), v1);

  v6 = *(v4 + 8);
  *(v0 + 688) = v6;
  *(v0 + 696) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  sub_22B170BE0(v1, v5, &qword_27D8BA340, &qword_22B363FB0);
  v7 = *(v4 + 48);
  *(v0 + 704) = v7;
  *(v0 + 712) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v5, 1, v3) == 1)
  {
    v47 = *(v0 + 480);
    v8 = *(v0 + 456);
    v9 = *(v0 + 464);
    v11 = *(v0 + 440);
    v10 = *(v0 + 448);
    v13 = *(v0 + 424);
    v12 = *(v0 + 432);
    v15 = *(v0 + 408);
    v14 = *(v0 + 416);
    v16 = *(v0 + 320);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v47, v8);
    sub_22B123284(v16, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B1A1FF4(*(v0 + 392), *(v0 + 272));
    v17 = *(v0 + 568);
    v18 = *(v0 + 544);
    v19 = *(v0 + 536);
    v20 = *(v0 + 528);
    v21 = *(v0 + 520);
    v23 = *(v0 + 504);
    v22 = *(v0 + 512);
    v25 = *(v0 + 472);
    v24 = *(v0 + 480);
    v26 = *(v0 + 448);
    v38 = *(v0 + 424);
    v39 = *(v0 + 400);
    v40 = *(v0 + 392);
    v41 = *(v0 + 376);
    v42 = *(v0 + 368);
    v43 = *(v0 + 360);
    v44 = *(v0 + 352);
    v45 = *(v0 + 344);
    v46 = *(v0 + 320);
    v48 = *(v0 + 312);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 368);
    v30 = *(v0 + 328);
    v31 = *(v0 + 336);
    v32 = *(v0 + 320);
    v33 = *(v31 + 32);
    *(v0 + 720) = v33;
    *(v0 + 728) = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v33(v29, v32, v30);
    v34 = swift_task_alloc();
    *(v0 + 736) = v34;
    *v34 = v0;
    v34[1] = sub_22B19EE58;
    v35 = *(v0 + 296);
    v36 = *(v0 + 304);
    v37 = *(v0 + 288);

    return sub_22B198B80(v37, v35);
  }
}

uint64_t sub_22B19EE58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 736);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[93] = v6;
  *v6 = v5;
  v6[1] = sub_22B19EFD4;
  v7 = v3[53];
  v8 = v3[39];
  v9 = v3[38];

  return sub_22B198F5C(v8, v7, a1);
}

uint64_t sub_22B19EFD4()
{
  v1 = *(*v0 + 744);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B19F0E4, v2, 0);
}

uint64_t sub_22B19F0E4()
{
  v119 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  if ((*(v0 + 704))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 688);
    v5 = *(v0 + 464);
    v108 = *(v0 + 456);
    v113 = *(v0 + 480);
    v6 = *(v0 + 440);
    v103 = *(v0 + 448);
    v7 = *(v0 + 424);
    v93 = *(v0 + 696);
    v98 = *(v0 + 432);
    v9 = *(v0 + 408);
    v8 = *(v0 + 416);
    v10 = *(v0 + 368);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    v4(v10, v2);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v103, v98);
    (*(v5 + 8))(v113, v108);
    sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
LABEL_5:
    sub_22B1A1FF4(*(v0 + 392), *(v0 + 272));
    goto LABEL_12;
  }

  v11 = *(v0 + 728);
  v12 = *(v0 + 368);
  (*(v0 + 720))(*(v0 + 360), v3, v2);
  sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    v13 = *(v0 + 696);
    v14 = *(v0 + 688);
    v15 = *(v0 + 464);
    v109 = *(v0 + 456);
    v114 = *(v0 + 480);
    v16 = *(v0 + 440);
    v99 = *(v0 + 432);
    v104 = *(v0 + 448);
    v94 = *(v0 + 424);
    v18 = *(v0 + 408);
    v17 = *(v0 + 416);
    v20 = *(v0 + 360);
    v19 = *(v0 + 368);
    v21 = *(v0 + 328);
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));
    v14(v20, v21);
    v14(v19, v21);
    (*(v17 + 8))(v94, v18);
    (*(v16 + 8))(v104, v99);
    (*(v15 + 8))(v114, v109);
    goto LABEL_5;
  }

  v22 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 512), *(v0 + 584), *(v0 + 488));
  v23 = sub_22B36050C();
  v24 = sub_22B360D1C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22B116000, v23, v24, "Grid Data stale and aged out. Not eligible for notification usage", v25, 2u);
    MEMORY[0x23188F650](v25, -1, -1);
  }

  v26 = v23;
  v27 = *(v0 + 680);
  v28 = *(v0 + 672);
  v29 = *(v0 + 608);
  v105 = *(v0 + 592);
  v110 = *(v0 + 600);
  v90 = *(v0 + 584);
  v31 = *(v0 + 504);
  v30 = *(v0 + 512);
  v33 = *(v0 + 488);
  v32 = *(v0 + 496);
  v115 = *(v0 + 360);
  v34 = *(v0 + 352);
  v95 = *(v0 + 368);
  v100 = *(v0 + 344);
  v35 = *(v0 + 328);

  v29(v30, v33);
  v105(v31, v90, v33);
  v28(v34, v95, v35);
  v28(v100, v115, v35);
  v36 = sub_22B36050C();
  v78 = sub_22B360D1C();
  log = v36;
  v37 = os_log_type_enabled(v36, v78);
  v38 = *(v0 + 696);
  v39 = *(v0 + 688);
  v88 = *(v0 + 608);
  v80 = *(v0 + 496);
  v40 = *(v0 + 480);
  v82 = *(v0 + 488);
  v84 = *(v0 + 504);
  v42 = *(v0 + 456);
  v41 = *(v0 + 464);
  v43 = *(v0 + 440);
  v111 = *(v0 + 432);
  v116 = *(v0 + 448);
  v101 = *(v0 + 424);
  v106 = *(v0 + 416);
  v96 = *(v0 + 408);
  v91 = *(v0 + 392);
  v81 = *(v0 + 368);
  v79 = *(v0 + 360);
  v45 = *(v0 + 344);
  v44 = *(v0 + 352);
  v46 = *(v0 + 328);
  if (v37)
  {
    v73 = *(v0 + 624);
    v74 = *(v0 + 632);
    v77 = *(v0 + 480);
    v47 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v118 = v72;
    *v47 = 136315394;
    sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578]);
    v75 = v43;
    v76 = v41;
    v48 = sub_22B36131C();
    v50 = v49;
    v39(v44, v46);
    v51 = sub_22B1A7B20(v48, v50, &v118);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = sub_22B36131C();
    v54 = v53;
    v39(v45, v46);
    v55 = sub_22B1A7B20(v52, v54, &v118);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_22B116000, log, v78, "nextStartDate: %s vs ageOutDate: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v72, -1, -1);
    MEMORY[0x23188F650](v47, -1, -1);
    sub_22B11EDC0(v73, v74);

    v88(v84, v82);
    v39(v79, v46);
    v39(v81, v46);
    sub_22B1A2058(v91, type metadata accessor for NextEnergyWindow);
    (*(v106 + 8))(v101, v96);
    (*(v75 + 8))(v116, v111);
    (*(v76 + 8))(v77, v42);
  }

  else
  {
    sub_22B11EDC0(*(v0 + 624), *(v0 + 632));

    v39(v45, v46);
    v39(v44, v46);
    v88(v84, v82);
    v39(v79, v46);
    v39(v81, v46);
    sub_22B1A2058(v91, type metadata accessor for NextEnergyWindow);
    (*(v106 + 8))(v101, v96);
    (*(v43 + 8))(v116, v111);
    (*(v41 + 8))(v40, v42);
  }

  v56 = *(v0 + 384);
  v57 = *(v0 + 328);
  v58 = *(v0 + 272);
  v59 = *(*(v0 + 336) + 56);
  v59(v58, 1, 1, v57);
  v59(v58 + *(v56 + 20), 1, 1, v57);
  *(v58 + *(v56 + 24)) = 2;
LABEL_12:
  v60 = *(v0 + 568);
  v61 = *(v0 + 544);
  v62 = *(v0 + 536);
  v63 = *(v0 + 528);
  v64 = *(v0 + 520);
  v66 = *(v0 + 504);
  v65 = *(v0 + 512);
  v68 = *(v0 + 472);
  v67 = *(v0 + 480);
  v69 = *(v0 + 448);
  v83 = *(v0 + 424);
  v85 = *(v0 + 400);
  loga = *(v0 + 392);
  v89 = *(v0 + 376);
  v92 = *(v0 + 368);
  v97 = *(v0 + 360);
  v102 = *(v0 + 352);
  v107 = *(v0 + 344);
  v112 = *(v0 + 320);
  v117 = *(v0 + 312);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_22B19F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[38] = a5;
  v6[39] = v5;
  v6[36] = a3;
  v6[37] = a4;
  v6[34] = a1;
  v6[35] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v8 = sub_22B35DE9C();
  v6[42] = v8;
  v9 = *(v8 - 8);
  v6[43] = v9;
  v10 = *(v9 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA528, &unk_22B364D28) - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3B0, &unk_22B364610) - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v13 = sub_22B35E1DC();
  v6[52] = v13;
  v14 = *(v13 - 8);
  v6[53] = v14;
  v15 = *(v14 + 64) + 15;
  v6[54] = swift_task_alloc();
  v16 = sub_22B35E26C();
  v6[55] = v16;
  v17 = *(v16 - 8);
  v6[56] = v17;
  v18 = *(v17 + 64) + 15;
  v6[57] = swift_task_alloc();
  v19 = sub_22B35E33C();
  v6[58] = v19;
  v20 = *(v19 - 8);
  v6[59] = v20;
  v21 = *(v20 + 64) + 15;
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v22 = sub_22B36052C();
  v6[62] = v22;
  v23 = *(v22 - 8);
  v6[63] = v23;
  v24 = *(v23 + 64) + 15;
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v25 = sub_22B35E20C();
  v6[70] = v25;
  v26 = *(v25 - 8);
  v6[71] = v26;
  v27 = *(v26 + 64) + 15;
  v6[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B19FCB8, v5, 0);
}

uint64_t sub_22B19FCB8()
{
  v62 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v55 = *MEMORY[0x277D17EE8];
  v53 = *(v2 + 104);
  v53(v1);

  v7 = sub_22B35E1FC();
  v8 = *(v2 + 8);
  v8(v1, v3);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  v9 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v10 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v10;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 88) = v9;
  swift_beginAccess();
  v11 = *(v4 + 120);

  LOBYTE(v6) = sub_22B325AD4((v0 + 88), v11);
  sub_22B172074(v0 + 16);

  if (v6)
  {
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 576);
    v13 = *(v0 + 560);
    v14 = qword_28140BDC8;
    *(v0 + 584) = qword_28140BDC8;
    (v53)(v12, v55, v13);
    *(v0 + 776) = sub_22B35E1FC();
    v8(v12, v13);

    return MEMORY[0x2822009F8](sub_22B1A01A0, v14, 0);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 552);
    v16 = *(v0 + 496);
    v17 = *(v0 + 504);
    v18 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    (*(v17 + 16))(v15, v18, v16);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "API Misuse! Enable caching before using this API", v21, 2u);
      MEMORY[0x23188F650](v21, -1, -1);
    }

    v22 = *(v0 + 552);
    v23 = *(v0 + 496);
    v24 = *(v0 + 504);
    v25 = *(v0 + 272);

    (*(v24 + 8))(v22, v23);
    v26 = [objc_opt_self() processInfo];
    v27 = [v26 processName];

    v28 = sub_22B36084C();
    v30 = v29;

    v57 = 0;
    v58 = 7;
    v59 = v28;
    v60 = v30;
    v61 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v57);

    EnergyWindow = type metadata accessor for NextEnergyWindow();
    (*(*(EnergyWindow - 8) + 56))(v25, 1, 1, EnergyWindow);
    v32 = *(v0 + 576);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 536);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    v38 = *(v0 + 512);
    v40 = *(v0 + 480);
    v39 = *(v0 + 488);
    v41 = *(v0 + 456);
    v44 = *(v0 + 432);
    v45 = *(v0 + 408);
    v46 = *(v0 + 400);
    v47 = *(v0 + 392);
    v48 = *(v0 + 384);
    v49 = *(v0 + 376);
    v50 = *(v0 + 368);
    v51 = *(v0 + 360);
    v52 = *(v0 + 352);
    v54 = *(v0 + 328);
    v56 = *(v0 + 320);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_22B1A01A0()
{
  v33 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v4 = *(v0 + 296);
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 592) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 600) = v6;
  *(v0 + 608) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 776);
    v31 = *(v0 + 544);
    v10 = *(v0 + 496);
    v11 = *(v0 + 504);
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136381187;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v32);
    *(v14 + 12) = 512;
    *(v14 + 14) = v9;
    *(v14 + 16) = 1024;
    *(v14 + 18) = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Get energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v16 = *(v11 + 8);
    v16(v31, v10);
  }

  else
  {
    v17 = *(v0 + 544);
    v18 = *(v0 + 496);
    v19 = *(v0 + 504);

    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  *(v0 + 616) = v16;
  v20 = *(*(v0 + 584) + 112);
  if (v20)
  {
    v21 = *(v0 + 776);
    v22 = *(v0 + 312);
    v24 = *(v0 + 288);
    v23 = *(v0 + 296);
    v25 = *(v20 + 48);
    v26 = swift_task_alloc();
    *(v26 + 16) = v20;
    *(v26 + 24) = v24;
    *(v26 + 32) = v23;
    *(v26 + 40) = v21;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0xE000000000000000;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0xE000000000000000;
    *(v26 + 80) = 0;
    *(v26 + 88) = 0xE000000000000000;
    v27 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA530, &qword_22B364D38);
    sub_22B360E7C();
    *(v0 + 624) = 0;

    *(v0 + 632) = *(v0 + 256);
    v28 = sub_22B1A04B0;
    v29 = v22;
  }

  else
  {
    v29 = *(v0 + 312);
    v28 = sub_22B1A0BCC;
  }

  return MEMORY[0x2822009F8](v28, v29, 0);
}

uint64_t sub_22B1A04B0()
{
  v93 = v0;
  if (*(v0 + 640) >> 60 == 15)
  {
    v1 = *(v0 + 272);
LABEL_20:
    EnergyWindow = type metadata accessor for NextEnergyWindow();
    (*(*(EnergyWindow - 8) + 56))(v1, 1, 1, EnergyWindow);
    v64 = *(v0 + 576);
    v65 = *(v0 + 552);
    v66 = *(v0 + 544);
    v67 = *(v0 + 536);
    v68 = *(v0 + 528);
    v69 = *(v0 + 520);
    v70 = *(v0 + 512);
    v72 = *(v0 + 480);
    v71 = *(v0 + 488);
    v73 = *(v0 + 456);
    v76 = *(v0 + 432);
    v77 = *(v0 + 408);
    v78 = *(v0 + 400);
    v79 = *(v0 + 392);
    v80 = *(v0 + 384);
    v81 = *(v0 + 376);
    v82 = *(v0 + 368);
    v83 = *(v0 + 360);
    v85 = *(v0 + 352);
    v87 = *(v0 + 328);
    v91 = *(v0 + 320);

    v74 = *(v0 + 8);

    return v74();
  }

  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 480);
  v5 = *(v0 + 464);
  v6 = MEMORY[0x23188EEB0]();
  v7 = sub_22B35D7FC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_22B35D7EC();
  sub_22B1A1F70(&qword_27D8BA538, MEMORY[0x277D17FB0]);
  sub_22B35D7DC();
  v10 = *(v0 + 608);
  v11 = *(v0 + 600);
  v12 = *(v0 + 592);
  v13 = *(v0 + 496);
  if (v3)
  {
    v14 = *(v0 + 528);

    objc_autoreleasePoolPop(v6);
    v11(v14, v12, v13);
    v15 = v3;
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 640);
    v20 = *(v0 + 632);
    if (v18)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v3;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_22B116000, v16, v17, "Error unarchiving guidance data from cache. %@", v21, 0xCu);
      sub_22B123284(v22, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v21, -1, -1);
      sub_22B11EDC0(v20, v19);
    }

    else
    {

      sub_22B11EDC0(v20, v19);
    }

    v1 = *(v0 + 272);
    v39 = *(v0 + 504) + 8;
    (*(v0 + 616))(*(v0 + 528), *(v0 + 496));
    goto LABEL_20;
  }

  v25 = *(v0 + 536);
  v84 = *(v0 + 480);
  v86 = *(v0 + 488);
  v27 = *(v0 + 464);
  v26 = *(v0 + 472);
  v88 = *(v0 + 296);

  objc_autoreleasePoolPop(v6);
  (*(v26 + 32))(v86, v84, v27);
  v11(v25, v12, v13);

  v28 = sub_22B36050C();
  v29 = sub_22B360D2C();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 616);
  v32 = *(v0 + 536);
  v33 = *(v0 + 496);
  v34 = *(v0 + 504);
  if (v30)
  {
    v89 = *(v0 + 616);
    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v92 = v38;
    *v37 = 136380675;
    *(v37 + 4) = sub_22B1A7B20(v36, v35, &v92);
    _os_log_impl(&dword_22B116000, v28, v29, "Returning cached energy guidance for %{private}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x23188F650](v38, -1, -1);
    MEMORY[0x23188F650](v37, -1, -1);

    v89(v32, v33);
  }

  else
  {

    v31(v32, v33);
  }

  v40 = *(v0 + 488);
  v41 = *(v0 + 416);
  v42 = *(v0 + 424);
  v43 = *(v0 + 408);
  (*(*(v0 + 448) + 104))(*(v0 + 456), *MEMORY[0x277D17F20], *(v0 + 440));
  sub_22B35E31C();
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v44 = *(v0 + 488);
    v45 = *(v0 + 464);
    v46 = *(v0 + 472);
    v48 = *(v0 + 448);
    v47 = *(v0 + 456);
    v49 = *(v0 + 440);
    v50 = *(v0 + 408);
    v1 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    (*(v48 + 8))(v47, v49);
    (*(v46 + 8))(v44, v45);
    sub_22B123284(v50, &qword_27D8BA3B0, &unk_22B364610);
    goto LABEL_20;
  }

  (*(*(v0 + 424) + 32))(*(v0 + 432), *(v0 + 408), *(v0 + 416));
  v51 = sub_22B35E1AC();
  *(v0 + 648) = v51;
  if (!v51)
  {
    v90 = *(v0 + 488);
    v55 = *(v0 + 464);
    v56 = *(v0 + 472);
    v58 = *(v0 + 448);
    v57 = *(v0 + 456);
    v60 = *(v0 + 432);
    v59 = *(v0 + 440);
    v62 = *(v0 + 416);
    v61 = *(v0 + 424);
    v1 = *(v0 + 272);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    (*(v61 + 8))(v60, v62);
    (*(v58 + 8))(v57, v59);
    (*(v56 + 8))(v90, v55);
    goto LABEL_20;
  }

  v52 = *(v0 + 456);
  *(v0 + 656) = sub_22B35E25C();
  *(v0 + 664) = v53;
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v54 = qword_28140BD80;
  *(v0 + 672) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B1A0D80, v54, 0);
}

uint64_t sub_22B1A0BCC()
{
  v1 = v0[34];
  EnergyWindow = type metadata accessor for NextEnergyWindow();
  (*(*(EnergyWindow - 8) + 56))(v1, 1, 1, EnergyWindow);
  v3 = v0[72];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[57];
  v15 = v0[54];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[49];
  v19 = v0[48];
  v20 = v0[47];
  v21 = v0[46];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[41];
  v25 = v0[40];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B1A0D80()
{
  v1 = v0[84];
  v2 = v0[48];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[39];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[85] = v7;
  v0[86] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B1A0E4C, v5, 0);
}

uint64_t sub_22B1A0E4C()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[42];
  v5 = v0[43];
  sub_22B19C32C(v0[35], v0[81], v0[82], v0[83], v3, v0[38], v2);

  v6 = *(v5 + 8);
  v0[87] = v6;
  v0[88] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  sub_22B170BE0(v2, v1, &qword_27D8BA528, &unk_22B364D28);
  EnergyWindow = type metadata accessor for NextEnergyWindow();
  v0[89] = EnergyWindow;
  v8 = *(EnergyWindow - 8);
  v0[90] = v8;
  if ((*(v8 + 48))(v1, 1, EnergyWindow) == 1)
  {
    v9 = v0[59];
    v60 = v0[58];
    v62 = v0[61];
    v11 = v0[56];
    v10 = v0[57];
    v13 = v0[54];
    v12 = v0[55];
    v15 = v0[52];
    v14 = v0[53];
    v16 = v0[49];
    v17 = v0[43];
    v64 = v0[41];
    v66 = v0[42];
    sub_22B11EDC0(v0[79], v0[80]);
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v62, v60);
    sub_22B123284(v16, &qword_27D8BA528, &unk_22B364D28);
    (*(v17 + 56))(v64, 1, 1, v66);
LABEL_5:
    sub_22B123284(v0[41], &qword_27D8BA340, &qword_22B363FB0);
    sub_22B170CD0(v0[50], v0[34], &qword_27D8BA528, &unk_22B364D28);
    v32 = v0[72];
    v33 = v0[69];
    v34 = v0[68];
    v35 = v0[67];
    v36 = v0[66];
    v37 = v0[65];
    v38 = v0[64];
    v40 = v0[60];
    v39 = v0[61];
    v41 = v0[57];
    v53 = v0[54];
    v54 = v0[51];
    v55 = v0[50];
    v56 = v0[49];
    v57 = v0[48];
    v58 = v0[47];
    v59 = v0[46];
    v61 = v0[45];
    v63 = v0[44];
    v65 = v0[41];
    v67 = v0[40];

    v42 = v0[1];

    return v42();
  }

  v18 = v0[49];
  v19 = v0[42];
  v20 = v0[43];
  v21 = v0[41];
  sub_22B170BE0(v18, v21, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B1A2058(v18, type metadata accessor for NextEnergyWindow);
  v22 = *(v20 + 48);
  v0[91] = v22;
  v0[92] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v22(v21, 1, v19) == 1)
  {
    v23 = v0[61];
    v24 = v0[58];
    v25 = v0[59];
    v27 = v0[56];
    v26 = v0[57];
    v29 = v0[54];
    v28 = v0[55];
    v30 = v0[52];
    v31 = v0[53];
    sub_22B11EDC0(v0[79], v0[80]);
    (*(v31 + 8))(v29, v30);
    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v23, v24);
    goto LABEL_5;
  }

  v44 = v0[47];
  v45 = v0[42];
  v46 = v0[43];
  v47 = v0[41];
  v48 = *(v46 + 32);
  v0[93] = v48;
  v0[94] = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v48(v44, v47, v45);
  v49 = swift_task_alloc();
  v0[95] = v49;
  *v49 = v0;
  v49[1] = sub_22B1A1310;
  v50 = v0[39];
  v52 = v0[36];
  v51 = v0[37];

  return sub_22B198B80(v52, v51);
}

uint64_t sub_22B1A1310(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 760);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[96] = v6;
  *v6 = v5;
  v6[1] = sub_22B1A148C;
  v7 = v3[54];
  v8 = v3[40];
  v9 = v3[39];

  return sub_22B198F5C(v8, v7, a1);
}

uint64_t sub_22B1A148C()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1A159C, v2, 0);
}

uint64_t sub_22B1A159C()
{
  v116 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  if ((*(v0 + 728))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 472);
    v105 = *(v0 + 464);
    v110 = *(v0 + 488);
    v6 = *(v0 + 448);
    v100 = *(v0 + 456);
    v7 = *(v0 + 432);
    v90 = *(v0 + 704);
    v95 = *(v0 + 440);
    v9 = *(v0 + 416);
    v8 = *(v0 + 424);
    v10 = *(v0 + 376);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    v4(v10, v2);
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v100, v95);
    (*(v5 + 8))(v110, v105);
    sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);
LABEL_5:
    sub_22B170CD0(*(v0 + 400), *(v0 + 272), &qword_27D8BA528, &unk_22B364D28);
    goto LABEL_12;
  }

  v11 = *(v0 + 752);
  v12 = *(v0 + 376);
  (*(v0 + 744))(*(v0 + 368), v3, v2);
  sub_22B1A1F70(&qword_28140B490, MEMORY[0x277CC9578]);
  if (sub_22B36074C())
  {
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 472);
    v106 = *(v0 + 464);
    v111 = *(v0 + 488);
    v16 = *(v0 + 448);
    v96 = *(v0 + 440);
    v101 = *(v0 + 456);
    v91 = *(v0 + 432);
    v18 = *(v0 + 416);
    v17 = *(v0 + 424);
    v20 = *(v0 + 368);
    v19 = *(v0 + 376);
    v21 = *(v0 + 336);
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));
    v14(v20, v21);
    v14(v19, v21);
    (*(v17 + 8))(v91, v18);
    (*(v16 + 8))(v101, v96);
    (*(v15 + 8))(v111, v106);
    goto LABEL_5;
  }

  v22 = *(v0 + 608);
  (*(v0 + 600))(*(v0 + 520), *(v0 + 592), *(v0 + 496));
  v23 = sub_22B36050C();
  v24 = sub_22B360D1C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22B116000, v23, v24, "Grid Data stale and aged out. Not eligible for notification usage", v25, 2u);
    MEMORY[0x23188F650](v25, -1, -1);
  }

  v26 = v23;
  v27 = *(v0 + 688);
  v28 = *(v0 + 680);
  v29 = *(v0 + 616);
  v102 = *(v0 + 600);
  v107 = *(v0 + 608);
  v87 = *(v0 + 592);
  v30 = *(v0 + 520);
  v31 = *(v0 + 504);
  v32 = *(v0 + 512);
  v33 = *(v0 + 496);
  v112 = *(v0 + 368);
  v34 = *(v0 + 360);
  v92 = *(v0 + 376);
  v97 = *(v0 + 352);
  v35 = *(v0 + 336);

  v29(v30, v33);
  v102(v32, v87, v33);
  v28(v34, v92, v35);
  v28(v97, v112, v35);
  v36 = sub_22B36050C();
  v74 = sub_22B360D1C();
  log = v36;
  v37 = os_log_type_enabled(v36, v74);
  v38 = *(v0 + 704);
  v39 = *(v0 + 696);
  v85 = *(v0 + 616);
  v76 = *(v0 + 504);
  v40 = *(v0 + 488);
  v79 = *(v0 + 496);
  v81 = *(v0 + 512);
  v42 = *(v0 + 464);
  v41 = *(v0 + 472);
  v43 = *(v0 + 448);
  v108 = *(v0 + 440);
  v113 = *(v0 + 456);
  v98 = *(v0 + 432);
  v103 = *(v0 + 424);
  v93 = *(v0 + 416);
  v88 = *(v0 + 400);
  v77 = *(v0 + 376);
  v75 = *(v0 + 368);
  v45 = *(v0 + 352);
  v44 = *(v0 + 360);
  v46 = *(v0 + 336);
  if (v37)
  {
    v69 = *(v0 + 632);
    v70 = *(v0 + 640);
    v73 = *(v0 + 488);
    v47 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v115 = v68;
    *v47 = 136315394;
    sub_22B1A1F70(&qword_28140B488, MEMORY[0x277CC9578]);
    v71 = v43;
    v72 = v41;
    v48 = sub_22B36131C();
    v50 = v49;
    v39(v44, v46);
    v51 = sub_22B1A7B20(v48, v50, &v115);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    v52 = sub_22B36131C();
    v54 = v53;
    v39(v45, v46);
    v55 = sub_22B1A7B20(v52, v54, &v115);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_22B116000, log, v74, "nextStartDate: %s vs ageOutDate: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v68, -1, -1);
    MEMORY[0x23188F650](v47, -1, -1);
    sub_22B11EDC0(v69, v70);

    v85(v81, v79);
    v39(v75, v46);
    v39(v77, v46);
    sub_22B123284(v88, &qword_27D8BA528, &unk_22B364D28);
    (*(v103 + 8))(v98, v93);
    (*(v71 + 8))(v113, v108);
    (*(v72 + 8))(v73, v42);
  }

  else
  {
    sub_22B11EDC0(*(v0 + 632), *(v0 + 640));

    v39(v45, v46);
    v39(v44, v46);
    v85(v81, v79);
    v39(v75, v46);
    v39(v77, v46);
    sub_22B123284(v88, &qword_27D8BA528, &unk_22B364D28);
    (*(v103 + 8))(v98, v93);
    (*(v43 + 8))(v113, v108);
    (*(v41 + 8))(v40, v42);
  }

  (*(*(v0 + 720) + 56))(*(v0 + 272), 1, 1, *(v0 + 712));
LABEL_12:
  v56 = *(v0 + 576);
  v57 = *(v0 + 552);
  v58 = *(v0 + 544);
  v59 = *(v0 + 536);
  v60 = *(v0 + 528);
  v61 = *(v0 + 520);
  v62 = *(v0 + 512);
  v64 = *(v0 + 480);
  v63 = *(v0 + 488);
  v65 = *(v0 + 456);
  v78 = *(v0 + 432);
  v80 = *(v0 + 408);
  v82 = *(v0 + 400);
  loga = *(v0 + 392);
  v86 = *(v0 + 384);
  v89 = *(v0 + 376);
  v94 = *(v0 + 368);
  v99 = *(v0 + 360);
  v104 = *(v0 + 352);
  v109 = *(v0 + 328);
  v114 = *(v0 + 320);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_22B1A1D88()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B1A1E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22B1A1E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B1A1ED4()
{
  result = qword_281409D58[0];
  if (!qword_281409D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281409D58);
  }

  return result;
}

uint64_t sub_22B1A1F28@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22B1A1F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B1A1FF4(uint64_t a1, uint64_t a2)
{
  EnergyWindow = type metadata accessor for NextEnergyWindow();
  (*(*(EnergyWindow - 8) + 32))(a2, a1, EnergyWindow);
  return a2;
}

uint64_t sub_22B1A2058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B1A20DC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22B35EA1C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v12 = sub_22B35D8BC();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();
  v15 = sub_22B35DF1C();
  v2[20] = v15;
  v16 = *(v15 - 8);
  v2[21] = v16;
  v17 = *(v16 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1A2318, 0, 0);
}

uint64_t sub_22B1A2318()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[6];
  v8 = [v7 uniqueIdentifier];
  sub_22B35DEFC();

  sub_22B35DE6C();
  sub_22B35DDCC();
  (*(v6 + 8))(v4, v5);
  sub_22B35DE6C();
  sub_22B35D88C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA558, &qword_22B364D60);
  v9 = sub_22B35EA4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22B3634B0;
  (*(v10 + 104))(v13 + v12, *MEMORY[0x277D17650], v9);
  v0[23] = sub_22B316178(v13);
  swift_setDeallocating();
  (*(v10 + 8))(v13 + v12, v9);
  swift_deallocClassInstance();
  v14 = [v7 currentUser];
  v15 = [v7 owner];
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      sub_22B1972C4();
      v17 = sub_22B360FBC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v18 = MEMORY[0x277D175C0];
      goto LABEL_10;
    }

    v16 = v14;
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

LABEL_9:
  v18 = MEMORY[0x277D175C8];
LABEL_10:
  (*(v0[11] + 104))(v0[12], *v18, v0[10]);
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_22B1A2614;
  v20 = v0[22];
  v21 = v0[19];
  v22 = v0[12];
  v23 = v0[5];

  return sub_22B132EB8(v20, v21, v22);
}

uint64_t sub_22B1A2614(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *(*v2 + 184);
  v17 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v16 = *(*v2 + 160);
  v15 = *(*v2 + 152);
  v7 = *(*v2 + 144);
  v8 = *(*v2 + 136);
  v9 = *(*v2 + 96);
  v10 = *(*v2 + 88);
  v11 = *(*v2 + 80);
  v12 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v15, v8);
  (*(v6 + 8))(v17, v16);
  if (v1)
  {
    v13 = sub_22B1A2A40;
  }

  else
  {
    v13 = sub_22B1A2870;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_22B1A2870()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[25];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_22B116000, v5, v6, "Downloaded %ld digests", v8, 0xCu);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[22];
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[12];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];

  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}