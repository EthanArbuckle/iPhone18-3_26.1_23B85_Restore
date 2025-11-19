unint64_t sub_22825A9CC()
{
  result = qword_27D826080;
  if (!qword_27D826080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D826080);
  }

  return result;
}

uint64_t sub_22825AA18(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_22825CE64(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v3 = *(v1 + *(a1 + 20));
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_22825AAD8(uint64_t a1, uint64_t a2)
{
  sub_22838F4A0();
  sub_22825CE64(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v4 = *(v2 + *(a2 + 20));
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_22825AB8C(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_22838F4A0();
  sub_22825CE64(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v4 = *(v2 + *(a2 + 20));
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

unint64_t sub_22825AC48(uint64_t a1)
{
  sub_2283931D0();

  v3 = *(v1 + *(a1 + 20));
  v4 = sub_228300540();
  MEMORY[0x22AAB5C80](v4);

  return 0xD000000000000013;
}

uint64_t sub_22825ACD8(uint64_t a1)
{
  v2 = sub_22825CE64(&qword_27D826128, type metadata accessor for MedicationLogDetailsTimeItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_22825AD54()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView);
  }

  else
  {
    type metadata accessor for MedicationLogDetailsTimeView(0);
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

uint64_t sub_22825ADE0()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22825CA7C(0, &qword_27D8260E8, type metadata accessor for MedicationLogDetailsTimeItem);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item;
  swift_beginAccess();
  sub_22825CBEC(v1 + v16, v31, &qword_280DDCD50, sub_22817A700);
  if (v32)
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_22825CB2C(v10, v15);
      v18 = sub_22825AD54();
      v19 = *&v18[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel];
      *&v18[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel] = *&v15[*(v11 + 20)];
      swift_retain_n();

      sub_22825BAFC();

      return sub_22825CB90(v15);
    }
  }

  else
  {
    sub_22825CC58(v31, &qword_280DDCD50, sub_22817A700);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_22825CC58(v10, &qword_27D8260E8, type metadata accessor for MedicationLogDetailsTimeItem);
  sub_228391150();
  v21 = v1;
  v22 = sub_2283911A0();
  v23 = sub_2283925C0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 136315138;
    v29 = v2;
    v30 = v25;
    sub_22825CBEC(v1 + v16, v31, &qword_280DDCD50, sub_22817A700);
    sub_22825CA7C(0, &qword_280DDCD50, sub_22817A700);
    v26 = sub_228392040();
    v28 = sub_2281C96FC(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22816B000, v22, v23, "Incorrect view model for MedicationLogDetailsTimeItem: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAB7B80](v25, -1, -1);
    MEMORY[0x22AAB7B80](v24, -1, -1);

    return (*(v3 + 8))(v6, v29);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

char *sub_22825B238(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item];
  v15 = type metadata accessor for MedicationLogDetailsTimeCell();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v31.receiver = v4;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = sub_22825AD54();
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  v18 = [v16 contentView];
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell____lazy_storage___timeView;
  [v18 addSubview_];

  sub_228391520();
  sub_2283914D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v10 + 8))(v13, v9);
  v28 = *&v16[v19];
  v29 = [v16 contentView];

  [v28 hk:v29 alignConstraintsWithView:v21 insets:{v23, v25, v27}];
  return v16;
}

uint64_t sub_22825B58C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item;
  swift_beginAccess();
  return sub_22825CBEC(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_22825B600(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeCell_item;
  swift_beginAccess();
  sub_22825CCB4(a1, v1 + v3, &qword_280DDCD50, sub_22817A700);
  swift_endAccess();
  sub_22825ADE0();
  return sub_22825CC58(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_22825B6A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825B704;
}

uint64_t sub_22825B704(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22825ADE0();
  }

  return result;
}

uint64_t sub_22825B738()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22838FE40();
}

id sub_22825B7AC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___timeFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v4 setDateStyle_];
    [v4 setTimeStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22825B848(uint64_t a1)
{
  v3 = MEMORY[0x277CC9578];
  sub_22825CA7C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
  swift_beginAccess();
  sub_22825CCB4(a1, v1 + v13, &qword_280DDCDB0, v3);
  swift_endAccess();
  sub_22825CBEC(v1 + v13, v7, &qword_280DDCDB0, v3);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v14 = MEMORY[0x277CC9578];
    sub_22825CC58(a1, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    return sub_22825CC58(v7, &qword_280DDCDB0, v14);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v16 = sub_22825BFD4();
    v17 = sub_22825B7AC();
    v18 = sub_22838F380();
    v19 = [v17 stringFromDate_];

    if (!v19)
    {
      sub_228392000();
      v19 = sub_228391FC0();
    }

    [v16 setText_];

    sub_22825CC58(a1, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22825BAFC()
{
  sub_22825CA7C(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v17[-v7];
  v9 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_viewModel);

    v11 = sub_22825BDE0();
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v12 = sub_228391FC0();

    [v11 setText_];

    v13 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView_logDate;
    swift_beginAccess();
    sub_22825CBEC(v0 + v13, v8, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    v14 = sub_22838F440();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v8, 1, v14) == 1)
    {
      sub_22825CC58(v8, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      v16 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate;
      swift_beginAccess();
      (*(v15 + 16))(v5, v9 + v16, v14);
      (*(v15 + 56))(v5, 0, 1, v14);
      sub_22825B848(v5);
    }

    else
    {

      return sub_22825CC58(v8, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    }
  }

  return result;
}

id sub_22825BE00()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AF0C0);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  return v4;
}

id sub_22825BFF4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_22825C054()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  sub_22817A958(0, &unk_27D8260F0, 0x277D75128);
  [v0 setTextAlignment_];
  v3 = *MEMORY[0x277D12788];
  v10 = sub_228392000();
  v11 = v4;
  v5 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AF0C0);

  MEMORY[0x22AAB5C80](0x656D6954676F4C2ELL, 0xED00006C6562614CLL);

  v6 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v5 setFont_];

  [v5 setAdjustsFontForContentSizeCategory_];
  v8 = [v1 systemBlueColor];
  [v5 setTextColor_];

  return v5;
}

void sub_22825C2A4()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F20;
  *(v1 + 32) = sub_22825BDE0();
  *(v1 + 40) = sub_22825BFD4();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = v4;
  [v0 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v5 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  [v8 setActive_];
  v9 = [v5 leadingAnchor];

  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  [v11 setActive_];
  v12 = [v5 trailingAnchor];

  v13 = [v0 trailingAnchor];
  if (qword_27D8232E0 != -1)
  {
    swift_once();
  }

  v14 = [v12 constraintEqualToAnchor:v13 constant:-*&qword_27D826090];

  [v14 setActive_];
  v15 = [v5 bottomAnchor];

  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  [v17 setActive_];
  v18 = qword_280DDCF18;
  v19 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsTimeView____lazy_storage___titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v20 = sub_228391FC0();

  [v19 setText_];
}

id sub_22825C8C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_22825C9C0()
{
  sub_22825CA7C(319, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22825CA7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

double sub_22825CAF0()
{
  sub_228390360();
  sub_228390350();
  result = v0 * 0.5;
  qword_27D826090 = *&result;
  return result;
}

uint64_t sub_22825CB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22825CB90(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsTimeItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22825CBEC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22825CA7C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22825CC58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22825CA7C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22825CCB4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22825CA7C(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_22825CD48()
{
  result = sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MedicationsDoseLogViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22825CE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22825CEAC(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  v5 = MEMORY[0x277D10D48];
  sub_22825F8D8(v7, v3 + v4, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_22825EBA8();
  return sub_22825F95C(v7, &qword_280DDCD50, &qword_280DDCD60, v5);
}

uint64_t sub_22825CF5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22825CFB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x277D10D48];
  sub_22825F8D8(a1, v1 + v3, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  swift_endAccess();
  sub_22825EBA8();
  return sub_22825F95C(a1, &qword_280DDCD50, &qword_280DDCD60, v4);
}

uint64_t (*sub_22825D058(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22825D0BC;
}

uint64_t sub_22825D0BC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22825EBA8();
  }

  return result;
}

id sub_22825D0F0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for InteractionCriticalAlertCell();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22825DE48();
  sub_22825E2BC();
  sub_22825F100(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228397F40;
  v12 = sub_228391640();
  v13 = MEMORY[0x277D74DB8];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v10;
}

id sub_22825D2EC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InteractionCriticalAlertCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_22825D3E8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InteractionCriticalAlertCell();
  objc_msgSendSuper2(&v5, sel_awakeFromNib);
  sub_22825DE48();
  sub_22825E2BC();
  sub_22825F100(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F40;
  v2 = sub_228391640();
  v3 = MEMORY[0x277D74DB8];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_22825D548()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for InteractionCriticalAlertCell();
    if ((sub_228392820() & 1) == 0)
    {
      sub_22825E2BC();
    }
  }
}

uint64_t sub_22825D5B4()
{
  v1 = v0;
  sub_22825F100(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = sub_228391330();
  v13 = type metadata accessor for InteractionCriticalAlertCell();
  v20.receiver = v1;
  v20.super_class = v13;
  objc_msgSendSuper2(&v20, sel__bridgedUpdateConfigurationUsingState_, v12);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v14 = sub_2283913A0();
    if ((*(*(v14 - 8) + 48))(v11, 1, v14))
    {
      sub_228205274(v11, v9);
      MEMORY[0x22AAB6420](v9);
      v15 = v11;
      return sub_228205308(v15);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v18 = v11;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v16 = sub_2283913A0();
    if ((*(*(v16 - 8) + 48))(v6, 1, v16))
    {
      sub_228205274(v6, v9);
      MEMORY[0x22AAB6420](v9);
      v15 = v6;
      return sub_228205308(v15);
    }

    v19 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_228391370();
    v18 = v6;
  }

  return MEMORY[0x22AAB6420](v18);
}

char *sub_22825D908()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for InteractionStackedMedmojiView());
    v6 = InteractionStackedMedmojiView.init(width:)(36.0);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_22825D9B8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton);
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0xD000000000000014, 0x80000002283A7590);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_22825DAC4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D769D0];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = *MEMORY[0x277D12788];
    v16 = sub_228392000();
    v17 = v9;
    v10 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

    MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

    v11 = sub_228391FC0();

    [v10 setAccessibilityIdentifier_];

    v12 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setNumberOfLines_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v13 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_22825DCEC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22825DDE8(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_22825DE48()
{
  v1 = v0;
  sub_22825F100(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_2283913A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391390();
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_228391370();
  (*(v7 + 16))(v5, v10, v6);
  v12 = *(v7 + 56);
  v36 = v6;
  v12(v5, 0, 1, v6);
  MEMORY[0x22AAB6420](v5);
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22839F000;
  *(inited + 32) = sub_22825D908();
  *(inited + 40) = sub_22825D998();
  *(inited + 48) = sub_22825D9B8();
  *(inited + 56) = sub_22825DAC4();
  *(inited + 64) = sub_22825DCEC();
  *(inited + 72) = sub_22825DDC8();
  v14 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v16 = i;
    v17 = [v1 contentView];
    [v17 addSubview_];

    if (v14)
    {
      v18 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_20;
      }

      v18 = *(inited + 40);
    }

    v19 = v18;
    v20 = [v1 contentView];
    [v20 addSubview_];

    if (v14)
    {
      v21 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_20;
      }

      v21 = *(inited + 48);
    }

    v22 = v21;
    v23 = [v1 contentView];
    [v23 addSubview_];

    if (v14)
    {
      v24 = MEMORY[0x22AAB6D80](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_20;
      }

      v24 = *(inited + 56);
    }

    v25 = v24;
    v26 = [v1 contentView];
    [v26 addSubview_];

    if (v14)
    {
      v27 = MEMORY[0x22AAB6D80](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_20;
      }

      v27 = *(inited + 64);
    }

    v28 = v27;
    v29 = [v1 contentView];
    [v29 addSubview_];

    if (v14)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v30 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v30 = MEMORY[0x22AAB6D80](5, inited);
LABEL_19:
  v31 = v30;
  v32 = [v1 contentView];
  [v32 addSubview_];

  swift_setDeallocating();
  v33 = *(inited + 16);
  swift_arrayDestroy();
  return (*(v7 + 8))(v10, v36);
}

void sub_22825E2BC()
{
  v78 = objc_opt_self();
  v79 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_activeConstraints;
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_activeConstraints);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v2 = sub_228392190();

  [v78 deactivateConstraints_];

  sub_228180ED0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22839F010;
  v4 = sub_22825D908();
  v5 = [v4 leadingAnchor];

  v6 = [v0 contentView];
  v7 = [v6 &selRef_logTimeChanged_ + 1];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v77 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView;
  v9 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___interactionStackedMedmojiView) topAnchor];
  v10 = sub_22825DAC4();
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v3 + 40) = v12;
  v13 = sub_22825D998();
  v14 = [v13 trailingAnchor];

  v15 = [v0 &selRef_didTapDay_];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:-16.0];
  *(v3 + 48) = v17;
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel;
  v19 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___dismissLabel) topAnchor];
  v20 = [v0 &selRef_didTapDay_];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
  *(v3 + 56) = v22;
  v23 = sub_22825D9B8();
  v24 = [v23 leadingAnchor];

  v25 = [v0 &selRef_didTapDay_];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:16.0];
  *(v3 + 64) = v27;
  v28 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton;
  v29 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___titleButton) trailingAnchor];
  v30 = [*(v0 + v18) trailingAnchor];
  v31 = [v29 constraintLessThanOrEqualToAnchor:v30 constant:16.0];

  *(v3 + 72) = v31;
  v32 = [*(v0 + v28) topAnchor];
  v33 = [v0 contentView];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:16.0];
  *(v3 + 80) = v35;
  v36 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v37 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___subtitleLabel) leadingAnchor];
  v38 = [*(v0 + v77) trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:16.0];

  *(v3 + 88) = v39;
  v40 = [*(v0 + v36) trailingAnchor];
  v41 = [v0 contentView];
  v42 = [v41 trailingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:-16.0];
  *(v3 + 96) = v43;
  v44 = [*(v0 + v36) topAnchor];
  v45 = [*(v0 + v28) bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:12.0];

  *(v3 + 104) = v46;
  v47 = sub_22825DCEC();
  v48 = [v47 leadingAnchor];

  v49 = [*(v0 + v36) leadingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v3 + 112) = v50;
  v51 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView;
  v52 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___separatorView) trailingAnchor];
  v53 = [v0 contentView];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v3 + 120) = v55;
  v56 = [*(v0 + v51) topAnchor];
  v57 = [*(v0 + v36) bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:12.0];

  *(v3 + 128) = v58;
  v59 = sub_22825DDC8();
  v60 = [v59 leadingAnchor];

  v61 = [*(v0 + v36) leadingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v3 + 136) = v62;
  v63 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel;
  v64 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell____lazy_storage___learnMoreLabel) trailingAnchor];
  v65 = [v0 contentView];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintLessThanOrEqualToAnchor_];
  *(v3 + 144) = v67;
  v68 = [*(v0 + v63) centerYAnchor];
  v69 = [*(v0 + v51) bottomAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:22.0];

  *(v3 + 152) = v70;
  v71 = [v0 contentView];
  v72 = [v71 bottomAnchor];

  v73 = [*(v0 + v51) bottomAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:44.0];

  *(v3 + 160) = v74;
  v75 = *&v79[v0];
  *&v79[v0] = v3;

  v76 = *&v79[v0];

  v80 = sub_228392190();

  [v78 activateConstraints_];
}

