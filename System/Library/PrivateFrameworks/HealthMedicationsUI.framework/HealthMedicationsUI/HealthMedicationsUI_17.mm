uint64_t sub_228320CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22831BFF4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228320D2C()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_22831C960(v0[2]);
}

uint64_t type metadata accessor for MedicationsLogDataSource()
{
  result = qword_280DDCCE0;
  if (!qword_280DDCCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_228320E1C(uint64_t a1)
{
  v2 = qword_280DDCCF0;
  v3 = *(v1 + qword_280DDCCF0);
  *(v1 + qword_280DDCCF0) = a1;

  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    v17 = *(v1 + v2);
    v5 = sub_2283930D0();
    v4 = v17;
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_13:
    sub_22819578C(v6);

    sub_22838FF60();
  }

  v20 = MEMORY[0x277D84F90];
  v7 = v4;

  result = sub_2281CA04C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v20;
    type metadata accessor for MedicationDoseLogMedicationCell();
    v9 = 0;
    v10 = v1 + qword_280DDCCF8;
    v11 = v7;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x22AAB6D80](v9, v11);
      }

      else
      {
        v12 = *(v11 + 8 * v9 + 32);
      }

      swift_unknownObjectWeakLoadStrong();
      v13 = *(v10 + 8);
      sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell);
      v18[0] = sub_22838FBB0();
      v18[1] = v14;
      v19 = 0;
      swift_unknownObjectWeakInit();
      v18[2] = v12;
      v19 = v13;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      v20 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2281CA04C((v15 > 1), v16 + 1, 1);
        v6 = v20;
      }

      ++v9;
      *(v6 + 16) = v16 + 1;
      sub_2281D3334(v18, v6 + 40 * v16 + 32);
      v11 = v7;
    }

    while (v5 != v9);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22832108C()
{
  v1 = *(v0 + qword_280DDCD00 + 8);

  v2 = *(v0 + qword_280DDCCF0);

  v3 = v0 + qword_280DDCCF8;

  return sub_22818B730(v3);
}

uint64_t sub_2283210E0()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_280DDCD00 + 8);

  v2 = *(v0 + qword_280DDCCF0);

  sub_22818B730(v0 + qword_280DDCCF8);

  return swift_deallocClassInstance();
}

uint64_t sub_228321194()
{
  type metadata accessor for MedicationDoseLogMedicationCell();
  sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell);
  return sub_2283926B0();
}

uint64_t sub_228321204@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (*v1 + qword_280DDCD00);
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];

    sub_228391500();
    v8 = sub_22838FB60();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_22838FB50();
    a1[3] = v8;
    result = sub_228321B10(&qword_27D823960, MEMORY[0x277D10E18]);
    a1[4] = result;
    *a1 = v11;
  }

  else
  {
    a1[3] = sub_22838FC00();
    a1[4] = sub_228321B10(&qword_27D823958, MEMORY[0x277D10EC8]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_22838FBF0();
  }

  return result;
}

void *sub_228321434(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a5;
  v10 = sub_22838F4A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v6 + qword_280DDCD00);
  *v14 = 0;
  v14[1] = 0;
  *(v6 + qword_280DDCCF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_280DDCCF0) = a1;
  v15 = v14[1];
  *v14 = a2;
  v14[1] = a3;

  if (!(a1 >> 62))
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v11;
    v41 = v10;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_16:

    v18 = MEMORY[0x277D84F90];
LABEL_17:
    sub_22819F3B0();
    v29 = *(sub_22838FEF0() - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    sub_22819578C(v18);

    v32 = v39;
    sub_22838F490();
    sub_22838F450();
    v33 = v41;
    v34 = *(v40 + 8);
    v34(v32, v41);
    sub_22838FED0();
    v43[0] = 0;
    v43[1] = 0xE000000000000000;
    sub_2283931D0();

    strcpy(v43, "MutableArray<");
    HIWORD(v43[1]) = -4864;
    sub_22838F490();
    v35 = sub_22838F450();
    v37 = v36;
    v34(v32, v33);
    MEMORY[0x22AAB5C80](v35, v37);

    MEMORY[0x22AAB5C80](62, 0xE100000000000000);
    return sub_22838FF30();
  }

  v16 = sub_2283930D0();
  v40 = v11;
  v41 = v10;
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_3:
  v46 = MEMORY[0x277D84F90];
  result = sub_2281CA04C(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v38[1] = v6;
    v18 = v46;
    type metadata accessor for MedicationDoseLogMedicationCell();
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v20 = MEMORY[0x22AAB6D80](i, a1);
        sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell);
        swift_unknownObjectRetain();
        v43[0] = sub_22838FBB0();
        v43[1] = v21;
        v45 = 0;
        swift_unknownObjectWeakInit();
        v44 = v20;
        v45 = v42;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v46 = v18;
        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2281CA04C((v22 > 1), v23 + 1, 1);
          v18 = v46;
        }

        *(v18 + 16) = v23 + 1;
        sub_2281D3334(v43, v18 + 40 * v23 + 32);
      }
    }

    else
    {
      sub_228321B10(&unk_280DDCD40, type metadata accessor for MedicationDoseLogMedicationCell);
      v24 = 32;
      do
      {
        v25 = *(a1 + v24);
        swift_unknownObjectRetain();

        v43[0] = sub_22838FBB0();
        v43[1] = v26;
        v45 = 0;
        swift_unknownObjectWeakInit();
        v44 = v25;
        v45 = v42;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v46 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2281CA04C((v27 > 1), v28 + 1, 1);
          v18 = v46;
        }

        *(v18 + 16) = v28 + 1;
        sub_2281D3334(v43, v18 + 40 * v28 + 32);
        v24 += 8;
        --v16;
      }

      while (v16);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_228321964(void *a1)
{
  v2 = v1;
  v4 = sub_2283900D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [a1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (*(v2 + qword_280DDCD00 + 8))
  {
    sub_228390010();
  }

  else
  {
    sub_228390040();
  }

  if (v10 == 2)
  {
    v11 = 64.0;
  }

  else
  {
    v11 = 8.0;
  }

  v12 = sub_228390090();
  *(v13 + 8) = v11;
  v12(v18, 0);
  v14 = sub_228390090();
  *(v15 + 24) = v11;
  v14(v18, 0);
  sub_228390070();
  v16 = sub_2283900C0();
  (*(v5 + 8))(v8, v4);
  return v16;
}

uint64_t sub_228321B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228321B58(uint64_t a1, uint64_t a2)
{
  sub_228321CC4(0xD000000000000015, 0x80000002283ABB40, a2);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_2281BC044();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_228397F40;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_22838F0C0();

  if (*(v3 + 16))
  {
    v7 = sub_228391FD0();

    return v7;
  }

  else
  {

    return v6;
  }
}

uint64_t sub_228321CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v3 = 0xE800000000000000;
      v4 = 0x4554415245444F4DLL;
      goto LABEL_10;
    }

    if (a3 == 4)
    {
      v3 = 0xE500000000000000;
      v4 = 0x524F4E494DLL;
      goto LABEL_10;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v3 = 0xE800000000000000;
      v4 = 0x4C41434954495243;
LABEL_10:

      MEMORY[0x22AAB5C80](v4, v3);

      return a1;
    }

    if (a3 == 2)
    {
      v3 = 0xE700000000000000;
      v4 = 0x53554F49524553;
      goto LABEL_10;
    }
  }

  result = sub_228393300();
  __break(1u);
  return result;
}

unint64_t sub_228321DE4()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  v8 = *(v0 + 16);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_2283931D0();

  v21 = 0xD000000000000014;
  v22 = 0x80000002283B4330;
  v9 = [v6 semanticIdentifier];
  v10 = [v9 stringValue];

  v11 = sub_228392000();
  v13 = v12;

  MEMORY[0x22AAB5C80](v11, v13);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v18 = v7;
  v19 = v6;
  v20 = v8;
  LoggableDose.scheduleDate.getter(v5);
  v14 = sub_22838F420();
  (*(v2 + 8))(v5, v1);
  v17 = v14;
  v15 = sub_228393420();
  MEMORY[0x22AAB5C80](v15);

  return v21;
}

uint64_t sub_228321FBC()
{
  v1 = sub_22838F440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = v7;
  sub_228392C70();

  v12 = v9;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_228390F20();
  sub_2283920B0();

  v12 = v6;
  v13 = v7;
  v14 = v8;
  LoggableDose.scheduleDate.getter(v5);
  sub_228324EB8(&qword_27D825C90, MEMORY[0x277CC9578]);
  sub_228391F70();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_228322150()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  sub_228393520();
  sub_228321FBC();
  return sub_228393570();
}

uint64_t sub_2283221B8()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  sub_228393520();
  sub_228321FBC();
  return sub_228393570();
}

uint64_t sub_228322220(uint64_t a1)
{
  v2 = sub_2282E333C();

  return MEMORY[0x282169440](a1, v2);
}

id sub_22832226C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228322304()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setNumberOfLines_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_228322444(uint64_t a1)
{
  v2 = sub_2283911B0();
  v111 = *(v2 - 8);
  v112 = v2;
  v3 = v111[8];
  MEMORY[0x28223BE20](v2);
  v110 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_228324C10(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v96 - v8;
  v107 = sub_2283912D0();
  v106 = *(v107 - 8);
  v10 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v104 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_228391280();
  v105 = *(v109 - 8);
  v12 = *(v105 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228324C10(0, &qword_280DDBD20, MEMORY[0x277D116C8], v5);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v96 - v16;
  v18 = sub_22838F250();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22838F270();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v103 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22838F440();
  v102 = *(v27 - 8);
  v28 = *(v102 + 64);
  MEMORY[0x28223BE20](v27);
  v101 = v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228324C74(a1, v119, &qword_280DDCD50, sub_22817A700);
  if (v120)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v98 = v27;
      v30 = v24;
      v31 = v22;
      v32 = v23;
      v33 = v17;
      v34 = v114;
      v35 = v115;
      v99 = v18;
      v36 = v116;
      v100 = v9;
      sub_22819A598(v114, v115, v116);
      sub_2282E32E8(v34, v35, v36);

      v37 = v35;
      v38 = v35;
      v39 = v19;
      v40 = v113;
      v17 = v33;
      v23 = v32;
      v22 = v31;
      v24 = v30;
      v27 = v98;
      sub_2282E32E8(v34, v38, v36);
      v41 = [v37 semanticIdentifier];

      v42 = [v41 stringValue];
      sub_228392000();

      v43 = *&v40[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_detailProvider];

      v19 = v39;
      sub_228390B90();
      v18 = v99;

      v9 = v100;
    }
  }

  else
  {
    sub_228324CF4(v119, &qword_280DDCD50, sub_22817A700);
  }

  v44 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  v45 = v113;
  swift_beginAccess();
  sub_228324C74(&v45[v44], v119, &qword_280DDCD50, sub_22817A700);
  if (v120)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v99 = v18;
      v96[1] = v17;
      v98 = v27;
      v46 = v114;
      v47 = v115;
      v48 = v116;
      v112 = v117;
      v96[2] = v118;
      v49 = v22;
      v50 = v23;
      v51 = sub_228322304();
      v111 = v46;
      v114 = v46;
      v115 = v47;
      v97 = v48;
      v116 = v48;
      v52 = v101;
      LoggableDose.scheduleDate.getter(v101);
      v53 = v103;
      sub_22838F260();
      sub_22838F240();
      sub_22838F400();
      v100 = v9;
      (*(v19 + 8))(v49, v99);
      (*(v24 + 8))(v53, v50);
      (*(v102 + 8))(v52, v98);
      v54 = sub_228391FC0();

      [v51 setText_];

      v55 = v113;
      v56 = sub_22832226C();
      v110 = v47;
      v57 = v47;
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();

      sub_228390950();
      v58 = *&v55[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_detailProvider];

      v59 = [v57 semanticIdentifier];
      v60 = [v59 stringValue];

      sub_228392000();
      sub_228390B80();

      sub_228324C10(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      v61 = *(sub_2283912F0() - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      *(swift_allocObject() + 16) = xmmword_228397F40;
      sub_22817A958(0, &qword_27D827890, 0x277D750C8);
      sub_22827CAB8();
      v64 = sub_228392C90();
      sub_22817A958(0, &unk_280DDB940, 0x277D75220);
      v65 = v64;
      v66 = sub_228392E20();
      [v66 setUserInteractionEnabled_];
      sub_22820DC6C();
      v68 = v105;
      v69 = v104;
      v70 = &v104[*(v67 + 48)];
      v71 = *MEMORY[0x277D74A98];
      v72 = sub_228391220();
      (*(*(v72 - 8) + 104))(v69, v71, v72);
      *v70 = sub_2281AF1B4;
      v70[1] = 0;
      (*(v106 + 104))(v69, *MEMORY[0x277D74AD8], v107);
      v73 = sub_228391230();
      (*(*(v73 - 8) + 56))(v100, 1, 1, v73);
      v74 = v108;
      sub_228391270();

      sub_2283911D0();
      (*(v68 + 8))(v74, v109);
      sub_2283928F0();
      v75 = *MEMORY[0x277D12788];
      v114 = sub_228392000();
      v115 = v76;

      MEMORY[0x22AAB5C80](0xD00000000000001ELL, 0x80000002283B42E0);

      v77 = v114;
      v78 = v115;
      v79 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel;
      v80 = [*&v55[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel] text];
      if (!v80)
      {
        v80 = [*&v113[v79] description];
      }

      v81 = v80;
      v82 = sub_228392000();
      v84 = v83;

      v114 = v77;
      v115 = v78;

      MEMORY[0x22AAB5C80](v82, v84);

      v85 = sub_228391FC0();

      [v113 setAccessibilityIdentifier_];

      sub_2282E32E8(v111, v110, v97);
    }
  }

  else
  {
    sub_228324CF4(v119, &qword_280DDCD50, sub_22817A700);
  }

  v87 = v110;
  sub_228391150();
  v88 = v113;
  v89 = sub_2283911A0();
  v90 = sub_2283925C0();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v119[0] = v92;
    *v91 = 136315138;
    sub_228324C74(&v113[v44], &v114, &qword_280DDCD50, sub_22817A700);
    sub_228324C10(0, &qword_280DDCD50, sub_22817A700, MEMORY[0x277D83D88]);
    v93 = sub_228392040();
    v95 = sub_2281C96FC(v93, v94, v119);

    *(v91 + 4) = v95;
    _os_log_impl(&dword_22816B000, v89, v90, "Incorrect view model for ScheduledDetailItem: %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x22AAB7B80](v92, -1, -1);
    MEMORY[0x22AAB7B80](v91, -1, -1);
  }

  return (v111[1])(v87, v112);
}

void (*sub_2283231E4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_228324C74(v1 + v5, v4, &qword_280DDCD50, sub_22817A700);
  return sub_228323298;
}

void sub_228323298(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_228324C74(*a1, v2 + 40, &qword_280DDCD50, sub_22817A700);
    sub_228324C74(v3 + v4, v2 + 80, &qword_280DDCD50, sub_22817A700);
    swift_beginAccess();
    sub_22818FD64(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_228322444(v2 + 80);
    sub_228324CF4(v2 + 80, &qword_280DDCD50, sub_22817A700);
  }

  else
  {
    sub_228324C74(v3 + v4, v2 + 40, &qword_280DDCD50, sub_22817A700);
    swift_beginAccess();
    sub_22818FD64(v2, v3 + v4);
    swift_endAccess();
    sub_228322444(v2 + 40);
  }

  sub_228324CF4(v2 + 40, &qword_280DDCD50, sub_22817A700);
  sub_228324CF4(v2, &qword_280DDCD50, sub_22817A700);

  free(v2);
}

char *sub_2283233F0(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228324C10(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v65 - v16;
  v18 = sub_2283913A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel] = 0;
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_detailProvider;
  sub_228390BB0();
  *&v4[v23] = sub_228390BA0();
  v24 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item];
  v25 = type metadata accessor for ScheduledDetailItemCell();
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  v69.receiver = v4;
  v69.super_class = v25;
  v26 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228391390();
  v27 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  v67 = v18;
  v68 = v19;
  (*(v19 + 16))(v17, v22, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  MEMORY[0x22AAB6420](v17);
  v28 = [v26 contentView];
  v29 = sub_22832226C();
  [v28 addSubview_];

  v30 = [v26 &selRef_didTapDay_];
  v31 = sub_228322304();
  [v30 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v33 = v32;
  (*(v10 + 8))(v13, v9);
  v66 = objc_opt_self();
  sub_228180ED0();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_228399190;
  v35 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView;
  v36 = [*&v26[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView] leadingAnchor];
  v37 = [v26 &selRef_didTapDay_];
  v38 = [v37 leadingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:v33];
  *(v34 + 32) = v39;
  v40 = [*&v26[v35] centerYAnchor];
  v41 = [v26 &selRef_didTapDay_];
  v42 = [v41 centerYAnchor];

  v43 = [v40 constraintEqualToAnchor_];
  *(v34 + 40) = v43;
  v44 = [*&v26[v35] widthAnchor];
  v45 = [v44 constraintEqualToConstant_];

  *(v34 + 48) = v45;
  v46 = [*&v26[v35] heightAnchor];
  v47 = [v46 constraintEqualToConstant_];

  *(v34 + 56) = v47;
  v48 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel;
  v49 = [*&v26[OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel] leadingAnchor];
  v50 = [*&v26[v35] trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:8.0];

  *(v34 + 64) = v51;
  v52 = [*&v26[v48] centerYAnchor];
  v53 = [v26 contentView];
  v54 = [v53 centerYAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v34 + 72) = v55;
  v56 = [*&v26[v48] trailingAnchor];
  v57 = [v26 contentView];
  v58 = [v57 trailingAnchor];

  v59 = [v56 constraintEqualToAnchor_];
  *(v34 + 80) = v59;
  v60 = [v26 contentView];

  v61 = [v60 heightAnchor];
  v62 = [v61 constraintGreaterThanOrEqualToConstant_];

  *(v34 + 88) = v62;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v63 = sub_228392190();

  [v66 activateConstraints_];

  (*(v68 + 8))(v22, v67);
  return v26;
}

uint64_t sub_228323B6C()
{
  v1 = v0;
  sub_228324C10(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = sub_228391330();
  v13 = type metadata accessor for ScheduledDetailItemCell();
  v21.receiver = v1;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, sel__bridgedUpdateConfigurationUsingState_, v12);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v14 = sub_2283913A0();
    if ((*(*(v14 - 8) + 48))(v11, 1, v14))
    {
      v15 = MEMORY[0x277D74BD0];
      sub_228324C74(v11, v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v9);
      v16 = v11;
      return sub_228324CF4(v16, &unk_280DDBCD0, v15);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v19 = v11;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v17 = sub_2283913A0();
    if ((*(*(v17 - 8) + 48))(v6, 1, v17))
    {
      v15 = MEMORY[0x277D74BD0];
      sub_228324C74(v6, v9, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v9);
      v16 = v6;
      return sub_228324CF4(v16, &unk_280DDBCD0, v15);
    }

    v20 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v19 = v6;
  }

  return MEMORY[0x22AAB6420](v19);
}

id sub_228323FC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduledDetailItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22832409C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  return sub_228324C74(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_228324110(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  sub_228324C74(v1 + v3, v5, &qword_280DDCD50, sub_22817A700);
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228322444(v5);
  sub_228324CF4(a1, &qword_280DDCD50, sub_22817A700);
  return sub_228324CF4(v5, &qword_280DDCD50, sub_22817A700);
}

void (*sub_2283241E4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_2283231E4(v2);
  return sub_22819467C;
}

uint64_t sub_228324254(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v6 = sub_228391DC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391DF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  sub_228324C74(v3 + v16, v46, &qword_280DDCD50, sub_22817A700);
  if (!v47)
  {
    return sub_228324CF4(v46, &qword_280DDCD50, sub_22817A700);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v37 = v7;
  v38 = a1;
  v35 = v12;
  v36 = v11;
  v18 = aBlock;
  v19 = v41;
  v20 = v42;
  sub_22819A598(aBlock, v41, v42);
  sub_2282E32E8(v18, v19, v20);

  v21 = v19;
  sub_2282E32E8(v18, v19, v20);
  v22 = [v21 semanticIdentifier];
  v23 = [v22 stringValue];

  v24 = sub_228392000();
  v26 = v25;

  if (v24 == a2 && v26 == v39)
  {

    v27 = v38;
  }

  else
  {
    v28 = sub_228393460();

    v27 = v38;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v29 = sub_228392790();
  v30 = sub_22832226C();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v27;
  v44 = sub_228324BF0;
  v45 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_228191E9C;
  v43 = &block_descriptor_28;
  v32 = _Block_copy(&aBlock);
  v33 = v27;

  sub_228391DE0();
  aBlock = MEMORY[0x277D84F90];
  sub_228324EB8(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_228324C10(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v15, v10, v32);
  _Block_release(v32);

  (*(v37 + 8))(v10, v6);
  return (*(v35 + 8))(v15, v36);
}

uint64_t sub_2283246F0()
{
  sub_228324C10(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  return sub_228390950();
}

uint64_t sub_228324844(uint64_t a1, uint64_t a2)
{
  v4 = sub_22838F440();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *(a1 + 8);
  v32 = *a1;
  v31 = *(a1 + 16);
  v13 = *a2;
  v14 = *(a2 + 8);
  v33 = *(a2 + 16);
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v15 = v12;
  v16 = v14;
  LOBYTE(a2) = sub_228392C60();

  if ((a2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v28 = v13;
  v29 = v5;
  v30 = v4;
  v37 = v15;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v17 = sub_228390F20();
  v19 = v18;
  v37 = v16;
  if (v17 != sub_228390F20() || v19 != v20)
  {
    v24 = sub_228393460();

    v22 = v29;
    v21 = v30;
    v23 = v28;
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_7:
    v25 = 0;
    return v25 & 1;
  }

  v22 = v29;
  v21 = v30;
  v23 = v28;
LABEL_6:
  v37 = v32;
  v38 = v12;
  v39 = v31;
  LoggableDose.scheduleDate.getter(v11);
  v34 = v23;
  v35 = v14;
  v36 = v33;
  LoggableDose.scheduleDate.getter(v9);
  v25 = sub_22838F3D0();
  v26 = *(v22 + 8);
  v26(v9, v21);
  v26(v11, v21);
  return v25 & 1;
}

uint64_t sub_228324AC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  swift_beginAccess();
  sub_228324C74(v1 + v3, v9, &qword_280DDCD50, sub_22817A700);
  if (!v10)
  {
    return sub_228324CF4(v9, &qword_280DDCD50, sub_22817A700);
  }

  sub_22817A700();
  result = swift_dynamicCast();
  if (result)
  {

    sub_2282E32E8(v5, v6, v7);

    v8(a1);
  }

  return result;
}

uint64_t sub_228324BF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2283246F0();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228324C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228324C74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228324C10(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_228324CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228324C10(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_228324D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228324DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228324E0C()
{
  result = qword_27D827E60;
  if (!qword_27D827E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827E60);
  }

  return result;
}

unint64_t sub_228324E64()
{
  result = qword_27D827E68;
  if (!qword_27D827E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827E68);
  }

  return result;
}

uint64_t sub_228324EB8(unint64_t *a1, void (*a2)(uint64_t))
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

void UITextViewWithPlaceholder.text.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_228391FC0();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setText_, v5);

  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_text);
  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_setText_, v6);

  sub_2283255A4();
}

void UITextViewWithPlaceholder.placeholder.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283251B8();
  if (a2)
  {
    v4 = sub_228391FC0();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

uint64_t UITextViewWithPlaceholder.placeholder.getter()
{
  v0 = sub_2283251B8();
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_228392000();

  return v2;
}

void sub_2283250BC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_2283251B8();
  v5 = [v4 text];

  if (v5)
  {
    v6 = sub_228392000();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_228325134(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_2283251B8();
  if (v3)
  {
    v6 = sub_228391FC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setText_];
}

id sub_2283251B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel);
  }

  else
  {
    v4 = sub_2283258B0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*UITextViewWithPlaceholder.placeholder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = sub_2283251B8();
  v4 = [v3 text];

  if (v4)
  {
    v5 = sub_228392000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_2283252AC;
}

void sub_2283252AC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1[2] + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel);
  if (a2)
  {
    if (v2)
    {
      v4 = *a1;
      v7 = v3;

      v5 = sub_228391FC0();
    }

    else
    {
      v7 = v3;
      v5 = 0;
    }

    [v7 setText_];
  }

  else if (v2)
  {
    v6 = *a1;
    v7 = v3;
    v5 = sub_228391FC0();

    [v7 setText_];
  }

  else
  {
    v7 = v3;
    v5 = 0;
    [v7 setText_];
  }
}

uint64_t UITextViewWithPlaceholder.text.getter()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_text);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_228392000();

  return v3;
}

