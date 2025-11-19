uint64_t sub_228356058(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_22819A2AC(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_228357114(v11, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
}

void sub_228356134(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [a2 stopQuery_];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_228356354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22838F170();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2283563C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v74 = a4;
  sub_228359544();
  v73 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = &v63 - v11;
  v75 = type metadata accessor for MedicationChartCodableData();
  v70 = *(v75 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v75);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277D127F0]) init];
  if (v15)
  {
    sub_22838F230();
    [v15 setStartDate_];
    v16 = v15;
    sub_22838F230();
    [v16 setEndDate_];
  }

  v17 = a1;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v64 = v4;
    v65 = v15;
    v79 = MEMORY[0x277D84F90];
    sub_2281CA36C(0, v18, 0);
    v19 = v79;
    v20 = v17 + 64;
    v21 = -1 << *(v17 + 32);
    v22 = sub_228393040();
    v23 = 0;
    v78 = *(v17 + 36);
    v66 = v17 + 72;
    v67 = v18;
    v68 = v17;
    v69 = v17 + 64;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v17 + 32))
    {
      v26 = v22 >> 6;
      if ((*(v20 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_28;
      }

      if (v78 != *(v17 + 36))
      {
        goto LABEL_29;
      }

      v76 = v23;
      v27 = *(v17 + 48);
      v28 = sub_22838EF60();
      v77 = v19;
      v29 = v28;
      v30 = *(v28 - 8);
      v31 = v14;
      v32 = v71;
      (*(v30 + 16))(v71, v27 + *(v30 + 72) * v22, v28);
      v33 = (*(v17 + 56) + 32 * v22);
      v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[3];
      v38 = v72;
      v39 = v32;
      v14 = v31;
      (*(v30 + 32))(v72, v39, v29);
      v40 = (v38 + *(v73 + 48));
      *v40 = v34;
      v40[1] = v35;
      v40[2] = v36;
      v40[3] = v37;
      sub_22838EF40();
      v41 = v75;
      v42 = v31 + *(v75 + 20);
      sub_22838EF20();
      v43 = v41[8];
      v44 = sub_22838F080();
      v45 = v31 + v43;
      v19 = v77;
      (*(*(v44 - 8) + 16))(v45, v74, v44);
      *(v31 + v41[6]) = v34;
      *(v31 + v41[7]) = v36;
      *(v31 + v41[9]) = v35;
      *(v31 + v41[10]) = v37;
      sub_2283595B0(v38, sub_228359544);
      v79 = v19;
      v47 = *(v19 + 16);
      v46 = *(v19 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2281CA36C(v46 > 1, v47 + 1, 1);
        v19 = v79;
      }

      *(v19 + 16) = v47 + 1;
      sub_228359610(v31, v19 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v47);
      v17 = v68;
      v20 = v69;
      v24 = 1 << *(v68 + 32);
      if (v22 >= v24)
      {
        goto LABEL_30;
      }

      v48 = *(v69 + 8 * v26);
      if ((v48 & (1 << v22)) == 0)
      {
        goto LABEL_31;
      }

      if (v78 != *(v68 + 36))
      {
        goto LABEL_32;
      }

      v49 = v48 & (-2 << (v22 & 0x3F));
      if (v49)
      {
        v24 = __clz(__rbit64(v49)) | v22 & 0x7FFFFFFFFFFFFFC0;
        v25 = v67;
      }

      else
      {
        v50 = v26 << 6;
        v51 = v26 + 1;
        v25 = v67;
        v52 = (v66 + 8 * v26);
        while (v51 < (v24 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_228205ADC(v22, v78, 0);
            v24 = __clz(__rbit64(v53)) + v50;
            goto LABEL_6;
          }
        }

        sub_228205ADC(v22, v78, 0);
      }

LABEL_6:
      v23 = v76 + 1;
      v22 = v24;
      if (v76 + 1 == v25)
      {
        v5 = v64;
        v15 = v65;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    v79 = 0;
    v80 = 0xE000000000000000;
    sub_2283931D0();

    v79 = 0xD00000000000001FLL;
    v80 = 0x80000002283B59E0;
    v62 = MEMORY[0x22AAB5D50](v19, v75);
    MEMORY[0x22AAB5C80](v62);

    result = sub_228393300();
    __break(1u);
  }

  else
  {
LABEL_23:
    v55 = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_encoder);
    v79 = v19;
    sub_228359B50(0, &qword_280DDBB88, type metadata accessor for MedicationChartCodableData, MEMORY[0x277D83940]);
    sub_2283599C0(&qword_280DDBB80, &qword_280DDC3C8);
    v56 = sub_22838EE90();
    v58 = v57;

    if (v15)
    {
      v59 = v15;
      v60 = sub_22838F200();
      [v59 setQueryDataObject_];
      sub_228359674(v56, v58);
    }

    else
    {
      sub_228359674(v56, v58);
    }

    return v15;
  }

  return result;
}

id MedicationChartDataSource.__allocating_init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDisplayType:a1 healthStore:a2];

  return v5;
}

id MedicationChartDataSource.__allocating_init(dataType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDataType:a1 healthStore:a2];

  return v5;
}

id MedicationChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationChartDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228356D94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_228393460() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_228393460() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436E656B6174 && a2 == 0xEA0000000000746ELL || (sub_228393460() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4364657070696B73 && a2 == 0xEC000000746E756FLL || (sub_228393460() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002283ADB50 == a2 || (sub_228393460() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002283ADB70 == a2 || (sub_228393460() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002283ADB90 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_228393460();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_228356FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2281A9630();
    v3 = sub_228393360();
    v4 = a1 + 32;

    while (1)
    {
      sub_228359AE8(v4, &v13, sub_2281A96FC);
      v5 = v13;
      v6 = v14;
      result = sub_2281A76E0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22819A2AC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_228357114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2283571CC(void *a1, void (*a2)(char *, uint64_t), void (**a3)(const void *, uint64_t, void *))
{
  v186 = sub_228391DC0();
  v185 = *(v186 - 8);
  v6 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v183 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_228391DF0();
  v182 = *(v184 - 8);
  v8 = *(v182 + 64);
  MEMORY[0x28223BE20](v184);
  v181 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_228391DD0();
  v179 = *(v180 - 8);
  v10 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_22838F080();
  v211 = *(v208 - 8);
  v12 = v211[8];
  v13 = MEMORY[0x28223BE20](v208);
  v177 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v204 = &v165 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v191 = &v165 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v165 - v18;
  v207 = sub_22838F440();
  v200 = *(v207 - 8);
  isa = v200[8].isa;
  v21 = MEMORY[0x28223BE20](v207);
  v205 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v206 = &v165 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v165 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v165 - v28;
  v202 = swift_allocObject();
  *(v202 + 16) = a3;
  v188 = a3;
  _Block_copy(a3);
  v30 = dispatch_group_create();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v209 = swift_allocObject();
  *(v209 + 16) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v187 = (v32 + 16);
  v33 = [a1 startDate];
  sub_22838F3E0();

  v34 = [a1 endDate];
  sub_22838F3E0();

  v193 = a1;
  v35 = [a1 statisticsInterval];
  v195 = v19;
  sub_22838EFD0();

  v36 = swift_allocObject();
  v36[2] = v31;
  v36[3] = v32;
  v197 = v36;
  v36[4] = v30;
  v198 = a2;
  v37 = *(a2 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication);
  v199 = v30;
  v210 = v32;

  v201 = v31;

  v192 = v37;
  v38 = [v37 semanticIdentifier];
  v39 = [v38 stringValue];

  if (!v39)
  {
    sub_228392000();
    v39 = sub_228391FC0();
  }

  v40 = objc_opt_self();
  v41 = [v40 predicateForMedicationDoseEventWithMedicationIdentifier_];

  v42 = sub_22838F380();
  v43 = sub_22838F380();
  v44 = [v40 predicateForSamplesWithStartDate:v42 endDate:v43 options:0];

  v45 = [v40 predicateForMedicationDoseEventWithStatus_];
  sub_2281F8E18(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v203 = v46;
  v47 = swift_allocObject();
  v189 = xmmword_228399D40;
  *(v47 + 16) = xmmword_228399D40;
  *(v47 + 32) = v44;
  *(v47 + 40) = v41;
  *(v47 + 48) = v45;
  v48 = sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
  v49 = v44;
  v50 = v41;
  v51 = v29;
  v194 = v27;
  v52 = v50;
  v53 = v45;
  v190 = v48;
  v54 = sub_228392190();

  v55 = objc_opt_self();
  v56 = [v55 andPredicateWithSubpredicates_];

  v196 = v51;
  v57 = v195;
  v58 = v198;
  v59 = sub_228354058(v51, v195, v56);
  if (v59)
  {
    v60 = v59;
    v175 = v55;
    v176 = v40;
    v174 = v56;
    v61 = v211;
    v62 = v211[2];
    v63 = v191;
    v64 = v208;
    v170 = (v211 + 2);
    v169 = v62;
    v62(v191, v57, v208);
    v65 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v66 = (v12 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v168 = *(v61 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v58;
    v68 = v61[4];
    v171 = v65;
    v167 = v61 + 4;
    v166 = v68;
    v68(v67 + v65, v63, v64);
    v173 = v66;
    *(v67 + v66) = 4;
    v172 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v67 + v172);
    v70 = v197;
    *v69 = sub_228359BE0;
    v69[1] = v70;
    v214 = sub_228359BD8;
    v215 = v67;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v213 = sub_228353FB8;
    *(&v213 + 1) = &block_descriptor_98;
    v71 = _Block_copy(&aBlock);
    v191 = v58;

    sub_228176FA8(sub_228359BD8);

    [v60 setInitialResultsHandler_];

    _Block_release(v71);

    v72 = v61[1];
    v211 = v61 + 1;
    v197 = v72;
    v72(v57, v64);
    v73 = v200[1].isa;
    v74 = v207;
    v73(v194, v207);
    v198 = v73;
    v73(v196, v74);

    v200 = v60;
    v75 = v193;
    v76 = [v193 startDate];
    v77 = v206;
    sub_22838F3E0();

    v78 = [v75 endDate];
    sub_22838F3E0();

    v79 = [v75 statisticsInterval];
    v80 = v204;
    sub_22838EFD0();

    v81 = swift_allocObject();
    v82 = v210;
    v81[2] = v209;
    v81[3] = v82;
    v83 = v199;
    v81[4] = v199;
    v199 = v83;

    v84 = [v192 semanticIdentifier];
    v85 = [v84 stringValue];

    if (!v85)
    {
      sub_228392000();
      v85 = sub_228391FC0();
    }

    v86 = v176;
    v87 = [v176 predicateForMedicationDoseEventWithMedicationIdentifier_];

    v88 = sub_22838F380();
    v89 = sub_22838F380();
    v90 = [v86 predicateForSamplesWithStartDate:v88 endDate:v89 options:0];

    v91 = [v86 predicateForMedicationDoseEventWithStatus_];
    v92 = swift_allocObject();
    *(v92 + 16) = v189;
    *(v92 + 32) = v90;
    *(v92 + 40) = v87;
    *(v92 + 48) = v91;
    v93 = v90;
    v94 = v87;
    v95 = v91;
    v96 = sub_228392190();

    v97 = [v175 andPredicateWithSubpredicates_];

    v98 = v191;
    v99 = sub_228354058(v77, v80, v97);
    if (v99)
    {
      v100 = v99;
      v101 = v177;
      v102 = v80;
      v103 = v208;
      v169(v177, v102, v208);
      v104 = v172;
      v105 = swift_allocObject();
      *(v105 + 16) = v98;
      v166(v105 + v171, v101, v103);
      *(v105 + v173) = 5;
      v106 = (v105 + v104);
      *v106 = sub_228359BE0;
      v106[1] = v81;
      v214 = sub_228359BD8;
      v215 = v105;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v213 = sub_228353FB8;
      *(&v213 + 1) = &block_descriptor_95;
      v107 = _Block_copy(&aBlock);
      v108 = v98;
      v109 = v107;
      v196 = v108;

      sub_228176FA8(sub_228359BD8);

      [v100 setInitialResultsHandler_];

      _Block_release(v109);

      v197(v204, v103);
      v110 = v207;
      v111 = v198;
      v198(v205, v207);
      v111(v206, v110);

      v211 = v100;
      v112 = v199;
      dispatch_group_enter(v199);
      dispatch_group_enter(v112);
      sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
      v113 = v179;
      v114 = v178;
      v115 = v180;
      (*(v179 + 104))(v178, *MEMORY[0x277D851B8], v180);
      v208 = sub_2283927C0();
      (*(v113 + 8))(v114, v115);
      v116 = swift_allocObject();
      v118 = v209;
      v117 = v210;
      v116[2] = v201;
      v116[3] = v118;
      v119 = v196;
      v116[4] = v117;
      v116[5] = v119;
      v120 = v202;
      v116[6] = sub_2283596D0;
      v116[7] = v120;
      v214 = sub_228359BDC;
      v215 = v116;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v213 = sub_228191E9C;
      *(&v213 + 1) = &block_descriptor_92;
      v121 = _Block_copy(&aBlock);

      v122 = v119;

      v123 = v181;
      sub_228391DE0();
      v216 = MEMORY[0x277D84F90];
      sub_22835268C(&qword_280DDCF10, MEMORY[0x277D85198]);
      sub_228359B50(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_228216D44();
      v124 = v183;
      v125 = v186;
      sub_228393030();
      v126 = v208;
      sub_228392710();
      _Block_release(v121);

      (*(v185 + 8))(v124, v125);
      (*(v182 + 8))(v123, v184);

      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_228397F20;
      v128 = v200;
      v129 = v211;
      *(v127 + 32) = v200;
      *(v127 + 40) = v129;

      return v127;
    }

    type metadata accessor for HKError(0);
    v216 = 0;
    v147 = MEMORY[0x277D84F90];
    sub_228356FFC(MEMORY[0x277D84F90]);
    sub_22835268C(&unk_27D8235B0, type metadata accessor for HKError);
    sub_22838F160();
    v148 = aBlock;
    v149 = v187;
    swift_beginAccess();
    v150 = *v149;
    *v149 = v148;
    v151 = v148;

    v152 = v199;
    dispatch_group_leave(v199);

    v197(v80, v208);
    v153 = v207;
    v154 = v198;
    v198(v205, v207);
    v154(v206, v153);
    v136 = v200;

    aBlock = 0u;
    v213 = 0u;
    v216 = 0;
    sub_228356FFC(v147);
    sub_22838F160();
    v155 = v218;
    sub_2283596D8(&aBlock, &v216);
    v156 = v217;
    if (v217)
    {
      v157 = __swift_project_boxed_opaque_existential_0(&v216, v217);
      v158 = *(v156 - 8);
      v159 = *(v158 + 64);
      MEMORY[0x28223BE20](v157);
      v161 = &v165 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v158 + 16))(v161);
      v162 = sub_228393450();
      (*(v158 + 8))(v161, v156);
      __swift_destroy_boxed_opaque_existential_0(&v216);
    }

    else
    {
      v162 = 0;
    }

    v164 = sub_22838F170();
    v188[2](v188, v162, v164);

    swift_unknownObjectRelease();
    sub_228357114(&aBlock, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
  }

  else
  {
    type metadata accessor for HKError(0);
    v216 = 0;
    v131 = MEMORY[0x277D84F90];
    sub_228356FFC(MEMORY[0x277D84F90]);
    sub_22835268C(&unk_27D8235B0, type metadata accessor for HKError);
    sub_22838F160();
    v132 = aBlock;
    v133 = v187;
    swift_beginAccess();
    v134 = *v133;
    *v133 = v132;
    v135 = v132;

    v136 = v199;
    dispatch_group_leave(v199);

    (v211[1])(v57, v208);
    v137 = v200[1].isa;
    v138 = v207;
    v137(v194, v207);
    v137(v196, v138);
    aBlock = 0u;
    v213 = 0u;
    v216 = 0;
    sub_228356FFC(v131);
    sub_22838F160();
    v139 = v218;
    sub_2283596D8(&aBlock, &v216);
    v140 = v217;
    if (v217)
    {
      v141 = __swift_project_boxed_opaque_existential_0(&v216, v217);
      v142 = *(v140 - 8);
      v143 = *(v142 + 64);
      MEMORY[0x28223BE20](v141);
      v145 = &v165 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v142 + 16))(v145);
      v146 = sub_228393450();
      (*(v142 + 8))(v145, v140);
      __swift_destroy_boxed_opaque_existential_0(&v216);
    }

    else
    {
      v146 = 0;
    }

    v163 = sub_22838F170();
    v188[2](v188, v146, v163);

    swift_unknownObjectRelease();
    sub_228357114(&aBlock, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2281F8E18);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_228358908(void *a1)
{
  v5 = v1;
  v70 = sub_22838F080();
  v77 = *(v70 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v70);
  v79 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22838F440();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v69);
  v68 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v54 - v13;
  v14 = type metadata accessor for MedicationChartCodableData();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v71 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_decoder);
  v19 = [a1 queryDataObject];
  if (v19)
  {
    v20 = v19;
    sub_228359B50(0, &qword_280DDBB88, type metadata accessor for MedicationChartCodableData, MEMORY[0x277D83940]);
    v21 = sub_22838F210();
    v23 = v22;

    sub_2283599C0(&qword_27D828380, &unk_27D828388);
    sub_22838EE60();
    sub_228359674(v21, v23);
    v24 = v81[0];
    v25 = [objc_allocWithZone(MEMORY[0x277D128B8]) init];
    v26 = v25;
    v82 = MEMORY[0x277D84F90];
    v27 = *(v24 + 16);
    if (v27)
    {
      v55 = v25;
      v28 = v14[5];
      v67 = v14[6];
      v66 = &v71[v28];
      v65 = v14[7];
      v64 = &v71[v14[8]];
      v29 = v14[10];
      v63 = v14[9];
      v62 = v29;
      v61 = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationChartDataSource_medication);
      v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v54 = v24;
      v31 = v24 + v30;
      v60 = *(v15 + 72);
      v59 = (v9 + 16);
      v58 = (v77 + 16);
      v57 = (v77 + 8);
      v56 = (v9 + 8);
      v32 = v70;
      v33 = v71;
      do
      {
        v76 = v31;
        v77 = v27;
        sub_228359AE8(v31, v33, type metadata accessor for MedicationChartCodableData);
        v34 = *v59;
        v35 = v78;
        v36 = v69;
        (*v59)(v78, v33, v69);
        v37 = v68;
        v34(v68, v66, v36);
        v38 = *(v33 + v67);
        v39 = *(v33 + v65);
        v72 = *v58;
        v72(v79, v64, v32);
        v74 = *(v33 + v63);
        v75 = *(v33 + v62);
        v73 = type metadata accessor for MedicationChartPoint(0);
        v40 = objc_allocWithZone(v73);
        v81[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v81[4] = MEMORY[0x277D117B0];
        v41 = v61;
        v81[0] = v61;
        *&v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_takenCount] = v38;
        *&v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_skippedCount] = v39;
        v34(&v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_startDate], v35, v36);
        v34(&v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_endDate], v37, v36);
        v42 = v79;
        v72(&v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_statisticsInterval], v79, v32);
        sub_228180FB0(v81, &v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_medication]);
        v43 = v75;
        *&v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowTakenCount] = v74;
        *&v40[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationChartPoint_windowSkippedCount] = v43;
        v80.receiver = v40;
        v80.super_class = v73;
        v44 = v41;
        objc_msgSendSuper2(&v80, sel_init, v54);
        (*v57)(v42, v32);
        v45 = *v56;
        (*v56)(v37, v36);
        v45(v78, v36);
        sub_2283595B0(v33, type metadata accessor for MedicationChartCodableData);
        v46 = __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x22AAB5D20](v46);
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();
        v31 = v76 + v60;
        v27 = v77 - 1;
      }

      while (v77 != 1);
      v47 = v82;

      v26 = v55;
      if (!(v47 >> 62))
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_8:

        sub_228393470();
        sub_228359A84();
LABEL_9:

        sub_228359A84();
        v48 = sub_228392190();

        [v26 setChartPoints_];

        return v26;
      }
    }

    sub_228359A84();

    sub_228393310();

    goto LABEL_9;
  }

  __break(1u);

  sub_228359674(v4, v3);
  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  sub_2283931D0();
  MEMORY[0x22AAB5C80](0xD000000000000033, 0x80000002283B5A00);
  v50 = [a1 description];
  v51 = sub_228392000();
  v53 = v52;

  MEMORY[0x22AAB5C80](v51, v53);

  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_228359194()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    result = sub_22838F080();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicationChartCodableData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MedicationChartCodableData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2283593E8()
{
  result = qword_27D828370;
  if (!qword_27D828370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828370);
  }

  return result;
}

unint64_t sub_228359440()
{
  result = qword_27D828378;
  if (!qword_27D828378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828378);
  }

  return result;
}

unint64_t sub_228359498()
{
  result = qword_280DDC3D0;
  if (!qword_280DDC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDC3D0);
  }

  return result;
}

unint64_t sub_2283594F0()
{
  result = qword_280DDC3D8;
  if (!qword_280DDC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDC3D8);
  }

  return result;
}

void sub_228359544()
{
  if (!qword_280DDCE10)
  {
    sub_22838EF60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDCE10);
    }
  }
}

uint64_t sub_2283595B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228359610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationChartCodableData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228359674(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2283596D8(uint64_t a1, uint64_t a2)
{
  sub_2281F8E18(0, &qword_280DDCE20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_22838F080();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_228359890(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_22838F080() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_228353A68(a1, a2, a3, v11, v3 + v8, v10, v13, v14);
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2283599C0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_228359B50(255, &qword_280DDBB88, type metadata accessor for MedicationChartCodableData, MEMORY[0x277D83940]);
    sub_22835268C(a2, type metadata accessor for MedicationChartCodableData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228359A84()
{
  result = qword_27D828398;
  if (!qword_27D828398)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D828398);
  }

  return result;
}

uint64_t sub_228359AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_228359B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228359BF8(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22835A244();
  return sub_22819482C(v6);
}

uint64_t sub_228359C68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228359CC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22835A244();
  return sub_22819482C(a1);
}

void (*sub_228359D2C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228359D90;
}

void sub_228359D90(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_22835A244();
  }
}

id sub_228359DC4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for InteractionResultDetailEducationCell();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setUserInteractionEnabled_];
  v11 = [v10 contentView];
  v12 = sub_228359FBC();
  [v11 addSubview_];

  return v10;
}

id sub_228359FBC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setSpacing_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22835A06C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
    v6 = *MEMORY[0x277D769D0];
    sub_22838FC20();
    sub_22838FC10();
    v7 = v5;
    [v7 setNumberOfLines_];
    v8 = *MEMORY[0x277D12788];
    v15 = sub_228392000();
    v16 = v9;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283B5AD0);

    MEMORY[0x22AAB5C80](0xD000000000000011, 0x80000002283B0420);

    v10 = sub_228391FC0();

    [v7 setAccessibilityIdentifier_];

    v11 = [objc_opt_self() secondaryLabelColor];
    [v7 setTextColor_];

    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_22835A244()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v7], v51);
  if (v52)
  {
    sub_22817A700();
    sub_22834B070();
    if (swift_dynamicCast())
    {
      v8 = v50;
      v9 = sub_228359FBC();
      v10 = [v9 arrangedSubviews];

      sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
      v11 = sub_2283921A0();

      if (v11 >> 62)
      {
        v12 = sub_2283930D0();
        if (v12)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_5:
          if (v12 < 1)
          {
            __break(1u);
            return;
          }

          v13 = 0;
          v14 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView;
          do
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x22AAB6D80](v13, v11);
            }

            else
            {
              v15 = *(v11 + 8 * v13 + 32);
            }

            v16 = v15;
            ++v13;
            [*&v1[v14] removeArrangedSubview_];
            [v16 removeFromSuperview];
          }

          while (v12 != v13);
        }
      }

      v25 = *(v8 + *(*v8 + 120));
      v26 = [v25 severity];
      v27 = [v26 severityLevel];

      v28 = sub_22823D160();
      v30 = v29;
      v31 = objc_allocWithZone(type metadata accessor for InteractionDetailEducationView());
      v49 = sub_2282BA0B0(v27, v28, v30);
      v32 = OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView;
      [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView] addArrangedSubview_];
      v33 = sub_22835A06C();
      sub_22823D284();
      v34 = sub_228391FC0();

      [v33 setText_];

      [*&v1[v32] addArrangedSubview_];
      v35 = *&v1[v32];
      v36 = [v1 contentView];
      [v35 hk:v36 alignVerticalConstraintsWithView:16.0 insets:{16.0, 16.0, 16.0}];

      v37 = [*&v1[v32] leadingAnchor];
      v38 = [v1 &selRef_didTapDay_];
      v39 = [v38 layoutMarginsGuide];

      v40 = [v39 leadingAnchor];
      v41 = [v37 constraintEqualToAnchor_];

      [v41 setActive_];
      v42 = [*&v1[v32] trailingAnchor];
      v43 = [v1 contentView];
      v44 = [v43 layoutMarginsGuide];

      v45 = [v44 trailingAnchor];
      v46 = [v42 constraintEqualToAnchor_];

      [v46 setActive_];
      v47 = *&v1[v32];
      v48 = v49;
      [v47 setCustomSpacing:v49 afterView:10.0];

      return;
    }
  }

  else
  {
    sub_22819482C(v51);
  }

  sub_228391150();
  v17 = v1;
  v18 = sub_2283911A0();
  v19 = sub_2283925C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v50 = v21;
    *v20 = 136446210;
    sub_22817E6C8(&v1[v7], v51);
    sub_228181D50();
    v22 = sub_228392040();
    v24 = sub_2281C96FC(v22, v23, &v50);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22816B000, v18, v19, "Incorrect view model for InteractionResultDetailEducationCell: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAB7B80](v21, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