uint64_t sub_22825EBA8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v7, v40);
  if (v40[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for InteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v8 = v39;
      v9 = sub_22825DAC4();
      v37[1] = "$_interactionStackedMedmojiView";
      v38 = v9;
      if (qword_280DDCF18 != -1)
      {
        swift_once();
      }

      v37[0] = qword_280DDCF20;
      sub_22825F870(0, &qword_280DDB870, &qword_280DDB830, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_228397F30;
      v11 = v8[5];
      v12 = v8[6];
      __swift_project_boxed_opaque_existential_0(v8 + 2, v11);
      v13 = (*(v12 + 24))(v11, v12);
      v15 = v14;
      v16 = MEMORY[0x277D837D0];
      *(v10 + 56) = MEMORY[0x277D837D0];
      v17 = sub_22818E210();
      *(v10 + 64) = v17;
      *(v10 + 32) = v13;
      *(v10 + 40) = v15;
      v19 = v8[5];
      v18 = v8[6];
      __swift_project_boxed_opaque_existential_0(v8 + 2, v19);
      v20 = (*(v18 + 48))(v19, v18);
      *(v10 + 96) = v16;
      *(v10 + 104) = v17;
      *(v10 + 72) = v20;
      *(v10 + 80) = v21;
      sub_22838F0C0();
      if (*(v10 + 16))
      {
        sub_228391FD0();
      }

      v31 = sub_228391FC0();

      v32 = v38;
      [v38 setText_];

      v33 = sub_22825D908();
      v34 = v8[5];
      v35 = v8[6];
      __swift_project_boxed_opaque_existential_0(v8 + 2, v34);
      (*(v35 + 16))(v40, v34, v35);
      v36 = OBJC_IVAR____TtC19HealthMedicationsUI29InteractionStackedMedmojiView_stackedMemojiConfig;
      swift_beginAccess();
      sub_22825F8D8(v40, &v33[v36], &qword_27D823888, &qword_27D826170, &protocol descriptor for InteractionStackedMedmojiDisplayable);
      swift_endAccess();
      sub_228226168();

      return sub_22825F95C(v40, &qword_27D823888, &qword_27D826170, &protocol descriptor for InteractionStackedMedmojiDisplayable);
    }
  }

  else
  {
    sub_22825F95C(v40, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  }

  sub_228391150();
  v22 = v1;
  v23 = sub_2283911A0();
  v24 = sub_2283925C0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136446210;
    sub_22817E6C8(v1 + v7, v40);
    sub_22825F870(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v27 = sub_228392040();
    v29 = sub_2281C96FC(v27, v28, &v39);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_22816B000, v23, v24, "Incorrect view model for InteractionCriticalAlertItem: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAB7B80](v26, -1, -1);
    MEMORY[0x22AAB7B80](v25, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_22825F100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22825F2BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22820213C(a1);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = sub_22825D998();
  v14 = MEMORY[0x22AAB66C0](v12, v13, 36.0, 36.0);

  if ((v14 & 1) == 0)
  {

LABEL_7:
    sub_22817A958(0, &qword_27D825178, 0x277D75C68);
    sub_228205394();
    v19 = sub_228392470();
    v20 = type metadata accessor for InteractionCriticalAlertCell();
    v33.receiver = v3;
    v33.super_class = v20;
    objc_msgSendSuper2(&v33, sel_touchesEnded_withEvent_, v19, a2);

    return;
  }

  v15 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(v3 + v15, v31);
  if (v32)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for InteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v17 = v30[11];
      v16 = v30[12];

      v17(v18);

      return;
    }
  }

  else
  {
    sub_22825F95C(v31, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
  }

  sub_228391150();
  v21 = v3;
  v22 = sub_2283911A0();
  v23 = sub_2283925C0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136446210;
    sub_22817E6C8(v3 + v15, v31);
    sub_22825F870(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    v26 = sub_228392040();
    v28 = sub_2281C96FC(v26, v27, &v30);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22816B000, v22, v23, "Incorrect view model for InteractionCriticalAlertItem: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAB7B80](v25, -1, -1);
    MEMORY[0x22AAB7B80](v24, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
}

id InteractionCriticalAlertCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionCriticalAlertCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22825F870(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_22825F8D8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_22825F870(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 24))(a2, a1, v7);
  return a2;
}

uint64_t sub_22825F95C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_22825F870(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_22825F9D0()
{
  v0 = sub_22838F4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionFactorsInfoCell();
  sub_22825FF2C(&qword_27D826180, type metadata accessor for InteractionFactorsInfoCell);
  v5 = sub_22838FBB0();
  v22 = v6;
  v23 = v5;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_2283931D0();

  v24 = 0xD00000000000001BLL;
  v25 = 0x80000002283AF260;
  sub_22838F490();
  v7 = sub_22838F450();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v4, v0);
  MEMORY[0x22AAB5C80](v7, v9);

  v11 = v24;
  v12 = v25;
  sub_22818272C(0, &qword_27D823910, MEMORY[0x277D10F78]);
  v13 = *(sub_22838FEF0() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  v21 = xmmword_228397F40;
  *(v16 + 16) = xmmword_228397F40;
  sub_22818272C(0, &qword_27D823918, sub_228182780);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  *(v17 + 56) = &type metadata for InteractionFactorsInfoItem;
  *(v17 + 64) = sub_2282600D0();
  v18 = swift_allocObject();
  *(v17 + 32) = v18;
  v19 = v22;
  v18[2] = v23;
  v18[3] = v19;
  v18[4] = v11;
  v18[5] = v12;
  sub_22838F490();
  sub_22838F450();
  v10(v4, v0);
  sub_22838FED0();
  return sub_22838F920();
}

uint64_t sub_22825FCD0()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  sub_2283928D0();
  sub_2283900B0();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t InteractionFactorsInfoDataSource.__deallocating_deinit()
{
  _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionFactorsInfoDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionFactorsInfoCell();
  sub_22825FF2C(&qword_27D826180, type metadata accessor for InteractionFactorsInfoCell);
  sub_2283926B0();
}

uint64_t sub_22825FF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for InteractionFactorsInfoDataSource()
{
  result = qword_27D826190;
  if (!qword_27D826190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22825FFC0()
{
  type metadata accessor for InteractionFactorsInfoCell();
  sub_22825FF2C(&qword_27D826180, type metadata accessor for InteractionFactorsInfoCell);
  return sub_2283926B0();
}

unint64_t sub_2282600D0()
{
  result = qword_27D8261A0;
  if (!qword_27D8261A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8261A0);
  }

  return result;
}

uint64_t type metadata accessor for DosagesPerDaySectionDataSource()
{
  result = qword_27D8261E0;
  if (!qword_27D8261E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228260180()
{
  result = sub_22838F440();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_228260260(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Dosage();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_228267820(a3 + v16 + v17 * v14, v13, type metadata accessor for Dosage);
      v18 = a1(v13);
      if (v3)
      {
        sub_228267A54(v13, type metadata accessor for Dosage);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_2282679EC(v13, v25, type metadata accessor for Dosage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2281CA23C(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2281CA23C(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_2282679EC(v25, v15 + v16 + v21 * v17, type metadata accessor for Dosage);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_228267A54(v13, type metadata accessor for Dosage);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_2282604EC()
{
  swift_getObjectType();
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_228392E50();
  v10 = v9;
  v11 = v8;
  if (!v9 || !v8)
  {
    v37 = result;
    v38 = v7;
    sub_228391170();

    v12 = v0;

    v13 = sub_2283911A0();
    v14 = sub_2283925C0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v35 = v14;
      v16 = v15;
      v33 = swift_slowAlloc();
      v34 = v13;
      v17 = v33;
      v36 = swift_slowAlloc();
      v41 = v36;
      *v16 = 136315906;
      v18 = sub_228393600();
      v20 = sub_2281C96FC(v18, v19, &v41);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      v21 = [v12 identifier];
      *(v16 + 14) = v21;
      *v17 = v21;
      *(v16 + 22) = 2080;
      v39 = v37;
      v40 = v10;
      sub_228182AD4();

      v22 = sub_228392020();
      v24 = sub_2281C96FC(v22, v23, &v41);

      *(v16 + 24) = v24;
      *(v16 + 32) = 2080;
      v39 = v38;
      v40 = v11;

      v25 = sub_228392020();
      v27 = v26;

      v28 = sub_2281C96FC(v25, v27, &v41);

      *(v16 + 34) = v28;
      v29 = v34;
      _os_log_impl(&dword_22816B000, v34, v35, "[%s] Missing logging dose form for concept with ID %@: Singular = %s, Plural = %s", v16, 0x2Au);
      v30 = v33;
      sub_228267A54(v33, sub_2281933B0);
      MEMORY[0x22AAB7B80](v30, -1, -1);
      v31 = v36;
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v31, -1, -1);
      MEMORY[0x22AAB7B80](v16, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

uint64_t sub_228260844(uint64_t a1, void *a2, uint64_t a3)
{
  v102 = a1;
  sub_228267710(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v80 - v8;
  v93 = type metadata accessor for Dosage();
  v9 = *(*(v93 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v93);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v81 = &v80 - v14;
  MEMORY[0x28223BE20](v13);
  v82 = &v80 - v15;
  v101 = sub_22838F4A0();
  v87 = *(v101 - 8);
  v88 = v87;
  v16 = *(v87 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22838F440();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v99 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v80 - v23;
  *(v3 + qword_27D8261A8) = 0x3FF0000000000000;
  *(v3 + qword_27D8261C8) = 0;
  v25 = (v3 + qword_27D828D18);
  v26 = *MEMORY[0x277D12788];
  v103[0] = sub_228392000();
  v103[1] = v27;

  MEMORY[0x22AAB5C80](0xD000000000000017, 0x80000002283AF450);

  v28 = v103[1];
  *v25 = v103[0];
  v25[1] = v28;
  v29 = v3;
  v30 = v102;
  *(v3 + qword_27D8261B0) = v102;
  *(v3 + qword_27D8261C0) = a3;
  *(v3 + qword_27D8261D0) = 0;
  v84 = v30;
  v85 = a3;

  sub_22838F430();
  v94 = v19;
  v31 = *(v19 + 32);
  v96 = v19 + 32;
  v97 = v24;
  v95 = v31;
  v31(v3 + qword_27D8261D8, v24, v18);
  v86 = a2;
  if (a2)
  {
    v32 = a2;
    v102 = sub_2282604EC();
    v34 = v33;
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v102 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
  }

  v39 = (v29 + qword_27D8261B8);
  *v39 = v102;
  v39[1] = v34;
  v39[2] = v36;
  v39[3] = v38;
  v103[0] = 0;
  v103[1] = 0xE000000000000000;
  sub_2283931D0();

  strcpy(v103, "MutableArray<");
  HIWORD(v103[1]) = -4864;
  v40 = v100;
  sub_22838F490();
  v41 = sub_22838F450();
  v43 = v42;
  v44 = v87 + 8;
  v45 = v101;
  v83 = *(v87 + 8);
  v83(v40, v101);
  MEMORY[0x22AAB5C80](v41, v43);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v46 = MEMORY[0x277D84F90];
  v47 = sub_22838FF30();
  v48 = qword_27D8261C0;
  v49 = *(v47 + qword_27D8261C0);

  sub_228391870();
  if (v103[0])
  {
    v50 = v103[0];
  }

  else
  {
    v50 = v46;
  }

  v51 = *(v50 + 16);

  if (!v51)
  {
    v80 = v48;
    v87 = v44;
    v91 = qword_27D8261D0;
    v92 = qword_27D8261D8;
    v52 = *(v47 + qword_27D8261D0);
    v53 = v99;
    sub_22838F350();
    v54 = v93;
    v55 = v47;
    v56 = v94 + 16;
    v57 = *(v94 + 16);
    v58 = v53;
    v59 = *(v93 + 20);
    v57(&v12[v59], v58, v18);
    sub_22838F490();
    v60 = *(v54 + 24);
    *&v12[v60] = 0x3FF0000000000000;
    v93 = v56 - 8;
    v94 = v56 + 40;
    v88 += 4;
    v89 = v60;
    v61 = 5;
    v90 = v59;
    while (1)
    {
      v62 = v98;
      v57(v98, &v12[v59], v18);
      (*v94)(v62, 0, 1, v18);
      sub_2283923E0();
      v63 = v12;
      v64 = sub_228266EF4(v12, v62);

      result = sub_22826797C(v62, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      if (v64)
      {
        break;
      }

      if (v61 == 0x8000000000000002)
      {
        __break(1u);
        return result;
      }

      v66 = *(v55 + v91);
      v67 = v97;
      sub_22838F350();
      v68 = v99;
      (*v93)(v99, v18);
      v102 = v61;
      v69 = v95;
      v95(v68, v67, v18);
      v57(v67, v68, v18);
      v70 = v100;
      sub_22838F490();
      sub_228267A54(v63, type metadata accessor for Dosage);
      (*v88)(v63, v70, v101);
      v59 = v90;
      v69(v63 + v90, v67, v18);
      v71 = v102;
      v12 = v63;
      *(v63 + v89) = 0x3FF0000000000000;
      v61 = v71 + 5;
    }

    (*v93)(v99, v18);
    v72 = v81;
    sub_2282679EC(v12, v81, type metadata accessor for Dosage);
    v73 = v82;
    sub_2282679EC(v72, v82, type metadata accessor for Dosage);
    v47 = v55;
    v74 = *(v55 + v80);
    sub_228391870();
    if (v103[0])
    {
      v75 = *(v103[0] + 16);

      if (!v75)
      {
        sub_2282633FC(v73);
      }
    }

    sub_228267A54(v73, type metadata accessor for Dosage);
    v40 = v100;
    v45 = v101;
  }

  sub_228267710(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v76 = *(sub_22838FEF0() - 8);
  v77 = *(v76 + 72);
  v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  *(swift_allocObject() + 16) = xmmword_228397F40;
  v79 = sub_228261184();
  sub_228194894(v79);

  sub_22838F490();
  sub_22838F450();
  v83(v40, v45);
  sub_22838FED0();
  sub_22838FF50();

  return v47;
}

void *sub_228261184()
{
  v1 = v0;
  v2 = *v0;
  v143 = sub_22838F4A0();
  v149 = *(v143 - 8);
  v3 = *(v149 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Dosage();
  v148 = *(v5 - 8);
  v6 = *(v148 + 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v141 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v8;
  MEMORY[0x28223BE20](v7);
  v153 = (&v107 - v9);
  v154 = type metadata accessor for DosageItem(0);
  v10 = *(*(v154 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v154);
  v140 = (&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v139 = &v107 - v13;
  v120 = sub_228390460();
  v119 = *(v120 - 8);
  v14 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228267710(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v117 = &v107 - v18;
  v111 = sub_22838FFC0();
  v110 = *(v111 - 8);
  v19 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v114 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_2283913A0();
  v113 = *(v115 - 8);
  v21 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  v124 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_228391590();
  v112 = *(v125 - 8);
  v23 = *(v112 + 64);
  MEMORY[0x28223BE20](v125);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_228390170();
  v121 = *(v26 - 8);
  v27 = *(v121 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v126 = &v107 - v31;
  v32 = *(v0 + qword_27D8261C0);
  sub_228391870();
  if (v157)
  {
    v33 = v157;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v138 = *(v1 + qword_27D8261B0);
  v34 = *(v1 + qword_27D8261B8 + 8);
  v137 = *(v1 + qword_27D8261B8);
  v136 = v34;
  v35 = *(v1 + qword_27D8261B8 + 16);
  v151 = *(v1 + qword_27D8261B8 + 24);
  v152 = v35;
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v2;
  v144 = v39;
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v36;
  v43 = v33;
  v44 = *(v1 + qword_27D828D18 + 8);
  v107 = *(v1 + qword_27D828D18);
  v45 = *(v43 + 16);
  v146 = v42;
  v116 = v38;
  v147 = v40;
  v145 = v41;
  v122 = v26;
  v128 = v30;
  v127 = v37;
  v123 = v25;
  v109 = v43;
  v108 = v44;
  if (v45)
  {
    v155 = MEMORY[0x277D84F90];

    v150 = v45;
    sub_2281C9DB4(0, v45, 0);
    v135 = type metadata accessor for DosageCollectionViewCell(0);
    v46 = v155;
    v134 = v148[80];
    v47 = (v134 + 32) & ~v134;
    v48 = v43 + v47;
    v132 = (v149 + 16);
    v133 = v47;
    v131 += v47;
    v130 = *(v148 + 9);
    v129 = (v149 + 32);
    v49 = v154;
    do
    {
      v154 = v46;
      v149 = v48;
      v50 = v153;
      sub_228267820(v48, v153, type metadata accessor for Dosage);
      v52 = v142;
      v51 = v143;
      (*v132)(v142, v50, v143);
      v53 = v50;
      v54 = v141;
      sub_228267820(v53, v141, type metadata accessor for Dosage);
      v55 = swift_allocObject();
      v56 = v146;
      *(v55 + 16) = sub_228267774;
      *(v55 + 24) = v56;
      sub_2282679EC(v54, v55 + v133, type metadata accessor for Dosage);
      sub_228264B30(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell);

      v57 = sub_22838FBB0();
      v58 = v140;
      *v140 = v57;
      v58[1] = v59;
      v58[2] = 0;
      v58[3] = 0xE000000000000000;
      v58[4] = 0;
      v58[5] = 0;
      v60 = (v58 + v49[11]);
      v61 = (v58 + v49[12]);
      v62 = v49[14];
      v148 = v58 + v49[13];
      v63 = (v58 + v62);
      (*v129)(v58 + v49[7], v52, v51);
      *(v58 + v49[8]) = 1;
      v64 = v138;
      *(v58 + v49[9]) = v138;
      v65 = (v58 + v49[10]);
      v66 = v137;
      v67 = v136;
      *v65 = v137;
      v65[1] = v67;
      v68 = v151;
      v65[2] = v152;
      v65[3] = v68;
      *v60 = sub_22826779C;
      v60[1] = v55;
      v69 = v144;
      v70 = v145;
      *v61 = sub_228267784;
      v61[1] = v69;
      v72 = v147;
      v71 = v148;
      *v63 = sub_22826778C;
      v63[1] = v72;
      v73 = v154;
      *v71 = sub_228267794;
      v71[1] = v70;
      v74 = v139;
      sub_228267820(v58, v139, type metadata accessor for DosageItem);
      v75 = v64;
      v76 = v66;
      v46 = v73;
      sub_228267888(v76, v67);

      sub_228267A54(v153, type metadata accessor for Dosage);
      sub_228267A54(v58, type metadata accessor for DosageItem);
      v155 = v73;
      v77 = *(v73 + 16);
      v78 = *(v46 + 24);
      if (v77 >= v78 >> 1)
      {
        sub_2281C9DB4((v78 > 1), v77 + 1, 1);
        v46 = v155;
      }

      v158 = v49;
      v159 = sub_228264B30(&qword_27D826210, type metadata accessor for DosageItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
      sub_228267820(v74, boxed_opaque_existential_1, type metadata accessor for DosageItem);
      *(v46 + 16) = v77 + 1;
      sub_22816DFFC(&v157, v46 + 40 * v77 + 32);
      sub_228267A54(v74, type metadata accessor for DosageItem);
      v48 = v149 + v130;
      --v150;
    }

    while (v150);
    v25 = v123;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v154 = v46;
  sub_228391520();
  v80 = sub_228391FC0();
  v81 = [objc_opt_self() systemImageNamed_];

  sub_228391550();
  v82 = objc_opt_self();
  v83 = [v82 systemGreenColor];
  v84 = sub_228391480();
  sub_228391470();
  v84(&v157, 0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  sub_228391540();
  v85 = [v82 systemBlueColor];
  v86 = sub_228391450();
  sub_228391420();
  v86(&v157, 0);
  v87 = v124;
  sub_228391390();
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  sub_228392BD0();
  sub_228391370();
  v88 = v125;
  v158 = v125;
  v159 = MEMORY[0x277D74C30];
  v89 = __swift_allocate_boxed_opaque_existential_1(&v157);
  v90 = v112;
  (*(v112 + 16))(v89, v25, v88);
  v91 = swift_allocObject();
  v92 = v127;
  *(v91 + 16) = sub_22826777C;
  *(v91 + 24) = v92;
  v93 = v114;
  *v114 = 1;
  (*(v110 + 104))(v93, *MEMORY[0x277D10F90], v111);
  v94 = v113;
  v95 = v117;
  v96 = v115;
  (*(v113 + 16))(v117, v87, v115);
  (*(v94 + 56))(v95, 0, 1, v96);
  v155 = v107;
  v156 = v108;

  MEMORY[0x22AAB5C80](0x656D69546464412ELL, 0xEC0000006C6C6543);
  (*(v119 + 104))(v118, *MEMORY[0x277D11140], v120);
  v97 = v126;
  sub_228390160();
  (*(v94 + 8))(v124, v96);
  (*(v90 + 8))(v123, v125);

  v98 = v121;
  v99 = v122;
  v153 = *(v121 + 16);
  (v153)(v128, v97, v122);
  v100 = v154;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v100 = sub_228198710(0, v100[2] + 1, 1, v100);
  }

  v102 = v100[2];
  v101 = v100[3];
  v154 = v102 + 1;
  if (v102 >= v101 >> 1)
  {
    v100 = sub_228198710((v101 > 1), v102 + 1, 1, v100);
  }

  v103 = *(v98 + 8);
  v103(v126, v99);
  v158 = v99;
  v159 = sub_228264B30(&qword_27D824520, MEMORY[0x277D11000]);
  v104 = __swift_allocate_boxed_opaque_existential_1(&v157);
  v105 = v128;
  (v153)(v104, v128, v99);
  v100[2] = v154;
  sub_22816DFFC(&v157, &v100[5 * v102 + 4]);
  v103(v105, v99);

  return v100;
}

uint64_t sub_2282622C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return sub_228267820(a1, a2, type metadata accessor for Dosage);
  }

  sub_22826311C(a1, a2);
}

uint64_t sub_228262358()
{
  v59 = sub_22838F4A0();
  v0 = *(v59 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228267710(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v48 - v5;
  v6 = sub_22838F440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for Dosage();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v48 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v49 = v20;
    v50 = v22;
    v55 = qword_27D8261D0;
    v56 = qword_27D8261D8;
    v24 = *(result + qword_27D8261D0);
    v63 = result;
    sub_22838F350();
    v25 = *(v13 + 20);
    v28 = *(v7 + 16);
    v26 = v7 + 16;
    v27 = v28;
    v61 = v12;
    v28(&v17[v25], v12, v6);
    sub_22838F490();
    v54 = *(v13 + 24);
    *&v17[v54] = 0x3FF0000000000000;
    v62 = (v26 + 40);
    v60 = (v26 - 8);
    v52 = v25;
    v53 = (v26 + 16);
    v51 = (v0 + 32);
    for (i = 5; ; i = v43 + 5)
    {
      v30 = &v17[v25];
      v31 = v64;
      v32 = v17;
      v33 = v27;
      v27(v64, v30, v6);
      (*v62)(v31, 0, 1, v6);
      sub_2283923E0();
      v34 = v32;
      v35 = v32;
      v36 = v63;
      v37 = sub_228266EF4(v35, v31);

      result = sub_22826797C(v31, &qword_280DDCDB0, MEMORY[0x277CC9578]);
      if (v37)
      {
        (*v60)(v61, v6);
        v44 = v49;
        sub_2282679EC(v34, v49, type metadata accessor for Dosage);
        v45 = v50;
        sub_2282679EC(v44, v50, type metadata accessor for Dosage);
        v46 = sub_2282633FC(v45);
        v47 = sub_228261184(v46);
        sub_228194894(v47);

        sub_22838FF60();

        return sub_228267A54(v45, type metadata accessor for Dosage);
      }

      if (i == 0x8000000000000002)
      {
        break;
      }

      v38 = *(v36 + v55);
      v39 = v57;
      sub_22838F350();
      v40 = v61;
      (*v60)(v61, v6);
      v65 = i;
      v41 = *v53;
      (*v53)(v40, v39, v6);
      v27 = v33;
      v33(v39, v40, v6);
      v42 = v58;
      sub_22838F490();
      v17 = v34;
      sub_228267A54(v34, type metadata accessor for Dosage);
      (*v51)(v34, v42, v59);
      v25 = v52;
      v41((v34 + v52), v39, v6);
      v43 = v65;
      *(v34 + v54) = 0x3FF0000000000000;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282628F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v5 = sub_2283911B0();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v51 - v9;
  sub_228267710(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = type metadata accessor for Dosage();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v52 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v51 - v22;
  sub_2282678FC(a2, v16, &qword_27D826200, type metadata accessor for Dosage);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) != 1)
  {
    sub_2282679EC(v16, v23, type metadata accessor for Dosage);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = *(Strong + qword_27D8261C0);
      sub_228391870();

      if (v58[0])
      {
        v37 = v58[0];
      }

      else
      {
        v37 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v36);
      *(&v51 - 2) = v23;
      sub_2282CD7B8(sub_228267AB4, v37, v14);

      if (v24(v14, 1, v17) != 1)
      {
        sub_22826797C(v14, &qword_27D826200, type metadata accessor for Dosage);
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_228263A44(v23);
        }

        return sub_228267A54(v23, type metadata accessor for Dosage);
      }
    }

    else
    {
      (*(v18 + 56))(v14, 1, 1, v17);
    }

    sub_22826797C(v14, &qword_27D826200, type metadata accessor for Dosage);
    v38 = v53;
    sub_228391150();
    v39 = v52;
    sub_228267820(v23, v52, type metadata accessor for Dosage);
    v40 = sub_2283911A0();
    v41 = sub_2283925C0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v58[0] = v43;
      *v42 = 136315394;
      v44 = sub_228393600();
      v46 = sub_2281C96FC(v44, v45, v58);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      sub_22838F4A0();
      sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0]);
      v47 = sub_228393420();
      v49 = v48;
      sub_228267A54(v39, type metadata accessor for Dosage);
      v50 = sub_2281C96FC(v47, v49, v58);

      *(v42 + 14) = v50;
      _os_log_impl(&dword_22816B000, v40, v41, "[%s] Unable to find dosage with uuid = %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v43, -1, -1);
      MEMORY[0x22AAB7B80](v42, -1, -1);
    }

    else
    {

      sub_228267A54(v39, type metadata accessor for Dosage);
    }

    (*(v56 + 8))(v38, v57);
    return sub_228267A54(v23, type metadata accessor for Dosage);
  }

  sub_22826797C(v16, &qword_27D826200, type metadata accessor for Dosage);
  v25 = v55;
  sub_228391150();
  v26 = sub_2283911A0();
  v27 = sub_2283925C0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v59 = v29;
    *v28 = 136315138;
    v30 = sub_228393600();
    v32 = sub_2281C96FC(v30, v31, &v59);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22816B000, v26, v27, "[%s] Unable to update dosage. Dosage was nil", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAB7B80](v29, -1, -1);
    MEMORY[0x22AAB7B80](v28, -1, -1);
  }

  return (*(v56 + 8))(v25, v57);
}

uint64_t sub_228262FF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_228263F0C(a2);
    v5 = sub_228261184(v4);
    sub_228194894(v5);

    sub_22838FF60();
  }

  return result;
}

uint64_t sub_22826308C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = type metadata accessor for DosageItem(0);
    v5 = sub_228266EF4(a1 + *(v4 + 28), a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22826311C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_228267710(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  v12 = *(v2 + qword_27D8261C0);
  sub_228391870();
  if (v19)
  {
    v13 = v19;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = a1;
  sub_2282CD7B8(sub_2282676E0, v13, v11);

  sub_2282678FC(v11, v9, &qword_27D826200, type metadata accessor for Dosage);
  v14 = type metadata accessor for Dosage();
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_22826797C(v9, &qword_27D826200, type metadata accessor for Dosage);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_2283931D0();

    v19 = 0xD00000000000001DLL;
    v20 = 0x80000002283AF410;
    sub_22838F4A0();
    sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0]);
    v16 = sub_228393420();
    MEMORY[0x22AAB5C80](v16);

    result = sub_228393300();
    __break(1u);
  }

  else
  {
    sub_22826797C(v11, &qword_27D826200, type metadata accessor for Dosage);
    return sub_2282679EC(v9, a2, type metadata accessor for Dosage);
  }

  return result;
}

uint64_t sub_2282633FC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for Dosage();
  v66 = *(v5 - 8);
  v6 = *(v66 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = sub_2283911B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  sub_228391150();
  v63 = a1;
  sub_228267820(a1, v10, type metadata accessor for Dosage);
  v19 = sub_2283911A0();
  v20 = sub_2283925A0();
  v21 = os_log_type_enabled(v19, v20);
  v61 = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60 = v16;
    v24 = v23;
    v68 = v23;
    *v22 = 136315394;
    v25 = sub_228393600();
    v27 = sub_2281C96FC(v25, v26, &v68);
    v62 = v2;
    v28 = v12;
    v29 = v11;
    v30 = v27;

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = Dosage.description.getter();
    v33 = v32;
    sub_228267A54(v10, type metadata accessor for Dosage);
    v34 = sub_2281C96FC(v31, v33, &v68);
    v11 = v29;
    v12 = v28;
    v2 = v62;

    *(v22 + 14) = v34;
    _os_log_impl(&dword_22816B000, v19, v20, "[%s] Request to add dosage = %s.", v22, 0x16u);
    swift_arrayDestroy();
    v35 = v24;
    v16 = v60;
    MEMORY[0x22AAB7B80](v35, -1, -1);
    MEMORY[0x22AAB7B80](v22, -1, -1);
  }

  else
  {

    sub_228267A54(v10, type metadata accessor for Dosage);
  }

  v64 = *(v12 + 8);
  v64(v18, v11);
  v36 = *(v2 + qword_27D8261C0);
  sub_228391870();
  if (v68)
  {
    v37 = v68;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = v65;
  sub_228267820(v63, v65, type metadata accessor for Dosage);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_2281984E8(0, v37[2] + 1, 1, v37);
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_2281984E8(v39 > 1, v40 + 1, 1, v37);
  }

  v37[2] = v40 + 1;
  sub_2282679EC(v38, v37 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v40, type metadata accessor for Dosage);
  sub_228391150();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v41 = sub_2283911A0();
  v42 = sub_2283925A0();
  v43 = os_log_type_enabled(v41, v42);
  v62 = v36;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v66 = v12;
    v46 = v45;
    v68 = v45;
    *v44 = 136315650;
    v47 = sub_228393600();
    v49 = sub_2281C96FC(v47, v48, &v68);
    v65 = v11;
    v50 = v49;

    *(v44 + 4) = v50;
    *(v44 + 12) = 2048;
    sub_228391870();
    if (v67)
    {
      v51 = v67;
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    v52 = v16;
    v53 = *(v51 + 16);

    *(v44 + 14) = v53;

    *(v44 + 22) = 2048;
    v54 = v37[2];

    *(v44 + 24) = v54;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_22816B000, v41, v42, "[%s] Dosage count before add = %ld. Dosage count after add = %ld.", v44, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AAB7B80](v46, -1, -1);
    MEMORY[0x22AAB7B80](v44, -1, -1);

    result = (v64)(v52, v65);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v64(v16, v11);
  }

  v56 = *(v2 + qword_27D8261D0);
  v57 = __OFADD__(v56, 1);
  v58 = v56 + 1;
  if (v57)
  {
    __break(1u);
  }

  else
  {
    *(v2 + qword_27D8261D0) = v58;
    v68 = v37;
    sub_228391850();
  }

  return result;
}

uint64_t sub_228263A44(uint64_t a1)
{
  v2 = v1;
  v43 = *v1;
  v4 = type metadata accessor for Dosage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = sub_2283911B0();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  sub_228267820(a1, v11, type metadata accessor for Dosage);
  sub_228267820(a1, v9, type metadata accessor for Dosage);
  v16 = sub_2283911A0();
  v17 = sub_2283925A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v5;
    v19 = v18;
    v41 = swift_slowAlloc();
    v45[0] = v41;
    *v19 = 136315650;
    v20 = sub_228393600();
    v22 = sub_2281C96FC(v20, v21, v45);
    v43 = a1;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_22838F4A0();
    sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0]);
    v24 = sub_228393420();
    v26 = v25;
    v40 = v12;
    sub_228267A54(v11, type metadata accessor for Dosage);
    v27 = sub_2281C96FC(v24, v26, v45);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2080;
    v28 = Dosage.description.getter();
    v30 = v29;
    sub_228267A54(v9, type metadata accessor for Dosage);
    v31 = sub_2281C96FC(v28, v30, v45);
    a1 = v43;

    *(v19 + 24) = v31;
    _os_log_impl(&dword_22816B000, v16, v17, "[%s] Request to update dosage uuid = %s with updated dosage = %s.", v19, 0x20u);
    v32 = v41;
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v32, -1, -1);
    v33 = v19;
    v5 = v42;
    MEMORY[0x22AAB7B80](v33, -1, -1);

    (*(v44 + 8))(v15, v40);
  }

  else
  {

    sub_228267A54(v9, type metadata accessor for Dosage);
    sub_228267A54(v11, type metadata accessor for Dosage);
    (*(v44 + 8))(v15, v12);
  }

  v34 = *(v2 + qword_27D8261C0);
  v35 = sub_228391870();
  if (v45[0])
  {
    v36 = v45[0];
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v35);
  *(&v40 - 2) = a1;
  v37 = sub_2283298B0(sub_22826767C, (&v40 - 4), v36);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_2281D9378(v37);
  }

  v38 = v37[2];
  v45[0] = v37 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v45[1] = v38;
  sub_2282653D4(v45);
  v45[0] = v37;
  sub_228391850();
}

uint64_t sub_228263F0C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for Dosage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2283911B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  sub_228391150();
  v53 = a1;
  sub_228267820(a1, v8, type metadata accessor for Dosage);
  v17 = sub_2283911A0();
  v18 = sub_2283925A0();
  v19 = os_log_type_enabled(v17, v18);
  v54 = v14;
  v55 = v10;
  v52 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57 = v21;
    *v20 = 136315394;
    v22 = sub_228393600();
    v24 = sub_2281C96FC(v22, v23, &v57);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_22838F4A0();
    sub_228264B30(&qword_27D824618, MEMORY[0x277CC95F0]);
    v25 = sub_228393420();
    v27 = v26;
    sub_228267A54(v8, type metadata accessor for Dosage);
    v28 = sub_2281C96FC(v25, v27, &v57);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_22816B000, v17, v18, "[%s] Request to delete dosage with uuid = %s", v20, 0x16u);
    swift_arrayDestroy();
    v29 = v21;
    v10 = v55;
    MEMORY[0x22AAB7B80](v29, -1, -1);
    v30 = v20;
    v14 = v54;
    MEMORY[0x22AAB7B80](v30, -1, -1);
  }

  else
  {

    sub_228267A54(v8, type metadata accessor for Dosage);
  }

  v31 = *(v10 + 8);
  v31(v16, v9);
  v32 = *(v2 + qword_27D8261C0);
  v33 = sub_228391870();
  MEMORY[0x28223BE20](v33);
  *(&v51 - 2) = v53;
  v35 = sub_228260260(sub_22826765C, (&v51 - 4), v34);
  sub_228391150();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v36 = sub_2283911A0();
  v37 = sub_2283925A0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v57 = v39;
    *v38 = 136315650;
    v40 = sub_228393600();
    v42 = sub_2281C96FC(v40, v41, &v57);
    v53 = v31;
    v43 = v42;

    *(v38 + 4) = v43;
    *(v38 + 12) = 2048;
    sub_228391870();
    if (v56)
    {
      v44 = v56;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v52 = v9;
    v45 = *(v44 + 16);

    *(v38 + 14) = v45;

    *(v38 + 22) = 2048;
    v46 = *(v35 + 16);

    *(v38 + 24) = v46;

    _os_log_impl(&dword_22816B000, v36, v37, "[%s] Dosage count before delete = %ld. Dosage count after delete = %ld.", v38, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x22AAB7B80](v39, -1, -1);
    MEMORY[0x22AAB7B80](v38, -1, -1);

    result = v53(v54, v52);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    result = (v31)(v14, v9);
  }

  v48 = *(v2 + qword_27D8261D0);
  v49 = __OFSUB__(v48, 1);
  v50 = v48 - 1;
  if (v49)
  {
    __break(1u);
  }

  else
  {
    *(v2 + qword_27D8261D0) = v50 & ~(v50 >> 63);
    v57 = v35;
    sub_228391850();
  }

  return result;
}

BOOL sub_2282644AC()
{
  sub_22838F4A0();
  sub_228264B30(&qword_27D826208, MEMORY[0x277CC95F0]);
  return (sub_228391FB0() & 1) == 0;
}

uint64_t sub_228264570()
{
  v1 = *(v0 + qword_27D8261B8 + 16);
  v2 = *(v0 + qword_27D8261B8 + 24);
  sub_228267618(*(v0 + qword_27D8261B8), *(v0 + qword_27D8261B8 + 8));
  v3 = *(v0 + qword_27D8261C0);

  v4 = *(v0 + qword_27D8261C8);

  v5 = qword_27D8261D8;
  v6 = sub_22838F440();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + qword_27D828D18 + 8);
}

uint64_t sub_228264634()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8261B0);

  v2 = *(v0 + qword_27D8261B8 + 16);
  v3 = *(v0 + qword_27D8261B8 + 24);
  sub_228267618(*(v0 + qword_27D8261B8), *(v0 + qword_27D8261B8 + 8));
  v4 = *(v0 + qword_27D8261C0);

  v5 = *(v0 + qword_27D8261C8);

  v6 = qword_27D8261D8;
  v7 = sub_22838F440();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27D828D18 + 8);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22826474C()
{
  type metadata accessor for ScheduleHeaderCell();
  sub_228264B30(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  sub_2283926D0();
  type metadata accessor for DosageCollectionViewCell(0);
  sub_228264B30(&qword_27D8261F8, type metadata accessor for DosageCollectionViewCell);
  sub_2283926B0();
  sub_2283904F0();
  return sub_2283926B0();
}

void *sub_228264824()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  [v5 contentInsets];
  [v5 setContentInsets_];
  return v5;
}

uint64_t sub_228264978@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v2 = sub_22838F0C0();
  v4 = v3;
  type metadata accessor for ScheduleHeaderCell();
  sub_228264B30(&qword_27D825830, type metadata accessor for ScheduleHeaderCell);
  v5 = sub_22838FBB0();
  v7 = v6;
  sub_22838FBB0();

  a1[3] = &type metadata for ScheduleHeaderItem;
  a1[4] = sub_228194464();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 40) = nullsub_1;
  *(result + 48) = 0;
  *(result + 56) = v5;
  *(result + 64) = v7;
  return result;
}

uint64_t sub_228264B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228264B78(uint64_t a1)
{
  sub_228267710(0, &qword_27D826200, type metadata accessor for Dosage, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = &v62 - v4;
  v72 = sub_22838F6A0();
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Dosage();
  v8 = *(v80 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v80);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = sub_22838F6C0();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2281A8AE4(MEMORY[0x277D84F90]);
  v74 = v17;
  sub_22838F680();
  v18 = *(a1 + 16);
  v64 = v14;
  v62 = v8;
  if (!v18)
  {
LABEL_20:
    v57 = v76;
    v58 = *(v76 + 16);
    if (v58)
    {
      v59 = sub_2281D77A0(*(v76 + 16), 0);
      v60 = sub_228266A44(&v81, v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v58, v57);

      sub_228176F04();
      if (v60 == v58)
      {
LABEL_24:
        (*(v63 + 8))(v74, v64);

        return v59;
      }

      __break(1u);
    }

    v59 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v19 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v20 = *(v8 + 72);
  v70 = *MEMORY[0x277CC9980];
  v68 = (v5 + 8);
  v69 = (v5 + 104);
  v67 = *MEMORY[0x277CC99A0];
  v66 = (v8 + 56);
  v65 = v20;
  v21 = v71;
  while (1)
  {
    v77 = v19;
    v78 = v18;
    sub_228267820(v19, v13, type metadata accessor for Dosage);
    v25 = *v69;
    v26 = v72;
    (*v69)(v21, v70, v72);
    v27 = v80;
    v28 = *(v80 + 20);
    v79 = sub_22838F6B0();
    v29 = *v68;
    (*v68)(v21, v26);
    v25(v21, v67, v26);
    v30 = sub_22838F6B0();
    v29(v21, v26);
    v81 = 0;
    v82 = 0xE000000000000000;
    v31 = *&v13[*(v27 + 24)];
    sub_228392400();
    MEMORY[0x22AAB5C80](95, 0xE100000000000000);
    v83 = v79;
    v32 = sub_228393420();
    MEMORY[0x22AAB5C80](v32);

    MEMORY[0x22AAB5C80](95, 0xE100000000000000);
    v83 = v30;
    v33 = sub_228393420();
    MEMORY[0x22AAB5C80](v33);

    v34 = v81;
    v35 = v82;
    v36 = v76;
    if (*(v76 + 16))
    {
      v37 = sub_2281A76E0(v81, v82);
      if (v38)
      {
        v39 = v37;

        v24 = v65;
        v40 = v36[7] + v39 * v65;
        v41 = v73;
        sub_228267820(v40, v73, type metadata accessor for Dosage);
        sub_228267A54(v13, type metadata accessor for Dosage);
        (*v66)(v41, 0, 1, v80);
        sub_22826797C(v41, &qword_27D826200, type metadata accessor for Dosage);
        goto LABEL_5;
      }
    }

    v42 = v73;
    (*v66)(v73, 1, 1, v80);
    sub_22826797C(v42, &qword_27D826200, type metadata accessor for Dosage);
    sub_228267820(v13, v75, type metadata accessor for Dosage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v36;
    v45 = sub_2281A76E0(v34, v35);
    v46 = v36[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      break;
    }

    v49 = v44;
    if (v36[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v44 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_22829B6CC();
        if ((v49 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_22829A334(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_2281A76E0(v34, v35);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_27;
      }

      v45 = v50;
      if ((v49 & 1) == 0)
      {
LABEL_16:
        v22 = v81;
        v81[(v45 >> 6) + 8] |= 1 << v45;
        v52 = (v22[6] + 16 * v45);
        *v52 = v34;
        v52[1] = v35;
        v53 = v22[7] + v45 * v65;
        v24 = v65;
        sub_2282679EC(v75, v53, type metadata accessor for Dosage);
        v54 = v22[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_26;
        }

        v22[2] = v56;
        goto LABEL_4;
      }
    }

    v22 = v81;
    v23 = v81[7] + v45 * v65;
    v24 = v65;
    sub_2282675B4(v75, v23);
LABEL_4:
    v76 = v22;
    sub_228267A54(v13, type metadata accessor for Dosage);
LABEL_5:
    v19 = v77 + v24;
    v18 = v78 - 1;
    if (v78 == 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2283934A0();
  __break(1u);
  return result;
}

uint64_t sub_228265310@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a2)
  {
    a2(a4, a1, a3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Dosage();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_2282653A4(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_2282653D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
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
        type metadata accessor for Dosage();
        v6 = sub_228392220();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Dosage() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_228265764(v8, v9, a1, v4);
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
    return sub_228265500(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228265500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Dosage();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_228267820(v24, v18, type metadata accessor for Dosage);
      sub_228267820(v21, v14, type metadata accessor for Dosage);
      v25 = *(v8 + 20);
      v26 = sub_22838F3A0();
      sub_228267A54(v14, type metadata accessor for Dosage);
      result = sub_228267A54(v18, type metadata accessor for Dosage);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_2282679EC(v24, v37, type metadata accessor for Dosage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2282679EC(v27, v21, type metadata accessor for Dosage);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228265764(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for Dosage();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_2282660C8(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_2283406C0(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_228340634(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_2283406C0(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_228267820(v114 + v25 * v24, v19, type metadata accessor for Dosage);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_228267820(v27, v120, type metadata accessor for Dosage);
      v30 = *(v9 + 20);
      LODWORD(v115) = sub_22838F3A0();
      sub_228267A54(v29, type metadata accessor for Dosage);
      result = sub_228267A54(v19, type metadata accessor for Dosage);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_228267820(v32, v19, type metadata accessor for Dosage);
        v33 = v120;
        sub_228267820(v5, v120, type metadata accessor for Dosage);
        v34 = *(v121 + 20);
        v35 = sub_22838F3A0() & 1;
        sub_228267A54(v33, type metadata accessor for Dosage);
        result = sub_228267A54(v19, type metadata accessor for Dosage);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_2282679EC(v42 + v41, v111, type metadata accessor for Dosage);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2282679EC(v111, v42 + v36, type metadata accessor for Dosage);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_228267820(v5, v19, type metadata accessor for Dosage);
    v96 = v120;
    sub_228267820(v93, v120, type metadata accessor for Dosage);
    v97 = *(v9 + 20);
    a4 = sub_22838F3A0();
    sub_228267A54(v96, type metadata accessor for Dosage);
    result = sub_228267A54(v19, type metadata accessor for Dosage);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_228198978(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_228198978((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_2282660C8(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_2283406C0(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_228340634(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for Dosage;
    v98 = v119;
    sub_2282679EC(v5, v119, type metadata accessor for Dosage);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_2282679EC(v98, v93, type metadata accessor for Dosage);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_2282660C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for Dosage();
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
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

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_228267820(v33, v47, type metadata accessor for Dosage);
          v35 = v48;
          sub_228267820(v29, v48, type metadata accessor for Dosage);
          v36 = *(v31 + 20);
          v37 = sub_22838F3A0();
          sub_228267A54(v35, type metadata accessor for Dosage);
          sub_228267A54(v34, type metadata accessor for Dosage);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
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

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_228267820(a2, v47, type metadata accessor for Dosage);
        v22 = v48;
        sub_228267820(a4, v48, type metadata accessor for Dosage);
        v23 = *(v49 + 20);
        v24 = sub_22838F3A0();
        sub_228267A54(v22, type metadata accessor for Dosage);
        sub_228267A54(v21, type metadata accessor for Dosage);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_2283333D8(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_2282665F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2281BC114();
  v41 = v8;
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v39 = &v35 - v13;
  v42 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v17;
    *(a1 + 24) = v25;
    *(a1 + 32) = v19;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v15 - 32);
    v36 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    a1 = 1;
    v37 = a3;
    while (v19)
    {
LABEL_14:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v20;
      v26 = v24 | (v20 << 6);
      v27 = v42;
      v28 = *(v42 + 48);
      v29 = sub_228391130();
      v30 = v40;
      (*(*(v29 - 8) + 16))(v40, v28 + *(*(v29 - 8) + 72) * v26, v29);
      *&v30[*(v41 + 48)] = *(*(v27 + 56) + 8 * v26);
      v31 = v30;
      v32 = v39;
      sub_2282679EC(v31, v39, sub_2281BC114);
      sub_2282679EC(v32, a2, sub_2281BC114);
      a3 = v37;
      if (a1 == v37)
      {

        goto LABEL_23;
      }

      a2 += *(v38 + 72);

      result = a1;
      v33 = __OFADD__(a1++, 1);
      v20 = v25;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v20;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v21)
      {
        break;
      }

      v19 = *(v15 + 8 * v23);
      ++v22;
      if (v19)
      {
        v20 = v23;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v34 = v20 + 1;
    }

    else
    {
      v34 = v21;
    }

    v25 = v34 - 1;
    a3 = result;
LABEL_23:
    v17 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2282668C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_228266A44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Dosage();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_228267820(*(a4 + 56) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for Dosage);
      v25 = v24;
      v26 = v32;
      sub_2282679EC(v25, v32, type metadata accessor for Dosage);
      sub_2282679EC(v26, a2, type metadata accessor for Dosage);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_228266CC4(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_228393080();
  sub_22817A958(0, a5, a6);
  sub_2281A89C4(a7, a5, a6);
  result = sub_2283924C0();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_228393100())
      {
        goto LABEL_30;
      }

      sub_22817A958(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_228266EF4(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = sub_22838F6A0();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22838F6C0();
  v48 = *(v56 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v56);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Dosage();
  v58 = *(v55 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CC9578];
  sub_228267710(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - v16;
  v18 = sub_22838F440();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2;
  v25 = v24;
  sub_2282678FC(v23, v17, &qword_280DDCDB0, v13);
  if ((*(v19 + 48))(v17, 1, v25) != 1)
  {
    v54 = v3;
    v26 = *(v19 + 32);
    v44 = v25;
    v26(v22, v17, v25);
    v27 = *(v62 + qword_27D8261C0);
    result = sub_228391870();
    v29 = v63;
    if (!v63)
    {
      v29 = MEMORY[0x277D84F90];
    }

    v57 = v29;
    v53 = *(v29 + 16);
    if (!v53)
    {
LABEL_15:

      (*(v19 + 8))(v22, v44);
      return 1;
    }

    v30 = 0;
    v51 = v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v50 = *MEMORY[0x277CC9980];
    v60 = (v59 + 104);
    v48 += 8;
    v49 = (v59 + 8);
    v46 = *MEMORY[0x277CC99A0];
    v47 = v6;
    v52 = v19;
    v61 = v12;
    v31 = v54;
    while (1)
    {
      if (v30 >= *(v57 + 16))
      {
        __break(1u);
        return result;
      }

      v32 = *(v58 + 72);
      v62 = v30;
      sub_228267820(v51 + v32 * v30, v12, type metadata accessor for Dosage);
      v33 = *(v55 + 20);
      sub_22838F680();
      v34 = v22;
      v35 = *v60;
      v36 = v50;
      (*v60)(v6, v50, v31);
      v59 = v33;
      v37 = sub_22838F6B0();
      v38 = *v49;
      (*v49)(v6, v31);
      v35(v6, v36, v31);
      v22 = v34;
      v39 = sub_22838F6B0();
      v38(v6, v31);
      if (v37 != v39)
      {
        break;
      }

      v40 = v46;
      v35(v6, v46, v31);
      v59 = sub_22838F6B0();
      v38(v6, v31);
      v35(v6, v40, v31);
      v41 = sub_22838F6B0();
      v38(v6, v31);
      (*v48)(v9, v56);
      v19 = v52;
      if (v59 != v41)
      {
        goto LABEL_8;
      }

      sub_22838F4A0();
      sub_228264B30(&qword_27D826208, MEMORY[0x277CC95F0]);
      v12 = v61;
      v42 = sub_228391FB0();
      result = sub_228267A54(v12, type metadata accessor for Dosage);
      if ((v42 & 1) == 0)
      {
        (*(v19 + 8))(v34, v44);

        return 0;
      }

LABEL_9:
      v30 = v62 + 1;
      v6 = v47;
      if (v53 == v62 + 1)
      {
        goto LABEL_15;
      }
    }

    (*v48)(v9, v56);
    v19 = v52;
LABEL_8:
    v12 = v61;
    result = sub_228267A54(v61, type metadata accessor for Dosage);
    goto LABEL_9;
  }

  sub_22826797C(v17, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  return 1;
}

uint64_t sub_2282675B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_228267618(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22826767C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (sub_22838F470())
  {
    v6 = v5;
  }

  else
  {
    v6 = a1;
  }

  return sub_228267820(v6, a2, type metadata accessor for Dosage);
}

void sub_228267710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22826779C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Dosage() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_228265310(a1, v6, v8, a2);
}

uint64_t sub_228267820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228267888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2282678CC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_2282678FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228267710(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22826797C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228267710(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282679EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228267A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_228267B30(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v34 = a2[3];
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228397F40;
  v7 = type metadata accessor for ScheduleTypePickerDataSource(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  *(swift_allocObject() + qword_27D826228) = a1;

  v10 = sub_228390390();

  sub_22826826C();

  v11 = MEMORY[0x277D10F80];
  *(v6 + 32) = v10;
  *(v6 + 40) = v11;
  v12 = sub_2283901F0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_228390210();
  v15 = sub_228390480();
  v16 = &off_2785F4000;
  v35 = [v15 navigationItem];
  if (qword_27D823300 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v17 = type metadata accessor for ScheduleTypePickerViewController(0);
  v36[3] = v17;
  v36[0] = v15;
  v18 = sub_228391FC0();

  if (v17)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v36, v17);
    v33 = v15;
    v20 = *(v17 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_228393450();
    (*(v20 + 8))(v23, v17);
    v16 = &off_2785F4000;
    v15 = v33;
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v18 style:2 target:v24 action:sel_doneButtonSelected];

  swift_unknownObjectRelease();
  v26 = v35;
  [v35 setRightBarButtonItem_];

  if (v3)
  {

    v27 = [v15 v16[101]];
    sub_2283900F0();
    v28 = [objc_opt_self() labelColor];
    v29 = sub_2283900E0();
    [v27 setTitleView_];

    sub_228267618(v4, v3);
  }

  else
  {
    v30 = sub_228391FC0();
    [v15 setTitle_];
  }

  return v15;
}

id sub_228268060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleTypePickerViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_228268110()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v1 + 8);
  if (sub_2283901D0())
  {
    sub_228390010();
    sub_2283901C0();
    v6 = sub_2283900C0();
    swift_unknownObjectRelease();
    (*v5)(v4, v0);
  }

  else
  {
    sub_228390040();
    sub_2283901C0();
    v6 = sub_2283900C0();
    swift_unknownObjectRelease();
    (*v5)(v4, v0);
    [v6 setContentInsets_];
  }

  return v6;
}

uint64_t sub_22826826C()
{
  v0 = sub_22838FEF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v55 - v6;
  sub_2282694D4(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - v9;
  v62 = sub_228390150();
  v59 = *(v62 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v62);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v14 = sub_228390130();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_228390140();
  v15 = sub_2281F96C0();
  v16 = *(v15 + 16);
  v61 = v13;
  if (v16)
  {
    v56 = v5;
    v57 = v1;
    v58 = v0;
    v78 = MEMORY[0x277D84F90];
    sub_2281CA28C(0, v16, 0);
    v17 = sub_2283904F0();
    v18 = v78;
    v64 = *(v67 + qword_27D826228);
    v65 = v17;
    v63 = 0x80000002283AF590;
    v74 = v16 - 1;
    v19 = 32;
    for (i = v15; ; v15 = i)
    {
      v68 = v19;
      v20 = *(v15 + v19);
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_2283931D0();

      v75 = 0xD000000000000019;
      v76 = v63;
      v77 = v20;
      v21 = sub_228393420();
      MEMORY[0x22AAB5C80](v21);

      v72 = v76;
      v73 = v75;
      v22 = sub_2281F8E98(v20);
      v70 = v23;
      v71 = v22;
      v69 = sub_2281F92A8(v20);
      v25 = v24;
      sub_228391870();
      v26 = v77;
      if (qword_27D8232B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v27 = off_27D8250A8;
      if (*(off_27D8250A8 + 2))
      {
        v28 = sub_2281A9BCC(v26);
        if (v29)
        {
          v26 = *(v27[7] + 8 * v28);
        }
      }

      swift_endAccess();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v20;
      v32 = sub_22838FBB0();
      v34 = v33;
      v78 = v18;
      v36 = *(v18 + 16);
      v35 = *(v18 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_2281CA28C((v35 > 1), v36 + 1, 1);
        v18 = v78;
      }

      *(v18 + 16) = v36 + 1;
      v37 = v18 + 88 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v38 = v72;
      *(v37 + 48) = v73;
      *(v37 + 56) = v38;
      v39 = v70;
      *(v37 + 64) = v71;
      *(v37 + 72) = v39;
      *(v37 + 80) = v69;
      *(v37 + 88) = v25;
      *(v37 + 96) = v26 == v20;
      v40 = *(&v75 + 3);
      *(v37 + 97) = v75;
      *(v37 + 100) = v40;
      *(v37 + 104) = sub_2282694CC;
      *(v37 + 112) = v31;
      if (!v74)
      {
        break;
      }

      --v74;
      v19 = v68 + 8;
    }

    v0 = v58;
    v1 = v57;
    v41 = v56;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
    v41 = v5;
  }

  sub_22819A064(0, &qword_27D823918, &qword_27D827E00);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_228397F40;
  v43 = v62;
  *(v42 + 56) = v62;
  *(v42 + 64) = sub_228269474();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v42 + 32));
  v45 = v59;
  (*(v59 + 16))(boxed_opaque_existential_1, v61, v43);
  v46 = v60;
  sub_22838FED0();
  sub_2281962E4(v18);

  sub_22838FED0();
  sub_2282694D4(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v47 = *(v1 + 72);
  v48 = v41;
  v49 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_228397F30;
  v51 = v50 + v49;
  v52 = *(v1 + 16);
  v52(v51, v46, v0);
  v52(v51 + v47, v48, v0);
  sub_22838FF50();

  v53 = *(v1 + 8);
  v53(v48, v0);
  v53(v46, v0);
  return (*(v45 + 8))(v61, v62);
}

uint64_t sub_2282689F8()
{
  sub_228391520();
  sub_22823C530();
  v0 = *MEMORY[0x277D76918];
  v1 = *MEMORY[0x277D74420];
  sub_228392AD0();
  v2 = sub_228391450();
  sub_228391410();
  v2(v6, 0);
  v3 = [objc_opt_self() labelColor];
  v4 = sub_228391450();
  sub_228391420();
  return v4(v6, 0);
}

uint64_t sub_228268AFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + qword_27D826228);
    v2 = sub_228391850();
    sub_22826826C(v2);
  }

  return result;
}

uint64_t sub_228268BE4()
{
  v0 = *(sub_2283903B0() + qword_27D826228);

  return swift_deallocClassInstance();
}

uint64_t sub_228268C74@<X0>(uint64_t *a1@<X8>)
{
  sub_2282694D4(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v6 = sub_228390130();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a1[3] = sub_228390150();
  a1[4] = sub_228269474();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_228390140();
}

uint64_t sub_228268E28()
{
  sub_228390120();
  sub_2283926D0();
  return sub_2283926B0();
}

uint64_t sub_228268E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *(a2 + 64);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_228393460()) && (v2 == v7 && v4 == v8 || (sub_228393460()))
  {
    if (v5)
    {
      if (v9 && (v3 == v10 && v5 == v9 || (sub_228393460() & 1) != 0))
      {
        return v6 ^ v11 ^ 1u;
      }
    }

    else if (!v9)
    {
      return v6 ^ v11 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_228268F78@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = sub_228391590();
  v8 = MEMORY[0x277D74C30];
  a1[3] = v7;
  a1[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_228391520();

  sub_228391540();

  sub_2283913D0();
  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = sub_2283914A0();
  sub_228391420();
  return v10(&v12, 0);
}

uint64_t sub_228269060()
{
  v1 = sub_228391220();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282694D4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v22 = sub_228391250();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 64);
  sub_2282694D4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  v15 = *(sub_2283912F0() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228397F40;
  v19 = sub_228391230();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_228391240();
  (*(v2 + 104))(v5, *MEMORY[0x277D74A98], v1);
  sub_2283912E0();
  (*(v2 + 8))(v5, v1);
  (*(v10 + 8))(v13, v22);
  return v18;
}

uint64_t sub_22826937C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(v2 + 80);
    return v3(a2);
  }

  return result;
}

uint64_t sub_2282693B0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_228269428(uint64_t a1)
{
  v2 = sub_228269620();

  return MEMORY[0x282169440](a1, v2);
}

unint64_t sub_228269474()
{
  result = qword_27D824EC8;
  if (!qword_27D824EC8)
  {
    sub_228390150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824EC8);
  }

  return result;
}

uint64_t sub_2282694CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_228268AFC();
}

void sub_2282694D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_So16UIViewControllerCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_228269574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2282695BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228269620()
{
  result = qword_27D826240;
  if (!qword_27D826240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826240);
  }

  return result;
}

uint64_t MedicationDetailItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MedicationDetailItem.uniqueIdentifier.getter()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 description];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return 0x74496C6961746544;
}

uint64_t static MedicationDetailItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  return sub_228392C60() & 1;
}

void MedicationDetailItem.hash(into:)()
{
  v1 = [*v0 semanticIdentifier];
  sub_228392C70();
}

uint64_t MedicationDetailItem.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  v2 = [v1 semanticIdentifier];
  sub_228392C70();

  return sub_228393570();
}

uint64_t sub_22826987C()
{
  v1 = *v0;
  sub_228393520();
  v2 = [v1 semanticIdentifier];
  sub_228392C70();

  return sub_228393570();
}

void sub_2282698E0()
{
  v1 = [*v0 semanticIdentifier];
  sub_228392C70();
}

uint64_t sub_228269948()
{
  v1 = *v0;
  sub_228393520();
  v2 = [v1 semanticIdentifier];
  sub_228392C70();

  return sub_228393570();
}

unint64_t sub_2282699AC()
{
  result = qword_27D826248;
  if (!qword_27D826248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826248);
  }

  return result;
}

uint64_t sub_228269A00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  return sub_228392C60() & 1;
}

unint64_t sub_228269A58()
{
  result = qword_27D826250;
  if (!qword_27D826250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826250);
  }

  return result;
}

uint64_t sub_228269AAC()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 description];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return 0x74496C6961746544;
}

uint64_t sub_228269B5C(uint64_t a1)
{
  v2 = sub_22826AD04();

  return MEMORY[0x282169440](a1, v2);
}

id sub_228269BB8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    [v5 setTextAlignment_];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setAdjustsFontForContentSizeCategory_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = *MEMORY[0x277D76A20];
    v8 = *MEMORY[0x277D74420];
    v9 = sub_228392AD0();
    [v5 setFont_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_228269D28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v6 setNumberOfLines_];
    [v6 setTextAlignment_];
    v7 = [objc_opt_self() labelColor];
    [v6 setTextColor_];

    [v6 setAdjustsFontForContentSizeCategory_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v8 = *MEMORY[0x277D76918];
    v9 = sub_228392AD0();
    [v6 setFont_];

    v10 = *(v5 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v11 = v3;
  return v4;
}

void sub_228269FD0()
{
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  sub_228391380();
  v5 = sub_2283913A0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  MEMORY[0x22AAB6420](v4);
  sub_228180ED0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228399D40;
  *(v6 + 32) = sub_228269BB8();
  *(v6 + 40) = sub_228269D10();
  *(v6 + 48) = sub_228269D1C();
  v7 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v8 = sub_228392190();

  v9 = [v7 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setAlignment_];
  [v9 setDistribution_];
  [v9 setSpacing_];
  v10 = [v0 contentView];
  v11 = v9;
  [v10 addSubview_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_228397F00;
  v14 = [v11 leadingAnchor];

  v15 = [v0 contentView];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:16.0];
  *(v13 + 32) = v17;
  v18 = [v11 trailingAnchor];

  v19 = [v0 contentView];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:-16.0];
  *(v13 + 40) = v21;
  v22 = [v11 topAnchor];

  v23 = [v0 contentView];
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v13 + 48) = v25;
  v26 = [v11 bottomAnchor];

  v27 = [v0 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v13 + 56) = v29;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v30 = sub_228392190();

  [v12 activateConstraints_];
}

void sub_22826A478()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - v8;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v10], &v64);
  if (!v66)
  {
    sub_22819482C(&v64);
LABEL_6:
    sub_228391150();
    v15 = v1;
    v16 = sub_2283911A0();
    v17 = sub_2283925C0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v61 = v2;
      v20 = v19;
      v63[0] = v19;
      *v18 = 136446466;
      v21 = sub_228393600();
      v23 = sub_2281C96FC(v21, v22, v63);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      sub_22817E6C8(&v1[v10], &v64);
      sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
      v24 = sub_228392040();
      v26 = sub_2281C96FC(v24, v25, v63);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_22816B000, v16, v17, "%{public}s Incorrect view model for MedicationDetailCell: %s Expecting MedicationDetailItem", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v20, -1, -1);
      MEMORY[0x22AAB7B80](v18, -1, -1);

      (*(v3 + 8))(v7, v61);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    return;
  }

  sub_22817A700();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = v63[0];
  v60 = v63[2];
  v61 = v2;
  v12 = [v63[0] userSpecifiedName];
  v13 = sub_228269BB8();
  v14 = v13;
  if (v12)
  {
    [v13 setText_];

    v14 = v12;
  }

  else
  {
    [v13 setText_];
  }

  [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel] setHidden_];
  v64 = v11;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v27 = sub_228390F00();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
  }

  else
  {
    v31 = [v11 freeTextMedicationName];
    if (!v31)
    {
      sub_228391150();
      v47 = v1;
      v48 = sub_2283911A0();
      v49 = sub_2283925C0();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62 = v59;
        *v50 = 136446466;
        v51 = sub_228393600();
        v53 = sub_2281C96FC(v51, v52, &v62);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2080;
        sub_22817E6C8(&v1[v10], &v64);
        sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
        v54 = sub_228392040();
        v56 = sub_2281C96FC(v54, v55, &v62);

        *(v50 + 14) = v56;
        _os_log_impl(&dword_22816B000, v48, v49, "%{public}s Failed to retrieve medication name: %s", v50, 0x16u);
        v57 = v59;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v57, -1, -1);
        MEMORY[0x22AAB7B80](v50, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v9, v61);
      return;
    }

    v32 = v31;
    v29 = sub_228392000();
    v30 = v33;
  }

  v63[0] = v29;
  v63[1] = v30;
  v34 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();
  if (v35)
  {
    v64 = 8236;
    v65 = 0xE200000000000000;
    MEMORY[0x22AAB5C80](v34);

    MEMORY[0x22AAB5C80](v64, v65);
  }

  v36 = sub_228269D10();
  v37 = sub_228391FC0();
  [v36 setText_];

  v38 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v40 = v39;

  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v38 = 0;
    v41 = 0xE000000000000000;
  }

  v42 = sub_228269D1C();
  v43 = v42;
  v44 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v44 = v38 & 0xFFFFFFFFFFFFLL;
  }

  [v42 setHidden_];

  v45 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___strengthLabel];
  v46 = sub_228391FC0();

  [v45 setText_];
}

id sub_22826AAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDetailCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22826ABA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826AC00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826A478();
  return sub_22819482C(a1);
}

void (*sub_22826AC6C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826ACD0;
}

void sub_22826ACD0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_22826A478();
  }
}

unint64_t sub_22826AD04()
{
  result = qword_27D826278;
  if (!qword_27D826278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826278);
  }

  return result;
}

uint64_t TextViewItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TextViewItem.text.getter()
{
  v1 = (v0 + *(type metadata accessor for TextViewItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for TextViewItem()
{
  result = qword_27D8262A0;
  if (!qword_27D8262A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextViewItem.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextViewItem() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextViewItem.placeholder.getter()
{
  v1 = (v0 + *(type metadata accessor for TextViewItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextViewItem.placeholder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextViewItem() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextViewItem.characterLimit.getter()
{
  v1 = (v0 + *(type metadata accessor for TextViewItem() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TextViewItem.characterLimit.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextViewItem();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextViewItem.height.setter(double a1)
{
  result = type metadata accessor for TextViewItem();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TextViewItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for TextViewItem();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t TextViewItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TextViewItem() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TextViewItem.uniqueIdentifier.getter()
{
  strcpy(v2, "TextViewItem.");
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return v2[0];
}

uint64_t TextViewItem.init(text:height:placeholder:characterLimit:isEnabled:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  sub_22838F490();
  v16 = type metadata accessor for TextViewItem();
  v17 = (a9 + v16[5]);
  v18 = (a9 + v16[6]);
  v19 = a9 + v16[7];
  v20 = (a9 + v16[11]);
  type metadata accessor for TextItemCell();
  sub_22826D888(&qword_27D826280, v21, type metadata accessor for TextItemCell);
  result = sub_22838FBB0();
  *v20 = result;
  v20[1] = v23;
  *v17 = a1;
  v17[1] = a2;
  *(a9 + v16[8]) = a10;
  *v18 = a3;
  v18[1] = a4;
  *v19 = a5;
  *(v19 + 8) = a6 & 1;
  *(a9 + v16[9]) = a7;
  v24 = (a9 + v16[10]);
  *v24 = a8;
  v24[1] = a11;
  return result;
}

uint64_t TextViewItem.hash(into:)()
{
  v1 = type metadata accessor for TextViewItem();
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

  v4 = *(v0 + v1[8]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v4);
  v5 = *(v0 + v1[9]);
  return sub_228393540();
}

uint64_t TextViewItem.hashValue.getter()
{
  sub_228393520();
  v1 = type metadata accessor for TextViewItem();
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

  v4 = *(v0 + v1[8]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v4);
  v5 = *(v0 + v1[9]);
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_22826B50C(uint64_t a1, int *a2)
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

  v6 = *(v2 + a2[8]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v6);
  v7 = *(v2 + a2[9]);
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_22826B5CC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_22826B5E0()
{
  strcpy(v2, "TextViewItem.");
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return v2[0];
}

uint64_t sub_22826B644(uint64_t a1)
{
  v2 = sub_22826D888(&unk_27D826360, 255, type metadata accessor for TextViewItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_22826B6C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for UITextViewWithPlaceholder();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_228392560();
    [v5 setTextContainerInset_];
    v6 = [objc_opt_self() secondarySystemBackgroundColor];
    [v5 setBackgroundColor_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = *MEMORY[0x277D76918];
    v8 = sub_228392AD0();
    [v5 setFont_];

    [v5 setDelegate_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *MEMORY[0x277D12788];
    v15 = sub_228392000();
    v16 = v10;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AF770);

    v11 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

char *sub_22826B8C8(double a1, double a2, double a3, double a4)
{
  sub_22826D658(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_2283913A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView] = 0;
  v18 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item];
  v19 = type metadata accessor for TextItemCell();
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v27.receiver = v4;
  v27.super_class = v19;
  v20 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = sub_22826B6C4();
  [v21 addSubview_];

  v23 = *&v20[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView];
  sub_22838F7B0();
  v24 = *MEMORY[0x277CDA138];
  sub_228392B00();

  sub_228391390();
  v25 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  (*(v14 + 16))(v12, v17, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  MEMORY[0x22AAB6420](v12);

  (*(v14 + 8))(v17, v13);
  return v20;
}

void sub_22826BB88()
{
  v1 = v0;
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v37 - v4 + 22;
  v6 = sub_22826B6C4();
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView;
  v8 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView] constraints];
  if (!v8)
  {
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    sub_2283921A0();
    v8 = sub_228392190();
  }

  [v6 removeConstraints_];

  sub_22826D838(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22839CC40;
  v10 = [*&v1[v7] leadingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v9 + 32) = v13;
  v14 = [*&v1[v7] trailingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v9 + 40) = v17;
  v18 = [*&v1[v7] topAnchor];
  v19 = [v1 contentView];
  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v9 + 48) = v21;
  v22 = [*&v1[v7] bottomAnchor];
  v23 = [v1 contentView];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v9 + 56) = v25;
  v26 = [*&v1[v7] heightAnchor];
  v27 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v27], v37);
  if (!v38)
  {
    sub_228181138(v37, &qword_280DDCD50, &qword_280DDCD60);
    v32 = type metadata accessor for TextViewItem();
    (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v28 = type metadata accessor for TextViewItem();
  v29 = swift_dynamicCast();
  v30 = *(v28 - 8);
  (*(v30 + 56))(v5, v29 ^ 1u, 1, v28);
  if ((*(v30 + 48))(v5, 1, v28) == 1)
  {
LABEL_7:
    sub_22826D6AC(v5);
    v31 = 60.0;
    goto LABEL_8;
  }

  v31 = *&v5[*(v28 + 32)];
  sub_22826D788(v5);
LABEL_8:
  v33 = objc_opt_self();
  v34 = [v26 constraintEqualToConstant_];

  *(v9 + 64) = v34;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v35 = sub_228392190();

  [v33 activateConstraints_];
}

uint64_t sub_22826C160()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for TextViewItem();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v16], v46);
  if (v47)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_22826D724(v10, v15);
      sub_22826BB88();
      v18 = sub_22826B6C4();
      v19 = &v15[v11[5]];
      if (*(v19 + 1))
      {
        v20 = *v19;
        v21 = *(v19 + 1);

        v22 = sub_228391FC0();
      }

      else
      {
        v22 = 0;
      }

      v32 = type metadata accessor for UITextViewWithPlaceholder();
      v44.receiver = v18;
      v44.super_class = v32;
      objc_msgSendSuper2(&v44, sel_setText_, v22);

      v43.receiver = v18;
      v43.super_class = v32;
      v33 = objc_msgSendSuper2(&v43, sel_text);
      v42.receiver = v18;
      v42.super_class = v32;
      objc_msgSendSuper2(&v42, sel_setText_, v33);

      sub_2283255A4();
      v34 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView;
      v35 = &v15[v11[6]];
      v36 = *v35;
      v37 = *(v35 + 1);
      v38 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView];
      v39 = sub_2283251B8();
      if (v37)
      {
        v40 = sub_228391FC0();
      }

      else
      {
        v40 = 0;
      }

      [v39 setText_];

      [*&v1[v34] setUserInteractionEnabled_];
      return sub_22826D788(v15);
    }
  }

  else
  {
    sub_228181138(v46, &qword_280DDCD50, &qword_280DDCD60);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_22826D6AC(v10);
  sub_228391150();
  v23 = v1;
  v24 = sub_2283911A0();
  v25 = sub_2283925C0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v27;
    *v26 = 136446210;
    sub_22817E6C8(&v1[v16], v46);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60);
    v28 = sub_228392040();
    v30 = sub_2281C96FC(v28, v29, &v45);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22816B000, v24, v25, "Incorrect view model for TextItemCell: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAB7B80](v27, -1, -1);
    MEMORY[0x22AAB7B80](v26, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

BOOL sub_22826C6A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v5 + v9, v25);
  if (!v26)
  {
    sub_228181138(v25, &qword_280DDCD50, &qword_280DDCD60);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_9;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  sub_2281810DC(0, &qword_27D826350);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  v10 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
LABEL_9:
    sub_228181138(&v27, &qword_27D826348, &qword_27D826350);
    return 1;
  }

  v11 = v29;
  __swift_project_boxed_opaque_existential_0(&v27, *(&v28 + 1));
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_0(&v27);
  if (v14)
  {
    return 1;
  }

  v15 = [a1 text];
  if (v15)
  {
    v16 = v15;
    v17 = sub_228392000();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v21 = sub_228392540();
  if (v23)
  {

    return 0;
  }

  else
  {
    sub_22826C8CC(v21, v22, a4, a5, v17, v19);

    v24 = sub_2283920C0();

    return v12 >= v24;
  }
}

unint64_t sub_22826C8CC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_228392F20();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_228392F20();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_22826D348(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_228392110();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_22826D348(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_22826D348(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_228392110();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_2283920F0();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x22AAB5C30](result);
LABEL_23:
        sub_228392140();
        sub_22826D7E4();
        sub_2283920D0();

        sub_2283920D0();
        sub_22826D2FC(a2, a5, a6);
        sub_2283920D0();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22826CC70(void *a1)
{
  v2 = v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for TextViewItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v18, v39);
  if (v40)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v19 = swift_dynamicCast();
    (*(v14 + 56))(v12, v19 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_22826D724(v12, v17);
      v20 = &v17[*(v13 + 40)];
      v22 = *v20;
      v21 = *(v20 + 1);
      v23 = [a1 text];
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

      v22(v17, v25, v27);

      return sub_22826D788(v17);
    }
  }

  else
  {
    sub_228181138(v39, &qword_280DDCD50, &qword_280DDCD60);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_22826D6AC(v12);
  sub_228391150();
  v28 = v2;
  v29 = sub_2283911A0();
  v30 = sub_2283925C0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v31 = 136446210;
    sub_22817E6C8(v2 + v18, v39);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60);
    v33 = sub_228392040();
    v35 = sub_2281C96FC(v33, v34, &v38);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_22816B000, v29, v30, "Incorrect view model for TextItemCell: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AAB7B80](v32, -1, -1);
    MEMORY[0x22AAB7B80](v31, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

id sub_22826D0FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22826D188@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826D1E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826C160();
  return sub_228181138(a1, &qword_280DDCD50, &qword_280DDCD60);
}

uint64_t (*sub_22826D264(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826D2C8;
}

uint64_t sub_22826D2C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22826C160();
  }

  return result;
}

unint64_t sub_22826D2FC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_228392140();
  }

  __break(1u);
  return result;
}

uint64_t sub_22826D348(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_228392120();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAB5CA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s19HealthMedicationsUI12TextViewItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextViewItem();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_228393460();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else if (v9)
  {
LABEL_12:
    v13 = 0;
    return v13 & 1;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    goto LABEL_12;
  }

  v13 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  return v13 & 1;
}

void sub_22826D540()
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
        sub_2281C35D8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22826D658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_22826D6AC(uint64_t a1)
{
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22826D724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextViewItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22826D788(uint64_t a1)
{
  v2 = type metadata accessor for TextViewItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22826D7E4()
{
  result = qword_27D826358;
  if (!qword_27D826358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826358);
  }

  return result;
}

void sub_22826D838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_22826D888(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t InteractionResultItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27D828D50;
  v4 = sub_22838F4A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractionResultItem.reuseIdentifier.getter()
{
  v0 = sub_22826DEB8();

  return v0;
}

uint64_t InteractionResultItem.__allocating_init(item:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  InteractionResultItem.init(item:)(a1);
  return v5;
}

char *InteractionResultItem.init(item:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_22838F490();
  v5 = &v1[qword_27D828D58];
  v6 = v4[12];
  v7 = v4[10];
  *v5 = sub_22838FBA0();
  v5[1] = v8;
  (*(*(v4[11] - 8) + 32))(&v2[*(*v2 + 120)], a1);
  return v2;
}

uint64_t sub_22826DB00()
{
  v2 = *(v0 + qword_27D828D58);
  v1 = *(v0 + qword_27D828D58 + 8);
  v3 = sub_22838F450();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return v2;
}

uint64_t sub_22826DB98()
{
  v1 = *(v0 + qword_27D828D58);
  v2 = *(v0 + qword_27D828D58 + 8);
  return sub_2283920B0();
}

uint64_t *InteractionResultItem.deinit()
{
  v1 = *v0;
  v2 = qword_27D828D50;
  v3 = sub_22838F4A0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_27D828D58 + 8);

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t InteractionResultItem.__deallocating_deinit()
{
  InteractionResultItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22826DCD8()
{
  sub_228393520();
  v1 = *(v0 + qword_27D828D58);
  v2 = *(v0 + qword_27D828D58 + 8);
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22826DD28()
{
  v1 = *v0;
  v2 = sub_22826DEB8();

  return v2;
}

uint64_t sub_22826DDCC()
{
  sub_228393520();
  v1 = *v0;
  sub_22826DB98();
  return sub_228393570();
}

uint64_t sub_22826DE30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_22826DE94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static InteractionResultItem.== infix(_:_:)() & 1;
}

uint64_t sub_22826DEB8()
{
  result = *(v0 + qword_27D828D58);
  v2 = *(v0 + qword_27D828D58 + 8);
  return result;
}

uint64_t sub_22826DF04(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22826E08C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228391590();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v13, v28);
  if (v29)
  {
    sub_22817A700();
    type metadata accessor for MedicationsDayHistoryEmptyItem();
    if (swift_dynamicCast())
    {
      v14 = v27;
      MEMORY[0x22AAB64A0]();
      v15 = *(v14 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText);
      v16 = *(v14 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyItem_bodyText + 8);

      sub_228391540();
      v29 = v8;
      v30 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
      MEMORY[0x22AAB6400](v28);

      return (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    sub_22819482C(v28);
  }

  sub_228391150();
  v19 = sub_2283911A0();
  v20 = sub_2283925C0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    v28[0] = ObjectType;
    swift_getMetatypeMetadata();
    v23 = sub_228392020();
    v25 = sub_2281C96FC(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_22816B000, v19, v20, "[%{public}s]: Unexpected view model.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AAB7B80](v22, -1, -1);
    MEMORY[0x22AAB7B80](v21, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id sub_22826E4DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsDayHistoryEmptyCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22826E544@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826E59C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826E08C();
  return sub_22819482C(a1);
}

uint64_t (*sub_22826E608(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826E66C;
}

uint64_t sub_22826E66C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22826E08C();
  }

  return result;
}

uint64_t sub_22826E6A0()
{
  v1 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v6 = v0[3];

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5CD0](v1, v2);
  v3 = sub_228393420();
  MEMORY[0x22AAB5C80](v3);

  return v5;
}

uint64_t sub_22826E72C(uint64_t a1)
{
  v2 = sub_22826EFC0();

  return MEMORY[0x282169440](a1, v2);
}

void sub_22826E8A8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v6);
  if (v7)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_headerView;
      [*(&v0->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_headerView) removeFromSuperview];
      v3 = sub_22826ECF0();

      v4 = *(&v0->super.super.isa + v2);
      *(&v0->super.super.isa + v2) = v3;
      v5 = v3;

      [(UIView *)v0 addSubview:v5];
      UIView.alignConstraints(to:)(v0);
    }
  }

  else
  {
    sub_22819482C(v6);
  }
}

id sub_22826E9B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22826EA5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826EAB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826E8A8();
  return sub_22819482C(a1);
}

uint64_t (*sub_22826EB20(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826EB84;
}

uint64_t sub_22826EB88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_22826EBE4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_22826E8A8();
  return sub_22819482C(a1);
}

uint64_t (*sub_22826EC54(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_22826F014;
}

void sub_22826ECBC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_22826E8A8();
  }
}

id sub_22826ECF0()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_228391590();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2283914F0();

  sub_228391540();
  sub_228390010();
  sub_2283900A0();
  (*(v1 + 8))(v4, v0);
  sub_2283914E0();
  v10 = sub_2283914C0();
  *(v11 + 16) = 0;
  v10(v17, 0);
  v12 = sub_2283913B0();
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemBackgroundColor];
  [v14 setBackgroundColor_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v6 + 8))(v9, v5);
  return v14;
}

unint64_t sub_22826EF68()
{
  result = qword_27D826468;
  if (!qword_27D826468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826468);
  }

  return result;
}

unint64_t sub_22826EFC0()
{
  result = qword_27D826470;
  if (!qword_27D826470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826470);
  }

  return result;
}

uint64_t MedicationSearchItem.init(source:axIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MedicationSearchItem(0);
  v12 = (a3 + v11[6]);
  sub_22838F490();
  v13 = sub_22838F450();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  *v12 = v13;
  v12[1] = v15;
  v16 = (a3 + v11[7]);
  type metadata accessor for MedicationSearchCell();
  sub_228272CE8(&qword_27D8239E8, v17, type metadata accessor for MedicationSearchCell);
  *v16 = sub_22838FBB0();
  v16[1] = v18;
  result = sub_228273478(a1, a3, type metadata accessor for MedicationSearchItem.Source);
  *(a3 + v11[5]) = a2;
  return result;
}

uint64_t sub_22826F200(uint64_t a1)
{
  v15[0] = a1;
  v2 = sub_228390C30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D116A0];
  v8 = MEMORY[0x277D83D88];
  sub_2282733B4(0, &qword_27D8264E8, MEMORY[0x277D116A0], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v15 - v11;
  sub_228273898(v1, v15 - v11, &qword_27D8264E8, v7, v8, sub_2282733B4);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    return 0;
  }

  (*(v3 + 32))(v6, v12, v2);
  v14 = v15[1];
  (v15[0])(&v16, v6);
  if (v14)
  {
    result = (*(v3 + 8))(v6, v2);
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return v16;
  }

  return result;
}