void sub_2283255A4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_2283251B8();
  v3 = [v2 isHidden];

  v4 = OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel;
  v5 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel];
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = v5;
  v7 = objc_msgSendSuper2(&v14, sel_text);
  if (v7)
  {
    v8 = v7;
    v9 = sub_228392000();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  [v6 setHidden_];

  if (v3)
  {
    if (([*&v0[v4] isHidden] & 1) == 0)
    {
      [v0 setNeedsLayout];
    }
  }
}

void (*UITextViewWithPlaceholder.text.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 96) = v2;
  ObjectType = swift_getObjectType();
  v5[1].receiver = v2;
  v5[6].super_class = ObjectType;
  v5[1].super_class = ObjectType;
  v7 = objc_msgSendSuper2(v5 + 1, sel_text);
  if (v7)
  {
    v8 = v7;
    v9 = sub_228392000();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5->receiver = v9;
  v5->super_class = v11;
  return sub_228325788;
}

void sub_228325788(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  if (a2)
  {
    if (v3)
    {
      v4 = *v2;
      v5 = (*a1)[1];

      v6 = sub_228391FC0();
    }

    else
    {
      v6 = 0;
    }

    *(v2 + 2) = *(v2 + 6);
    objc_msgSendSuper2(v2 + 2, sel_setText_, v6);

    v9 = v2[1];
  }

  else
  {
    if (v3)
    {
      v7 = *v2;
      v8 = sub_228391FC0();
    }

    else
    {
      v8 = 0;
    }

    v10 = v2[12];
    v11 = v2[13];
    v2[6] = v10;
    v2[7] = v11;
    objc_msgSendSuper2(v2 + 3, sel_setText_, v8);

    v2[8] = v10;
    v2[9] = v11;
    v12 = objc_msgSendSuper2(v2 + 4, sel_text);
    v2[10] = v10;
    v2[11] = v11;
    objc_msgSendSuper2(v2 + 5, sel_setText_, v12);

    sub_2283255A4();
  }

  free(v2);
}

id sub_2283258B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() placeholderTextColor];
  [v0 setTextColor_];

  [v0 setContentMode_];
  [v0 setNumberOfLines_];
  return v0;
}

id UITextViewWithPlaceholder.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id UITextViewWithPlaceholder.init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel] = 0;
  *&v5[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription] = 0;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);
  v13 = sub_2283251B8();
  [v12 addSubview_];

  sub_228325AE0();
  return v12;
}

uint64_t sub_228325AE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_228392830();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282355CC();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F40;
  v9 = sub_228391640();
  v10 = MEMORY[0x277D74DB8];
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();

  v11 = [objc_opt_self() defaultCenter];
  v12 = *MEMORY[0x277D77218];
  sub_228392840();

  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = ObjectType;
  sub_228326334();
  v14 = v1;
  v15 = sub_228391AC0();

  (*(v4 + 8))(v7, v3);
  v16 = *&v14[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription];
  *&v14[OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription] = v15;
}

void sub_228325DE8()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setFont_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2283251B8();

    [v5 setFont_];
  }
}

void sub_228325EC8(uint64_t a1, void *a2)
{
  sub_22838EF70();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      v3 = a2;
      v4 = sub_228392C60();

      if (v4)
      {
        sub_2283255A4();
      }
    }
  }

  else
  {
    sub_2281AC998(v6);
  }
}

id UITextViewWithPlaceholder.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void UITextViewWithPlaceholder.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder_textDidChangeSubscription) = 0;
  sub_228393300();
  __break(1u);
}

Swift::Void __swiftcall UITextViewWithPlaceholder.layoutSubviews()()
{
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = sub_2283251B8();
  v2 = [v1 isHidden];

  if ((v2 & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC19HealthMedicationsUI25UITextViewWithPlaceholder____lazy_storage___placeholderLabel;
    [v0 bringSubviewToFront_];
    [v0 textContainerInset];
    v5 = v4;
    v7 = v6;
    v8 = [v0 textContainer];
    [v8 lineFragmentPadding];
    v10 = v9;

    v11 = [v0 textContainer];
    [v11 lineFragmentPadding];

    [v0 bounds];
    v16 = UIEdgeInsetsInsetRect(v12, v13, v14, v15, v5, v7 + v10);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [*&v0[v3] sizeThatFits_];
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    [*&v0[v3] setFrame_];
  }
}

id UITextViewWithPlaceholder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228326334()
{
  result = qword_27D827528;
  if (!qword_27D827528)
  {
    sub_228392830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827528);
  }

  return result;
}