id sub_22835A884(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InteractionResultDetailEducationCell();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t MedmojiConfigItem.init(_:isSelected:sectionIdentifier:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for MedmojiConfigItem();
  *(a6 + *(result + 36)) = a2;
  v11 = (a6 + *(result + 40));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t sub_22835AB80(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1();
  sub_22835DE98(a2, v5, a3);
  return sub_22838FBB0();
}

uint64_t sub_22835AC48(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3();
  sub_22835DE98(a4, v7, a5);
  return sub_22838FBB0();
}

uint64_t MedmojiConfigItem.uniqueIdentifier.getter(uint64_t a1)
{
  v7 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](*(v1 + *(a1 + 40)), *(v1 + *(a1 + 40) + 8));
  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  if (*(v1 + *(a1 + 36)))
  {
    v3 = 0x64657463656C6573;
  }

  else
  {
    v3 = 0x7463656C65736E75;
  }

  if (*(v1 + *(a1 + 36)))
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  MEMORY[0x22AAB5C80](v3, v4);

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MedmojiConfigItem.hashValue.getter(a1);
  v5 = sub_228393420();
  MEMORY[0x22AAB5C80](v5);

  return v7;
}

uint64_t MedmojiConfigItem.hashValue.getter(uint64_t a1)
{
  sub_228393520();
  MedmojiConfigItem.hash(into:)(v3, a1);
  return sub_228393570();
}

uint64_t MedmojiConfigItem.sectionIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t static MedmojiConfigItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 + 8) + 8);
  if ((sub_228391FB0() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for MedmojiConfigItem();
  if (*(a1 + *(v7 + 36)) != *(a2 + *(v7 + 36)))
  {
    return 0;
  }

  v9 = *(v7 + 40);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t MedmojiConfigItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  sub_228391F70();
  v6 = *(v2 + *(a2 + 36));
  sub_228393540();
  v7 = (v2 + *(a2 + 40));
  v8 = *v7;
  v9 = v7[1];

  return sub_2283920B0();
}

uint64_t sub_22835AFD4(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  MedmojiConfigItem.hash(into:)(v4, a2);
  return sub_228393570();
}

uint64_t sub_22835B018(uint64_t a1)
{
  result = sub_22835DE98(&qword_27D8283F0, 255, MEMORY[0x277D11618]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22835B074(uint64_t a1)
{
  result = sub_22835DE98(qword_27D8283F8, 255, MEMORY[0x277D11640]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22835B11C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_22835B19C(uint64_t a1)
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

uint64_t sub_22835B224(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_22835B358(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 8) = a2 & 0x7FFFFFFF;
      *(v18 + 16) = 0;
    }

    else
    {
      *(v18 + 16) = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

id sub_22835B508()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView);
  }

  else
  {
    sub_228390CD0();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_22835B580(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_22835DCB4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391380();
  v16 = sub_2283913A0();
  (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  MEMORY[0x22AAB6420](v13);
  v17 = [v15 contentView];
  v18 = sub_22835B508();
  [v17 addSubview_];

  v19 = *&v15[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView];
  v20 = [v15 contentView];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v31.origin.x = v22;
  v31.origin.y = v24;
  v31.size.width = v26;
  v31.size.height = v28;
  v32 = CGRectInset(v31, 6.0, 6.0);
  [v19 setFrame_];

  return v15;
}

void sub_22835B844()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v1 = [v0 contentView];
  v2 = [v1 layer];

  v3 = [v0 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  [v2 setCornerRadius_];

  v12 = sub_22835B508();
  v13 = [v0 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  v35 = CGRectInset(v34, 6.0, 6.0);
  [v12 setFrame_];

  v22 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView] layer];
  v23 = [v0 contentView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v36.origin.x = v25;
  v36.origin.y = v27;
  v36.size.width = v29;
  v36.size.height = v31;
  v37 = CGRectInset(v36, 6.0, 6.0);
  [v22 setCornerRadius_];
}

uint64_t sub_22835BA90()
{
  sub_22835DCB4(0, &qword_27D824BC0, sub_228199F78);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32[-v3];
  sub_228199F78();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  swift_beginAccess();
  sub_22835DD70(&v0[v11], v33, &qword_280DDCD50, sub_22817A700);
  if (!v34)
  {
    sub_22835DDDC(v33, &qword_280DDCD50, sub_22817A700);
    (*(v7 + 56))(v4, 1, 1, v6);
    return sub_22835DDDC(v4, &qword_27D824BC0, sub_228199F78);
  }

  sub_22817A700();
  v12 = swift_dynamicCast();
  (*(v7 + 56))(v4, v12 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_22835DDDC(v4, &qword_27D824BC0, sub_228199F78);
  }

  sub_22835DD08(v4, v10, sub_228199F78);
  v13 = [v0 contentView];
  v14 = [v13 layer];

  v15 = 3.0;
  if (!v10[*(v6 + 36)])
  {
    v15 = 0.0;
  }

  [v14 setBorderWidth_];

  v16 = [v0 contentView];
  v17 = [v16 &selRef_setNumberStyle_];

  v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v19 = [v18 CGColor];

  [v17 setBorderColor_];
  v20 = v0;
  v21 = sub_22835B508();
  v22 = sub_2283908D0();
  [v21 setBackgroundColor_];

  v23 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView;
  v24 = [*&v20[OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell____lazy_storage___gradientView] layer];
  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v26 = [v25 CGColor];

  [v24 setBorderColor_];
  v27 = [*&v20[v23] layer];
  sub_2281AF0A0();
  v28 = sub_2283908D0();
  v29 = sub_228392BC0();
  LOBYTE(v24) = sub_228392C60();

  if (v24)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  [v27 setBorderWidth_];

  sub_22835BF50(v10);
  return sub_22835DE38(v10, sub_228199F78);
}

void sub_22835BF50(uint64_t a1)
{
  v2 = v1;
  [v1 setIsAccessibilityElement_];
  sub_2283908C0();
  if (v4)
  {
    v5 = sub_228391FC0();
  }

  else
  {
    v5 = 0;
  }

  [v2 setAccessibilityLabel_];

  v6 = *MEMORY[0x277D12788];
  v7 = sub_228392000();
  v9 = v8;
  v10 = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v23, "Medications.");
  BYTE5(v23[1]) = 0;
  HIWORD(v23[1]) = -5120;
  sub_228199F78();
  MEMORY[0x22AAB5C80](*(a1 + *(v11 + 40)), *(a1 + *(v11 + 40) + 8));
  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v12 = sub_22835DE98(&qword_27D823E10, 255, MEMORY[0x277D11618]);
  v13 = *(v12 + 16);
  v14 = sub_2283908E0();
  v15 = v13(v14, v12);
  MEMORY[0x22AAB5C80](v15);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v16 = [v2 accessibilityLabel];
  if (v16)
  {
    v17 = v16;
    v18 = sub_228392000();
    v10 = v19;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x22AAB5C80](v18, v10);

  v20 = v23[0];
  v21 = v23[1];
  v23[0] = v7;
  v23[1] = v9;

  MEMORY[0x22AAB5C80](v20, v21);

  v22 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_22835C1E8()
{
  sub_22835DCB4(0, &qword_27D824BC0, sub_228199F78);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-v3];
  sub_228199F78();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  swift_beginAccess();
  sub_22835DD70(v0 + v11, v16, &qword_280DDCD50, sub_22817A700);
  if (v17)
  {
    sub_22817A700();
    v12 = swift_dynamicCast();
    (*(v7 + 56))(v4, v12 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v4, 1, v6) != 1)
    {
      sub_22835DD08(v4, v10, sub_228199F78);
      v13 = v10[*(v6 + 36)];
      sub_22835DE38(v10, sub_228199F78);
      return v13;
    }
  }

  else
  {
    sub_22835DDDC(v16, &qword_280DDCD50, sub_22817A700);
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_22835DDDC(v4, &qword_27D824BC0, sub_228199F78);
  return 0;
}

uint64_t (*sub_22835C4E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22835C54C;
}

uint64_t sub_22835C564(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_22835DE98(&qword_27D828480, a2, type metadata accessor for ColorCell);
  return sub_22838FE40();
}

id sub_22835C5F0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    sub_228390960();
    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_22835C684(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_22835DCB4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v41, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = [v16 layer];

  v18 = [v15 contentView];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v42.origin.x = v20;
  v42.origin.y = v22;
  v42.size.width = v24;
  v42.size.height = v26;
  [v17 setCornerRadius_];

  sub_228391380();
  v27 = sub_2283913A0();
  (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
  MEMORY[0x22AAB6420](v13);
  v28 = [v15 contentView];

  v29 = sub_22835C5F0();
  [v28 addSubview_];

  v30 = *&v15[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView];
  v31 = [v15 contentView];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v43.origin.x = v33;
  v43.origin.y = v35;
  v43.size.width = v37;
  v43.size.height = v39;
  v44 = CGRectInset(v43, 6.0, 6.0);
  [v30 setFrame_];

  return v15;
}

void sub_22835C9EC()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v1 = [v0 contentView];
  v2 = [v1 layer];

  v3 = [v0 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  [v2 setCornerRadius_];

  v12 = sub_22835C5F0();
  v13 = [v0 contentView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  v25 = CGRectInset(v24, 6.0, 6.0);
  [v12 setFrame_];
}

uint64_t sub_22835CBA0()
{
  v1 = sub_228390D50();
  v65 = *(v1 - 8);
  v2 = *(v65 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228228644();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22835DCB4(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v63 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = v59 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v59 - v16;
  MEMORY[0x28223BE20](v15);
  v64 = v59 - v18;
  sub_22835DCB4(0, &qword_27D8238B0, sub_228181CBC);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v59 - v21;
  sub_228181CBC();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v28 = v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
  swift_beginAccess();
  sub_22835DD70(&v0[v29], v66, &qword_280DDCD50, sub_22817A700);
  if (!v67)
  {
    sub_22835DDDC(v66, &qword_280DDCD50, sub_22817A700);
    (*(v25 + 56))(v22, 1, 1, v24);
    return sub_22835DDDC(v22, &qword_27D8238B0, sub_228181CBC);
  }

  sub_22817A700();
  v30 = swift_dynamicCast();
  (*(v25 + 56))(v22, v30 ^ 1u, 1, v24);
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    return sub_22835DDDC(v22, &qword_27D8238B0, sub_228181CBC);
  }

  sub_22835DD08(v22, v28, sub_228181CBC);
  v31 = v28[*(v24 + 36)];
  v60 = v0;
  v32 = [v0 contentView];
  v33 = [v32 layer];

  v34 = v8;
  if (v31 == 1)
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    v36 = 3.0;
  }

  else
  {
    v35 = [objc_opt_self() secondarySystemFillColor];
    v36 = 0.0;
  }

  v38 = v64;
  v39 = [v35 CGColor];

  [v33 setBorderColor_];
  v40 = [v60 contentView];
  v41 = [v40 layer];

  [v41 setBorderWidth_];
  v42 = sub_22835C5F0();
  sub_228390940();

  MedicationShape.previewConfig.getter(v17);
  v43 = v38;
  v44 = v65;
  v59[0] = *(v65 + 56);
  v59[1] = v65 + 56;
  (v59[0])(v17, 0, 1, v1);
  v45 = *(v5 + 48);
  v46 = MEMORY[0x277D116C8];
  sub_22835DD70(v43, v34, &qword_280DDBD20, MEMORY[0x277D116C8]);
  sub_22835DD70(v17, v34 + v45, &qword_280DDBD20, v46);
  v47 = *(v44 + 48);
  if (v47(v34, 1, v1) != 1)
  {
    v49 = v62;
    sub_22835DD70(v34, v62, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (v47(v34 + v45, 1, v1) != 1)
    {
      v54 = v65;
      v55 = v61;
      (*(v65 + 32))(v61, v34 + v45, v1);
      sub_22835DE98(&qword_27D8257B8, 255, MEMORY[0x277D116C8]);
      v56 = sub_228391FB0();
      v57 = *(v54 + 8);
      v57(v55, v1);
      v58 = MEMORY[0x277D116C8];
      sub_22835DDDC(v17, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_22835DDDC(v64, &qword_280DDBD20, v58);
      v57(v49, v1);
      sub_22835DDDC(v34, &qword_280DDBD20, v58);
      v51 = v60;
      if (v56)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v50 = MEMORY[0x277D116C8];
    sub_22835DDDC(v17, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_22835DDDC(v64, &qword_280DDBD20, v50);
    (*(v65 + 8))(v49, v1);
LABEL_13:
    sub_22835DE38(v34, sub_228228644);
    v51 = v60;
LABEL_14:
    v52 = *&v51[OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView];
    v53 = v63;
    MedicationShape.previewConfig.getter(v63);
    (v59[0])(v53, 0, 1, v1);
    sub_228390950();

    goto LABEL_15;
  }

  v48 = MEMORY[0x277D116C8];
  sub_22835DDDC(v17, &qword_280DDBD20, MEMORY[0x277D116C8]);
  sub_22835DDDC(v43, &qword_280DDBD20, v48);
  if (v47(v34 + v45, 1, v1) != 1)
  {
    goto LABEL_13;
  }

  sub_22835DDDC(v34, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_15:
  sub_22835D44C();
  return sub_22835DE38(v28, sub_228181CBC);
}

void sub_22835D44C()
{
  v1 = v0;
  [v0 setIsAccessibilityElement_];
  sub_2283909B0();
  if (v2)
  {
    v3 = sub_228391FC0();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel_];

  v4 = *MEMORY[0x277D12788];
  v5 = sub_228392000();
  v7 = v6;
  v8 = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v20, "Medications.");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  v9 = sub_22835DE98(&qword_27D8238C0, 255, MEMORY[0x277D11640]);
  v10 = *(v9 + 16);
  v11 = sub_2283909E0();
  v12 = v10(v11, v9);
  MEMORY[0x22AAB5C80](v12);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v13 = [v1 accessibilityLabel];
  if (v13)
  {
    v14 = v13;
    v15 = sub_228392000();
    v8 = v16;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x22AAB5C80](v15, v8);

  v17 = v20[0];
  v18 = v20[1];
  v20[0] = v5;
  v20[1] = v7;

  MEMORY[0x22AAB5C80](v17, v18);

  v19 = sub_228391FC0();

  [v1 setAccessibilityIdentifier_];
}

uint64_t sub_22835D770()
{
  sub_22835DCB4(0, &qword_27D8238B0, sub_228181CBC);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-v3];
  sub_228181CBC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
  swift_beginAccess();
  sub_22835DD70(v0 + v11, v16, &qword_280DDCD50, sub_22817A700);
  if (v17)
  {
    sub_22817A700();
    v12 = swift_dynamicCast();
    (*(v7 + 56))(v4, v12 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v4, 1, v6) != 1)
    {
      sub_22835DD08(v4, v10, sub_228181CBC);
      v13 = v10[*(v6 + 36)];
      sub_22835DE38(v10, sub_228181CBC);
      return v13;
    }
  }

  else
  {
    sub_22835DDDC(v16, &qword_280DDCD50, sub_22817A700);
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_22835DDDC(v4, &qword_27D8238B0, sub_228181CBC);
  return 0;
}

uint64_t sub_22835DA4C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_22835DD70(v2 + v4, a2, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22835DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *a4;
  swift_beginAccess();
  sub_22818FD64(a1, v5 + v8);
  v9 = swift_endAccess();
  a5(v9);
  return sub_22835DDDC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22835DB68(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22835DBCC;
}

uint64_t sub_22835DBE4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t sub_22835DC28(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_22835DE98(&qword_27D828488, a2, type metadata accessor for ShapeCell);
  return sub_22838FE40();
}

void sub_22835DCB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22835DD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22835DD70(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22835DCB4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22835DDDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22835DCB4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22835DE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22835DE98(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22835DF4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  if (sub_228392C60())
  {
    if (v3)
    {
      if (v5)
      {
        sub_22817A958(0, &qword_27D8284C0, 0x277CCAE58);
        v6 = v5;
        v7 = v3;
        v8 = sub_228392C60();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

id sub_22835E004()
{
  v0 = [objc_opt_self() medicationDoseEventType];

  return v0;
}

void *sub_22835E048()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_22835E0B4()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 description];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return 0x6574497472616843;
}

uint64_t sub_22835E160(uint64_t a1)
{
  v2 = sub_22835F0E4();

  return MEMORY[0x282169440](a1, v2);
}

id _sSo18HKStackedBarSeriesC19HealthMedicationsUIE019makeMedicationEventC0AByFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D12AD8]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D12AE0]) &selRef_setBoundarySupplementaryItems_];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setStrokeColor_];

  [v1 setLineWidth_];
  [v1 setBlendMode_];
  v4 = v0;
  [v4 setUnselectedStrokeStyle_];
  [v4 setCornerRadii_];
  v5 = [objc_allocWithZone(MEMORY[0x277D12AA0]) &selRef_setBoundarySupplementaryItems_];
  v6 = [v2 hk_medicationDoseEventTakenColor];
  [v5 setColor_];

  v7 = [objc_allocWithZone(MEMORY[0x277D12AA0]) &selRef_setBoundarySupplementaryItems_];
  v8 = [v2 hk_medicationDoseEventSkippedColor];
  [v7 &selRef:v8 setNumberStyle:?];

  v9 = [v2 hk_chartBackgroundColor];
  v23 = [objc_opt_self() strokeStyleWithColor:v9 lineWidth:1.0];

  [v4 setTiledStrokeStyle_];
  sub_228180ED0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F20;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  sub_22817A958(0, &qword_280DDBB10, 0x277D128A0);
  v22 = v5;
  v21 = v7;
  v11 = sub_228392190();

  [v4 setUnselectedFillStyles_];

  v12 = [objc_allocWithZone(MEMORY[0x277D12AA0]) init];
  v13 = [v2 hk_chartGrayGraphColor];
  [v12 setColor_];

  v14 = [objc_allocWithZone(MEMORY[0x277D12AA0]) init];
  v15 = [v2 hk_chartInactiveSeriesColor];
  [v14 setColor_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228397F20;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  v17 = v12;
  v18 = v14;
  v19 = sub_228392190();

  [v4 setInactiveFillStyles_];

  return v4;
}

void sub_22835E56C(void *a1, void *a2)
{
  v87 = a2;
  v3 = sub_2283911B0();
  v85 = *(v3 - 1);
  v86 = v3;
  v4 = v85[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22835F018(0, &qword_280DDCD80, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v74 - v9;
  v10 = [a1 CHRRoomApplicationItems];
  v11 = [v10 timeScopeController];
  [v11 setSelectedTimeScope_];

  v12 = _sSo18HKStackedBarSeriesC19HealthMedicationsUIE019makeMedicationEventC0AByFZ_0();
  v13 = [objc_opt_self() standardNumericYAxisWithConfigurationOverrides_];
  v14 = v12;
  v88 = v13;
  [v14 setYAxis_];
  sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
  v15 = sub_228392C40();
  v16 = sub_228392C40();
  v17 = [objc_opt_self() valueRangeWithMinValue:v15 maxValue:v16];

  sub_2281A8ED4(MEMORY[0x277D84F90]);
  sub_22817A958(0, &qword_27D824270, 0x277D12B30);
  sub_228193168();
  v18 = sub_228391F10();

  v19 = [objc_opt_self() ruleWithDefaultAxisBounds:v17 axisBoundsOverrides:v18];

  [v14 setAxisScalingRule_];
  [v14 setIsCriticalForAutoscale_];
  [v14 setInvertYAxis_];
  v20 = objc_opt_self();
  v21 = [a1 healthStore];
  v22 = [v20 sharedInstanceForHealthStore_];

  if (v22)
  {
    v23 = [objc_opt_self() medicationDoseEventType];
    v24 = [v22 displayTypeForObjectType_];

    if (v24)
    {
      v86 = v19;
      v25 = objc_allocWithZone(type metadata accessor for MedicationChartDataFormatter());
      v26 = v24;
      v27 = [v25 init];
      v28 = objc_allocWithZone(MEMORY[0x277D128F0]);
      v29 = v14;
      v30 = [v28 initWithGraphSeries:v29 baseDisplayType:v26 valueFormatter:v27 dataTypeCode:273];

      v85 = v26;
      v31 = objc_allocWithZone(type metadata accessor for MedicationChartDataSource());
      v32 = v30;
      v33 = MedicationChartDataSource.init(with:displayType:)(v87, v32);
      v34 = [objc_allocWithZone(MEMORY[0x277D127C8]) init];
      v83 = v33;
      [v34 setDataSource_];
      v35 = [objc_opt_self() sharedOperationManager];
      [v34 setOperationManager_];

      v36 = v34;
      v37 = [v10 chartDataCacheController];
      v38 = v36;
      [v37 addCustomChartCache:v38 forDisplayType:v32];

      v39 = [objc_allocWithZone(MEMORY[0x277D127C0]) init];
      [v39 setChartCache_];
      v76 = v38;

      v82 = v39;
      [v29 setDataSource_];
      v84 = v29;

      sub_22835F018(0, &qword_27D828498, sub_22835F07C, MEMORY[0x277D84560]);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_228397F40;
      sub_228180ED0();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_228396260;
      v77 = v32;
      *(v41 + 32) = v32;
      *(v40 + 32) = v41;
      v81 = [a1 healthStore];
      v80 = [v10 unitController];
      v79 = [v10 dateCache];
      v78 = [v10 chartDataCacheController];
      v42 = [v10 timeScopeController];
      v87 = v10;
      v43 = [v10 sampleDateRangeController];
      v91 = sub_22838F440();
      __swift_allocate_boxed_opaque_existential_1(v90);
      sub_22838F430();
      v44 = sub_22838F6C0();
      v45 = *(v44 - 8);
      v46 = v89;
      (*(v45 + 56))(v89, 1, 1, v44);
      sub_22835F07C();
      v75 = sub_228392190();

      v47 = v91;
      if (v91)
      {
        v48 = __swift_project_boxed_opaque_existential_0(v90, v91);
        v49 = *(v47 - 8);
        v50 = *(v49 + 64);
        MEMORY[0x28223BE20](v48);
        v52 = &v74 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v52);
        v53 = sub_228393450();
        v54 = v52;
        v46 = v89;
        (*(v49 + 8))(v54, v47);
        __swift_destroy_boxed_opaque_existential_0(v90);
      }

      else
      {
        v53 = 0;
      }

      if ((*(v45 + 48))(v46, 1, v44) == 1)
      {
        v62 = 0;
      }

      else
      {
        v62 = sub_22838F610();
        (*(v45 + 8))(v46, v44);
      }

      v63 = objc_allocWithZone(MEMORY[0x277D12910]);
      v73 = v53;
      v71 = v42;
      v72 = v43;
      v64 = v43;
      v65 = v42;
      v66 = v78;
      v67 = v75;
      v69 = v80;
      v68 = v81;
      v70 = v79;
      [v63 initWithStackedDisplayTypes:v75 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v81 unitPreferenceController:v80 dateCache:v79 chartDataCacheController:v78 selectedTimeScopeController:v71 sampleTypeDateRangeController:v72 initialXValue:v73 currentCalendarOverride:v62 options:0x2000 timeScopeRanges:0];

      swift_unknownObjectRelease();
    }

    else
    {

      sub_228391190();
      v55 = sub_2283911A0();
      v56 = sub_2283925C0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v90[0] = v58;
        *v57 = 136446210;
        v92 = &type metadata for MedicationChartItem;
        sub_22835EFD0();
        v59 = sub_228392020();
        v61 = sub_2281C96FC(v59, v60, v90);

        *(v57 + 4) = v61;
        _os_log_impl(&dword_22816B000, v55, v56, "[%{public}s] DisplayType not found for medication dose event type", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x22AAB7B80](v58, -1, -1);
        MEMORY[0x22AAB7B80](v57, -1, -1);
      }

      else
      {
      }

      (v85[1])(v6, v86);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22835EFD0()
{
  result = qword_27D828490;
  if (!qword_27D828490)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D828490);
  }

  return result;
}

void sub_22835F018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22835F07C()
{
  if (!qword_27D8284A0)
  {
    sub_22817A958(255, &qword_27D8284A8, 0x277D12830);
    v0 = sub_228392240();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8284A0);
    }
  }
}

unint64_t sub_22835F0E4()
{
  result = qword_27D8284B0;
  if (!qword_27D8284B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8284B0);
  }

  return result;
}

unint64_t sub_22835F14C()
{
  result = qword_27D8284B8;
  if (!qword_27D8284B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8284B8);
  }

  return result;
}

uint64_t type metadata accessor for MedmojiPreviewDataSource()
{
  result = qword_27D8284D0;
  if (!qword_27D8284D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22835F1EC()
{
  sub_22835FD64(319, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_22835F2C4(void *a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v38 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22835FD64(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = qword_27D8290B0;
  v14 = sub_228390D50();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + qword_27D8284C8) = a1;
  v15 = a1;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  swift_beginAccess();
  sub_22824F65C(v12, v2 + v13);
  swift_endAccess();
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v40, "MutableArray<");
  HIWORD(v40[1]) = -4864;
  sub_22838F490();
  v16 = sub_22838F450();
  v18 = v17;
  v19 = *(v5 + 8);
  v37 = v5 + 8;
  v39 = v19;
  v19(v8, v4);
  MEMORY[0x22AAB5C80](v16, v18);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v20 = sub_22838FF30();
  v21 = MEMORY[0x277D84560];
  sub_22835FD64(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v22 = *(sub_22838FEF0() - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22835FD64(0, &qword_27D823918, sub_228182780, v21);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_228397F30;
  v26 = qword_27D8290B0;
  swift_beginAccess();
  sub_2281BF64C(v20 + v26, v12);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = type metadata accessor for MedicationAvatarItem();
  *(v25 + 56) = v28;
  *(v25 + 64) = sub_22835FDD0(&qword_27D8246F0, type metadata accessor for MedicationAvatarItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
  sub_2281AA8D4(v12, boxed_opaque_existential_1);
  v30 = (boxed_opaque_existential_1 + v28[5]);
  *v30 = sub_22835FDC8;
  v30[1] = v27;
  v31 = v28[6];

  sub_22838F490();
  v32 = (boxed_opaque_existential_1 + v28[7]);
  type metadata accessor for MedicationAvatarCell();
  sub_22835FDD0(&qword_27D8284E8, type metadata accessor for MedicationAvatarCell);
  *v32 = sub_22838FBB0();
  v32[1] = v33;

  *(v25 + 96) = &type metadata for MedicationDetailItem;
  *(v25 + 104) = sub_228269A58();
  *(v25 + 72) = v15;
  type metadata accessor for MedicationDetailCell();
  sub_22835FDD0(&qword_27D8284F0, type metadata accessor for MedicationDetailCell);
  v34 = v15;
  *(v25 + 80) = sub_22838FBB0();
  *(v25 + 88) = v35;
  sub_22838F490();
  sub_22838F450();
  v39(v8, v38);
  sub_22838FED0();
  sub_22838FF50();

  return v20;
}

uint64_t sub_22835F864(uint64_t a1, uint64_t a2)
{
  sub_22835FD64(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_228390D50();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a2, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v11 = qword_27D8290B0;
    swift_beginAccess();
    sub_22824F65C(v6, v8 + v11);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22835FA28()
{
  v1 = v0 + qword_27D8290B0;

  return sub_2281A9A08(v1);
}

uint64_t sub_22835FA68()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8284C8);

  sub_2281A9A08(v0 + qword_27D8290B0);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22835FB00()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = [objc_opt_self() systemBackgroundColor];
  sub_228390050();
  sub_228390070();
  v6 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_22835FC00()
{
  type metadata accessor for MedicationAvatarCell();
  sub_22835FDD0(&qword_27D8284E8, type metadata accessor for MedicationAvatarCell);
  sub_2283926B0();
  type metadata accessor for MedicationDetailCell();
  sub_22835FDD0(&qword_27D8284F0, type metadata accessor for MedicationDetailCell);
  return sub_2283926B0();
}

void sub_22835FD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22835FDD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22835FE24()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_22838F1C0();
    sub_2281A8644(MEMORY[0x277D84F90]);
    v3 = sub_228391F10();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }
}

void _s19HealthMedicationsUI0B10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewL0CyyctFZ_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_228391FC0();
  v9 = sub_228391FC0();
  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_228391FC0();
  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  [v10 addAction_];
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  v15 = sub_228391FC0();
  v18[4] = sub_2281BC81C;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_228281980;
  v18[3] = &block_descriptor_30;
  v16 = _Block_copy(v18);

  v17 = [v12 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v10 addAction_];
  [a3 presentViewController:v10 animated:1 completion:0];
}

uint64_t _s19HealthMedicationsUI0B10TapToRadarC19medicationsTracking14viewControllerySo06UIViewJ0CSg_tFZ_0(void *a1)
{
  v2 = sub_22838F1F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = objc_opt_self();
  v10 = sub_228391FC0();
  v11 = sub_228391FC0();
  v12 = [v9 hk:0 tapToRadarURLForBundleID:1330752 component:v10 title:v11 description:7 classification:0 reproducibility:0 keywords:3 autoDiagnostics:0 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_22838F1D0();
  if (HKShowSensitiveLogItems() && a1)
  {
    (*(v3 + 16))(v6, v8, v2);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    (*(v3 + 32))(v14 + v13, v6, v2);
    v15 = a1;
    _s19HealthMedicationsUI0B10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewL0CyyctFZ_0(0x10000000000000D2, 0x80000002283B5E50, v15, sub_228360894, v14);
  }

  else
  {
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;
      v18 = sub_22838F1C0();
      sub_2281A8644(MEMORY[0x277D84F90]);
      v19 = sub_228391F10();

      [v17 openSensitiveURL:v18 withOptions:v19];
    }
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t _s19HealthMedicationsUI0B10TapToRadarC16drugInteractions14viewControllerySo06UIViewJ0C_tFZ_0(void *a1)
{
  v2 = sub_22838F1F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = objc_opt_self();
  v10 = sub_228391FC0();
  v11 = sub_228391FC0();
  v12 = [v9 hk:0 tapToRadarURLForBundleID:1330752 component:v10 title:v11 description:7 classification:0 reproducibility:0 keywords:2 autoDiagnostics:0 attachments:0 collaborationContactHandles:1 diagnosticExtensionOptions:?];

  sub_22838F1D0();
  if (HKShowSensitiveLogItems())
  {
    (*(v3 + 16))(v6, v8, v2);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    (*(v3 + 32))(v14 + v13, v6, v2);
    _s19HealthMedicationsUI0B10TapToRadarC15promptBeforeTTR7message14viewController6actionySS_So06UIViewL0CyyctFZ_0(0x10000000000000D2, 0x80000002283B5E50, a1, sub_2283607B4, v14);
  }

  else
  {
    v15 = [objc_opt_self() defaultWorkspace];
    if (v15)
    {
      v16 = v15;
      v17 = sub_22838F1C0();
      sub_2281A8644(MEMORY[0x277D84F90]);
      v18 = sub_228391F10();

      [v16 openSensitiveURL:v17 withOptions:v18];
    }
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = sub_22838F1F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_228360898(double a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v5 setLineSpacing_];
  [v5 setAlignment_];
  v17 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v6 = [v3 attributedText];
  if (v6)
  {

    v7 = [v3 attributedText];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    [v17 appendAttributedString_];
    goto LABEL_8;
  }

  v9 = [v3 font];
  if (v9)
  {
    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v12 = sub_228391FC0();
    v13 = [v11 initWithString_];

    [v17 appendAttributedString_];
    v14 = *MEMORY[0x277D740A8];
    v8 = v10;
    [v17 addAttribute:v14 value:v8 range:{0, objc_msgSend(v17, sel_length)}];

LABEL_8:
    v15 = *MEMORY[0x277D74118];
    v16 = v5;
    v5 = v17;
    [v5 addAttribute:v15 value:v16 range:{0, objc_msgSend(v5, sel_length)}];

    [v3 setAttributedText_];
  }
}

uint64_t sub_228360B00()
{
  sub_228362CA8(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v34 - v3;
  sub_22824E8E4();
  v35 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362E64();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F00();
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F94();
  v20 = *(v19 - 8);
  v40 = v19;
  v41 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + qword_27D8274C0);
  v43 = sub_2283906C0();
  sub_22830F1F0();
  sub_2281A6490(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_228363098(&qword_27D827D00, sub_22830F1F0);
  sub_2283919A0();

  v25 = v35;
  sub_2283916C0();

  (*(v5 + 8))(v8, v25);
  sub_228363098(&qword_27D828538, sub_228362E64);
  v26 = v36;
  sub_228391AA0();
  (*(v37 + 8))(v13, v26);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v27 = sub_228392790();
  v43 = v27;
  v28 = sub_228392730();
  v29 = v42;
  (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  sub_228363098(&qword_27D828548, sub_228362F00);
  sub_2281A1504();
  v30 = v38;
  sub_228391A70();
  sub_2281A16F0(v29);

  (*(v39 + 8))(v18, v30);
  sub_228363098(&qword_27D828550, sub_228362F94);
  v31 = v40;
  v32 = sub_228391990();
  (*(v41 + 8))(v23, v31);
  return v32;
}

uint64_t sub_22836108C()
{
  sub_228362CA8(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v34 - v3;
  sub_22824E8E4();
  v35 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362E64();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F00();
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228362F94();
  v20 = *(v19 - 8);
  v40 = v19;
  v41 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 16);
  v43 = sub_2283906C0();
  sub_22830F1F0();
  sub_2281A6490(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
  sub_228363098(&qword_27D827D00, sub_22830F1F0);
  sub_2283919A0();

  v25 = v35;
  sub_2283916C0();

  (*(v5 + 8))(v8, v25);
  sub_228363098(&qword_27D828538, sub_228362E64);
  v26 = v36;
  sub_228391AA0();
  (*(v37 + 8))(v13, v26);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v27 = sub_228392790();
  v43 = v27;
  v28 = sub_228392730();
  v29 = v42;
  (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  sub_228363098(&qword_27D828548, sub_228362F00);
  sub_2281A1504();
  v30 = v38;
  sub_228391A70();
  sub_2281A16F0(v29);

  (*(v39 + 8))(v18, v30);
  sub_228363098(&qword_27D828550, sub_228362F94);
  v31 = v40;
  v32 = sub_228391990();
  (*(v41 + 8))(v23, v31);
  return v32;
}

uint64_t sub_22836160C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 24);
    sub_2281A65B4();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v2;
    v7 = v0;
    v1 = sub_228391890();
    v8 = *(v0 + 56);
    *(v7 + 56) = v1;
  }

  return v1;
}

uint64_t sub_22836169C()
{
  v1 = v0;
  v2 = MEMORY[0x277D84560];
  sub_228362CA8(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_228397F30;
  v4 = sub_22836160C();
  v5 = *(v0 + 32);
  v6 = type metadata accessor for RelatedCHRRecordsDataSource();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v5;
  v10 = RelatedCHRRecordsDataSource.init(with:healthStore:)(v4, v9);
  v11 = sub_228363098(&qword_27D828558, type metadata accessor for RelatedCHRRecordsDataSource);
  *(v3 + 32) = v10;
  *(v3 + 40) = v11;
  *(v3 + 48) = sub_228362950();
  *(v3 + 56) = v12;
  v13 = sub_2283901F0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_228390210();
  sub_228362CA8(0, &qword_27D828508, sub_228362D0C, v2);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F30;
  *(inited + 32) = 2;
  sub_22838FE90();
  v18 = sub_22838FEA0();
  v19 = MEMORY[0x277D110F0];
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v20 = MEMORY[0x277D10F80];
  v21 = MEMORY[0x277D11048];
  *(inited + 56) = MEMORY[0x277D10F80];
  *(inited + 64) = 1;
  *(inited + 72) = v16;
  *(inited + 80) = v21;
  *(inited + 88) = MEMORY[0x277D11040];
  sub_2281A90B4(inited);
  swift_setDeallocating();
  sub_228362D0C();

  swift_arrayDestroy();
  v22 = sub_2283902F0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = sub_2283902E0();
  v26 = *(v1 + 24);
  v27 = sub_22818259C(v26);

  v60[0] = v27;
  v60[1] = sub_228363098(&qword_27D828560, type metadata accessor for MedicationChartCellDataSource);
  v28 = *(v1 + 24);
  v29 = sub_228362108(v28);

  v60[2] = v29;
  v60[3] = v20;
  v60[4] = sub_228361BB4();
  v60[5] = v30;
  sub_2283926E0();
  __swift_project_boxed_opaque_existential_0(v59, v59[3]);
  v31 = sub_22838F7E0();
  v32 = *(v1 + 24);
  v33 = objc_allocWithZone(type metadata accessor for MedicationHighlightsDataSource());
  v34 = v32;
  v35 = sub_2281AADE4(v31, v34);

  v36 = sub_228363098(&qword_27D828568, type metadata accessor for MedicationHighlightsDataSource);
  __swift_destroy_boxed_opaque_existential_0(v59);
  v60[6] = v35;
  v60[7] = v36;
  v37 = *(v1 + 56);
  v38 = type metadata accessor for MedicationDetailsDataSource();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  v42 = MedicationDetailsDataSource.init(with:healthStore:)(v41, v9);
  v43 = sub_228363098(&qword_27D828570, type metadata accessor for MedicationDetailsDataSource);
  v60[8] = v42;
  v60[9] = v43;
  v44 = sub_22836259C();
  v45 = MEMORY[0x277D11080];
  v60[10] = v44;
  v60[11] = MEMORY[0x277D11080];
  v60[12] = sub_228362800();
  v60[13] = v46;
  v60[14] = v25;
  v60[15] = v45;

  v48 = 0;
  v49 = MEMORY[0x277D84F90];
LABEL_2:
  if (v48 <= 8)
  {
    v50 = 8;
  }

  else
  {
    v50 = v48;
  }

  v51 = v50 + 1;
  v52 = &v60[2 * v48];
  while (1)
  {
    if (v48 == 8)
    {
      sub_228362CA8(0, &qword_27D828578, sub_228212470, MEMORY[0x277D83D88]);
      swift_arrayDestroy();

      return v49;
    }

    if (v51 == ++v48)
    {
      break;
    }

    v53 = v52 + 2;
    v54 = *v52;
    v52 += 2;
    if (v54)
    {
      v55 = *(v53 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228198C84(0, v49[2] + 1, 1, v49);
        v49 = result;
      }

      v57 = v49[2];
      v56 = v49[3];
      if (v57 >= v56 >> 1)
      {
        result = sub_228198C84((v56 > 1), v57 + 1, 1, v49);
        v49 = result;
      }

      v49[2] = v57 + 1;
      v58 = &v49[2 * v57];
      v58[4] = v54;
      v58[5] = v55;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228361BB4()
{
  sub_2281BC944();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228390EC0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *(v0 + 32);
  v8 = *(v0 + 24);
  v9 = v7;
  v10 = sub_22836108C();
  v11 = *(v0 + 40);
  v12 = type metadata accessor for ScheduleDataSource(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v39[3] = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v39[4] = &protocol witness table for HKMedicationUserDomainConcept;
  v39[0] = v8;
  v16 = (v15 + qword_27D8244C0);
  *v16 = 0xD000000000000014;
  v16[1] = 0x80000002283A9440;
  v17 = qword_27D8244C8;
  v37 = v8;
  sub_228390EB0();
  v18 = objc_allocWithZone(sub_228390EF0());
  *(v15 + v17) = sub_228390EE0();
  v19 = qword_27D8244D0;
  *(v15 + qword_27D8244D0) = 0;
  v20 = qword_27D8244E0;
  *(v15 + qword_27D8244E0) = 0;
  *(v15 + qword_27D8244E8) = MEMORY[0x277D84FA0];
  sub_228180FB0(v39, v15 + qword_27D8244B0);
  *(v15 + v19) = v7;
  *(v15 + qword_27D8244D8) = v11;
  v38 = 0;
  sub_2281BC72C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v9;

  *(v15 + qword_27D8244B8) = sub_228391890();
  *(v15 + qword_27D8244A8) = 0;
  v25 = *(v15 + v20);
  *(v15 + v20) = v10;

  sub_228362CA8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v26 = *(sub_22838FEF0() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  sub_22838FED0();
  v29 = sub_22838F920();
  v30 = *(v29 + qword_27D8244E0);
  if (v30)
  {

    v31 = v30;
  }

  else
  {
    LOBYTE(v38) = 1;

    sub_2283918C0();
    sub_228363098(&qword_27D8245C8, sub_2281BC944);
    v32 = v36;
    v31 = sub_228391990();
    (*(v35 + 8))(v4, v32);
  }

  v38 = v31;
  swift_allocObject();
  swift_weakInit();
  sub_22829514C();
  sub_228363098(&qword_27D8245D8, sub_22829514C);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  sub_2281AFAAC();

  __swift_destroy_boxed_opaque_existential_0(v39);
  sub_228363098(&qword_27D826C00, type metadata accessor for ScheduleDataSource);
  return v29;
}

uint64_t sub_228362108(void *a1)
{
  v41 = sub_22838F4A0();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[4];
  v11 = type metadata accessor for MedicationsRecordDoseDataSource();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + qword_27D827488) = 0;
  *(v14 + qword_27D827490) = 0;
  *(v14 + qword_27D827498) = 0;
  v15 = (v14 + qword_27D8274A0);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + qword_27D8274A8) = 0;
  *(v14 + qword_27D8274B0) = 0;
  *(v14 + qword_280DDC720) = v10;
  *(v14 + qword_27D8274B8) = a1;
  *(v14 + qword_27D8274C0) = v7;
  *(v14 + qword_27D8274C8) = v9;
  sub_228390890();

  v16 = v10;
  v17 = a1;

  v18 = v9;
  sub_228390880();
  v19 = sub_228390860();

  *(v14 + qword_27D8274D0) = v19;
  v20 = objc_allocWithZone(type metadata accessor for MedicationScheduleObserver());
  v21 = v16;
  v22 = sub_22819C7AC(v21);

  *(v14 + qword_27D8274D8) = v22;
  type metadata accessor for MedicationDoseEventDataSource();
  v23 = swift_allocObject();
  v24 = v21;
  v25 = v17;
  swift_defaultActor_initialize();
  *(v23 + 112) = v24;
  *(v23 + 120) = v17;
  *(v14 + qword_27D8274E0) = v23;
  v26 = *v15;
  v27 = v15[1];
  *v15 = sub_228362E58;
  v15[1] = v8;

  sub_228176EC8(v26);
  v28 = (v14 + qword_27D8274E8);
  v29 = *(type metadata accessor for DayScheduleProvider() + 24);
  v30 = sub_2283909A0();
  (*(*(v30 - 8) + 56))(&v28[v29], 1, 1, v30);
  v31 = MEMORY[0x277D84F90];
  *v28 = MEMORY[0x277D84F90];
  *(v28 + 1) = v31;
  sub_228362CA8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v32 = *(sub_22838FEF0() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F30;
  sub_22838FED0();
  sub_22838FED0();
  v42[0] = 0;
  v42[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v42, "MutableArray<");
  HIWORD(v42[1]) = -4864;
  sub_22838F490();
  v35 = sub_22838F450();
  v37 = v36;
  (*(v3 + 8))(v6, v41);
  MEMORY[0x22AAB5C80](v35, v37);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v38 = sub_22838FF30();

  sub_2282DBAA8();
  sub_2282DBCBC();

  return v38;
}

uint64_t sub_22836259C()
{
  v1 = sub_22836160C();
  v2 = *(v0 + 40);
  v3 = type metadata accessor for MedicationCompactEducationDataSource();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  swift_retain_n();
  v6 = MedicationCompactEducationDataSource.init(with:analyticsManager:)(v1, v2);
  v7 = *(v0 + 56);
  v8 = type metadata accessor for MedicationRegularEducationDataSource();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v12 = MedicationRegularEducationDataSource.init(with:analyticsManager:)(v11, v2);
  sub_228362CA8(0, &qword_27D828508, sub_228362D0C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F30;
  *(inited + 32) = 1;
  v14 = sub_228363098(&qword_27D827FD0, type metadata accessor for MedicationCompactEducationDataSource);
  v15 = sub_228363098(&qword_27D828518, type metadata accessor for MedicationCompactEducationDataSource);
  *(inited + 40) = v6;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  *(inited + 64) = 2;
  v16 = sub_228363098(&qword_27D825998, type metadata accessor for MedicationRegularEducationDataSource);
  v17 = sub_228363098(&qword_27D828520, type metadata accessor for MedicationRegularEducationDataSource);
  *(inited + 72) = v12;
  *(inited + 80) = v16;
  *(inited + 88) = v17;
  sub_2281A90B4(inited);
  swift_setDeallocating();
  sub_228362D0C();

  swift_arrayDestroy();
  v18 = sub_2283902F0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2283902E0();

  return v21;
}

uint64_t sub_228362800()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for MedicationInformationDataSource();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + qword_27D825D70) = 0;
  *(v8 + qword_27D825D78) = 0;
  *(v8 + qword_27D825D80) = MEMORY[0x277D84FA0];
  *(v8 + qword_27D825D88) = v2;
  *(v8 + qword_27D825D90) = v1;
  *(v8 + qword_27D825D98) = v4;
  *(v8 + qword_27D825DA0) = v3;
  v9 = v2;

  v10 = v4;

  v11 = sub_22838F920();

  v12 = [v9 firstOntologyCoding];

  if (v12)
  {

    sub_2282495C0();
  }

  sub_228363098(&qword_27D828500, type metadata accessor for MedicationInformationDataSource);
  return v11;
}

uint64_t sub_228362950()
{
  v1 = sub_22836160C();
  v2 = v0[2];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for OptionsDataSource();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  sub_228391150();
  v9 = (v8 + qword_27D8279A0);
  *v9 = 0xD000000000000020;
  v9[1] = 0x80000002283B3A00;
  *(v8 + qword_27D8279A8) = 0;
  *(v8 + qword_27D8279B0) = 0;
  *(v8 + qword_27D8279B8) = 0;
  *(v8 + qword_27D8279C0) = v2;
  *(v8 + qword_27D8279C8) = v1;
  *(v8 + qword_27D8279D0) = v4;
  *(v8 + qword_27D8279D8) = v3;
  sub_228362CA8(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v10 = *(sub_22838FEF0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_228398270;

  v13 = v4;

  sub_22838FED0();
  sub_22838FED0();
  sub_22838FED0();
  v14 = sub_22838F920();

  sub_22830A5B0();
  sub_22830A824();

  sub_228363098(&qword_27D8284F8, type metadata accessor for OptionsDataSource);
  return v14;
}

uint64_t sub_228362C00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_228362CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_228362D0C()
{
  if (!qword_27D828510)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_2281A92A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D828510);
    }
  }
}

uint64_t sub_228362D7C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22838F940();
  }

  return result;
}

uint64_t sub_228362DE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v4 = *(v3 + 24);
  LOBYTE(v2) = sub_228392C60();

  return v2 & 1;
}

void sub_228362E64()
{
  if (!qword_27D828528)
  {
    sub_22830F1F0();
    sub_228363098(&qword_27D827D00, sub_22830F1F0);
    v0 = sub_2283916D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828528);
    }
  }
}

void sub_228362F00()
{
  if (!qword_27D828530)
  {
    sub_228362E64();
    sub_228363098(&qword_27D828538, sub_228362E64);
    v0 = sub_228391730();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828530);
    }
  }
}

void sub_228362F94()
{
  if (!qword_27D828540)
  {
    sub_228362F00();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228363098(&qword_27D828548, sub_228362F00);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828540);
    }
  }
}

uint64_t sub_228363098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2283630F8@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(id *)@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v6[2] = &v7;
  result = sub_228309FEC(a2, v6, v4);
  *a3 = result & 1;
  return result;
}

uint64_t sub_228363154(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v5 = *(v4 + qword_27D8274B8);
  return sub_228392C60() & 1;
}

id sub_2283631C8(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:a3 target:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_22836324C()
{
  v1 = qword_27D824C40;
  v2 = *(v0 + qword_27D824C40);
  if (v2)
  {
    v3 = *(v0 + qword_27D824C40);
  }

  else
  {
    v4 = sub_228391FC0();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v5 style:0 target:v0 action:sel_tapToRadarButtonTappedWithSender_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_228363320()
{
  v1 = v0;
  v2 = sub_2283902A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390290();
  v7 = sub_228390280();
  (*(v3 + 8))(v6, v2);
  v8 = [v1 navigationItem];
  if (v7)
  {
    sub_228382CF4(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_228397F20;
    *(v9 + 32) = sub_22836324C();
    *(v9 + 40) = sub_2283631C8(&qword_27D824C38, &selRef_hxui_cancelButtonTapped, 1);
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    v10 = sub_228392190();

    v11 = &selRef_setRightBarButtonItems_animated_;
  }

  else
  {
    v10 = sub_2283631C8(&qword_27D824C38, &selRef_hxui_cancelButtonTapped, 1);
    v11 = &selRef_setRightBarButtonItem_animated_;
  }

  [v8 *v11];
}

void sub_228363508(uint64_t a1)
{
  v2 = v1;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = [v1 headerView];
  v9 = [v8 customIconContainerView];

  if (v9)
  {

    v10 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    sub_228390960();
    v11 = v10;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = [v2 headerView];
    [v12 addSubview_];

    sub_228380F08(a1, v7, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_228390950();
    sub_228382CF4(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_228397F00;
    v14 = [v2 headerView];
    v15 = [v14 topAnchor];

    v16 = [v11 topAnchor];
    v17 = objc_opt_self();
    v18 = 4.0;
    if (([v17 hk_currentDeviceHas4InchScreen] & 1) == 0)
    {
      if ([v17 hk_currentDeviceHas4Point7InchScreen])
      {
        v18 = 4.0;
      }

      else
      {
        v18 = 12.0;
      }
    }

    v19 = objc_opt_self();
    v20 = [v15 constraintEqualToAnchor:v16 constant:v18];

    *(v13 + 32) = v20;
    v21 = [v2 headerView];
    v22 = [v21 centerXAnchor];

    v23 = [v11 centerXAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v13 + 40) = v24;
    v25 = [v11 heightAnchor];
    v26 = [v25 constraintEqualToConstant_];

    *(v13 + 48) = v26;
    v27 = [v11 widthAnchor];

    v28 = [v27 constraintEqualToConstant_];
    *(v13 + 56) = v28;
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v29 = sub_228392190();

    [v19 activateConstraints_];

    v30 = qword_27D824C18;
    v31 = *&v2[qword_27D824C18];
    if (v31)
    {
      [v31 removeFromSuperview];
      v32 = *&v2[v30];
    }

    else
    {
      v32 = 0;
    }

    *&v2[v30] = v11;
  }
}

uint64_t sub_228363934()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  sub_228380C4C();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228363D60()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228212A9C();
  sub_228380B60(&qword_27D828030, sub_228212A9C);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2283641A4()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228212A9C();
  sub_228380B60(&qword_27D828030, sub_228212A9C);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2283645E8()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
  sub_228381554();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228364A14()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
  sub_228381554();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228364E40()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  sub_228381B40();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228365274()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228181EDC();
  sub_228380B60(&qword_27D824F30, sub_228181EDC);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2283656B8()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281E4AF0();
  sub_228380B60(&qword_27D825288, sub_2281E4AF0);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228365AFC()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  sub_228382210();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228365F28()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380234(0, &qword_27D8268D8, &qword_27D823CF8, MEMORY[0x277D839B0]);
  sub_228382498();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228366354()
{
  v1 = v0;
  v2 = qword_27D824C20;
  v12 = *(*(*(v0 + qword_27D824C20) + qword_27D824D88) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22829C0BC();
  sub_228380B60(&qword_27D8286E0, sub_22829C0BC);

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v3 = *(v0 + v2);
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for SpecificationStepViewController + 80);
  v6 = v3;
  v5();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380CDC(0, &qword_27D8245D0, MEMORY[0x277CBCD88]);
  sub_2281BCA04();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v7 = *(v1 + v2);
  v8 = *((*v4 & *v7) + class metadata base offset for SpecificationStepViewController + 88);
  v9 = v7;
  v8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v10 = v1 + qword_27D824BF0;
  v13 = *(v10 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  sub_228380DB4();

  sub_228391AC0();

  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_228366798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_228380F74(result + qword_27D824BF0, v7, type metadata accessor for MedicationOnboardingFlowManager);

    if (a2)
    {
      v10 = MEMORY[0x277D837D0];
      v11 = a2;
    }

    else
    {
      a1 = 0;
      v11 = 0;
      v10 = 0;
      v13[2] = 0;
    }

    v13[0] = a1;
    v13[1] = v11;
    v13[3] = v10;

    MedicationOnboardingFlowManager.consume(value:)(v13);
    sub_2283808C0(v7, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v13);
  }

  return result;
}

uint64_t sub_2283668C4(uint64_t a1)
{
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_228380F74(result + qword_27D824BF0, v9, type metadata accessor for MedicationOnboardingFlowManager);

    sub_228380F08(a1, v5, &unk_27D827790, type metadata accessor for FormStepResult);
    v12 = type metadata accessor for FormStepResult();
    if ((*(*(v12 - 8) + 48))(v5, 1, v12) == 1)
    {
      sub_228380BA8(v5, &unk_27D827790, type metadata accessor for FormStepResult);
      v14 = 0u;
      v15 = 0u;
    }

    else
    {
      *(&v15 + 1) = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_228381EB4(v5, boxed_opaque_existential_1, type metadata accessor for FormStepResult);
    }

    MedicationOnboardingFlowManager.consume(value:)(&v14);
    sub_2283808C0(v9, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(&v14);
  }

  return result;
}

uint64_t sub_228366AE0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_228380F74(result + qword_27D824BF0, v11, type metadata accessor for MedicationOnboardingFlowManager);

    if (a4 == -1)
    {
      v14 = 0;
      v15 = 0;
      v17[1] = 0;
      v17[2] = 0;
    }

    else
    {
      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      *(v14 + 32) = a3;
      *(v14 + 40) = a4 & 1;
      v15 = &type metadata for StrengthStepResult;
    }

    v17[0] = v14;
    v17[3] = v15;
    sub_2281CCAA4(a1, a2, a3, a4);
    MedicationOnboardingFlowManager.consume(value:)(v17);
    sub_2283808C0(v11, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v17);
  }

  return result;
}

uint64_t sub_228366C50(void *a1)
{
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    if (a1)
    {
      v8 = sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
      v9 = a1;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v12[1] = 0;
      v12[2] = 0;
    }

    v12[0] = v9;
    v12[3] = v8;
    v10 = a1;
    MedicationOnboardingFlowManager.consume(value:)(v12);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v12);
  }

  return result;
}

uint64_t sub_228366D80(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = v69 - v8;
  v96 = sub_228390E20();
  v98 = *(v96 - 8);
  v9 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  v76 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228199E70();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_228390FD0();
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283801CC(0, &qword_27D823E00, &qword_280DDB990, 0x277D75348, MEMORY[0x277CCB2C8]);
  v92 = *(v17 - 8);
  v93 = v17;
  v18 = *(v92 + 8);
  MEMORY[0x28223BE20](v17);
  v80 = v69 - v19;
  v20 = MEMORY[0x277D11640];
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v69 - v26;
  v28 = sub_2283909E0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v78 = v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = v69 - v33;
  v82 = sub_228390D50();
  v81 = *(v82 - 8);
  v35 = *(v81 + 64);
  v36 = MEMORY[0x28223BE20](v82);
  v77 = v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v97 = v69 - v38;
  sub_228380F08(a1, v27, &qword_27D8238A8, v20);
  v39 = *(v29 + 48);
  if (v39(v27, 1, v28) == 1)
  {
    sub_228380BA8(v27, &qword_27D8238A8, MEMORY[0x277D11640]);
    v40 = v87;
    v41 = a1;
  }

  else
  {
    v71 = v39;
    v73 = v25;
    v72 = v29;
    (*(v29 + 32))(v34, v27, v28);
    v79 = v34;
    v42 = sub_2283909D0();
    v43 = *(v42 + 16);
    v74 = a1;
    if (v43)
    {
      v69[1] = v29 + 48;
      v70 = v28;
      *&v99 = MEMORY[0x277D84F90];
      sub_2281C9E84(0, v43, 0);
      v44 = v99;
      v45 = *(v98 + 16);
      v46 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v69[0] = v42;
      v47 = v42 + v46;
      v48 = *(v98 + 72);
      v89 = (v98 + 32);
      v90 = (v92 + 56);
      v91 = v48;
      v88 = (v98 + 8);
      v98 += 16;
      v92 = v45;
      v49 = v76;
      do
      {
        v50 = v14;
        v51 = v96;
        v52 = v45;
        (v45)(v49, v47, v96);
        v53 = sub_228390E10();
        v54 = *(v95 + 48);
        if (v53)
        {
          (v52)(v50, v49, v51);
          v14 = v50;
          sub_22817A958(0, &qword_280DDB990, 0x277D75348);
          sub_228392BC0();
          sub_228391E50();
          (*v88)(v49, v51);
          v55 = 0;
        }

        else
        {
          v14 = v50;
          (*v89)(v50, v49, v51);
          v55 = 1;
        }

        (*v90)(&v14[v54], v55, 1, v93);
        *&v99 = v44;
        v57 = *(v44 + 16);
        v56 = *(v44 + 24);
        v58 = v97;
        if (v57 >= v56 >> 1)
        {
          sub_2281C9E84(v56 > 1, v57 + 1, 1);
          v49 = v76;
          v44 = v99;
        }

        *(v44 + 16) = v57 + 1;
        sub_228381EB4(v14, v44 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v57, sub_228199E70);
        v45 = v92;
        v47 += v91;
        --v43;
      }

      while (v43);

      v28 = v70;
    }

    else
    {

      v58 = v97;
    }

    v29 = v72;
    (*(v72 + 16))(v78, v79, v28);
    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BB0();
    sub_228391E50();
    (*(v84 + 104))(v83, *MEMORY[0x277D11728], v85);
    v59 = v77;
    sub_228390D30();
    (*(v29 + 8))(v79, v28);
    v60 = v81;
    v61 = v82;
    (*(v81 + 32))(v58, v59, v82);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v39 = v71;
    if (Strong)
    {
      v63 = Strong;
      v64 = v58;
      v65 = v75;
      (*(v60 + 16))(v75, v64, v61);
      (*(v60 + 56))(v65, 0, 1, v61);
      sub_228363508(v65);

      sub_228380BA8(v65, &qword_280DDBD20, MEMORY[0x277D116C8]);
      (*(v60 + 8))(v64, v61);
    }

    else
    {
      (*(v60 + 8))(v58, v61);
    }

    v25 = v73;
    v40 = v87;
    v41 = v74;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v67 = result;
    sub_228380F74(result + qword_27D824BF0, v40, type metadata accessor for MedicationOnboardingFlowManager);

    sub_228380F08(v41, v25, &qword_27D8238A8, MEMORY[0x277D11640]);
    if (v39(v25, 1, v28) == 1)
    {
      sub_228380BA8(v25, &qword_27D8238A8, MEMORY[0x277D11640]);
      v99 = 0u;
      v100 = 0u;
    }

    else
    {
      *(&v100 + 1) = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
      (*(v29 + 32))(boxed_opaque_existential_1, v25, v28);
    }

    MedicationOnboardingFlowManager.consume(value:)(&v99);
    sub_2283808C0(v40, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(&v99);
  }

  return result;
}

uint64_t sub_2283678A0(uint64_t a1)
{
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D116C8];
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = sub_228390D50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v35 = a1;
  sub_228380F08(a1, v15, &qword_280DDBD20, v6);
  v33 = *(v17 + 48);
  if (v33(v15, 1, v16) == 1)
  {
    sub_228380BA8(v15, &qword_280DDBD20, MEMORY[0x277D116C8]);
  }

  else
  {
    v32 = v5;
    v24 = *(v17 + 32);
    v24(v21, v15, v16);
    v24(v23, v21, v16);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      (*(v17 + 16))(v13, v23, v16);
      (*(v17 + 56))(v13, 0, 1, v16);
      sub_228363508(v13);

      sub_228380BA8(v13, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }

    (*(v17 + 8))(v23, v16);
    v5 = v32;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    v29 = v34;
    sub_228380F08(v35, v34, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if (v33(v29, 1, v16) == 1)
    {
      sub_228380BA8(v29, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v36 = 0u;
      v37 = 0u;
    }

    else
    {
      *(&v37 + 1) = v16;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      (*(v17 + 32))(boxed_opaque_existential_1, v29, v16);
    }

    MedicationOnboardingFlowManager.consume(value:)(&v36);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(&v36);
  }

  return result;
}

uint64_t sub_228367CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_228380F74(result + qword_27D824BF0, v11, type metadata accessor for MedicationOnboardingFlowManager);

    if (a2 == 1)
    {
      v14 = 0;
      v15 = 0;
      v17[1] = 0;
      v17[2] = 0;
    }

    else
    {
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = a3;
      v14[5] = a4;
      v15 = &type metadata for MedicationNicknameNotes;
    }

    v17[0] = v14;
    v17[3] = v15;
    sub_2283823B0(a1, a2);
    MedicationOnboardingFlowManager.consume(value:)(v17);
    sub_2283808C0(v11, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v17);
  }

  return result;
}

uint64_t sub_228367E58(char a1)
{
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    if (a1 == 2)
    {
      v8 = 0;
      memset(v10, 0, 24);
    }

    else
    {
      LOBYTE(v10[0]) = a1 & 1;
      v8 = MEMORY[0x277D839B0];
    }

    v10[3] = v8;
    MedicationOnboardingFlowManager.consume(value:)(v10);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v10);
  }

  return result;
}

uint64_t sub_228367F7C(uint64_t a1)
{
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_228380F74(result + qword_27D824BF0, v5, type metadata accessor for MedicationOnboardingFlowManager);

    if (a1)
    {
      sub_2282FEA58();
      v9 = a1;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v11[1] = 0;
      v11[2] = 0;
    }

    v11[0] = v9;
    v11[3] = v8;

    MedicationOnboardingFlowManager.consume(value:)(v11);
    sub_2283808C0(v5, type metadata accessor for MedicationOnboardingFlowManager);
    return sub_2281AC998(v11);
  }

  return result;
}

void MedicationOnboardingFlowManager.consume(value:)(uint64_t a1)
{
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v90 - v5;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v90 - v9;
  sub_228368E1C(0, &qword_27D8264E8, MEMORY[0x277D116A0]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = v90 - v13;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v90 - v16;
  v18 = sub_228390C30();
  v95 = *(v18 - 8);
  v96 = v18;
  v19 = *(v95 + 64);
  MEMORY[0x28223BE20](v18);
  v94 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v90 - v26;
  v28 = type metadata accessor for FormStepResult();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v97 = v90 - v34;
  v35 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v36 = *(v1 + v35[7]);
  v37 = v36 >> 5;
  if (v36 >> 5 <= 2)
  {
    if (v37)
    {
      if (v37 == 1)
      {
        v38 = v35;
        sub_2283596D8(a1, &v100);
        if (v101.i64[1])
        {
          if (swift_dynamicCast())
          {
            v39 = v98;
            v40 = v99.i64[0];
            if (v99.i8[8])
            {
              v41 = *(v1 + v38[14]);
              if (v98.i64[1])
              {

                v42 = v39.i64[0];
              }

              else
              {
                v42 = 0;
              }

              v100.i64[0] = v42;
              v100.i64[1] = v39.i64[1];
              sub_228391850();

              v87 = *(v1 + v38[15]);
              if (v39.i64[1])
              {
                v88 = v40;
                v89 = v40;
              }

              else
              {
                v89 = 0;
              }

              v100.i64[0] = v89;
              sub_228391850();
              sub_2281CCAE0(v39.i64[0], v39.i64[1], v40, 1);
            }

            else
            {
              v79 = *(v1 + v38[11]);
              v100.i8[0] = 0;
              sub_228391850();
              v80 = *(v1 + v38[10]);
              v100.i64[0] = v39.i64[0];
              v81 = v39.i64[0];
              sub_228391850();
              sub_2281CCAE0(v39.i64[0], v39.i64[1], v40, 0);
              sub_2281CCAE0(v39.i64[0], v39.i64[1], v40, 0);
            }

            return;
          }
        }

        else
        {
          sub_2281AC998(&v100);
        }

        v70 = *(v1 + v38[15]);
        v100.i64[0] = 0;
        sub_228391850();
        v71 = *(v1 + v38[14]);
        v100 = 0uLL;
        sub_228391850();
        return;
      }

      if (v36 == 64)
      {
        return;
      }

      v56 = *(v1 + v35[13]);
      sub_2283596D8(a1, &v100);
      if (v101.i64[1])
      {
        v57 = swift_dynamicCast();
        v58 = v98.i64[0];
        if (v57)
        {
          v59 = v98.i64[1];
        }

        else
        {
          v58 = 0;
          v59 = 0;
        }
      }

      else
      {
        sub_2281AC998(&v100);
        v58 = 0;
        v59 = 0;
      }

      v100.i64[0] = v58;
      v100.i64[1] = v59;
LABEL_54:
      sub_228391850();

      return;
    }

    v46 = v35;
    sub_2283596D8(a1, &v100);
    if (v101.i64[1])
    {
      v47 = swift_dynamicCast();
      v92 = *(v29 + 56);
      v92(v27, v47 ^ 1u, 1, v28);
      if ((*(v29 + 48))(v27, 1, v28) != 1)
      {
        v48 = v97;
        sub_228381EB4(v27, v97, type metadata accessor for FormStepResult);
        v49 = v46;
        v50 = *(v1 + v46[12]);
        v91 = type metadata accessor for FormStepResult;
        sub_228380F74(v48, v25, type metadata accessor for FormStepResult);
        v92(v25, 0, 1, v28);
        v90[1] = v50;
        sub_228391850();
        sub_228380BA8(v25, &unk_27D827790, type metadata accessor for FormStepResult);
        v51 = v49[10];
        v90[2] = v1;
        v52 = *(v1 + v51);
        v100.i64[0] = 0;
        sub_228391850();
        sub_228380F74(v48, v33, v91);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v100.i64[0] = 0;
          sub_228391850();
          v53 = v48;
        }

        else
        {
          v91 = v52;
          v74 = v94;
          v75 = v95;
          v76 = v96;
          (*(v95 + 32))(v94, v33, v96);
          v77 = *(v75 + 16);
          v77(v25, v74, v76);
          swift_storeEnumTagMultiPayload();
          v92(v25, 0, 1, v28);
          sub_228391850();
          sub_228380BA8(v25, &unk_27D827790, type metadata accessor for FormStepResult);
          sub_22837213C(v17);
          v78 = type metadata accessor for MedicationSearchItem(0);
          if ((*(*(v78 - 8) + 48))(v17, 1, v78) == 1)
          {
            (*(v75 + 8))(v74, v76);
            sub_2283808C0(v97, type metadata accessor for FormStepResult);
            sub_228380BA8(v17, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
            return;
          }

          v82 = v93;
          v77(v93, v74, v76);
          (*(v75 + 56))(v82, 0, 1, v76);
          v83 = sub_2282703FC();
          sub_228380BA8(v82, &qword_27D8264E8, MEMORY[0x277D116A0]);
          sub_2283808C0(v17, type metadata accessor for MedicationSearchItem);
          if (v83)
          {
            if (v83 >> 62)
            {
              v84 = sub_2283930D0();
            }

            else
            {
              v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v84 == 1)
            {
              if ((v83 & 0xC000000000000001) != 0)
              {
                v85 = MEMORY[0x22AAB6D80](0, v83);
              }

              else
              {
                if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v85 = *(v83 + 32);
              }

              v86 = v85;

              v100.i64[0] = v86;
              sub_228391850();
            }

            else
            {
            }
          }

          (*(v75 + 8))(v74, v76);
          v53 = v97;
        }

        sub_2283808C0(v53, type metadata accessor for FormStepResult);
        return;
      }
    }

    else
    {
      sub_2281AC998(&v100);
      (*(v29 + 56))(v27, 1, 1, v28);
    }

    sub_228380BA8(v27, &unk_27D827790, type metadata accessor for FormStepResult);
    return;
  }

  if (v37 == 3)
  {
    if (v36 == 96)
    {
      v54 = *(v1 + v35[19]);
      sub_2283596D8(a1, &v100);
      if (v101.i64[1])
      {
        sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
        if (swift_dynamicCast())
        {
          v55 = v98.i64[0];
        }

        else
        {
          v55 = 0;
        }
      }

      else
      {
        sub_2281AC998(&v100);
        v55 = 0;
      }

      v100.i64[0] = v55;
      sub_228391850();
    }

    else
    {
      v62 = *(v1 + v35[16]);
      sub_2283596D8(a1, &v100);
      if (v101.i64[1])
      {
        v63 = sub_2283909E0();
        v64 = swift_dynamicCast();
        (*(*(v63 - 8) + 56))(v6, v64 ^ 1u, 1, v63);
      }

      else
      {
        sub_2281AC998(&v100);
        v72 = sub_2283909E0();
        (*(*(v72 - 8) + 56))(v6, 1, 1, v72);
      }

      sub_228391850();
      sub_228380BA8(v6, &qword_27D8238A8, MEMORY[0x277D11640]);
    }
  }

  else
  {
    if (v37 != 4)
    {
      if (v36 == 160)
      {
        return;
      }

      v60 = *(v1 + v35[21]);
      sub_2283596D8(a1, &v100);
      if (v101.i64[1])
      {
        sub_2282FEA58();
        if (swift_dynamicCast())
        {
          v61 = v98.i64[0];
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        sub_2281AC998(&v100);
        v61 = 0;
      }

      v100.i64[0] = v61;
      goto LABEL_54;
    }

    if (v36 == 128)
    {
      v43 = *(v1 + v35[17]);
      sub_2283596D8(a1, &v100);
      if (v101.i64[1])
      {
        v44 = sub_228390D50();
        v45 = swift_dynamicCast();
        (*(*(v44 - 8) + 56))(v10, v45 ^ 1u, 1, v44);
      }

      else
      {
        sub_2281AC998(&v100);
        v73 = sub_228390D50();
        (*(*(v73 - 8) + 56))(v10, 1, 1, v73);
      }

      sub_228391850();
      sub_228380BA8(v10, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }

    else
    {
      v65 = *(v1 + v35[18]);
      sub_2283596D8(a1, &v100);
      if (v101.i64[1])
      {
        if (swift_dynamicCast())
        {
          v66 = -1;
        }

        else
        {
          v66 = 0;
        }

        v67 = vdupq_n_s64(v66);
        v68 = vbslq_s8(v67, v98, xmmword_2283A4870);
        v69 = vandq_s8(v99, v67);
      }

      else
      {
        sub_2281AC998(&v100);
        v68 = xmmword_2283A4870;
        v69 = 0uLL;
      }

      v100 = v68;
      v101 = v69;
      sub_228391850();
      sub_228294FEC(v100.i64[0], v100.i64[1]);
    }
  }
}

void sub_228368E1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228368E90(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_27D824C28);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      [v5 setEnabled_];
    }
  }
}

void sub_228368F1C(char a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_228380F74(Strong + qword_27D824BF0, v8, type metadata accessor for MedicationOnboardingFlowManager);

      v11 = *&v8[*(v5 + 44)];

      sub_2283808C0(v8, type metadata accessor for MedicationOnboardingFlowManager);
      v14[0] = 1;
      sub_228391850();
    }

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      a3();
    }
  }
}

void sub_228369070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = Strong + qword_27D824BF0;
      v9 = *(v8 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 88));
      v10 = a1;
      v11 = sub_228390840();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v13 = _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(v10, v11, a4, v12);

      if (v13)
      {
        [v7 presentViewController:v13 animated:1 completion:0];
      }
    }
  }
}