uint64_t MedicationSearchItem.Source.hash(into:)()
{
  v1 = sub_228390B70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390C30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MedicationSearchItem.Source(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v14, v1);
    MEMORY[0x22AAB70D0](1);
    sub_228272CE8(&qword_27D826478, 255, MEMORY[0x277D11678]);
    sub_228391F70();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v16 = *v14;
    sub_22818DE38();
    (*(v7 + 32))(v10, v14 + *(v17 + 48), v6);
    MEMORY[0x22AAB70D0](0);
    sub_228392C70();
    sub_228272CE8(&unk_27D825AB0, 255, MEMORY[0x277D116A0]);
    sub_228391F70();

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t MedicationSearchItem.Source.hashValue.getter()
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)();
  return sub_228393570();
}

uint64_t sub_22826F748()
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)();
  return sub_228393570();
}

uint64_t sub_22826F78C()
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)();
  return sub_228393570();
}

uint64_t sub_22826F7C8()
{
  v1 = v0;
  v2 = sub_228390FB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228390B70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = type metadata accessor for MedicationSearchItem.Source(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v14, v18, v7);
    (*(v8 + 16))(v12, v14, v7);
    sub_228390FC0();
    v19 = sub_228390F70();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v14, v7);
  }

  else
  {

    sub_22818DE38();
    v21 = *(v20 + 48);
    v22 = sub_228390C30();
    (*(*(v22 - 8) + 8))(v18 + v21, v22);
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t sub_22826FA64()
{
  v1 = v0;
  v2 = sub_228390FB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228390B70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = type metadata accessor for MedicationSearchItem.Source(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v14, v18, v7);
    (*(v8 + 16))(v12, v14, v7);
    sub_228390FC0();
    v19 = sub_228390FA0();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v14, v7);
  }

  else
  {
    v19 = *v18;
    sub_22818DE38();
    v21 = *(v20 + 48);
    v22 = sub_228390C30();
    (*(*(v22 - 8) + 8))(v18 + v21, v22);
  }

  return v19;
}