uint64_t sub_22832638C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2283263D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22832642C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  if (!(*(v4 + 40))(v3, v4))
  {
    goto LABEL_9;
  }

  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v5);
  (*(v6 + 48))(v21, v5, v6);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_0(v21, v22);
    v7 = sub_22838F960();
    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_22823203C(v21, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
  }

  sub_228326D54(v21);
  sub_22817E6C8(v21, &v19);
  if (v20)
  {
    sub_22816DFFC(&v19, v16);
    sub_2282320AC(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F40;
    v9 = v17;
    v10 = v18;
    v11 = __swift_project_boxed_opaque_existential_0(v16, v17);
    *(v8 + 56) = v9;
    *(v8 + 64) = *(v10 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_22838FEB0();
    sub_22823203C(v21, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v13 = sub_22838FEF0();
    (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  sub_22823203C(v21, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
LABEL_9:
  v15 = sub_22838FEF0();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

id sub_2283266DC@<X0>(id result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    goto LABEL_21;
  }

  v4 = v2;
  if (result == 1)
  {
    v5 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v5);
    (*(v6 + 48))(&v48, v5, v6);
    if (v49)
    {
      __swift_project_boxed_opaque_existential_0(&v48, v49);
      v7 = sub_22838F990();
      v9 = v8;
      result = __swift_destroy_boxed_opaque_existential_0(&v48);
      if (v9)
      {
        v10 = v2[3];
        v11 = v2[4];
        __swift_project_boxed_opaque_existential_0(v2, v10);
        (*(v11 + 48))(&v48, v10, v11);
        if (v49)
        {
          __swift_project_boxed_opaque_existential_0(&v48, v49);
          v12 = sub_22838F970();
          v14 = v13;
          __swift_destroy_boxed_opaque_existential_0(&v48);
          if (v14)
          {
            v15 = type metadata accessor for MedicationEducationItem();
            v16 = *(v15 + 48);
            v17 = *(v15 + 52);
            v18 = swift_allocObject();
            type metadata accessor for MedicationEducationItemCell();
            sub_2283281E4(&qword_27D8268F8, type metadata accessor for MedicationEducationItemCell);
            *(v18 + 56) = sub_22838FBB0();
            *(v18 + 64) = v19;
            sub_22838F490();
            *(v18 + 16) = v7;
            *(v18 + 24) = v9;
            *(v18 + 32) = v12;
            *(v18 + 40) = v14;
            *(v18 + 48) = 0;
            *(a2 + 24) = v15;
            result = sub_2283281E4(&qword_27D827E88, type metadata accessor for MedicationEducationItem);
            *(a2 + 32) = result;
            *a2 = v18;
            return result;
          }

          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_21:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

LABEL_20:
    result = sub_22823203C(&v48, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
    goto LABEL_21;
  }

  if (result != 2)
  {
    sub_2283931D0();

    v47 = sub_228393420();
    MEMORY[0x22AAB5C80](v47);

    result = sub_228393300();
    __break(1u);
    return result;
  }

  v20 = v2[3];
  v21 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v20);
  (*(v21 + 48))(&v48, v20, v21);
  if (v49)
  {
    __swift_project_boxed_opaque_existential_0(&v48, v49);
    v22 = sub_22838F960();
    __swift_destroy_boxed_opaque_existential_0(&v48);
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_22823203C(&v48, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
  }

  result = [objc_opt_self() supportsOntologyBackedMedications];
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_14:
  v23 = v4[3];
  v24 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v23);
  (*(v24 + 48))(&v48, v23, v24);
  if (!v49)
  {
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_0(&v48, v49);
  v25 = sub_22838F960();
  result = __swift_destroy_boxed_opaque_existential_0(&v48);
  if ((v25 & 1) == 0)
  {
    goto LABEL_21;
  }

  v26 = v4[3];
  v27 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v26);
  (*(v27 + 48))(&v48, v26, v27);
  if (!v49)
  {
    sub_22823203C(&v48, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
LABEL_24:

    v28 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_0(&v48, v49);
  v28 = sub_22838F990();
  v30 = v29;
  __swift_destroy_boxed_opaque_existential_0(&v48);
  if (!v30)
  {
    goto LABEL_24;
  }

LABEL_25:
  v31 = v4[3];
  v32 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v31);
  v33 = (*(v32 + 24))(v31, v32);
  v35 = v34;
  v36 = v4[3];
  v37 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v36);
  v38 = (*(v37 + 40))(v36, v37);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v40 = v4[3];
  v41 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v40);
  (*(v41 + 48))(&v48, v40, v41);
  v42 = v49;
  if (v49)
  {
    __swift_project_boxed_opaque_existential_0(&v48, v49);
    v42 = sub_22838F960();
    __swift_destroy_boxed_opaque_existential_0(&v48);
  }

  else
  {
    sub_22823203C(&v48, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
  }

  v43 = type metadata accessor for MedicationEducationAndComponentsItem();
  *(a2 + 24) = v43;
  *(a2 + 32) = sub_2283281E4(&qword_27D824668, type metadata accessor for MedicationEducationAndComponentsItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  type metadata accessor for MedicationEducationAndComponentsItemCell();
  sub_2283281E4(&qword_27D824620, type metadata accessor for MedicationEducationAndComponentsItemCell);
  boxed_opaque_existential_1[6] = sub_22838FBB0();
  boxed_opaque_existential_1[7] = v45;
  v46 = boxed_opaque_existential_1 + *(v43 + 36);
  result = sub_22838F490();
  boxed_opaque_existential_1[2] = v33;
  boxed_opaque_existential_1[3] = v35;
  *boxed_opaque_existential_1 = v28;
  boxed_opaque_existential_1[1] = v30;
  boxed_opaque_existential_1[4] = v39;
  *(boxed_opaque_existential_1 + 40) = v42 & 1;
  return result;
}

uint64_t sub_228326D54@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  result = (*(v4 + 40))(v3, v4);
  if (result && (, v6 = v1[3], v7 = v1[4], __swift_project_boxed_opaque_existential_0(v1, v6), (result = (*(v7 + 40))(v6, v7)) != 0))
  {
    v8 = result;
    v9 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v9);
    v11 = (*(v10 + 24))(v9, v10);
    v13 = v12;
    v14 = v1[3];
    v15 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v14);
    (*(v15 + 48))(v22, v14, v15);
    v16 = v23;
    if (v23)
    {
      __swift_project_boxed_opaque_existential_0(v22, v23);
      v16 = sub_22838F960();
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      sub_22823203C(v22, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
    }

    v17 = type metadata accessor for MedicationComponentsItem();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    type metadata accessor for MedicationComponentsItemCell();
    sub_2283281E4(&qword_27D825650, type metadata accessor for MedicationComponentsItemCell);
    *(v20 + 48) = sub_22838FBB0();
    *(v20 + 56) = v21;
    sub_22838F490();
    *(v20 + 16) = v11;
    *(v20 + 24) = v13;
    *(v20 + 32) = v8;
    *(v20 + 40) = v16 & 1;
    *(a1 + 24) = v17;
    result = sub_2283281E4(&qword_27D827E80, type metadata accessor for MedicationComponentsItem);
    *(a1 + 32) = result;
    *a1 = v20;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_228326FA8@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v24 = sub_228390460();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22838FFC0();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283273C4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  sub_228327C88(0, v30);
  v11 = sub_2283913A0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = *MEMORY[0x277D12788];
  v28 = sub_228392000();
  v29 = v13;

  MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B44F0);

  v14 = v28;
  v15 = v29;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v16 = qword_280DDCF20;

  v17 = sub_22838F0C0();
  v19 = v18;

  v28 = v14;
  v29 = v15;

  MEMORY[0x22AAB5C80](v17, v19);

  (*(v4 + 104))(v25, *MEMORY[0x277D10F98], v23);
  (*(v1 + 104))(v26, *MEMORY[0x277D11140], v24);
  v20 = sub_228390170();
  v21 = v27;
  v27[3] = v20;
  v21[4] = sub_2283281E4(&qword_27D824520, MEMORY[0x277D11000]);
  __swift_allocate_boxed_opaque_existential_1(v21);
  return sub_228390160();
}

void sub_2283273C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228327428@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v68 = a2;
  v7 = sub_228390460();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v75 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838FFC0();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83D88];
  sub_2283273C4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v60 - v16;
  sub_2283273C4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v13);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v60 - v19;
  v67 = sub_2283912A0();
  v66 = *(v67 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_228391220();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  LOBYTE(v81[0]) = *a1;
  v30 = v4[3];
  v31 = v4[4];
  v32 = __swift_project_boxed_opaque_existential_0(v4, v30);
  result = sub_22823651C(v32, v81, v30, v31);
  if (v34)
  {
    v61 = v34;
    v62 = result;
    v65 = a3;
    v35 = v4[3];
    v36 = v4[4];
    __swift_project_boxed_opaque_existential_0(v4, v35);
    (*(v36 + 48))(v81, v35, v36);
    v37 = v82;
    if (v82)
    {
      __swift_project_boxed_opaque_existential_0(v81, v82);
      v37 = sub_22838F970();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_0(v81);
    }

    else
    {
      sub_22823203C(v81, &qword_27D825988, &qword_27D825990, MEMORY[0x277D12508]);
      v39 = 0;
    }

    v60 = v39;
    if (v29)
    {
      if (v29 == 1)
      {
        v64 = 0xED00006D65744979;
        v40 = 0x636E616E67657270;
        v41 = &v83;
      }

      else
      {
        v63 = 0x6F6974617463616CLL;
        v40 = 0xED00006D6574496ELL;
        v41 = &v84;
      }
    }

    else
    {
      v64 = 0xEF6D657449737463;
      v40 = 0x6566664565646973;
      v41 = &v83;
    }

    *(v41 - 32) = v40;
    sub_228327EC4(v29, v81);
    sub_2283273C4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
    v42 = *(sub_2283912F0() - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    *(swift_allocObject() + 16) = xmmword_228397F40;
    (*(v25 + 104))(v28, *MEMORY[0x277D74A98], v24);
    v45 = sub_228391230();
    (*(*(v45 - 8) + 56))(v20, 1, 1, v45);
    sub_228391290();
    sub_228391260();
    (*(v66 + 8))(v23, v67);
    (*(v25 + 8))(v28, v24);
    sub_228328194(v4, v79);
    v46 = swift_allocObject();
    *(v46 + 16) = v29;
    v47 = v79[1];
    *(v46 + 24) = v79[0];
    *(v46 + 40) = v47;
    v48 = v62;
    *(v46 + 56) = v80;
    *(v46 + 64) = v48;
    *(v46 + 72) = v61;
    *(v46 + 80) = v37;
    v49 = v68;
    *(v46 + 88) = v60;
    *(v46 + 96) = v49;
    v50 = sub_2283913A0();
    (*(*(v50 - 8) + 56))(v71, 1, 1, v50);
    v51 = *MEMORY[0x277D12788];
    v77 = sub_228392000();
    v78 = v52;

    MEMORY[0x22AAB5C80](0xD00000000000001BLL, 0x80000002283B44F0);

    v54 = v77;
    v53 = v78;
    v76 = v29;
    v55 = MedicationSecondaryEducationType.title.getter();
    v57 = v56;
    v77 = v54;
    v78 = v53;

    MEMORY[0x22AAB5C80](v55, v57);

    (*(v69 + 104))(v74, *MEMORY[0x277D10F98], v70);
    (*(v72 + 104))(v75, *MEMORY[0x277D11140], v73);
    v58 = sub_228390170();
    v59 = v65;
    v65[3] = v58;
    v59[4] = sub_2283281E4(&qword_27D824520, MEMORY[0x277D11000]);
    __swift_allocate_boxed_opaque_existential_1(v59);
    return sub_228390160();
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_228327C88@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = sub_228391590();
  v5 = MEMORY[0x277D74C30];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_228391580();
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v6 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v6 = &qword_280DDCF20;
LABEL_8:
  v7 = v6[1];
  v8 = v6[2];
  v9 = *v6;

  sub_22838F0C0();

  sub_228391540();
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  return sub_2283913D0();
}

uint64_t sub_228327EC4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = sub_228391590();
  v5 = MEMORY[0x277D74C30];
  a2[3] = v4;
  a2[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_228391520();
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v6 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v6 = &qword_280DDCF20;
LABEL_8:
  v7 = v6[1];
  v8 = v6[2];
  v9 = *v6;

  sub_22838F0C0();

  return sub_228391540();
}

void sub_228328084(void *a1, signed __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v14 = type metadata accessor for MedicationSecondaryEducationViewController();
  v23 = a2;
  sub_228180FB0(a3, v20);
  v16 = v21;
  v15 = v22;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);

  v18 = sub_228212278(&v23, v17, a4, a5, a6, a7, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_0(v20);
  [a1 showAdaptively:v18 sender:0];
  v19 = *&asc_2283A4858[8 * a2];
  sub_228390FE0();
}

uint64_t sub_2283281E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MedicationDetailEditViewController()
{
  result = qword_27D827EB8;
  if (!qword_27D827EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2283282E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_22832835C()
{
  v1 = qword_27D827EA8;
  v2 = *(v0 + qword_27D827EA8);
  if (v2)
  {
    v3 = *(v0 + qword_27D827EA8);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCDB48]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2283283E0(uint64_t a1)
{
  *(a1 + qword_27D827EA8) = 0;
  v2 = qword_27D827EB0;
  sub_228329260();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(a1 + v2) = sub_228391890();
  sub_228393300();
  __break(1u);
}

void sub_228328490()
{
  sub_2283285BC();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MedicationDetailEditViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];

    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() systemBackgroundColor];
      [v4 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_228328574(void *a1)
{
  v1 = a1;
  sub_228328490();
}

void sub_2283285BC()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_didTapCancel];
  [v1 setLeftBarButtonItem_];

  v5 = [v3 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v3 action:sel_didTapDone];

  [v5 setRightBarButtonItem_];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v7 = sub_228391FC0();

  [v3 setTitle_];
}

void sub_228328790()
{
  v1 = v0;
  v2 = sub_228390D50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228329340(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v31 = *&v0[qword_27D827E98];
  v11 = qword_27D827EB0;
  v12 = *&v0[qword_27D827EB0];

  sub_228391870();

  v14 = aBlock;
  v13 = v33;
  if (v33 == 1)
  {
    sub_228294FEC(aBlock, 1);
  }

  else
  {

    sub_228294FEC(v14, v13);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v15 = sub_228391FC0();

  v16 = *&v1[v11];

  sub_228391870();

  v17 = v33;
  if (v33 == 1)
  {
    sub_228294FEC(aBlock, 1);
  }

  else
  {
    v18 = v35;
    v19 = aBlock;

    sub_228294FEC(v19, v17);
    if (v18)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = sub_228391FC0();

  v21 = *&v1[qword_27D827EA0];
  v22 = qword_27D8290B0;
  swift_beginAccess();
  sub_2281BF64C(v21 + v22, v10);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_2281A9A08(v10);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_2281A9A08(v10);
    sub_228390CF0();
    v25 = v24;
    (*(v3 + 8))(v6, v2);
    if (v25)
    {
      v23 = sub_228391FC0();

      goto LABEL_14;
    }
  }

  v23 = 0;
LABEL_14:
  v26 = [v31 copyMedicationByUpdatingUserSpecifiedName:v15 userSpecifiedNotes:v20 userVisualizationConfigJSONString:v23];

  v27 = sub_22832835C();
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  v36 = sub_228329318;
  v37 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_2283282E4;
  v35 = &block_descriptor_29;
  v29 = _Block_copy(&aBlock);
  v30 = v1;

  [v27 saveOrUpdateUserDomainConcept:v26 completion:v29];
  _Block_release(v29);
}

uint64_t sub_228328BB4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_228391DC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_228391DF0();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22820FD30();
  v14 = sub_228392790();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_228329338;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a3;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228292E70();
  sub_228329340(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v21);
}

id sub_228328E68(void *a1, void *a2)
{
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_228391150();
    v10 = a1;
    v11 = sub_2283911A0();
    v12 = sub_2283925C0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v24 = a1;
      v25 = v15;
      *v14 = 136446210;
      v16 = a1;
      sub_22818217C(0, &qword_280DDB860);
      v17 = sub_228392020();
      v19 = sub_2281C96FC(v17, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_22816B000, v11, v12, "Failed to save medication: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAB7B80](v15, -1, -1);
      v20 = v14;
      a2 = v23;
      MEMORY[0x22AAB7B80](v20, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }

  return [a2 dismissViewControllerAnimated:1 completion:0];
}

void sub_22832908C(void *a1)
{
  v1 = a1;
  sub_228328790();
}

uint64_t sub_228329134()
{
  v1 = *(v0 + qword_27D827EA0);

  v2 = *(v0 + qword_27D827EB0);
}

id sub_2283291A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDetailEditViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2283291DC(uint64_t a1)
{
  v2 = *(a1 + qword_27D827EA0);

  v3 = *(a1 + qword_27D827EB0);
}

void sub_228329260()
{
  if (!qword_27D827808)
  {
    sub_2283292C8();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827808);
    }
  }
}

void sub_2283292C8()
{
  if (!qword_27D827810)
  {
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827810);
    }
  }
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228329340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2283293A4(void *a1, void *a2)
{
  v3 = v2;
  *(v2 + qword_27D827EA8) = 0;
  v6 = qword_27D827EB0;
  v34 = xmmword_2283A4870;
  sub_228329260();
  v35 = 0uLL;
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v2 + v6) = sub_228391890();
  *(v2 + qword_27D827E90) = a1;
  *(v2 + qword_27D827E98) = a2;

  v10 = a1;
  v11 = a2;
  v12 = [v11 userSpecifiedName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_228392000();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v11 userSpecifiedNotes];
  if (v17)
  {
    v18 = v17;
    v19 = sub_228392000();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *&v34 = v14;
  *(&v34 + 1) = v16;
  *&v35 = v19;
  *(&v35 + 1) = v21;
  sub_228391850();

  sub_228294FEC(v14, v16);
  v22 = type metadata accessor for MedmojiPreviewDataSource();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_22835F2C4(v11);
  *(v3 + qword_27D827EA0) = v25;
  sub_2283901F0();
  sub_228182110();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_228397F30;
  v27 = MEMORY[0x277D10F80];
  *(v26 + 32) = v25;
  *(v26 + 40) = v27;
  v28 = *(v3 + v6);
  v29 = type metadata accessor for NicknameAndNotesDataSource();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  *(v26 + 48) = sub_228292F84(v32, &v34);
  *(v26 + 56) = v27;
  sub_228390220();
  return sub_228390480();
}

uint64_t MedicationScheduleDataSource.__allocating_init(schedulePublisher:medication:concept:presentationContext:)(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_228333ABC(a1, a2, a3, a4);

  return v11;
}

uint64_t sub_228329654(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2281C9E44(0, v2, 0);
    v4 = v34;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_228393040();
    v7 = result;
    v8 = 0;
    v29 = v1 + 72;
    v30 = v2;
    v31 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v32 = v8;
      v33 = *(v1 + 36);
      v11 = (*(v1 + 56) + 24 * v7);
      v12 = *v11;
      v13 = v11[2];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_22838FCE0();
      v16 = v15;
      result = swift_unknownObjectRelease();
      v17 = v4;
      v35 = v4;
      v18 = v1;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_2281C9E44((v19 > 1), v20 + 1, 1);
        v17 = v35;
      }

      *(v17 + 16) = v20 + 1;
      v21 = v17 + 16 * v20;
      *(v21 + 32) = v14;
      *(v21 + 40) = v16;
      v9 = 1 << *(v18 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v31;
      v22 = *(v31 + 8 * v10);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v18;
      v4 = v17;
      if (v33 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_228205ADC(v7, v33, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_228205ADC(v7, v33, 0);
      }

LABEL_4:
      v8 = v32 + 1;
      v7 = v9;
      if (v32 + 1 == v30)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2283298B0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for Dosage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_2281CA23C(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2281CA23C(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_228336ACC(v10, v12 + v19 + v16 * v14, type metadata accessor for Dosage);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228329A58(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_228393240();
    v9 = *(type metadata accessor for Dosage() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_228393210();
      v12 = *(v14 + 16);
      sub_228393250();
      sub_228393260();
      sub_228393220();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228329B9C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v7 = a1;
  v8 = *(a4 + 16);

  if (v8)
  {
    v9 = *(type metadata accessor for Dosage() - 8);
    v10 = a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a2(&v13, &v14, v10);
      if (v4)
      {
        break;
      }

      v7 = v13;
      v14 = v13;
      v10 += v11;
      if (!--v8)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_228329CA0(void **a1)
{
  v2 = *(type metadata accessor for Dosage() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22834084C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2283301DC(v6, type metadata accessor for Dosage, sub_228330AEC, sub_22833032C);
  *a1 = v3;
  return result;
}

uint64_t sub_228329D84(void **a1)
{
  v2 = *(type metadata accessor for WeekdaysAndDosages(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_228340860(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2283301DC(v6, type metadata accessor for WeekdaysAndDosages, sub_2283314E0, sub_2283305DC);
  *a1 = v3;
  return result;
}

uint64_t sub_228329E68()
{
  v1 = v0;
  v5 = *(v0 + 72);
  swift_allocObject();
  swift_weakInit();
  sub_228297C40();
  sub_228335C58(&qword_27D825868, sub_228297C40);

  v2 = sub_228391AC0();

  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
}

uint64_t sub_228329F6C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v3 = Strong, swift_beginAccess(), v4 = *(v3 + 80), result = , v4 != a1))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v6 = result;
      swift_beginAccess();
      *(v6 + 80) = a1;
      sub_22832A084();
      sub_228336A38();
      sub_228335C58(&qword_27D827F78, sub_228336A38);
      sub_22838FD00();
    }
  }

  return result;
}

void sub_22832A084()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[12];
  v3 = v1[14];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v4 unregisterObserver_];

  v5 = v1[8];
  swift_beginAccess();
  if (*(v5 + 16) && (v6 = sub_2281A9BCC(v1[10]), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 24 * v6);
    v9 = v8 + 1;
    v10 = v8 + 2;
  }

  else
  {
    v8 = v1 + 5;
    v9 = v1 + 6;
    v10 = v1 + 7;
  }

  v11 = *v8;
  v12 = *v9;
  v13 = *v10;
  v14 = v1[12];
  v1[12] = v11;
  v1[13] = v12;
  v1[14] = v13;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v15 = sub_22838FCF0();
  swift_unknownObjectRelease();
  [v15 registerObserver_];
}

uint64_t sub_22832A1C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D828F30;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22832A22C()
{
  v1 = qword_27D828F30;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22832A274(uint64_t a1)
{
  v3 = qword_27D828F30;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MedicationScheduleDataSource.init(schedulePublisher:medication:concept:presentationContext:)(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v6 = sub_228333ABC(a1, a2, a3, a4);

  return v6;
}

uint64_t sub_22832A374()
{
  v1 = *(v0 + qword_27D828F38);

  sub_228391850();
}

uint64_t sub_22832A3C4()
{
  v1 = v0;
  sub_228335AE4();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v0 + qword_27D828F38);
  swift_allocObject();
  swift_weakInit();
  sub_228297C40();
  sub_228335C58(&qword_27D825868, sub_228297C40);

  v7 = sub_228391AC0();

  v8 = *(v1 + qword_27D828FD0);
  *(v1 + qword_27D828FD0) = v7;

  v29 = *(v1 + qword_27D828F48);
  swift_allocObject();
  swift_weakInit();
  sub_228335CA8(0, &qword_27D827F18, &qword_27D827F20, &type metadata for FrequencyInterval);
  sub_228335B9C(&qword_27D827F28, &qword_27D827F18, &qword_27D827F20, &type metadata for FrequencyInterval);

  v9 = sub_228391AC0();

  v10 = *(v1 + qword_27D828F90);
  *(v1 + qword_27D828F90) = v9;

  v29 = *(v1 + qword_27D828F50);
  swift_allocObject();
  swift_weakInit();
  sub_228335D24(0);
  sub_228335C58(&qword_27D827F40, sub_228335D24);

  v11 = sub_228391AC0();

  v12 = *(v1 + qword_27D828FA0);
  *(v1 + qword_27D828FA0) = v11;

  v29 = *(v1 + qword_27D828F58);
  swift_allocObject();
  swift_weakInit();
  sub_2282ABC18();
  sub_228335C58(&qword_27D826EB0, sub_2282ABC18);

  v13 = sub_228391AC0();

  v14 = *(v1 + qword_27D828FA8);
  *(v1 + qword_27D828FA8) = v13;

  v29 = *(v1 + qword_27D828F60);
  swift_allocObject();
  swift_weakInit();
  sub_228241D38();
  sub_228335C58(&qword_27D825C50, sub_228241D38);

  v15 = sub_228391AC0();

  v16 = *(v1 + qword_27D828FB0);
  *(v1 + qword_27D828FB0) = v15;

  v29 = *(v1 + qword_27D828F68);
  swift_allocObject();
  swift_weakInit();
  sub_228241DA0();
  sub_228335C58(&qword_27D825C58, sub_228241DA0);

  v17 = sub_228391AC0();

  v18 = *(v1 + qword_27D828FB8);
  *(v1 + qword_27D828FB8) = v17;

  v19 = *(v1 + qword_27D828F80);
  v28 = *(v1 + qword_27D828F78);
  v29 = v19;
  sub_228335CA8(0, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
  sub_228335B9C(&qword_27D827F10, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
  sub_2283919E0();
  swift_allocObject();
  swift_weakInit();
  sub_228335C58(&qword_27D827F48, sub_228335AE4);
  v20 = v26;
  v21 = sub_228391AC0();

  (*(v27 + 8))(v6, v20);
  v22 = *(v1 + qword_27D828FC8);
  *(v1 + qword_27D828FC8) = v21;

  v29 = *(v1 + qword_27D828F28);
  swift_allocObject();
  swift_weakInit();
  sub_2281BC72C();
  sub_228335C58(&qword_27D8245A8, sub_2281BC72C);

  v23 = sub_228391AC0();

  v24 = *(v1 + qword_27D828FC0);
  *(v1 + qword_27D828FC0) = v23;
}

void sub_22832AB18(void *a1)
{
  if (*a1 != 3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + qword_27D828F28);

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v3 = sub_22832ABF0();
      }

      else
      {
        v3 = 0;
      }

      sub_228391850();
    }
  }
}

uint64_t sub_22832ABF0()
{
  v1 = v0;
  v278 = *v0;
  v255 = sub_22838F080();
  v254 = *(v255 - 8);
  v2 = *(v254 + 64);
  MEMORY[0x28223BE20](v255);
  v260 = &v248 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_22838F700();
  v267 = *(v266 - 8);
  v4 = *(v267 + 64);
  MEMORY[0x28223BE20](v266);
  v265 = &v248 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for Dosage();
  v292 = *(v287 - 8);
  v6 = *(v292 + 64);
  v7 = MEMORY[0x28223BE20](v287);
  v271 = &v248 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v248 - v9;
  v281 = sub_2283911B0();
  v282 = *(v281 - 8);
  v11 = *(v282 + 64);
  v12 = MEMORY[0x28223BE20](v281);
  v279 = &v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v275 = &v248 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v259 = &v248 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v264 = &v248 - v19;
  MEMORY[0x28223BE20](v18);
  v276 = &v248 - v20;
  v296 = type metadata accessor for WeekdaysAndDosages(0);
  v21 = *(v296 - 1);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v296);
  v274 = &v248 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v269 = &v248 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v273 = &v248 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v277 = &v248 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v248 - v31;
  v33 = sub_22838F4A0();
  v294 = *(v33 - 8);
  v34 = *(v294 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v280 = &v248 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v248 - v38;
  MEMORY[0x28223BE20](v37);
  v295 = &v248 - v40;
  sub_228301654();
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v258 = &v248 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v253 = &v248 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v257 = &v248 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v256 = &v248 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v251 = &v248 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v250 = &v248 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v252 = &v248 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v248 - v57;
  v285 = sub_22838F440();
  v286 = *(v285 - 8);
  v59 = *(v286 + 64);
  MEMORY[0x28223BE20](v285);
  v61 = &v248 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = sub_22838F6C0();
  v284 = *(v283 - 8);
  v62 = *(v284 + 64);
  MEMORY[0x28223BE20](v283);
  v64 = &v248 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = [*&v0[qword_27D828FE8] currentCalendar];
  v288 = v64;
  sub_22838F630();

  v66 = *&v1[qword_27D828F60];

  v290 = v61;
  sub_228391870();

  v67 = *&v1[qword_27D828F68];

  v289 = v58;
  sub_228391870();

  v68 = *&v1[qword_27D828F50];

  sub_228391870();

  v69 = v299;
  if (!v299)
  {
    v69 = MEMORY[0x277D84F90];
  }

  v291 = v69;
  v70 = *&v1[qword_27D828F38];

  sub_228391870();

  v293 = v299;
  v71 = *&v1[qword_27D828F78];

  sub_228391870();

  v263 = v299;
  v272 = v300;
  v72 = *&v1[qword_27D828F80];

  sub_228391870();

  v262 = v299;
  v270 = v300;
  v261 = qword_27D828F58;
  v73 = *&v1[qword_27D828F58];

  sub_228391870();

  v74 = v299;
  sub_22838F490();
  v268 = v1;
  v75 = *&v1[qword_27D827ED8];
  if (v75)
  {
    v76 = v75;
    v77 = [v76 UUID];
    v78 = v280;
    sub_22838F480();

    v79 = v294;
    (*(v294 + 8))(v39, v33);
    v80 = *(v79 + 32);
    v80(v39, v78, v33);
  }

  else
  {
    v80 = *(v294 + 32);
  }

  v81 = v33;
  v80(v295, v39, v33);
  v82 = v293;
  v83 = v287;
  if (v293 == 4)
  {
    v84 = v33;

    v85 = v279;
    sub_228391150();
    v86 = sub_2283911A0();
    v87 = sub_2283925C0();
    if (!os_log_type_enabled(v86, v87))
    {
LABEL_10:

      (*(v282 + 8))(v85, v281);
      (*(v294 + 8))(v295, v84);
LABEL_11:
      sub_228335E3C(v289, sub_228301654);
      (*(v286 + 8))(v290, v285);
      (*(v284 + 8))(v288, v283);
      return 0;
    }

    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v299 = v89;
    *v88 = 136315138;
    v90 = sub_228393600();
    v92 = sub_2281C96FC(v90, v91, &v299);

    *(v88 + 4) = v92;
    v93 = "[%s] Frequency is nil or as needed. Unable to create schedule.";
LABEL_9:
    _os_log_impl(&dword_22816B000, v86, v87, v93, v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x22AAB7B80](v89, -1, -1);
    MEMORY[0x22AAB7B80](v88, -1, -1);
    goto LABEL_10;
  }

  v94 = v74[2];
  if (v94)
  {
    v95 = 0;
    do
    {
      v96 = v95;
      if (v94 == v95)
      {
        break;
      }

      if (v95 >= v74[2])
      {
        __break(1u);
        goto LABEL_124;
      }

      sub_228336908(v74 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v95++, v32, type metadata accessor for WeekdaysAndDosages);
      v33 = *(*&v32[*(v296 + 6)] + 16);
      sub_228335E3C(v32, type metadata accessor for WeekdaysAndDosages);
    }

    while (!v33);
    v82 = v293;
    if (v293 == 3 || v293 == 5)
    {
      if (v94 != v96)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  else if (v293 == 3 || v293 == 5)
  {
    goto LABEL_41;
  }

  if (!v291[2])
  {
LABEL_41:
    v111 = v81;

    v112 = v276;
    sub_228391150();
    v113 = sub_2283911A0();
    v114 = sub_2283925C0();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v288;
    v117 = v286;
    v118 = v294;
    if (v115)
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v299 = v120;
      *v119 = 136315138;
      v121 = sub_228393600();
      v123 = sub_2281C96FC(v121, v122, &v299);

      *(v119 + 4) = v123;
      _os_log_impl(&dword_22816B000, v113, v114, "[%s] Dosages is nil. Unable to create schedule.", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x22AAB7B80](v120, -1, -1);
      MEMORY[0x22AAB7B80](v119, -1, -1);

      (*(v282 + 8))(v276, v281);
    }

    else
    {

      (*(v282 + 8))(v112, v281);
    }

    (*(v118 + 8))(v295, v111);
LABEL_48:
    sub_228335E3C(v289, sub_228301654);
    (*(v117 + 8))(v290, v285);
    (*(v284 + 8))(v116, v283);
    return 0;
  }

  if ((v82 - 7) <= 1 && (v272 == 255 || v270 == 255))
  {
    v156 = v81;

    v157 = v264;
    sub_228391150();
    v81 = sub_2283911A0();
    v158 = sub_2283925C0();
    if (!os_log_type_enabled(v81, v158))
    {

      (*(v282 + 8))(v157, v281);
      (*(v294 + 8))(v295, v156);
      goto LABEL_11;
    }

    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v299 = v160;
    *v159 = 136315650;
    v161 = sub_228393600();
    v163 = sub_2281C96FC(v161, v162, &v299);

    *(v159 + 4) = v163;
    *(v159 + 12) = 2048;
    v108 = v288;
    v82 = v286;
    v164 = v285;
    v165 = v294;
    if (v272 == 255)
    {
      v166 = -1;
    }

    else
    {
      v166 = v263;
      if ((v272 & 1) == 0)
      {
        v166 = 7 * v263;
        if ((v263 * 7) >> 64 != (7 * v263) >> 63)
        {
          __break(1u);
LABEL_76:
          if (!v82)
          {

            (*(v294 + 8))(v295, v81);
            goto LABEL_11;
          }

          if (v82 != 1)
          {
            if (v82 != 2)
            {
              goto LABEL_98;
            }

            MEMORY[0x28223BE20](v106);
            v33 = v288;
            v246 = v288;
            sub_228329A58(sub_228336848, (&v248 - 4), v108);

            v296 = sub_22838F460();
            v167 = [*&v268[qword_27D827EC8] semanticIdentifier];
            v94 = [v167 stringValue];

            if (!v94)
            {
              sub_228392000();
              v94 = sub_228391FC0();
            }

            v168 = v265;
            sub_22838F690();
            v96 = sub_22838F6D0();
            (*(v267 + 8))(v168, v266);
            v95 = sub_22838F380();
            v169 = v256;
            sub_228336908(v289, v256, sub_228301654);
            v21 = v286;
            v81 = v285;
            if ((*(v286 + 48))(v169, 1, v285) == 1)
            {
              v170 = 0;
            }

            else
            {
              v170 = sub_22838F380();
              (*(v21 + 8))(v169, v81);
            }

            v206 = objc_opt_self();
            sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
            v202 = sub_228392190();

            v207 = v206;
            v204 = v296;
            v205 = [v207 dailyScheduleWithUUID:v296 medicationIdentifier:v94 createdUTCOffset:v96 startDateTime:v95 endDateTime:v170 timeIntervals:v202 note:0];
            goto LABEL_128;
          }

          MEMORY[0x28223BE20](v106);
          v191 = v268;
          *(&v248 - 4) = v288;
          *(&v248 - 3) = v191;
          v246 = v108;
          v247 = v278;
          sub_228329B9C(MEMORY[0x277D84F90], sub_228336828, (&v248 - 6), v108);

          v192 = sub_22838F460();
          v193 = [*&v191[qword_27D827EC8] semanticIdentifier];
          v194 = [v193 stringValue];

          if (!v194)
          {
            sub_228392000();
            v194 = sub_228391FC0();
          }

          v195 = v265;
          sub_22838F690();
          v196 = sub_22838F6D0();
          (*(v267 + 8))(v195, v266);
          v197 = sub_22838F380();
          v198 = v257;
          sub_228336908(v289, v257, sub_228301654);
          v21 = v286;
          v199 = v285;
          if ((*(v286 + 48))(v198, 1, v285) == 1)
          {
            v200 = 0;
          }

          else
          {
            v200 = sub_22838F380();
            (*(v21 + 8))(v198, v199);
          }

          v209 = objc_opt_self();
          sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
          v210 = sub_228392190();

          v211 = [v209 everyXDaysScheduleWithUUID:v192 medicationIdentifier:v194 createdUTCOffset:v196 startDateTime:v197 endDateTime:v200 timeIntervals:v210 cycleStartDateComponents:0 note:0];
LABEL_160:
          v208 = v211;

          (*(v294 + 8))(v295, v249);
          sub_228335E3C(v289, sub_228301654);
          (*(v21 + 8))(v290, v199);
          (*(v284 + 8))(v288, v283);
          return v208;
        }
      }
    }

    *(v159 + 14) = v166;
    *(v159 + 22) = 2048;
    if (v270 != 255)
    {
      v173 = v262;
      if (v270)
      {
        goto LABEL_96;
      }

      v173 = 7 * v262;
      if ((v262 * 7) >> 64 == (7 * v262) >> 63)
      {
        goto LABEL_96;
      }

      __break(1u);
    }

    v173 = -1;
LABEL_96:
    *(v159 + 24) = v173;
    _os_log_impl(&dword_22816B000, v81, v158, "[%s] No take for value %ld or pause For Value %ld. Unable to create schedule.", v159, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v160);
    MEMORY[0x22AAB7B80](v160, -1, -1);
    MEMORY[0x22AAB7B80](v159, -1, -1);

    (*(v282 + 8))(v157, v281);
    (*(v165 + 8))(v295, v156);
    sub_228335E3C(v289, sub_228301654);
    (*(v82 + 8))(v290, v164);
    (*(v284 + 8))(v108, v283);
    return 0;
  }

LABEL_27:
  v249 = v81;
  if (!v94)
  {
    goto LABEL_36;
  }

  inited = 0;
  v98 = *(v296 + 6);
  v99 = v74 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v280 = v98;
  v279 = v99;
  while (2)
  {
    if (inited >= v74[2])
    {
LABEL_163:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        v178 = MEMORY[0x22AAB6D80](0, v81);
LABEL_103:
        v179 = v178;
        v21 = v286;
        v180 = [v178 startTimeComponent];

        sub_22838EFD0();
        sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
        v135 = sub_228392C40();
        if (v270 == 255)
        {
          v136 = 0;
LABEL_150:
          v234 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v235 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v236 = objc_allocWithZone(MEMORY[0x277D11580]);
          v237 = v260;
          v238 = sub_22838EFB0();
          v239 = [v236 initWithStartTimeComponent:v238 daysOfWeek:0 cycleIndex:v135 cycleIntervalDays:v234 dose:v235];

          (*(v254 + 8))(v237, v255);
          *(inited + 32) = v239;
          v299 = v81;
          sub_2281D5FC8(inited);
          v192 = sub_22838F460();
          v240 = [*&v268[qword_27D827EC8] semanticIdentifier];
          v194 = [v240 stringValue];

          if (!v194)
          {
            sub_228392000();
            v194 = sub_228391FC0();
          }

          v241 = v265;
          sub_22838F690();
          v196 = sub_22838F6D0();
          (*(v267 + 8))(v241, v266);
          v197 = sub_22838F380();
          v242 = v253;
          sub_228336908(v289, v253, sub_228301654);
          v199 = v285;
          if ((*(v21 + 48))(v242, 1, v285) == 1)
          {
            v200 = 0;
          }

          else
          {
            v200 = sub_22838F380();
            (*(v21 + 8))(v242, v199);
          }

          v243 = objc_opt_self();
          sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
          v210 = sub_228392190();

          v211 = [v243 activeXDaysPauseYDaysWithUUID:v192 medicationIdentifier:v194 createdUTCOffset:v196 startDateTime:v197 endDateTime:v200 timeIntervals:v210 cycleStartDateComponents:0 note:0];
          goto LABEL_160;
        }

        v136 = v262;
        if (v270)
        {
          goto LABEL_150;
        }

        v136 = 7 * v262;
        if ((v262 * 7) >> 64 == (7 * v262) >> 63)
        {
          goto LABEL_150;
        }

        __break(1u);
LABEL_107:
        v293 = sub_22832E390();
        v181 = *&v135[v136];

        sub_228391870();

        v182 = v299;
        v183 = v299[2];
        if (!v183)
        {
          break;
        }

        v184 = 0;
        v185 = MEMORY[0x277D84F90];
        inited = v269;
        while (v184 < v182[2])
        {
          v186 = (*(v21 + 80) + 32) & ~*(v21 + 80);
          v187 = *(v21 + 72);
          sub_228336908(v182 + v186 + v187 * v184, inited, type metadata accessor for WeekdaysAndDosages);
          if (*(*(inited + *(v296 + 6)) + 16))
          {
            sub_228336ACC(inited, v274, type metadata accessor for WeekdaysAndDosages);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v297 = v185;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2281C9CD4(0, *(v185 + 16) + 1, 1);
              v185 = v297;
            }

            v190 = *(v185 + 16);
            v189 = *(v185 + 24);
            if (v190 >= v189 >> 1)
            {
              sub_2281C9CD4(v189 > 1, v190 + 1, 1);
              v185 = v297;
            }

            *(v185 + 16) = v190 + 1;
            sub_228336ACC(v274, v185 + v186 + v190 * v187, type metadata accessor for WeekdaysAndDosages);
            inited = v269;
          }

          else
          {
            sub_228335E3C(inited, type metadata accessor for WeekdaysAndDosages);
          }

          if (v183 == ++v184)
          {
            goto LABEL_140;
          }
        }
      }

      v185 = MEMORY[0x277D84F90];
LABEL_140:

      v228 = *(v185 + 16);

      v192 = sub_22838F460();
      v229 = [*&v268[qword_27D827EC8] semanticIdentifier];
      v194 = [v229 stringValue];

      if (v228 <= 1)
      {
        v21 = v286;
        v199 = v285;
        if (!v194)
        {
          sub_228392000();
          v194 = sub_228391FC0();
        }

        v232 = v265;
        sub_22838F690();
        v196 = sub_22838F6D0();
        (*(v267 + 8))(v232, v266);
        v197 = sub_22838F380();
        v233 = v251;
        sub_228336908(v289, v251, sub_228301654);
        if ((*(v21 + 48))(v233, 1, v199) == 1)
        {
          v200 = 0;
        }

        else
        {
          v200 = sub_22838F380();
          (*(v21 + 8))(v233, v199);
        }

        v245 = objc_opt_self();
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        v210 = sub_228392190();

        v211 = [v245 daysOfWeekScheduleWithUUID:v192 medicationIdentifier:v194 createdUTCOffset:v196 startDateTime:v197 endDateTime:v200 timeIntervals:v210 note:0];
      }

      else
      {
        v21 = v286;
        v199 = v285;
        if (!v194)
        {
          sub_228392000();
          v194 = sub_228391FC0();
        }

        v230 = v265;
        sub_22838F690();
        v196 = sub_22838F6D0();
        (*(v267 + 8))(v230, v266);
        v197 = sub_22838F380();
        v231 = v250;
        sub_228336908(v289, v250, sub_228301654);
        if ((*(v21 + 48))(v231, 1, v199) == 1)
        {
          v200 = 0;
        }

        else
        {
          v200 = sub_22838F380();
          (*(v21 + 8))(v231, v199);
        }

        v244 = objc_opt_self();
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        v210 = sub_228392190();

        v211 = [v244 differentDosesDaysOfWeekScheduleWithUUID:v192 medicationIdentifier:v194 createdUTCOffset:v196 startDateTime:v197 endDateTime:v200 timeIntervals:v210 note:0];
      }

      goto LABEL_160;
    }

    v100 = v277;
    sub_228336908(&v99[*(v21 + 72) * inited], v277, type metadata accessor for WeekdaysAndDosages);
    v101 = 0;
    ++inited;
    v102 = *&v98[v100];
    v103 = *(v102 + 16);
    v104 = v292;
    while (v103 != v101)
    {
      if (v101 >= *(v102 + 16))
      {
        __break(1u);
        goto LABEL_132;
      }

      sub_228336908(v102 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v101++, v10, type metadata accessor for Dosage);
      v105 = *&v10[*(v83 + 24)];
      sub_228335E3C(v10, type metadata accessor for Dosage);
      if (v105 <= 0.0)
      {

        sub_228335E3C(v277, type metadata accessor for WeekdaysAndDosages);
LABEL_45:
        v124 = v275;
        sub_228391150();
        v125 = sub_2283911A0();
        v126 = sub_2283925C0();
        v127 = os_log_type_enabled(v125, v126);
        v116 = v288;
        v117 = v286;
        v128 = v294;
        if (v127)
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v299 = v130;
          *v129 = 136315138;
          v131 = sub_228393600();
          v133 = sub_2281C96FC(v131, v132, &v299);

          *(v129 + 4) = v133;
          _os_log_impl(&dword_22816B000, v125, v126, "[%s] Unable to create schedule with a dosage less than or equal to 0", v129, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v130);
          MEMORY[0x22AAB7B80](v130, -1, -1);
          MEMORY[0x22AAB7B80](v129, -1, -1);
        }

        (*(v282 + 8))(v124, v281);
        (*(v128 + 8))(v295, v249);
        goto LABEL_48;
      }
    }

    sub_228335E3C(v277, type metadata accessor for WeekdaysAndDosages);
    v81 = v249;
    v82 = v293;
    v98 = v280;
    v99 = v279;
    if (inited != v94)
    {
      continue;
    }

    break;
  }

LABEL_36:

  v107 = 0;
  v108 = v291;
  inited = v291[2];
  v109 = v271;
  while (inited != v107)
  {
    if (v107 >= *(v108 + 16))
    {
      __break(1u);
      goto LABEL_163;
    }

    sub_228336908(v108 + ((*(v292 + 80) + 32) & ~*(v292 + 80)) + *(v292 + 72) * v107++, v109, type metadata accessor for Dosage);
    v110 = *(v109 + *(v83 + 24));
    v106 = sub_228335E3C(v109, type metadata accessor for Dosage);
    if (v110 <= 0.0)
    {

      goto LABEL_45;
    }
  }

  if (v82 <= 2)
  {
    goto LABEL_76;
  }

  if (v82 <= 6)
  {
    if (v82 == 3 || v82 == 5)
    {

      v135 = v268;
      v136 = v261;
      v137 = *&v268[v261];

      sub_228391870();

      v138 = sub_22832DEEC(v299);

      if ((v138 & 1) == 0)
      {
        goto LABEL_107;
      }

      v139 = *&v135[v136];

      sub_228391870();

      v140 = v299[2];
      if (v140)
      {
        v141 = *(v296 + 6);
        v142 = *(v21 + 80);
        v296 = v299;
        inited = v299 + ((v142 + 32) & ~v142);
        v143 = *(v21 + 72);
        v81 = MEMORY[0x277D84F90];
        do
        {
          v144 = v273;
          sub_228336908(inited, v273, type metadata accessor for WeekdaysAndDosages);
          v145 = *(v144 + v141);

          sub_228335E3C(v144, type metadata accessor for WeekdaysAndDosages);
          v146 = *(v145 + 16);
          v147 = *(v81 + 16);
          v148 = v147 + v146;
          if (__OFADD__(v147, v146))
          {
            goto LABEL_165;
          }

          v149 = swift_isUniquelyReferenced_nonNull_native();
          if (!v149 || v148 > *(v81 + 24) >> 1)
          {
            if (v147 <= v148)
            {
              v150 = v147 + v146;
            }

            else
            {
              v150 = v147;
            }

            v81 = sub_2281984E8(v149, v150, 1, v81);
          }

          if (*(v145 + 16))
          {
            if ((*(v81 + 24) >> 1) - *(v81 + 16) < v146)
            {
              goto LABEL_167;
            }

            v151 = (*(v292 + 80) + 32) & ~*(v292 + 80);
            v152 = *(v292 + 72);
            swift_arrayInitWithCopy();

            if (v146)
            {
              v153 = *(v81 + 16);
              v154 = __OFADD__(v153, v146);
              v155 = v153 + v146;
              if (v154)
              {
                goto LABEL_168;
              }

              *(v81 + 16) = v155;
            }
          }

          else
          {

            if (v146)
            {
              goto LABEL_166;
            }
          }

          inited += v143;
          --v140;
        }

        while (v140);
      }

      else
      {
LABEL_132:

        v81 = MEMORY[0x277D84F90];
      }

      v212 = sub_228264B78(v81);

      v299 = v212;

      sub_228329CA0(&v299);
      v213 = v288;
      v214 = v268;

      v293 = v299;
      v296 = sub_22838F460();
      v215 = [*&v214[qword_27D827EC8] semanticIdentifier];
      v216 = [v215 stringValue];

      if (!v216)
      {
        sub_228392000();
        v216 = sub_228391FC0();
      }

      v217 = v265;
      sub_22838F690();
      v292 = sub_22838F6D0();
      (*(v267 + 8))(v217, v266);
      v218 = sub_22838F380();
      v219 = v252;
      sub_228336908(v289, v252, sub_228301654);
      v220 = v286;
      v221 = v285;
      if ((*(v286 + 48))(v219, 1, v285) == 1)
      {
        v222 = 0;
      }

      else
      {
        v222 = sub_22838F380();
        (*(v220 + 8))(v219, v221);
      }

      v223 = objc_opt_self();
      MEMORY[0x28223BE20](v223);
      sub_228329A58(sub_228336B90, (&v248 - 4), v293);

      sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
      v224 = sub_228392190();

      v225 = v223;
      v226 = v296;
      v227 = v292;
      v208 = [v225 dailyScheduleWithUUID:v296 medicationIdentifier:v216 createdUTCOffset:v292 startDateTime:v218 endDateTime:v222 timeIntervals:v224 note:0];

      (*(v294 + 8))(v295, v249);
      sub_228335E3C(v289, sub_228301654);
      (*(v220 + 8))(v290, v221);
      (*(v284 + 8))(v213, v283);
      return v208;
    }

LABEL_98:
    v84 = v81;

    v85 = v259;
    sub_228391150();
    v86 = sub_2283911A0();
    v87 = sub_2283925C0();
    if (!os_log_type_enabled(v86, v87))
    {
      goto LABEL_10;
    }

    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v299 = v89;
    *v88 = 136315138;
    v174 = sub_228393600();
    v176 = sub_2281C96FC(v174, v175, &v299);

    *(v88 + 4) = v176;
    v93 = "%s encountered unsupported scheduleType when attempting to save schedule.";
    goto LABEL_9;
  }

  if (v82 != 7)
  {
    if (v82 != 8)
    {
      goto LABEL_98;
    }

    v299 = v262;
    v300 = v270;
    v297 = v263;
    v298 = v272;
    v33 = v288;
    sub_22833618C(v108, v288, &v299, &v297);

    v296 = sub_22838F460();
    v171 = [*&v268[qword_27D827EC8] semanticIdentifier];
    v94 = [v171 stringValue];

    if (!v94)
    {
      sub_228392000();
      v94 = sub_228391FC0();
    }

    v172 = v265;
    sub_22838F690();
    v96 = sub_22838F6D0();
    (*(v267 + 8))(v172, v266);
    v95 = sub_22838F380();
    v83 = v258;
    sub_228336908(v289, v258, sub_228301654);
    v21 = v286;
    v81 = v285;
    if ((*(v286 + 48))(v83, 1, v285) == 1)
    {
      v170 = 0;
      goto LABEL_125;
    }

LABEL_124:
    v170 = sub_22838F380();
    (*(v21 + 8))(v83, v81);
LABEL_125:
    v201 = objc_opt_self();
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v202 = sub_228392190();

    v203 = v201;
    v204 = v296;
    v205 = [v203 activeXWeeksPauseYWeeksWithUUID:v296 medicationIdentifier:v94 createdUTCOffset:v96 startDateTime:v95 endDateTime:v170 timeIntervals:v202 cycleStartDateComponents:0 note:0];
LABEL_128:
    v208 = v205;

    (*(v294 + 8))(v295, v249);
    sub_228335E3C(v289, sub_228301654);
    (*(v21 + 8))(v290, v81);
    (*(v284 + 8))(v33, v283);
    return v208;
  }

  MEMORY[0x28223BE20](v106);
  v177 = v263;
  *(&v248 - 4) = v288;
  *(&v248 - 3) = v177;
  LOBYTE(v246) = v272;
  v81 = sub_228329A58(sub_228336804, (&v248 - 6), v108);

  sub_228336B34(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228396260;
  if ((v81 & 0xC000000000000001) != 0)
  {
    goto LABEL_169;
  }

  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v178 = *(v81 + 32);
    goto LABEL_103;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22832D680()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_27D828F28);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = sub_22832ABF0();
    }

    else
    {
      v2 = 0;
    }

    sub_228391850();
  }
}

void sub_22832D748()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_22832D940())
    {
      v2 = *(v1 + qword_27D828F28);

      v3 = sub_22832ABF0();
      sub_228391850();
    }

    else
    {
    }
  }
}

uint64_t sub_22832D7F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = qword_27D828F30;
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + qword_27D828F38);

      sub_228391870();

      if (v8 == 4)
      {
      }

      else
      {
        v7 = *(v5 + qword_27D828F28);

        sub_228391870();

        if (v8)
        {
        }
      }
    }

    sub_228391850();
  }

  return result;
}