uint64_t sub_22836918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v47 = MEMORY[0x277CC9E70];
  sub_228368E1C(0, &qword_280DDB938, MEMORY[0x277CC9E70]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v46 = MEMORY[0x277CC9E78];
  sub_228368E1C(0, &qword_27D8285D8, MEMORY[0x277CC9E78]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v38 = &v37 - v9;
  v11 = sub_228392EC0();
  v39 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_228392830();
  v17 = *(v16 - 8);
  v41 = v16;
  v42 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228380A60();
  v22 = *(v21 - 8);
  v43 = v21;
  v44 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v37 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = objc_opt_self();
  v25 = [v45 defaultCenter];
  v26 = *MEMORY[0x277D76BA8];
  sub_228392840();

  sub_228392EB0();
  (*(v12 + 56))(v10, 1, 1, v11);
  v27 = [objc_opt_self() mainRunLoop];
  v51 = v27;
  v28 = sub_228392EA0();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  sub_22817A958(0, &qword_280DDB928, 0x277CBEB88);
  v40 = sub_228380B60(&qword_27D827528, MEMORY[0x277CC9DB0]);
  sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88);
  v29 = v38;
  v30 = v41;
  sub_228391A20();
  sub_228380BA8(v6, &qword_280DDB938, v47);
  sub_228380BA8(v29, &qword_27D8285D8, v46);
  (*(v12 + 8))(v15, v39);
  v31 = *(v42 + 8);
  v31(v20, v30);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228380B60(&qword_27D8285E8, sub_228380A60);
  v32 = v43;
  v33 = v37;
  sub_228391AC0();

  (*(v44 + 8))(v33, v32);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();

  v34 = [v45 defaultCenter];
  v35 = *MEMORY[0x277D76BA0];
  sub_228392840();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228391AC0();

  v31(v20, v30);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void sub_228369790()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_22838EF80();
    if (v2)
    {
      v3 = v2;
      v4 = *MEMORY[0x277D76BB8];
      sub_228392000();
      sub_228393160();
      if (*(v3 + 16) && (v5 = sub_2281A7758(v53), (v6 & 1) != 0))
      {
        sub_2281BC4A4(*(v3 + 56) + 32 * v5, &v54);
        sub_2281A995C(v53);

        if (*(&v55 + 1))
        {
          sub_22817A958(0, &qword_27D8285F0, 0x277CCAE60);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v7 = v53[0];
          [v53[0] CGRectValue];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v16 = v1;
          v17 = [v16 contentView];
          v18 = sub_2281E5880();

          if (!v18)
          {
            goto LABEL_20;
          }

          sub_22838EF70();
          if (v53[3])
          {
            sub_22817A958(0, &qword_27D8285F8, 0x277D759A0);
            if (swift_dynamicCast())
            {
              v19 = v54;
              v20 = [v16 navigationItem];
              sub_228382CF4(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
              v21 = swift_allocObject();
              *(v21 + 16) = xmmword_228396260;
              *(v21 + 32) = sub_2283631C8(&qword_27D824C30, &selRef_doneButtonTapped, 0);
              sub_22817A958(0, &qword_27D824138, 0x277D751E0);
              v22 = sub_228392190();

              [v20 setRightBarButtonItems:v22 animated:1];

              [v18 bounds];
              v24 = v23;
              v26 = v25;
              v28 = v27;
              v30 = v29;
              v31 = [v16 scrollView];
              [v18 convertRect:v31 toCoordinateSpace:{v24, v26, v28, v30}];
              v33 = v32;
              v35 = v34;
              v37 = v36;
              v39 = v38;

              v40 = [v19 coordinateSpace];
              v41 = [v16 scrollView];
              [v40 convertRect:v41 toCoordinateSpace:{v9, v11, v13, v15}];
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v49 = v48;
              swift_unknownObjectRelease();

              v56.origin.x = v43;
              v56.origin.y = v45;
              v56.size.width = v47;
              v56.size.height = v49;
              v60.origin.x = v33;
              v60.origin.y = v35;
              v60.size.width = v37;
              v60.size.height = v39;
              v57 = CGRectIntersection(v56, v60);
              v50 = CGRectGetHeight(v57) * 0.5;
              v51 = [v16 scrollView];

              v58.origin.x = v33;
              v58.origin.y = v35;
              v58.size.width = v37;
              v58.size.height = v39;
              v59 = CGRectOffset(v58, 0.0, v50);
              [v51 scrollRectToVisible:1 animated:{v59.origin.x, v59.origin.y, v59.size.width, v59.size.height}];

              return;
            }

LABEL_20:
            return;
          }

          v52 = v53;
          goto LABEL_14;
        }
      }

      else
      {

        sub_2281A995C(v53);
        v54 = 0u;
        v55 = 0u;
      }
    }

    else
    {

      v54 = 0u;
      v55 = 0u;
    }

    v52 = &v54;
LABEL_14:
    sub_2281AC998(v52);
  }
}

void sub_228369C28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_228363320();
  }
}

uint64_t sub_228369C7C(uint64_t a1)
{
  v3 = v1;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  sub_22836A018();
  sub_22836AB48();
  v12 = &v1[qword_27D824BF0];
  v13 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v14 = *(v13 + 28);
  v15 = v12[v14];
  if (v15 != 96 && (v15 & 0xE0) == 0x60)
  {
    v16 = *&v12[*(v13 + 64)];
    sub_228391870();
    v17 = sub_2283909E0();
    LODWORD(v16) = (*(*(v17 - 8) + 48))(v11, 1, v17);
    sub_228380BA8(v11, &qword_27D8238A8, MEMORY[0x277D11640]);
    if (v16 == 1)
    {
      v18 = sub_228390D50();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
      sub_228363508(v7);
      sub_228380BA8(v7, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }
  }

  if (MedicationOnboardingFlowManager.isAtFinalStep.getter())
  {
    v19 = *&v3[qword_27D824C28];
    if (v19)
    {
      v20 = qword_280DDCF18;
      v21 = v19;
      if (v20 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      v22 = sub_228391FC0();

      [v21 setTitle:v22 forState:0];
    }
  }

  if (sub_2282C1ED0(v12[v14], a1))
  {
    [v3 setShouldAdjustScrollViewInsetForKeyboard_];
  }

  v23 = v12[v14];
  if (v23 != 64 && (v23 & 0xE0) == 0x40)
  {
    [v3 setShouldAdjustButtonTrayForKeyboard_];
  }

  v24 = *&v3[qword_27D824BE8];
  v25 = *&v3[qword_27D824BE8 + 8];

  sub_22837028C();
}

void sub_22836A018()
{
  v1 = v0;
  v2 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.title.getter();
  if (v3)
  {
    v4 = v2[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)];
    if (v4 == 128 || (v4 & 0xE0) != 0x80)
    {
      v7 = [v1 navigationItem];
      sub_2283900F0();
      MedicationOnboardingFlowManager.subtitle.getter();
      v8 = [objc_opt_self() labelColor];
      v10 = sub_2283900E0();
      [v7 setTitleView_];
    }

    else
    {

      [v1 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen_];
      v5 = [v1 headerView];
      LODWORD(v6) = 1036831949;
      [v5 setTitleHyphenationFactor_];

      v7 = [v1 navigationItem];
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_22838F0C0();
      v10 = sub_228391FC0();

      [v7 setTitle_];
    }
  }
}

uint64_t MedicationOnboardingFlowManager.title.getter()
{
  v1 = v0;
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MedicationSearchItem.Source(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  sub_22837213C(&v26 - v13);
  v15 = type metadata accessor for MedicationSearchItem(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_228380BA8(v14, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    v16 = type metadata accessor for MedicationOnboardingFlowManager(0);
    v17 = *(v0 + *(v16 + 52));
    sub_228391870();
    if (v29)
    {
      return v28;
    }

    else
    {
      v24 = *(v1 + *(v16 + 40));
      sub_228391870();
      v25 = v27;
      if (v27)
      {
        v18 = sub_228392E30();
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_228380F74(v14, v10, type metadata accessor for MedicationSearchItem.Source);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      v18 = sub_228390B30();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v19 = *v10;
      sub_22818DE38();
      v21 = *(v20 + 48);
      v18 = sub_228392E30();

      v22 = sub_228390C30();
      (*(*(v22 - 8) + 8))(v10 + v21, v22);
    }

    sub_2283808C0(v14, type metadata accessor for MedicationSearchItem);
  }

  return v18;
}

uint64_t MedicationOnboardingFlowManager.subtitle.getter()
{
  v1 = sub_228390C30();
  v55 = *(v1 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormStepResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v18 = v0;
  v19 = *(v0 + v17[12]);
  sub_228391870();
  if ((*(v6 + 48))(v16, 1, v5))
  {
    sub_228380BA8(v16, &unk_27D827790, type metadata accessor for FormStepResult);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v55;
    sub_228380F74(v16, v12, type metadata accessor for FormStepResult);
    sub_228380BA8(v16, &unk_27D827790, type metadata accessor for FormStepResult);
    sub_228380F74(v12, v10, type metadata accessor for FormStepResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v10;
      v20 = sub_228392A60();
      v21 = v24;
    }

    else
    {
      (*(v22 + 32))(v4, v10, v1);
      v20 = sub_228390C00();
      v21 = v25;
      (*(v22 + 8))(v4, v1);
    }

    sub_2283808C0(v12, type metadata accessor for FormStepResult);
  }

  v26 = [objc_opt_self() medicationDoseEventType];
  v27 = sub_2283722D0();
  if ((v28 & 1) == 0 && (v29 = *&v27, v30 = *(v18 + v17[15]), sub_228391870(), (v31 = v56) != 0) && (v32 = [objc_opt_self() quantityWithUnit:v56 doubleValue:v29], v31, v32))
  {
    sub_22817A958(0, &qword_27D828580, 0x277D12A18);
    v33 = [v32 _unit];
    v34 = sub_228392A40();

    v35 = [v32 localizedStringForType:v26 parameters:v34];
    v36 = sub_228392000();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v57 = v20;
  v58[0] = v21;
  v39 = *(v18 + v17[10]);
  sub_228391870();
  v40 = v56;
  if (v56)
  {
    v36 = sub_228392E80();
    v42 = v41;

    v38 = v42;
  }

  v43 = 0;
  v58[1] = v36;
  v58[2] = v38;
  v44 = MEMORY[0x277D84F90];
LABEL_15:
  v45 = &v58[2 * v43];
  while (++v43 != 3)
  {
    v46 = v45 + 2;
    v47 = *v45;
    v45 += 2;
    if (v47)
    {
      v48 = *(v46 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_228198748(0, *(v44 + 2) + 1, 1, v44);
      }

      v50 = *(v44 + 2);
      v49 = *(v44 + 3);
      if (v50 >= v49 >> 1)
      {
        v44 = sub_228198748((v49 > 1), v50 + 1, 1, v44);
      }

      *(v44 + 2) = v50 + 1;
      v51 = &v44[16 * v50];
      *(v51 + 4) = v48;
      *(v51 + 5) = v47;
      goto LABEL_15;
    }
  }

  v52 = MEMORY[0x277D837D0];
  sub_228382CF4(0, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  v56 = v44;
  sub_228382CF4(0, &qword_27D827E10, v52, MEMORY[0x277D83940]);
  sub_2281BF13C();
  v53 = sub_228391F90();

  return v53;
}

void sub_22836AB48()
{
  v1 = &v0[qword_27D824BF0];
  v2 = v1[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)];
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 5)
    {
      if (v2 == 160)
      {
        return;
      }
    }

    else if (v3 == 4 || v2 == 96)
    {
      return;
    }
  }

  else
  {
    if (v3)
    {
      v4 = v3 == 1;
    }

    else
    {
      v4 = 0;
    }

    if (!v4 || (v2 & 1) == 0)
    {
      return;
    }
  }

  v5 = v0;
  if ((MedicationOnboardingFlowManager.isAtFinalStep.getter() & 1) == 0)
  {
    v6 = v0;
    v7 = [objc_opt_self() linkButton];
    [v7 addTarget:v5 action:sel_skipButtonTapped_ forControlEvents:64];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v8 = sub_228391FC0();

    [v7 setTitle:v8 forState:{0, 0xE000000000000000}];

    v12 = *&v5[qword_27D824BE8];
    v13 = *&v5[qword_27D824BE8 + 8];
    v9 = v7;

    MEMORY[0x22AAB5C80](0x74754270696B532ELL, 0xEB000000006E6F74);
    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    v11 = [v6 buttonTray];
    [v11 addButton_];
  }
}

uint64_t MedicationOnboardingFlowManager.isAtFinalStep.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D11640];
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_228371958();
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(v0 + *(v8 + 64));
  sub_228391870();
  v10 = sub_2283909E0();
  v11 = (*(*(v10 - 8) + 48))(v6, 1, v10) == 1;
  sub_228380BA8(v6, &qword_27D8238A8, v2);
  v12 = sub_228371B8C();
  v13 = _s19HealthMedicationsUI17SpecificationStepO10finalSteps16shouldDisplayDDI17skipVisualization0hI23ThirdPartyAuthorizationSayACGSb_S2btFZ_0(v7 & 1, v11, v12 & 1);
  v14 = sub_22837087C(*(v1 + *(v8 + 28)), v13);
  v16 = v15;
  v17 = *(v13 + 16);

  return (v14 == v17 - 1) & ~v16;
}

id MedicationOnboardingFlowManager.currentScheduleType.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 76));
  sub_228391870();
  if (!v4)
  {
    return 0;
  }

  v2 = [v4 scheduleType];

  return v2;
}