uint64_t sub_22826FCF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = sub_228390FB0();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228390B70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for MedicationSearchItem.Source(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v2, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v15, v19, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_228390FC0();
    if (sub_228390F70())
    {
      v20 = sub_228390F80();
      if (*(v20 + 16))
      {
        v21 = v20;
        v22 = sub_228390C30();
        v23 = *(v22 - 8);
        (*(v23 + 16))(a1, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

        (*(v4 + 8))(v7, v31);
        (*(v9 + 8))(v15, v8);
        return (*(v23 + 56))(a1, 0, 1, v22);
      }
    }

    (*(v4 + 8))(v7, v31);
    (*(v9 + 8))(v15, v8);
    v29 = sub_228390C30();
    return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  }

  else
  {

    sub_22818DE38();
    v26 = *(v25 + 48);
    v27 = sub_228390C30();
    v28 = *(v27 - 8);
    (*(v28 + 32))(a1, v19 + v26, v27);
    return (*(v28 + 56))(a1, 0, 1, v27);
  }
}

uint64_t sub_2282700F8()
{
  v1 = v0;
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228390C30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MedicationSearchItem.Source(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v15, v2);
    v16 = sub_228390B40();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v17 = *v15;
    sub_22818DE38();
    (*(v8 + 32))(v11, v15 + *(v18 + 48), v7);
    v19 = MEMORY[0x277D837D0];
    sub_2281FE610(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_228397F30;
    *(v20 + 32) = sub_228390C00();
    *(v20 + 40) = v21;
    *(v20 + 48) = sub_228392E80();
    *(v20 + 56) = v22;
    v24[1] = v20;
    sub_2281FE610(0, &qword_27D827E10, v19, MEMORY[0x277D83940]);
    sub_2281BF13C();
    v16 = sub_228391F90();

    (*(v8 + 8))(v11, v7);
  }

  return v16;
}