BOOL sub_22832D940()
{
  v1 = v0;
  v2 = qword_27D828F78;
  v3 = *(v0 + qword_27D828F78);

  sub_228391870();

  v4 = *(v1 + qword_27D828F80);

  sub_228391870();

  v5 = *(v1 + v2);

  sub_228391870();

  result = 0;
  if (v9 != 255)
  {
    v6 = *(v1 + qword_27D828F38);

    sub_228391870();

    if (v8 == 8 && (v9 & 1) == 0)
    {
      return 1;
    }

    if (v8 == 7 && (v9 & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void sub_22832DA88()
{
  sub_228335E3C(v0 + qword_27D828F40, sub_2283356B0);
  v1 = *(v0 + qword_27D828F28);

  v2 = *(v0 + qword_27D828F48);

  v3 = *(v0 + qword_27D828F50);

  v4 = *(v0 + qword_27D828F58);

  v5 = *(v0 + qword_27D828F60);

  v6 = *(v0 + qword_27D828F68);

  v7 = *(v0 + qword_27D828F38);

  v8 = *(v0 + qword_27D828F70);

  v9 = *(v0 + qword_27D828F78);

  v10 = *(v0 + qword_27D828F80);

  v11 = *(v0 + qword_27D828F30);

  v12 = *(v0 + qword_27D828F88);

  v13 = *(v0 + qword_27D828F90);

  v14 = *(v0 + qword_27D828F98);

  v15 = *(v0 + qword_27D828FA0);

  v16 = *(v0 + qword_27D828FA8);

  v17 = *(v0 + qword_27D828FB0);

  v18 = *(v0 + qword_27D828FB8);

  v19 = *(v0 + qword_27D828FC0);

  v20 = *(v0 + qword_27D828FC8);

  v21 = *(v0 + qword_27D828FD0);

  v22 = *(v0 + qword_27D828FD8);

  v23 = *(v0 + qword_27D828FE0 + 16);
  v24 = *(v0 + qword_27D828FE0 + 24);
  sub_228267618(*(v0 + qword_27D828FE0), *(v0 + qword_27D828FE0 + 8));
  v25 = *(v0 + qword_27D828FE8);
}

uint64_t MedicationScheduleDataSource.deinit()
{
  v0 = sub_228390200();

  sub_228335E3C(v0 + qword_27D828F40, sub_2283356B0);
  v1 = *(v0 + qword_27D828F28);

  v2 = *(v0 + qword_27D828F48);

  v3 = *(v0 + qword_27D828F50);

  v4 = *(v0 + qword_27D828F58);

  v5 = *(v0 + qword_27D828F60);

  v6 = *(v0 + qword_27D828F68);

  v7 = *(v0 + qword_27D828F38);

  v8 = *(v0 + qword_27D828F70);

  v9 = *(v0 + qword_27D828F78);

  v10 = *(v0 + qword_27D828F80);

  v11 = *(v0 + qword_27D828F30);

  v12 = *(v0 + qword_27D828F88);

  v13 = *(v0 + qword_27D828F90);

  v14 = *(v0 + qword_27D828F98);

  v15 = *(v0 + qword_27D828FA0);

  v16 = *(v0 + qword_27D828FA8);

  v17 = *(v0 + qword_27D828FB0);

  v18 = *(v0 + qword_27D828FB8);

  v19 = *(v0 + qword_27D828FC0);

  v20 = *(v0 + qword_27D828FC8);

  v21 = *(v0 + qword_27D828FD0);

  v22 = *(v0 + qword_27D828FD8);

  v23 = *(v0 + qword_27D828FE0 + 16);
  v24 = *(v0 + qword_27D828FE0 + 24);
  sub_228267618(*(v0 + qword_27D828FE0), *(v0 + qword_27D828FE0 + 8));

  return v0;
}

uint64_t MedicationScheduleDataSource.__deallocating_deinit()
{
  v0 = *MedicationScheduleDataSource.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22832DEEC(uint64_t a1)
{
  v2 = type metadata accessor for WeekdaysAndDosages(0);
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391130();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v38 = &v35 - v21;
  v46 = 0;
  v43 = sub_228335C58(&qword_280DDBD00, MEMORY[0x277D11768]);
  sub_2283935F0();
  v22 = v7[2];
  v37 = v20;
  v42 = v22;
  v22(v17, v20, v6);
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = *(v2 + 20);
    v25 = *(v44 + 80);
    v35 = v7;
    v36 = a1;
    v26 = a1 + ((v25 + 32) & ~v25);
    v40 = *(v44 + 72);
    v41 = v24;
    v44 = (v7 + 1);
    v27 = (v7 + 4);
    v39 = v7 + 2;
    do
    {
      sub_228336908(v26, v5, type metadata accessor for WeekdaysAndDosages);
      v28 = MEMORY[0x277D11768];
      sub_228335C58(&qword_27D824818, MEMORY[0x277D11768]);
      sub_228392170();
      sub_2283935F0();
      v42(v11, &v5[v41], v6);
      sub_228335C58(&qword_27D824820, v28);
      sub_228393000();
      sub_228335E3C(v5, type metadata accessor for WeekdaysAndDosages);
      v29 = *v44;
      (*v44)(v17, v6);
      (*v27)(v17, v14, v6);
      v26 += v40;
      --v23;
    }

    while (v23);
    v44 = v44 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = v35;
    a1 = v36;
  }

  else
  {
    v30 = v7;
    v31 = (v7 + 1);
    v29 = v7[1];
    v44 = v31 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v29(v37, v6);
  v32 = v38;
  (v30[4])(v38, v17, v6);
  sub_2283910C0();
  sub_228335C58(&qword_27D824818, MEMORY[0x277D11768]);
  sub_228392170();
  sub_228392170();
  v29(v14, v6);
  v29(v32, v6);
  v33 = v46 == v45;
  return v33 & sub_22832FFAC(a1);
}

uint64_t sub_22832E390()
{
  v59 = sub_22838F700();
  v1 = *(v59 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22838F080();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v57);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Dosage();
  v49 = *(v50 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeekdaysAndDosages(0);
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v67 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22838F6C0();
  v14 = *(v61 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v61);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = [*(v0 + qword_27D828FE8) currentCalendar];
  v60 = v20;
  sub_22838F630();

  v70 = MEMORY[0x277D84F90];
  v22 = *(v0 + qword_27D828F58);

  sub_228391870();

  v68 = v69;

  v23 = 0;
  sub_228329D84(&v68);

  v24 = v68;
  v52 = v68[2];
  if (v52)
  {
    v51 = v68 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v56 = (v1 + 8);
    v46 = v14;
    v55 = (v14 + 8);
    v25 = (v4 + 8);
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    v48 = v11;
    v47 = v68;
    while (v26 < v24[2])
    {
      v28 = v67;
      sub_228336908(&v51[*(v53 + 72) * v26], v67, type metadata accessor for WeekdaysAndDosages);
      v23 = *(v28 + *(v11 + 24));
      v29 = v23[2];
      if (v29)
      {
        v54 = v26;
        v30 = v50;
        v31 = *(v50 + 20);
        v65 = *(v11 + 20);
        v66 = v31;
        v32 = objc_opt_self();
        v63 = *(v30 + 24);
        v64 = v32;
        v33 = v23 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v62 = *(v49 + 72);
        do
        {
          sub_228336908(v33, v10, type metadata accessor for Dosage);
          v34 = v58;
          sub_22838F690();
          sub_22838F5B0();
          v35 = (*v56)(v34, v59);
          v69 = 0;
          MEMORY[0x28223BE20](v35);
          v36 = v7;
          *(&v45 - 2) = &v69;
          v37 = [v64 hk_gregorianCalendar];
          sub_22838F630();

          sub_228391110();
          (*v55)(v18, v61);
          v38 = v69;
          v39 = *&v10[v63];
          sub_228335E3C(v10, type metadata accessor for Dosage);
          v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v41 = objc_allocWithZone(MEMORY[0x277D11580]);
          v42 = sub_22838EFB0();
          v23 = [v41 initWithStartTimeComponent:v42 daysOfWeek:v38 cycleIndex:0 cycleIntervalDays:0 dose:v40];

          v43 = v23;
          MEMORY[0x22AAB5D20]();
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2283921E0();
          }

          sub_228392230();

          (*v25)(v36, v57);
          v33 += v62;
          --v29;
          v7 = v36;
        }

        while (v29);
        v27 = v70;
        v11 = v48;
        v24 = v47;
        v26 = v54;
      }

      ++v26;
      sub_228335E3C(v67, type metadata accessor for WeekdaysAndDosages);
      if (v26 == v52)
      {

        v14 = v46;
        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v14 + 8))(v60, v61);
    return v27;
  }

  return result;
}

void sub_22832EAAC(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v95 = a3;
  v81[1] = a5;
  v87 = a4;
  v94 = a6;
  v8 = sub_2283911B0();
  v84 = *(v8 - 1);
  v85 = v8;
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Dosage();
  v88 = *(v11 - 1);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v11);
  v81[0] = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228336870();
  v86 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v90 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283368D4(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v82 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v91 = v81 - v22;
  MEMORY[0x28223BE20](v21);
  v89 = v81 - v23;
  v24 = sub_22838F700();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22838F080();
  v92 = *(v29 - 8);
  v93 = v29;
  v30 = *(v92 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  v98 = v33;

  sub_22838F690();
  v34 = a2 + v11[5];
  sub_22838F5B0();
  (*(v25 + 8))(v28, v24);
  v35 = *&v95[qword_27D828F48];

  sub_228391870();

  if ((v97 & 1) == 0)
  {
    v84 = v96;
    v45 = sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    v46 = sub_228392C40();
    v83 = v45;
    v47 = sub_228392C40();
    v48 = a2;
    v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v50 = objc_allocWithZone(MEMORY[0x277D11580]);
    v51 = sub_22838EFB0();
    v52 = [v50 initWithStartTimeComponent:v51 daysOfWeek:0 cycleIndex:v46 cycleIntervalDays:v47 dose:v49];

    v53 = v52;
    MEMORY[0x22AAB5D20]();
    v54 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v95 = v32;
    if (v54 >= v55 >> 1)
    {
      sub_2283921E0();
    }

    v85 = v53;
    sub_228392230();
    v33 = v98;
    v56 = v89;
    sub_228336908(v48, v89, type metadata accessor for Dosage);
    v57 = v88;
    v58 = *(v88 + 56);
    v59 = 1;
    v58(v56, 0, 1, v11);
    v60 = *(v87 + 16);
    v61 = v90;
    v62 = v91;
    if (v60)
    {
      sub_228336908(v87 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * (v60 - 1), v91, type metadata accessor for Dosage);
      v59 = 0;
    }

    v58(v62, v59, 1, v11);
    v63 = *(v86 + 48);
    sub_228336908(v56, v61, sub_2283368D4);
    sub_228336908(v62, &v61[v63], sub_2283368D4);
    v64 = *(v57 + 48);
    if (v64(v61, 1, v11) == 1)
    {
      sub_228335E3C(v62, sub_2283368D4);
      sub_228335E3C(v56, sub_2283368D4);
      if (v64(&v61[v63], 1, v11) == 1)
      {
        sub_228335E3C(v61, sub_2283368D4);
LABEL_12:
        v65 = v84 - 1;
        if (v84 != 1)
        {
          if (__OFSUB__(v84, 1))
          {
            __break(1u);
          }

          else
          {
            v66 = sub_228392C40();
            v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v69 = objc_allocWithZone(MEMORY[0x277D11580]);
            v70 = sub_22838EFB0();
            v71 = [v69 initWithStartTimeComponent:v70 daysOfWeek:0 cycleIndex:v66 cycleIntervalDays:v67 dose:v68];

            v11 = v71;
            MEMORY[0x22AAB5D20]();
            v61 = v85;
            if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_15:
              sub_228392230();

              (*(v92 + 8))(v95, v93);
              v33 = v98;
              goto LABEL_28;
            }
          }

          sub_2283921E0();
          goto LABEL_15;
        }

LABEL_27:
        (*(v92 + 8))(v95, v93);

        goto LABEL_28;
      }

      v73 = sub_228336870;
    }

    else
    {
      v72 = v82;
      sub_228336908(v61, v82, sub_2283368D4);
      if (v64(&v61[v63], 1, v11) == 1)
      {
        sub_228335E3C(v91, sub_2283368D4);
        sub_228335E3C(v56, sub_2283368D4);
        v73 = sub_228336870;
      }

      else
      {
        v74 = v81[0];
        sub_228336ACC(&v61[v63], v81[0], type metadata accessor for Dosage);
        if (sub_22838F470())
        {
          v75 = v11[5];
          v76 = v72;
          v77 = sub_22838F3D0();
          sub_228335E3C(v91, sub_2283368D4);
          sub_228335E3C(v56, sub_2283368D4);
          if (v77)
          {
            v78 = v11[6];
            v79 = *(v76 + v78);
            v80 = *(v74 + v78);
            v11 = type metadata accessor for Dosage;
            sub_228335E3C(v74, type metadata accessor for Dosage);
            sub_228335E3C(v76, type metadata accessor for Dosage);
            sub_228335E3C(v61, sub_2283368D4);
            if (v79 != v80)
            {
              goto LABEL_27;
            }

            goto LABEL_12;
          }

          sub_228335E3C(v74, type metadata accessor for Dosage);
          v73 = sub_2283368D4;
          v72 = v76;
        }

        else
        {
          sub_228335E3C(v74, type metadata accessor for Dosage);
          v73 = sub_2283368D4;
          sub_228335E3C(v91, sub_2283368D4);
          sub_228335E3C(v56, sub_2283368D4);
        }
      }

      sub_228335E3C(v72, type metadata accessor for Dosage);
    }

    sub_228335E3C(v61, v73);
    goto LABEL_27;
  }

  v36 = v32;
  v37 = v83;
  sub_228391150();
  v38 = sub_2283911A0();
  v39 = sub_2283925C0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v96 = v41;
    *v40 = 136315138;
    v42 = sub_228393600();
    v44 = sub_2281C96FC(v42, v43, &v96);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_22816B000, v38, v39, "%s encountered HKMedicationScheduleIntervalData with nil frequencyInterval.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AAB7B80](v41, -1, -1);
    MEMORY[0x22AAB7B80](v40, -1, -1);
  }

  (*(v84 + 8))(v37, v85);
  (*(v92 + 8))(v36, v93);
LABEL_28:
  *v94 = v33;
}

uint64_t sub_22832F580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v3 = sub_22838F700();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22838F080();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F690();
  v13 = type metadata accessor for Dosage();
  v14 = a1 + *(v13 + 20);
  sub_22838F5B0();
  (*(v4 + 8))(v7, v3);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v16 = objc_allocWithZone(MEMORY[0x277D11580]);
  v17 = sub_22838EFB0();
  v18 = [v16 initWithStartTimeComponent:v17 daysOfWeek:0 cycleIndex:0 cycleIntervalDays:0 dose:v15];

  result = (*(v9 + 8))(v12, v8);
  *v20 = v18;
  return result;
}

uint64_t sub_22832F79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  v33 = a4;
  v30 = a2;
  v29 = a3;
  v34 = ~a3;
  v5 = sub_22838F700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22838F080();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v28[-v16];
  sub_22838F690();
  v31 = type metadata accessor for Dosage();
  v32 = a1;
  v18 = a1 + *(v31 + 20);
  sub_22838F5B0();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 16))(v15, v17, v10);
  sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
  result = sub_228392C40();
  v20 = result;
  if (!v34)
  {
    v21 = 0;
    goto LABEL_6;
  }

  if (v29)
  {
    v21 = v30;
LABEL_6:
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v24 = objc_allocWithZone(MEMORY[0x277D11580]);
    v25 = sub_22838EFB0();
    v26 = [v24 initWithStartTimeComponent:v25 daysOfWeek:0 cycleIndex:v20 cycleIntervalDays:v22 dose:v23];

    v27 = *(v11 + 8);
    v27(v15, v10);
    result = (v27)(v17, v10);
    *v33 = v26;
    return result;
  }

  v21 = 7 * v30;
  if ((v30 * 7) >> 64 == (7 * v30) >> 63)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22832FAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v27 = a4;
  v25 = a3;
  v26 = a2;
  v5 = sub_22838F700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F080();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F690();
  v15 = type metadata accessor for Dosage();
  v16 = a1 + *(v15 + 20);
  sub_22838F5B0();
  (*(v6 + 8))(v9, v5);
  v17 = sub_2283924E0();
  v18 = *(a1 + *(v15 + 24));
  v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v20 = [v19 initWithDouble_];
  v21 = objc_allocWithZone(MEMORY[0x277D11580]);
  v22 = sub_22838EFB0();
  v23 = [v21 initWithStartTimeComponent:v22 daysOfWeek:0 cycleIndex:v26 cycleIntervalDays:v17 dose:v20];

  result = (*(v11 + 8))(v14, v10);
  *v27 = v23;
  return result;
}