void sub_22836AFB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A64A0, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817DF4C;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_61;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836B2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A64B0, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_87;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836B5FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A64C0, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_113;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836B920()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A64E0, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_168;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836BC44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A64D0, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_139;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836BF68()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A64F0, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_195;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836C28C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A6500, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_221;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836C5B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A6510, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_247;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836C8D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A6520, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_2281E78BC;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_273;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836CBF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A6530, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_302;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void sub_22836CF1C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  v7 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v8)
  {
    sub_2283922B0();
    v14 = sub_2283922D0();
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    sub_2283922A0();
    v15 = v0;
    v16 = sub_228392290();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    v17[5] = ObjectType;
    sub_2281DC568(0, 0, v6, &unk_2283A6540, v17);

    return;
  }

  v9 = v8;
  v10 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v11 = *&v7[*(v10 + 76)];
  sub_228391870();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = v7[*(v10 + 28)];
    if (v13 >> 5 > 2 && v13 >> 5 == 3 && v13 == 96)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v1;
      *(v19 + 24) = v9;
      v20 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v21 = v1;
      v22 = v9;
      v9 = [v20 init];
      v23 = swift_allocObject();
      v23[2] = sub_228382DC4;
      v23[3] = v19;
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v21;
      v23[7] = ObjectType;
      aBlock[4] = sub_22817E1C0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_328;
      v24 = _Block_copy(aBlock);
      v25 = v21;

      [v9 checkIncompatibilityForSchedule:v12 completion:v24];
      _Block_release(v24);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v9 sender:v1];
LABEL_9:
}

void __swiftcall MedicationOnboardingFlowManager.makeNextViewControllerForStep()(UIViewController_optional *__return_ptr retstr)
{
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v1 + *(v8 + 28));
  sub_228373B04(&v19, &v20);
  v11 = v20;
  if (v20 <= 0xFDu)
  {
    v18 = v20;
    sub_2283743F4(&v18, v10);
    v12 = v11 >> 5;
    if (v11 >> 5 > 2)
    {
      if (v12 == 3)
      {
        if (v11 == 96)
        {
          sub_2283761D4(v10);
        }

        else
        {
          sub_22837213C(v5);
          v13 = *(v1 + *(v6 + 88));
          v14 = sub_228390840();
          v15 = objc_allocWithZone(type metadata accessor for ShapeStepViewController());
          v16 = sub_228181260(v5, v14);
          sub_22837C1D4(97, v10, v16);
        }
      }

      else if (v12 == 4)
      {
        if (v11 == 128)
        {
          sub_2283764D4(v10);
        }

        else
        {
          sub_2283767E4(v10);
        }
      }

      else if (v11 == 160)
      {
        sub_228376B64(v10);
      }

      else
      {
        sub_228376D88(v10);
      }
    }

    else if (v12)
    {
      if (v12 == 1)
      {
        sub_228375748(v10);
      }

      else if (v11 != 64)
      {
        sub_228374FD0(v10);
      }
    }

    else
    {
      sub_2283751CC(v10);
    }

    sub_2283808C0(v10, type metadata accessor for MedicationOnboardingFlowManager);
  }
}

uint64_t sub_22836D4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2283911B0();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_2283922A0();
  v5[8] = sub_228392290();
  v10 = sub_228392250();
  v5[9] = v10;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_22836D5A4, v10, v9);
}

uint64_t sub_22836D5A4()
{
  v1 = [*(v0 + 24) buttonTray];
  [v1 showButtonsBusy];

  *(v0 + 88) = sub_228390890();
  sub_228390880();
  sub_228390840();

  *(v0 + 96) = sub_228390660();

  *(v0 + 104) = qword_27D824BF0;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_22836D6B8;

  return sub_22836DF24();
}

uint64_t sub_22836D6B8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_228382D90;
  }

  else
  {
    v7 = sub_228382D94;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_22836D7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2283911B0();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_2283922A0();
  v5[8] = sub_228392290();
  v10 = sub_228392250();
  v5[9] = v10;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_22836D8E8, v10, v9);
}

uint64_t sub_22836D8E8()
{
  v1 = [*(v0 + 24) buttonTray];
  [v1 showButtonsBusy];

  *(v0 + 88) = sub_228390890();
  sub_228390880();
  sub_228390840();

  *(v0 + 96) = sub_228390660();

  *(v0 + 104) = qword_27D824BF0;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_22836D9FC;

  return sub_22836DF24();
}

uint64_t sub_22836D9FC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_22836DCB0;
  }

  else
  {
    v7 = sub_22836DB38;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_22836DB38()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[3];

  sub_22837053C();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v4 = sub_2283907E0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_228390700();
  if ((sub_228390750() & 1) == 0)
  {
    v7 = v0[3] + v0[13];
    v8 = *(v7 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 32));
    sub_228390760();
  }

  v9 = v0[12];
  v10 = v0[3];

  sub_228382948(v9);

  [v10 dismissViewControllerAnimated:1 completion:0];
  v11 = [v10 buttonTray];
  [v11 showButtonsAvailable];

  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22836DCB0()
{
  v29 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  sub_228391150();
  v5 = v1;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 48);
    v27 = *(v0 + 56);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136446722;
    v14 = sub_228393600();
    v16 = sub_2281C96FC(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_2281C96FC(0xD000000000000023, 0x80000002283AAC50, &v28);
    *(v12 + 22) = 2080;
    *(v0 + 16) = v8;
    v17 = v8;
    sub_22818217C(0, &qword_280DDB860);
    v18 = sub_228392020();
    v20 = sub_2281C96FC(v18, v19, &v28);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_22816B000, v6, v7, "[%{public}s.%{public}s]: Failed to save medication with %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);

    (*(v9 + 8))(v27, v10);
  }

  else
  {
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    v23 = *(v0 + 40);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 56);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22836DF24()
{
  v1[35] = v0;
  v2 = sub_2283911B0();
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v4 = *(v3 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22836E008, 0, 0);
}

uint64_t sub_22836E008()
{
  v1 = v0[35];
  v2 = *(v1 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 88));
  v3 = sub_228390820();
  v0[42] = v3;
  v0[43] = sub_228390840();
  v4 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  v0[44] = v4;
  v5 = v4;
  v6 = [v5 semanticIdentifier];
  v0[45] = [v6 healthConceptIdentifier];

  v7 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  sub_22837827C(v7);

  v8 = [v5 firstConceptIdentifier];
  v0[46] = v8;
  if (v8)
  {
    v9 = v8;
    v10 = [v5 propertyCollection];

    if (v10)
    {
      v11 = [v10 properties];

      if (!v11)
      {
        sub_22817A958(0, &qword_27D823928, 0x277CCDB20);
        sub_2283921A0();
        v11 = sub_228392190();
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v0 + 10;
    v0[47] = v11;
    v15 = [objc_opt_self() medicationUserDomainConceptTypeIdentifier];
    v0[48] = v15;
    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_22836E374;
    v16 = swift_continuation_init();
    sub_228380920(0, &qword_27D8285B0, &qword_27D824A30, 0x277CCDAF0, sub_22817A958);
    v0[33] = v17;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_228378AB0;
    v0[29] = &block_descriptor_23;
    v0[30] = v16;
    [v3 insertNewUserDomainConceptBackedByOntologyConceptWithIdentifier:v9 supplementaryProperties:v11 userDomainConceptTypeIdentifier:v15 completion:v0 + 26];
  }

  else
  {

    v12 = v0 + 2;
    v0[2] = v0;
    v0[3] = sub_22836EC28;
    v13 = swift_continuation_init();
    sub_2281E0600();
    v0[25] = v14;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_2282B4368;
    v0[21] = &block_descriptor_31;
    v0[22] = v13;
    [v3 saveOrUpdateUserDomainConcept:v5 completion:v0 + 18];
  }

  return MEMORY[0x282200938](v12);
}

uint64_t sub_22836E374()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_22836F420;
  }

  else
  {
    v3 = sub_22836E484;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22836E484()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[34];
  v0[50] = v3;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v0[51] = v4;

  if (v4)
  {
    v5 = v0[43];
    v6 = swift_task_alloc();
    v0[52] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[53] = v8;
    *v8 = v0;
    v8[1] = sub_22836E624;
    v9 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 521, 0, 0, 0xD00000000000001ELL, 0x80000002283B39E0, sub_228382DD8, v6, v9);
  }

  else
  {

    return sub_228393300();
  }
}

uint64_t sub_22836E624()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22836E73C, 0, 0);
}

uint64_t sub_22836E73C()
{
  v15 = v0;
  if ((*(v0 + 521) & 1) == 0)
  {
    v1 = *(v0 + 328);
    sub_228391190();
    v2 = sub_2283911A0();
    v3 = sub_2283925C0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 328);
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v14);
      _os_log_impl(&dword_22816B000, v2, v3, "[%s] Failed to add medication to active list", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAB7B80](v9, -1, -1);
      MEMORY[0x22AAB7B80](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);
  }

  v10 = swift_task_alloc();
  *(v0 + 432) = v10;
  *v10 = v0;
  v10[1] = sub_22836E8E4;
  v11 = *(v0 + 408);
  v12 = *(v0 + 280);

  return sub_228378B90(v11);
}

uint64_t sub_22836E8E4()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  v3[55] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22836F69C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[56] = v4;
    *v4 = v3;
    v4[1] = sub_22836EA58;
    v5 = v3[35];
    v6 = v3[45];

    return sub_228379368(v6);
  }
}

uint64_t sub_22836EA58()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_22836F90C;
  }

  else
  {
    v3 = sub_22836EB6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22836EB6C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(v0 + 336);

  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22836EC28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {
    v3 = sub_22836FB7C;
  }

  else
  {
    v3 = sub_22836ED38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22836ED38()
{
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *(v1 + 16) = *(v0 + 344);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 480) = v3;
  *v3 = v0;
  v3[1] = sub_22836EE34;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 520, 0, 0, 0xD00000000000001ELL, 0x80000002283B39E0, sub_228309460, v1, v4);
}

uint64_t sub_22836EE34()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22836EF4C, 0, 0);
}

uint64_t sub_22836EF4C()
{
  v15 = v0;
  if ((*(v0 + 520) & 1) == 0)
  {
    v1 = *(v0 + 320);
    sub_228391190();
    v2 = sub_2283911A0();
    v3 = sub_2283925C0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 320);
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v14);
      _os_log_impl(&dword_22816B000, v2, v3, "[%s] Failed to add medication to active list", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAB7B80](v9, -1, -1);
      MEMORY[0x22AAB7B80](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);
  }

  v10 = swift_task_alloc();
  *(v0 + 488) = v10;
  *v10 = v0;
  v10[1] = sub_22836F0F4;
  v11 = *(v0 + 352);
  v12 = *(v0 + 280);

  return sub_228378B90(v11);
}

uint64_t sub_22836F0F4()
{
  v2 = *(*v1 + 488);
  v3 = *v1;
  v3[62] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22836FDDC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[63] = v4;
    *v4 = v3;
    v4[1] = sub_22836F268;
    v5 = v3[35];
    v6 = v3[45];

    return sub_228379368(v6);
  }
}

uint64_t sub_22836F268()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_228370034;
  }

  else
  {
    v3 = sub_22836F37C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22836F37C()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);

  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22836F420()
{
  v33 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  swift_willThrow();

  v4 = *(v0 + 392);
  v5 = *(v0 + 312);
  sub_228391190();
  v6 = v4;
  v7 = sub_2283911A0();
  v8 = sub_2283925C0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v31 = *(v0 + 344);
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);
  v15 = *(v0 + 288);
  v14 = *(v0 + 296);
  if (v9)
  {
    v29 = *(v0 + 352);
    v30 = *(v0 + 312);
    v16 = swift_slowAlloc();
    v27 = v12;
    v17 = swift_slowAlloc();
    v28 = v15;
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v32);
    *(v16 + 12) = 2112;
    v19 = v4;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&dword_22816B000, v7, v8, "[%s] Failed to save ontology-backed medication with error: '%@'", v16, 0x16u);
    sub_228193354(v17);
    MEMORY[0x22AAB7B80](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAB7B80](v18, -1, -1);
    MEMORY[0x22AAB7B80](v16, -1, -1);

    (*(v14 + 8))(v30, v28);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = *(v0 + 320);
  v21 = *(v0 + 328);
  v24 = *(v0 + 304);
  v23 = *(v0 + 312);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22836F69C()
{
  v30 = v0;

  v1 = *(v0 + 440);
  v2 = *(v0 + 312);
  sub_228391190();
  v3 = v1;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v28 = *(v0 + 344);
  v9 = *(v0 + 336);
  v10 = *(v0 + 312);
  v12 = *(v0 + 288);
  v11 = *(v0 + 296);
  if (v6)
  {
    v26 = *(v0 + 352);
    v27 = *(v0 + 312);
    v13 = swift_slowAlloc();
    v24 = v9;
    v14 = swift_slowAlloc();
    v25 = v12;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v29);
    *(v13 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] Failed to save ontology-backed medication with error: '%@'", v13, 0x16u);
    sub_228193354(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v11 + 8))(v27, v25);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22836F90C()
{
  v30 = v0;

  v1 = *(v0 + 456);
  v2 = *(v0 + 312);
  sub_228391190();
  v3 = v1;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v28 = *(v0 + 344);
  v9 = *(v0 + 336);
  v10 = *(v0 + 312);
  v12 = *(v0 + 288);
  v11 = *(v0 + 296);
  if (v6)
  {
    v26 = *(v0 + 352);
    v27 = *(v0 + 312);
    v13 = swift_slowAlloc();
    v24 = v9;
    v14 = swift_slowAlloc();
    v25 = v12;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v29);
    *(v13 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] Failed to save ontology-backed medication with error: '%@'", v13, 0x16u);
    sub_228193354(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v11 + 8))(v27, v25);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22836FB7C()
{
  v30 = v0;
  v1 = *(v0 + 464);
  swift_willThrow();
  v2 = *(v0 + 464);
  v3 = *(v0 + 304);
  sub_228391190();
  v4 = v2;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 360);
  v10 = *(v0 + 336);
  v9 = *(v0 + 344);
  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 288);
  if (v7)
  {
    v27 = *(v0 + 352);
    v28 = *(v0 + 304);
    v14 = swift_slowAlloc();
    v25 = v10;
    v15 = swift_slowAlloc();
    v26 = v13;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v29);
    *(v14 + 12) = 2112;
    v17 = v2;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_22816B000, v5, v6, "[%s] Failed to save manual medication with error: '%@'", v14, 0x16u);
    sub_228193354(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAB7B80](v16, -1, -1);
    MEMORY[0x22AAB7B80](v14, -1, -1);

    (*(v11 + 8))(v28, v26);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v20 = *(v0 + 320);
  v19 = *(v0 + 328);
  v22 = *(v0 + 304);
  v21 = *(v0 + 312);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22836FDDC()
{
  v29 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 304);
  sub_228391190();
  v3 = v1;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 288);
  if (v6)
  {
    v26 = *(v0 + 352);
    v27 = *(v0 + 304);
    v13 = swift_slowAlloc();
    v24 = v9;
    v14 = swift_slowAlloc();
    v25 = v12;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v28);
    *(v13 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] Failed to save manual medication with error: '%@'", v13, 0x16u);
    sub_228193354(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v10 + 8))(v27, v25);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_228370034()
{
  v29 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 304);
  sub_228391190();
  v3 = v1;
  v4 = sub_2283911A0();
  v5 = sub_2283925C0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 288);
  if (v6)
  {
    v26 = *(v0 + 352);
    v27 = *(v0 + 304);
    v13 = swift_slowAlloc();
    v24 = v9;
    v14 = swift_slowAlloc();
    v25 = v12;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v28);
    *(v13 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22816B000, v4, v5, "[%s] Failed to save manual medication with error: '%@'", v13, 0x16u);
    sub_228193354(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAB7B80](v15, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    (*(v10 + 8))(v27, v25);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v19 = *(v0 + 320);
  v18 = *(v0 + 328);
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);

  v22 = *(v0 + 8);

  return v22();
}

void sub_22837028C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 rightBarButtonItem];

  if (v3)
  {

    MEMORY[0x22AAB5C80](0x614274686769522ELL, 0xEF6E6F7474754272);
    v4 = sub_228391FC0();

    [v3 setAccessibilityIdentifier_];
  }

  v5 = [v1 navigationItem];
  v6 = [v5 backBarButtonItem];

  if (v6)
  {

    MEMORY[0x22AAB5C80](0x7261426B6361422ELL, 0xEE006E6F74747542);
    v7 = sub_228391FC0();

    [v6 setAccessibilityIdentifier_];
  }

  v8 = [v1 navigationItem];
  v9 = [v8 leftBarButtonItem];

  if (v9)
  {

    MEMORY[0x22AAB5C80](0x7261427466654C2ELL, 0xEE006E6F74747542);
    v10 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];
  }

  v11 = [v1 editButtonItem];

  MEMORY[0x22AAB5C80](0x747542746964452ELL, 0xEB000000006E6F74);
  v12 = sub_228391FC0();

  [v11 setAccessibilityIdentifier_];
}