uint64_t sub_2282703FC()
{
  v1 = sub_228390B70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MedicationSearchItem.Source(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228272C84(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x28223BE20](v10);
    *&v17[-16] = v5;
    v11 = sub_22826F200(sub_228273878);
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v12 = *v9;
    sub_22818DE38();
    v14 = *(v13 + 48);
    sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_228396260;
    *(v11 + 32) = v12;
    v15 = sub_228390C30();
    (*(*(v15 - 8) + 8))(&v9[v14], v15);
  }

  return v11;
}

uint64_t sub_228270648@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_228390B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228390FB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  sub_228390FC0();
  v14 = sub_228390F90();
  result = (*(v10 + 8))(v13, v9);
  *a2 = v14;
  return result;
}

uint64_t MedicationSearchItem.uniqueIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationSearchItem(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MedicationSearchItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationSearchItem(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id MedicationSearchItem.searchItemDisplayString.getter()
{
  v1 = v0;
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MedicationSearchItem.Source(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_228390B30();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    sub_22818DE38();
    v13 = *(v12 + 48);
    sub_228392E30();

    v14 = sub_228390C30();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  v15 = type metadata accessor for MedicationSearchItem(0);
  v16 = sub_228272CE8(&qword_27D826480, 255, type metadata accessor for MedicationSearchItem);
  MEMORY[0x22AAB45F0](v15, v16);
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_228391FC0();

  type metadata accessor for Key(0);
  sub_228272CE8(&qword_280DDBA40, 255, type metadata accessor for Key);
  v19 = sub_228391F10();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

uint64_t MedicationSearchItem.hash(into:)()
{
  MedicationSearchItem.Source.hash(into:)();
  v1 = type metadata accessor for MedicationSearchItem(0);
  MEMORY[0x22AAB70D0](*(v0 + v1[5]));
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_2283920B0();
  v5 = (v0 + v1[7]);
  v6 = *v5;
  v7 = v5[1];

  return sub_2283920B0();
}

uint64_t MedicationSearchItem.hashValue.getter()
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)();
  v1 = type metadata accessor for MedicationSearchItem(0);
  MEMORY[0x22AAB70D0](*(v0 + v1[5]));
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_2283920B0();
  v5 = (v0 + v1[7]);
  v6 = *v5;
  v7 = v5[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228270C48(int *a1)
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)();
  MEMORY[0x22AAB70D0](*(v1 + a1[5]));
  v3 = (v1 + a1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_2283920B0();
  v6 = (v1 + a1[7]);
  v7 = *v6;
  v8 = v6[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228270CD0(uint64_t a1, int *a2)
{
  MedicationSearchItem.Source.hash(into:)();
  MEMORY[0x22AAB70D0](*(v2 + a2[5]));
  v4 = (v2 + a2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  v7 = (v2 + a2[7]);
  v8 = *v7;
  v9 = v7[1];

  return sub_2283920B0();
}

uint64_t sub_228270D48(uint64_t a1, int *a2)
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)();
  MEMORY[0x22AAB70D0](*(v2 + a2[5]));
  v4 = (v2 + a2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_2283920B0();
  v7 = (v2 + a2[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228270DDC(uint64_t a1)
{
  v2 = sub_228272CE8(&qword_27D823E90, 255, type metadata accessor for MedicationSearchItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_228270E5C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier];
  v11 = *MEMORY[0x277D12788];
  v20 = sub_228392000();
  v21 = v12;

  MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283AF8A0);

  v13 = v21;
  *v10 = v20;
  v10[1] = v13;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item];
  v15 = type metadata accessor for MedicationSearchCell();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v19.receiver = v5;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22838F7B0();
  v17 = *MEMORY[0x277CDA138];
  sub_228392B00();

  return v16;
}

uint64_t sub_22827107C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v93 = *(v1 - 8);
  v94 = v1;
  v2 = *(v93 + 64);
  MEMORY[0x28223BE20](v1);
  v92 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2282733B4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v76 - v7;
  v89 = sub_2283913A0();
  v87 = *(v89 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282733B4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v4);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v76 - v12;
  v85 = sub_2283912A0();
  v84 = *(v85 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_228391220();
  v79 = *(v82 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x28223BE20](v82);
  v78 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_228390B70();
  v76 = *(v77 - 8);
  v17 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MedicationSearchItem.Source(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_228391590();
  v80 = *(v91 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x28223BE20](v91);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282733B4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, v4);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v76 - v29;
  v31 = type metadata accessor for MedicationSearchItem(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v95 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_228273898(v0 + v35, v97, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
  if (v98)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v36 = swift_dynamicCast();
    (*(v32 + 56))(v30, v36 ^ 1u, 1, v31);
    if ((*(v32 + 48))(v30, 1, v31) != 1)
    {
      v37 = v95;
      sub_228273478(v30, v95, type metadata accessor for MedicationSearchItem);
      sub_2283913C0();
      sub_228272C84(v37, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v76;
        v39 = v77;
        (*(v76 + 32))(v19, v23, v77);
        sub_228390B20();
        (*(v38 + 8))(v19, v39);
      }

      else
      {

        sub_22818DE38();
        v55 = *(v54 + 48);
        v56 = sub_228390C30();
        (*(*(v56 - 8) + 8))(v23 + v55, v56);
      }

      sub_2283914D0();
      sub_2283928D0();
      sub_2283914E0();
      v57 = v95;
      MedicationSearchItem.searchItemDisplayString.getter();
      sub_228391440();
      v58 = sub_228391450();
      sub_2283913F0();
      v58(v97, 0);
      sub_2282734E0(v57);
      sub_228391490();
      v59 = sub_2283914A0();
      sub_2283913F0();
      v59(v97, 0);
      v60 = v91;
      v98 = v91;
      v99 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
      v62 = v80;
      (*(v80 + 16))(boxed_opaque_existential_1, v26, v60);
      MEMORY[0x22AAB6400](v97);
      sub_2282733B4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      v63 = *(sub_2283912F0() - 8);
      v64 = *(v63 + 72);
      v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      *(swift_allocObject() + 16) = xmmword_228397F40;
      v66 = v79;
      v67 = v78;
      v68 = v82;
      (*(v79 + 104))(v78, *MEMORY[0x277D74A98], v82);
      v69 = sub_228391230();
      (*(*(v69 - 8) + 56))(v83, 1, 1, v69);
      v70 = v81;
      sub_228391290();
      sub_228391260();
      (*(v84 + 8))(v70, v85);
      (*(v66 + 8))(v67, v68);
      sub_2283928F0();
      v71 = v86;
      sub_228391390();
      v72 = [objc_opt_self() secondarySystemBackgroundColor];
      sub_228391370();
      v74 = v87;
      v73 = v88;
      v75 = v89;
      (*(v87 + 16))(v88, v71, v89);
      (*(v74 + 56))(v73, 0, 1, v75);
      MEMORY[0x22AAB6420](v73);
      (*(v74 + 8))(v71, v75);
      (*(v62 + 8))(v26, v91);
      return sub_228273818(v95, type metadata accessor for MedicationSearchItem);
    }
  }

  else
  {
    sub_228273418(v97, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    (*(v32 + 56))(v30, 1, 1, v31);
  }

  sub_228273418(v30, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88], sub_2282733B4);
  v40 = v92;
  sub_228391150();
  v41 = v0;
  v42 = v0;
  v43 = sub_2283911A0();
  v44 = sub_2283925C0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v96 = v46;
    *v45 = 136315394;
    v47 = sub_228393600();
    v49 = sub_2281C96FC(v47, v48, &v96);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    sub_228273898(v41 + v35, v97, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60);
    v50 = sub_228392020();
    v52 = sub_2281C96FC(v50, v51, &v96);

    *(v45 + 14) = v52;
    _os_log_impl(&dword_22816B000, v43, v44, "[%s] Expected a MedicationSearchItem, but received a %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v46, -1, -1);
    MEMORY[0x22AAB7B80](v45, -1, -1);
  }

  return (*(v93 + 8))(v40, v94);
}

uint64_t sub_228271D58(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_2283911B0();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &ObjectType - v11;
  sub_2282733B4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &ObjectType - v15;
  v17 = type metadata accessor for MedicationSearchItem(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &ObjectType - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_228273898(v3 + v22, &v47, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
  if (v49)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v23 = swift_dynamicCast();
    (*(v18 + 56))(v16, v23 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_228273478(v16, v21, type metadata accessor for MedicationSearchItem);
      if (a2)
      {
        v47 = 46;
        v48 = 0xE100000000000000;
        v46 = *&v21[*(v17 + 20)];
        v24 = sub_228393420();
        MEMORY[0x22AAB5C80](v24);

        v25 = v47;
        v26 = v48;
        v47 = a1;
        v48 = a2;

        MEMORY[0x22AAB5C80](v25, v26);

        v27 = sub_228391FC0();

        [v3 setAccessibilityIdentifier_];
      }

      else
      {
        sub_228391150();
        v40 = sub_2283911A0();
        v41 = sub_2283925C0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_22816B000, v40, v41, "Unable to set automation identifiers as there is no base identifier.", v42, 2u);
          MEMORY[0x22AAB7B80](v42, -1, -1);
        }

        (*(v44 + 8))(v12, v45);
      }

      return sub_228273818(v21, type metadata accessor for MedicationSearchItem);
    }
  }

  else
  {
    sub_228273418(&v47, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_228273418(v16, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88], sub_2282733B4);
  sub_228391150();
  v28 = v3;
  v29 = sub_2283911A0();
  v30 = sub_2283925C0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 136315394;
    v33 = sub_228393600();
    v35 = sub_2281C96FC(v33, v34, &v46);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    sub_228273898(v3 + v22, &v47, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60);
    v36 = sub_228392020();
    v38 = sub_2281C96FC(v36, v37, &v46);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_22816B000, v29, v30, "[%s] Expected a MedicationSearchItem, but received a %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v32, -1, -1);
    MEMORY[0x22AAB7B80](v31, -1, -1);
  }

  return (*(v44 + 8))(v10, v45);
}

id sub_2282723A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationSearchCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228272444@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  return sub_228273898(v1 + v3, a1, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
}

uint64_t sub_2282724C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22827107C();
  v4 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  sub_228271D58(v6, v5);

  return sub_228273418(a1, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
}

uint64_t (*sub_2282725A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228272604;
}

uint64_t sub_228272604(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_22827107C();
    v6 = (v5 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];

    sub_228271D58(v7, v8);
  }

  return result;
}

uint64_t sub_2282726C4()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_228272720(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_228272784())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390B70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228390C30();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v47 - v13;
  v14 = type metadata accessor for MedicationSearchItem.Source(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v47 - v19);
  sub_2282737B4();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v25[*(v23 + 56)];
  sub_228272C84(a1, v25);
  sub_228272C84(a2, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_228272C84(v25, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v8, v26, v4);
      v27 = sub_228390B60();
      v28 = *(v5 + 8);
      v28(v8, v4);
      v28(v18, v4);
      v29 = type metadata accessor for MedicationSearchItem.Source;
      goto LABEL_8;
    }

    (*(v5 + 8))(v18, v4);
LABEL_7:
    v27 = 0;
    v29 = sub_2282737B4;
    goto LABEL_8;
  }

  sub_228272C84(v25, v20);
  v30 = *v20;
  sub_22818DE38();
  v32 = *(v31 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v49 + 8))(v20 + v32, v50);

    goto LABEL_7;
  }

  v34 = *v26;
  v36 = v48;
  v35 = v49;
  v37 = *(v49 + 32);
  v38 = v20 + v32;
  v39 = v50;
  v37(v48, v38, v50);
  v40 = v26 + v32;
  v41 = v47;
  v37(v47, v40, v39);
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v42 = sub_228392C60();

  if (v42)
  {
    v43 = sub_228390C20();
    v44 = v41;
    v27 = v43;
    v45 = *(v35 + 8);
    v45(v44, v39);
    v45(v36, v39);
  }

  else
  {
    v46 = *(v35 + 8);
    v46(v41, v39);
    v46(v36, v39);
    v27 = 0;
  }

  v29 = type metadata accessor for MedicationSearchItem.Source;
LABEL_8:
  sub_228273818(v25, v29);
  return v27 & 1;
}

uint64_t sub_228272C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228272CE8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s19HealthMedicationsUI20MedicationSearchItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MedicationSearchItem(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v7 != *v8 || v6 != v8[1])
  {
    v10 = v4;
    v11 = sub_228393460();
    v4 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t sub_228272F18()
{
  result = type metadata accessor for MedicationSearchItem.Source(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_228272F98()
{
  sub_22818DE38();
  if (v0 <= 0x3F)
  {
    sub_228390B70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22827300C(void *a1)
{
  sub_2282733B4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for MedicationSearchItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = a1;
  sub_22817A958(0, &qword_27D8264C8, 0x277D75D28);
  sub_2281810DC(0, &qword_27D8264D0);
  v12 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    return sub_228273418(&v18, &unk_27D8264D8, &qword_27D8264D0, &protocol descriptor for MedicationSelectionHandler, sub_228181084);
  }

  sub_22816DFFC(&v18, v21);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_228273898(v1 + v13, &v18, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
  if (!*(&v19 + 1))
  {
    sub_228273418(&v18, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v14 = swift_dynamicCast();
  (*(v8 + 56))(v6, v14 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_7:
    sub_228273418(v6, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88], sub_2282733B4);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  sub_228273478(v6, v11, type metadata accessor for MedicationSearchItem);
  v15 = *__swift_project_boxed_opaque_existential_0(v21, v21[3]);
  sub_2282F9010(v11);
  sub_228273818(v11, type metadata accessor for MedicationSearchItem);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

void sub_2282733B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228273418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_228273478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2282734E0(uint64_t a1)
{
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MedicationSearchItem.Source(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_22818DE38();
    v14 = *(v13 + 48);
    v15 = sub_228390C30();
    (*(*(v15 - 8) + 8))(v10 + v14, v15);
    goto LABEL_5;
  }

  (*(v3 + 32))(v6, v10, v2);
  v11 = sub_228390B20();
  (*(v3 + 8))(v6, v2);
  if (v11)
  {
LABEL_5:
    sub_2282700F8();
    v16 = type metadata accessor for MedicationSearchItem(0);
    v17 = sub_228272CE8(&qword_27D826480, 255, type metadata accessor for MedicationSearchItem);
    MEMORY[0x22AAB4600](v16, v17);
    v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_228391FC0();

    type metadata accessor for Key(0);
    sub_228272CE8(&qword_280DDBA40, 255, type metadata accessor for Key);
    v20 = sub_228391F10();

    v12 = [v18 initWithString:v19 attributes:v20];

    return v12;
  }

  return 0;
}

void sub_2282737B4()
{
  if (!qword_27D8264E0)
  {
    type metadata accessor for MedicationSearchItem.Source(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8264E0);
    }
  }
}

uint64_t sub_228273818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228273898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

id InteractionSummaryOverviewViewController.__allocating_init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[qword_27D8264F0] = 0;
  *&v11[qword_27D8264F8] = 0;
  *&v11[qword_27D826500] = 0;
  v12 = &v11[qword_27D826508];
  v13 = *MEMORY[0x277D12788];
  v21 = sub_228392000();
  v22 = v14;

  MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

  v15 = v22;
  *v12 = v21;
  v12[1] = v15;
  *&v11[qword_27D826510] = a1;
  *&v11[qword_27D826518] = a2;
  *&v11[qword_27D826520] = a3;
  *&v11[qword_27D826528] = a4;
  *&v11[qword_27D826530] = a5;
  v20.receiver = v11;
  v20.super_class = v5;
  v16 = a1;

  v17 = a3;

  v18 = objc_msgSendSuper2(&v20, sel_initWithCollectionViewLayout_, 0);
  [v18 setModalPresentationStyle_];
  sub_228274A00();

  return v18;
}

id sub_228273AAC()
{
  v1 = qword_27D8264F0;
  v2 = *(v0 + qword_27D8264F0);
  if (v2)
  {
    v3 = *(v0 + qword_27D8264F0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228273B30()
{
  v1 = qword_27D826500;
  v2 = *(v0 + qword_27D826500);
  if (v2)
  {
    v3 = *(v0 + qword_27D826500);
  }

  else
  {
    v4 = sub_228273B94(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228273B94(uint64_t a1)
{
  v2 = sub_228392DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  sub_228392DA0();
  v10 = [objc_opt_self() configurationWithScale_];
  sub_22817A958(0, &qword_27D826550, 0x277D755D0);
  v11 = sub_228392890();
  v12 = [v10 configurationByApplyingConfiguration_];

  v13 = sub_228391FC0();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  v15 = v14;
  sub_228392D90();
  sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  (*(v3 + 16))(v7, v9, v2);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v16 = sub_228392DF0();
  [v16 setRole_];
  v17 = (a1 + qword_27D826508);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  v26[1] = v18;
  v26[2] = v19;
  v20 = v16;

  MEMORY[0x22AAB5C80](0x7475426F666E492ELL, 0xEB000000006E6F74);
  v21 = sub_228391FC0();

  [v20 setAccessibilityIdentifier_];

  v22 = qword_280DDCF18;
  v23 = v20;
  if (v22 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v24 = sub_228391FC0();

  [v23 setAccessibilityLabel_];

  (*(v3 + 8))(v9, v2);
  return v23;
}

void sub_228273F9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_228273FF0();
  }
}

void sub_228273FF0()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionFactorsInfoViewController();
  v27.receiver = objc_allocWithZone(v2);
  v27.super_class = v2;
  v3 = objc_msgSendSuper2(&v27, sel_initWithCollectionViewLayout_, 0);
  v4 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v3 setModalPresentationStyle_];
  v5 = v4;
  [v5 setModalPresentationStyle_];
  v6 = v5;
  if ((sub_2283904C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = [v1 traitCollection];
  sub_2283927D0();

  sub_2283928E0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v5 navigationItem];
  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    [v17 hk:v9 safeAreaAdjustedEdgeInsets:{v11, v13, v15}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v16 setLargeTitleInsets_];
    v6 = [v5 view];

    if (v6)
    {
      [v6 setDirectionalLayoutMargins_];
LABEL_5:

      [v1 presentViewController:v5 animated:1 completion:0];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22827420C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D826508);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_228274278()
{
  v1 = (v0 + qword_27D826508);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2282742D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D826508);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id InteractionSummaryOverviewViewController.init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v5[qword_27D8264F0] = 0;
  *&v5[qword_27D8264F8] = 0;
  *&v5[qword_27D826500] = 0;
  v11 = &v5[qword_27D826508];
  v12 = *MEMORY[0x277D12788];
  v20 = sub_228392000();
  v21 = v13;

  MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

  v14 = v21;
  *v11 = v20;
  v11[1] = v14;
  *&v5[qword_27D826510] = a1;
  *&v5[qword_27D826518] = a2;
  *&v5[qword_27D826520] = a3;
  *&v5[qword_27D826528] = a4;
  *&v5[qword_27D826530] = a5;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for InteractionSummaryOverviewViewController();
  v15 = a1;

  v16 = a3;

  v17 = objc_msgSendSuper2(&v19, sel_initWithCollectionViewLayout_, 0);
  [v17 setModalPresentationStyle_];
  sub_228274A00();

  return v17;
}

uint64_t sub_228274554()
{
  sub_228206298();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[qword_27D826510];
  v6 = *&v0[qword_27D826518];
  v7 = *&v0[qword_27D826520];
  v8 = *&v0[qword_27D826528];
  v24 = *&v0[qword_27D826530];
  v9 = type metadata accessor for InteractionSummaryOverviewDataSourceProvider();
  v10 = swift_allocObject();
  sub_228390890();
  v11 = v5;

  v12 = v7;

  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  v13 = sub_2283907E0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_228390700();
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v12;
  v10[5] = v8;
  v10[6] = v24;
  v10[7] = v16;
  v27 = v9;
  v28 = sub_228274C40();
  v26 = v10;
  sub_2283904B0();
  v17 = type metadata accessor for InteractionSummaryOverviewViewController();
  v25.receiver = v0;
  v25.super_class = v17;
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v18 = sub_2283922D0();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_2283922A0();
  v19 = v0;
  v20 = sub_228392290();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_2281DC568(0, 0, v4, &unk_22839FEC8, v21);
}

void sub_2282747C0(void *a1)
{
  v1 = a1;
  sub_228274554();
}

void sub_228274808(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391310();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22838FB90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v10 + 104))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D10E68]);
  v11 = a1;
  sub_2283926F0();
  sub_228391300();
  sub_228392700();
  v12 = type metadata accessor for InteractionSummaryOverviewViewController();
  v13.receiver = v11;
  v13.super_class = v12;
  objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a3);
}

uint64_t sub_228274984(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_228392F90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_22838F900();
  sub_22838F8F0();

  return sub_2281AC998(v7);
}

void sub_228274A00()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 navigationItem];
  v3 = sub_228273B30();
  [v2 _setLargeTitleAccessoryView_alignToBaseline_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  [v0 setTitle_];

  v5 = [v0 navigationItem];
  v6 = [v5 backBarButtonItem];

  if (v6)
  {
    v7 = &v0[qword_27D826508];
    swift_beginAccess();
    v9 = *v7;
    v10 = *(v7 + 1);

    MEMORY[0x22AAB5C80](0x7475426B6361422ELL, 0xEB000000006E6F74);
    v8 = sub_228391FC0();

    [v6 setAccessibilityIdentifier_];
  }
}

uint64_t type metadata accessor for InteractionSummaryOverviewViewController()
{
  result = qword_27D826540;
  if (!qword_27D826540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_228274C40()
{
  result = qword_27D826538;
  if (!qword_27D826538)
  {
    type metadata accessor for InteractionSummaryOverviewDataSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826538);
  }

  return result;
}

uint64_t sub_228274C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_2283911B0();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_2283922A0();
  v4[26] = sub_228392290();
  v9 = sub_228392250();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x2822009F8](sub_228274D98, v9, v8);
}

uint64_t sub_228274D98()
{
  v26 = v0;
  v1 = v0[25];
  v2 = v0[21];
  sub_228391150();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();

  if (os_log_type_enabled(v4, v5))
  {
    v24 = v0[25];
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136446210;
    v0[20] = v8;
    type metadata accessor for InteractionSummaryOverviewViewController();
    v11 = v8;
    v12 = sub_228392040();
    v14 = sub_2281C96FC(v12, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s] Marking interaction shard as required during viewing DDI overview", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    v15 = *(v7 + 8);
    v15(v24, v6);
  }

  else
  {
    v16 = v0[25];
    v17 = v0[22];
    v18 = v0[23];

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v0[29] = v15;
  v19 = v0[21];
  v20 = sub_228273AAC();
  v0[30] = v20;
  v0[2] = v0;
  v0[3] = sub_228275010;
  v21 = swift_continuation_init();
  sub_2281E0600();
  v0[17] = v22;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2282B4368;
  v0[13] = &block_descriptor_13;
  v0[14] = v21;
  [v20 markInteractionsShardAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_228275010()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = sub_228275140;
  }

  else
  {
    v6 = sub_2281DED84;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_228275140()
{
  v35 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);

  swift_willThrow();

  sub_228391150();
  v6 = v5;
  v7 = v1;
  v8 = sub_2283911A0();
  v9 = sub_2283925C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 248);
    v11 = *(v0 + 184);
    v32 = *(v0 + 192);
    v33 = *(v0 + 232);
    v12 = *(v0 + 168);
    v31 = *(v0 + 176);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136446466;
    *(v0 + 144) = v12;
    type metadata accessor for InteractionSummaryOverviewViewController();
    v15 = v12;
    v16 = sub_228392040();
    v18 = sub_2281C96FC(v16, v17, v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    *(v0 + 152) = v10;
    v19 = v10;
    sub_22818217C(0, &qword_280DDB860);
    v20 = sub_228392020();
    v22 = sub_2281C96FC(v20, v21, v34);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_22816B000, v8, v9, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v14, -1, -1);
    MEMORY[0x22AAB7B80](v13, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v23 = *(v0 + 232);
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v26 = *(v0 + 176);

    v23(v24, v26);
  }

  v28 = *(v0 + 192);
  v27 = *(v0 + 200);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2282753C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_228274C98(a1, v4, v5, v6);
}

uint64_t sub_228275478(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10);

  return (*(v6 + 8))(v9, v5);
}

id InteractionSummaryOverviewViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_228275648()
{
  v1 = *(v0 + qword_27D826518);

  v2 = *(v0 + qword_27D826528);

  v3 = *(v0 + qword_27D826508 + 8);
}

id InteractionSummaryOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSummaryOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228275724(uint64_t a1)
{
  v2 = *(a1 + qword_27D826518);

  v3 = *(a1 + qword_27D826528);

  v4 = *(a1 + qword_27D826508 + 8);
}

uint64_t sub_2282757D4(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  _s19HealthMedicationsUI0B10TapToRadarC16drugInteractions14viewControllerySo06UIViewJ0C_tFZ_0(v2);

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

Swift::Void __swiftcall InteractionSummaryOverviewViewController.viewControllerWillEnterAdaptiveModal()()
{
  v1 = v0;
  v2 = sub_2283902A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v8 = sub_228392640();
  [v7 setRightBarButtonItem_];

  sub_228390290();
  LOBYTE(v8) = sub_228390280();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v9 = [v1 navigationItem];
    v10 = sub_228391FC0();
    v11 = [objc_opt_self() systemImageNamed_];

    v12 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v11 style:0 target:v1 action:sel_tapToRadarButtonTappedWithSender_];
    [v9 setLeftBarButtonItem_];
  }

  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 navigationBar];

    [v15 setPrefersLargeTitles_];
  }

  v16 = [v1 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    sub_2283928D0();
    [v18 setDirectionalLayoutMargins_];
  }
}

void sub_228275B6C(void *a1)
{
  v1 = a1;
  InteractionSummaryOverviewViewController.viewControllerWillEnterAdaptiveModal()();
}