BOOL sub_22832FCE0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_22838F6C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391060();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = type metadata accessor for WeekdaysAndDosages(0);
  v15 = *(v14 + 20);
  sub_22838F680();
  v16 = sub_228391030();
  v17 = *(v3 + 8);
  v27 = v2;
  v17(v6, v2);
  if (*(v16 + 16))
  {
    (*(v8 + 16))(v13, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v18 = sub_228391050();
    (*(v8 + 8))(v13, v7);
  }

  else
  {

    v18 = 0;
  }

  v19 = *(v14 + 20);
  sub_22838F680();
  v20 = sub_228391030();
  v17(v6, v27);
  if (*(v20 + 16))
  {
    v21 = v25;
    (*(v8 + 16))(v25, v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v22 = sub_228391050();
    (*(v8 + 8))(v21, v7);
  }

  else
  {

    v22 = 0;
  }

  return v18 < v22;
}

uint64_t sub_22832FFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = type metadata accessor for WeekdaysAndDosages(0);
  v29 = *(v3 - 8);
  v4 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v5 = *(v4 + *(v3 + 24));

  v7 = sub_228264B78(v6);

  v8 = 1;
  while (1)
  {
    if (v1 == v8)
    {

      return 1;
    }

    v9 = v4 + *(v29 + 72) * v8;
    v10 = *(v3 + 24);
    v11 = *(v9 + v10);
    v12 = *(v11 + 16);
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v7[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    v15 = *(v9 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v17 = v7, v14 > v7[3] >> 1))
    {
      if (v13 <= v14)
      {
        v18 = v13 + v12;
      }

      else
      {
        v18 = v13;
      }

      v17 = sub_2281984E8(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    }

    if (!*(v11 + 16))
    {
      goto LABEL_22;
    }

    v19 = (*(v17 + 24) >> 1) - *(v17 + 16);
    v20 = *(type metadata accessor for Dosage() - 8);
    if (v19 < v12)
    {
      goto LABEL_20;
    }

    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = *(v20 + 72);
    swift_arrayInitWithCopy();

    v23 = *(v17 + 16);
    v24 = __OFADD__(v23, v12);
    v25 = v23 + v12;
    if (v24)
    {
      goto LABEL_21;
    }

    *(v17 + 16) = v25;
    v26 = sub_228264B78(v17);

    v27 = *(v26 + 16);

    ++v8;
    if (v27 != v7[2])
    {
LABEL_16:

      return 0;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_2283301DC(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_228393410();
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
        a2(0);
        v12 = sub_228392220();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
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
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_22833032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Dosage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v36 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    sub_22838F440();
    v20 = *(v9 + 72);
    v21 = v19 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_228336908(v23, v18, type metadata accessor for Dosage);
      sub_228336908(v21, v15, type metadata accessor for Dosage);
      v24 = *(v8 + 20);
      sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578]);
      LOBYTE(v24) = sub_228391FA0();
      sub_228335E3C(v15, type metadata accessor for Dosage);
      result = sub_228335E3C(v18, type metadata accessor for Dosage);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_228336ACC(v23, v36, type metadata accessor for Dosage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_228336ACC(v25, v21, type metadata accessor for Dosage);
      v21 += v34;
      v23 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2283305DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v74 = sub_22838F6C0();
  v8 = *(v74 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v74);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228391060();
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v53 - v17;
  v18 = type metadata accessor for WeekdaysAndDosages(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  result = MEMORY[0x28223BE20](v22);
  v28 = &v53 - v27;
  v55 = a2;
  if (a3 != a2)
  {
    v29 = *a4;
    v30 = *(v26 + 72);
    v73 = (v8 + 8);
    v67 = v70 + 8;
    v68 = v70 + 16;
    v31 = v29 + v30 * (a3 - 1);
    v63 = -v30;
    v64 = v29;
    v32 = a1 - a3;
    v54 = v30;
    v33 = v29 + v30 * a3;
    v60 = v24;
    v66 = &v53 - v27;
LABEL_5:
    v58 = v31;
    v59 = a3;
    v56 = v33;
    v57 = v32;
    v34 = v32;
    while (1)
    {
      v72 = v34;
      sub_228336908(v33, v28, type metadata accessor for WeekdaysAndDosages);
      sub_228336908(v31, v24, type metadata accessor for WeekdaysAndDosages);
      v35 = *(v18 + 20);
      sub_22838F680();
      v36 = sub_228391030();
      v37 = *v73;
      (*v73)(v11, v74);
      if (*(v36 + 16))
      {
        v39 = v69;
        v38 = v70;
        v40 = v18;
        v41 = v11;
        v42 = v61;
        (*(v70 + 16))(v61, v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v69);

        v71 = sub_228391050();
        v43 = v42;
        v11 = v41;
        v18 = v40;
        v24 = v60;
        (*(v38 + 8))(v43, v39);
      }

      else
      {

        v71 = 0;
      }

      v44 = *(v18 + 20);
      sub_22838F680();
      v45 = sub_228391030();
      v37(v11, v74);
      if (*(v45 + 16))
      {
        v46 = v69;
        v47 = v70;
        v48 = v62;
        (*(v70 + 16))(v62, v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v69);

        v49 = sub_228391050();
        (*(v47 + 8))(v48, v46);
      }

      else
      {

        v49 = 0;
      }

      v50 = v72;
      sub_228335E3C(v24, type metadata accessor for WeekdaysAndDosages);
      v28 = v66;
      result = sub_228335E3C(v66, type metadata accessor for WeekdaysAndDosages);
      if (v71 >= v49)
      {
LABEL_4:
        a3 = v59 + 1;
        v31 = v58 + v54;
        v32 = v57 - 1;
        v33 = v56 + v54;
        if (v59 + 1 == v55)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v64)
      {
        break;
      }

      v51 = v65;
      sub_228336ACC(v33, v65, type metadata accessor for WeekdaysAndDosages);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_228336ACC(v51, v31, type metadata accessor for WeekdaysAndDosages);
      v31 += v63;
      v33 += v63;
      v52 = __CFADD__(v50, 1);
      v34 = v50 + 1;
      if (v52)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228330AEC(int64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v114 = a1;
  v8 = type metadata accessor for Dosage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v117 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v125 = &v109 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v109 - v16;
  result = MEMORY[0x28223BE20](v15);
  v126 = &v109 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_98:
    v35 = *v114;
    if (!*v114)
    {
      goto LABEL_137;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_101:
      v129 = result;
      v104 = *(result + 16);
      if (v104 >= 2)
      {
        while (*a3)
        {
          a4 = v104 - 1;
          v105 = *(result + 16 * v104);
          v106 = result;
          v107 = *(result + 16 * (v104 - 1) + 40);
          sub_228332428(*a3 + *(v9 + 72) * v105, *a3 + *(v9 + 72) * *(result + 16 * (v104 - 1) + 32), *a3 + *(v9 + 72) * v107, v35);
          if (v5)
          {
          }

          if (v107 < v105)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_2283406C0(v106);
          }

          if (v104 - 2 >= *(v106 + 2))
          {
            goto LABEL_125;
          }

          v108 = &v106[16 * v104];
          *v108 = v105;
          *(v108 + 1) = v107;
          v129 = v106;
          sub_228340634(a4);
          result = v129;
          v104 = *(v129 + 16);
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_2283406C0(a4);
    goto LABEL_101;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v113 = a4;
  v128 = v8;
  v115 = a3;
  v110 = v9;
  while (1)
  {
    v118 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v123 = v19;
      v112 = v5;
      v22 = *a3;
      v23 = v8;
      v24 = *(v9 + 72);
      v25 = v22 + v24 * (v20 + 1);
      v26 = v126;
      sub_228336908(v25, v126, type metadata accessor for Dosage);
      v27 = v127;
      sub_228336908(v22 + v24 * v20, v127, type metadata accessor for Dosage);
      sub_22838F440();
      v28 = *(v23 + 20);
      v122 = sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578]);
      LODWORD(v124) = sub_228391FA0();
      sub_228335E3C(v27, type metadata accessor for Dosage);
      result = sub_228335E3C(v26, type metadata accessor for Dosage);
      v111 = v20;
      v29 = v20 + 2;
      v30 = v22 + v24 * (v20 + 2);
      while (v123 != v29)
      {
        v31 = v126;
        sub_228336908(v30, v126, type metadata accessor for Dosage);
        v32 = v127;
        sub_228336908(v25, v127, type metadata accessor for Dosage);
        v33 = *(v128 + 20);
        v34 = sub_228391FA0() & 1;
        sub_228335E3C(v32, type metadata accessor for Dosage);
        result = sub_228335E3C(v31, type metadata accessor for Dosage);
        ++v29;
        v30 += v24;
        v25 += v24;
        if ((v124 & 1) != v34)
        {
          v35 = v29 - 1;
          goto LABEL_11;
        }
      }

      v35 = v123;
LABEL_11:
      v5 = v112;
      a4 = v113;
      v9 = v110;
      v20 = v111;
      a3 = v115;
      if ((v124 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v35 < v111)
      {
        goto LABEL_128;
      }

      if (v111 < v35)
      {
        v36 = v24 * (v35 - 1);
        v37 = v35;
        v38 = v35 * v24;
        v123 = v37;
        v39 = v111;
        v40 = v111 * v24;
        do
        {
          if (v39 != --v37)
          {
            v41 = *a3;
            if (!v41)
            {
              goto LABEL_134;
            }

            sub_228336ACC(v41 + v40, v117, type metadata accessor for Dosage);
            if (v40 < v36 || v41 + v40 >= (v41 + v38))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_228336ACC(v117, v41 + v36, type metadata accessor for Dosage);
            a3 = v115;
          }

          ++v39;
          v36 -= v24;
          v38 -= v24;
          v40 += v24;
        }

        while (v39 < v37);
        v5 = v112;
        a4 = v113;
        v9 = v110;
        v20 = v111;
        v8 = v128;
        v35 = v123;
      }

      else
      {
LABEL_24:
        v8 = v128;
      }
    }

    v42 = a3[1];
    if (v35 >= v42)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v35, v20))
    {
      goto LABEL_127;
    }

    if (v35 - v20 >= a4)
    {
LABEL_35:
      v44 = v35;
      if (v35 < v20)
      {
        goto LABEL_126;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_129;
    }

    if ((v20 + a4) >= v42)
    {
      v43 = a3[1];
    }

    else
    {
      v43 = v20 + a4;
    }

    if (v43 < v20)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v35 == v43)
    {
      goto LABEL_35;
    }

    v112 = v5;
    v90 = *a3;
    sub_22838F440();
    v91 = *(v9 + 72);
    v92 = v90 + v91 * (v35 - 1);
    v93 = -v91;
    v111 = v20;
    v94 = v20 - v35;
    v124 = v90;
    v116 = v91;
    v95 = v90 + v35 * v91;
    v119 = v43;
LABEL_88:
    v122 = v92;
    v123 = v35;
    v120 = v95;
    v121 = v94;
    v96 = v95;
    v97 = v94;
    v98 = v92;
LABEL_89:
    v99 = v126;
    sub_228336908(v96, v126, type metadata accessor for Dosage);
    v100 = v127;
    sub_228336908(v98, v127, type metadata accessor for Dosage);
    v101 = *(v8 + 20);
    sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578]);
    a4 = sub_228391FA0();
    sub_228335E3C(v100, type metadata accessor for Dosage);
    result = sub_228335E3C(v99, type metadata accessor for Dosage);
    if (a4)
    {
      break;
    }

    v8 = v128;
LABEL_87:
    v35 = v123 + 1;
    v92 = v122 + v116;
    v94 = v121 - 1;
    v95 = v120 + v116;
    v44 = v119;
    if (v123 + 1 != v119)
    {
      goto LABEL_88;
    }

    v20 = v111;
    v5 = v112;
    a3 = v115;
    v9 = v110;
    if (v119 < v111)
    {
      goto LABEL_126;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v118;
    }

    else
    {
      result = sub_228198978(0, *(v118 + 2) + 1, 1, v118);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v45 = *(v21 + 3);
    v46 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_228198978((v45 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v46;
    v47 = &v21[16 * a4];
    *(v47 + 4) = v20;
    *(v47 + 5) = v44;
    v35 = *v114;
    if (!*v114)
    {
      goto LABEL_136;
    }

    v119 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v46 - 1;
        if (v46 >= 4)
        {
          v53 = &v21[16 * v46 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_113;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_114;
          }

          v60 = &v21[16 * v46];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_116;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v64 >= v56)
          {
            v82 = &v21[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_123;
            }

            if (v51 < v85)
            {
              v48 = v46 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v52)
            {
              goto LABEL_115;
            }

            v65 = &v21[16 * v46];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_118;
            }

            v71 = &v21[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_122;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_69;
            }

            if (v51 < v74)
            {
              v48 = v46 - 2;
            }
          }
        }

        else
        {
          if (v46 == 3)
          {
            v49 = *(v21 + 4);
            v50 = *(v21 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_55;
          }

          v75 = &v21[16 * v46];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_69:
          if (v70)
          {
            goto LABEL_117;
          }

          v78 = &v21[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_120;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v46)
        {
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
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v86 = v21;
        v87 = *&v21[16 * a4 + 32];
        v88 = *&v21[16 * v48 + 40];
        sub_228332428(*a3 + *(v9 + 72) * v87, *a3 + *(v9 + 72) * *&v21[16 * v48 + 32], *a3 + *(v9 + 72) * v88, v35);
        if (v5)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_2283406C0(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_112;
        }

        v89 = &v86[16 * a4];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        v129 = v86;
        result = sub_228340634(v48);
        v21 = v129;
        v46 = *(v129 + 16);
        v8 = v128;
        if (v46 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = a3[1];
    v20 = v119;
    a4 = v113;
    if (v119 >= v19)
    {
      goto LABEL_98;
    }
  }

  if (v124)
  {
    a4 = type metadata accessor for Dosage;
    v102 = v125;
    sub_228336ACC(v96, v125, type metadata accessor for Dosage);
    v8 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_228336ACC(v102, v98, type metadata accessor for Dosage);
    v98 += v93;
    v96 += v93;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

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
  return result;
}

uint64_t sub_2283314E0(unint64_t *a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  v5 = v4;
  v148 = a1;
  v176 = sub_22838F6C0();
  v8 = *(v176 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v176);
  v11 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_228391060();
  v12 = *(v172 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v172);
  v164 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v163 = &v143 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v153 = &v143 - v19;
  MEMORY[0x28223BE20](v18);
  v152 = &v143 - v20;
  v21 = type metadata accessor for WeekdaysAndDosages(0);
  v158 = *(v21 - 8);
  v22 = *(v158 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v150 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v168 = &v143 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v177 = &v143 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v174 = &v143 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v162 = &v143 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v159 = &v143 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v143 = &v143 - v36;
  result = MEMORY[0x28223BE20](v35);
  v39 = *(a3 + 8);
  v161 = a3;
  if (v39 < 1)
  {
    v41 = MEMORY[0x277D84F90];
LABEL_111:
    a4 = *v148;
    if (!*v148)
    {
      goto LABEL_153;
    }

    v8 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    result = v8;
LABEL_114:
    v178 = result;
    v8 = *(result + 16);
    if (v8 >= 2)
    {
      while (1)
      {
        v139 = *a3;
        if (!*a3)
        {
          goto LABEL_151;
        }

        a3 = *(result + 16 * v8);
        v140 = result;
        v141 = *(result + 16 * (v8 - 1) + 40);
        sub_2283329FC(v139 + *(v158 + 72) * a3, v139 + *(v158 + 72) * *(result + 16 * (v8 - 1) + 32), v139 + *(v158 + 72) * v141, a4);
        if (v5)
        {
        }

        if (v141 < a3)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_2283406C0(v140);
        }

        if (v8 - 2 >= *(v140 + 2))
        {
          goto LABEL_141;
        }

        v142 = &v140[16 * v8];
        *v142 = a3;
        v142[1] = v141;
        v178 = v140;
        sub_228340634(v8 - 1);
        result = v178;
        v8 = *(v178 + 16);
        a3 = v161;
        if (v8 <= 1)
        {
        }
      }
    }
  }

  v144 = &v143 - v38;
  v40 = 0;
  v175 = (v8 + 8);
  v170 = v12 + 8;
  v171 = v12 + 16;
  v41 = MEMORY[0x277D84F90];
  v147 = a4;
  v169 = v12;
  v165 = v21;
  while (1)
  {
    v151 = v41;
    if (v40 + 1 >= v39)
    {
      v50 = v40 + 1;
      goto LABEL_31;
    }

    v160 = v39;
    v42 = *a3;
    v8 = *(v158 + 72);
    v43 = v40;
    v44 = *a3 + v8 * (v40 + 1);
    v173 = type metadata accessor for WeekdaysAndDosages;
    v45 = v144;
    sub_228336908(v44, v144, type metadata accessor for WeekdaysAndDosages);
    v167 = v42;
    v46 = v42 + v8 * v43;
    v47 = v143;
    sub_228336908(v46, v143, v173);
    LODWORD(v166) = sub_22832FCE0(v45, v47);
    if (v5)
    {
      sub_228335E3C(v47, type metadata accessor for WeekdaysAndDosages);
      sub_228335E3C(v144, type metadata accessor for WeekdaysAndDosages);
    }

    v146 = 0;
    sub_228335E3C(v47, type metadata accessor for WeekdaysAndDosages);
    result = sub_228335E3C(v144, type metadata accessor for WeekdaysAndDosages);
    v145 = v43;
    v48 = v43 + 2;
    v49 = v167 + v8 * (v43 + 2);
    v50 = v160;
    a3 = v161;
    v167 = v8;
    while (v50 != v48)
    {
      sub_228336908(v49, v159, type metadata accessor for WeekdaysAndDosages);
      sub_228336908(v44, v162, type metadata accessor for WeekdaysAndDosages);
      v55 = *(v21 + 20);
      sub_22838F680();
      v56 = sub_228391030();
      v57 = *v175;
      (*v175)(v11, v176);
      if (*(v56 + 16))
      {
        v58 = v152;
        v59 = v172;
        (*(v12 + 16))(v152, v56 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v172);

        v173 = sub_228391050();
        v60 = v59;
        v21 = v165;
        (*(v12 + 8))(v58, v60);
      }

      else
      {

        v173 = 0;
      }

      v61 = *(v21 + 20);
      sub_22838F680();
      v62 = sub_228391030();
      v57(v11, v176);
      if (*(v62 + 16))
      {
        v51 = v153;
        v52 = v172;
        (*(v12 + 16))(v153, v62 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v172);

        v53 = sub_228391050();
        (*(v12 + 8))(v51, v52);
      }

      else
      {

        v53 = 0;
      }

      v50 = v160;
      a3 = v161;
      sub_228335E3C(v162, type metadata accessor for WeekdaysAndDosages);
      result = sub_228335E3C(v159, type metadata accessor for WeekdaysAndDosages);
      v54 = v173 >= v53;
      ++v48;
      v8 = v167;
      v49 += v167;
      v44 += v167;
      v21 = v165;
      if (((v166 ^ v54) & 1) == 0)
      {
        v50 = v48 - 1;
        break;
      }
    }

    v5 = v146;
    a4 = v147;
    v40 = v145;
    if (v166)
    {
      if (v50 < v145)
      {
        goto LABEL_146;
      }

      if (v145 < v50)
      {
        v63 = v8 * (v50 - 1);
        v64 = v50;
        v65 = v50 * v8;
        v160 = v64;
        v66 = v64;
        v67 = v145;
        v68 = v145 * v8;
        do
        {
          if (v67 != --v66)
          {
            v69 = *a3;
            if (!v69)
            {
              goto LABEL_150;
            }

            sub_228336ACC(v69 + v68, v150, type metadata accessor for WeekdaysAndDosages);
            if (v68 < v63 || v69 + v68 >= v69 + v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v63)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_228336ACC(v150, v69 + v63, type metadata accessor for WeekdaysAndDosages);
            a3 = v161;
            v8 = v167;
          }

          ++v67;
          v63 -= v8;
          v65 -= v8;
          v68 += v8;
        }

        while (v67 < v66);
        v5 = v146;
        a4 = v147;
        v21 = v165;
        v40 = v145;
        v50 = v160;
      }
    }

LABEL_31:
    v70 = *(a3 + 8);
    if (v50 >= v70)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v50, v40))
    {
      goto LABEL_143;
    }

    if (v50 - v40 >= a4)
    {
      goto LABEL_40;
    }

    if (__OFADD__(v40, a4))
    {
      goto LABEL_144;
    }

    if ((v40 + a4) >= v70)
    {
      a4 = *(a3 + 8);
    }

    else
    {
      a4 += v40;
    }

    if (a4 < v40)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      result = sub_2283406C0(v8);
      goto LABEL_114;
    }

    if (v50 == a4)
    {
LABEL_40:
      a4 = v50;
      if (v50 < v40)
      {
        goto LABEL_142;
      }

      goto LABEL_41;
    }

    v146 = v5;
    v116 = *a3;
    v117 = *(v158 + 72);
    v118 = *a3 + v117 * (v50 - 1);
    v166 = -v117;
    v145 = v40;
    v119 = v40 - v50;
    v167 = v116;
    v149 = v117;
    v120 = v116 + v50 * v117;
    v154 = a4;
LABEL_94:
    v160 = v50;
    v155 = v120;
    v156 = v119;
    v121 = v119;
    v157 = v118;
LABEL_95:
    sub_228336908(v120, v174, type metadata accessor for WeekdaysAndDosages);
    sub_228336908(v118, v177, type metadata accessor for WeekdaysAndDosages);
    v122 = *(v21 + 20);
    sub_22838F680();
    v123 = sub_228391030();
    v124 = *v175;
    (*v175)(v11, v176);
    if (*(v123 + 16))
    {
      v125 = *(v12 + 16);
      v126 = v123 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v127 = v163;
      v128 = v11;
      v129 = v12;
      v130 = v172;
      v125(v163, v126, v172);

      v173 = sub_228391050();
      v131 = *(v129 + 8);
      v11 = v128;
      v132 = v127;
      v21 = v165;
      v131(v132, v130);
    }

    else
    {

      v173 = 0;
    }

    v133 = *(v21 + 20);
    sub_22838F680();
    v134 = sub_228391030();
    v124(v11, v176);
    if (*(v134 + 16))
    {
      v12 = v169;
      v135 = v164;
      v136 = v172;
      (*(v169 + 16))(v164, v134 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v172);

      v8 = sub_228391050();
      (*(v12 + 8))(v135, v136);
    }

    else
    {

      v8 = 0;
      v12 = v169;
    }

    a3 = type metadata accessor for WeekdaysAndDosages;
    sub_228335E3C(v177, type metadata accessor for WeekdaysAndDosages);
    result = sub_228335E3C(v174, type metadata accessor for WeekdaysAndDosages);
    if (v173 < v8)
    {
      break;
    }

LABEL_93:
    v50 = v160 + 1;
    v118 = v157 + v149;
    v119 = v156 - 1;
    v120 = v155 + v149;
    a4 = v154;
    if (v160 + 1 != v154)
    {
      goto LABEL_94;
    }

    v5 = v146;
    v40 = v145;
    if (v154 < v145)
    {
      goto LABEL_142;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    v154 = a4;
    if (result)
    {
      v41 = v151;
    }

    else
    {
      result = sub_228198978(0, *(v151 + 2) + 1, 1, v151);
      v41 = result;
    }

    a4 = *(v41 + 2);
    v71 = *(v41 + 3);
    v8 = a4 + 1;
    if (a4 >= v71 >> 1)
    {
      result = sub_228198978((v71 > 1), a4 + 1, 1, v41);
      v41 = result;
    }

    *(v41 + 2) = v8;
    v72 = &v41[16 * a4];
    v73 = v154;
    *(v72 + 4) = v40;
    *(v72 + 5) = v73;
    if (!*v148)
    {
      goto LABEL_152;
    }

    if (a4)
    {
      a3 = *v148;
      while (1)
      {
        v74 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v75 = *(v41 + 4);
          v76 = *(v41 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_61:
          if (v78)
          {
            goto LABEL_131;
          }

          v91 = &v41[16 * v8];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_134;
          }

          v97 = &v41[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_138;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v8 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v101 = &v41[16 * v8];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_75:
        if (v96)
        {
          goto LABEL_133;
        }

        v104 = &v41[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_136;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_82:
        a4 = v74 - 1;
        if (v74 - 1 >= v8)
        {
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

        if (!*v161)
        {
          goto LABEL_149;
        }

        v112 = v41;
        v8 = *&v41[16 * a4 + 32];
        v113 = *&v41[16 * v74 + 40];
        sub_2283329FC(*v161 + *(v158 + 72) * v8, *v161 + *(v158 + 72) * *&v41[16 * v74 + 32], *v161 + *(v158 + 72) * v113, a3);
        if (v5)
        {
        }

        if (v113 < v8)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v114 = v112;
        }

        else
        {
          v114 = sub_2283406C0(v112);
        }

        v21 = v165;
        if (a4 >= *(v114 + 2))
        {
          goto LABEL_128;
        }

        v115 = &v114[16 * a4];
        *(v115 + 4) = v8;
        *(v115 + 5) = v113;
        v178 = v114;
        result = sub_228340634(v74);
        v41 = v178;
        v8 = *(v178 + 16);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v41[16 * v8 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_129;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_130;
      }

      v86 = &v41[16 * v8];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_132;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_135;
      }

      if (v90 >= v82)
      {
        v108 = &v41[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_139;
        }

        if (v77 < v111)
        {
          v74 = v8 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    a3 = v161;
    v39 = v161[1];
    v40 = v154;
    a4 = v147;
    if (v154 >= v39)
    {
      goto LABEL_111;
    }
  }

  if (v167)
  {
    v8 = type metadata accessor for WeekdaysAndDosages;
    v137 = v168;
    sub_228336ACC(v120, v168, type metadata accessor for WeekdaysAndDosages);
    swift_arrayInitWithTakeFrontToBack();
    sub_228336ACC(v137, v118, type metadata accessor for WeekdaysAndDosages);
    v118 += v166;
    v120 += v166;
    if (__CFADD__(v121++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
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

uint64_t sub_228332428(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Dosage();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v49 = &v40 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_59;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v17 = (a2 - a1) / v15;
  v53 = a1;
  v52 = a4;
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

    v27 = a4 + v19;
    if (v19 >= 1)
    {
      v28 = v8;
      v29 = -v15;
      v30 = v27;
      v44 = a1;
      v45 = a4;
      v43 = -v15;
      do
      {
        v41 = v27;
        v31 = a2 + v29;
        v47 = a2;
        v48 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v53 = a2;
            v51 = v41;
            goto LABEL_57;
          }

          v33 = a3;
          v42 = v27;
          a3 += v29;
          v34 = v30 + v29;
          v35 = v49;
          sub_228336908(v30 + v29, v49, type metadata accessor for Dosage);
          v36 = v50;
          sub_228336908(v31, v50, type metadata accessor for Dosage);
          sub_22838F440();
          v37 = v28;
          v38 = *(v28 + 20);
          sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578]);
          v39 = sub_228391FA0();
          sub_228335E3C(v36, type metadata accessor for Dosage);
          sub_228335E3C(v35, type metadata accessor for Dosage);
          if (v39)
          {
            break;
          }

          v27 = v34;
          if (v33 < v30 || a3 >= v30)
          {
            v28 = v37;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v44;
          }

          else
          {
            v28 = v37;
            a1 = v44;
            if (v33 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v34;
          v32 = v34 > v45;
          a2 = v47;
          v31 = v48;
          v29 = v43;
          if (!v32)
          {
            goto LABEL_55;
          }
        }

        if (v33 < v47 || a3 >= v47)
        {
          a2 = v48;
          v28 = v37;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v44;
          v27 = v42;
        }

        else
        {
          v28 = v37;
          a2 = v48;
          a1 = v44;
          v27 = v42;
          if (v33 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v43;
      }

      while (v30 > v45);
    }

LABEL_55:
    v53 = a2;
    v51 = v27;
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

    v48 = a4 + v18;
    v51 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v46 = v8;
      v47 = a3;
      do
      {
        v21 = v49;
        sub_228336908(a2, v49, type metadata accessor for Dosage);
        v22 = a2;
        v23 = v50;
        sub_228336908(a4, v50, type metadata accessor for Dosage);
        sub_22838F440();
        v24 = *(v8 + 20);
        sub_228335C58(&qword_280DDCDB8, MEMORY[0x277CC9578]);
        v25 = sub_228391FA0();
        sub_228335E3C(v23, type metadata accessor for Dosage);
        sub_228335E3C(v21, type metadata accessor for Dosage);
        if (v25)
        {
          a2 = v22 + v15;
          if (a1 < v22 || a1 >= a2)
          {
            v8 = v46;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v47;
          }

          else
          {
            v8 = v46;
            v26 = v47;
            if (a1 != v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            v8 = v46;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v47;
            a2 = v22;
          }

          else
          {
            v8 = v46;
            v26 = v47;
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v53 = a1;
      }

      while (a4 < v48 && a2 < v26);
    }
  }

LABEL_57:
  sub_2283333F0(&v53, &v52, &v51, type metadata accessor for Dosage);
  return 1;
}

uint64_t sub_2283329FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v90 = a4;
  v101 = sub_22838F6C0();
  v7 = *(v101 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v101);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391060();
  v12 = *(v11 - 8);
  v98 = v11;
  v99 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v86 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v84 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v87 = &v84 - v20;
  v102 = type metadata accessor for WeekdaysAndDosages(0);
  v21 = *(*(v102 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v102);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v96 = (&v84 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v89 = &v84 - v28;
  result = MEMORY[0x28223BE20](v27);
  v97 = &v84 - v30;
  v32 = *(v31 + 72);
  if (!v32)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v33 = a2;
  if (a2 - a1 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_73;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_74;
  }

  v35 = (a2 - a1) / v32;
  v105 = a1;
  v36 = v90;
  v104 = v90;
  v93 = v32;
  if (v35 >= v34 / v32)
  {
    v39 = v34 / v32 * v32;
    if (v90 < v33 || v33 + v39 <= v90)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v90 != v33)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = v36 + v39;
    if (v39 < 1)
    {
      v63 = v33;
    }

    else
    {
      v61 = -v93;
      v93 = v24;
      v94 = (v7 + 8);
      v92 = v99 + 16;
      v89 = (v99 + 8);
      v62 = v36 + v39;
      v63 = v33;
      v95 = v61;
      do
      {
        v87 = v60;
        v64 = v63 + v61;
        v100 = v63 + v61;
        v91 = v63;
        while (1)
        {
          if (v63 <= a1)
          {
            v105 = v63;
            v103 = v87;
            goto LABEL_71;
          }

          v66 = a3;
          v88 = v60;
          v97 = v62 + v61;
          sub_228336908(v62 + v61, v96, type metadata accessor for WeekdaysAndDosages);
          sub_228336908(v64, v24, type metadata accessor for WeekdaysAndDosages);
          v67 = *(v102 + 20);
          sub_22838F680();
          v68 = sub_228391030();
          v69 = *v94;
          (*v94)(v10, v101);
          if (*(v68 + 16))
          {
            v71 = v98;
            v70 = v99;
            v72 = v85;
            (*(v99 + 16))(v85, v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v98);

            v73 = sub_228391050();
            v74 = v71;
            v24 = v93;
            (*(v70 + 8))(v72, v74);
          }

          else
          {

            v73 = 0;
          }

          v75 = *(v102 + 20);
          sub_22838F680();
          v76 = sub_228391030();
          v69(v10, v101);
          if (*(v76 + 16))
          {
            v77 = v98;
            v78 = v99;
            v79 = v86;
            (*(v99 + 16))(v86, v76 + ((*(v78 + 80) + 32) & ~*(v78 + 80)), v98);

            v80 = sub_228391050();
            v81 = v79;
            v24 = v93;
            (*(v78 + 8))(v81, v77);
          }

          else
          {

            v80 = 0;
          }

          a3 = v66 + v95;
          sub_228335E3C(v24, type metadata accessor for WeekdaysAndDosages);
          sub_228335E3C(v96, type metadata accessor for WeekdaysAndDosages);
          if (v73 < v80)
          {
            break;
          }

          v60 = v97;
          v64 = v100;
          v82 = v90;
          if (v66 < v62 || a3 >= v62)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v66 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v62 = v60;
          v65 = v97 > v82;
          v61 = v95;
          v63 = v91;
          if (!v65)
          {
            goto LABEL_69;
          }
        }

        v83 = v90;
        v63 = v100;
        if (v66 < v91 || a3 >= v91)
        {
          swift_arrayInitWithTakeFrontToBack();
          v60 = v88;
        }

        else
        {
          v60 = v88;
          if (v66 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v61 = v95;
      }

      while (v62 > v83);
    }

LABEL_69:
    v105 = v63;
    v103 = v60;
  }

  else
  {
    v37 = v35 * v32;
    if (v90 < a1 || a1 + v37 <= v90)
    {
      swift_arrayInitWithTakeFrontToBack();
      v38 = v89;
    }

    else
    {
      v38 = v89;
      if (v90 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v92 = v36 + v37;
    v103 = (v36 + v37);
    if (v37 >= 1 && v33 < a3)
    {
      v41 = v36;
      v95 = v99 + 16;
      v96 = (v7 + 8);
      v94 = (v99 + 8);
      v91 = a3;
      do
      {
        v100 = v33;
        sub_228336908(v33, v97, type metadata accessor for WeekdaysAndDosages);
        v42 = v41;
        sub_228336908(v41, v38, type metadata accessor for WeekdaysAndDosages);
        v43 = *(v102 + 20);
        sub_22838F680();
        v44 = sub_228391030();
        v45 = *v96;
        (*v96)(v10, v101);
        if (*(v44 + 16))
        {
          v46 = v98;
          v47 = v99;
          v48 = v87;
          (*(v99 + 16))(v87, v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v98);

          v49 = sub_228391050();
          v50 = v48;
          v38 = v89;
          (*(v47 + 8))(v50, v46);
        }

        else
        {

          v49 = 0;
        }

        v51 = *(v102 + 20);
        sub_22838F680();
        v52 = sub_228391030();
        v45(v10, v101);
        if (*(v52 + 16))
        {
          v53 = v98;
          v54 = v99;
          v55 = v88;
          (*(v99 + 16))(v88, v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v98);

          v56 = sub_228391050();
          (*(v54 + 8))(v55, v53);
        }

        else
        {

          v56 = 0;
        }

        v57 = v93;
        sub_228335E3C(v38, type metadata accessor for WeekdaysAndDosages);
        sub_228335E3C(v97, type metadata accessor for WeekdaysAndDosages);
        if (v49 >= v56)
        {
          v59 = v42;
          v41 = v42 + v57;
          v33 = v100;
          if (a1 < v42 || a1 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v58 = v91;
          }

          else
          {
            v58 = v91;
            if (a1 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v104 = v41;
        }

        else
        {
          v33 = v100 + v57;
          v41 = v42;
          if (a1 < v100 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v58 = v91;
          }

          else
          {
            v58 = v91;
            if (a1 != v100)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v57;
        v105 = a1;
      }

      while (v41 < v92 && v33 < v58);
    }
  }

LABEL_71:
  sub_2283333F0(&v105, &v104, &v103, type metadata accessor for WeekdaysAndDosages);
  return 1;
}

uint64_t sub_2283333F0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2283334D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22819A62C(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s19HealthMedicationsUI28MedicationScheduleDataSourceC19PresentationContextO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v7)
    {
      v10 = v2 == v6 && v3 == v7;
      if (v10 || (v11 = *a1, (sub_228393460() & 1) != 0))
      {
        if (v5 != v9 || v4 != v8)
        {
          v13 = sub_228393460();
          sub_228267888(v6, v7);
          sub_228267888(v2, v3);
          sub_228267618(v2, v3);
          sub_228267618(v6, v7);
          return v13 & 1;
        }

        sub_228267888(v6, v7);
        sub_228267888(v2, v3);
        sub_228267618(v2, v3);
        v15 = v6;
        v16 = v7;
        goto LABEL_17;
      }
    }

LABEL_14:
    sub_228267888(v6, v7);
    sub_228267888(v2, v3);
    sub_228267618(v2, v3);
    sub_228267618(v6, v7);
    return 0;
  }

  if (v7)
  {
    goto LABEL_14;
  }

  sub_228267618(*a1, 0);
  v15 = v6;
  v16 = 0;
LABEL_17:
  sub_228267618(v15, v16);
  return 1;
}

void *sub_228333744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29 = a5;
  v30 = a3;
  v10 = sub_22838FDE0();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_27D826F50, 0x277D86200);
  v14 = sub_228392ED0();
  v15 = objc_allocWithZone(MEMORY[0x277CCDA88]);
  v16 = sub_228391FC0();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  v6[2] = v17;
  v6[11] = 0;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_2283931D0();

  v32 = 0xD000000000000012;
  v33 = 0x80000002283B12C0;

  v19 = sub_228329654(v18);

  v31 = v19;
  sub_228336B34(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2281BF13C();
  v20 = sub_228391F90();
  v22 = v21;

  MEMORY[0x22AAB5C80](v20, v22);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v23 = v33;
  v6[3] = v32;
  v6[4] = v23;
  v6[8] = a1;
  v6[9] = a2;

  sub_228391870();
  v6[10] = v32;
  if (v30)
  {
    v24 = v30;
    v25 = v29;
  }

  else
  {
    sub_2283903A0();
    sub_22838FDD0();
    sub_22838FD80();
    (*(v27 + 8))(v13, v28);
    v24 = sub_228390370();
    v25 = MEMORY[0x277D10F80];
    a4 = MEMORY[0x277D110F0];
  }

  v6[5] = v24;
  v6[6] = a4;
  v6[7] = v25;
  v6[12] = v24;
  v6[13] = a4;
  v6[14] = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22832A084();
  sub_228336A38();
  sub_228335C58(&qword_27D827F78, sub_228336A38);
  sub_22838FD00();
  sub_228329E68();
  return v6;
}

uint64_t sub_228333ABC(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v5 = v4;
  v269 = *v5;
  v10 = sub_22838F4A0();
  *&v289 = *(v10 - 8);
  v11 = *(v289 + 64);
  MEMORY[0x28223BE20](v10);
  v279 = &v263 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_22838FDE0();
  v287 = *(v293 - 8);
  v13 = *(v287 + 64);
  MEMORY[0x28223BE20](v293);
  v285 = &v263 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22838F6C0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v271 = &v263 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228336994(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v273 = (&v263 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v295 = (&v263 - v22);
  v266 = type metadata accessor for WeekdaysAndDosages(0);
  v263 = *(v266 - 8);
  v23 = *(v263 + 64);
  MEMORY[0x28223BE20](v266);
  v264 = &v263 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_2283911B0();
  v270 = *(v274 - 1);
  v25 = *(v270 + 64);
  MEMORY[0x28223BE20](v274);
  v294 = &v263 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228301654();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v288 = &v263 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v272 = &v263 - v32;
  MEMORY[0x28223BE20](v31);
  v291 = &v263 - v33;
  v292 = sub_22838F440();
  v290 = *(v292 - 8);
  v34 = *(v290 + 64);
  v35 = MEMORY[0x28223BE20](v292);
  v275 = &v263 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v300 = &v263 - v37;
  sub_2283356B0(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v263 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a4;
  v301 = a4[1];
  v43 = a4[2];
  v44 = a4[3];
  v297 = v43;
  *&v298 = v42;
  v45 = qword_27D827ED8;
  *(v5 + qword_27D827ED8) = 0;
  *(v5 + qword_27D828F88) = 0;
  *(v5 + qword_27D828F90) = 0;
  *(v5 + qword_27D828F98) = 0;
  *(v5 + qword_27D828FA0) = 0;
  *(v5 + qword_27D828FA8) = 0;
  *(v5 + qword_27D828FB0) = 0;
  *(v5 + qword_27D828FB8) = 0;
  *(v5 + qword_27D828FC0) = 0;
  *(v5 + qword_27D828FC8) = 0;
  *(v5 + qword_27D828FD0) = 0;
  v46 = qword_27D828FE8;
  *(v5 + v46) = [objc_allocWithZone(MEMORY[0x277CCD0A0]) init];
  v286 = qword_27D827EC8;
  *(v5 + qword_27D827EC8) = a2;
  v283 = qword_27D827ED0;
  *(v5 + qword_27D827ED0) = a3;
  v281 = a3;
  v278 = a3;
  v277 = a2;
  sub_228391870();
  v47 = *(v5 + v45);
  v296 = v45;
  *(v5 + v45) = v302[0];

  sub_228391870();
  v48 = v302[0];
  if (v302[0])
  {
    v49 = [v302[0] UUID];

    sub_22838F480();
    (*(v289 + 56))(v41, 0, 1, v10);
  }

  else
  {
    (*(v289 + 56))(v41, 1, 1, v10);
  }

  sub_228336ACC(v41, v5 + qword_27D828F40, sub_2283356B0);
  sub_228391870();
  v302[2] = v302[0];
  sub_2281BC72C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_228391890();
  v276 = qword_27D828F28;
  *(v5 + qword_27D828F28) = v53;
  v54 = (v5 + qword_27D828FE0);
  v56 = v297;
  v55 = v298;
  v58 = v300;
  v57 = v301;
  *v54 = v298;
  v54[1] = v57;
  v54[2] = v56;
  v54[3] = v44;
  v59 = *(v5 + v296);
  v60 = v294;
  v280 = a1;
  v299 = v5;
  v282 = v10;
  v284 = v44;
  if (!v59)
  {
    v75 = 2;
    v76 = 4;
    if (v57)
    {
      v76 = 2;
    }

    v274 = v76;
    sub_228267888(v55, v57);
    sub_22838F430();
    v77 = v290;
    v78 = v291;
    v79 = v292;
    (*(v290 + 56))(v291, 1, 1, v292);
    LODWORD(v268) = 0;
    v271 = 0;
    v294 = 0;
    LODWORD(v266) = 255;
    v80 = MEMORY[0x277D84F90];
    v273 = MEMORY[0x277D84F90];
    LODWORD(v270) = 255;
    v81 = v58;
    goto LABEL_40;
  }

  sub_228267888(v55, v57);
  v61 = v59;
  sub_228391150();
  v62 = sub_2283911A0();
  v63 = sub_2283925A0();
  v64 = os_log_type_enabled(v62, v63);
  v267 = v59;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v302[0] = v66;
    *v65 = 136315138;
    v67 = sub_228393600();
    v69 = sub_2281C96FC(v67, v68, v302);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_22816B000, v62, v63, "[%s] Previous schedule found. Parsing values to populate Edit Schedule UI.", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x22AAB7B80](v66, -1, -1);
    MEMORY[0x22AAB7B80](v65, -1, -1);
  }

  (*(v270 + 8))(v60, v274);
  v70 = v273;
  v71 = [v61 scheduleType];
  v72 = [v61 scheduleType];
  sub_22830F590(v302);
  v73 = v271;
  if (v302[1])
  {
    v74 = 2;
  }

  else
  {
    v82 = v302[0];
    v83 = [v61 timeIntervals];
    sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
    v84 = sub_2283921A0();

    if (v84 >> 62)
    {
      v85 = sub_2283930D0();
    }

    else
    {
      v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v273;

    v74 = 2;
    if (v85)
    {
      v74 = v82;
    }
  }

  v265 = v74;
  v86 = [v61 scheduleType];
  v87 = MEMORY[0x277D84F90];
  v88 = v295;
  v268 = v71;
  if (v86 > 8)
  {
    v269 = MEMORY[0x277D84F90];
  }

  else if (((1 << v86) & 0x186) != 0)
  {
    v89 = sub_2281C89A0();
    if (v89[2])
    {
      v90 = v264;
      sub_228336908(v89 + ((*(v263 + 80) + 32) & ~*(v263 + 80)), v264, type metadata accessor for WeekdaysAndDosages);

      v269 = *(v90 + *(v266 + 24));

      sub_228335E3C(v90, type metadata accessor for WeekdaysAndDosages);
      v87 = MEMORY[0x277D84F90];
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
      v269 = MEMORY[0x277D84F90];
    }

    v88 = v295;
  }

  else
  {
    v269 = MEMORY[0x277D84F90];
    if (((1 << v86) & 0x28) != 0)
    {
      v91 = sub_2281C89A0();
      v88 = v295;
      v87 = v91;
      v269 = MEMORY[0x277D84F90];
    }
  }

  v273 = v87;
  v92 = v61;
  sub_22838F620();
  sub_2282CD948(v92, v73, v88);
  v93 = type metadata accessor for CycleData();
  v94 = *(*(v93 - 8) + 48);
  v95 = v94(v88, 1, v93);
  v96 = sub_228336994;
  v274 = v72;
  if (v95 == 1)
  {
    v294 = 0;
    LODWORD(v270) = 255;
  }

  else
  {
    active = CycleData.calculateTotalActiveDays()();
    v88 = v295;
    v294 = active;
    v98 = [*v295 scheduleType];
    v96 = type metadata accessor for CycleData;
    if (v98 == 7)
    {
      LODWORD(v270) = 1;
    }

    else
    {
      if (v98 != 8)
      {
        goto LABEL_47;
      }

      LODWORD(v270) = 0;
      v294 /= 7;
      v96 = type metadata accessor for CycleData;
    }
  }

  sub_228335E3C(v88, v96);
  v99 = v92;
  sub_22838F620();
  sub_2282CD948(v99, v73, v70);
  v100 = v94(v70, 1, v93);
  v101 = sub_228336994;
  if (v100 != 1)
  {
    v105 = CycleData.calculateTotalPauseDays()();
    v106 = [*v70 scheduleType];
    v101 = type metadata accessor for CycleData;
    v78 = v291;
    v79 = v292;
    v104 = v272;
    if (v106 == 7)
    {
      v102 = v105;
      v103 = 1;
      goto LABEL_36;
    }

    if (v106 == 8)
    {
      v103 = 0;
      v102 = v105 / 7;
      v101 = type metadata accessor for CycleData;
      goto LABEL_36;
    }

LABEL_47:
    result = sub_228393300();
    __break(1u);
    return result;
  }

  v102 = 0;
  v103 = 255;
  v78 = v291;
  v79 = v292;
  v104 = v272;
LABEL_36:
  sub_228335E3C(v70, v101);
  v107 = [v99 startDateTime];
  sub_22838F3E0();

  v108 = [v99 endDateTime];
  if (v108)
  {
    v109 = v108;
    sub_22838F3E0();

    v110 = 0;
    v99 = v109;
  }

  else
  {
    v110 = 1;
  }

  v59 = v267;
  LODWORD(v266) = v103;

  v77 = v290;
  (*(v290 + 56))(v104, v110, 1, v79);
  sub_228336ACC(v104, v78, sub_228301654);
  v80 = v269;
  LODWORD(v268) = v268 == 4;
  v81 = v300;
  v75 = v265;
  v271 = v102;
LABEL_40:
  LODWORD(v267) = v59 == 0;
  v302[0] = v75;
  LOBYTE(v302[1]) = 0;
  sub_228335CA8(0, &qword_27D827F18, &qword_27D827F20, &type metadata for FrequencyInterval);
  v112 = *(v111 + 48);
  v113 = *(v111 + 52);
  swift_allocObject();
  v114 = sub_228391890();
  v115 = qword_27D828F48;
  v116 = v299;
  *(v299 + qword_27D828F48) = v114;
  v302[0] = v80;
  sub_228335D24(0);
  v118 = *(v117 + 48);
  v119 = *(v117 + 52);
  swift_allocObject();
  v120 = sub_228391890();
  v121 = qword_27D828F50;
  *(v116 + qword_27D828F50) = v120;
  (*(v77 + 16))(v275, v81, v79);
  sub_228241D38();
  v123 = *(v122 + 48);
  v124 = *(v122 + 52);
  swift_allocObject();
  v125 = sub_228391890();
  v295 = qword_27D828F60;
  *(v116 + qword_27D828F60) = v125;
  sub_228336908(v78, v288, sub_228301654);
  sub_228241DA0();
  v127 = *(v126 + 48);
  v128 = *(v126 + 52);
  swift_allocObject();
  v129 = sub_228391890();
  v269 = qword_27D828F68;
  *(v116 + qword_27D828F68) = v129;
  v302[0] = v294;
  v130 = v270;
  LOBYTE(v302[1]) = v270;
  sub_228335CA8(0, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
  v132 = v131;
  v133 = *(v131 + 48);
  v134 = *(v131 + 52);
  swift_allocObject();
  v135 = sub_228391890();
  v272 = qword_27D828F78;
  *(v116 + qword_27D828F78) = v135;
  v302[0] = v271;
  LOBYTE(v302[1]) = v266;
  v136 = *(v132 + 48);
  v137 = *(v132 + 52);
  swift_allocObject();
  v138 = sub_228391890();
  v271 = qword_27D828F80;
  *(v116 + qword_27D828F80) = v138;
  LOBYTE(v302[0]) = (v130 & 1) == 0;
  sub_228335CA8(0, &qword_27D825858, &qword_27D825860, &type metadata for DisplayUnit);
  v140 = *(v139 + 48);
  v141 = *(v139 + 52);
  swift_allocObject();
  v142 = sub_228391890();
  v143 = qword_27D828F70;
  *(v116 + qword_27D828F70) = v142;
  v270 = v143;
  v302[0] = v273;
  sub_2282ABC18();
  v145 = *(v144 + 48);
  v146 = *(v144 + 52);
  swift_allocObject();
  v147 = sub_228391890();
  v273 = qword_27D828F58;
  *(v116 + qword_27D828F58) = v147;
  v302[0] = v274;
  sub_228297C40();
  v149 = *(v148 + 48);
  v150 = *(v148 + 52);
  swift_allocObject();
  v151 = sub_228391890();
  v152 = qword_27D828F38;
  *(v116 + qword_27D828F38) = v151;
  v153 = v152;
  v288 = v152;
  v154 = *(v116 + v296);
  v155 = v154 == 0;
  v156 = v154 != 0;
  v157 = v267;
  if (!v155)
  {
    v157 = 1;
  }

  if (!v157)
  {
    v156 = v268;
  }

  LOBYTE(v302[0]) = v156;
  sub_22817D780();
  v159 = *(v158 + 48);
  v160 = *(v158 + 52);
  swift_allocObject();
  *(v116 + qword_27D828F30) = sub_228391890();
  v161 = *(v116 + v286);
  v162 = *(v116 + v283);
  v163 = *(v116 + v121);
  v164 = type metadata accessor for DosagesPerDaySectionDataSource();
  v165 = *(v164 + 48);
  v166 = *(v164 + 52);
  swift_allocObject();
  v167 = v162;

  v286 = sub_228260844(v161, v162, v163);
  v168 = *(v116 + v153);
  v169 = *(v116 + v115);
  v170 = *(v116 + v143);
  v171 = type metadata accessor for FrequencyPickerDataSource();
  v172 = *(v171 + 48);
  v173 = *(v171 + 52);
  v174 = swift_allocObject();
  v175 = (v174 + qword_27D826C08);
  v176 = *MEMORY[0x277D12788];
  v302[0] = sub_228392000();
  v302[1] = v177;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v178 = v302[1];
  *v175 = v302[0];
  v175[1] = v178;
  *(v174 + qword_27D826C10) = 0;
  *(v174 + qword_27D826C18) = v168;
  *(v174 + qword_27D826C20) = v169;
  *(v174 + qword_27D826C28) = v170;
  v179 = (v174 + qword_27D826C30);
  v180 = v301;
  *v179 = v298;
  v179[1] = v180;
  v181 = v284;
  v179[2] = v297;
  v179[3] = v181;

  v275 = sub_228390380();

  v182 = sub_228296ABC();
  sub_228194894(v182);

  sub_22838FF60();

  sub_228296E9C();
  sub_2282957D8();

  v183 = *(v295 + v116);
  v184 = *(v116 + v269);
  started = type metadata accessor for StartDateDataSource();
  v186 = *(started + 48);
  v187 = *(started + 52);
  swift_allocObject();

  v296 = sub_228250CD0(v183, v184);
  sub_2283903A0();
  v188 = v285;
  sub_22838FDD0();
  sub_22838FD80();
  (*(v287 + 8))(v188, v293);
  v287 = sub_228390370();
  v294 = sub_2283901F0();
  v189 = MEMORY[0x277D84560];
  v274 = MEMORY[0x277D84560];
  sub_228335D78(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
  v301 = v190;
  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_22839A470;
  v192 = MEMORY[0x277D10F80];
  *(v191 + 32) = v286;
  *(v191 + 40) = v192;
  v193 = v192;
  v295 = type metadata accessor for NotificationFooterDataSource();
  v194 = *(v295 + 12);
  v195 = *(v295 + 26);
  *(swift_allocObject() + qword_27D8248B8) = 0;
  sub_228335D78(0, &qword_27D823910, MEMORY[0x277D10F78], v189);
  v297 = v196;
  v197 = *(sub_22838FEF0() - 8);
  v198 = *(v197 + 72);
  v284 = *(v197 + 80);
  v285 = v198;
  v283 = (v284 + 32) & ~v284;
  v199 = swift_allocObject();
  v298 = xmmword_228397F40;
  *(v199 + 16) = xmmword_228397F40;

  sub_22838FEB0();
  v293 = sub_2281CD0A0;
  *(v191 + 48) = sub_228390380();
  *(v191 + 56) = v193;
  v200 = v116;
  v201 = *(v116 + v270);
  v202 = *&v272[v116];
  v203 = *&v271[v200];
  v204 = *(v200 + v288);
  v205 = type metadata accessor for PauseDataSource(0);
  v206 = *(v205 + 48);
  v207 = *(v205 + 52);
  v208 = swift_allocObject();
  *(v208 + qword_27D8257E0) = 0;
  *(v208 + qword_27D8257D0) = v202;
  *(v208 + qword_27D8257D8) = v203;
  *(v208 + qword_27D8257C0) = v201;
  *(v208 + qword_27D8257C8) = v204;
  v302[0] = 0;
  v302[1] = 0xE000000000000000;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_2283931D0();

  strcpy(v302, "MutableArray<");
  HIWORD(v302[1]) = -4864;
  v209 = v279;
  sub_22838F490();
  v210 = sub_22838F450();
  v212 = v211;
  (*(v289 + 8))(v209, v282);
  MEMORY[0x22AAB5C80](v210, v212);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v213 = sub_22838FF30();

  sub_2282287A8();

  *(v191 + 64) = v213;
  v214 = MEMORY[0x277D10F80];
  *(v191 + 72) = MEMORY[0x277D10F80];
  v215 = v299;
  v216 = *(v299 + v276);
  PauseDataSource = type metadata accessor for NextPauseDataSource(0);
  v218 = *(PauseDataSource + 48);
  v219 = *(PauseDataSource + 52);
  swift_allocObject();

  v221 = sub_228229C24(v220);

  v222 = sub_228335C58(&qword_27D827F58, type metadata accessor for NextPauseDataSource);
  *(v191 + 80) = v221;
  *(v191 + 88) = v222;
  v223 = v296;
  *(v191 + 96) = v296;
  *(v191 + 104) = v214;
  v224 = v214;
  v225 = v223;

  v282 = sub_228390220();
  v226 = swift_allocObject();
  v289 = xmmword_228398270;
  *(v226 + 16) = xmmword_228398270;
  v227 = *(v273 + v215);
  v228 = type metadata accessor for ListOfWeekdaysAndDosagesPickerDataSource(0);
  v229 = *(v228 + 48);
  v230 = *(v228 + 52);
  swift_allocObject();
  v231 = v277;
  v232 = v278;

  *(v226 + 32) = sub_2282A3DAC(v231, v281, v227);
  *(v226 + 40) = v224;
  v233 = *(v295 + 12);
  v234 = *(v295 + 26);
  *(swift_allocObject() + qword_27D8248B8) = 1;
  *(swift_allocObject() + 16) = v298;
  sub_22838FEB0();
  *(v226 + 48) = sub_228390380();
  *(v226 + 56) = v224;
  *(v226 + 64) = v225;
  *(v226 + 72) = v224;

  v281 = sub_228390220();
  sub_228335D78(0, &qword_27D827F60, sub_2283369C8, v274);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2283A48C0;
  *(inited + 32) = 4;
  v279 = (inited + 32);
  v236 = MEMORY[0x277D110F0];
  *(inited + 40) = v287;
  *(inited + 48) = v236;
  *(inited + 56) = v224;
  *(inited + 64) = 2;
  v237 = swift_allocObject();
  *(v237 + 16) = v289;
  v238 = v286;
  *(v237 + 32) = v286;
  *(v237 + 40) = v224;
  v239 = *(v295 + 12);
  v240 = *(v295 + 26);
  *(swift_allocObject() + qword_27D8248B8) = 0;
  *(swift_allocObject() + 16) = v298;

  sub_22838FEB0();
  *(v237 + 48) = sub_228390380();
  v241 = MEMORY[0x277D10F80];
  v242 = v296;
  *(v237 + 56) = MEMORY[0x277D10F80];
  *(v237 + 64) = v242;
  *(v237 + 72) = v241;
  v243 = v241;

  v244 = sub_228390220();
  v245 = MEMORY[0x277D11048];
  *(inited + 72) = v244;
  *(inited + 80) = v245;
  v246 = MEMORY[0x277D11040];
  *(inited + 88) = MEMORY[0x277D11040];
  *(inited + 96) = 3;
  v247 = v281;
  v248 = v282;
  *(inited + 104) = v281;
  *(inited + 112) = v245;
  *(inited + 120) = v246;
  *(inited + 128) = 5;
  *(inited + 136) = v247;
  *(inited + 144) = v245;
  *(inited + 152) = v246;
  *(inited + 160) = 7;
  *(inited + 168) = v248;
  *(inited + 176) = v245;
  *(inited + 184) = v246;
  *(inited + 192) = 8;
  *(inited + 200) = v248;
  *(inited + 208) = v245;
  *(inited + 216) = v246;
  *(inited + 224) = 1;
  v249 = swift_allocObject();
  *(v249 + 16) = v289;
  *(v249 + 32) = v238;
  *(v249 + 40) = v243;
  v250 = *(v295 + 12);
  v251 = *(v295 + 26);
  *(swift_allocObject() + qword_27D8248B8) = 0;
  *(swift_allocObject() + 16) = v298;
  swift_retain_n();
  swift_retain_n();

  sub_22838FEB0();
  *(v249 + 48) = sub_228390380();
  v252 = MEMORY[0x277D10F80];
  v253 = v296;
  *(v249 + 56) = MEMORY[0x277D10F80];
  *(v249 + 64) = v253;
  *(v249 + 72) = v252;
  v254 = v252;

  *(inited + 232) = sub_228390220();
  *(inited + 240) = MEMORY[0x277D11048];
  *(inited + 248) = v246;
  v255 = sub_2281A8584(inited);
  swift_setDeallocating();
  sub_2283369C8();
  swift_arrayDestroy();
  v256 = v299;
  v257 = *(v299 + v288);
  sub_228336A38();
  swift_allocObject();

  v258 = sub_228333744(v255, v257, 0, 0, 0);

  *(v256 + qword_27D828FD8) = v258;
  v259 = swift_allocObject();
  *(v259 + 16) = xmmword_228397F30;
  *(v259 + 32) = v275;
  *(v259 + 40) = v254;
  v260 = sub_228335C58(&qword_27D827F78, sub_228336A38);
  *(v259 + 48) = v258;
  *(v259 + 56) = v260;

  v261 = sub_228390210();

  sub_22832A3C4();

  sub_228335E3C(v291, sub_228301654);
  (*(v290 + 8))(v300, v292);
  return v261;
}

unint64_t sub_2283356E8()
{
  result = qword_27D827EE0;
  if (!qword_27D827EE0)
  {
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827EE0);
  }

  return result;
}

uint64_t type metadata accessor for MedicationScheduleDataSource()
{
  result = qword_27D827EE8;
  if (!qword_27D827EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22833579C()
{
  sub_2283356B0(319);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthMedicationsUI28MedicationScheduleDataSourceC19PresentationContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_228335A08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228335A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_228335AB0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_228335AE4()
{
  if (!qword_27D827EF8)
  {
    sub_228335CA8(255, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
    sub_228335B9C(&qword_27D827F10, &qword_27D827F00, &qword_27D827F08, &type metadata for PauseUsePeriod);
    v0 = sub_228391670();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827EF8);
    }
  }
}

uint64_t sub_228335B9C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228335CA8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228335BF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228391880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228335C58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228335CA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_228336B34(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_228335D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228335E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228335E9C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v9 = sub_2283909E0();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a5 >> 1;
  v36 = a4;
  v13 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v41 = MEMORY[0x277D84F90];
  sub_2281C9DEC(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v14 = v41;
    v30 = v37 + 16;
    v31 = (v37 + 8);
    v28 = v9;
    v29 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v36 + v15) >= v35 || v15 >= v13)
      {
        goto LABEL_14;
      }

      (*(v37 + 16))(v12, v34 + *(v37 + 72) * (v36 + v15), v9);
      v32(v38, v12);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      (*v31)(v12, v9);
      v41 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2281C9DEC((v17 > 1), v18 + 1, 1);
      }

      v19 = v39;
      v20 = v40;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v22 = *(*(v19 - 8) + 64);
      MEMORY[0x28223BE20](v21);
      v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      sub_2283334D8(v18, v24, &v41, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v14 = v41;
      ++v15;
      v9 = v28;
      v12 = v29;
      if (v16 == v13)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  (*v31)(v12, v9);

  __break(1u);
  return result;
}

uint64_t sub_22833618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a1;
  v61 = a2;
  v59 = sub_22838F440();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22838F700();
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22838F080();
  v52 = *(v62 - 8);
  v12 = *(v52 + 64);
  v13 = MEMORY[0x28223BE20](v62);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = v48 - v17;
  v19 = *(a4 + 8);
  if (v19 == 255)
  {
    goto LABEL_27;
  }

  v50 = *a3;
  v51 = *(a3 + 8);
  v20 = *a4;
  if ((v19 & 1) != 0 || (v21 = (v20 * 7) >> 64, v20 *= 7, v21 == v20 >> 63))
  {
    v65 = MEMORY[0x277D84F90];
    if (v20 >= -6)
    {
      v22 = v20 / 7;
      if ((v20 + 6) < 0xD)
      {
        a4 = MEMORY[0x277D84F90];
LABEL_13:
        sub_228336B34(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        result = swift_initStackObject();
        v6 = result;
        *(result + 16) = xmmword_228396260;
        if ((a4 & 0xC000000000000001) == 0)
        {
          if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v36 = *(a4 + 32);

            v37 = v36;
            goto LABEL_16;
          }

          __break(1u);
          goto LABEL_26;
        }

LABEL_24:

        v37 = MEMORY[0x22AAB6D80](0, a4);
LABEL_16:
        v38 = v37;
        v39 = [v37 startTimeComponent];

        sub_22838EFD0();
        v40 = sub_2283924E0();
        if (v51 != 255)
        {
          v41 = v50;
          if (v51)
          {
            goto LABEL_21;
          }

          v41 = 7 * v50;
          if ((v50 * 7) >> 64 == (7 * v50) >> 63)
          {
            goto LABEL_21;
          }

          __break(1u);
        }

        v41 = 0;
LABEL_21:
        v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v44 = objc_allocWithZone(MEMORY[0x277D11580]);
        v45 = sub_22838EFB0();
        v46 = [v44 initWithStartTimeComponent:v45 daysOfWeek:0 cycleIndex:v40 cycleIntervalDays:v42 dose:v43];

        (*(v52 + 8))(v15, v62);
        *(v6 + 32) = v46;
        v64 = a4;
        sub_2281D5FC8(v6);
        v47 = v64;

        return v47;
      }

      v49 = v15;
      a4 = 0;
      v54 = (v9 + 8);
      v55 = (v6 + 8);
      v53 = (v52 + 8);
      v23 = 0x4000000000000000;
      v48[1] = v20 / 7;
      v6 = 1;
      while (v23)
      {
        v24 = sub_2283924E0();
        v25 = sub_2283924E0();
        v26 = v56;
        v27 = v61;
        sub_22838F690();
        v28 = v58;
        sub_22838F3F0();
        sub_22838F5B0();
        (*v55)(v28, v59);
        v29 = (*v54)(v26, v57);
        MEMORY[0x28223BE20](v29);
        v48[-4] = v27;
        v48[-3] = v24;
        v63 = v24;
        v48[-2] = 1;
        v30 = sub_228329A58(sub_228336970, &v48[-6], v60);
        sub_2281D5FC8(v30);
        v15 = v25;
        v31 = sub_2283924E0();
        v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v33 = v18;
        v34 = objc_allocWithZone(MEMORY[0x277D11580]);
        v35 = sub_22838EFB0();
        [v34 initWithStartTimeComponent:v35 daysOfWeek:0 cycleIndex:v15 cycleIntervalDays:v31 dose:v32];

        MEMORY[0x22AAB5D20]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();

        (*v53)(v33, v62);
        --v23;
        v6 += 2;
        --v22;
        v18 = v33;
        if (!v22)
        {
          a4 = v65;
          v15 = v49;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_228336870()
{
  if (!qword_27D827F50)
  {
    sub_2283368D4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827F50);
    }
  }
}

uint64_t sub_228336908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2283369C8()
{
  if (!qword_27D827F68)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    sub_2281A92A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D827F68);
    }
  }
}

void sub_228336A38()
{
  if (!qword_27D827F70)
  {
    type metadata accessor for HKMedicationScheduleType(255);
    sub_228335C58(&qword_27D8242D8, type metadata accessor for HKMedicationScheduleType);
    v0 = type metadata accessor for DynamicDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827F70);
    }
  }
}

uint64_t sub_228336ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_228336B34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for MedicationSourceListCell()
{
  result = qword_27D827F80;
  if (!qword_27D827F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228336C48()
{
  v0 = MEMORY[0x277D83D88];
  sub_228337BF8(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v31 = sub_2283912A0();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228391220();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228337BF8(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], v0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_22838FC90();
  v21 = sub_22838FCA0();
  v22 = v21();
  MEMORY[0x22AAB6410](v22);
  v23 = sub_2283913A0();
  if ((*(*(v23 - 8) + 48))(v20, 1, v23))
  {
    sub_228205274(v20, v18);
    MEMORY[0x22AAB6420](v18);
    sub_228337B88(v20, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  }

  else
  {
    v24 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    MEMORY[0x22AAB6420](v20);
  }

  sub_228337BF8(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v25 = *(sub_2283912F0() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  (*(v10 + 104))(v13, *MEMORY[0x277D74A98], v9);
  v28 = sub_228391230();
  (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
  sub_228391290();
  sub_228391260();
  (*(v5 + 8))(v8, v31);
  (*(v10 + 8))(v13, v9);
  return sub_2283928F0();
}

void sub_2283370D8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC80();
  if (v24[3])
  {
    sub_22817A700();
    type metadata accessor for MedicationSourceListItem();
    if (swift_dynamicCast())
    {
      v6 = v23;
      v7 = [v23[3] source];
      v8 = [v7 name];

      sub_228392000();
      sub_22838FAC0();
      v9 = sub_22838FAB0();
      sub_22838FC70();

      v10 = [objc_opt_self() sharedImageManager];
      v11 = [*(v6 + 24) source];
      v12 = [v10 iconForSource:v11 productType:0];

      if (v12)
      {
        v13 = [*(v6 + 24) source];
        v14 = [v13 name];

        sub_228392000();
        v15 = v12;
        sub_22838FC70();
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    sub_228337B88(v24, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391190();
  v16 = sub_2283911A0();
  v17 = sub_2283925D0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    v24[0] = ObjectType;
    *v18 = 136446210;
    swift_getMetatypeMetadata();
    v20 = sub_228392020();
    v22 = sub_2281C96FC(v20, v21, &v23);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_22816B000, v16, v17, "[%{public}s] item is not an MedicationSourceListItem", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAB7B80](v19, -1, -1);
    MEMORY[0x22AAB7B80](v18, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

id sub_228337470(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_2283374E0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_228337588()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_228337604()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);

  return v1;
}

uint64_t sub_228337638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

unint64_t sub_2283376A0()
{
  result = qword_27D823E50;
  if (!qword_27D823E50)
  {
    type metadata accessor for MedicationSourceListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D823E50);
  }

  return result;
}

void sub_2283376F4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2283911B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838FC80();
  if (!v38[3])
  {
    sub_228337B88(v38, &qword_280DDCD50, sub_22817A700);
    goto LABEL_7;
  }

  sub_22817A700();
  type metadata accessor for MedicationSourceListItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_228391190();
    v28 = sub_2283911A0();
    v29 = sub_2283925D0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      v38[0] = ObjectType;
      *v30 = 136446210;
      swift_getMetatypeMetadata();
      v32 = sub_228392020();
      v34 = sub_2281C96FC(v32, v33, &v37);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_22816B000, v28, v29, "[%{public}s] item is not an MedicationSourceListItem", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAB7B80](v31, -1, -1);
      MEMORY[0x22AAB7B80](v30, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return;
  }

  v10 = v37;
  v11 = [objc_opt_self() sharedInstanceForHealthStore_];
  v12 = [v11 profile];

  v13 = [v12 displayTypeController];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() medicationDoseEventType];
    v16 = [v14 displayTypeForObjectType_];

    if (v16)
    {
      v17 = objc_opt_self();
      v18 = [*(v10 + 24) source];
      v19 = [v17 predicateForObjectsFromSource_];

      v20 = *(v10 + 16);
      v21 = type metadata accessor for MedicationListAllDataProvider();
      v22 = objc_allocWithZone(v21);
      v23 = OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate;
      *&v22[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_predicate] = 0;
      *&v22[OBJC_IVAR____TtC19HealthMedicationsUI29MedicationListAllDataProvider_medication] = v20;
      *&v22[v23] = v19;
      v36.receiver = v22;
      v36.super_class = v21;
      v24 = v20;
      v25 = v19;
      v26 = objc_msgSendSuper2(&v36, sel_initWithDisplayType_profile_, v16, v12);
      v27 = [objc_allocWithZone(MEMORY[0x277D12540]) initWithDisplayType:v16 profile:v12 dataProvider:v26 usingInsetStyling:1];
      [a1 showViewController:v27 sender:v2];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_2283931D0();
  swift_getObjectType();
  v35 = sub_228393600();
  MEMORY[0x22AAB5C80](v35);

  MEMORY[0x22AAB5C80](0xD000000000000039, 0x80000002283B3BB0);
  sub_228393300();
  __break(1u);
}