void sub_22837053C()
{
  swift_getObjectType();
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v5 = sub_2283911A0();
  v6 = sub_2283925A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136446210;
    v9 = sub_228393600();
    v11 = sub_2281C96FC(v9, v10, v26);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22816B000, v5, v6, "[%{public}s]: Submitting Tips Discoverability Signal", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAB7B80](v8, -1, -1);
    MEMORY[0x22AAB7B80](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v12 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v13 = [v12 Signals];
  swift_unknownObjectRelease();
  v14 = [v13 source];
  v15 = *MEMORY[0x277CCE3A8];
  v16 = sub_228391FC0();
  v17 = MGGetStringAnswer();
  if (v17)
  {
    v18 = v17;
    v19 = sub_228392000();
    v21 = v20;

    v26[0] = 760434537;
    v26[1] = 0xE400000000000000;
    MEMORY[0x22AAB5C80](v19, v21);

    v22 = objc_allocWithZone(MEMORY[0x277CF1168]);
    v23 = sub_228391FC0();
    v24 = sub_228391FC0();

    v25 = [v22 initWithContentIdentifier:v23 context:v15 osBuild:v24 userInfo:0];

    [v14 sendEvent_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22837087C(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    for (result = 0; v2 != result; ++result)
    {
      v5 = *(a2 + 32 + result);
      v6 = v5 >> 5;
      if (v5 >> 5 > 2)
      {
        if (v6 == 3)
        {
          if (v5 == 96)
          {
            if (a1 == 96)
            {
              return result;
            }
          }

          else if (a1 == 97)
          {
            return result;
          }
        }

        else if (v6 == 4)
        {
          if (v5 == 128)
          {
            if (a1 == 128)
            {
              return result;
            }
          }

          else if (a1 == 129)
          {
            return result;
          }
        }

        else if (v5 == 160)
        {
          if (a1 == 160)
          {
            return result;
          }
        }

        else if (a1 == 161)
        {
          return result;
        }
      }

      else
      {
        if (!v6)
        {
          if (a1 > 0x1Fu)
          {
            continue;
          }

          goto LABEL_16;
        }

        if (v6 == 1)
        {
          if ((a1 & 0xE0) != 0x20)
          {
            continue;
          }

LABEL_16:
          if (((v5 ^ a1) & 1) == 0)
          {
            return result;
          }

          continue;
        }

        if (v5 == 64)
        {
          if (a1 == 64)
          {
            return result;
          }
        }

        else if (a1 == 65)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t MedicationOnboardingFlowManager.init(entryMode:currentStep:didShowLifeStyleFactors:sourcesWithExistingAuthorizationsPublisher:analyticsContext:analyticsEntryMode:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v106 = a5;
  v107 = a6;
  v105 = a4;
  v108 = a3;
  v103 = a1;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v100 = *(v9 - 1);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v9);
  v101 = v11;
  v102 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = &v99 - v14;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v99 - v17;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v99 - v21;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v99 - v25;
  v27 = MEMORY[0x277CC95F0];
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v99 - v30;
  v104 = *a2;
  v32 = v9[9];
  v33 = sub_22838F4A0();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  sub_228380330(0, &qword_27D8277A0, &qword_27D827160, v27);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *(a7 + v32) = sub_228391890();
  v37 = v9[10];
  *&v109 = 0;
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(a7 + v37) = sub_228391890();
  v41 = v9[11];
  LOBYTE(v109) = 0;
  sub_228380CDC(0, &qword_27D8277C0, MEMORY[0x277CBCE30]);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *(a7 + v41) = sub_228391890();
  v45 = v9[12];
  v46 = type metadata accessor for FormStepResult();
  (*(*(v46 - 8) + 56))(v26, 1, 1, v46);
  sub_228212A9C();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *(a7 + v45) = sub_228391890();
  v50 = v9[13];
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v52 = v51;
  v109 = 0uLL;
  v53 = *(v51 + 48);
  v54 = *(v51 + 52);
  swift_allocObject();
  *(a7 + v50) = sub_228391890();
  v55 = v9[14];
  v109 = 0uLL;
  v56 = *(v52 + 48);
  v57 = *(v52 + 52);
  swift_allocObject();

  *(a7 + v55) = sub_228391890();
  v58 = v103;
  v59 = v9[15];
  *&v109 = 0;
  sub_2283802B0(0, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  *(a7 + v59) = sub_228391890();
  v63 = v9[16];
  v64 = sub_2283909E0();
  (*(*(v64 - 8) + 56))(v22, 1, 1, v64);
  sub_228181EDC();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  *(a7 + v63) = sub_228391890();
  v68 = v9[17];
  v69 = sub_228390D50();
  (*(*(v69 - 8) + 56))(v18, 1, 1, v69);
  sub_2281E4AF0();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  v73 = v105;
  *(a7 + v68) = sub_228391890();
  v74 = v9[18];
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v109 = 0u;
  v110 = 0u;
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  *(a7 + v74) = sub_228391890();
  v78 = v9[19];
  *&v109 = 0;
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  *(a7 + v78) = sub_228391890();
  v82 = v9[21];
  *&v109 = 0;
  sub_22829C0BC();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(a7 + v82) = sub_228391890();
  v86 = v9[22];
  sub_228390890();
  *(a7 + v86) = sub_228390880();
  sub_228380F74(v58, a7, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  *(a7 + v9[7]) = v104;
  *(a7 + v9[5]) = v106;

  v87 = v107;
  sub_228390DF0();

  *(a7 + v9[6]) = v87;
  *(a7 + v9[8]) = v108 & 1;
  *&v109 = sub_228371268();
  *(&v109 + 1) = v88;
  sub_228391850();

  if (v73)
  {
    *(a7 + v9[20]) = v73;
  }

  else
  {
    *&v109 = 0;
    sub_2283803B8();
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();
    *(a7 + v9[20]) = sub_228391890();
  }

  sub_228391870();
  if (v109)
  {
  }

  else
  {
    v92 = sub_2283922D0();
    v93 = v99;
    (*(*(v92 - 8) + 56))(v99, 1, 1, v92);
    v94 = a7;
    v95 = v102;
    sub_228380F74(v94, v102, type metadata accessor for MedicationOnboardingFlowManager);
    v96 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    *(v97 + 24) = 0;
    sub_228381EB4(v95, v97 + v96, type metadata accessor for MedicationOnboardingFlowManager);
    sub_2281DC568(0, 0, v93, &unk_2283A3060, v97);
  }

  return sub_2283808C0(v58, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
}

uint64_t sub_228371268()
{
  v1 = v0;
  v2 = sub_228390B70();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MedicationSearchItem.Source(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v43 - v11);
  v13 = type metadata accessor for MedicationSearchItem(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228380F74(v1, v23, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = *v23;
      sub_2282FEBEC();
      v30 = *(v29 + 48);
      v26 = sub_228392E90();

      v31 = sub_22838F4A0();
      (*(*(v31 - 8) + 8))(v23 + v30, v31);
    }

    else
    {
      v26 = *v23;
      v33 = v23[1];
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_228381EB4(v23, v17, type metadata accessor for MedicationSearchItem);
      sub_228380F74(v17, v10, type metadata accessor for MedicationSearchItem.Source);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v38 = *v10;
        sub_22818DE38();
        v40 = *(v39 + 48);
        v26 = sub_228392E30();

        sub_2283808C0(v17, type metadata accessor for MedicationSearchItem);
        v41 = sub_228390C30();
        (*(*(v41 - 8) + 8))(v10 + v40, v41);
        return v26;
      }

      v32 = v44;
      (*(v44 + 32))(v5, v10, v2);
      v26 = sub_228390B30();
      (*(v32 + 8))(v5, v2);
      v27 = v17;
    }

    else
    {
      sub_228381EB4(v23, v19, type metadata accessor for MedicationSearchItem);
      sub_228380F74(v19, v12, type metadata accessor for MedicationSearchItem.Source);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v34 = *v12;
        sub_22818DE38();
        v36 = *(v35 + 48);
        v26 = sub_228392E30();

        sub_2283808C0(v19, type metadata accessor for MedicationSearchItem);
        v37 = sub_228390C30();
        (*(*(v37 - 8) + 8))(v12 + v36, v37);
        return v26;
      }

      v25 = v44;
      (*(v44 + 32))(v5, v12, v2);
      v26 = sub_228390B30();
      (*(v25 + 8))(v5, v2);
      v27 = v19;
    }

    sub_2283808C0(v27, type metadata accessor for MedicationSearchItem);
  }

  return v26;
}

uint64_t MedicationOnboardingFlowManager.analyticsContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 20));
}

uint64_t MedicationOnboardingFlowManager.analyticsContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MedicationOnboardingFlowManager(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MedicationOnboardingFlowManager.analyticsEntryMode.setter(uint64_t a1)
{
  result = type metadata accessor for MedicationOnboardingFlowManager(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t MedicationOnboardingFlowManager.currentStep.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MedicationOnboardingFlowManager(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MedicationOnboardingFlowManager.conceptPublisher.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 40));
}

uint64_t MedicationOnboardingFlowManager.proceededManuallyPublisher.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 44));
}

uint64_t sub_228371958()
{
  v1 = v0;
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v2 = sub_2283907E0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_228390700();
  sub_228382CF4(0, &qword_27D8286E8, MEMORY[0x277D839B0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = sub_228390770() & 1;
  *(inited + 33) = sub_2283907C0() & 1;
  v6 = sub_228390790();
  *(inited + 34) = v6 & 1;
  if (*(inited + 32))
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(inited + 33) | v6) ^ 1;
  }

  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(v0 + *(v8 + 88));
  sub_228390840();
  v10 = sub_228390660();

  if (v10 >> 62)
  {
    v11 = sub_2283930D0();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ([objc_opt_self() supportsOntologyBackedMedications] && (v12 = *(v1 + *(v8 + 40)), sub_228391870(), v16))
  {

    if ((v7 & 1) != 0 && (sub_228390750() & 1) == 0)
    {

      v14 = 1;
    }

    else
    {
      v13 = sub_2283907B0();

      v14 = v13 | (v11 == 0);
    }
  }

  else
  {

    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_228371B8C()
{
  v54 = *MEMORY[0x277D85DE8];
  if (!*(v0 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 80)) || (sub_228391870(), (v1 = v53) == 0))
  {
    result = 0;
    goto LABEL_53;
  }

  v50 = v53;
  if ((v53 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x277D84FA0];
    v53 = MEMORY[0x277D84FA0];

    v3 = sub_228393080();
    v4 = sub_228393100();
    if (v4)
    {
      v5 = v4;
      sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
      v6 = v5;
      do
      {
        v51 = v6;
        swift_dynamicCast();
        if (![v52 _isApplication])
        {
          goto LABEL_15;
        }

        v14 = [objc_opt_self() defaultWorkspace];
        if (!v14)
        {
          __break(1u);
        }

        v15 = v14;
        v16 = [v52 bundleIdentifier];
        if (!v16)
        {
          sub_228392000();
          v16 = sub_228391FC0();
        }

        v17 = [v15 applicationIsInstalled_];

        if ((v17 & 1) == 0)
        {
        }

        else
        {
LABEL_15:
          v1 = v52;
          v18 = v2[2];
          if (v2[3] <= v18)
          {
            sub_2282D6DFC(v18 + 1);
          }

          v2 = v53;
          v7 = *(v53 + 40);
          v8 = sub_228392C50();
          v9 = v53 + 56;
          v10 = -1 << *(v53 + 32);
          v11 = v8 & ~v10;
          v12 = v11 >> 6;
          if (((-1 << v11) & ~*(v53 + 56 + 8 * (v11 >> 6))) != 0)
          {
            v13 = __clz(__rbit64((-1 << v11) & ~*(v53 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v19 = 0;
            v20 = (63 - v10) >> 6;
            do
            {
              if (++v12 == v20 && (v19 & 1) != 0)
              {
                __break(1u);
                goto LABEL_54;
              }

              v21 = v12 == v20;
              if (v12 == v20)
              {
                v12 = 0;
              }

              v19 |= v21;
              v22 = *(v9 + 8 * v12);
            }

            while (v22 == -1);
            v13 = __clz(__rbit64(~v22)) + (v12 << 6);
          }

          *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          *(v2[6] + 8 * v13) = v1;
          ++v2[2];
        }

        v6 = sub_228393100();
      }

      while (v6);
    }

    goto LABEL_49;
  }

  v24 = *(v53 + 32);
  v25 = v24 & 0x3F;
  v48 = ((1 << v24) + 63) >> 6;
  v3 = 8 * v48;

  if (v25 > 0xD)
  {
    goto LABEL_55;
  }

  while (2)
  {
    v47[1] = v47;
    MEMORY[0x28223BE20](v26);
    v27 = v47 - ((v3 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v3);
    v49 = 0;
    v28 = 0;
    v29 = v1 + 56;
    v30 = 1 << v1[32];
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v1 + 7);
    v33 = (v30 + 63) >> 6;
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_40:
      v3 = v35 | (v28 << 6);
      v38 = *(*(v1 + 6) + 8 * v3);
      if ([v38 _isApplication])
      {
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v39 = result;
        v40 = [v38 bundleIdentifier];
        if (!v40)
        {
          sub_228392000();
          v40 = sub_228391FC0();
        }

        v34 = [v39 applicationIsInstalled_];

        v1 = v50;
        if (v34)
        {
          goto LABEL_45;
        }
      }

      else
      {

LABEL_45:
        *&v27[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
LABEL_48:
          v2 = sub_22827A9C0(v27, v48, v49, v1);
          goto LABEL_49;
        }
      }
    }

    v36 = v28;
    while (1)
    {
      v28 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v28 >= v33)
      {
        goto LABEL_48;
      }

      v37 = *&v29[8 * v28];
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v32 = (v37 - 1) & v37;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v46 = swift_slowAlloc();
  v2 = sub_22837F4E4(v46, v48, v1, sub_22837F6B4, 0);

  MEMORY[0x22AAB7B80](v46, -1, -1);
LABEL_49:
  sub_22837EFF8(v2);
  v43 = v42;

  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = sub_2283930D0();
  }

  else
  {
    v44 = *(v43 + 16);
  }

  result = v44 != 0;
LABEL_53:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22837213C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228380F74(v2, v7, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_2282FEBEC();
      v11 = *(v10 + 48);
      v12 = sub_22838F4A0();
      (*(*(v12 - 8) + 8))(v7 + v11, v12);
LABEL_7:
      v9 = 1;
      goto LABEL_8;
    }

LABEL_6:
    sub_2283808C0(v7, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  sub_228381EB4(v7, a1, type metadata accessor for MedicationSearchItem);
  v9 = 0;
LABEL_8:
  v13 = type metadata accessor for MedicationSearchItem(0);
  return (*(*(v13 - 8) + 56))(a1, v9, 1, v13);
}

uint64_t sub_2283722D0()
{
  v1 = sub_22838F580();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 56));
  sub_228391870();
  if (v14[1])
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    sub_22838F500();
    v8 = sub_22838F4F0();
    (*(v2 + 8))(v5, v1);
    [v7 setLocale_];

    v9 = sub_228391FC0();
    v10 = [v7 numberFromString_];

    if (v10)
    {
      [v10 doubleValue];
      v12 = v11;

      return v12;
    }
  }

  return 0;
}

id MedicationOnboardingFlowManager.currentMedicationUDC.getter()
{
  v1 = v0;
  v2 = sub_228390D50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  sub_228380F74(v1, v14, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2283808C0(v14, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      goto LABEL_9;
    }

    sub_2282FEBEC();
    v18 = *(v17 + 48);
    v19 = sub_22838F4A0();
    (*(*(v19 - 8) + 8))(v14 + v18, v19);
  }

  else
  {
    sub_2283808C0(v14, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  }

  v20 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v21 = *(v1 + v20[10]);
  sub_228391870();
  v22 = v51;
  if (v51)
  {
    v45 = v6;
    v50 = v3;
    v23 = objc_opt_self();
    v49 = v22;
    v24 = [v22 identifier];
    v48 = [v23 appleOntologyCodingWithIdentifier_];

    v25 = *(v1 + v20[18]);
    sub_228391870();
    v26 = v51;
    v27 = v52;
    if (v52 == 1)
    {
      v47 = 0;
      v28 = 0;
    }

    else
    {

      v47 = v26;
      v28 = v27;
    }

    sub_228294FEC(v26, v27);
    sub_228391870();
    v30 = v52;
    v31 = v53;
    v32 = v54;
    if (v52 == 1)
    {
      v46 = 0;
      v33 = 0;
    }

    else
    {

      v46 = v31;
      v33 = v32;
    }

    sub_228294FEC(v51, v30);
    v34 = *(v1 + v20[17]);
    sub_228391870();
    v35 = v50;
    if ((*(v50 + 48))(v10, 1, v2))
    {
      sub_228380BA8(v10, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v36 = 0;
      if (v28)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v40 = v45;
      (*(v35 + 16))(v45, v10, v2);
      sub_228380BA8(v10, &qword_280DDBD20, MEMORY[0x277D116C8]);
      sub_228390CF0();
      v36 = v41;
      (*(v35 + 8))(v40, v2);
      if (v28)
      {
LABEL_16:
        v37 = sub_228391FC0();

        if (v33)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }
    }

    v37 = 0;
    if (v33)
    {
LABEL_17:
      v38 = sub_228391FC0();

      if (v36)
      {
LABEL_18:
        v39 = sub_228391FC0();

LABEL_23:
        v42 = objc_allocWithZone(MEMORY[0x277D115B8]);
        v43 = v48;
        v29 = [v42 initWithOntologyCoding:v48 userSpecifiedName:v37 userSpecifiedNotes:v38 medicationVisualizationConfig:v39 freeTextProperties:0];

        return v29;
      }

LABEL_22:
      v39 = 0;
      goto LABEL_23;
    }

LABEL_21:
    v38 = 0;
    if (v36)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

LABEL_9:
  v29 = sub_228372994(v15, v1);

  return v29;
}

id sub_228372994(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = sub_228372A14(a2);
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

uint64_t sub_228372A14(uint64_t a1)
{
  v2 = sub_228390D50();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - v8;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v49 - v12);
  v14 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v15 = *(a1 + v14[15]);
  sub_228391870();
  v16 = v57;
  if (!v57)
  {
    goto LABEL_4;
  }

  v17 = sub_2283722D0();
  if (v18)
  {

LABEL_4:
    v19 = 0;
    goto LABEL_6;
  }

  v20 = [objc_opt_self() quantityWithUnit:v16 doubleValue:*&v17];

  v19 = v20;
LABEL_6:
  v21 = *(a1 + v14[13]);
  sub_228391870();
  if (v58)
  {
    v54 = v57;
    v22 = *(a1 + v14[12]);
    sub_228391870();
    v23 = type metadata accessor for FormStepResult();
    if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
    {
      sub_228380BA8(v13, &unk_27D827790, type metadata accessor for FormStepResult);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = v5;
        v53 = *v13;
        v24 = *(a1 + v14[18]);
        sub_228391870();
        v25 = v57;
        v26 = v58;
        if (v58 == 1)
        {
          v52 = 0;
          v27 = 0;
        }

        else
        {

          v52 = v25;
          v27 = v26;
        }

        sub_228294FEC(v25, v26);
        sub_228391870();
        v28 = v58;
        v29 = v59;
        v30 = v60;
        if (v58 == 1)
        {
          v51 = 0;
          v31 = 0;
        }

        else
        {

          v51 = v29;
          v31 = v30;
        }

        sub_228294FEC(v57, v28);
        v32 = *(a1 + v14[17]);
        sub_228391870();
        v34 = v55;
        v33 = v56;
        if ((*(v55 + 48))(v9, 1, v56))
        {
          sub_228380BA8(v9, &qword_280DDBD20, MEMORY[0x277D116C8]);
          v35 = 0;
        }

        else
        {
          v36 = v50;
          (*(v34 + 16))(v50, v9, v33);
          sub_228380BA8(v9, &qword_280DDBD20, MEMORY[0x277D116C8]);
          sub_228390CF0();
          v35 = v37;
          (*(v34 + 8))(v36, v33);
        }

        v38 = v19;
        v39 = objc_opt_self();
        v40 = sub_228391FC0();

        v41 = [v39 userDomainConceptPropertyListWithFreeTextMedicationName:v40 freeTextFormCode:v53 freeTextStrengthQuantity:v38];

        sub_22817A958(0, &qword_27D823928, 0x277CCDB20);
        sub_2283921A0();

        if (v27)
        {
          v42 = sub_228391FC0();

          if (v31)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v42 = 0;
          if (v31)
          {
LABEL_20:
            v43 = sub_228391FC0();

            if (v35)
            {
LABEL_21:
              v44 = sub_228391FC0();

LABEL_25:
              v45 = objc_allocWithZone(MEMORY[0x277D115B8]);
              v46 = sub_228392190();

              v47 = [v45 initWithOntologyCoding:0 userSpecifiedName:v42 userSpecifiedNotes:v43 medicationVisualizationConfig:v44 freeTextProperties:v46];

              return v47;
            }

LABEL_24:
            v44 = 0;
            goto LABEL_25;
          }
        }

        v43 = 0;
        if (v35)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      sub_2283808C0(v13, type metadata accessor for FormStepResult);
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

id static MedicationOnboardingFlowManager.makeInitialOnboardingViewController(manualEntryText:analyticsContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = a1;
  v113 = a2;
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v108 - v6;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v115 = &v108 - v9;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v108 - v12;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v108 - v15;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v108 - v19;
  v21 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v109 = *(v25 - 1);
  v26 = *(v109 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v110 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v108 - v29;
  MEMORY[0x28223BE20](v28);
  v116 = &v108 - v31;
  v117 = sub_228390890();
  sub_228390880();
  sub_228390830();

  v32 = sub_228390D90();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  v35 = sub_228390D80();
  sub_228390E70();
  sub_228390E60();
  if ([objc_opt_self() supportsOntologyBackedMedications])
  {
    sub_228390880();
    v36 = sub_228390830();

    sub_228390880();
    v37 = sub_228390840();

    v38 = objc_allocWithZone(type metadata accessor for NewMedicationOnboardingViewController());

    v39 = NewMedicationOnboardingViewController.init(healthStore:listManager:analyticsContext:)(v36, v37, a3);
LABEL_7:

    return v39;
  }

  v108 = v35;
  v40 = v112;
  v112 = a3;
  v41 = v113;
  *v24 = v40;
  v24[1] = v41;
  swift_storeEnumTagMultiPayload();
  v42 = v25[9];
  v43 = sub_22838F4A0();
  (*(*(v43 - 8) + 56))(v20, 1, 1, v43);
  sub_228380330(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();

  *&v30[v42] = sub_228391890();
  v47 = v25[10];
  *&v118 = 0;
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *&v30[v47] = sub_228391890();
  v51 = v25[11];
  LOBYTE(v118) = 0;
  sub_228380CDC(0, &qword_27D8277C0, MEMORY[0x277CBCE30]);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  *&v30[v51] = sub_228391890();
  v55 = v25[12];
  v56 = type metadata accessor for FormStepResult();
  (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
  sub_228212A9C();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  *&v30[v55] = sub_228391890();
  v60 = v25[13];
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v62 = v61;
  v118 = 0uLL;
  v63 = *(v61 + 48);
  v64 = *(v61 + 52);
  swift_allocObject();
  *&v30[v60] = sub_228391890();
  v65 = v25[14];
  v118 = 0uLL;
  v66 = *(v62 + 48);
  v67 = *(v62 + 52);
  swift_allocObject();

  *&v30[v65] = sub_228391890();
  v68 = v25[15];
  *&v118 = 0;
  sub_2283802B0(0, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  *&v30[v68] = sub_228391890();
  v72 = v25[16];
  v73 = sub_2283909E0();
  (*(*(v73 - 8) + 56))(v114, 1, 1, v73);
  sub_228181EDC();
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  *&v30[v72] = sub_228391890();
  v77 = v25[17];
  v78 = sub_228390D50();
  (*(*(v78 - 8) + 56))(v115, 1, 1, v78);
  sub_2281E4AF0();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  *&v30[v77] = sub_228391890();
  v82 = v25[18];
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v118 = 0u;
  v119 = 0u;
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *&v30[v82] = sub_228391890();
  v86 = v25[19];
  *&v118 = 0;
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  *&v30[v86] = sub_228391890();
  v90 = v25[21];
  *&v118 = 0;
  sub_22829C0BC();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  *&v30[v90] = sub_228391890();
  v94 = v25[22];
  *&v30[v94] = sub_228390880();
  sub_228380F74(v24, v30, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v30[v25[7]] = 64;
  *&v30[v25[5]] = v112;

  sub_228390DF0();
  *&v30[v25[6]] = 1;
  v30[v25[8]] = 0;
  *&v118 = sub_228371268();
  *(&v118 + 1) = v95;
  sub_228391850();

  *&v118 = 0;
  sub_2283803B8();
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  *&v30[v25[20]] = sub_228391890();
  sub_228391870();
  if (v118)
  {
  }

  else
  {
    v99 = sub_2283922D0();
    v100 = v111;
    (*(*(v99 - 8) + 56))(v111, 1, 1, v99);
    v101 = v110;
    sub_228380F74(v30, v110, type metadata accessor for MedicationOnboardingFlowManager);
    v102 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = 0;
    *(v103 + 24) = 0;
    sub_228381EB4(v101, v103 + v102, type metadata accessor for MedicationOnboardingFlowManager);
    sub_2281DC568(0, 0, v100, &unk_2283A63D0, v103);
  }

  sub_2283808C0(v24, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v104 = v116;
  sub_228381EB4(v30, v116, type metadata accessor for MedicationOnboardingFlowManager);
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(v105);
  v39 = v106;
  sub_2283808C0(v104, type metadata accessor for MedicationOnboardingFlowManager);
  result = v108;
  if (v39)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_228373B04@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v78 - v7;
  v8 = sub_22838F4A0();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v84 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D8264E8, MEMORY[0x277D116A0]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v80 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v78 - v15;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v81 = &v78 - v18;
  v19 = type metadata accessor for MedicationSearchItem(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v83 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x277D11640];
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v78 - v29;
  v31 = *a1;
  v32 = sub_228371958();
  v87 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v33 = *(v3 + v87[16]);
  sub_228391870();
  v34 = sub_2283909E0();
  v35 = (*(*(v34 - 8) + 48))(v30, 1, v34) == 1;
  sub_228380BA8(v30, &qword_27D8238A8, v26);
  v36 = sub_228371B8C();
  result = _s19HealthMedicationsUI17SpecificationStepO10finalSteps16shouldDisplayDDI17skipVisualization0hI23ThirdPartyAuthorizationSayACGSb_S2btFZ_0(v32 & 1, v35, v36 & 1);
  v38 = *(result + 16);
  if (v38)
  {
    v39 = result;
    v40 = v31 >> 5;
    if (v31 >> 5 > 2)
    {
      if (v40 == 3)
      {
        v42 = v31 == 96;
        v41 = 4;
      }

      else if (v40 == 4)
      {
        v42 = v31 == 128;
        v41 = 6;
      }

      else
      {
        v42 = v31 == 160;
        v41 = 8;
      }

      if (!v42)
      {
        ++v41;
      }
    }

    else if (v40)
    {
      if (v40 == 1)
      {
        v41 = 3;
      }

      else
      {
        v41 = v31 != 64;
      }
    }

    else
    {
      v41 = 2;
    }

    v43 = *(result + 32);
    v44 = v43 >> 5;
    if (v43 >> 5 > 2)
    {
      if (v44 == 3)
      {
        v42 = v43 == 96;
        v62 = 4;
        if (!v42)
        {
          v62 = 5;
        }

        if (v41 >= v62)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v45 = 6;
        if (v43 != 128)
        {
          v45 = 7;
        }

        v42 = v43 == 160;
        v46 = 8;
        if (!v42)
        {
          v46 = 9;
        }

        if (v44 == 4)
        {
          v46 = v45;
        }

        if (v41 >= v46)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v44)
    {
      if (v44 == 1)
      {
        if (v41 >= 3)
        {
          goto LABEL_34;
        }
      }

      else if (v41 >= (v43 != 64))
      {
LABEL_34:
        result = sub_22837087C(v31, result);
        if ((v59 & 1) == 0 && result < (v38 - 1))
        {
          if (result + 1 < v38)
          {
            v60 = *(v39 + 32 + result + 1);
LABEL_52:

            *v88 = v60;
            return result;
          }

          goto LABEL_58;
        }

        v61 = -2;
LABEL_56:
        *v88 = v61;
        return result;
      }
    }

    else if (v41 >= 2)
    {
      goto LABEL_34;
    }

    sub_228380F74(v3, v25, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_2283808C0(v25, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
        v72 = sub_22837087C(v31, byte_283B66708);
        if ((v73 & 1) != 0 || (v74 = v72, v72 > 2))
        {
          v60 = *(v39 + 32);
          goto LABEL_52;
        }

        if (v74 < -1)
        {
          goto LABEL_59;
        }

        v61 = byte_283B66708[v74 + 33];
        goto LABEL_56;
      }

      v48 = *v25;
      sub_2282FEBEC();
      v51 = v85;
      v50 = v86;
      v52 = v25 + *(v49 + 48);
      v53 = v84;
      (*(v85 + 32))(v84, v52, v86);
      v54 = v87;
      v55 = *(v3 + v87[9]);
      v56 = v82;
      (*(v51 + 16))(v82, v53, v50);
      (*(v51 + 56))(v56, 0, 1, v50);
      sub_228391850();
      sub_228380BA8(v56, &qword_27D827160, MEMORY[0x277CC95F0]);
      v57 = *(v3 + v54[10]);
      v89 = v48;
      v58 = v48;
      sub_228391850();

      result = (*(v51 + 8))(v53, v50);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        LOBYTE(v89) = v31;
        sub_228377730(&v89, v88);
        return sub_2283808C0(v25, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      }

      v63 = v25;
      v64 = v83;
      sub_228381EB4(v63, v83, type metadata accessor for MedicationSearchItem);
      v65 = *(v3 + v87[12]);
      v66 = v79;
      sub_22826FCF8(v79);
      v67 = v80;
      sub_228382C68(v66, v80, &qword_27D8264E8, MEMORY[0x277D116A0]);
      v68 = sub_228390C30();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v67, 1, v68) == 1)
      {
        v70 = type metadata accessor for FormStepResult();
        v71 = v81;
        (*(*(v70 - 8) + 56))(v81, 1, 1, v70);
      }

      else
      {
        v71 = v81;
        (*(v69 + 32))(v81, v67, v68);
        v75 = type metadata accessor for FormStepResult();
        swift_storeEnumTagMultiPayload();
        (*(*(v75 - 8) + 56))(v71, 0, 1, v75);
      }

      sub_228391850();
      sub_228380BA8(v71, &unk_27D827790, type metadata accessor for FormStepResult);
      v76 = *(v3 + v87[10]);
      v77 = sub_22826FA64();
      v89 = v77;
      sub_228391850();

      result = sub_2283808C0(v64, type metadata accessor for MedicationSearchItem);
    }

    v61 = 96;
    goto LABEL_56;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_2283743F4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_228368E1C(0, &qword_27D827C30, MEMORY[0x277D85720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v145 = &v141 - v8;
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v141 - v11;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v155 = &v141 - v15;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v141 - v18;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v141 - v22;
  v24 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v142 = *(v24 - 1);
  v25 = *(v142 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v143 = v27;
  v144 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v141 - v28;
  v30 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v153 = v12;
  v154 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = *a1;
  if (v149 == 160)
  {
    v33 = 1;
  }

  else
  {
    v33 = *(v3 + v24[8]);
  }

  v150 = v33;
  v147 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
  v34 = v154;
  sub_228380F74(v3, v154, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  v35 = *(v3 + v24[20]);
  v36 = v24[6];
  v146 = *(v3 + v24[5]);
  v148 = *(v3 + v36);
  v37 = v24[9];
  v38 = sub_22838F4A0();
  (*(*(v38 - 8) + 56))(v23, 1, 1, v38);
  sub_228380330(0, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v152 = v23;
  *&v29[v37] = sub_228391890();
  v42 = v24[10];
  *&v158 = 0;
  sub_2283802B0(0, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *&v29[v42] = sub_228391890();
  v46 = v24[11];
  LOBYTE(v158) = 0;
  sub_228380CDC(0, &qword_27D8277C0, MEMORY[0x277CBCE30]);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *&v29[v46] = sub_228391890();
  v50 = v24[12];
  v51 = type metadata accessor for FormStepResult();
  (*(*(v51 - 8) + 56))(v19, 1, 1, v51);
  sub_228212A9C();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v151 = v19;
  *&v29[v50] = sub_228391890();
  v55 = v24[13];
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v57 = v56;
  v158 = 0uLL;
  v58 = *(v56 + 48);
  v59 = *(v56 + 52);
  swift_allocObject();
  *&v29[v55] = sub_228391890();
  v60 = v24[14];
  v158 = 0uLL;
  v61 = *(v57 + 48);
  v62 = *(v57 + 52);
  swift_allocObject();

  *&v29[v60] = sub_228391890();
  v63 = v24[15];
  *&v158 = 0;
  sub_2283802B0(0, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  *&v29[v63] = sub_228391890();
  v67 = v24[16];
  v68 = sub_2283909E0();
  (*(*(v68 - 8) + 56))(v155, 1, 1, v68);
  sub_228181EDC();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  *&v29[v67] = sub_228391890();
  v72 = v24[17];
  v73 = sub_228390D50();
  v74 = v153;
  (*(*(v73 - 8) + 56))(v153, 1, 1, v73);
  sub_2281E4AF0();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  *&v29[v72] = sub_228391890();
  v78 = v24[18];
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v158 = 0u;
  v159 = 0u;
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  *&v29[v78] = sub_228391890();
  v82 = v24[19];
  *&v158 = 0;
  sub_2283802B0(0, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *&v29[v82] = sub_228391890();
  v86 = v24[21];
  *&v158 = 0;
  sub_22829C0BC();
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  *&v29[v86] = sub_228391890();
  v90 = v24[22];
  sub_228390890();
  *&v29[v90] = sub_228390880();
  sub_228380F74(v34, v29, v147);
  v29[v24[7]] = v149;
  *&v29[v24[5]] = v146;

  v91 = v148;
  sub_228390DF0();
  *&v29[v24[6]] = v91;
  v29[v24[8]] = v150;
  *&v158 = sub_228371268();
  *(&v158 + 1) = v92;
  sub_228391850();

  if (v35)
  {
    *&v29[v24[20]] = v35;
  }

  else
  {
    *&v158 = 0;
    sub_2283803B8();
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    *&v29[v24[20]] = sub_228391890();
  }

  sub_228391870();
  v96 = v152;
  if (v158)
  {
  }

  else
  {
    v97 = sub_2283922D0();
    v98 = v145;
    (*(*(v97 - 8) + 56))(v145, 1, 1, v97);
    v99 = v144;
    sub_228380F74(v29, v144, type metadata accessor for MedicationOnboardingFlowManager);
    v100 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    *(v101 + 24) = 0;
    sub_228381EB4(v99, v101 + v100, type metadata accessor for MedicationOnboardingFlowManager);
    sub_2281DC568(0, 0, v98, &unk_2283A6548, v101);
  }

  sub_2283808C0(v154, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_228381EB4(v29, a2, type metadata accessor for MedicationOnboardingFlowManager);
  v102 = v24[13];
  v103 = *(a2 + v102);
  v104 = *(v3 + v102);
  sub_228391870();
  v156 = v158;
  sub_228391850();

  v105 = v24[12];
  v106 = *(a2 + v105);
  v107 = *(v3 + v105);
  v108 = v151;
  sub_228391870();
  sub_228391850();
  sub_228380BA8(v108, &unk_27D827790, type metadata accessor for FormStepResult);
  v109 = v24[14];
  v110 = *(a2 + v109);
  v111 = *(v3 + v109);
  sub_228391870();
  v156 = v158;
  sub_228391850();

  v112 = v24[15];
  v113 = *(a2 + v112);
  v114 = *(v3 + v112);
  sub_228391870();
  v115 = v158;
  *&v156 = v158;
  sub_228391850();

  v116 = v24[19];
  v117 = *(a2 + v116);
  v118 = *(v3 + v116);
  sub_228391870();
  v119 = v158;
  *&v156 = v158;
  sub_228391850();

  v120 = v24[9];
  v121 = *(a2 + v120);
  v122 = *(v3 + v120);
  sub_228391870();
  sub_228391850();
  sub_228380BA8(v96, &qword_27D827160, MEMORY[0x277CC95F0]);
  v123 = v24[10];
  v124 = *(a2 + v123);
  v125 = *(v3 + v123);
  sub_228391870();
  v126 = v158;
  *&v156 = v158;
  sub_228391850();

  v127 = v24[16];
  v128 = *(a2 + v127);
  v129 = *(v3 + v127);
  v130 = v155;
  sub_228391870();
  sub_228391850();
  sub_228380BA8(v130, &qword_27D8238A8, MEMORY[0x277D11640]);
  v131 = v24[17];
  v132 = *(a2 + v131);
  v133 = *(v3 + v131);
  sub_228391870();
  sub_228391850();
  sub_228380BA8(v74, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v134 = v24[18];
  v135 = *(a2 + v134);
  v136 = *(v3 + v134);
  sub_228391870();
  v156 = v158;
  v157 = v159;
  sub_228391850();
  sub_228294FEC(v156, *(&v156 + 1));
  v137 = v24[11];
  v138 = *(a2 + v137);
  v139 = *(v3 + v137);
  sub_228391870();
  LOBYTE(v156) = v158;
  return sub_228391850();
}

char *sub_228374FD0(uint64_t a1)
{
  v2 = v1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(v1 + *(v8 + 88));
  v10 = sub_228390840();
  v11 = *(v2 + *(v8 + 52));
  sub_228391870();
  v12 = v26[2];
  v13 = v26[3];
  objc_allocWithZone(type metadata accessor for ManualNameStepViewController());
  v26[0] = v12;
  v26[1] = v13;
  sub_228380234(0, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_228391890();
  v18 = type metadata accessor for ManualNameDataSource();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_22823C620(v17);
  v22 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = sub_228380038(v7, v21, v10, &qword_27D828608, type metadata accessor for ManualNameDataSource, &off_28185BA98, &qword_27D825BC0);

  v24 = sub_22837A4A4(65, a1, v23);

  return v24;
}

char *sub_2283751CC(uint64_t a1)
{
  v58 = a1;
  v56 = type metadata accessor for MedicationSearchItem(0);
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v56);
  v51 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = v50 - v6;
  v59 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v7 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v57 = (v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v50 - v11;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  v20 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v21 = *(v20 + 88);
  v55 = v1;
  v50[1] = *(v1 + v21);
  v22 = sub_228390840();
  v52 = v20;
  v50[0] = *(v1 + *(v20 + 48));
  sub_228391870();
  v54 = objc_allocWithZone(type metadata accessor for ManualFormStepViewController(0));
  v23 = *(v2 + 56);
  v24 = v56;
  v23(v12, 1, 1, v56);
  sub_228380F08(v19, v17, &unk_27D827790, type metadata accessor for FormStepResult);
  sub_228212A9C();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_228391890();
  v29 = type metadata accessor for ManaulFormsDataSource();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_2282F6D70(v12, v28);

  v23(v12, 1, 1, v24);
  v33 = v58;
  v34 = sub_22837FEA8(v12, v32, v22, sub_22838142C, &qword_27D8252A8);
  v35 = v55;

  sub_228380BA8(v19, &unk_27D827790, type metadata accessor for FormStepResult);
  v36 = sub_22837A9B0(1, v33, v34);
  v37 = v57;
  v38 = v36;
  sub_228380F74(v35, v57, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_2282FEBEC();
      v43 = *(v42 + 48);
      v44 = sub_22838F4A0();
      (*(*(v44 - 8) + 8))(v37 + v43, v44);
      return 0;
    }

    else
    {

      sub_2283808C0(v37, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_2283808C0(v37, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    return 0;
  }

  else
  {
    v40 = v53;
    sub_228381EB4(v37, v53, type metadata accessor for MedicationSearchItem);
    v41 = *(v35 + *(v52 + 44));
    sub_228391870();
    if (v60 == 1)
    {
      sub_2283808C0(v40, type metadata accessor for MedicationSearchItem);
    }

    else
    {
      v45 = v51;
      sub_228380F74(v40, v51, type metadata accessor for MedicationSearchItem);
      v46 = sub_228390840();
      sub_228391870();
      v47 = sub_22821273C(v45, v46, v19);
      v48 = sub_22837AE84(0, v33, v47);

      sub_2283808C0(v40, type metadata accessor for MedicationSearchItem);
      return v48;
    }
  }

  return v38;
}

uint64_t sub_228375748(uint64_t a1)
{
  v2 = v1;
  v97 = a1;
  v3 = sub_2283911B0();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v100 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_228390C30();
  v91 = *(v94 - 8);
  v6 = *(v91 + 64);
  v7 = MEMORY[0x28223BE20](v94);
  v89 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v90 = &v85 - v10;
  MEMORY[0x28223BE20](v9);
  v93 = &v85 - v11;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v88 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v85 - v16;
  v17 = type metadata accessor for MedicationSearchItem(0);
  v98 = *(v17 - 8);
  v99 = v17;
  v18 = *(v98 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v87 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v92 = &v85 - v22;
  MEMORY[0x28223BE20](v21);
  v95 = &v85 - v23;
  v24 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v85 - v30;
  v32 = type metadata accessor for FormStepResult();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v85 - v38;
  v40 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v41 = *(v1 + v40[12]);
  sub_228391870();
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_228380BA8(v31, &unk_27D827790, type metadata accessor for FormStepResult);
    v42 = v100;
    sub_228391150();
    v43 = sub_2283911A0();
    v44 = sub_2283925C0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v103[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, v103);
      _os_log_impl(&dword_22816B000, v43, v44, "[%s] Failed to create strength view controller, route form is nil!", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AAB7B80](v46, -1, -1);
      MEMORY[0x22AAB7B80](v45, -1, -1);
    }

    (*(v101 + 8))(v42, v102);
    return 0;
  }

  sub_228381EB4(v31, v39, type metadata accessor for FormStepResult);
  sub_228380F74(v2, v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2283808C0(v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      v53 = sub_22837DA30(v97);
      sub_2283808C0(v39, type metadata accessor for FormStepResult);
      return v53;
    }

    sub_2282FEBEC();
    v50 = *(v49 + 48);
    v51 = sub_22838F4A0();
    (*(*(v51 - 8) + 8))(v27 + v50, v51);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_2283808C0(v39, type metadata accessor for FormStepResult);
      sub_2283808C0(v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      return 0;
    }

    sub_2283808C0(v27, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  }

  v52 = v96;
  sub_22837213C(v96);
  if ((*(v98 + 48))(v52, 1, v99) == 1)
  {
    sub_2283808C0(v39, type metadata accessor for FormStepResult);
    sub_228380BA8(v52, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    return 0;
  }

  v54 = v95;
  sub_228381EB4(v52, v95, type metadata accessor for MedicationSearchItem);
  sub_228380F74(v39, v37, type metadata accessor for FormStepResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2283808C0(v37, type metadata accessor for FormStepResult);
    v55 = v54;
    v56 = sub_22837DA30(v97);
    sub_2283808C0(v55, type metadata accessor for MedicationSearchItem);
    v57 = v39;
  }

  else
  {
    v58 = v91;
    v59 = v93;
    v60 = v94;
    (*(v91 + 32))(v93, v37, v94);
    v86 = type metadata accessor for MedicationSearchItem;
    v61 = v92;
    sub_228380F74(v54, v92, type metadata accessor for MedicationSearchItem);
    v62 = *(v2 + v40[22]);
    v101 = sub_228390840();
    v63 = *(v2 + v40[10]);
    sub_228391870();
    v64 = v105;
    v102 = v39;
    v65 = *(v58 + 16);
    v66 = v90;
    v65(v90, v59, v60);
    v100 = objc_allocWithZone(type metadata accessor for StrengthStepViewController(0));
    *&v100[qword_27D824828] = 0;
    v67 = v61;
    v68 = v87;
    v69 = v86;
    sub_228380F74(v67, v87, v86);
    v103[1] = 0;
    v103[2] = 0;
    if (v64)
    {
      v70 = 0;
    }

    else
    {
      v70 = -1;
    }

    v103[0] = v64;
    v104 = v70;
    sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v96 = v64;
    v74 = sub_228391890();
    v75 = v89;
    v76 = v94;
    v65(v89, v66, v94);
    v77 = type metadata accessor for MedicationStrengthsDataSource();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v80 = sub_2282BAA94(v68, v74, v75);
    v81 = v92;
    v82 = v88;
    sub_228380F74(v92, v88, v69);
    (*(v98 + 56))(v82, 0, 1, v99);
    v83 = sub_22837FEA8(v82, v80, v101, sub_2283816F4, &qword_27D8252A8);

    v84 = *(v58 + 8);
    v84(v66, v76);
    sub_2283808C0(v81, type metadata accessor for MedicationSearchItem);
    v56 = sub_22837B82C(32, v97, v83);

    v84(v93, v76);
    sub_2283808C0(v95, type metadata accessor for MedicationSearchItem);
    v57 = v102;
  }

  sub_2283808C0(v57, type metadata accessor for FormStepResult);
  return v56;
}

char *sub_2283761D4(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v12 = *(v1 + v11[22]);
  v37 = sub_228390840();
  v13 = *(v2 + v11[19]);
  v36 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  v14 = *(v2 + v11[10]);
  sub_228391870();
  v15 = v39[0];
  if (v39[0])
  {
    v16 = sub_228392E70();
  }

  else
  {
    v16 = 0;
  }

  v17 = MedicationOnboardingFlowManager.title.getter();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = MedicationOnboardingFlowManager.subtitle.getter();
  v23 = v22;
  v24 = objc_allocWithZone(type metadata accessor for ScheduleStepViewController());
  v39[0] = v19;
  v39[1] = v20;
  v39[2] = v21;
  v39[3] = v23;
  v25 = type metadata accessor for MedicationScheduleDataSource();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v16;

  v29 = v36;
  v30 = sub_228333ABC(v13, v29, v16, v39);

  sub_228380F08(v9, v7, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228380F08(v7, &v24[qword_27D828B18], &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228381A0C();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = *(v30 + qword_27D828F28);
  *&v24[qword_27D824D88] = v31;
  *&v24[qword_27D824D90] = v37;

  v32 = sub_228390480();

  sub_228380BA8(v7, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228380BA8(v9, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v33 = sub_22837BD00(96, v38, v32);

  return v33;
}

uint64_t sub_2283764D4(uint64_t a1)
{
  v2 = v1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  sub_228368E1C(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_2283909E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v21 = *(v1 + *(v20 + 64));
  sub_228391870();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_228380BA8(v11, &qword_27D8238A8, MEMORY[0x277D11640]);
    result = sub_228393300();
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    sub_22837213C(v7);
    v22 = *(v2 + *(v20 + 88));
    v23 = sub_228390840();
    (*(v13 + 16))(v17, v19, v12);
    v24 = objc_allocWithZone(type metadata accessor for VisualizationModificationStepViewController());
    v25 = sub_2281E36F4(v7, v23, v17);
    v26 = sub_22837C6A8(128, a1, v25);

    (*(v13 + 8))(v19, v12);
    return v26;
  }

  return result;
}

char *sub_2283767E4(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v10 = *(v1 + v9[19]);
  sub_228391870();
  if (v45)
  {
    v11 = v45;
    sub_22837DD7C(v11, v2, &v47);
    v12 = v47;
    v13 = v48;
    v14 = v49;
    v15 = v50;
    v17 = v51;
    v16 = v52;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  v37 = v17;
  v38 = v16;
  v53[0] = v12;
  v53[1] = v13;
  v53[2] = v14;
  v53[3] = v15;
  v53[4] = v17;
  v53[5] = v16;
  sub_22837213C(v8);
  v18 = *(v2 + v9[22]);
  v40 = sub_228390840();
  v19 = *(v2 + v9[18]);
  sub_2283820E8(v12, v13, v14, v15, v17, v16);
  sub_228391870();
  v20 = type metadata accessor for NicknameNotesStepViewController();
  v36 = v45;
  v35 = v46;
  v39 = objc_allocWithZone(v20);
  v44 = v35;
  v43 = v36;
  sub_228380234(0, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_228391890();
  v25 = type metadata accessor for NicknameAndNotesDataSource();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_2283820E8(v12, v13, v14, v15, v17, v16);
  v28 = sub_228292F84(v24, v53);
  v29 = v41;
  sub_228380F08(v8, v41, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v30 = sub_22837FEA8(v29, v28, v40, sub_2283823F8, &qword_27D826BB8);

  v31 = v37;
  v32 = v38;
  sub_228382128(v12, v13, v14, v15, v37, v38);
  sub_228380BA8(v8, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v33 = sub_22837CB7C(129, v42, v30);
  sub_228382128(v12, v13, v14, v15, v31, v32);

  return v33;
}

char *sub_228376B64(uint64_t a1)
{
  v22 = a1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  sub_22837213C(&v22 - v7);
  v9 = *(v1 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 88));
  v10 = sub_228390840();
  objc_allocWithZone(type metadata accessor for DDIStepViewController());
  sub_228380F08(v8, v6, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v23 = 1;
  sub_228380234(0, &qword_27D8268D8, &qword_27D823CF8, MEMORY[0x277D839B0]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_228391890();
  v15 = type metadata accessor for DDIOnboardingDataSource();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2282872B0(v6, v14);

  sub_228380F08(v8, v6, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v19 = sub_228380038(v6, v18, v10, &qword_27D8286C0, type metadata accessor for DDIOnboardingDataSource, &off_28185C7E8, &qword_27D8268A0);

  sub_228380BA8(v8, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v20 = sub_22837D050(160, v22, v19);

  return v20;
}

char *sub_228376D88(uint64_t a1)
{
  v2 = v1;
  v97[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v84 - v11;
  v13 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v14 = *(v2 + *(v13 + 80));
  if (!v14)
  {
    sub_228391150();
    v41 = sub_2283911A0();
    v42 = sub_2283925B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v97[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, v97);
      _os_log_impl(&dword_22816B000, v41, v42, "[%s] sourcesWithExistingAuthorizationsPublisher is nil when trying to makeThirdPartyAuthorizationViewController during med-onboarding-flow", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAB7B80](v44, -1, -1);
      MEMORY[0x22AAB7B80](v43, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v45 = 0;
    goto LABEL_54;
  }

  v15 = v13;
  sub_228390890();

  sub_228390880();
  v16 = sub_228390830();

  sub_228391870();
  v17 = v97[0];
  v92 = v14;
  v93 = a1;
  v91 = v12;
  if (!v97[0])
  {
    v46 = MEMORY[0x277D84FA0];
    goto LABEL_53;
  }

  v89 = v2;
  v90 = v97[0];
  v87 = v15;
  v88 = v16;
  if ((v97[0] & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x277D84FA0];
    v96 = MEMORY[0x277D84FA0];

    v17 = sub_228393080();
    v19 = sub_228393100();
    if (v19)
    {
      v20 = v19;
      v21 = sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
      v22 = v20;
      do
      {
        v94 = v22;
        swift_dynamicCast();
        v30 = v95;
        if (![v95 _isApplication])
        {
          goto LABEL_15;
        }

        v31 = [objc_opt_self() defaultWorkspace];
        if (!v31)
        {
          __break(1u);
        }

        v32 = v31;
        v33 = [v30 bundleIdentifier];
        if (!v33)
        {
          sub_228392000();
          v33 = sub_228391FC0();
        }

        v34 = [v32 applicationIsInstalled_];

        if ((v34 & 1) == 0)
        {
        }

        else
        {
LABEL_15:
          v35 = v95;
          v36 = *(v18 + 16);
          if (*(v18 + 24) <= v36)
          {
            sub_2282D6DFC(v36 + 1);
          }

          v18 = v96;
          v23 = *(v96 + 40);
          v24 = sub_228392C50();
          v25 = v18 + 56;
          v26 = -1 << *(v18 + 32);
          v27 = v24 & ~v26;
          v28 = v27 >> 6;
          if (((-1 << v27) & ~*(v18 + 56 + 8 * (v27 >> 6))) != 0)
          {
            v29 = __clz(__rbit64((-1 << v27) & ~*(v18 + 56 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v37 = 0;
            v38 = (63 - v26) >> 6;
            do
            {
              if (++v28 == v38 && (v37 & 1) != 0)
              {
                __break(1u);
                goto LABEL_55;
              }

              v39 = v28 == v38;
              if (v28 == v38)
              {
                v28 = 0;
              }

              v37 |= v39;
              v40 = *(v25 + 8 * v28);
            }

            while (v40 == -1);
            v29 = __clz(__rbit64(~v40)) + (v28 << 6);
          }

          *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
          *(*(v18 + 48) + 8 * v29) = v35;
          ++*(v18 + 16);
        }

        v22 = sub_228393100();
      }

      while (v22);
    }

    goto LABEL_52;
  }

  v47 = *(v97[0] + 32);
  v48 = v47 & 0x3F;
  v85 = ((1 << v47) + 63) >> 6;
  v21 = 8 * v85;

  if (v48 > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v84 = &v84;
    MEMORY[0x28223BE20](v49);
    v50 = &v84 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v50, v21);
    v86 = 0;
    v51 = 0;
    v52 = v17 + 56;
    v53 = 1 << *(v17 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v17 + 56);
    v56 = (v53 + 63) >> 6;
    while (v55)
    {
      v57 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
LABEL_43:
      v60 = v57 | (v51 << 6);
      v61 = *(*(v17 + 48) + 8 * v60);
      if ([v61 _isApplication])
      {
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v63 = result;
        v64 = [v61 bundleIdentifier];
        if (!v64)
        {
          sub_228392000();
          v64 = sub_228391FC0();
        }

        v21 = [v63 applicationIsInstalled_];

        v17 = v90;
        if (v21)
        {
          goto LABEL_48;
        }
      }

      else
      {

LABEL_48:
        *&v50[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v60;
        if (__OFADD__(v86++, 1))
        {
          __break(1u);
LABEL_51:
          v18 = sub_22827A9C0(v50, v85, v86, v17);
          goto LABEL_52;
        }
      }
    }

    v58 = v51;
    while (1)
    {
      v51 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v51 >= v56)
      {
        goto LABEL_51;
      }

      v59 = *(v52 + 8 * v51);
      ++v58;
      if (v59)
      {
        v57 = __clz(__rbit64(v59));
        v55 = (v59 - 1) & v59;
        goto LABEL_43;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v83 = swift_slowAlloc();
  v18 = sub_22837F4E4(v83, v85, v17, sub_22837F6B4, 0);

  MEMORY[0x22AAB7B80](v83, -1, -1);
LABEL_52:
  sub_22837EFF8(v18);
  v46 = v66;

  v16 = v88;
  v2 = v89;
  v15 = v87;
LABEL_53:
  v67 = sub_2282B91E8(v46);

  v68 = *(v2 + *(v15 + 88));
  v69 = sub_228390840();
  v70 = objc_allocWithZone(type metadata accessor for ThirdPartyAuthorizationStepViewController());
  v71 = type metadata accessor for ThirdPartyAuthorizationDataSource();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  v74 = v16;
  v75 = sub_228297D78(v74, v67);
  v76 = type metadata accessor for MedicationSearchItem(0);
  v77 = v91;
  (*(*(v76 - 8) + 56))(v91, 1, 1, v76);
  sub_228380F08(v77, &v70[qword_27D828B18], &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_2283826A4();
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  *(v78 + 24) = *(v75 + qword_27D826CA8);
  *&v70[qword_27D824D88] = v78;
  *&v70[qword_27D824D90] = v69;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_228397F40;
  v80 = MEMORY[0x277D10F80];
  *(v79 + 32) = v75;
  *(v79 + 40) = v80;
  swift_retain_n();

  sub_228390220();
  v81 = sub_228390480();
  sub_228380BA8(v77, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  [*(v75 + qword_27D826CB0) fetchSources];

  v45 = sub_22837D55C(161, v93, v81);

LABEL_54:
  v82 = *MEMORY[0x277D85DE8];
  return v45;
}

uint64_t sub_228377730@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v5 = type metadata accessor for FormStepResult();
  v6 = *(v5 - 8);
  v77 = v5;
  v78 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_27D8264E8, MEMORY[0x277D116A0]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v74 - v13;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v79 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v74 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v74 - v24;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v74 - v31;
  v33 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v38 = v3;
  sub_228380F74(v3, v36, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  result = sub_2283808C0(v36, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  if (!v3)
  {
    v40 = v30;
    v41 = v38;
    v42 = v79;
    v43 = v80;
    v75 = v25;
    v44 = v81;
    v45 = v82;
    v46 = v37 >> 5;
    if (v37 >> 5)
    {
      if (v46 != 1)
      {
        if (v46 != 2 || v37 != 64)
        {
          *v82 = -2;
          return result;
        }

        v47 = v32;
        v81 = v41;
        sub_22837213C(v32);
        v48 = type metadata accessor for MedicationSearchItem(0);
        v49 = *(*(v48 - 8) + 48);
        v50 = v45;
        if (v49(v32, 1, v48) == 1)
        {
          v51 = &qword_27D8238D0;
          v52 = type metadata accessor for MedicationSearchItem;
          v53 = v32;
        }

        else
        {
          v64 = sub_22826F7C8();
          result = sub_2283808C0(v47, type metadata accessor for MedicationSearchItem);
          if ((v64 & 1) == 0)
          {
LABEL_28:
            *v50 = 0;
            return result;
          }

          v79 = *&v81[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 48)];
          sub_22837213C(v40);
          if (v49(v40, 1, v48) == 1)
          {
            sub_228380BA8(v40, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
            v65 = 1;
            v66 = v77;
            v67 = v75;
          }

          else
          {
            sub_22826FCF8(v43);
            sub_2283808C0(v40, type metadata accessor for MedicationSearchItem);
            v70 = v76;
            sub_228382C68(v43, v76, &qword_27D8264E8, MEMORY[0x277D116A0]);
            v71 = sub_228390C30();
            v72 = *(v71 - 8);
            v65 = 1;
            v73 = (*(v72 + 48))(v70, 1, v71);
            v66 = v77;
            v67 = v75;
            if (v73 != 1)
            {
              (*(v72 + 32))(v75, v70, v71);
              swift_storeEnumTagMultiPayload();
              v65 = 0;
            }
          }

          (*(v78 + 56))(v67, v65, 1, v66);
          sub_228391850();
          v51 = &unk_27D827790;
          v52 = type metadata accessor for FormStepResult;
          v53 = v67;
        }

        result = sub_228380BA8(v53, v51, v52);
        goto LABEL_28;
      }

      if ((v37 & 1) != 0 || (v54 = type metadata accessor for MedicationOnboardingFlowManager(0), v55 = *&v41[v54[11]], v56 = v41, result = sub_228391870(), (v85 & 1) == 0))
      {
        *v45 = 96;
        return result;
      }

      sub_228377F78(v20);
      v57 = v20;
      v59 = v77;
      v58 = v78;
      if ((*(v78 + 48))(v57, 1, v77) == 1)
      {
        sub_228380BA8(v57, &unk_27D827790, type metadata accessor for FormStepResult);
        v60 = *&v56[v54[12]];
        (*(v58 + 56))(v42, 1, 1, v59);
        sub_228391850();
        result = sub_228380BA8(v42, &unk_27D827790, type metadata accessor for FormStepResult);
        *v45 = 1;
        return result;
      }

      sub_228381EB4(v57, v44, type metadata accessor for FormStepResult);
      v68 = *&v56[v54[10]];
      v84 = 0;
      sub_228391850();
      v69 = *&v56[v54[12]];
      sub_228380F74(v44, v42, type metadata accessor for FormStepResult);
      (*(v58 + 56))(v42, 0, 1, v59);
      sub_228391850();
      sub_228380BA8(v42, &unk_27D827790, type metadata accessor for FormStepResult);
      result = sub_2283808C0(v44, type metadata accessor for FormStepResult);
    }

    else
    {
      v61 = type metadata accessor for MedicationOnboardingFlowManager(0);
      v62 = *&v41[*(v61 + 48)];
      sub_228391870();
      result = (*(v78 + 48))(v23, 1, v77);
      if (result != 1)
      {
        result = swift_getEnumCaseMultiPayload();
        if (result != 1)
        {
          v63 = *&v41[*(v61 + 44)];
          sub_228391870();
          *v45 = v83 | 0x20;
          return sub_2283808C0(v23, type metadata accessor for FormStepResult);
        }
      }
    }

    *v45 = 33;
    return result;
  }

  *v82 = -2;
  return result;
}

uint64_t sub_228377F78@<X0>(uint64_t *a1@<X8>)
{
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20[-v5];
  v7 = sub_228390C30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 48));
  sub_228391870();
  v13 = type metadata accessor for FormStepResult();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    sub_228380BA8(v6, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2283808C0(v6, type metadata accessor for FormStepResult);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v15 = sub_228392A70();
    MEMORY[0x28223BE20](v15);
    *&v20[-16] = v11;
    v16 = sub_2282CD6F4(sub_228382CD4, &v20[-32], v15);
    v18 = v17;

    if (v18)
    {

      *a1 = v16;
      swift_storeEnumTagMultiPayload();
      (*(v14 + 56))(a1, 0, 1, v13);
      return (*(v8 + 8))(v11, v7);
    }

    (*(v8 + 8))(v11, v7);
  }

  return (*(v14 + 56))(a1, 1, 1, v13);
}

uint64_t sub_22837827C(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_2283911B0();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v61 - v11;
  v12 = MEMORY[0x277CC95F0];
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v61 - v15;
  sub_228368E1C(0, &qword_27D8285B8, MEMORY[0x277D117F8]);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v64 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v61 - v27;
  sub_228390580();
  sub_228390570();
  v29 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v30 = *(v1 + v29[9]);
  sub_228391870();
  v69 = v28;
  sub_228390550();

  sub_228380BA8(v16, &qword_27D827160, v12);
  v31 = v29[5];
  v68 = v2;
  v32 = *(v2 + v31);
  v33 = sub_228390DB0();
  if (v33 == 2 || (v37 = v33, v38 = sub_228390DE0(), (v39 & 1) != 0) || v38 != 4)
  {
    sub_228391190();
    v34 = sub_2283911A0();
    v35 = sub_2283925C0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22816B000, v34, v35, "Wasn't able to send medication analytics in save because entry point type or suggestionsFromCHR was nil.", v36, 2u);
      MEMORY[0x22AAB7B80](v36, -1, -1);
    }

    (*(v66 + 8))(v6, v67);
  }

  else
  {
    sub_228380F08(v69, v26, &qword_27D8285B8, MEMORY[0x277D117F8]);
    v40 = sub_2283905C0();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    v43 = v42(v26, 1, v40);

    LODWORD(v66) = v43;
    if (v43 == 1)
    {
      sub_228380BA8(v26, &qword_27D8285B8, MEMORY[0x277D117F8]);
      v67 = 0;
    }

    else
    {
      v67 = sub_2283905A0();
      (*(v41 + 8))(v26, v40);
    }

    sub_228380F08(v69, v23, &qword_27D8285B8, MEMORY[0x277D117F8]);
    v44 = v42(v23, 1, v40);
    v62 = v37;
    if (v44 == 1)
    {
      sub_228380BA8(v23, &qword_27D8285B8, MEMORY[0x277D117F8]);
    }

    else
    {
      sub_228390590();
      (*(v41 + 8))(v23, v40);
    }

    v45 = v64;
    sub_228380F08(v69, v64, &qword_27D8285B8, MEMORY[0x277D117F8]);
    if (v42(v45, 1, v40) == 1)
    {
      sub_228380BA8(v45, &qword_27D8285B8, MEMORY[0x277D117F8]);
      v61 = 0;
    }

    else
    {
      v61 = sub_2283905B0();
      (*(v41 + 8))(v45, v40);
    }

    v46 = v65;
    v47 = v68;
    v48 = *(v68 + v29[22]);
    sub_228390830();
    v49 = *(v47 + v29[19]);
    sub_228391870();
    v50 = v70;
    if (v70)
    {
      v51 = [v70 endDateTime];

      if (v51)
      {
        v52 = v63;
        sub_22838F3E0();

        v53 = 0;
      }

      else
      {
        v53 = 1;
        v52 = v63;
      }

      v55 = sub_22838F440();
      v56 = *(v55 - 8);
      (*(v56 + 56))(v52, v53, 1, v55);
      sub_228382C68(v52, v46, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      (*(v56 + 48))(v46, 1, v55);
    }

    else
    {
      v54 = sub_22838F440();
      (*(*(v54 - 8) + 56))(v46, 1, 1, v54);
    }

    sub_228380BA8(v46, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v57 = sub_228390D90();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    sub_228390D80();
    sub_228390E70();
    sub_228390E60();
  }

  return sub_228380BA8(v69, &qword_27D8285B8, MEMORY[0x277D117F8]);
}

uint64_t sub_228378AB0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_22818217C(0, &qword_280DDB860);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_228378B90(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_2283911B0();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228378C5C, 0, 0);
}

uint64_t sub_228378C5C()
{
  v47 = v0;
  v1 = *(v0 + 160);
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v3 = *(v1 + *(v2 + 76));
  sub_228391870();
  v4 = *(v0 + 144);
  *(v0 + 200) = v4;
  if (v4)
  {
    v5 = [v4 medicationIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_228392000();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v23 = [*(v0 + 152) semanticIdentifier];
    v24 = [v23 stringValue];

    v25 = sub_228392000();
    v27 = v26;

    if (v9)
    {
      if (v7 == v25 && v9 == v27)
      {

LABEL_20:
        v31 = 0;
        goto LABEL_21;
      }

      v29 = sub_228393460();

      if (v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v30 = *(v0 + 152);
    sub_22817A958(0, &unk_280DDBA68, 0x277D11570);
    v4 = sub_22837A080(v4, v30);
    v31 = v4;
LABEL_21:
    *(v0 + 208) = v4;
    *(v0 + 216) = v31;
    v32 = *(v0 + 192);
    v33 = v4;
    sub_228391150();
    v34 = sub_2283911A0();
    v35 = sub_2283925A0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 192);
    v38 = *(v0 + 168);
    v39 = *(v0 + 176);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v46);
      _os_log_impl(&dword_22816B000, v34, v35, "[%s] Attempting to save medication schedule", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAB7B80](v41, -1, -1);
      MEMORY[0x22AAB7B80](v40, -1, -1);
    }

    (*(v39 + 8))(v37, v38);
    v42 = *(*(v0 + 160) + *(v2 + 88));
    v43 = sub_228390850();
    *(v0 + 224) = v43;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_228379124;
    v44 = swift_continuation_init();
    sub_2281E0600();
    *(v0 + 136) = v45;
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2282B4368;
    *(v0 + 104) = &block_descriptor_34_0;
    *(v0 + 112) = v44;
    [v43 saveSchedule:v33 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  v10 = *(v0 + 184);
  sub_228391150();
  v11 = sub_2283911A0();
  v12 = sub_2283925C0();
  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v16 = *(v0 + 168);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, &v46);
    _os_log_impl(&dword_22816B000, v11, v12, "[%s] Unable to save medication schedule. Schedule was nil.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAB7B80](v18, -1, -1);
    MEMORY[0x22AAB7B80](v17, -1, -1);
  }

  (*(v15 + 8))(v14, v16);
  v20 = *(v0 + 184);
  v19 = *(v0 + 192);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_228379124()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_2283792C0;
  }

  else
  {
    v3 = sub_228379234;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228379234()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v5 = *(v0 + 184);
  v4 = *(v0 + 192);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2283792C0()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[29];

  return v8();
}

uint64_t sub_228379368(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_228368E1C(0, &qword_27D827160, MEMORY[0x277CC95F0]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228379414, 0, 0);
}

uint64_t sub_228379414()
{
  v1 = *(v0 + 208);
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  *(v0 + 224) = v2;
  v3 = *(v1 + *(v2 + 84));
  sub_228391870();
  v4 = *(v0 + 192);
  if (!v4)
  {
    v4 = sub_2281A875C(MEMORY[0x277D84F90]);
  }

  *(v0 + 232) = v4;
  v5 = *(v4 + 32);
  *(v0 + 304) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v4 + 64);
  if (v8)
  {
    v9 = 0;
LABEL_10:
    *(v0 + 240) = v8;
    *(v0 + 248) = v9;
    v12 = *(v0 + 200);
    v13 = __clz(__rbit64(v8)) | (v9 << 6);
    v14 = *(*(v4 + 48) + 8 * v13);
    *(v0 + 256) = v14;
    LODWORD(v13) = *(*(v4 + 56) + v13);
    *(v0 + 176) = v12;
    if (v13)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v17 = v14;
    v18 = v12;
    *(v0 + 184) = [v16 initWithInteger_];
    sub_2281A8908();
    v19 = sub_228393360();

    v20 = *(v0 + 184);
    v21 = *(v0 + 176);
    v22 = v20;
    v23 = sub_2281A7910(v21);
    if (v24)
    {
      __break(1u);
    }

    else
    {
      v19[(v23 >> 6) + 8] |= 1 << v23;
      *(v19[6] + 8 * v23) = v21;
      *(v19[7] + 8 * v23) = v22;
      v25 = v19[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        v28 = *(v0 + 216);
        v19[2] = v27;

        sub_2283808C0(v0 + 176, sub_2282B9158);
        v29 = sub_22838F4A0();
        v30 = *(v29 - 8);
        (*(v30 + 56))(v28, 1, 1, v29);
        sub_22817A958(0, &qword_27D824258, 0x277CCD4B0);
        sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
        sub_22818C470(&qword_27D824260, &qword_27D824258, 0x277CCD4B0);
        v31 = sub_228391F10();

        v32 = 0;
        if ((*(v30 + 48))(v28, 1, v29) != 1)
        {
          v33 = *(v0 + 216);
          v32 = sub_22838F460();
          (*(v30 + 8))(v33, v29);
        }

        v34 = *(v0 + 224);
        v35 = *(v0 + 208);
        v36 = [objc_allocWithZone(MEMORY[0x277CCD718]) initWithObjectAuthorizationStatuses:v31 sessionIdentifier:v32];
        *(v0 + 264) = v36;

        v37 = *(v35 + *(v34 + 88));
        v38 = sub_228390810();
        *(v0 + 272) = v38;
        v39 = [objc_opt_self() userAnnotatedMedicationType];
        *(v0 + 280) = v39;
        v40 = [v17 bundleIdentifier];
        if (!v40)
        {
          sub_228392000();
          v40 = sub_228391FC0();
        }

        *(v0 + 288) = v40;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_228379924;
        v41 = swift_continuation_init();
        sub_2281E0600();
        *(v0 + 136) = v42;
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2282B4368;
        *(v0 + 104) = &block_descriptor_30_0;
        *(v0 + 112) = v41;
        [v38 setObjectAuthorizationStatusContext:v36 forObjectType:v39 bundleIdentifier:v40 completion:v0 + 80];
        v23 = v0 + 16;

        return MEMORY[0x282200938](v23);
      }
    }

    __break(1u);
    return MEMORY[0x282200938](v23);
  }

  v10 = 0;
  v11 = ((63 - v7) >> 6) - 1;
  while (v11 != v10)
  {
    v9 = v10 + 1;
    v8 = *(v4 + 8 * v10++ + 72);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v43 = *(v0 + 216);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_228379924()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_228379F1C;
  }

  else
  {
    v3 = sub_228379A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228379A34()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);

  v6 = *(v0 + 248);
  v7 = (*(v0 + 240) - 1) & *(v0 + 240);
  if (v7)
  {
    v5 = *(v0 + 232);
LABEL_7:
    *(v0 + 240) = v7;
    *(v0 + 248) = v6;
    v9 = *(v0 + 200);
    v10 = __clz(__rbit64(v7)) | (v6 << 6);
    v11 = *(*(v5 + 48) + 8 * v10);
    *(v0 + 256) = v11;
    LODWORD(v10) = *(*(v5 + 56) + v10);
    *(v0 + 176) = v9;
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v14 = v11;
    v15 = v9;
    *(v0 + 184) = [v13 initWithInteger_];
    sub_2281A8908();
    v16 = sub_228393360();

    v17 = *(v0 + 184);
    v18 = *(v0 + 176);
    v19 = v17;
    v5 = sub_2281A7910(v18);
    if (v20)
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      v16[(v5 >> 6) + 8] |= 1 << v5;
      *(v16[6] + 8 * v5) = v18;
      *(v16[7] + 8 * v5) = v19;
      v21 = v16[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        v24 = *(v0 + 216);
        v16[2] = v23;

        sub_2283808C0(v0 + 176, sub_2282B9158);
        v25 = sub_22838F4A0();
        v26 = *(v25 - 8);
        (*(v26 + 56))(v24, 1, 1, v25);
        sub_22817A958(0, &qword_27D824258, 0x277CCD4B0);
        sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
        sub_22818C470(&qword_27D824260, &qword_27D824258, 0x277CCD4B0);
        v27 = sub_228391F10();

        v28 = 0;
        if ((*(v26 + 48))(v24, 1, v25) != 1)
        {
          v29 = *(v0 + 216);
          v28 = sub_22838F460();
          (*(v26 + 8))(v29, v25);
        }

        v30 = *(v0 + 224);
        v31 = *(v0 + 208);
        v32 = [objc_allocWithZone(MEMORY[0x277CCD718]) initWithObjectAuthorizationStatuses:v27 sessionIdentifier:v28];
        *(v0 + 264) = v32;

        v33 = *(v31 + *(v30 + 88));
        v34 = sub_228390810();
        *(v0 + 272) = v34;
        v35 = [objc_opt_self() userAnnotatedMedicationType];
        *(v0 + 280) = v35;
        v36 = [v14 bundleIdentifier];
        if (!v36)
        {
          sub_228392000();
          v36 = sub_228391FC0();
        }

        *(v0 + 288) = v36;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_228379924;
        v37 = swift_continuation_init();
        sub_2281E0600();
        *(v0 + 136) = v38;
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_2282B4368;
        *(v0 + 104) = &block_descriptor_30_0;
        *(v0 + 112) = v37;
        [v34 setObjectAuthorizationStatusContext:v32 forObjectType:v35 bundleIdentifier:v36 completion:v0 + 80];
        v5 = v0 + 16;

        return MEMORY[0x282200938](v5);
      }
    }

    __break(1u);
    return MEMORY[0x282200938](v5);
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v5 = *(v0 + 232);
    if (v8 >= (((1 << *(v0 + 304)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v5 + 8 * v8 + 64);
    ++v6;
    if (v7)
    {
      v6 = v8;
      goto LABEL_7;
    }
  }

  v39 = *(v0 + 216);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_228379F1C()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v8 = v0[27];
  swift_willThrow();

  v9 = v0[1];
  v10 = v0[37];

  return v9();
}

uint64_t sub_228379FD4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = sub_228392030();
  v5 = v4;
  sub_228390C00();
  v6 = sub_228392030();
  v8 = v7;

  if (v3 == v6 && v5 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_228393460();
  }

  return v10 & 1;
}

id sub_22837A080(void *a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v48 - v11;
  sub_228391150();
  v13 = a1;
  v14 = sub_2283911A0();
  v15 = sub_2283925A0();

  v16 = os_log_type_enabled(v14, v15);
  v17 = &off_2785F4000;
  v50 = v6;
  v51 = v5;
  v48[1] = v3;
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52 = v19;
    *v18 = 136315394;
    v20 = sub_228393600();
    v22 = sub_2281C96FC(v20, v21, &v52);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = [v13 medicationIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = sub_228392000();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v29 = sub_2281C96FC(v25, v27, &v52);

    *(v18 + 14) = v29;
    _os_log_impl(&dword_22816B000, v14, v15, "[%s] Attempting to create new schedule. Old schedule medication identifier = %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v18, -1, -1);

    v5 = v51;
    v28 = *(v50 + 8);
    v28(v12, v51);
    v17 = &off_2785F4000;
  }

  else
  {

    v28 = *(v6 + 8);
    v28(v12, v5);
  }

  v30 = [v13 copyScheduleForMedication_];
  sub_228391150();
  v31 = v30;
  v32 = sub_2283911A0();
  v33 = sub_2283925A0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52 = v35;
    *v34 = 136315394;
    v36 = sub_228393600();
    v38 = sub_2281C96FC(v36, v37, &v52);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = [v31 v17[405]];
    if (v39)
    {
      v40 = v39;
      v41 = sub_228392000();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v46 = sub_2281C96FC(v41, v43, &v52);

    *(v34 + 14) = v46;
    _os_log_impl(&dword_22816B000, v32, v33, "[%s] Created new schedule with medication identifier = %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v35, -1, -1);
    MEMORY[0x22AAB7B80](v34, -1, -1);

    v45 = v51;
    v44 = v10;
  }

  else
  {

    v44 = v10;
    v45 = v5;
  }

  v28(v44, v45);
  return v31;
}

char *sub_22837A4A4(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66758);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228382638(0, &qword_27D8285D0, type metadata accessor for ManualNameDataSource, &off_28185BA98, type metadata accessor for OnboardingStepViewController);
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228363934();
  sub_22836918C(&unk_283B6E198, sub_228380C04, sub_228380C20);
  sub_228369C7C(&unk_283B66730);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837A9B0(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B667E8);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228381234();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_2283641A4();
  sub_22836918C(&unk_283B6E328, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B667C0);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837AE84(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66838);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228380FDC();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228363D60();
  sub_22836918C(&unk_283B6E260, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66810);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837B358(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B668D8);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228381788();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_2283645E8();
  sub_22836918C(&unk_283B6E4E0, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B668B0);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837B82C(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66888);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_2283814C0();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228364A14();
  sub_22836918C(&unk_283B6E3F0, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66860);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837BD00(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66928);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228381AA0();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228364E40();
  sub_22836918C(&unk_283B6E5A8, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66900);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837C1D4(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66978);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228381CE8();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228365274();
  sub_22836918C(&unk_283B6E670, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66950);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837C6A8(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B669C8);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228381F1C();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_2283656B8();
  sub_22836918C(&unk_283B6E738, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B669A0);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837CB7C(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66A18);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228382168();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228365AFC();
  sub_22836918C(&unk_283B6E800, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B669F0);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837D050(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66A68);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228382638(0, &qword_27D8286B8, type metadata accessor for DDIOnboardingDataSource, &off_28185C7E8, type metadata accessor for OnboardingStepViewController);
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228365F28();
  sub_22836918C(&unk_283B6E8F0, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66A40);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

char *sub_22837D55C(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v47 = a3;
  v7 = a1;
  v8 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228368E1C(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_2282C1ED0(a1, &unk_283B66AB8);
  v16 = a1 >> 5;
  if (v7 != 128 && v16 == 4)
  {
    v17 = *(v4 + *(v8 + 68));
    sub_228391870();
    v18 = sub_2281BF3D4(82.0, 82.0, 1, v14);
    sub_228380BA8(v14, &qword_280DDBD20, MEMORY[0x277D116C8]);
LABEL_4:
    v19 = MedicationOnboardingFlowManager.subtitle.getter();
LABEL_5:
    v45 = v20;
    v46 = v19;
    goto LABEL_13;
  }

  LOBYTE(v49) = a1;
  v18 = SpecificationStep.headerImage.getter();
  if (v16 == 5)
  {
    if (a1 == 161)
    {
      v19 = sub_22837E030(v4);
      goto LABEL_5;
    }
  }

  else if (v16 == 4 && a1 == 129)
  {
    goto LABEL_4;
  }

  v45 = 0;
  v46 = 0;
LABEL_13:
  sub_228380F74(a2, v48, type metadata accessor for MedicationOnboardingFlowManager);
  LOBYTE(v49) = a1;
  SpecificationStep.title.getter();
  if (!v21)
  {
    MedicationOnboardingFlowManager.title.getter();
  }

  v22 = *(v4 + *(v8 + 20));
  sub_228382738();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[qword_27D824BE8];
  v26 = *MEMORY[0x277D12788];
  v49 = sub_228392000();
  v50 = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B60D0);

  v28 = v50;
  *v25 = v49;
  v25[1] = v28;
  *&v24[qword_27D824BF8] = MEMORY[0x277D84FA0];
  v29 = qword_27D824C00;
  *&v24[qword_27D824C00] = 0;
  v30 = qword_27D824C08;
  v24[qword_27D824C08] = 0;
  *&v24[qword_27D824C18] = 0;
  *&v24[qword_27D824C28] = 0;
  *&v24[qword_27D824C30] = 0;
  *&v24[qword_27D824C38] = 0;
  *&v24[qword_27D824C40] = 0;
  sub_228380F74(v48, &v24[qword_27D824BF0], type metadata accessor for MedicationOnboardingFlowManager);
  v24[v30] = (v15 ^ 1) & 1;
  *&v24[v29] = v18;
  *&v24[qword_27D824C10] = v22;
  v31 = v47;
  *&v24[qword_27D824C20] = v47;
  if (v15)
  {
    v32 = v18;
  }

  v33 = v31;
  v34 = v18;
  v35 = v33;

  v36 = sub_228390400();
  v37 = *&v36[qword_27D824BE8 + 8];
  v49 = *&v36[qword_27D824BE8];
  v50 = v37;
  v38 = v36;

  MEMORY[0x22AAB5C80](0x7972616D6972502ELL, 0xEE006E6F74747542);
  v39 = sub_228391FC0();

  v40 = [v38 hxui:v39 addNextButtonWithAccessibilityIdentifier:{v45, v46}];

  v41 = qword_27D824C28;
  v42 = *&v38[qword_27D824C28];
  *&v38[qword_27D824C28] = v40;

  v43 = *&v38[v41];
  if (v43)
  {
    [v43 setEnabled_];
  }

  sub_228366354();
  sub_22836918C(&unk_283B6E9B8, sub_228382DC8, sub_228382DCC);
  sub_228369C7C(&unk_283B66A90);

  sub_2283808C0(v48, type metadata accessor for MedicationOnboardingFlowManager);
  return v38;
}

uint64_t sub_22837DA30(uint64_t a1)
{
  v2 = v1;
  sub_228368E1C(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v30 - v6;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v30 - v10);
  v12 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v13 = *(v1 + *(v12 + 48));
  sub_228391870();
  v14 = type metadata accessor for FormStepResult();
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
  {
    sub_228380BA8(v11, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *v11;
      v16 = *(v2 + *(v12 + 88));
      v17 = sub_228390840();
      objc_allocWithZone(type metadata accessor for ManualStrengthStepViewController(0));
      memset(v30, 0, sizeof(v30));
      v31 = -1;
      sub_228380234(0, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_228391890();
      v22 = type metadata accessor for ManualStrengthDataSource();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_2282557D8(v21, v15);
      v26 = type metadata accessor for MedicationSearchItem(0);
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
      v27 = sub_22837FEA8(v7, v25, v17, sub_228381978, &qword_27D825FA8);

      v28 = sub_22837B358(33, a1, v27);

      return v28;
    }

    sub_2283808C0(v11, type metadata accessor for FormStepResult);
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

id sub_22837DD7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormStepResult();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  sub_228368E1C(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - v16;
  v18 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v19 = *(a2 + *(v18 + 48));
  sub_228391870();
  if ((*(v7 + 48))(v17, 1, v6))
  {
    sub_228380BA8(v17, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  else
  {
    sub_228380F74(v17, v13, type metadata accessor for FormStepResult);
    sub_228380BA8(v17, &unk_27D827790, type metadata accessor for FormStepResult);
    sub_228381EB4(v13, v11, type metadata accessor for FormStepResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = 0;
      v21 = *v11;
      goto LABEL_7;
    }

    sub_2283808C0(v11, type metadata accessor for FormStepResult);
  }

  v21 = 0;
  v20 = 1;
LABEL_7:
  v22 = MedicationOnboardingFlowManager.currentMedicationUDC.getter();
  v23 = sub_2283929F0();
  v25 = v24;

  v26 = *(a2 + *(v18 + 40));
  sub_228391870();
  v27 = v31;
  if (v31)
  {
    v28 = sub_228392E70();
  }

  else
  {
    v28 = 0;
  }

  result = a1;
  *a3 = v21;
  *(a3 + 8) = v20;
  *(a3 + 16) = v23;
  *(a3 + 24) = v25 & 1;
  *(a3 + 32) = v28;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_22837E030(uint64_t a1)
{
  if (!*(a1 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 80)))
  {
    return 0;
  }

  sub_228391870();
  if (!v8)
  {
    return 0;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v1 = sub_2283930D0();
  }

  else
  {
    v1 = *(v8 + 16);
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22819A064(0, &qword_280DDB870, &qword_280DDB830);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_228397F40;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_22838F0C0();
  if (*(v3 + 16))
  {
    v7 = sub_228391FD0();
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t sub_22837E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[22] = a4;
  v5 = sub_2283911B0();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22837E2D0, 0, 0);
}

uint64_t sub_22837E2D0()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  v0[26] = v2;
  v3 = *(v1 + *(v2 + 88));
  v4 = sub_228390810();
  v0[27] = v4;
  v5 = *MEMORY[0x277CCC190];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22837E47C;
  v6 = swift_continuation_init();
  sub_228380920(0, &qword_27D8285C8, &qword_27D827190, MEMORY[0x277D83B48], sub_2283809B0);
  v0[17] = v7;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22837EDEC;
  v0[13] = &block_descriptor_38_0;
  v0[14] = v6;
  [v4 fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:v5 completion:v0 + 10];
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22837E47C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_22837EBCC;
  }

  else
  {
    v3 = sub_22837E5B8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_22837E5B8()
{
  v58 = v0;
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v4 = *(v2 + *(v1 + 80));
  if (!v4)
  {
    goto LABEL_49;
  }

  v54 = v4;
  v55 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84FA0];
    v56 = MEMORY[0x277D84FA0];

    v6 = sub_228393080();
    v7 = sub_228393100();
    if (v7)
    {
      v8 = v7;
      sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
      v9 = v8;
      do
      {
        *(v0 + 168) = v9;
        swift_dynamicCast();
        v17 = *(v0 + 160);
        if (![v17 _isApplication])
        {
          goto LABEL_14;
        }

        v18 = [objc_opt_self() defaultWorkspace];
        if (!v18)
        {
          __break(1u);
        }

        v19 = v18;
        v20 = [v17 bundleIdentifier];
        if (!v20)
        {
          sub_228392000();
          v20 = sub_228391FC0();
        }

        v21 = [v19 applicationIsInstalled_];

        if ((v21 & 1) == 0)
        {
        }

        else
        {
LABEL_14:
          v3 = *(v0 + 160);
          v22 = *(v5 + 16);
          if (*(v5 + 24) <= v22)
          {
            sub_2282D6DFC(v22 + 1);
            v5 = v56;
          }

          v10 = *(v5 + 40);
          v11 = sub_228392C50();
          v12 = v5 + 56;
          v13 = -1 << *(v5 + 32);
          v14 = v11 & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v5 + 56 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v5 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v23 = 0;
            v24 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v24 && (v23 & 1) != 0)
              {
                __break(1u);
                goto LABEL_52;
              }

              v25 = v15 == v24;
              if (v15 == v24)
              {
                v15 = 0;
              }

              v23 |= v25;
              v26 = *(v12 + 8 * v15);
            }

            while (v26 == -1);
            v16 = __clz(__rbit64(~v26)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v5 + 48) + 8 * v16) = v3;
          ++*(v5 + 16);
        }

        v9 = sub_228393100();
      }

      while (v9);
    }

    goto LABEL_48;
  }

  v27 = *(v3 + 32);
  v28 = v27 & 0x3F;
  v6 = ((1 << v27) + 63) >> 6;
  v5 = 8 * v6;

  if (v28 > 0xD)
  {
    goto LABEL_53;
  }

  while (2)
  {
    v50 = &v50;
    v51 = v6;
    MEMORY[0x28223BE20](v29);
    v52 = &v50 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v52, v5);
    v53 = 0;
    v30 = 0;
    v31 = v3 + 56;
    v32 = 1 << *(v3 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v5 = v33 & *(v3 + 56);
    v34 = (v32 + 63) >> 6;
    while (v5)
    {
      v36 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_39:
      v6 = v36 | (v30 << 6);
      v39 = *(*(v3 + 48) + 8 * v6);
      if ([v39 _isApplication])
      {
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v41 = result;
        v42 = [v39 bundleIdentifier];
        if (!v42)
        {
          sub_228392000();
          v42 = sub_228391FC0();
        }

        v35 = [v41 applicationIsInstalled_];

        v3 = v55;
        if (v35)
        {
          goto LABEL_44;
        }
      }

      else
      {

LABEL_44:
        *&v52[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v53++, 1))
        {
          __break(1u);
LABEL_47:
          v5 = sub_22827A9C0(v52, v51, v53, v3);
          goto LABEL_48;
        }
      }
    }

    v37 = v30;
    while (1)
    {
      v30 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v30 >= v34)
      {
        goto LABEL_47;
      }

      v38 = *(v31 + 8 * v30);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v5 = (v38 - 1) & v38;
        goto LABEL_39;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v49 = swift_slowAlloc();
  v5 = sub_22837F4E4(v49, v6, v3, sub_22837F6B4, 0);

  MEMORY[0x22AAB7B80](v49, -1, -1);
LABEL_48:
  sub_22837EFF8(v5);
  v45 = v44;

  *(v0 + 152) = v45;
  sub_228391850();
LABEL_49:

  v46 = *(v0 + 200);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_22837EBCC()
{
  v22 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  swift_willThrow();

  sub_228391150();
  v4 = v1;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[23];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_2281C96FC(0xD00000000000001FLL, 0x80000002283A6420, v21);
    *(v12 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_22816B000, v5, v6, "[%s] %@", v12, 0x16u);
    sub_228193354(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v9, v11);
  v17 = v0[25];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_22837EDEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_22818217C(0, &qword_280DDB860);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    **(*(v4 + 64) + 40) = sub_228392480();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_22837EF28(void *a1)
{
  if (![a1 _isApplication])
  {
    return 1;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = [a1 bundleIdentifier];
    if (!v4)
    {
      sub_228392000();
      v4 = sub_228391FC0();
    }

    v5 = [v3 applicationIsInstalled_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22837EFF8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_2283930D0())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2283809B0(0, &qword_27D824E98, MEMORY[0x277D84098]);
  v3 = sub_2283931A0();
LABEL_6:
  if (sub_22817A958(0, &qword_27D824240, 0x277CCDA00) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_228393080();
      sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
      sub_2283924C0();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_228393100())
        {
LABEL_55:
          sub_2282B9E34();

          return;
        }

        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_22837F574(v36);
    }
  }

  if (v2)
  {

    sub_228393080();
    sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    sub_2283924C0();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_228393100())
    {
      goto LABEL_55;
    }

    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_228392C50();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void *sub_22837F4E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_22827A604(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_22837F574(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_228392C50();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_22817A958(0, &qword_27D824240, 0x277CCDA00);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_228392C60();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

uint64_t _s19HealthMedicationsUI31MedicationOnboardingFlowManagerV9EntryModeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F4A0();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v79 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v77 - v8;
  v82 = type metadata accessor for MedicationSearchItem(0);
  v9 = *(*(v82 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v82);
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v77 - v12;
  v13 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v77 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v77 - v24;
  sub_22838085C();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &v30[*(v28 + 56)];
  sub_228380F74(a1, v30, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  sub_228380F74(a2, v31, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_228380F74(v30, v20, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
      v33 = *v20;
      sub_2282FEBEC();
      v35 = *(v34 + 48);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v83 + 8))(v20 + v35, v84);

        goto LABEL_31;
      }

      v36 = *v31;
      v37 = v83;
      v38 = *(v83 + 32);
      v39 = v20 + v35;
      v40 = v80;
      v41 = v84;
      v38(v80, v39, v84);
      v42 = v31 + v35;
      v43 = v79;
      v38(v79, v42, v41);
      sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
      v44 = sub_228392C60();

      if (v44)
      {
        v45 = sub_22838F470();
        v46 = *(v37 + 8);
        v46(v43, v41);
        v46(v40, v41);
LABEL_50:
        v63 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
        goto LABEL_51;
      }

      v74 = *(v37 + 8);
      v74(v43, v41);
      v74(v40, v41);
LABEL_49:
      v45 = 0;
      goto LABEL_50;
    }

    sub_228380F74(v30, v17, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    v58 = *v17;
    v57 = v17[1];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_31;
    }

    v59 = v31[1];
    if (v57)
    {
      if (v59)
      {
        if (v58 == *v31 && v57 == v59)
        {

          goto LABEL_54;
        }

        v61 = v31[1];
        v62 = sub_228393460();

        v63 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
        if ((v62 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_52:
        v45 = 1;
        goto LABEL_51;
      }
    }

    else
    {
      v63 = type metadata accessor for MedicationOnboardingFlowManager.EntryMode;
      if (!v59)
      {
        goto LABEL_52;
      }

      v75 = v31[1];
    }

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload)
  {
    sub_228380F74(v30, v23, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_2283808C0(v23, type metadata accessor for MedicationSearchItem);
      goto LABEL_31;
    }

    v47 = v81;
    sub_228381EB4(v31, v81, type metadata accessor for MedicationSearchItem);
    if ((_s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(v23, v47) & 1) != 0 && *&v23[v82[5]] == *(v47 + v82[5]))
    {
      if (v48 = v82[6], v49 = *&v23[v48], v50 = *&v23[v48 + 8], v51 = (v47 + v48), v49 == *v51) && v50 == v51[1] || (sub_228393460())
      {
        if (v52 = v82[7], v53 = *&v23[v52], v54 = *&v23[v52 + 8], v55 = (v47 + v52), v53 == *v55) && v54 == v55[1] || (sub_228393460())
        {
          sub_2283808C0(v47, type metadata accessor for MedicationSearchItem);
          v56 = v23;
LABEL_42:
          sub_2283808C0(v56, type metadata accessor for MedicationSearchItem);
LABEL_54:
          v45 = 1;
          goto LABEL_50;
        }
      }
    }

    sub_2283808C0(v47, type metadata accessor for MedicationSearchItem);
    v64 = v23;
    goto LABEL_44;
  }

  sub_228380F74(v30, v25, type metadata accessor for MedicationOnboardingFlowManager.EntryMode);
  if (!swift_getEnumCaseMultiPayload())
  {
    v65 = v78;
    sub_228381EB4(v31, v78, type metadata accessor for MedicationSearchItem);
    if ((_s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(v25, v65) & 1) != 0 && *&v25[v82[5]] == *(v65 + v82[5]))
    {
      if (v66 = v82[6], v67 = *&v25[v66], v68 = *&v25[v66 + 8], v69 = (v65 + v66), v67 == *v69) && v68 == v69[1] || (sub_228393460())
      {
        if (v70 = v82[7], v71 = *&v25[v70], v72 = *&v25[v70 + 8], v73 = (v65 + v70), v71 == *v73) && v72 == v73[1] || (sub_228393460())
        {
          sub_2283808C0(v65, type metadata accessor for MedicationSearchItem);
          v56 = v25;
          goto LABEL_42;
        }
      }
    }

    sub_2283808C0(v65, type metadata accessor for MedicationSearchItem);
    v64 = v25;
LABEL_44:
    sub_2283808C0(v64, type metadata accessor for MedicationSearchItem);
    goto LABEL_49;
  }

  sub_2283808C0(v25, type metadata accessor for MedicationSearchItem);
LABEL_31:
  v45 = 0;
  v63 = sub_22838085C;
LABEL_51:
  sub_2283808C0(v30, v63);
  return v45 & 1;
}

uint64_t sub_22837FEA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void *a5)
{
  v8 = v5;
  sub_228380F08(a1, v8 + qword_27D828B18, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  a4(0);
  v12 = swift_allocObject();
  v13 = *(a2 + *a5);
  *(v8 + qword_27D824D88) = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = v13;
  *(v8 + qword_27D824D90) = a3;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228397F40;
  v15 = MEMORY[0x277D10F80];
  *(v14 + 32) = a2;
  *(v14 + 40) = v15;
  swift_retain_n();

  sub_228390220();
  v16 = sub_228390480();
  sub_228380BA8(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v16;
}

uint64_t sub_228380038(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7)
{
  v12 = v7;
  sub_228380F08(a1, v12 + qword_27D828B18, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  sub_228382638(0, a4, a5, a6, type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource);
  v16 = swift_allocObject();
  v17 = *(a2 + *a7);
  *(v12 + qword_27D824D88) = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  *(v12 + qword_27D824D90) = a3;
  sub_2283901F0();
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228397F40;
  v19 = MEMORY[0x277D10F80];
  *(v18 + 32) = a2;
  *(v18 + 40) = v19;
  swift_retain_n();

  sub_228390220();
  v20 = sub_228390480();
  sub_228380BA8(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v20;
}

void sub_2283801CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_228380234(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_228382CF4(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2283802B0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_2283801CC(255, a3, a4, a5, MEMORY[0x277D83D88]);
    v6 = sub_228391880();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_228380330(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_228368E1C(255, a3, a4);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2283803B8()
{
  if (!qword_27D827848)
  {
    sub_228380420();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827848);
    }
  }
}

void sub_228380420()
{
  if (!qword_27D827850)
  {
    sub_2283809B0(255, &qword_27D827190, MEMORY[0x277D83B48]);
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827850);
    }
  }
}

void sub_2283804BC()
{
  type metadata accessor for MedicationOnboardingFlowManager.EntryMode(319);
  if (v0 <= 0x3F)
  {
    sub_228390E00();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKMedicationListOnboardingDetailsEntryPointType(319);
      if (v2 <= 0x3F)
      {
        sub_228380330(319, &qword_27D8277A0, &qword_27D827160, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          sub_2283802B0(319, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
          if (v4 <= 0x3F)
          {
            sub_228380CDC(319, &qword_27D8277C0, MEMORY[0x277CBCE30]);
            if (v5 <= 0x3F)
            {
              sub_228212A9C();
              if (v6 <= 0x3F)
              {
                sub_228380234(319, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
                if (v7 <= 0x3F)
                {
                  sub_2283802B0(319, &qword_27D8277E0, &qword_27D826008, &qword_27D8277F0, 0x277CCDAB0);
                  if (v8 <= 0x3F)
                  {
                    sub_228181EDC();
                    if (v9 <= 0x3F)
                    {
                      sub_2281E4AF0();
                      if (v10 <= 0x3F)
                      {
                        sub_228380234(319, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
                        if (v11 <= 0x3F)
                        {
                          sub_2283802B0(319, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
                          if (v12 <= 0x3F)
                          {
                            sub_228368E1C(319, &qword_27D828598, sub_2283803B8);
                            if (v13 <= 0x3F)
                            {
                              sub_22829C0BC();
                              if (v14 <= 0x3F)
                              {
                                sub_228390890();
                                if (v15 <= 0x3F)
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
      }
    }
  }
}

void sub_228380798()
{
  type metadata accessor for MedicationSearchItem(319);
  if (v0 <= 0x3F)
  {
    sub_2282FEBEC();
    if (v1 <= 0x3F)
    {
      sub_228382CF4(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22838085C()
{
  if (!qword_27D8285C0)
  {
    type metadata accessor for MedicationOnboardingFlowManager.EntryMode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8285C0);
    }
  }
}

uint64_t sub_2283808C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228380920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_22818217C(255, &qword_280DDB860);
    v6 = sub_228392350();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2283809B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_22817A958(255, &qword_27D824240, 0x277CCDA00);
    v7 = sub_22818C470(&qword_27D827840, &qword_27D824240, 0x277CCDA00);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_228380A60()
{
  if (!qword_27D8285E0)
  {
    sub_228392830();
    sub_22817A958(255, &qword_280DDB928, 0x277CBEB88);
    sub_228380B60(&qword_27D827528, MEMORY[0x277CC9DB0]);
    sub_22818C470(&qword_280DDB930, &qword_280DDB928, 0x277CBEB88);
    v0 = sub_228391760();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8285E0);
    }
  }
}

uint64_t sub_228380B60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228380BA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228368E1C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_228380C4C()
{
  result = qword_27D824058;
  if (!qword_27D824058)
  {
    sub_228380234(255, &qword_27D8277D0, &qword_27D825070, MEMORY[0x277D837D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824058);
  }

  return result;
}

void sub_228380CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0], MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_228380DB4()
{
  result = qword_27D828600;
  if (!qword_27D828600)
  {
    sub_2283802B0(255, &qword_27D8277A8, &unk_27D8277B0, &qword_27D823BD8, 0x277CCD1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828600);
  }

  return result;
}

uint64_t sub_228380E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

uint64_t sub_228380F08(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228368E1C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228380F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_228380FDC()
{
  if (!qword_27D828610)
  {
    type metadata accessor for MedicationFormsDataSource();
    sub_228380B60(&qword_27D828618, type metadata accessor for MedicationFormsDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828610);
    }
  }
}

uint64_t sub_2283810E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_2283811A0()
{
  if (!qword_27D828620)
  {
    type metadata accessor for MedicationFormsDataSource();
    sub_228380B60(&qword_27D828618, type metadata accessor for MedicationFormsDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828620);
    }
  }
}

void sub_228381234()
{
  if (!qword_27D828628)
  {
    type metadata accessor for ManaulFormsDataSource();
    sub_228380B60(&qword_27D828630, type metadata accessor for ManaulFormsDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828628);
    }
  }
}

uint64_t sub_228381354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_111(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22838142C()
{
  if (!qword_27D828638)
  {
    type metadata accessor for ManaulFormsDataSource();
    sub_228380B60(&qword_27D828630, type metadata accessor for ManaulFormsDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828638);
    }
  }
}

void sub_2283814C0()
{
  if (!qword_27D828640)
  {
    type metadata accessor for MedicationStrengthsDataSource();
    sub_228380B60(&qword_27D828648, type metadata accessor for MedicationStrengthsDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828640);
    }
  }
}

unint64_t sub_228381554()
{
  result = qword_27D824868;
  if (!qword_27D824868)
  {
    sub_228380234(255, &qword_27D824858, &qword_27D824860, &type metadata for StrengthStepResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824868);
  }

  return result;
}

uint64_t sub_228381634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_2283816F4()
{
  if (!qword_27D828650)
  {
    type metadata accessor for MedicationStrengthsDataSource();
    sub_228380B60(&qword_27D828648, type metadata accessor for MedicationStrengthsDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828650);
    }
  }
}

void sub_228381788()
{
  if (!qword_27D828658)
  {
    type metadata accessor for ManualStrengthDataSource();
    sub_228380B60(&qword_27D828660, type metadata accessor for ManualStrengthDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828658);
    }
  }
}

uint64_t sub_2283818B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228381978()
{
  if (!qword_27D828668)
  {
    type metadata accessor for ManualStrengthDataSource();
    sub_228380B60(&qword_27D828660, type metadata accessor for ManualStrengthDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828668);
    }
  }
}

void sub_228381A0C()
{
  if (!qword_27D828670)
  {
    type metadata accessor for MedicationScheduleDataSource();
    sub_228380B60(&qword_27D828678, type metadata accessor for MedicationScheduleDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828670);
    }
  }
}

void sub_228381AA0()
{
  if (!qword_27D828680)
  {
    type metadata accessor for MedicationScheduleDataSource();
    sub_228380B60(&qword_27D828678, type metadata accessor for MedicationScheduleDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828680);
    }
  }
}

unint64_t sub_228381B40()
{
  result = qword_27D8245A8;
  if (!qword_27D8245A8)
  {
    sub_2283802B0(255, &qword_27D8245A0, &qword_280DDBA60, &unk_280DDBA68, 0x277D11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8245A8);
  }

  return result;
}

uint64_t sub_228381C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228381CE8()
{
  if (!qword_27D828688)
  {
    type metadata accessor for VisualizationShapeDataSource();
    sub_228380B60(&qword_27D8238E0, type metadata accessor for VisualizationShapeDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828688);
    }
  }
}

uint64_t sub_228381DF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

uint64_t sub_228381EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_228381F1C()
{
  if (!qword_27D828690)
  {
    type metadata accessor for VisualizationModificationDataSource();
    sub_228380B60(&qword_27D824BE0, type metadata accessor for VisualizationModificationDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828690);
    }
  }
}

uint64_t sub_228382028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_2283820E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
    v6 = a5;

    v7 = a6;
  }
}

void sub_228382128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a6)
  {
  }
}

void sub_228382168()
{
  if (!qword_27D828698)
  {
    type metadata accessor for NicknameAndNotesDataSource();
    sub_228380B60(&qword_27D8286A0, type metadata accessor for NicknameAndNotesDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D828698);
    }
  }
}

unint64_t sub_228382210()
{
  result = qword_27D8286A8;
  if (!qword_27D8286A8)
  {
    sub_228380234(255, &qword_27D827808, &qword_27D827810, &type metadata for MedicationNicknameNotes);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8286A8);
  }

  return result;
}

uint64_t sub_2283822F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_22836D7F4(a1, v4, v5, v7, v6);
}

uint64_t sub_2283823B0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_2283823F8()
{
  if (!qword_27D8286B0)
  {
    type metadata accessor for NicknameAndNotesDataSource();
    sub_228380B60(&qword_27D8286A0, type metadata accessor for NicknameAndNotesDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8286B0);
    }
  }
}

unint64_t sub_228382498()
{
  result = qword_27D8268E0;
  if (!qword_27D8268E0)
  {
    sub_228380234(255, &qword_27D8268D8, &qword_27D823CF8, MEMORY[0x277D839B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8268E0);
  }

  return result;
}

uint64_t sub_228382578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228382638(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2283826A4()
{
  if (!qword_27D8286C8)
  {
    type metadata accessor for ThirdPartyAuthorizationDataSource();
    sub_228380B60(&qword_27D8286D0, type metadata accessor for ThirdPartyAuthorizationDataSource);
    v0 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8286C8);
    }
  }
}

void sub_228382738()
{
  if (!qword_27D8286D8)
  {
    type metadata accessor for ThirdPartyAuthorizationDataSource();
    sub_228380B60(&qword_27D8286D0, type metadata accessor for ThirdPartyAuthorizationDataSource);
    v0 = type metadata accessor for OnboardingStepViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8286D8);
    }
  }
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_228382888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819DA1C;

  return sub_22836D4B0(a1, v4, v5, v7, v6);
}

void sub_228382948(unint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_22838F810();
  sub_22838F800();
  v13 = sub_22838F7F0();

  v21 = [v13 authorizationStatus];

  if (a1 >> 62)
  {
LABEL_19:
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_2283930D0();
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v23 = a1 & 0xC000000000000001;
  v15 = v3 + 1;
  while (v24 != v14)
  {
    if (v23)
    {
      v16 = MEMORY[0x22AAB6D80](v14, a1);
    }

    else
    {
      if (v14 >= *(v22 + 16))
      {
        goto LABEL_18;
      }

      v16 = *(a1 + 8 * v14 + 32);
    }

    v3 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v17 = [v16 creationDate];
    sub_22838F3E0();

    sub_22838F430();
    sub_22838F350();
    v18 = *v15;
    (*v15)(v7, v2);
    LOBYTE(v17) = sub_22838F3A0();

    v18(v10, v2);
    v18(v12, v2);
    ++v14;
    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  if (v21 != 2)
  {
    v19 = [objc_opt_self() defaultCenter];
    if (qword_27D8232B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v19 postNotificationName:qword_27D824A88 object:0];
  }
}

uint64_t sub_228382C68(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228368E1C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_228382CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t CollectionViewTextItem.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CollectionViewTextItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CollectionViewTextItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CollectionViewTextItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall CollectionViewTextItem.init(text:)(HealthMedicationsUI::CollectionViewTextItem *__return_ptr retstr, Swift::String text)
{
  v3 = sub_22838F4A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollectionViewTextCell();
  sub_2283830B4();
  retstr->reuseIdentifier._countAndFlagsBits = sub_22838FBB0();
  retstr->reuseIdentifier._object = v8;
  v16 = 0x74497265746F6F46;
  v17 = 0xEB000000005F6D65;
  sub_22838F490();
  v9 = sub_22838F450();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x22AAB5C80](v9, v11);

  v12 = v17;
  retstr->uniqueIdentifier._countAndFlagsBits = v16;
  retstr->uniqueIdentifier._object = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_228391FC0();

  v15 = [v13 initWithString_];

  retstr->attributedText.super.isa = v15;
}

unint64_t sub_2283830B4()
{
  result = qword_27D8286F0;
  if (!qword_27D8286F0)
  {
    type metadata accessor for CollectionViewTextCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8286F0);
  }

  return result;
}

void __swiftcall CollectionViewTextItem.init(attributedText:)(HealthMedicationsUI::CollectionViewTextItem *__return_ptr retstr, NSAttributedString attributedText)
{
  v4 = sub_22838F4A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollectionViewTextCell();
  sub_2283830B4();
  retstr->reuseIdentifier._countAndFlagsBits = sub_22838FBB0();
  retstr->reuseIdentifier._object = v9;
  v14 = 0x74497265746F6F46;
  v15 = 0xEB000000005F6D65;
  sub_22838F490();
  v10 = sub_22838F450();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  MEMORY[0x22AAB5C80](v10, v12);

  v13 = v15;
  retstr->uniqueIdentifier._countAndFlagsBits = v14;
  retstr->uniqueIdentifier._object = v13;
  retstr->attributedText = attributedText;
}

uint64_t sub_228383254(uint64_t a1)
{
  v2 = sub_22838426C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2283832A0(uint64_t a1, uint64_t *a2)
{
  sub_22817A890(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228383E20();
  return sub_22817A8FC(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228383344@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  return sub_22817A890(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2283833B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228383E20();
  return sub_22817A8FC(a1, &qword_280DDCD50, sub_22817A700);
}

void (*sub_228383440(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2283834A4;
}

void sub_2283834A4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_228383E20();
  }
}

id sub_2283834D8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label);
  }

  else
  {
    v4 = sub_228383538();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228383538()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v7 = sub_228392000();
  v8 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283B6260);

  MEMORY[0x22AAB5C80](0x6C6562614C2ELL, 0xE600000000000000);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setClipsToBounds_];
  [v3 setTextAlignment_];
  [v3 setLineBreakMode_];
  return v3;
}

void sub_228383898()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_2283834D8();
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F00;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label;
  v7 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label] topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-10.0];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] bottomAnchor];
  v12 = [v1 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-26.0];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v5 + 56) = v22;
  sub_2281BF1B8();
  v23 = sub_228392190();

  [v4 activateConstraints_];
}

uint64_t sub_228383B84()
{
  v1 = v0;
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_228391330();
  v10 = type metadata accessor for CollectionViewTextCell();
  v15.receiver = v1;
  v15.super_class = v10;
  objc_msgSendSuper2(&v15, sel__bridgedUpdateConfigurationUsingState_, v9);

  MEMORY[0x22AAB6410]();
  v11 = sub_2283913A0();
  if ((*(*(v11 - 8) + 48))(v8, 1, v11))
  {
    v12 = MEMORY[0x277D74BD0];
    sub_22817A890(v8, v6, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
    MEMORY[0x22AAB6420](v6);
    return sub_22817A8FC(v8, &unk_280DDBCD0, v12);
  }

  else
  {
    v14 = [objc_opt_self() clearColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v8);
  }
}

void sub_228383E20()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  swift_beginAccess();
  sub_22817A890(v0 + v7, v19, &qword_280DDCD50, sub_22817A700);
  if (v19[3])
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v8 = v18[4];
      v9 = sub_2283834D8();
      [v9 setAttributedText_];

      return;
    }
  }

  else
  {
    sub_22817A8FC(v19, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391180();
  v10 = sub_2283911A0();
  v11 = sub_2283925C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136446210;
    v19[0] = ObjectType;
    swift_getMetatypeMetadata();
    v14 = sub_228392020();
    v16 = sub_2281C96FC(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22816B000, v10, v11, "[%{public}s] item is not an CollectionViewTextItem", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

id CollectionViewTextCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTextCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2283840EC()
{
  result = qword_27D828700;
  if (!qword_27D828700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828700);
  }

  return result;
}

unint64_t sub_22838426C()
{
  result = qword_27D828710;
  if (!qword_27D828710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828710);
  }

  return result;
}

HealthMedicationsUI::InteractionsOnboardingEducationItem __swiftcall InteractionsOnboardingEducationItem.init(text:)(Swift::String text)
{
  object = text._object;
  countAndFlagsBits = text._countAndFlagsBits;
  v4 = v1;
  type metadata accessor for InteractionsOnboardingEducationCell();
  sub_228384334();
  v5 = sub_22838FBB0();
  v4[2] = v5;
  v4[3] = v6;
  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.reuseIdentifier._object = v8;
  result.reuseIdentifier._countAndFlagsBits = v7;
  result.text._object = v6;
  result.text._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_228384334()
{
  result = qword_27D8268C8;
  if (!qword_27D8268C8)
  {
    type metadata accessor for InteractionsOnboardingEducationCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8268C8);
  }

  return result;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.__allocating_init(factor:settingsManager:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_228385A54(a1, a2);

  return v7;
}

uint64_t InteractionsOnboardingEducationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InteractionsOnboardingEducationItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](v1, v2);
  return v4;
}

uint64_t InteractionsOnboardingEducationItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t static InteractionsOnboardingEducationItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_228393460(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_228393460();
    }
  }

  return result;
}

uint64_t InteractionsOnboardingEducationItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2283845D0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228384638()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_228384688()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_228393520();
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2283846EC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5C80](v1, v2);
  return v4;
}

uint64_t sub_22838474C(uint64_t a1)
{
  v2 = sub_22828781C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t OnboardingLifestyleInteractionSwitchItem.baseIdentifier.getter()
{
  v1 = (v0 + qword_27D828718);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D828718);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.init(factor:settingsManager:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_228385A54(a1, a2);

  return v2;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.isOn.getter()
{
  v1 = *(v0 + qword_27D828720);
  switch(v1)
  {
    case 3:
      v5 = *(v0 + qword_27D828728);
      v3 = sub_228390790();
      return v3 & 1;
    case 2:
      v4 = *(v0 + qword_27D828728);
      v3 = sub_2283907C0();
      return v3 & 1;
    case 1:
      v2 = *(v0 + qword_27D828728);
      v3 = sub_228390770();
      return v3 & 1;
  }

  return 0;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.handleSwitchValueChanged(_:for:)()
{
  v1 = *(v0 + qword_27D828720);
  switch(v1)
  {
    case 3:
      v5 = *(v0 + qword_27D828728);
      return sub_2283907A0();
    case 2:
      v4 = *(v0 + qword_27D828728);
      return sub_2283907D0();
    case 1:
      v2 = *(v0 + qword_27D828728);
      return sub_228390780();
  }

  return result;
}

uint64_t sub_228384A1C()
{
  v1 = *(v0 + qword_27D828718 + 8);

  v2 = *(v0 + qword_27D828728);
}

uint64_t OnboardingLifestyleInteractionSwitchItem.deinit()
{
  v0 = _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();
  v1 = *(v0 + qword_27D828718 + 8);

  v2 = *(v0 + qword_27D828728);

  return v0;
}

uint64_t OnboardingLifestyleInteractionSwitchItem.__deallocating_deinit()
{
  v0 = _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();
  v1 = *(v0 + qword_27D828718 + 8);

  v2 = *(v0 + qword_27D828728);

  return swift_deallocClassInstance();
}

uint64_t sub_228384B24()
{
  v1 = *(v0 + qword_27D828720);
  switch(v1)
  {
    case 3:
      v5 = *(v0 + qword_27D828728);
      v3 = sub_228390790();
      return v3 & 1;
    case 2:
      v4 = *(v0 + qword_27D828728);
      v3 = sub_2283907C0();
      return v3 & 1;
    case 1:
      v2 = *(v0 + qword_27D828728);
      v3 = sub_228390770();
      return v3 & 1;
  }

  return 0;
}

uint64_t sub_228384BA8()
{
  v1 = *(v0 + qword_27D828720);
  switch(v1)
  {
    case 3:
      v5 = *(v0 + qword_27D828728);
      return sub_2283907A0();
    case 2:
      v4 = *(v0 + qword_27D828728);
      return sub_2283907D0();
    case 1:
      v2 = *(v0 + qword_27D828728);
      return sub_228390780();
  }

  return result;
}

uint64_t sub_228384C2C()
{
  v1 = (*v0 + qword_27D828718);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_228384C88(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + qword_27D828718);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_228384CEC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t InteractionsOnboardingEducationCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228384DA8(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228384E84();
  return sub_22819482C(v6);
}

uint64_t InteractionsOnboardingEducationCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228384E84();
  return sub_22819482C(a1);
}

id sub_228384E84()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v7], v47);
  if (v48)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v44 = v46[0];
      v45 = v46[3];
      v8 = [v1 contentView];
      v9 = [objc_opt_self() systemBackgroundColor];
      [v8 setBackgroundColor_];

      v10 = [v1 contentView];
      v11 = sub_2283854B4();
      [v10 addSubview_];

      v43 = objc_opt_self();
      sub_228180ED0();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_228397F00;
      v13 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView;
      v14 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView] topAnchor];
      v15 = [v1 contentView];
      v16 = [v15 topAnchor];

      v17 = [v14 constraintEqualToAnchor_];
      *(v12 + 32) = v17;
      v18 = [*&v1[v13] leadingAnchor];
      v19 = [v1 contentView];
      v20 = [v19 leadingAnchor];

      v21 = [v18 constraintEqualToAnchor:v20 constant:10.0];
      *(v12 + 40) = v21;
      v22 = [*&v1[v13] trailingAnchor];
      v23 = [v1 contentView];
      v24 = [v23 trailingAnchor];

      v25 = [v22 constraintEqualToAnchor:v24 constant:-10.0];
      *(v12 + 48) = v25;
      v26 = [*&v1[v13] bottomAnchor];
      v27 = [v1 contentView];
      v28 = [v27 bottomAnchor];

      v29 = [v26 constraintEqualToAnchor_];
      *(v12 + 56) = v29;
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
      v30 = sub_228392190();

      [v43 activateConstraints_];

      v31 = *&v1[v13];
      v32 = sub_228391FC0();

      [v31 setText_];

      return [*&v1[v13] setTextAlignment_];
    }
  }

  else
  {
    sub_22819482C(v47);
  }

  sub_228391150();
  v34 = v1;
  v35 = sub_2283911A0();
  v36 = sub_2283925C0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46[0] = v38;
    *v37 = 136446210;
    sub_22817E6C8(&v1[v7], v47);
    sub_228181D50();
    v39 = sub_228392040();
    v41 = sub_2281C96FC(v39, v40, v46);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_22816B000, v35, v36, "Incorrect view model for InteractionsOnboardingEducationItem: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAB7B80](v38, -1, -1);
    MEMORY[0x22AAB7B80](v37, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

id (*InteractionsOnboardingEducationCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228385480;
}

id sub_228385480(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228384E84();
  }

  return result;
}

id sub_2283854B4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D769D0];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id InteractionsOnboardingEducationCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id InteractionsOnboardingEducationCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id InteractionsOnboardingEducationCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InteractionsOnboardingEducationCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell____lazy_storage___labelView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id InteractionsOnboardingEducationCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22838592C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228385984(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI35InteractionsOnboardingEducationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228384E84();
  return sub_22819482C(a1);
}

id (*sub_2283859F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228385480;
}

uint64_t sub_228385A54(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + qword_27D828718);
  *v4 = 0;
  v4[1] = 0;
  *(v2 + qword_27D828728) = a2;
  *(v2 + qword_27D828720) = a1;
  v5 = *MEMORY[0x277D12788];
  v18 = sub_228392000();
  v19 = v6;

  MEMORY[0x22AAB5C80](0xD000000000000018, 0x80000002283B6350);

  v7 = v18;
  v8 = v19;
  LOBYTE(v18) = 0;
  v9 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v18, a1);
  v11 = v10;
  v18 = v7;
  v19 = v8;

  MEMORY[0x22AAB5C80](v9, v11);

  v12 = v18;
  v13 = v19;
  swift_beginAccess();
  v14 = v4[1];
  *v4 = v12;
  v4[1] = v13;

  v17 = 0;
  HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v17, a1);
  v15 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  return sub_2283901A0();
}

unint64_t sub_228385BDC()
{
  result = qword_27D828740;
  if (!qword_27D828740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828740);
  }

  return result;
}

unint64_t sub_228385C34()
{
  result = qword_27D828748;
  if (!qword_27D828748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828748);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingLifestyleInteractionSwitchItem()
{
  result = qword_27D828750;
  if (!qword_27D828750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_228385D98()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView);
  }

  else
  {
    type metadata accessor for MedicationsDayHistoryView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_228385E24()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228386FB0(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  sub_228386FB0(0, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for MedicationsDayHistoryItem();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v20, v42);
  if (v43)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v21 = swift_dynamicCast();
    (*(v16 + 56))(v14, v21 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_228387004(v14, v19);
      v22 = sub_228385D98();
      v23 = &v19[v15[5]];
      v25 = *v23;
      v24 = v23[1];
      v26 = *&v19[v15[6]];
      v27 = v15[9];
      v28 = sub_22838F440();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v10, &v19[v27], v28);
      (*(v29 + 56))(v10, 0, 1, v28);
      v30 = v19[v15[10]];
      v22[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryView_previousDisplayContext] = v30;
      if (sub_228283B64(v25, v24, v26))
      {
        if (v30)
        {
          sub_2282819E8(v25, v24, v10);
          sub_228282A4C(v26);
LABEL_14:

          sub_22838850C(v10, &qword_280DDCDB0, MEMORY[0x277CC9578]);
          return sub_22833897C(v19);
        }
      }

      else
      {
        if ((sub_228283890(v10) & 1) == 0)
        {
          goto LABEL_14;
        }

        if (v30)
        {
          sub_2282819E8(v25, v24, v10);
          goto LABEL_14;
        }
      }

      sub_2282822FC(v25, v24, v10, v26);
      goto LABEL_14;
    }
  }

  else
  {
    sub_22819482C(v42);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_22838850C(v14, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  sub_228391150();
  v31 = v1;
  v32 = sub_2283911A0();
  v33 = sub_2283925C0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v34 = 136315138;
    sub_22817E6C8(v1 + v20, v42);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v36 = sub_228392040();
    v38 = sub_2281C96FC(v36, v37, &v41);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_22816B000, v32, v33, "Incorrect view model for MedicationsDayHistoryItem: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AAB7B80](v35, -1, -1);
    MEMORY[0x22AAB7B80](v34, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

char *sub_228386390(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item];
  v15 = type metadata accessor for MedicationsDayHistoryCell();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v26.receiver = v4;
  v26.super_class = v15;
  v16 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = [v16 contentView];
  v18 = sub_228385D98();
  [v17 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v20 = v19;
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  v23 = *&v16[OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView];
  v24 = [v16 contentView];

  [v23 hk:v24 alignConstraintsWithView:12.0 insets:{v20, 12.0, v22}];
  return v16;
}

uint64_t sub_228386634()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228386FB0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v48 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  sub_228386FB0(0, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - v17;
  v19 = type metadata accessor for MedicationsDayHistoryItem();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_228391330();
  v25 = type metadata accessor for MedicationsDayHistoryCell();
  v54.receiver = v1;
  v54.super_class = v25;
  objc_msgSendSuper2(&v54, sel__bridgedUpdateConfigurationUsingState_, v24);

  v26 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v26, v52);
  if (!v53)
  {
    sub_22819482C(v52);
    (*(v20 + 56))(v18, 1, 1, v19);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v27 = swift_dynamicCast();
  (*(v20 + 56))(v18, v27 ^ 1u, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
LABEL_7:
    sub_22838850C(v18, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
    sub_228391150();
    v32 = v1;
    v33 = sub_2283911A0();
    v34 = sub_2283925C0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136315138;
      sub_22817E6C8(v1 + v26, v52);
      sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
      v37 = sub_228392040();
      v39 = sub_2281C96FC(v37, v38, &v51);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_22816B000, v33, v34, "Incorrect view model for MedicationsDayHistoryItem: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAB7B80](v36, -1, -1);
      MEMORY[0x22AAB7B80](v35, -1, -1);
    }

    return (*(v49 + 8))(v5, v50);
  }

  sub_228387004(v18, v23);
  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v28 = sub_2283913A0();
    if ((*(*(v28 - 8) + 48))(v14, 1, v28))
    {
      v29 = MEMORY[0x277D74BD0];
      v30 = v48;
      sub_2283884A0(v14, v48, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v30);
      sub_22833897C(v23);
      v31 = v14;
      return sub_22838850C(v31, &unk_280DDBCD0, v29);
    }

    sub_2281AF0A0();
    sub_228392BA0();
    sub_228391370();
    v43 = v14;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v41 = sub_2283913A0();
    if ((*(*(v41 - 8) + 48))(v10, 1, v41))
    {
      v29 = MEMORY[0x277D74BD0];
      v42 = v48;
      sub_2283884A0(v10, v48, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v42);
      sub_22833897C(v23);
      v31 = v10;
      return sub_22838850C(v31, &unk_280DDBCD0, v29);
    }

    v44 = v23[*(v19 + 40)];
    v45 = objc_opt_self();
    v46 = &selRef_secondarySystemBackgroundColor;
    if (!v44)
    {
      v46 = &selRef_quaternarySystemFillColor;
    }

    v47 = [v45 *v46];
    sub_228391370();
    v43 = v10;
  }

  MEMORY[0x22AAB6420](v43);
  return sub_22833897C(v23);
}

id sub_228386D88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsDayHistoryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228386E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_228386E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228385E24();
  return sub_22819482C(a1);
}

uint64_t (*sub_228386EF0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228386F54;
}

uint64_t sub_228386F54(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228385E24();
  }

  return result;
}

void sub_228386FB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228387004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDayHistoryItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228387068(void *a1)
{
  v2 = v1;
  v167 = a1;
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v153 - v9;
  v11 = sub_22838F440();
  v177 = *(v11 - 8);
  v178 = v11;
  v12 = *(v177 + 8);
  v13 = MEMORY[0x28223BE20](v11);
  v171 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v168 = &v153 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v173 = &v153 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v174 = &v153 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v170 = &v153 - v22;
  MEMORY[0x28223BE20](v21);
  v175 = &v153 - v23;
  sub_228386FB0(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v172 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v153 - v29;
  MEMORY[0x28223BE20](v28);
  v176 = &v153 - v30;
  sub_228386FB0(0, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v153 - v33;
  v35 = type metadata accessor for MedicationsDayHistoryItem();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v40, v180);
  if (!v180[3])
  {
    sub_22819482C(v180);
    (*(v36 + 56))(v34, 1, 1, v35);
    goto LABEL_41;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v41 = swift_dynamicCast();
  (*(v36 + 56))(v34, v41 ^ 1u, 1, v35);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
LABEL_41:
    sub_22838850C(v34, &unk_27D828770, type metadata accessor for MedicationsDayHistoryItem);
    sub_228391150();
    v86 = v2;
    v87 = sub_2283911A0();
    v88 = sub_2283925C0();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v179 = v90;
      *v89 = 136315138;
      sub_22817E6C8(v2 + v40, v180);
      sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
      v91 = sub_228392040();
      v93 = sub_2281C96FC(v91, v92, &v179);

      *(v89 + 4) = v93;
      _os_log_impl(&dword_22816B000, v87, v88, "Incorrect view model for MedicationsDayHistoryItem: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x22AAB7B80](v90, -1, -1);
      MEMORY[0x22AAB7B80](v89, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  sub_228387004(v34, v39);
  v42 = *&v39[*(v35 + 28)];
  if (v42)
  {
    v160 = v35;
    v180[0] = MEMORY[0x277D84F90];
    v179 = MEMORY[0x277D84F90];
    v43 = v176;
    v44 = *(v177 + 7);
    v45 = v178;
    v156 = v177 + 56;
    v155 = v44;
    v44(v176, 1, 1, v178);
    if (v42 >> 62)
    {
LABEL_75:
      v46 = sub_2283930D0();
    }

    else
    {
      v46 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v164 = v39;
    v159 = (v177 + 16);
    v165 = (v177 + 32);
    v157 = (v177 + 8);

    if (!v46)
    {
      v166 = MEMORY[0x277D84F90];
      v163 = MEMORY[0x277D84F90];
      goto LABEL_48;
    }

    v47 = 0;
    v39 = (v42 & 0xC000000000000001);
    v163 = MEMORY[0x277D84F90];
    v166 = MEMORY[0x277D84F90];
    while (2)
    {
      v48 = v47;
      while (1)
      {
        if (v39)
        {
          MEMORY[0x22AAB6D80](v48, v42);
          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v48 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v49 = *(v42 + 8 * v48 + 32);

          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }
        }

        v50 = sub_228390A20();
        if (v50)
        {
          break;
        }

        ++v48;
        if (v47 == v46)
        {
          goto LABEL_48;
        }
      }

      v51 = v50;
      v52 = sub_228390A10();
      sub_22838F3F0();
      v53 = type metadata accessor for MedicationsDoseLogViewModel(0);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      v56 = swift_allocObject();
      v56[2] = v51;
      v56[3] = v52;
      v162 = v56;
      v56[4] = 0;
      v158 = v51;
      v57 = v52;
      v58 = sub_2283928B0();
      v161 = v57;
      if (v59)
      {
        v58 = sub_2283928A0();
        if (v60)
        {
          v58 = 0x3FF0000000000000;
        }
      }

      v61 = v162;
      v162[5] = v58;
      v62 = v161;
      v61[6] = [v161 logStatus];
      v63 = [v62 logStatus];
      *(v61 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = v63;
      v64 = v61[6];
      if (qword_283B66BB8 == v64 || qword_283B66BC0 == v64)
      {
        v67 = [v161 startDate];
        v65 = v170;
        sub_22838F3E0();

        v66 = v178;
      }

      else
      {
        v65 = v170;
        v66 = v178;
        (*v159)(v170, v175, v178);
      }

      v68 = v162;
      v154 = *v165;
      (v154)(v162 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate, v65, v66);
      v69 = v68[6];
      if (qword_283B66BB8 == v69 || qword_283B66BC0 == v69)
      {
        v72 = v161;
        v73 = [v161 startDate];
        sub_22838F3E0();

        v70 = v178;
        (*v157)(v175, v178);
        v71 = v154;
      }

      else
      {

        v70 = v66;
        v71 = v154;
        (v154)(v174, v175, v66);
      }

      v74 = v70;
      v75 = v162;
      v71(v162 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate, v174, v74);
      *(v75 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = v75[5];
      *(v75 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = v48;
      v76 = v75[3];
      if (v76)
      {
        if ([v76 logOrigin] != 2)
        {
LABEL_31:

          MEMORY[0x22AAB5D20](v77);
          if (*((v180[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v85 = *((v180[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2283921E0();
          }

          sub_228392230();
          v78 = v180[0];
          v79 = &v182;
          goto LABEL_38;
        }
      }

      else if (!v75[4])
      {
        goto LABEL_31;
      }

      MEMORY[0x22AAB5D20](v80);
      if (*((v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v84 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2283921E0();
      }

      sub_228392230();
      v78 = v179;
      v79 = &v181;
LABEL_38:
      *(v79 - 32) = v78;
      v81 = sub_228390A10();
      v82 = [v81 startDate];

      v83 = v169;
      sub_22838F3E0();

      v43 = v176;
      sub_22838850C(v176, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      v45 = v178;
      v155(v83, 0, 1, v178);
      sub_2281E793C(v83, v43);
      if (v47 != v46)
      {
        continue;
      }

      break;
    }

LABEL_48:

    v103 = v172;
    sub_2283884A0(v43, v172, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    if ((*(v177 + 6))(v103, 1, v45) == 1)
    {
      v104 = MEMORY[0x277CC9578];
      sub_22838850C(v43, &qword_280DDCDB0, MEMORY[0x277CC9578]);

      sub_22833897C(v164);
      sub_22838850C(v103, &qword_280DDCDB0, v104);
    }

    v105 = v173;
    v177 = *v165;
    (v177)(v173, v103, v45);
    v106 = v164;
    if (v163 >> 62)
    {
      v107 = sub_2283930D0();
    }

    else
    {
      v107 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v108 = v166 >> 62;
    if (v107)
    {
      goto LABEL_55;
    }

    if (v108)
    {
      if (sub_2283930D0())
      {
        goto LABEL_55;
      }
    }

    else if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_55:
      v109 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v109 setDateStyle_];
      [v109 setTimeStyle_];
      v110 = sub_228391FC0();
      v111 = sub_22838F380();
      v112 = [v109 hm:v110 localizableTimeStringKeyWithPrefix:v111 date:?];

      v175 = sub_228392000();
      if (v108)
      {
        v113 = sub_2283930D0();
      }

      else
      {
        v113 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v114 = *v159;
      v115 = v178;
      if (v113)
      {
        v114(v168, v105, v178);
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_228397F40;
        v117 = &v164[*(v160 + 20)];
        v118 = *v117;
        v119 = *(v117 + 1);
        *(v116 + 56) = MEMORY[0x277D837D0];
        *(v116 + 64) = sub_22818E210();
        *(v116 + 32) = v118;
        *(v116 + 40) = v119;

        v120 = sub_22838F0C0();
        v122 = v121;
        if (*(v116 + 16))
        {
          v120 = sub_228391FD0();
          v124 = v123;

          v122 = v124;
        }

        else
        {
        }

        v126 = type metadata accessor for MedicationDoseLogListViewModel(0);
        v127 = *(v126 + 48);
        v128 = *(v126 + 52);
        v125 = swift_allocObject();
        v115 = v178;
        (v177)(v125 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v168, v178);
        v129 = (v125 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
        *v129 = v120;
        v129[1] = v122;
        *(v125 + 16) = v166;

        v105 = v173;
      }

      else
      {
        v125 = 0;
      }

      v114(v171, v105, v115);
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      sub_2281AEAE8(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_228397F40;
      v131 = &v164[*(v160 + 20)];
      v132 = *v131;
      v133 = *(v131 + 1);
      *(v130 + 56) = MEMORY[0x277D837D0];
      *(v130 + 64) = sub_22818E210();
      *(v130 + 32) = v132;
      *(v130 + 40) = v133;

      v134 = sub_22838F0C0();
      v136 = v135;

      if (*(v130 + 16))
      {
        v134 = sub_228391FD0();
        v138 = v137;

        v136 = v138;
      }

      else
      {
      }

      v139 = type metadata accessor for MedicationDoseLogListViewModel(0);
      v140 = *(v139 + 48);
      v141 = *(v139 + 52);
      v142 = swift_allocObject();
      v143 = v178;
      (v177)(v142 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v171, v178);
      v144 = (v142 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
      *v144 = v134;
      v144[1] = v136;
      *(v142 + 16) = v163;
      v145 = v164;
      v146 = *&v164[*(v160 + 32)];
      v147 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController());

      v148 = v146;

      v150 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v149, v125, v148, 0, 2, 0, 3, 0);
      v151 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
      [v151 setModalPresentationStyle_];
      [v151 setModalInPresentation_];
      [v167 presentViewController:v151 animated:1 completion:0];

      (*v157)(v173, v143);
      sub_22838850C(v176, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      v152 = v145;
      goto LABEL_71;
    }

    (*v157)(v105, v178);
    sub_22838850C(v176, &qword_280DDCDB0, MEMORY[0x277CC9578]);

    v152 = v106;
LABEL_71:
    sub_22833897C(v152);
  }

  sub_228391150();
  v95 = v2;
  v96 = sub_2283911A0();
  v97 = sub_2283925C0();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v179 = v99;
    *v98 = 136315138;
    sub_22817E6C8(v2 + v40, v180);
    sub_2281AEAE8(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v100 = sub_228392040();
    v102 = sub_2281C96FC(v100, v101, &v179);

    *(v98 + 4) = v102;
    _os_log_impl(&dword_22816B000, v96, v97, "doseEvents do not exist on MedicationsDayHistoryItem: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    MEMORY[0x22AAB7B80](v99, -1, -1);
    MEMORY[0x22AAB7B80](v98, -1, -1);
  }

  (*(v4 + 8))(v10, v3);
  return sub_22833897C(v39);
}

uint64_t sub_2283884A0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_228386FB0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22838850C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228386FB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228388574(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = [objc_opt_self() defaultCenter];
  if (qword_280DDBA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v5 postNotificationName:qword_280DDBA80 object:a2];

  return a3(a2);
}

id sub_22838864C(uint64_t a1, void *a2)
{
  v28 = a2;
  v2 = MEMORY[0x277D83D88];
  sub_228389944(0, &qword_27D824530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_228390A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277CC9788];
  sub_228389944(0, &unk_27D825D00, MEMORY[0x277CC9788], v2);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_22838F580();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_2283909F0();
  sub_228391140();
  (*(v11 + 8))(v14, v10);
  sub_228389A3C(v19, &unk_27D825D00, v15);
  sub_22838F1E0();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v22 = result;

    sub_2283899A8(v9, v7);
    v23 = sub_22838F1F0();
    v24 = *(v23 - 8);
    v25 = 0;
    if ((*(v24 + 48))(v7, 1, v23) != 1)
    {
      v25 = sub_22838F1C0();
      (*(v24 + 8))(v7, v23);
    }

    sub_2281A8644(MEMORY[0x277D84F90]);
    v26 = sub_228391F10();

    [v22 openSensitiveURL:v25 withOptions:v26];

    [v28 dismissViewControllerAnimated:1 completion:0];
    return sub_228389A3C(v9, &qword_27D824530, MEMORY[0x277CC9260]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _sSo17UIAlertControllerC19HealthMedicationsUIE46makeAlertForMedicationWithIncompatibleSchedule10deviceName9okHandler06cancelP0ABSS_yycSgAHtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_228389944(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F40;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_22818E210();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  sub_22838F0C0();
  if (*(v10 + 16))
  {
    sub_228391FD0();
  }

  sub_22838F0C0();
  v11 = sub_228391FC0();

  v12 = sub_228391FC0();

  v28 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:{1, 0xE000000000000000}];

  sub_22838F0C0();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  sub_228176FA8(a3);
  v14 = sub_228391FC0();

  v35 = sub_228389AD4;
  v36 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_228281980;
  v34 = &block_descriptor_18_1;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v27 = [v16 actionWithTitle:v14 style:0 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  sub_22838F0C0();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  sub_228176FA8(a5);
  v18 = sub_228391FC0();

  v35 = sub_228389AD4;
  v36 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_228281980;
  v34 = &block_descriptor_24_2;
  v19 = _Block_copy(&aBlock);

  v20 = [v16 actionWithTitle:v18 style:0 handler:{v19, 0xE000000000000000}];
  _Block_release(v19);

  sub_22838F0C0();
  v21 = swift_allocObject();
  *(v21 + 16) = v28;
  v22 = v28;
  v23 = sub_228391FC0();

  v35 = sub_22838993C;
  v36 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_228281980;
  v34 = &block_descriptor_30_1;
  v24 = _Block_copy(&aBlock);

  v25 = [v16 actionWithTitle:v23 style:1 handler:{v24, 0xE000000000000000}];
  _Block_release(v24);

  [v22 addAction_];
  [v22 addAction_];
  [v22 addAction_];

  return v22;
}

id _sSo17UIAlertControllerC19HealthMedicationsUIE27makeAlertForExsitingConcept7concept11listManager11showHandlerABSgSo9HKConceptC_25UserDomainConceptsSupport04ListjM0CySo012HKMedicationqrJ0CctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_228389944(0, &qword_280DDB870, sub_228201644, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F40;
  v6 = sub_228392E90();
  v8 = sub_2282AE540(v6, v7);
  v10 = v9;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22818E210();
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  sub_22838F0C0();
  if (*(v5 + 16))
  {
    sub_228391FD0();
  }

  v11 = sub_228391FC0();

  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:{1, 0xE000000000000000}];

  v13 = sub_2283906A0();
  if (!v13)
  {
    v13 = sub_228390680();
    if (!v13)
    {

      return 0;
    }
  }

  v14 = v13;
  sub_22838F0C0();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a3;
  v15[4] = a4;
  v28 = v14;

  v16 = sub_228391FC0();

  aBlock[4] = sub_2283898F0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228281980;
  aBlock[3] = &block_descriptor_12_2;
  v17 = _Block_copy(aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:{v17, 0xE000000000000000}];
  _Block_release(v17);

  sub_22838F0C0();
  v20 = sub_228391FC0();

  v21 = [v18 actionWithTitle:v20 style:1 handler:{0, 0xE000000000000000}];

  [v12 addAction_];
  [v12 addAction_];
  v22 = sub_2283906A0();
  if (!v22)
  {
    v24 = sub_228390680();
    if (v24)
    {

      sub_22838F0C0();
      v25 = sub_228391FC0();

      [v12 setMessage_];

      return v12;
    }

    return 0;
  }

  v23 = v22;

  return v12;
}

id _sSo17UIAlertControllerC19HealthMedicationsUIE31makeAlertForArchivingMedication9onConfirm0K6CancelAByyc_yycSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_22838F0C0();
  v5 = sub_228391FC0();

  v6 = sub_228391FC0();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:{1, 0xE000000000000000}];

  sub_22838F0C0();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_228391FC0();

  v25 = sub_2281BC81C;
  v26 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_228281980;
  v24 = &block_descriptor_32;
  v10 = _Block_copy(&aBlock);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  sub_22838F0C0();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  sub_228176FA8(a3);
  v14 = sub_228391FC0();

  v25 = sub_2283898EC;
  v26 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_228281980;
  v24 = &block_descriptor_6_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 actionWithTitle:v14 style:1 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  [v7 addAction_];
  [v7 addAction_];

  return v7;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm_1()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_228389944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283899A8(uint64_t a1, uint64_t a2)
{
  sub_228389944(0, &qword_27D824530, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228389A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228389944(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FieldItem.init(text:placeholder:height:isEnabled:isNumeric:characterLimit:verticalAlignment:firstResponderHandler:hasClearButton:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  sub_22838F490();
  v20 = type metadata accessor for FieldItem();
  v21 = (a9 + v20[5]);
  v22 = (a9 + v20[6]);
  v23 = a9 + v20[10];
  v24 = (a9 + v20[14]);
  v25 = (a9 + v20[15]);
  type metadata accessor for FieldCell();
  sub_22838DD0C(&qword_27D828780, v26, type metadata accessor for FieldCell);
  result = sub_22838FBB0();
  *v25 = result;
  v25[1] = v28;
  *v21 = a1;
  v21[1] = a2;
  *v22 = a3;
  v22[1] = a4;
  *(a9 + v20[7]) = a10;
  *v23 = a7;
  *(v23 + 8) = a8 & 1;
  *(a9 + v20[9]) = a6;
  *(a9 + v20[8]) = a5;
  *(a9 + v20[12]) = a11;
  *v24 = a12;
  v24[1] = a13;
  v29 = (a9 + v20[13]);
  *v29 = a15;
  v29[1] = a16;
  *(a9 + v20[11]) = a14;
  return result;
}

uint64_t type metadata accessor for FieldItem()
{
  result = qword_27D8287A0;
  if (!qword_27D8287A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FieldItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FieldItem.text.getter()
{
  v1 = (v0 + *(type metadata accessor for FieldItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FieldItem.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FieldItem() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FieldItem.placeholder.getter()
{
  v1 = (v0 + *(type metadata accessor for FieldItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FieldItem.placeholder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FieldItem() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FieldItem.height.setter(double a1)
{
  result = type metadata accessor for FieldItem();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t FieldItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for FieldItem();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t FieldItem.isNumeric.setter(char a1)
{
  result = type metadata accessor for FieldItem();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FieldItem.characterLimit.getter()
{
  v1 = (v0 + *(type metadata accessor for FieldItem() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t FieldItem.characterLimit.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for FieldItem();
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t FieldItem.hasClearButton.setter(char a1)
{
  result = type metadata accessor for FieldItem();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t FieldItem.verticalAlignment.setter(uint64_t a1)
{
  result = type metadata accessor for FieldItem();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t FieldItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for FieldItem() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FieldItem.uniqueIdentifier.getter()
{
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x657449646C656946;
}

uint64_t FieldItem.hash(into:)()
{
  v1 = type metadata accessor for FieldItem();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v4 = (v0 + v1[6]);
  if (v4[1])
  {
    v5 = *v4;
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v6 = *(v0 + v1[7]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x22AAB7100](*&v6);
}

uint64_t FieldItem.hashValue.getter()
{
  sub_228393520();
  v1 = type metadata accessor for FieldItem();
  v2 = (v0 + v1[5]);
  if (v2[1])
  {
    v3 = *v2;
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v4 = (v0 + v1[6]);
  if (v4[1])
  {
    v5 = *v4;
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v6 = *(v0 + v1[7]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v6);
  return sub_228393570();
}

uint64_t sub_22838A528(uint64_t a1, int *a2)
{
  sub_228393520();
  v4 = (v2 + a2[5]);
  if (v4[1])
  {
    v5 = *v4;
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v6 = (v2 + a2[6]);
  if (v6[1])
  {
    v7 = *v6;
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v8 = *(v2 + a2[7]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v8);
  return sub_228393570();
}

uint64_t sub_22838A618(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_22838A650(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_22838A664()
{
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x657449646C656946;
}

uint64_t sub_22838A6C0(uint64_t a1)
{
  v2 = sub_22838DD0C(&qword_27D825BF0, 255, type metadata accessor for FieldItem);

  return MEMORY[0x282169440](a1, v2);
}

char *sub_22838A740()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField];
  }

  else
  {
    v4 = sub_22838A7A4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_22838A7A4(void *a1)
{
  type metadata accessor for UITextFieldWithInsets();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_228392560();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = &v2[OBJC_IVAR____TtC19HealthMedicationsUI21UITextFieldWithInsets_insets];
  swift_beginAccess();
  *v11 = v4;
  *(v11 + 1) = v6;
  *(v11 + 2) = v8;
  *(v11 + 3) = v10;
  v11[32] = 0;
  v12 = objc_opt_self();
  v13 = v2;
  v14 = [v12 secondarySystemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = v13;
  [v15 setAdjustsFontForContentSizeCategory_];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v16 = *MEMORY[0x277D76918];
  v17 = sub_228392AD0();
  [v15 setFont_];

  v18 = v15;
  [v18 setContentVerticalAlignment_];
  if ([a1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  [v18 setContentHorizontalAlignment_];

  [v18 setBorderStyle_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_22838F7B0();
  v20 = *MEMORY[0x277CDA138];
  sub_228392B00();
  [v18 setDelegate_];
  [v18 addTarget:a1 action:sel_textFieldDidChangeWithSender_ forControlEvents:0x20000];

  return v18;
}

id sub_22838A9DC()
{
  v1 = v0;
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter;
  v8 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v10 setNumberStyle_];
    sub_22838F500();
    v11 = sub_22838F4F0();
    (*(v3 + 8))(v6, v2);
    [v10 setLocale_];

    v12 = *(v1 + v7);
    *(v1 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

char *sub_22838AB34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter] = 0;
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier];
  v11 = *MEMORY[0x277D12788];
  v22 = sub_228392000();
  v23 = v12;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B65B0);

  *v10 = v22;
  v10[1] = v23;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item];
  v14 = type metadata accessor for FieldCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v24.receiver = v5;
  v24.super_class = v14;
  v15 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = sub_22838A740();
  [v16 addSubview_];

  v18 = &v15[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier];
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];

  sub_22838CC44(v20, v19);

  return v15;
}

void sub_22838ACF0()
{
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v35 - v3 + 22;
  sub_22826D838(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22839CC40;
  v6 = sub_22838A740();
  v7 = [v6 leadingAnchor];

  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
  v12 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [*&v0[v11] topAnchor];
  v17 = [v0 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v19;
  v20 = [*&v0[v11] bottomAnchor];
  v21 = [v0 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v5 + 56) = v23;
  v24 = [*&v0[v11] heightAnchor];
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v0[v25], v35);
  if (!v36)
  {
    sub_22838DAFC(v35, &qword_280DDCD50, sub_22817A700);
    v30 = type metadata accessor for FieldItem();
    (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
    goto LABEL_5;
  }

  sub_22817A700();
  v26 = type metadata accessor for FieldItem();
  v27 = swift_dynamicCast();
  v28 = *(v26 - 8);
  (*(v28 + 56))(v4, v27 ^ 1u, 1, v26);
  if ((*(v28 + 48))(v4, 1, v26) == 1)
  {
LABEL_5:
    sub_22838DAFC(v4, &qword_27D8287D8, type metadata accessor for FieldItem);
    v29 = 52.0;
    goto LABEL_6;
  }

  v29 = *&v4[*(v26 + 28)];
  sub_228294F90(v4);
LABEL_6:
  v31 = objc_opt_self();
  v32 = [v24 constraintGreaterThanOrEqualToConstant_];

  *(v5 + 64) = v32;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v33 = sub_228392190();

  [v31 activateConstraints_];
}

uint64_t sub_22838B204()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for FieldItem();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v16], v53);
  if (!v54)
  {
    sub_22838DAFC(v53, &qword_280DDCD50, sub_22817A700);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  sub_22817A700();
  v17 = swift_dynamicCast();
  (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_8:
    sub_22838DAFC(v10, &qword_27D8287D8, type metadata accessor for FieldItem);
    sub_228391150();
    v26 = v1;
    v27 = sub_2283911A0();
    v28 = sub_2283925C0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136446210;
      sub_22817E6C8(&v1[v16], v53);
      sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
      v31 = sub_228392040();
      v33 = sub_2281C96FC(v31, v32, &v52);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22816B000, v27, v28, "Incorrect view model for FieldCell: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAB7B80](v30, -1, -1);
      MEMORY[0x22AAB7B80](v29, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  sub_22838DB58(v10, v15);
  v18 = sub_22838A740();
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
  v20 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] constraints];
  if (!v20)
  {
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    sub_2283921A0();
    v20 = sub_228392190();
  }

  [v18 removeConstraints_];

  sub_22838ACF0();
  v21 = *&v1[v19];
  v22 = &v15[v11[5]];
  v23 = *(v22 + 1);
  if (v23)
  {
    v24 = *v22;
    v25 = v21;
    v23 = sub_228391FC0();
  }

  else
  {
    v25 = v21;
  }

  [v25 setText_];

  v35 = *&v1[v19];
  v36 = &v15[v11[6]];
  v37 = *(v36 + 1);
  if (v37)
  {
    v38 = *v36;
    v39 = v35;
    v37 = sub_228391FC0();
  }

  else
  {
    v39 = v35;
  }

  [v39 setPlaceholder_];

  [*&v1[v19] setContentVerticalAlignment_];
  v40 = *&v1[v19];
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  [v40 setContentHorizontalAlignment_];

  if (v15[v11[9]] == 1)
  {
    [*&v1[v19] setKeyboardType_];
  }

  if (v15[v11[11]] == 1)
  {
    [*&v1[v19] setClearButtonMode_];
  }

  [*&v1[v19] setEnabled_];
  if (*&v15[v11[14]])
  {
    v42 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v1 action:sel_didTapCell];
    [v1 addGestureRecognizer_];
  }

  else
  {
    v43 = [v1 gestureRecognizers];
    if (v43)
    {
      v44 = v43;
      sub_22817A958(0, &qword_27D8287F0, 0x277D75548);
      v45 = sub_2283921A0();

      if (v45 >> 62)
      {
        goto LABEL_37;
      }

      for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
      {
        v47 = 0;
        while (1)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x22AAB6D80](v47, v45);
          }

          else
          {
            if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v48 = *(v45 + 8 * v47 + 32);
          }

          v49 = v48;
          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          [v1 removeGestureRecognizer_];

          ++v47;
          if (v50 == i)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        ;
      }

LABEL_38:
    }
  }

  return sub_228294F90(v15);
}

uint64_t sub_22838B914()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for FieldItem();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v16], v34);
  if (v35)
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_22838DB58(v10, v15);
      v18 = &v15[*(v11 + 56)];
      v19 = *v18;
      if (*v18)
      {
        v20 = *(v18 + 1);
        v21 = sub_22838A740();
        LOBYTE(v20) = v19();

        if (v20)
        {
          v22 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField;
          [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField] setUserInteractionEnabled_];
          [*&v1[v22] becomeFirstResponder];
        }
      }

      return sub_228294F90(v15);
    }
  }

  else
  {
    sub_22838DAFC(v34, &qword_280DDCD50, sub_22817A700);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_22838DAFC(v10, &qword_27D8287D8, type metadata accessor for FieldItem);
  sub_228391150();
  v24 = v1;
  v25 = sub_2283911A0();
  v26 = sub_2283925C0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136446210;
    sub_22817E6C8(&v1[v16], v34);
    sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
    v29 = sub_228392040();
    v31 = sub_2281C96FC(v29, v30, &v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22816B000, v25, v26, "Incorrect view model for FieldCell: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAB7B80](v28, -1, -1);
    MEMORY[0x22AAB7B80](v27, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22838BD90(void *a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v5 = sub_2283911B0();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838FB30();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v48 - v13;
  v15 = type metadata accessor for FieldItem();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 text];
  if (v20)
  {
    v21 = v20;
    sub_228392000();
  }

  v22 = sub_228391FC0();

  v23 = sub_228391FC0();
  v55 = v22;
  v24 = [v22 stringByReplacingCharactersInRange:a2 withString:{v54, v23}];

  v25 = sub_228392000();
  v27 = v26;

  v28 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  v29 = v56;
  swift_beginAccess();
  sub_22817E6C8(v29 + v28, v58);
  if (!v59)
  {

    sub_22838DAFC(v58, &qword_280DDCD50, sub_22817A700);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_7;
  }

  sub_22817A700();
  v30 = swift_dynamicCast();
  (*(v16 + 56))(v14, v30 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

LABEL_7:
    sub_22838DAFC(v14, &qword_27D8287D8, type metadata accessor for FieldItem);
    v31 = v51;
    sub_228391150();
    v32 = v29;
    v33 = sub_2283911A0();
    v34 = sub_2283925C0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v29;
      v38 = v36;
      v57 = v36;
      *v35 = 136446210;
      sub_22817E6C8(v37 + v28, v58);
      sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
      v39 = sub_228392040();
      v41 = sub_2281C96FC(v39, v40, &v57);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_22816B000, v33, v34, "Incorrect view model for FieldCell: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAB7B80](v38, -1, -1);
      MEMORY[0x22AAB7B80](v35, -1, -1);
    }

    (*(v52 + 8))(v31, v53);
    goto LABEL_10;
  }

  sub_22838DB58(v14, v19);
  if (v19[*(v15 + 36)] == 1)
  {
    v44 = v48;
    sub_22838C388(v25, v27, v48);

    v42 = sub_22838FB20();

    (*(v49 + 8))(v44, v50);
    sub_228294F90(v19);
    return v42 & 1;
  }

  v45 = &v19[*(v15 + 40)];
  if ((v45[8] & 1) == 0)
  {
    v46 = *v45;
    v47 = sub_2283920C0();

    sub_228294F90(v19);
    v42 = v46 >= v47;
    return v42 & 1;
  }

  sub_228294F90(v19);

LABEL_10:
  v42 = 1;
  return v42 & 1;
}

id sub_22838C388@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  sub_22838DBBC(0, &unk_27D825D00, MEMORY[0x277CC9788]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v80 - v10;
  v12 = sub_22838F580();
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v80 - v16;
  v17 = sub_22838EEE0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v88 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  v92 = a1;
  v93 = a2;
  sub_22838EED0();
  v86 = sub_22819DFF4();
  v24 = sub_228392F70();
  v26 = v25;
  v29 = *(v18 + 8);
  v28 = v18 + 8;
  v27 = v29;
  v29(v23, v17);
  v30 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v30 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    v60 = *MEMORY[0x277D10DA0];
    v61 = sub_22838FB30();
    (*(*(v61 - 8) + 104))(a3, v60, v61);
  }

  v82 = v27;
  v31 = sub_22838A9DC();
  [v31 copy];

  sub_228392F90();
  swift_unknownObjectRelease();
  sub_22817A958(0, &unk_27D8287E0, 0x277CCABB8);
  swift_dynamicCast();
  v87 = v91;
  v80 = v4;
  v32 = sub_22838A740();
  v33 = [v32 textInputMode];

  v85 = v12;
  if (v33 && (v34 = [v33 primaryLanguage], v33, v34))
  {
    sub_228392000();

    v35 = v85;
    sub_22838F4B0();
    v36 = v89;
    (*(v89 + 56))(v11, 0, 1, v35);
    (*(v36 + 32))(v90, v11, v35);
  }

  else
  {
    v37 = v89;
    (*(v89 + 56))(v11, 1, 1, v12);
    sub_22838F540();
    if ((*(v37 + 48))(v11, 1, v12) != 1)
    {
      sub_22838DAFC(v11, &unk_27D825D00, MEMORY[0x277CC9788]);
    }
  }

  v83 = v17;
  v84 = a3;
  result = [v87 decimalSeparator];
  if (result)
  {
    v39 = result;
    v40 = sub_228392000();
    v42 = v41;

    v43 = v90;
    v44 = sub_22838F4E0();
    if (v45)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0xE000000000000000;
    }

    v92 = v40;
    v93 = v42;

    MEMORY[0x22AAB5C80](v46, v47);

    v48 = v88;
    sub_22838EEC0();

    v92 = v24;
    v93 = v26;
    v49 = sub_228392F70();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v52)
    {

      v82(v48, v83);
      (*(v89 + 8))(v43, v85);
      v62 = *MEMORY[0x277D10DA0];
      v63 = sub_22838FB30();
      return (*(*(v63 - 8) + 104))(v84, v62, v63);
    }

    v86 = v28;
    v53 = sub_228391FC0();
    v54 = v87;
    v55 = [v87 numberFromString_];

    v56 = v84;
    if (v55)
    {

      v57 = v85;
      v58 = v90;
      v59 = v83;
    }

    else
    {
      v58 = v90;
      v64 = sub_22838F4F0();
      [v54 setLocale_];

      v65 = sub_228391FC0();

      v55 = [v54 numberFromString_];

      v66 = [*(v80 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter) locale];
      if (v66)
      {
        v67 = v81;
        v68 = v66;
        sub_22838F530();

        v69 = sub_22838F4F0();
        v57 = v85;
        (*(v89 + 8))(v67, v85);
      }

      else
      {
        v69 = 0;
        v57 = v85;
      }

      v59 = v83;
      [v54 setLocale_];

      if (!v55)
      {
        goto LABEL_30;
      }
    }

    v70 = [v54 stringFromNumber_];
    if (v70)
    {
      v71 = v70;
      v72 = sub_228392000();
      v74 = v73;

      [v55 doubleValue];
      v76 = v75;

      v82(v88, v59);
      (*(v89 + 8))(v58, v57);
      *v56 = v72;
      v56[1] = v74;
      v56[2] = v76;
      v56[3] = v54;
      v77 = MEMORY[0x277D10DA8];
LABEL_31:
      v78 = *v77;
      v79 = sub_22838FB30();
      return (*(*(v79 - 8) + 104))(v56, v78, v79);
    }

LABEL_30:
    v82(v88, v59);
    (*(v89 + 8))(v58, v57);
    v77 = MEMORY[0x277D10D98];
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void sub_22838CC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = sub_22838A740();
    v16 = a1;
    v17 = a2;

    MEMORY[0x22AAB5C80](0x656946747865542ELL, 0xEA0000000000646CLL);
    v15 = sub_228391FC0();

    [v9 setAccessibilityIdentifier_];

    v10 = v15;
  }

  else
  {
    sub_228391150();
    v11 = sub_2283911A0();
    v12 = sub_2283925C0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22816B000, v11, v12, "Unable to set automation identifiers as there is no base identifier.", v13, 2u);
      MEMORY[0x22AAB7B80](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22838CE78(void *a1)
{
  v2 = v1;
  v40 = a1;
  v41 = sub_2283911B0();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838FB30();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22838DBBC(0, &qword_27D8287D8, type metadata accessor for FieldItem);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for FieldItem();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v20, v43);
  if (v44)
  {
    sub_22817A700();
    v21 = swift_dynamicCast();
    (*(v16 + 56))(v14, v21 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_22838DB58(v14, v19);
      v22 = [v40 text];
      if (v22)
      {
        v23 = v22;
        v24 = sub_228392000();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      if (v19[*(v15 + 36)] != 1 || (sub_22838C388(v24, v26, v10), v36 = sub_22838FB20(), (*(v39 + 8))(v10, v7), (v36 & 1) != 0))
      {
        v37 = &v19[*(v15 + 52)];
        v38 = *(v37 + 1);
        (*v37)(v19, v24, v26);
      }

      return sub_228294F90(v19);
    }
  }

  else
  {
    sub_22838DAFC(v43, &qword_280DDCD50, sub_22817A700);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_22838DAFC(v14, &qword_27D8287D8, type metadata accessor for FieldItem);
  sub_228391150();
  v27 = v2;
  v28 = sub_2283911A0();
  v29 = sub_2283925C0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136446210;
    sub_22817E6C8(v2 + v20, v43);
    sub_22838DBBC(0, &qword_280DDCD50, sub_22817A700);
    v32 = sub_228392040();
    v34 = sub_2281C96FC(v32, v33, &v42);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_22816B000, v28, v29, "Incorrect view model for FieldCell: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAB7B80](v31, -1, -1);
    MEMORY[0x22AAB7B80](v30, -1, -1);
  }

  return (*(v3 + 8))(v6, v41);
}

id sub_22838D3E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FieldCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22838D49C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22838D4F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22838B204();
  return sub_22838DAFC(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22838D57C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22838D5E0;
}

uint64_t sub_22838D5E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22838B204();
  }

  return result;
}

uint64_t sub_22838D638()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_22838D694(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_22838D6F8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _s19HealthMedicationsUI9FieldItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldItem();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_228393460();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_21;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

LABEL_21:
    v21 = 0;
    return v21 & 1;
  }

  if (!v17)
  {
    goto LABEL_21;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_228393460();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_19:
  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    goto LABEL_21;
  }

  v21 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  return v21 & 1;
}

void sub_22838D98C()
{
  sub_22838F4A0();
  if (v0 <= 0x3F)
  {
    sub_22826D838(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22826D838(319, &unk_27D8262B8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ContentVerticalAlignment(319);
        if (v3 <= 0x3F)
        {
          sub_2281C35D8();
          if (v4 <= 0x3F)
          {
            sub_22838DBBC(319, &unk_27D826FC0, sub_2281C35D8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22838DAFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22838DBBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22838DB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22838DBBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22838DC10()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___textField) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell____lazy_storage___numberFormatter) = 0;
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_baseIdentifier);
  v2 = *MEMORY[0x277D12788];
  v5 = sub_228392000();
  v6 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000016, 0x80000002283B65B0);

  *v1 = v5;
  v1[1] = v6;
  v4 = v0 + OBJC_IVAR____TtC19HealthMedicationsUI9FieldCell_item;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_22838DD0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id MedicationListAllDataProvider.__allocating_init(displayType:profile:medication:predicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
  *&v9[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
  *&v9[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = a3;
  *&v9[v10] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithDisplayType_profile_, a1, a2);

  return v11;
}

id MedicationListAllDataProvider.init(displayType:profile:medication:predicate:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = a3;
  *&v4[v7] = a4;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for MedicationListAllDataProvider();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDisplayType_profile_, a1, a2);

  return v8;
}

id sub_22838DF40()
{
  v1 = v0;
  v14 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 semanticIdentifier];
    v5 = [v4 stringValue];

    if (!v5)
    {
      sub_228392000();
      v5 = sub_228391FC0();
    }

    v6 = [objc_opt_self() predicateForMedicationDoseEventWithMedicationIdentifier_];

    MEMORY[0x22AAB5D20]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2283921E0();
    }

    sub_228392230();
  }

  v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate);
  if (v7)
  {
    v8 = v7;
    MEMORY[0x22AAB5D20]();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2283921E0();
    }

    sub_228392230();
  }

  sub_22817A958(0, &qword_280DDBB08, 0x277CCAC30);
  v9 = sub_228392190();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

uint64_t sub_22838E190(uint64_t a1)
{
  swift_getObjectType();
  sub_2281BC4A4(a1, &v6);
  sub_22817A958(0, &qword_27D828808, 0x277CCD650);
  if (swift_dynamicCast())
  {
    v2 = sub_2281A23C0();

    return v2;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
    sub_2283931D0();

    v6 = 0xD000000000000023;
    v7 = 0x80000002283B6640;
    v4 = sub_228393600();
    MEMORY[0x22AAB5C80](v4);

    MEMORY[0x22AAB5C80](0x726F662874786574, 0xEA0000000000293ALL);
    result = sub_228393300();
    __break(1u);
  }

  return result;
}

uint64_t sub_22838E464()
{
  swift_getObjectType();
  v1 = sub_22838F740();
  v2 = [v0 objectAtIndex:v1 forSection:sub_22838F750()];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = [v0 profileName];
    if (v5)
    {
      v6 = v5;
      sub_228392000();

      v7 = v0;
      swift_unknownObjectRetain();
      v8 = sub_228391FC0();
    }

    else
    {
      v9 = v0;
      swift_unknownObjectRetain();
      v8 = 0;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277D12818]) initWithSample:v4 usingInsetStyling:1 profileName:v8 delegate:v0];
    swift_unknownObjectRelease_n();

    return v10;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_2283931D0();

    v12 = sub_228393600();
    MEMORY[0x22AAB5C80](v12);

    MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283B6670);
    result = sub_228393300();
    __break(1u);
  }

  return result;
}

id MedicationListAllDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationListAllDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationListAllDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NicknameNotesStepViewController()
{
  result = qword_27D828810;
  if (!qword_27D828810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22838EAC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NicknameNotesStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22838EB00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = [v2 scheduledDateTime];
  sub_22838F3E0();

  if (a1 < 0 && __OFSUB__(0, a1))
  {
    __break(1u);
  }

  else
  {
    sub_22838F370();
    v16 = *(v5 + 8);
    v16(v12, v4);
    (*(v5 + 16))(v9, v14, v4);
    v17 = [v2 notificationSent];
    v18 = [v2 doses];
    if (!v18)
    {
      sub_22825A9CC();
      sub_2283921A0();
      v18 = sub_228392190();
    }

    v19 = objc_allocWithZone(MEMORY[0x277D11588]);
    v20 = sub_22838F380();
    [v19 initWithScheduledDateTime:v20 notificationSent:v17 doses:v18];

    v16(v9, v4);
    v16(v14, v4);
  }
}

unint64_t sub_22838EDB0()
{
  result = qword_27D828820;
  if (!qword_27D828820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D828820);
  }

  return result;
}