uint64_t sub_24B9168A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for FocusConfigurationAction(0);
  v4[3] = swift_task_alloc();
  sub_24BAAA1BC();
  v4[4] = sub_24BAAA1AC();
  v6 = sub_24BAAA17C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_24B916964, v6, v5);
}

uint64_t sub_24B916964()
{
  v1 = v0[2];
  v2 = *v1;
  v0[7] = *v1;
  if (v2)
  {
    type metadata accessor for FocusAppConfigurationDetailView(0);

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    MEMORY[0x24C24FC10](v3);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_24B916AC4;
    v5 = v0[3];

    return sub_24B987E88(v5);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9188A4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

    return sub_24BAA86DC();
  }
}

uint64_t sub_24B916AC4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_24B919000(v2, type metadata accessor for FocusConfigurationAction);
  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B916C38, v4, v3);
}

uint64_t sub_24B916C38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B916CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for FocusConfigurationAction(0);
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  sub_24BAAA1BC();
  v4[6] = sub_24BAAA1AC();
  v6 = sub_24BAAA17C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_24B916D74, v6, v5);
}

uint64_t sub_24B916D74()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *(v0 + 72) = *v1;
  if (v2)
  {
    *(v0 + 104) = *(type metadata accessor for FocusAppConfigurationDetailView(0) + 28);

    *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    MEMORY[0x24C24FC10]();
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_24B916EF4;
    v4 = *(v0 + 40);

    return (sub_24B9A0694)(v4);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9188A4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

    return sub_24BAA86DC();
  }
}

uint64_t sub_24B916EF4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 96) = a1;

  sub_24B919000(v3, type metadata accessor for FocusConfigurationAction);
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_24B917070, v5, v4);
}

uint64_t sub_24B917070()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[3];
  v3 = v0[4];

  v5 = v1;
  MEMORY[0x24C24FC10](v2);
  v6 = *(v4 + 44);
  v7 = *(v3 + v6);
  if (v1)
  {
    if (v7 && v0[12] == v7)
    {

      goto LABEL_7;
    }
  }

  else if (!v7)
  {
    goto LABEL_7;
  }

  *(v3 + v6) = v0[12];
LABEL_7:
  sub_24BAA9B6C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_24B9172F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9188A4(&qword_27F0646E0, type metadata accessor for FocusAppConfigurationDetailView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24B917384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9188A4(&qword_27F0646E0, type metadata accessor for FocusAppConfigurationDetailView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24B917418()
{
  sub_24B9188A4(&qword_27F0646E0, type metadata accessor for FocusAppConfigurationDetailView);
  sub_24BAA903C();
  __break(1u);
}

id sub_24B91747C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B9190AC(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusAppConfigurationDetailView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B91927C(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for FocusAppConfigurationDetailView);
  v8 = type metadata accessor for FocusAppConfigurationDetailView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV15FocusSettingsUI31FocusAppConfigurationDetailView11Coordinator_updateConfigurationHandler];
  *v10 = sub_24B918AF0;
  v10[1] = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_24B9175C4(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v39 = type metadata accessor for FocusSystemConfigurationAction(0);
  v3 = MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  v10 = objc_allocWithZone(MEMORY[0x277D7D758]);
  v11 = sub_24BAA9FDC();
  v12 = sub_24BAA9FDC();

  v13 = [v10 initWithIdentifier:v11 localizedTitle:v12 isDestructive:1];

  type metadata accessor for FocusSystemConfigurationDetailView(0);
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
  sub_24BAA9B7C();

  v15 = v46;
  v43[1] = v44;
  v43[2] = v45;
  v43[3] = v46;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064720);
  MEMORY[0x24C24FC10](v43, v16);
  v41 = v43[0];

  MEMORY[0x24C24FC10](v14);
  v17 = v39;
  v18 = v9[*(v39 + 20)];
  sub_24B919000(v9, type metadata accessor for FocusSystemConfigurationAction);
  if (v18 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24BAAE690;
    *(v19 + 32) = v13;
    v20 = v13;
  }

  v21 = v13;
  MEMORY[0x24C24FC10](v14);
  v22 = v7[*(v17 + 20)];
  sub_24B919000(v7, type metadata accessor for FocusSystemConfigurationAction);
  v23 = v40;
  MEMORY[0x24C24FC10](v14);
  v24 = *(v23 + *(v17 + 24));
  sub_24B919000(v23, type metadata accessor for FocusSystemConfigurationAction);
  if (*v2)
  {

    sub_24B984444();
    v25 = sub_24B8D7188();
    if (v25 && (v26 = v25, v27 = [v25 mode], v26, v28 = objc_msgSend(v27, sel_tintColorName), v27, v28))
    {
      sub_24BAAA01C();
    }

    else
    {
    }

    v29 = sub_24BAA9FDC();

    v30 = [objc_opt_self() colorWithFocusColorName_];

    v31 = objc_allocWithZone(MEMORY[0x277D7D760]);
    sub_24B919060();
    v32 = sub_24BAAA11C();

    v33 = v41;
    v34 = [v31 initWithContextualAction:v41 footerButtons:v32 showsEnablementButton:v22 isEnabled:v24 mastheadTintColor:v30];

    v35 = [objc_allocWithZone(MEMORY[0x277D7D770]) initWithContextualActionOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064728);
    sub_24BAA906C();
    v36 = v44;
    [v35 setDelegate_];

    return v35;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9188A4(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B917B38(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FocusSystemConfigurationAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for FocusSystemConfigurationDetailView(0);
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    MEMORY[0x24C24FC10]();
    v12 = *(v8 + 32);

    *&v10[v12] = v11;
    sub_24BAA9B6C();
  }

  if (a2 != 2)
  {
    type metadata accessor for FocusSystemConfigurationDetailView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    MEMORY[0x24C24FC10]();
    v10[*(v8 + 24)] = a2 & 1;
    sub_24BAA9B6C();
  }

  v13 = (a4 + *(type metadata accessor for FocusSystemConfigurationDetailView(0) + 28));
  v14 = v13[1];
  v15 = *(v13 + 48);
  v21 = *v13;
  v22 = v14;
  v16 = *(v13 + 2);
  v23 = *(v13 + 1);
  v24 = v16;
  v25 = v15;
  v17 = *(a3 + 16);
  v19[0] = *a3;
  v19[1] = v17;
  v20 = *(a3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0646F0);
  return sub_24BAA9B6C();
}

id sub_24B917DF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24B917E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9188A4(&qword_27F064718, type metadata accessor for FocusSystemConfigurationDetailView);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24B917EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B9188A4(&qword_27F064718, type metadata accessor for FocusSystemConfigurationDetailView);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24B917F8C()
{
  sub_24B9188A4(&qword_27F064718, type metadata accessor for FocusSystemConfigurationDetailView);
  sub_24BAA903C();
  __break(1u);
}

id sub_24B917FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24B9190AC(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusSystemConfigurationDetailView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24B91927C(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for FocusSystemConfigurationDetailView);
  v8 = type metadata accessor for FocusSystemConfigurationDetailView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV15FocusSettingsUI34FocusSystemConfigurationDetailView11Coordinator_updateConfigurationHandler];
  *v10 = sub_24B9192E4;
  v10[1] = v7;
  v12.receiver = v9;
  v12.super_class = v8;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a2 = result;
  return result;
}

void sub_24B918158(void *a1)
{
  v7 = [a1 contextualAction];
  if (v7)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + OBJC_IVAR____TtCV15FocusSettingsUI34FocusSystemConfigurationDetailView11Coordinator_updateConfigurationHandler);
      v6 = v7;
      memset(v8, 0, sizeof(v8));
      v9 = 1;
      v5(v4, [a1 isEnabled], v8);
    }
  }
}

uint64_t sub_24B918260(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B918330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B918400()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B918808(319, &unk_27F0646A0, type metadata accessor for FocusConfigurationAction);
    if (v1 <= 0x3F)
    {
      sub_24B9184E0();
      if (v2 <= 0x3F)
      {
        sub_24B918530();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B9184E0()
{
  if (!qword_27F063BA8)
  {
    v0 = sub_24BAA9BBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063BA8);
    }
  }
}

void sub_24B918530()
{
  if (!qword_27F0646B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063E98);
    v0 = sub_24BAA9BBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0646B0);
    }
  }
}

uint64_t sub_24B9185A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24B918678(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B918748()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B918808(319, &qword_27F063E00, type metadata accessor for FocusSystemConfigurationAction);
    if (v1 <= 0x3F)
    {
      sub_24B918530();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B918808(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24BAA9BBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B9188A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B918940()
{
  v1 = (type metadata accessor for FocusAppConfigurationDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670) + 32);
  v7 = sub_24BAA7E4C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for FocusConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_24B918AF0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FocusAppConfigurationDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_24B915F14(a1, a2, v6);
}

uint64_t sub_24B918B74(uint64_t a1)
{
  v4 = *(type metadata accessor for FocusAppConfigurationDetailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B919380;

  return sub_24B9168A0(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_24Tm()
{
  v1 = (type metadata accessor for FocusAppConfigurationDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[9];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064670) + 32);
  v7 = sub_24BAA7E4C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for FocusConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B918E1C(uint64_t a1)
{
  v4 = *(type metadata accessor for FocusAppConfigurationDetailView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B918F0C;

  return sub_24B916CA0(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B918F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B919000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B919060()
{
  result = qword_27F064700;
  if (!qword_27F064700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F064700);
  }

  return result;
}

uint64_t sub_24B9190AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B919114()
{
  v1 = (type metadata accessor for FocusSystemConfigurationDetailView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063DB8) + 32);
  v7 = sub_24BAA7E4C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for FocusSystemConfigurationAction(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B91927C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9192E4(void *a1, char a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FocusSystemConfigurationDetailView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24B917B38(a1, a2, a3, v8);
}

uint64_t sub_24B9193A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Trigger.Schedule(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24B919550(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Trigger.Schedule(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for ScheduleTriggerRowView()
{
  result = qword_27F064730;
  if (!qword_27F064730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B919728()
{
  type metadata accessor for Trigger.Schedule(319);
  if (v0 <= 0x3F)
  {
    sub_24B919814(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
    if (v1 <= 0x3F)
    {
      sub_24B8F47B4();
      if (v2 <= 0x3F)
      {
        sub_24B919814(319, &qword_27F063FB0, MEMORY[0x277CC99E8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B919814(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24BAA82EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B919884@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ScheduleTriggerRowView();
  sub_24B8F3208(v1 + *(v10 + 20), v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24B919A8C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064740);
  MEMORY[0x28223BE20](v43);
  v42 = &v40 - v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064748);
  MEMORY[0x28223BE20](v51);
  v44 = &v40 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064750);
  MEMORY[0x28223BE20](v49);
  v50 = &v40 - v4;
  v5 = sub_24BAA8FBC();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064758);
  MEMORY[0x28223BE20](v41);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064760);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064768);
  MEMORY[0x28223BE20](v48);
  v13 = &v40 - v12;
  v14 = sub_24BAA8B9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1;
  sub_24B919884(v17);
  v19 = sub_24BAA8B8C();
  (*(v15 + 8))(v17, v14);
  if (v19)
  {
    *v8 = sub_24BAA8BDC();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647B0);
    sub_24B91A404(v18, &v8[*(v20 + 44)]);
    v21 = v45;
    sub_24BAA8F9C();
    sub_24B8F384C(&qword_27F0647A0, &qword_27F064758);
    sub_24BAA95FC();
    (*(v46 + 8))(v21, v47);
    sub_24B8F35E4(v8, &qword_27F064758);
    v22 = sub_24BAA90AC();
    sub_24BAA828C();
    v23 = &v11[*(v9 + 36)];
    *v23 = v22;
    *(v23 + 1) = v24;
    *(v23 + 2) = v25;
    *(v23 + 3) = v26;
    *(v23 + 4) = v27;
    v23[40] = 0;
    sub_24B91B708();
    sub_24BAA94DC();
    sub_24B8F35E4(v11, &qword_27F064760);
    v28 = &qword_27F064768;
    sub_24B8F3208(v13, v50, &qword_27F064768);
    swift_storeEnumTagMultiPayload();
    sub_24B91B84C(&qword_27F064790, &qword_27F064768, &unk_24BAAF250, sub_24B91B708);
    sub_24B91B84C(&qword_27F0647A8, &qword_27F064748, &unk_24BAAF230, sub_24B91B60C);
    sub_24BAA8D0C();
    v29 = v13;
  }

  else
  {
    v30 = sub_24BAA8AAC();
    v55 = 0;
    sub_24B91AE10(v18, v72);
    v68 = v72[12];
    v69 = v72[13];
    v64 = v72[8];
    v65 = v72[9];
    v66 = v72[10];
    v67 = v72[11];
    v60 = v72[4];
    v61 = v72[5];
    v62 = v72[6];
    v63 = v72[7];
    v56 = v72[0];
    v57 = v72[1];
    v58 = v72[2];
    v59 = v72[3];
    v71[11] = v72[11];
    v71[12] = v72[12];
    v71[13] = v72[13];
    v71[14] = v72[14];
    v71[7] = v72[7];
    v71[8] = v72[8];
    v71[9] = v72[9];
    v71[10] = v72[10];
    v71[3] = v72[3];
    v71[4] = v72[4];
    v71[5] = v72[5];
    v71[6] = v72[6];
    v70 = v72[14];
    v71[0] = v72[0];
    v71[1] = v72[1];
    v71[2] = v72[2];
    sub_24B8F3208(&v56, v53, &qword_27F064770);
    sub_24B8F35E4(v71, &qword_27F064770);
    *&v54[183] = v67;
    *&v54[199] = v68;
    *&v54[215] = v69;
    *&v54[231] = v70;
    *&v54[119] = v63;
    *&v54[135] = v64;
    *&v54[151] = v65;
    *&v54[167] = v66;
    *&v54[55] = v59;
    *&v54[71] = v60;
    *&v54[87] = v61;
    *&v54[103] = v62;
    *&v54[7] = v56;
    *&v54[23] = v57;
    *&v54[39] = v58;
    *(&v53[26] + 1) = *&v54[192];
    *(&v53[28] + 1) = *&v54[208];
    *(&v53[30] + 1) = *&v54[224];
    *(&v53[18] + 1) = *&v54[128];
    *(&v53[20] + 1) = *&v54[144];
    *(&v53[22] + 1) = *&v54[160];
    *(&v53[24] + 1) = *&v54[176];
    *(&v53[10] + 1) = *&v54[64];
    *(&v53[12] + 1) = *&v54[80];
    *(&v53[14] + 1) = *&v54[96];
    *(&v53[16] + 1) = *&v54[112];
    *(&v53[2] + 1) = *v54;
    *(&v53[4] + 1) = *&v54[16];
    *(&v53[6] + 1) = *&v54[32];
    v53[0] = v30;
    v53[1] = 0;
    LOBYTE(v53[2]) = v55;
    v53[32] = *(&v70 + 1);
    *(&v53[8] + 1) = *&v54[48];
    v31 = v45;
    sub_24BAA8F9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064778);
    sub_24B8F384C(&qword_27F064780, &qword_27F064778);
    v32 = v42;
    sub_24BAA95FC();
    (*(v46 + 8))(v31, v47);
    memcpy(v72, v53, 0x108uLL);
    sub_24B8F35E4(v72, &qword_27F064778);
    LOBYTE(v30) = sub_24BAA911C();
    sub_24BAA828C();
    v33 = v32 + *(v43 + 36);
    *v33 = v30;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    *(v33 + 24) = v36;
    *(v33 + 32) = v37;
    *(v33 + 40) = 0;
    sub_24B91B60C();
    v38 = v44;
    sub_24BAA94DC();
    sub_24B8F35E4(v32, &qword_27F064740);
    v28 = &qword_27F064748;
    sub_24B8F3208(v38, v50, &qword_27F064748);
    swift_storeEnumTagMultiPayload();
    sub_24B91B84C(&qword_27F064790, &qword_27F064768, &unk_24BAAF250, sub_24B91B708);
    sub_24B91B84C(&qword_27F0647A8, &qword_27F064748, &unk_24BAAF230, sub_24B91B60C);
    sub_24BAA8D0C();
    v29 = v38;
  }

  return sub_24B8F35E4(v29, v28);
}

uint64_t sub_24B91A404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8 - 8];
  *v9 = sub_24BAA8AAC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647C0);
  sub_24B91A6C0(a1, &v9[*(v10 + 44)]);
  v23 = sub_24BAA8AAC();
  LOBYTE(v29) = 1;
  sub_24B91ABB4(a1, v25);
  *&v24[23] = v25[1];
  *&v24[39] = v25[2];
  *&v24[55] = v25[3];
  v24[71] = v26;
  *&v24[7] = v25[0];
  v11 = v29;
  LOBYTE(v27[0]) = *(a1 + *(type metadata accessor for Trigger.Schedule(0) + 28));
  sub_24BAA99EC();
  v12 = v29;
  v13 = v30;
  sub_24B8F3208(v9, v7, &qword_27F0647B8);
  sub_24B8F3208(v7, a2, &qword_27F0647B8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647C8);
  v15 = (a2 + *(v14 + 48));
  v16 = v23;
  v27[0] = v23;
  v27[1] = 0;
  LOBYTE(v28[0]) = v11;
  *(v28 + 1) = *v24;
  *(&v28[1] + 1) = *&v24[16];
  *(&v28[2] + 1) = *&v24[32];
  *(&v28[3] + 1) = *&v24[48];
  *(&v28[4] + 1) = *&v24[64];
  v17 = v28[0];
  *v15 = v23;
  v15[1] = v17;
  v18 = v28[1];
  v19 = v28[2];
  v20 = v28[3];
  *(v15 + 73) = *(&v28[3] + 9);
  v15[3] = v19;
  v15[4] = v20;
  v15[2] = v18;
  v21 = a2 + *(v14 + 64);
  *v21 = v12;
  *(v21 + 8) = v13;
  sub_24B8F3208(v27, &v29, &qword_27F0647D0);

  sub_24B8F35E4(v9, &qword_27F0647B8);

  v29 = v16;
  v30 = 0;
  v31 = v11;
  v33 = *&v24[16];
  v34 = *&v24[32];
  v35 = *&v24[48];
  v36 = *&v24[64];
  v32 = *v24;
  sub_24B8F35E4(&v29, &qword_27F0647D0);
  return sub_24B8F35E4(v7, &qword_27F0647B8);
}

uint64_t sub_24B91A6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F38);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v56[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F40);
  MEMORY[0x28223BE20](v7);
  v9 = &v56[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F48);
  v11 = MEMORY[0x28223BE20](v10);
  v58 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v56[-v16];
  v18 = sub_24BAA991C();
  v19 = *(v4 + 44);
  *(v6 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  *v6 = v18;
  if (*(a1 + *(type metadata accessor for ScheduleTriggerRowView() + 24)))
  {

    v20 = sub_24B991A94();

    KeyPath = swift_getKeyPath();
    sub_24B90294C(v6, v9, &qword_27F063F38);
    v22 = &v9[*(v7 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    LOBYTE(v20) = sub_24BAA910C();
    sub_24BAA828C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_24B90294C(v9, v15, &qword_27F063F40);
    v31 = &v15[*(v10 + 36)];
    *v31 = v20;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    sub_24B90294C(v15, v17, &qword_27F063F48);
    v60 = sub_24B9280B8();
    v61 = v32;
    sub_24B8F5E3C();
    v33 = sub_24BAA93CC();
    v35 = v34;
    v37 = v36;
    sub_24BAA916C();
    v38 = sub_24BAA939C();
    v40 = v39;
    v42 = v41;

    sub_24B900910(v33, v35, v37 & 1);

    sub_24BAA988C();
    v43 = sub_24BAA933C();
    v45 = v44;
    v57 = v46;
    v48 = v47;

    sub_24B900910(v38, v40, v42 & 1);

    v49 = swift_getKeyPath();
    v50 = v58;
    sub_24B8F3208(v17, v58, &qword_27F063F48);
    v51 = v59;
    sub_24B8F3208(v50, v59, &qword_27F063F48);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0647D8);
    v53 = v51 + *(v52 + 48);
    *v53 = v43;
    *(v53 + 8) = v45;
    LOBYTE(v33) = v57 & 1;
    *(v53 + 16) = v57 & 1;
    *(v53 + 24) = v48;
    *(v53 + 32) = v49;
    *(v53 + 40) = 0;
    *(v53 + 48) = 1;
    v54 = v51 + *(v52 + 64);
    *v54 = 0;
    *(v54 + 8) = 1;
    sub_24B8F319C(v43, v45, v33);

    sub_24B8F35E4(v17, &qword_27F063F48);
    sub_24B900910(v43, v45, v33);

    return sub_24B8F35E4(v50, &qword_27F063F48);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B91ABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA7F2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for Trigger.Schedule(0) + 24));
  type metadata accessor for ScheduleTriggerRowView();
  sub_24BA8DA80(v7);
  v9 = sub_24B92DC74(v8, v7);
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v30 = v9;
  v31 = v11;
  sub_24B8F5E3C();
  v12 = sub_24BAA93CC();
  v14 = v13;
  LOBYTE(v7) = v15;
  sub_24BAA927C();
  v16 = sub_24BAA939C();
  v18 = v17;
  v20 = v19;

  sub_24B900910(v12, v14, v7 & 1);

  sub_24BAA989C();
  v21 = sub_24BAA933C();
  v23 = v22;
  LOBYTE(v5) = v24;
  v26 = v25;

  sub_24B900910(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v5) = v5 & 1;
  LOBYTE(v30) = v5;
  v33 = 1;
  v32 = 1;
  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = v5;
  *(a2 + 24) = v26;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  sub_24B8F319C(v21, v23, v5);

  sub_24B900910(v21, v23, v5);
}

uint64_t sub_24B91AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for ScheduleTriggerRowView() + 24)))
  {

    v4 = sub_24B991A94();

    if (v4)
    {
      v19 = v4;
    }

    else
    {
      v19 = sub_24BAA974C();
    }

    v18 = sub_24BAA910C();
    sub_24BAA828C();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v50 = 0;
    v13 = sub_24BAA8BDC();
    LOBYTE(v43[0]) = 1;
    sub_24B91B250(a1, &v41);
    v30 = *&v42[6];
    v31[0] = *&v42[8];
    *(v31 + 9) = *(&v42[9] + 1);
    v26 = v41;
    v27 = *v42;
    v28 = *&v42[2];
    v29 = *&v42[4];
    v32[0] = v41;
    v32[1] = *v42;
    v32[2] = *&v42[2];
    v32[3] = *&v42[4];
    v32[4] = *&v42[6];
    *v33 = *&v42[8];
    *&v33[9] = *(&v42[9] + 1);
    sub_24B8F3208(&v26, v39, &qword_27F0647E0);
    sub_24B8F35E4(v32, &qword_27F0647E0);
    *&v25[55] = v29;
    *&v25[71] = v30;
    *&v25[87] = v31[0];
    *&v25[96] = *(v31 + 9);
    *&v25[7] = v26;
    *&v25[23] = v27;
    *&v25[39] = v28;
    v14 = v43[0];
    LOBYTE(v39[0]) = *(a1 + *(type metadata accessor for Trigger.Schedule(0) + 28));
    sub_24BAA99EC();
    v15 = v41;
    v16 = *(&v41 + 1);
    *&v34 = 0x69662E6B636F6C63;
    *(&v34 + 1) = 0xEA00000000006C6CLL;
    *&v35 = v19;
    BYTE8(v35) = v18;
    *&v36 = v6;
    *(&v36 + 1) = v8;
    *&v37 = v10;
    *(&v37 + 1) = v12;
    v38 = 0;
    v24[0] = 0;
    v22 = v36;
    v23 = v37;
    v20 = v34;
    v21 = v35;
    v39[0] = v13;
    v39[1] = 0;
    v40[0] = v14;
    *&v40[33] = *&v25[32];
    *&v40[17] = *&v25[16];
    *&v40[1] = *v25;
    *&v40[97] = *&v25[96];
    *&v40[81] = *&v25[80];
    *&v40[65] = *&v25[64];
    *&v40[49] = *&v25[48];
    *&v24[8] = v13;
    *&v24[72] = *&v40[48];
    *&v24[56] = *&v40[32];
    *&v24[40] = *&v40[16];
    *&v24[24] = *v40;
    v24[136] = v25[111];
    *&v24[120] = *&v40[96];
    *&v24[104] = *&v40[80];
    *&v24[88] = *&v40[64];
    *(a2 + 160) = *&v24[96];
    *(a2 + 176) = *&v24[112];
    *(a2 + 192) = *&v24[128];
    *(a2 + 96) = *&v24[32];
    *(a2 + 112) = *&v24[48];
    *(a2 + 128) = *&v24[64];
    *(a2 + 144) = *&v24[80];
    *(a2 + 32) = v22;
    *(a2 + 48) = v23;
    *(a2 + 64) = *v24;
    *(a2 + 80) = *&v24[16];
    *a2 = v20;
    *(a2 + 16) = v21;
    *(a2 + 208) = 0;
    *(a2 + 216) = 1;
    *(a2 + 224) = v15;
    *(a2 + 232) = v16;
    sub_24B8F3208(&v34, &v41, &qword_27F0647E8);
    sub_24B8F3208(v39, &v41, &qword_27F0647F0);
    *(&v42[6] + 1) = *&v25[48];
    *(&v42[8] + 1) = *&v25[64];
    *(&v42[10] + 1) = *&v25[80];
    *(&v42[12] + 1) = *&v25[96];
    *(v42 + 1) = *v25;
    *(&v42[2] + 1) = *&v25[16];
    v41 = v13;
    LOBYTE(v42[0]) = v14;
    *(&v42[4] + 1) = *&v25[32];
    sub_24B8F35E4(&v41, &qword_27F0647F0);
    v43[0] = 0x69662E6B636F6C63;
    v43[1] = 0xEA00000000006C6CLL;
    v43[2] = v19;
    v44 = v18;
    v45 = v6;
    v46 = v8;
    v47 = v10;
    v48 = v12;
    v49 = 0;
    return sub_24B8F35E4(v43, &qword_27F0647E8);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B91B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v53 = sub_24BAA7F2C();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24B9280B8();
  v62 = v4;
  v49 = sub_24B8F5E3C();
  v5 = sub_24BAA93CC();
  v7 = v6;
  v9 = v8;
  sub_24BAA916C();
  v10 = sub_24BAA939C();
  v12 = v11;
  v14 = v13;

  sub_24B900910(v5, v7, v9 & 1);

  sub_24BAA988C();
  v15 = sub_24BAA933C();
  v54 = v16;
  v55 = v15;
  v52 = v17;
  v56 = v18;

  sub_24B900910(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v19 = *(v47 + *(type metadata accessor for Trigger.Schedule(0) + 24));
  type metadata accessor for ScheduleTriggerRowView();
  v20 = v48;
  sub_24BA8DA80(v48);
  v21 = sub_24B92DC74(v19, v20);
  v23 = v22;
  (*(v51 + 8))(v20, v53);
  v61 = v21;
  v62 = v23;
  v24 = sub_24BAA93CC();
  v26 = v25;
  v28 = v27;
  sub_24BAA927C();
  v29 = sub_24BAA939C();
  v31 = v30;
  v33 = v32;

  sub_24B900910(v24, v26, v28 & 1);

  sub_24BAA989C();
  v34 = sub_24BAA933C();
  v36 = v35;
  LOBYTE(v24) = v37;
  v53 = v38;

  sub_24B900910(v29, v31, v33 & 1);

  v39 = swift_getKeyPath();
  v40 = v52 & 1;
  LOBYTE(v61) = v52 & 1;
  v60 = v52 & 1;
  v59 = 1;
  LOBYTE(v24) = v24 & 1;
  v58 = v24;
  v57 = 1;
  v42 = v54;
  v41 = v55;
  *a2 = v55;
  *(a2 + 8) = v42;
  *(a2 + 16) = v40;
  v43 = KeyPath;
  *(a2 + 24) = v56;
  *(a2 + 32) = v43;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v34;
  *(a2 + 64) = v36;
  *(a2 + 72) = v24;
  *(a2 + 80) = v53;
  *(a2 + 88) = v39;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v44 = v41;
  sub_24B8F319C(v41, v42, v40);

  sub_24B8F319C(v34, v36, v24);

  sub_24B900910(v34, v36, v24);

  sub_24B900910(v44, v42, v61);
}

unint64_t sub_24B91B60C()
{
  result = qword_27F064788;
  if (!qword_27F064788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064778);
    sub_24B8F384C(&qword_27F064780, &qword_27F064778);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064788);
  }

  return result;
}

unint64_t sub_24B91B708()
{
  result = qword_27F064798;
  if (!qword_27F064798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064758);
    sub_24B8F384C(&qword_27F0647A0, &qword_27F064758);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064798);
  }

  return result;
}

uint64_t sub_24B91B804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B91B84C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24B91B804(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B91B91C()
{
  result = qword_27F0647F8;
  if (!qword_27F0647F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064800);
    sub_24B91B84C(&qword_27F064790, &qword_27F064768, &unk_24BAAF250, sub_24B91B708);
    sub_24B91B84C(&qword_27F0647A8, &qword_27F064748, &unk_24BAAF230, sub_24B91B60C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0647F8);
  }

  return result;
}

uint64_t sub_24B91BA00()
{
  v1 = v0;
  sub_24BAAA1BC();
  sub_24B91F948(v0, &v24);
  v2 = sub_24BAAA1AC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = *(v0 + 48);
  *(v3 + 64) = *(v0 + 32);
  *(v3 + 80) = v5;
  *(v3 + 96) = *(v0 + 64);
  v6 = *(v0 + 16);
  *(v3 + 32) = *v0;
  *(v3 + 48) = v6;
  sub_24B91F948(v0, &v24);
  v7 = sub_24BAAA1AC();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = *(v1 + 48);
  *(v8 + 64) = *(v1 + 32);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(v1 + 64);
  v10 = *(v1 + 16);
  *(v8 + 32) = *v1;
  *(v8 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648D0);
  sub_24BAA9B9C();
  v11 = v24;
  v12 = v25;
  v13 = v26;

  sub_24B91FA04(v12, *(&v12 + 1), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  sub_24BAA99EC();
  v14 = v24;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91FD98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *&v17 = v13;
  *(&v17 + 1) = sub_24B91BE9C;
  *&v18 = 0;
  BYTE8(v18) = 0;
  *(&v18 + 9) = *v23;
  HIDWORD(v18) = *&v23[3];
  *&v19 = sub_24B902B6C;
  *(&v19 + 1) = 0;
  v20[0] = 0;
  *&v20[4] = *&v22[3];
  *&v20[1] = *v22;
  *&v20[8] = v14;
  *&v20[24] = sub_24BAA86FC();
  v21 = v15;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B91FA44();
  sub_24B8F5E3C();
  sub_24BAA952C();

  sub_24B91FA98(v12, *(&v12 + 1), v13);

  v28 = v19;
  v29 = *v20;
  v30 = *&v20[16];
  v31 = v21;
  v24 = v11;
  v25 = v12;
  v26 = v17;
  v27 = v18;
  return sub_24B91FAD8(&v24);
}

double sub_24B91BD54@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E0);
  sub_24BAA99FC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_24B91BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_24B91FA04(*a1, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E0);
  sub_24BAA9A0C();
  return (*(a4 + 24))(v5, v7, v8);
}

uint64_t sub_24B91BE9C()
{
  if (qword_27F0630E0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F077020;
  type metadata accessor for FilteredAppSource();
  v1 = swift_allocObject();

  sub_24BAA817C();
  v2 = (v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache);
  *v2 = 0u;
  v2[1] = 0u;
  *(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_base) = v0;
  *(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_excludeWebApps) = 1;
  return v1;
}

__n128 sub_24B91BF7C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_24BAAA1BC();
  sub_24B91FC6C(v1, &v26);
  v4 = sub_24BAAA1AC();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = *(v1 + 80);
  *(v5 + 96) = *(v1 + 64);
  *(v5 + 112) = v7;
  *(v5 + 128) = *(v1 + 96);
  *(v5 + 144) = *(v1 + 112);
  v8 = *(v1 + 16);
  *(v5 + 32) = *v1;
  *(v5 + 48) = v8;
  v9 = *(v1 + 48);
  *(v5 + 64) = *(v1 + 32);
  *(v5 + 80) = v9;
  sub_24B91FC6C(v1, &v26);
  v10 = sub_24BAAA1AC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v6;
  v12 = *(v2 + 80);
  *(v11 + 96) = *(v2 + 64);
  *(v11 + 112) = v12;
  *(v11 + 128) = *(v2 + 96);
  *(v11 + 144) = *(v2 + 112);
  v13 = *(v2 + 16);
  *(v11 + 32) = *v2;
  *(v11 + 48) = v13;
  v14 = *(v2 + 48);
  *(v11 + 64) = *(v2 + 32);
  *(v11 + 80) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  sub_24BAA9B9C();
  v25 = v26;
  type metadata accessor for FilteredAppSource();
  sub_24B91FD98(&unk_27F065110, type metadata accessor for FilteredAppSource);
  v24 = v27;
  sub_24BAA82FC();
  v23 = sub_24B91C6C8();
  v15 = sub_24BAA84DC();
  v17 = v16;
  sub_24BAA99EC();
  v18 = v26;
  v19 = v27.n128_u64[0];
  type metadata accessor for AppIconCache();
  sub_24B91FD98(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v20 = sub_24BAA82FC();
  v21 = sub_24BAA813C();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v25;
  result = v24;
  *(a1 + 24) = v24;
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v23;
  *(a1 + 56) = 0;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = v21;
  *(a1 + 88) = v20;
  return result;
}

uint64_t sub_24B91C238(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v32 = *(a4 + 11);
  *&v35 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
  sub_24BAA9A0C();
  if (v5 >> 62)
  {
    if (sub_24BAAA52C())
    {
LABEL_3:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C2506E0](0, v5);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v5 = *(v5 + 32);
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = objc_allocWithZone(MEMORY[0x277D05998]);
        swift_unknownObjectRetain();
        v9 = [v8 initWithApplicationIdentifier:v7 enabledSetting:2];
        v10 = [v9 isEnabled];
        v11 = [v9 applicationIdentifier];
        v12 = *a4;
        v13 = a4[1];
        v33 = *(a4 + 1);
        v34 = a4[4];
        v37 = v12;
        v35 = v33;
        v36 = v34;
        *&v32 = v12;
        *(&v32 + 1) = v13;
        v29 = v11;
        v30 = v10;
        v31 = v9;
        sub_24B90BFFC(&v37, v28);

        sub_24B8F3208(&v35, v28, &qword_27F0648D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648F0);
        sub_24BAA9B6C();

        swift_unknownObjectRelease();
        sub_24B90BF84(&v37);

        return sub_24B8F35E4(&v35, &qword_27F0648D0);
      }

      if (qword_27F0630F0 == -1)
      {
LABEL_9:
        v14 = sub_24BAA812C();
        __swift_project_value_buffer(v14, qword_27F077038);

        v15 = sub_24BAA810C();
        v16 = sub_24BAAA2AC();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v32 = v18;
          *v17 = 136446466;
          *(v17 + 4) = sub_24B8E49D4(0xD000000000000014, 0x800000024BAAF700, &v32);
          *(v17 + 12) = 2080;
          v19 = [*(v5 + 16) description];
          v20 = sub_24BAAA01C();
          v22 = v21;

          v23 = sub_24B8E49D4(v20, v22, &v32);

          *(v17 + 14) = v23;
          _os_log_impl(&dword_24B8D3000, v15, v16, "[%{public}s] App '%s' is not correct type to show trigger", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C251390](v18, -1, -1);
          MEMORY[0x24C251390](v17, -1, -1);
        }

        v24 = *a4;
        v25 = a4[1];
        v33 = *(a4 + 1);
        v34 = a4[4];
        v37 = v24;
        v35 = v33;
        v36 = v34;
        *&v32 = v24;
        *(&v32 + 1) = v25;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        sub_24B90BFFC(&v37, v28);

        sub_24B8F3208(&v35, v28, &qword_27F0648D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648F0);
        sub_24BAA9B6C();

        sub_24B90BF84(&v37);

        return sub_24B8F35E4(&v35, &qword_27F0648D0);
      }

LABEL_17:
      swift_once();
      goto LABEL_9;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v27 = *(a4 + 1);
  v32 = *a4;
  v33 = v27;
  v34 = a4[4];
  v35 = 0uLL;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648F0);
  return sub_24BAA9B6C();
}

uint64_t sub_24B91C6C8()
{
  if (*(v0 + 104))
  {
    v1 = 0;

    v2 = sub_24B984A94();

    type metadata accessor for FilteredAppSource();
    sub_24B91FD98(&unk_27F065110, type metadata accessor for FilteredAppSource);
    v3 = sub_24BAA82FC();
    sub_24BA42F98();
    v4 = MEMORY[0x277D84F90];
    if (*(v3 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8))
    {
      v44 = MEMORY[0x277D84F90];

      sub_24BA935E8(v5);

      v6 = v44;
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
    }

    v44 = v4;
    if (v6 >> 62)
    {
      goto LABEL_35;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v7)
    {
      v36 = v1;
      v37 = v6;
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = v6 & 0xFFFFFFFFFFFFFF8;
      v11 = v6 + 32;
      v42 = v2 + 56;
      v40 = v6 & 0xC000000000000001;
      v41 = v7;
      v38 = v6 + 32;
      v39 = v6 & 0xFFFFFFFFFFFFFF8;
      while (v9)
      {
        v6 = MEMORY[0x24C2506E0](v8, v37);
        v12 = v6;
        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_33;
        }

LABEL_13:
        v1 = *(v12 + 16);
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          if (qword_27F0630F0 != -1)
          {
            swift_once();
          }

          v15 = sub_24BAA812C();
          __swift_project_value_buffer(v15, qword_27F077038);

          v16 = sub_24BAA810C();
          v17 = sub_24BAAA2AC();

          if (os_log_type_enabled(v16, v17))
          {
            v1 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v43[0] = v18;
            *v1 = 136446466;
            *(v1 + 4) = sub_24B8E49D4(0xD000000000000014, 0x800000024BAAF700, v43);
            *(v1 + 12) = 2080;
            v19 = [*(v12 + 16) description];
            v20 = sub_24BAAA01C();
            v22 = v21;

            v23 = v20;
            v10 = v39;
            v24 = sub_24B8E49D4(v23, v22, v43);
            v9 = v40;

            *(v1 + 14) = v24;
            v7 = v41;
            _os_log_impl(&dword_24B8D3000, v16, v17, "[%{public}s] App '%s' is not the correct type. Cannot include in excluded apps filtering", v1, 0x16u);
            swift_arrayDestroy();
            v25 = v18;
            v11 = v38;
            MEMORY[0x24C251390](v25, -1, -1);
            MEMORY[0x24C251390](v1, -1, -1);
          }

          goto LABEL_9;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          v14 = sub_24BAAA57C();
          swift_unknownObjectRelease();
          if ((v14 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (!*(v2 + 16))
          {
LABEL_27:

            goto LABEL_9;
          }

          sub_24B91FDE0();
          swift_unknownObjectRetain();
          v26 = sub_24BAAA3BC();
          v27 = -1 << *(v2 + 32);
          v28 = v26 & ~v27;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
LABEL_26:

            v6 = swift_unknownObjectRelease();
            v9 = v40;
            v7 = v41;
            v11 = v38;
            v10 = v39;
            goto LABEL_9;
          }

          v29 = ~v27;
          while (1)
          {
            v30 = *(*(v2 + 48) + 8 * v28);
            v31 = sub_24BAAA3CC();

            if (v31)
            {
              break;
            }

            v28 = (v28 + 1) & v29;
            if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          swift_unknownObjectRelease();
          v9 = v40;
          v7 = v41;
          v11 = v38;
          v10 = v39;
        }

        sub_24BAAA66C();
        v1 = *(v44 + 16);
        sub_24BAAA69C();
        sub_24BAAA6AC();
        v6 = sub_24BAAA67C();
LABEL_9:
        if (v8 == v7)
        {
          v32 = v44;
          goto LABEL_37;
        }
      }

      if (v8 >= *(v10 + 16))
      {
        goto LABEL_34;
      }

      v12 = *(v11 + 8 * v8);

      v13 = __OFADD__(v8++, 1);
      if (!v13)
      {
        goto LABEL_13;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v33 = v6;
      v7 = sub_24BAAA52C();
      v6 = v33;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_37:

    if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
    {
      type metadata accessor for EventSource();

      v34 = sub_24BAAA6DC();
    }

    else
    {

      sub_24BAAA79C();
      type metadata accessor for EventSource();
      v34 = v32;
    }

    return v34;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91FD98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B91CCE8()
{
  if (qword_27F0630C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24B91CD44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v71 = sub_24BAA862C();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064830);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064838);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = v61 - v6;
  v7 = type metadata accessor for EditExistingAppTriggerView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24B91F5C0(v1, v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingAppTriggerView);
  sub_24BAAA1BC();
  v10 = sub_24BAAA1AC();
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24B91EFC4(v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_24B91F5C0(v1, v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingAppTriggerView);
  v14 = sub_24BAAA1AC();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  sub_24B91EFC4(v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11);
  sub_24BAA9B9C();
  v16 = v79;
  v17 = v80;
  v62 = v81;
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v79 = *v2;
  LOBYTE(v80) = v18;
  v81 = v19;
  v82 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064840);
  sub_24BAA99FC();
  v21 = v76;

  v22 = _s15FocusSettingsUI12InstalledAppC21applicationIdentifierACSo014DNDApplicationG0C_tcfC_0(v21);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v60 = 0xE000000000000000;
  v61[0] = sub_24BAA7C2C();
  v61[1] = v23;
  type metadata accessor for AppNameCache();
  sub_24B91FD98(&qword_27F064828, type metadata accessor for AppNameCache);
  v24 = sub_24BAA82FC();
  v25 = v22[5];
  v26 = v22[6];
  if (v22[3] == v25 && v22[4] == v26 || (sub_24BAAA78C() & 1) != 0)
  {
    swift_beginAccess();
    v27 = *(v24 + 16);
    v28 = *(v27 + 16);

    if (v28 && (v29 = sub_24BA1575C(v25, v26), (v30 & 1) != 0))
    {
      v31 = (*(v27 + 56) + 16 * v29);
      v25 = *v31;
      v32 = v31[1];
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v25, v26);
      v32 = v26;
    }
  }

  else
  {

    v25 = v22[3];
    v32 = v22[4];
  }

  v75 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_24BAAD820;
  if (*(v2 + 56))
  {
    v34 = v33;
    v73 = v16;
    v74 = v17;

    sub_24B984444();
    v35 = sub_24B8D7188();
    if (v35)
    {
      v36 = v35;
      v37 = [v35 mode];

      v38 = [v37 name];
      v39 = sub_24BAAA01C();
      v41 = v40;
    }

    else
    {

      v39 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = MEMORY[0x277D837D0];
    v34[7] = MEMORY[0x277D837D0];
    v43 = sub_24B8F6A20();
    v34[4] = v39;
    v34[5] = v41;
    v34[12] = v42;
    v34[13] = v43;
    v34[8] = v43;
    v34[9] = v25;
    v34[10] = v32;

    v44 = sub_24BAA9FEC();
    v45 = v32;
    v46 = v25;
    v48 = v47;

    MEMORY[0x28223BE20](v49);
    v50 = v74;
    v61[-10] = v73;
    v61[-9] = v50;
    LOBYTE(v61[-8]) = v62;
    v61[-7] = v44;
    v61[-6] = v48;
    v61[-5] = v75;
    v61[-4] = v46;
    v61[-3] = v45;
    v60 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064848);
    sub_24B8F384C(&qword_27F064850, &qword_27F064848);
    v51 = v63;
    sub_24BAA92BC();

    v52 = v65;
    sub_24BAA9D7C();
    v53 = sub_24B8F384C(&qword_27F064858, &qword_27F064830);
    v54 = sub_24B91FD98(&qword_27F064860, MEMORY[0x277CDDAB8]);
    v56 = v66;
    v55 = v67;
    v57 = v71;
    sub_24BAA96EC();
    (*(v68 + 8))(v52, v57);
    (*(v64 + 8))(v51, v56);
    v76 = v46;
    v77 = v45;
    v79 = v56;
    v80 = v57;
    v81 = v53;
    v82 = v54;
    swift_getOpaqueTypeConformance2();
    sub_24B8F5E3C();
    v58 = v70;
    sub_24BAA952C();

    (*(v69 + 8))(v55, v58);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91FD98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

void sub_24B91D65C(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064840);
  sub_24BAA99FC();

  *a1 = v3;
}

uint64_t sub_24B91D6D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v11 = *(a4 + 8);
  v13 = *(a4 + 16);
  v12 = *(a4 + 24);
  v26 = *a4;
  v10 = v26;
  v27 = v11;
  v28 = v13;
  v29 = v12;

  v14 = v10;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064840);
  sub_24BAA99FC();
  v21 = v31;
  v22 = v14;
  v23 = v11;
  v24 = v15;
  v25 = v12;
  v19 = v30;
  v20 = v9;
  sub_24BAA9A0C();

  if (*(a4 + 56))
  {
    v26 = v14;
    v27 = v11;
    v28 = v15;
    v29 = v12;

    sub_24BAA99FC();
    v16 = v23;
    v17 = v24;
    *v8 = v22;
    v8[8] = v16;
    *(v8 + 2) = v17;
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v8);

    return sub_24B91F628(v8);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91FD98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B91D8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, void)@<X6>, void (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, void (*a10)(void, void, void))
{
  v61 = a8;
  v60 = a7;
  v59 = a6;
  v58 = a2;
  v66 = a9;
  v63 = a10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064868);
  v69 = *(v65 - 8);
  v14 = MEMORY[0x28223BE20](v65);
  v64 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v52 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064870);
  v54 = *(v62 - 8);
  v17 = v54;
  v18 = MEMORY[0x28223BE20](v62);
  v67 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v20;
  v53 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064878);
  v57 = *(v22 - 8);
  v23 = v57;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v52 - v27;
  v74 = a1;
  v75 = v58;
  v76 = a3;
  sub_24BAA8B0C();
  v81 = sub_24BAA93BC();
  v82 = v29;
  v83 = v30 & 1;
  v84 = v31;
  v77 = a4;
  v78 = a5;
  sub_24B8F5E3C();

  v77 = sub_24BAA93CC();
  v78 = v32;
  v79 = v33 & 1;
  v80 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064880);
  sub_24B8F384C(&qword_27F064888, &qword_27F064880);
  v35 = v28;
  v56 = v28;
  sub_24BAA9C2C();
  v71 = v59;
  v72 = v60;
  v73 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064890);
  sub_24B91F2CC();
  sub_24BAA9C3C();
  v70 = v63;
  sub_24B91F38C();
  v36 = v68;
  sub_24BAA9C3C();
  v60 = *(v23 + 16);
  v37 = v26;
  v55 = v26;
  v38 = v26;
  v39 = v22;
  v52 = v22;
  v60(v38, v35, v22);
  v63 = *(v17 + 16);
  v40 = v67;
  v41 = v62;
  v63(v67, v21, v62);
  v61 = *(v69 + 16);
  v42 = v64;
  v43 = v36;
  v44 = v65;
  v61(v64, v43, v65);
  v45 = v66;
  v60(v66, v37, v39);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648B8);
  v63(v45 + *(v46 + 48), v40, v41);
  v61(v45 + *(v46 + 64), v42, v44);
  v47 = *(v69 + 8);
  v47(v68, v44);
  v48 = *(v54 + 8);
  v48(v53, v41);
  v49 = *(v57 + 8);
  v50 = v52;
  v49(v56, v52);
  v47(v42, v44);
  v48(v67, v41);
  return (v49)(v55, v50);
}

uint64_t sub_24B91DF58@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648C8) + 44);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  v3 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
  v6 = (a1 + v2 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

double sub_24B91E0B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA8AAC();
  v17 = 1;
  sub_24B91E20C(a1, &v11);
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v18 = v11;
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v23[0] = v11;
  sub_24B8F3208(&v18, v10, &qword_27F0648C0);
  sub_24B8F35E4(v23, &qword_27F0648C0);
  *&v16[23] = v19;
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[7] = v18;
  v5 = v17;
  v6 = sub_24BAA911C();
  v7 = *&v16[48];
  *(a2 + 49) = *&v16[32];
  *(a2 + 65) = v7;
  *(a2 + 81) = *&v16[64];
  v8 = *&v16[16];
  *(a2 + 17) = *v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 96) = *&v16[79];
  *(a2 + 33) = v8;
  *(a2 + 104) = v6;
  result = 0.0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 1;
  return result;
}

uint64_t sub_24B91E20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AppIconCache();
  sub_24B91FD98(&qword_27F0651D0, type metadata accessor for AppIconCache);

  v18 = sub_24BAA86FC();
  v19 = v3;
  KeyPath = swift_getKeyPath();
  sub_24B8F5E3C();

  v4 = sub_24BAA93CC();
  v6 = v5;
  v8 = v7;
  sub_24BAA988C();
  v9 = sub_24BAA933C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_24B900910(v4, v6, v8 & 1);

  *a2 = a1;
  *(a2 + 8) = 0x4041800000000000;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13 & 1;
  *(a2 + 72) = v15;

  sub_24B91F6F0(KeyPath, 0);
  sub_24B8F319C(v9, v11, v13 & 1);

  sub_24B900910(v9, v11, v13 & 1);

  return sub_24B8FFD5C(KeyPath, 0);
}

uint64_t sub_24B91E404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditExistingAppTriggerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B91F5C0(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for EditExistingAppTriggerView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_24B91EFC4(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v11[15] = 0;
  result = sub_24BAA99EC();
  v10 = v12;
  *a2 = v11[16];
  *(a2 + 8) = v10;
  *(a2 + 16) = sub_24B91F544;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_24B91E53C()
{
  v1 = sub_24BAA868C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v4);
  v45 = v44 - v5;
  v6 = type metadata accessor for Trigger(0);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v47 = v44 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v44 - v14;
  v16 = *(v0 + 56);
  if (!v16)
  {
    goto LABEL_38;
  }

  v44[2] = v44;
  MEMORY[0x28223BE20](v16);
  v44[-2] = v0;

  sub_24B984444();
  v17 = sub_24B8DF718();

  v18 = sub_24B991438(sub_24B91F5A0, &v44[-4], v17);
  if ((v19 & 1) == 0)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      type metadata accessor for ActivityConfigViewModel();
      sub_24B91FD98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      result = sub_24BAA86DC();
      __break(1u);
      return result;
    }

    v51 = v18;
    v44[0] = v4;
    v44[1] = v3;
    v48 = v0;
    while (1)
    {
      v22 = v17[2];
      if (v20 == v22)
      {
        break;
      }

      if (v20 >= v22)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v23 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v24 = v17 + v23;
      v25 = *(v49 + 72);
      v26 = v25 * v20;
      sub_24B91F5C0(v17 + v23 + v25 * v20, v15, type metadata accessor for Trigger);
      v27 = *(v48 + 8);
      v28 = *(v48 + 16);
      v29 = *(v48 + 24);
      v55 = *v48;
      v56 = v27;
      v57 = v28;
      v58 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064840);
      sub_24BAA99FC();
      v30 = v53;
      v31 = v54;
      *v13 = v52;
      v13[8] = v30;
      *(v13 + 2) = v31;
      swift_storeEnumTagMultiPayload();
      v32 = sub_24B92823C(v15);
      sub_24B91F628(v13);
      sub_24B91F628(v15);
      if ((v32 & 1) == 0)
      {
        v33 = v51;
        if (v20 != v51)
        {
          if (v51 < 0)
          {
            goto LABEL_30;
          }

          v34 = v17[2];
          if (v51 >= v34)
          {
            goto LABEL_31;
          }

          v35 = v25 * v51;
          sub_24B91F5C0(&v24[v25 * v51], v47, type metadata accessor for Trigger);
          if (v20 >= v34)
          {
            goto LABEL_32;
          }

          v36 = v46;
          sub_24B91F5C0(&v24[v26], v46, type metadata accessor for Trigger);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_24B9AEC30(v17);
          }

          sub_24B91F684(v36, v17 + v23 + v35);
          if (v20 >= v17[2])
          {
            goto LABEL_33;
          }

          sub_24B91F684(v47, v17 + v23 + v26);
          v33 = v51;
        }

        v51 = v33 + 1;
      }

      ++v20;
    }

    v21 = v51;
    if (v20 < v51)
    {
      goto LABEL_34;
    }

    v4 = v44[0];
    if ((v51 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = v17[2];
  v21 = v20;
LABEL_21:
  v37 = v21;
  v38 = v21 - v20;
  v39 = v20 + v38;
  if (__OFADD__(v20, v38))
  {
    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v17;
  if (!isUniquelyReferenced_nonNull_native || v39 > v17[3] >> 1)
  {
    if (v20 <= v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = v20;
    }

    v17 = sub_24B99A4A0(isUniquelyReferenced_nonNull_native, v41, 1, v17);
    v55 = v17;
  }

  sub_24B9AF37C(v37, v20, 0);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91FD98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DFC94(v17);

  type metadata accessor for EditExistingAppTriggerView();
  v42 = v45;
  sub_24BA8DA5C(v45);
  MEMORY[0x24C24FC10](v4);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F35E4(v42, &qword_27F063940);
}

uint64_t sub_24B91EB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v16 = *a2;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064840);
  sub_24BAA99FC();
  v10 = v14;
  v11 = v15;
  *v6 = v13[1];
  v6[8] = v10;
  *(v6 + 2) = v11;
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_24B92823C(a1);
  sub_24B91F628(v6);
  return a2 & 1;
}

uint64_t sub_24B91EC40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24B91ED10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EditExistingAppTriggerView()
{
  result = qword_27F064808;
  if (!qword_27F064808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B91EE0C()
{
  sub_24B91EEC0();
  if (v0 <= 0x3F)
  {
    sub_24B91EF10();
    if (v1 <= 0x3F)
    {
      sub_24B8F47B4();
      if (v2 <= 0x3F)
      {
        sub_24B8F4644();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B91EEC0()
{
  if (!qword_27F064818)
  {
    v0 = sub_24BAA9A2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F064818);
    }
  }
}

void sub_24B91EF10()
{
  if (!qword_27F064820)
  {
    type metadata accessor for AppNameCache();
    sub_24B91FD98(&qword_27F064828, type metadata accessor for AppNameCache);
    v0 = sub_24BAA831C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F064820);
    }
  }
}

uint64_t sub_24B91EFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditExistingAppTriggerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24B91F028(_BYTE *a1@<X8>)
{
  type metadata accessor for EditExistingAppTriggerView();

  sub_24B91D65C(a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for EditExistingAppTriggerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  sub_24B900C14();

  v5 = v0 + v3 + v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B91F208(char *a1)
{
  v3 = *(type metadata accessor for EditExistingAppTriggerView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_24B91D6D4(a1, v4, v5, v6);
}

unint64_t sub_24B91F2CC()
{
  result = qword_27F064898;
  if (!qword_27F064898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064890);
    sub_24B8F384C(&qword_27F0648A0, &qword_27F0648A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064898);
  }

  return result;
}

unint64_t sub_24B91F38C()
{
  result = qword_27F0648B0;
  if (!qword_27F0648B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0648B0);
  }

  return result;
}

uint64_t sub_24B91F3E0()
{
  v1 = (type metadata accessor for EditExistingAppTriggerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_24B900C14();

  v5 = v0 + v3 + v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B91F5C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B91F628(uint64_t a1)
{
  v2 = type metadata accessor for Trigger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B91F684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Trigger(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B91F6F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FocusSettingsUI7TriggerO3AppVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_24B91F74C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24B91F794(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_24B91F7F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064830);
  sub_24BAA862C();
  sub_24B8F384C(&qword_27F064858, &qword_27F064830);
  sub_24B91FD98(&qword_27F064860, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();
  sub_24B900C14();

  v1 = *(v0 + 72);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

id sub_24B91FA04(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = result;

    return a3;
  }

  return result;
}

unint64_t sub_24B91FA44()
{
  result = qword_27F0648D8;
  if (!qword_27F0648D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0648D8);
  }

  return result;
}

void sub_24B91FA98(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24B91FB34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24B91FB7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B91FBE8()
{
  sub_24B91FA44();
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B91FCA8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
  result = sub_24BAA99FC();
  *a1 = v3;
  return result;
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 48);
  if (v1)
  {
  }

  sub_24B900C14();
  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_24B91FD98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B91FDE0()
{
  result = qword_27F063160;
  if (!qword_27F063160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F063160);
  }

  return result;
}

unint64_t sub_24B91FE30()
{
  result = qword_27F0648F8;
  if (!qword_27F0648F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064900);
    sub_24B91FEE8();
    sub_24B8F384C(&qword_27F063E70, &unk_27F068AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0648F8);
  }

  return result;
}

unint64_t sub_24B91FEE8()
{
  result = qword_27F064908;
  if (!qword_27F064908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064908);
  }

  return result;
}

uint64_t sub_24B91FF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24B9200C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24B92021C()
{
  sub_24B9273EC(319, &qword_27F064928, type metadata accessor for Trigger.Schedule, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v1 <= 0x3F)
    {
      sub_24B92614C(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B920330@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v52 = sub_24BAA862C();
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064990);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064998);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v57 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v41 - v9;
  v10 = type metadata accessor for EditScheduleTriggerView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  sub_24B925B74(v1, v13, type metadata accessor for EditScheduleTriggerView);
  sub_24BAAA1BC();
  v14 = sub_24BAAA1AC();
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = *(v11 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_24B926594(v13, v17 + v15, type metadata accessor for EditScheduleTriggerView);
  sub_24B925B74(v1, v13, type metadata accessor for EditScheduleTriggerView);
  v19 = sub_24BAAA1AC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = MEMORY[0x277D85700];
  sub_24B926594(v13, v20 + v15, type metadata accessor for EditScheduleTriggerView);
  sub_24BAA9B9C();
  v46 = v65;
  v45 = v66;
  v47 = v67;
  v21 = v55;
  sub_24B925B74(v55, v13, type metadata accessor for EditScheduleTriggerView);
  v22 = sub_24BAAA1AC();
  v56 = v16;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = MEMORY[0x277D85700];
  sub_24B926594(v13, v23 + v15, type metadata accessor for EditScheduleTriggerView);
  sub_24B925B74(v21, v13, type metadata accessor for EditScheduleTriggerView);
  v24 = sub_24BAAA1AC();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = MEMORY[0x277D85700];
  sub_24B926594(v13, v25 + v15, type metadata accessor for EditScheduleTriggerView);
  v41 = sub_24BAA7DCC();
  sub_24BAA9B9C();
  v26 = v55;
  v44 = type metadata accessor for EditScheduleTriggerView;
  sub_24B925B74(v55, v13, type metadata accessor for EditScheduleTriggerView);
  v27 = sub_24BAAA1AC();
  v43 = v12;
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = MEMORY[0x277D85700];
  v42 = type metadata accessor for EditScheduleTriggerView;
  sub_24B926594(v13, v28 + v15, type metadata accessor for EditScheduleTriggerView);
  sub_24B925B74(v26, v13, type metadata accessor for EditScheduleTriggerView);
  v29 = sub_24BAAA1AC();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = MEMORY[0x277D85700];
  sub_24B926594(v13, v30 + v15, type metadata accessor for EditScheduleTriggerView);
  v31 = v57;
  sub_24BAA9B9C();
  v59 = v26;
  v60 = v46;
  v61 = v45;
  v62 = v47;
  v63 = v58;
  v64 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649A0);
  sub_24B8F384C(&qword_27F0649A8, &qword_27F0649A0);
  v32 = v48;
  sub_24BAA92BC();
  v33 = v49;
  sub_24BAA9D7C();
  sub_24B8F384C(&qword_27F0649B0, &qword_27F064990);
  sub_24B925AAC(&qword_27F064860, MEMORY[0x277CDDAB8]);
  v35 = v52;
  v34 = v53;
  v36 = v50;
  sub_24BAA96EC();

  (*(v54 + 8))(v33, v35);
  (*(v51 + 8))(v32, v36);
  sub_24B925B74(v26, v13, v44);
  v37 = (v56 + 16) & ~v56;
  v38 = swift_allocObject();
  sub_24B926594(v13, v38 + v37, v42);
  v39 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649B8) + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_24B926B2C;
  v39[3] = v38;
  sub_24B8F35E4(v57, &qword_27F064998);
  return sub_24B8F35E4(v58, &qword_27F064998);
}

uint64_t sub_24B920AE4@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Trigger.Schedule(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x24C24FC10](v6);
  v7 = v5[*(v3 + 36)];
  result = sub_24B925AF4(v5, type metadata accessor for Trigger.Schedule);
  *a1 = v7;
  return result;
}

uint64_t sub_24B920BA0(char *a1)
{
  v2 = type metadata accessor for Trigger.Schedule(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x24C24FC10]();
  v5[*(v3 + 36)] = v6;
  sub_24BAA9B6C();
  return sub_24B920C5C();
}

uint64_t sub_24B920C5C()
{
  v1 = v0;
  v2 = sub_24BAA9E7C();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = v30 - v6;
  v7 = sub_24BAA9E2C();
  MEMORY[0x28223BE20](v7);
  v30[1] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditScheduleTriggerView(0);
  v30[0] = *(v9 - 8);
  v10 = *(v30[0] + 64);
  MEMORY[0x28223BE20](v9);
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v11 = sub_24BAA812C();
  __swift_project_value_buffer(v11, qword_27F077038);
  v12 = sub_24BAA810C();
  v13 = sub_24BAAA29C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_24B8E49D4(0xD00000000000003ELL, 0x800000024BAC0E70, &aBlock);
    _os_log_impl(&dword_24B8D3000, v12, v13, "[%{public}s] Scheduling a new schedule trigger update…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C251390](v16, -1, -1);
    v17 = v15;
    v1 = v14;
    MEMORY[0x24C251390](v17, -1, -1);
  }

  v18 = (v1 + *(v9 + 20));
  v20 = *v18;
  v19 = v18[1];
  aBlock = *v18;
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649C0);
  sub_24BAA99FC();
  if (v40)
  {
    sub_24BAA9E9C();
  }

  sub_24B925B74(v1, v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditScheduleTriggerView);
  v21 = (*(v30[0] + 80) + 16) & ~*(v30[0] + 80);
  v22 = swift_allocObject();
  sub_24B926594(v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for EditScheduleTriggerView);
  v38 = sub_24B926E70;
  v39 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_24B97ACC4;
  v37 = &block_descriptor_1;
  _Block_copy(&aBlock);
  v40 = MEMORY[0x277D84F90];
  sub_24B925AAC(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  sub_24BAA9EAC();
  swift_allocObject();
  v23 = sub_24BAA9E8C();

  aBlock = v20;
  v35 = v19;
  v40 = v23;

  sub_24BAA9A0C();
  sub_24B926F30();
  v24 = sub_24BAAA33C();
  sub_24BAA9E6C();
  v25 = v31;
  sub_24BAA9EBC();
  v26 = *(v32 + 8);
  v27 = v5;
  v28 = v33;
  v26(v27, v33);
  sub_24BAAA30C();

  return (v26)(v25, v28);
}

uint64_t sub_24B9211A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Trigger.Schedule(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x24C24FC10](v5);
  v6 = sub_24BAA7DCC();
  (*(*(v6 - 8) + 16))(a1, v4, v6);
  return sub_24B925AF4(v4, type metadata accessor for Trigger.Schedule);
}

uint64_t sub_24B921290(uint64_t a1)
{
  v2 = type metadata accessor for Trigger.Schedule(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x24C24FC10]();
  v5 = sub_24BAA7DCC();
  (*(*(v5 - 8) + 24))(v4, a1, v5);
  sub_24BAA9B6C();
  return sub_24B920C5C();
}

uint64_t sub_24B921370@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Trigger.Schedule(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x24C24FC10](v6);
  v7 = *(v3 + 28);
  v8 = sub_24BAA7DCC();
  (*(*(v8 - 8) + 16))(a1, &v5[v7], v8);
  return sub_24B925AF4(v5, type metadata accessor for Trigger.Schedule);
}

uint64_t sub_24B921460(uint64_t a1)
{
  v2 = type metadata accessor for Trigger.Schedule(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x24C24FC10]();
  v6 = *(v3 + 28);
  v7 = sub_24BAA7DCC();
  (*(*(v7 - 8) + 24))(&v5[v6], a1, v7);
  sub_24BAA9B6C();
  return sub_24B920C5C();
}

uint64_t sub_24B921550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a7;
  v82 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064868);
  v12 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649C8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v80 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649D0);
  v78 = *(v18 - 8);
  v79 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v76 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649D8);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649E0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v83 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v69 - v29;
  v31 = type metadata accessor for EditScheduleTriggerView(0);
  v73 = v31;
  v74 = v12;
  if (*(a1 + *(v31 + 24)))
  {
    v32 = (*(v23 + 56))(v30, 1, 1, v22);
  }

  else
  {
    MEMORY[0x28223BE20](v31);
    *(&v69 - 4) = v82;
    *(&v69 - 3) = a3;
    LOBYTE(v67) = a4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
    sub_24B8F68B8();
    sub_24BAA9C3C();
    (*(v23 + 32))(v30, v25, v22);
    v32 = (*(v23 + 56))(v30, 0, 1, v22);
  }

  v82 = v30;
  v72 = &v69;
  MEMORY[0x28223BE20](v32);
  v71 = &v69 - 6;
  *(&v69 - 4) = a5;
  *(&v69 - 3) = a6;
  v67 = a1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v67 = 0xE000000000000000;
  v86 = sub_24BAA7C2C();
  v87 = v33;
  sub_24B8F5E3C();
  v34 = sub_24BAA93CC();
  v36 = v35;
  v38 = v37;
  sub_24BAA988C();
  v39 = sub_24BAA933C();
  v41 = v40;
  v43 = v42;
  v45 = v44;

  sub_24B900910(v34, v36, v38 & 1);

  v86 = v39;
  v87 = v41;
  v88 = v43 & 1;
  v89 = v45;
  sub_24B923038(a1, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649E8);
  v67 = sub_24B8F384C(&qword_27F0649F0, &qword_27F0649E8);
  v68 = MEMORY[0x277CE0BC8];
  v46 = sub_24BAA9C2C();
  v47 = (a1 + *(v73 + 32));
  v48 = *v47;
  if (*v47)
  {
    v49 = v47[1];
    MEMORY[0x28223BE20](v46);
    v67 = v48;
    v68 = v49;
    sub_24B91F38C();

    v50 = v70;
    sub_24BAA9C3C();
    sub_24B926B78(v48);
    v52 = v74;
    v51 = v75;
    v53 = v77;
    (*(v74 + 32))(v77, v50, v75);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v77;
    v52 = v74;
    v51 = v75;
  }

  (*(v52 + 56))(v53, v54, 1, v51);
  v55 = v83;
  sub_24B8F3208(v82, v83, &qword_27F0649E0);
  v56 = v53;
  v57 = v78;
  v58 = v79;
  v59 = *(v78 + 16);
  v60 = v76;
  v61 = v84;
  v59(v76, v84, v79);
  v62 = v80;
  sub_24B8F3208(v56, v80, &qword_27F0649C8);
  v63 = v81;
  sub_24B8F3208(v55, v81, &qword_27F0649E0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649F8);
  v59((v63 + *(v64 + 48)), v60, v58);
  sub_24B8F3208(v62, v63 + *(v64 + 64), &qword_27F0649C8);
  sub_24B8F35E4(v56, &qword_27F0649C8);
  v65 = *(v57 + 8);
  v65(v61, v58);
  sub_24B8F35E4(v82, &qword_27F0649E0);
  sub_24B8F35E4(v62, &qword_27F0649C8);
  v65(v60, v58);
  return sub_24B8F35E4(v83, &qword_27F0649E0);
}

uint64_t sub_24B921D64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  v2 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_24B921E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v64 = a2;
  v70 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v71 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = (v57 - v8);
  v9 = sub_24BAA8D3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064998);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v57 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A08);
  v14 = MEMORY[0x28223BE20](v63);
  v67 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = v57 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v65 = v57 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v57 - v20;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v62 = qword_27F077088;
  v73 = sub_24BAA7C2C();
  v74 = v22;
  sub_24B8F3208(a1, v13, &qword_27F064998);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A10);
  v60 = *(v10 + 72);
  v61 = v23;
  v24 = swift_allocObject();
  v59 = xmmword_24BAAD5B0;
  *(v24 + 16) = xmmword_24BAAD5B0;
  sub_24BAA8D2C();
  v72 = v24;
  v57[2] = sub_24B925AAC(&qword_27F064A18, MEMORY[0x277CDDFC8]);
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A20);
  v57[0] = sub_24B8F384C(&qword_27F064A28, &qword_27F064A20);
  sub_24BAAA48C();
  sub_24B8F5E3C();
  sub_24BAA827C();
  v25 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v27 = v21;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A30);
  v29 = (v27 + *(v28 + 36));
  v58 = v27;
  *v29 = KeyPath;
  v29[1] = v25;
  LOBYTE(v25) = sub_24BAA911C();
  sub_24BAA828C();
  v30 = v63;
  v31 = v27 + *(v63 + 36);
  *v31 = v25;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  *(v31 + 24) = v34;
  *(v31 + 32) = v35;
  *(v31 + 40) = 0;
  v73 = sub_24BAA7C2C();
  v74 = v36;
  sub_24B8F3208(v64, v13, &qword_27F064998);
  v37 = swift_allocObject();
  *(v37 + 16) = v59;
  sub_24BAA8D2C();
  v72 = v37;
  sub_24BAAA48C();
  v38 = v65;
  sub_24BAA827C();
  v39 = sub_24BAA988C();
  v40 = swift_getKeyPath();
  v41 = (v38 + *(v28 + 36));
  *v41 = v40;
  v41[1] = v39;
  LOBYTE(v39) = sub_24BAA911C();
  sub_24BAA828C();
  v42 = v38 + *(v30 + 36);
  *v42 = v39;
  *(v42 + 8) = v43;
  *(v42 + 16) = v44;
  *(v42 + 24) = v45;
  *(v42 + 32) = v46;
  *(v42 + 40) = 0;
  v47 = sub_24BAA8AAC();
  v48 = v69;
  *v69 = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A38);
  sub_24B922574(v68, v48 + *(v49 + 44));
  v50 = v58;
  v51 = v66;
  sub_24B8F3208(v58, v66, &qword_27F064A08);
  v52 = v67;
  sub_24B8F3208(v38, v67, &qword_27F064A08);
  v53 = v71;
  sub_24B8F3208(v48, v71, &qword_27F064A00);
  v54 = v70;
  sub_24B8F3208(v51, v70, &qword_27F064A08);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A40);
  sub_24B8F3208(v52, v54 + *(v55 + 48), &qword_27F064A08);
  sub_24B8F3208(v53, v54 + *(v55 + 64), &qword_27F064A00);
  sub_24B8F35E4(v48, &qword_27F064A00);
  sub_24B8F35E4(v38, &qword_27F064A08);
  sub_24B8F35E4(v50, &qword_27F064A08);
  sub_24B8F35E4(v53, &qword_27F064A00);
  sub_24B8F35E4(v52, &qword_27F064A08);
  return sub_24B8F35E4(v51, &qword_27F064A08);
}

uint64_t sub_24B922574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v74 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A48);
  MEMORY[0x28223BE20](v73);
  v3 = &v59 - v2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A50);
  MEMORY[0x28223BE20](v70);
  v72 = &v59 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A58);
  MEMORY[0x28223BE20](v71);
  v66 = (&v59 - v5);
  v68 = type metadata accessor for WeekdayToggleStyle(0);
  MEMORY[0x28223BE20](v68);
  v7 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x28223BE20](v8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for WeekdayToggles();
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A60);
  v69 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v59 - v18;
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20)
  {
    v63 = v11;
    v64 = v17;
    v65 = v3;
    v66 = v14;
    v21 = v75;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v76 = sub_24BAA7C2C();
    *&v77 = v22;
    sub_24B8F5E3C();
    v23 = sub_24BAA93CC();
    v25 = v24;
    v27 = v26;
    sub_24BAA988C();
    v28 = sub_24BAA933C();
    v59 = v29;
    v60 = v28;
    v61 = v30;
    v62 = v31;

    sub_24B900910(v23, v25, v27 & 1);

    v32 = v67;
    sub_24BAA9B8C();
    swift_getKeyPath();
    sub_24BAA9B7C();

    sub_24B8F35E4(v10, &qword_27F064930);
    *v13 = v76;
    *(v13 + 8) = v77;
    v33 = *(v63 + 20);
    *&v13[v33] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
    swift_storeEnumTagMultiPayload();
    v34 = *(v32 + *(type metadata accessor for EditScheduleTriggerView(0) + 28));
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v68 + 20)) = v34;
    sub_24B925AAC(&qword_27F064A68, type metadata accessor for WeekdayToggles);
    sub_24B925AAC(&qword_27F064A70, type metadata accessor for WeekdayToggleStyle);

    sub_24BAA949C();
    sub_24B925AF4(v7, type metadata accessor for WeekdayToggleStyle);
    sub_24B925AF4(v13, type metadata accessor for WeekdayToggles);
    v35 = v69;
    v36 = *(v69 + 16);
    v37 = v64;
    v38 = v66;
    v36(v64, v21, v66);
    v39 = v65;
    v41 = v59;
    v40 = v60;
    *v65 = v60;
    *(v39 + 8) = v41;
    v42 = v61 & 1;
    *(v39 + 16) = v61 & 1;
    *(v39 + 24) = v62;
    *(v39 + 32) = 0;
    *(v39 + 40) = 1;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A78);
    v36((v39 + *(v43 + 64)), v37, v38);
    sub_24B8F319C(v40, v41, v42);

    sub_24B8F319C(v40, v41, v42);
    v69 = *(v35 + 8);
    v44 = v69;

    v44(v37, v38);
    sub_24B900910(v40, v41, v42);

    sub_24B8F3208(v39, v72, &qword_27F064A48);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F064A80, &qword_27F064A58);
    sub_24B8F384C(&qword_27F064A88, &qword_27F064A48);
    sub_24BAA8D0C();
    sub_24B900910(v40, v41, v42);

    sub_24B8F35E4(v39, &qword_27F064A48);
    return (v69)(v75, v38);
  }

  else
  {
    v46 = v67;
    sub_24BAA9B8C();
    swift_getKeyPath();
    sub_24BAA9B7C();

    sub_24B8F35E4(v10, &qword_27F064930);
    *v13 = v76;
    *(v13 + 8) = v77;
    v47 = *(v11 + 20);
    *&v13[v47] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
    swift_storeEnumTagMultiPayload();
    v48 = *(v46 + *(type metadata accessor for EditScheduleTriggerView(0) + 28));
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v68 + 20)) = v48;
    sub_24B925AAC(&qword_27F064A68, type metadata accessor for WeekdayToggles);
    sub_24B925AAC(&qword_27F064A70, type metadata accessor for WeekdayToggleStyle);

    v49 = v14;
    v50 = v75;
    sub_24BAA949C();
    sub_24B925AF4(v7, type metadata accessor for WeekdayToggleStyle);
    sub_24B925AF4(v13, type metadata accessor for WeekdayToggles);
    v51 = v69;
    v52 = *(v69 + 16);
    v53 = v50;
    v54 = v49;
    v52(v17, v53, v49);
    v55 = v66;
    *v66 = 0;
    *(v55 + 8) = 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A90);
    v52((v55 + *(v56 + 48)), v17, v54);
    v57 = v55 + *(v56 + 64);
    *v57 = 0;
    *(v57 + 8) = 1;
    v58 = *(v51 + 8);
    v58(v17, v54);
    sub_24B8F3208(v55, v72, &qword_27F064A58);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F064A80, &qword_27F064A58);
    sub_24B8F384C(&qword_27F064A88, &qword_27F064A48);
    sub_24BAA8D0C();
    sub_24B8F35E4(v55, &qword_27F064A58);
    return (v58)(v75, v54);
  }
}

uint64_t sub_24B923038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32[0] = a1;
  v36 = a2;
  v2 = sub_24BAA7F2C();
  v33 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Trigger.Schedule(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x24C24FC10]();
  v10 = *&v9[*(v7 + 32)];

  v34 = type metadata accessor for Trigger.Schedule;
  sub_24B925AF4(v9, type metadata accessor for Trigger.Schedule);
  type metadata accessor for EditScheduleTriggerView(0);
  sub_24BA8DA80(v5);
  v11 = sub_24B92DC74(v10, v5);
  v13 = v12;

  v14 = *(v3 + 8);
  v32[2] = v3 + 8;
  v14(v5, v2);
  v37 = v11;
  v38 = v13;
  sub_24B8F5E3C();
  v15 = sub_24BAA93CC();
  v17 = v16;
  LOBYTE(v3) = v18;
  v32[1] = v19;
  MEMORY[0x24C24FC10](v35);
  v20 = *&v9[*(v7 + 32)];

  sub_24B925AF4(v9, v34);
  sub_24BA8DA80(v5);
  v21 = sub_24B92E2D8(v20, v5);
  v23 = v22;

  v14(v5, v33);
  v37 = v21;
  v38 = v23;
  v24 = sub_24BAA935C();
  v26 = v25;
  LOBYTE(v5) = v27;
  v29 = v28;
  sub_24B900910(v15, v17, v3 & 1);

  v31 = v36;
  *v36 = v24;
  v31[1] = v26;
  *(v31 + 16) = v5 & 1;
  v31[3] = v29;
  return result;
}

uint64_t sub_24B9232F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24BAA99EC();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
}

uint64_t sub_24B923360(uint64_t a1)
{
  v2 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditScheduleTriggerView(0);
  v9 = *(a1 + *(v5 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0649C0);
  sub_24BAA99FC();
  if (v8[1])
  {
    sub_24BAA9E9C();
  }

  if (*(a1 + *(v5 + 36)))
  {

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
    MEMORY[0x24C24FC10](v6);
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v4);

    return sub_24B925AF4(v4, type metadata accessor for Trigger);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B923504(uint64_t a1)
{
  v2 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v5 = sub_24BAA812C();
  __swift_project_value_buffer(v5, qword_27F077038);
  v6 = sub_24BAA810C();
  v7 = sub_24BAAA29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_24B8E49D4(0xD00000000000003ELL, 0x800000024BAC0E70, &v13);
    _os_log_impl(&dword_24B8D3000, v6, v7, "[%{public}s] Updating schedule trigger update.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C251390](v9, -1, -1);
    MEMORY[0x24C251390](v8, -1, -1);
  }

  if (*(a1 + *(type metadata accessor for EditScheduleTriggerView(0) + 36)))
  {

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
    MEMORY[0x24C24FC10](v10);
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v4);

    return sub_24B925AF4(v4, type metadata accessor for Trigger);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B92377C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for EditScheduleTriggerView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064A98);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  type metadata accessor for CreateScheduleTriggerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
  sub_24BAA9A1C();
  if (*(v1 + 16))
  {
    v29 = v9;
    v30 = a1;

    v12 = sub_24B991A94();

    *&v8[v6[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    sub_24B90294C(v5, v8, &qword_27F064930);
    v13 = v6[5];
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064938);
    sub_24BAA99EC();
    *&v8[v13] = v31;
    v8[v6[6]] = 1;
    *&v8[v6[7]] = v12;
    v14 = &v8[v6[8]];
    *v14 = 0;
    *(v14 + 1) = 0;
    v15 = &v8[v6[9]];
    type metadata accessor for ActivityConfigViewModel();
    sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v15 = sub_24BAA86FC();
    v15[1] = v16;
    v17 = v6[10];
    *&v8[v17] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
    swift_storeEnumTagMultiPayload();
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    *&v31 = sub_24BAA7C2C();
    *(&v31 + 1) = v18;
    v19 = sub_24B925AAC(&qword_27F064940, type metadata accessor for EditScheduleTriggerView);
    v20 = sub_24B8F5E3C();
    v21 = MEMORY[0x277D837D0];
    sub_24BAA952C();

    v22 = sub_24B925AF4(v8, type metadata accessor for EditScheduleTriggerView);
    MEMORY[0x28223BE20](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064050);
    *&v31 = v6;
    *(&v31 + 1) = v21;
    v32 = v19;
    v33 = v20;
    swift_getOpaqueTypeConformance2();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
    v24 = sub_24B8F384C(&qword_27F064060, &qword_27F064058);
    *&v31 = v23;
    *(&v31 + 1) = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v29;
    sub_24BAA96CC();
    return (*(v28 + 8))(v11, v25);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B923CF0(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064058);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  sub_24B90A7A8();
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B923EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ScheduleTriggerView = type metadata accessor for CreateScheduleTriggerView(0);
  v5 = *(ScheduleTriggerView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](ScheduleTriggerView);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v19 = sub_24BAA7C2C();
  v20 = v7;
  sub_24B925B74(a1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CreateScheduleTriggerView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24B926594(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for CreateScheduleTriggerView);
  sub_24B8F5E3C();
  sub_24BAA9A7C();
  v10 = a1 + *(ScheduleTriggerView + 28);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v19) = v11;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  v13 = v18[15];
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064078);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_24B9027F8;
  v17[2] = v15;
  return result;
}

uint64_t sub_24B9240FC(void (**a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064AA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3];
  v5 = a1 + *(type metadata accessor for CreateScheduleTriggerView(0) + 28);
  v6 = *v5;
  v7 = *(v5 + 1);
  v11[16] = v6;
  v12 = v7;
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A0C();
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
  sub_24BAA99FC();
  v9 = type metadata accessor for Trigger.Schedule(0);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v8(v4);
  return sub_24B8F35E4(v4, &qword_27F064AA0);
}

uint64_t sub_24B92426C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28[2] = a1;
  v3 = type metadata accessor for Trigger.Schedule(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditExistingScheduleTriggerView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v28 - v11;
  v13 = type metadata accessor for EditScheduleTriggerView(0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
  sub_24BAA9A1C();
  if (*(v1 + *(v7 + 28)))
  {

    v16 = sub_24B991A94();

    sub_24B925B74(v2, v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditExistingScheduleTriggerView);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = swift_allocObject();
    sub_24B926594(v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for EditExistingScheduleTriggerView);
    *&v15[v13[11]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    sub_24B90294C(v12, v15, &qword_27F064930);
    v19 = v13[5];
    v28[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064938);
    sub_24BAA99EC();
    *&v15[v19] = v29;
    v15[v13[6]] = 0;
    *&v15[v13[7]] = v16;
    v20 = &v15[v13[8]];
    *v20 = sub_24B925A44;
    v20[1] = v18;
    v21 = &v15[v13[9]];
    type metadata accessor for ActivityConfigViewModel();
    sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v21 = sub_24BAA86FC();
    v21[1] = v22;
    v23 = v13[10];
    *&v15[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
    swift_storeEnumTagMultiPayload();
    sub_24BAA99FC();
    v24 = sub_24B9280B8();
    v26 = v25;
    sub_24B925AF4(v5, type metadata accessor for Trigger.Schedule);
    *&v29 = v24;
    *(&v29 + 1) = v26;
    sub_24B925AAC(&qword_27F064940, type metadata accessor for EditScheduleTriggerView);
    sub_24B8F5E3C();
    sub_24BAA952C();

    return sub_24B925AF4(v15, type metadata accessor for EditScheduleTriggerView);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B92471C()
{
  v1 = v0;
  v2 = sub_24BAA868C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v5);
  v7 = v46 - v6;
  v8 = type metadata accessor for Trigger(0);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v52 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = v46 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v55 = v46 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = v46 - v15;
  v16 = type metadata accessor for EditExistingScheduleTriggerView(0);
  v17 = *(v0 + *(v16 + 20));
  if (!v17)
  {
    goto LABEL_40;
  }

  v50 = v46;
  MEMORY[0x28223BE20](v17);
  v46[-2] = v0;

  sub_24B984444();
  v18 = sub_24B8DF718();

  v19 = sub_24B991438(sub_24B925B54, &v46[-4], v18);
  if (v20)
  {
    v21 = v18;
    v22 = *(v18 + 16);
    v23 = v22;
    goto LABEL_8;
  }

  v22 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    type metadata accessor for ActivityConfigViewModel();
    sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v59 = v19;
  v46[1] = v16;
  v47 = v7;
  v48 = v5;
  v49 = v4;
  v21 = v18;
  v25 = (v18 + 16);
  v24 = *(v18 + 16);
  if (v22 != v24)
  {
    v32 = v55;
    while (v22 < v24)
    {
      v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v60 = v21;
      v58 = v33;
      v34 = v21 + v33;
      v35 = *(v56 + 72);
      v36 = v35 * v22;
      v37 = v21 + v33 + v35 * v22;
      v38 = v54;
      sub_24B925B74(v37, v54, type metadata accessor for Trigger);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
      v39 = v1;
      sub_24BAA99FC();
      swift_storeEnumTagMultiPayload();
      v40 = sub_24B92823C(v38);
      sub_24B925AF4(v32, type metadata accessor for Trigger);
      sub_24B925AF4(v38, type metadata accessor for Trigger);
      if (v40)
      {
        v21 = v60;
      }

      else
      {
        v41 = v59;
        if (v22 == v59)
        {
          v21 = v60;
        }

        else
        {
          if (v59 < 0)
          {
            goto LABEL_32;
          }

          v42 = *v25;
          if (v59 >= *v25)
          {
            goto LABEL_33;
          }

          v43 = v35 * v59;
          sub_24B925B74(&v34[v35 * v59], v53, type metadata accessor for Trigger);
          if (v22 >= v42)
          {
            goto LABEL_34;
          }

          v44 = v52;
          sub_24B925B74(&v34[v36], v52, type metadata accessor for Trigger);
          v21 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_24B9AEC30(v21);
          }

          v1 = v39;
          v45 = v21 + v58;
          sub_24B91F684(v44, v21 + v58 + v43);
          if (v22 >= v21[2])
          {
            goto LABEL_35;
          }

          sub_24B91F684(v53, &v45[v36]);
          v41 = v59;
        }

        v59 = v41 + 1;
      }

      ++v22;
      v25 = v21 + 2;
      v24 = v21[2];
      if (v22 == v24)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_6:
  v23 = v59;
  if (v22 < v59)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = v48;
  v7 = v47;
  if (v59 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_8:
  v26 = v23;
  v27 = v23 - v22;
  v28 = v22 + v27;
  if (__OFADD__(v22, v27))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v21;
  if (!isUniquelyReferenced_nonNull_native || v28 > v21[3] >> 1)
  {
    if (v22 <= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v22;
    }

    v21 = sub_24B99A4A0(isUniquelyReferenced_nonNull_native, v30, 1, v21);
    v61 = v21;
  }

  sub_24B9AF37C(v26, v22, 0);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B925AAC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DFC94(v21);

  sub_24BA8DA5C(v7);
  MEMORY[0x24C24FC10](v5);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F35E4(v7, &qword_27F063940);
}

uint64_t sub_24B924D3C(uint64_t a1)
{
  v2 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
  sub_24BAA99FC();
  swift_storeEnumTagMultiPayload();
  v5 = sub_24B92823C(a1);
  sub_24B925AF4(v4, type metadata accessor for Trigger);
  return v5 & 1;
}

uint64_t sub_24B924E24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B925048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v44 - v6;
  v7 = sub_24BAA8B9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v49 = sub_24BAA8F2C();
  v14 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B08);
  MEMORY[0x28223BE20](v46);
  v18 = &v44 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B10);
  MEMORY[0x28223BE20](v48);
  v20 = &v44 - v19;
  if (sub_24BAA8F1C())
  {
    v21 = *(a2 + *(type metadata accessor for WeekdayToggleStyle(0) + 20));
    if (v21)
    {
      v47 = v21;

      goto LABEL_7;
    }

    v23 = sub_24BAA974C();
  }

  else
  {
    v22 = [objc_opt_self() quaternaryLabelColor];
    v23 = sub_24BAA973C();
  }

  v47 = v23;
LABEL_7:
  KeyPath = swift_getKeyPath();
  v50 = a1;
  sub_24BAA8F3C();
  sub_24B924E24(v13);
  (*(v8 + 104))(v11, *MEMORY[0x277CE0280], v7);
  v24 = sub_24B927A18(v13, v11);
  v25 = *(v8 + 8);
  v25(v11, v7);
  v25(v13, v7);
  if (v24)
  {
    v26 = sub_24BAA916C();
  }

  else
  {
    v27 = sub_24BAA919C();
    v28 = v44;
    (*(*(v27 - 8) + 56))(v44, 1, 1, v27);
    v26 = sub_24BAA91FC();
    sub_24B8F35E4(v28, &qword_27F063CD8);
  }

  v29 = swift_getKeyPath();
  (*(v14 + 32))(v18, v16, v49);
  v30 = &v18[*(v46 + 36)];
  *v30 = v29;
  v30[1] = v26;
  if (sub_24BAA8F1C())
  {
    v31 = sub_24BAA982C();
  }

  else
  {
    v31 = sub_24BAA989C();
  }

  v32 = v31;
  v33 = swift_getKeyPath();
  sub_24B90294C(v18, v20, &qword_27F064B08);
  v34 = &v20[*(v48 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = sub_24BAA9D1C();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064AC8);
  v39 = v51;
  v40 = v51 + *(v38 + 36);
  sub_24B90294C(v20, v40, &qword_27F064B10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064AF8);
  v42 = (v40 + *(result + 36));
  *v42 = v35;
  v42[1] = v37;
  v43 = v47;
  *v39 = KeyPath;
  v39[1] = v43;
  return result;
}

uint64_t sub_24B925510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_24BAA866C();
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA8F4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064AC0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v22 = a1;
  v23 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064AC8);
  sub_24B927854();
  sub_24BAA9A5C();
  sub_24BAA865C();
  sub_24B8F384C(&qword_27F064B00, &qword_27F064AC0);
  sub_24B925AAC(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  v16 = v19;
  sub_24BAA944C();
  (*(v20 + 8))(v6, v16);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24B925858()
{
  v1 = (type metadata accessor for EditExistingScheduleTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24BAA7DCC();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = type metadata accessor for Trigger.Schedule(0);
  v6(v0 + v3 + *(v7 + 20), v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);

  v8 = v0 + v3 + v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v11 = sub_24BAA868C();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B925AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B925AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B925B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B925BF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[11];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24B925DA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F88);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_24B925F40()
{
  sub_24B9273EC(319, &qword_27F064958, type metadata accessor for Trigger.Schedule, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24B92614C(319, &qword_27F064960, &qword_27F064938, &unk_24BAAF888, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24B92646C(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24B92614C(319, &qword_27F064970, &qword_27F064978, &unk_24BAAF8E8, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24B8F47B4();
          if (v4 <= 0x3F)
          {
            sub_24B9273EC(319, &qword_27F063FB0, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24B92614C(319, &qword_27F063938, &qword_27F063940, &unk_24BAAD600, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
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

void sub_24B92614C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24B9261C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24B926294(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B926364()
{
  sub_24B8F45F4();
  if (v0 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v1 <= 0x3F)
    {
      sub_24B9273EC(319, &qword_27F064928, type metadata accessor for Trigger.Schedule, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B92646C(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B92646C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B9264BC()
{
  type metadata accessor for EditScheduleTriggerView(255);
  sub_24B925AAC(&qword_27F064940, type metadata accessor for EditScheduleTriggerView);
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B926594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9265FC@<X0>(char *a1@<X8>)
{
  type metadata accessor for EditScheduleTriggerView(0);

  return sub_24B920AE4(a1);
}

uint64_t objectdestroy_26Tm_0()
{
  v1 = type metadata accessor for EditScheduleTriggerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930) + 32);
  v6 = sub_24BAA7DCC();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for Trigger.Schedule(0);
  v7(v5 + *(v8 + 20), v6);

  if (*(v0 + v3 + v1[8]))
  {
  }

  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24BAA7F2C();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  v11 = v4 + v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v14 = sub_24BAA868C();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v16, v2 | 7);
}

uint64_t sub_24B926930(char *a1)
{
  type metadata accessor for EditScheduleTriggerView(0);

  return sub_24B920BA0(a1);
}

uint64_t sub_24B9269EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for EditScheduleTriggerView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t sub_24B926A8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EditScheduleTriggerView(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_24B926B78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = type metadata accessor for EditScheduleTriggerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064930) + 32);
  v6 = sub_24BAA7DCC();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = type metadata accessor for Trigger.Schedule(0);
  v7(v5 + *(v8 + 20), v6);

  if (*(v0 + v3 + v1[8]))
  {
  }

  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24BAA7F2C();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  v11 = v4 + v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v14 = sub_24BAA868C();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v16, v2 | 7);
}

uint64_t sub_24B926E9C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24B926F30()
{
  result = qword_27F0644F0;
  if (!qword_27F0644F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0644F0);
  }

  return result;
}

uint64_t sub_24B926F8C()
{
  v1 = (type metadata accessor for CreateScheduleTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v9 = *(*v1 + 64);

  v4 = v0 + v3 + v1[8];
  v5 = sub_24BAA7DCC();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = type metadata accessor for Trigger.Schedule(0);
  v6(v4 + *(v7 + 20), v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910);

  return MEMORY[0x2821FE8E8](v0, v3 + v9, v2 | 7);
}

uint64_t sub_24B927168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24B927250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_24B927314()
{
  sub_24B9273EC(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24B92646C(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B9273EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24B927454()
{
  result = qword_27F064AB8;
  if (!qword_27F064AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0649B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064990);
    sub_24BAA862C();
    sub_24B8F384C(&qword_27F0649B0, &qword_27F064990);
    sub_24B925AAC(&qword_27F064860, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064AB8);
  }

  return result;
}

uint64_t sub_24B9275A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064A98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064050);
  type metadata accessor for EditScheduleTriggerView(255);
  sub_24B925AAC(&qword_27F064940, type metadata accessor for EditScheduleTriggerView);
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064058);
  sub_24B8F384C(&qword_27F064060, &qword_27F064058);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B927730()
{
  v1 = sub_24BAA8F4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24B9277B8()
{
  sub_24BAA8F4C();
  v0 = sub_24BAA8F0C();
  *v1 = !*v1;
  return v0(&v3, 0);
}

unint64_t sub_24B927854()
{
  result = qword_27F064AD0;
  if (!qword_27F064AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064AC8);
    sub_24B92790C();
    sub_24B8F384C(&qword_27F064AF0, &qword_27F064AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064AD0);
  }

  return result;
}

unint64_t sub_24B92790C()
{
  result = qword_27F064AD8;
  if (!qword_27F064AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064AE0);
    sub_24B9279C4();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064AD8);
  }

  return result;
}

unint64_t sub_24B9279C4()
{
  result = qword_27F064AE8;
  if (!qword_27F064AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064AE8);
  }

  return result;
}

BOOL sub_24B927A18(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_24BAA8B9C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_24B927E38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064AC0);
  sub_24BAA866C();
  sub_24B8F384C(&qword_27F064B00, &qword_27F064AC0);
  sub_24B925AAC(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B927FA8(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  sub_24B914D68(0, v4, 0);
  v5 = v18;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v16 = v9;
    a1(v17, &v16);
    if (v3)
    {
      break;
    }

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_24B914D68((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B9280B8()
{
  v1 = sub_24BAA7DCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  v6 = type metadata accessor for Trigger.Schedule(0);
  sub_24B92B150(v0, v0 + *(v6 + 20), v4);
  v7 = sub_24BAA7D8C();
  v8 = sub_24BAA7D8C();
  v9 = [v5 stringFromDate:v7 toDate:v8];

  v10 = sub_24BAAA01C();
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_24B92823C(uint64_t a1)
{
  v104 = sub_24BAA7DCC();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B18);
  MEMORY[0x28223BE20](v4);
  v103 = &v99 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v101 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v105 = &v99 - v10;
  MEMORY[0x28223BE20](v9);
  v107 = &v99 - v11;
  v12 = type metadata accessor for Trigger.Schedule(0);
  v13 = MEMORY[0x28223BE20](v12);
  v108 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v99 - v15;
  v16 = type metadata accessor for Trigger(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v99 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v99 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B20);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v99 - v27;
  v29 = (&v99 + *(v26 + 56) - v27);
  sub_24B928E10(v1, &v99 - v27);
  sub_24B928E10(a1, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6 || swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_30;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_30;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_24B928E10(v28, v24);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_24B92B960(v24, type metadata accessor for Trigger.Schedule);
LABEL_30:
          sub_24B8F35E4(v28, &qword_27F064B20);
          v37 = 0;
          return v37 & 1;
        }

        v78 = v106;
        sub_24B92B9C0(v24, v106);
        sub_24B92B9C0(v29, v108);
        v79 = [*(v78 + *(v12 + 32)) creationDate];
        if (v79)
        {
          v80 = v107;
          v81 = v79;
          sub_24BAA7DAC();

          v82 = 0;
          v83 = v104;
          v84 = v103;
          v85 = v102;
        }

        else
        {
          v82 = 1;
          v83 = v104;
          v84 = v103;
          v85 = v102;
          v80 = v107;
        }

        v86 = *(v85 + 56);
        v87 = 1;
        v86(v80, v82, 1, v83);
        v88 = [*(v108 + *(v12 + 32)) creationDate];
        v89 = v105;
        if (v88)
        {
          v90 = v88;
          sub_24BAA7DAC();

          v87 = 0;
        }

        v86(v89, v87, 1, v83);
        v91 = *(v4 + 48);
        v92 = v107;
        sub_24B92BA24(v107, v84);
        sub_24B92BA24(v89, v84 + v91);
        v93 = *(v85 + 48);
        if (v93(v84, 1, v83) == 1)
        {
          sub_24B8F35E4(v89, &qword_27F063488);
          sub_24B8F35E4(v92, &qword_27F063488);
          if (v93(v84 + v91, 1, v83) == 1)
          {
            sub_24B8F35E4(v84, &qword_27F063488);
            v37 = 1;
LABEL_45:
            sub_24B92B960(v108, type metadata accessor for Trigger.Schedule);
            sub_24B92B960(v106, type metadata accessor for Trigger.Schedule);
            goto LABEL_46;
          }
        }

        else
        {
          v94 = v101;
          sub_24B92BA24(v84, v101);
          if (v93(v84 + v91, 1, v83) != 1)
          {
            v95 = v100;
            (*(v85 + 32))(v100, v84 + v91, v83);
            sub_24B92DA1C(&qword_27F064B28, MEMORY[0x277CC9578]);
            v96 = v94;
            v37 = sub_24BAA9F5C();
            v97 = *(v85 + 8);
            v97(v95, v83);
            sub_24B8F35E4(v105, &qword_27F063488);
            sub_24B8F35E4(v107, &qword_27F063488);
            v97(v96, v83);
            sub_24B8F35E4(v84, &qword_27F063488);
            goto LABEL_45;
          }

          sub_24B8F35E4(v105, &qword_27F063488);
          sub_24B8F35E4(v107, &qword_27F063488);
          (*(v85 + 8))(v94, v83);
        }

        sub_24B8F35E4(v84, &qword_27F064B18);
        v37 = 0;
        goto LABEL_45;
      }

      sub_24B928E10(v28, v22);
      v38 = v22[1];
      v111[0] = *v22;
      v111[1] = v38;
      v39 = v22[3];
      v111[2] = v22[2];
      v112 = v39;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_24B9142B0(v111);
        goto LABEL_30;
      }

      v40 = v29[1];
      v109[0] = *v29;
      v109[1] = v40;
      v41 = v29[3];
      v109[2] = v29[2];
      v110 = v41;
      v42 = *(&v112 + 1);
      v43 = [*(&v112 + 1) region];
      [v43 center];
      v45 = v44;

      v46 = *(&v110 + 1);
      v47 = [*(&v110 + 1) region];
      [v47 center];
      v49 = v48;

      if (v45 == v49 && (v50 = [v42 region], objc_msgSend(v50, sel_center), v52 = v51, v50, v53 = objc_msgSend(v46, sel_region), objc_msgSend(v53, sel_center), v55 = v54, v53, v52 == v55) && (v56 = objc_msgSend(v42, sel_region), v57 = objc_msgSend(v56, sel_geoReferenceFrame), v56, v58 = objc_msgSend(v46, sel_region), v59 = objc_msgSend(v58, sel_geoReferenceFrame), v58, v57 == v59) && (v60 = objc_msgSend(v42, sel_region), objc_msgSend(v60, sel_radius), v62 = v61, v60, v63 = objc_msgSend(v46, sel_region), objc_msgSend(v63, sel_radius), v65 = v64, v63, v62 == v65))
      {
        v66 = [v42 region];
        v67 = [v66 identifier];

        v68 = sub_24BAAA01C();
        v70 = v69;

        v71 = [v46 region];
        v72 = [v71 identifier];

        v73 = sub_24BAAA01C();
        v75 = v74;

        if (v68 == v73 && v70 == v75)
        {
          v37 = 1;
        }

        else
        {
          v37 = sub_24BAAA78C();
        }

        v76 = v109;
        v77 = v111;
      }

      else
      {
        v37 = 0;
        v76 = v111;
        v77 = v109;
      }

      sub_24B9142B0(v77);
      sub_24B9142B0(v76);
LABEL_46:
      sub_24B92B960(v28, type metadata accessor for Trigger);
      return v37 & 1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_24B928E10(v28, v19);
      v31 = *v19;
      v32 = v19[2];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_30;
      }

      v33 = *v29;
      v34 = *(v29 + 2);
      sub_24B8F37E8(0, &unk_27F067FA0);
      v35 = [v32 applicationIdentifier];
      v36 = [v34 applicationIdentifier];
      v37 = sub_24BAAA3CC();

      goto LABEL_46;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_30;
    }
  }

  sub_24B92B960(v29, type metadata accessor for Trigger);
  sub_24B92B960(v28, type metadata accessor for Trigger);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_24B928E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Trigger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B928E74@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = sub_24BAA7DCC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v48 = a1;
  v16 = [a1 timePeriod];
  v17 = [v16 startTime];

  sub_24B92A264(v17, v9);
  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) == 1)
  {
    v30 = &off_279018000;
    v31 = v48;
    v7 = v9;
  }

  else
  {
    v46 = v11;
    v19 = *(v11 + 32);
    v19(v15, v9, v10);
    v20 = [v48 timePeriod];
    v21 = [v20 endTime];

    sub_24B92A264(v21, v7);
    if (v18(v7, 1, v10) != 1)
    {
      v22 = v47;
      v19(v47, v7, v10);
      v23 = v48;
      v24 = [v48 timePeriod];
      v25 = [v24 weekdays];

      v26 = sub_24B92CCE4(v25);
      v27 = [v23 isEnabled];
      v19(a2, v15, v10);
      v28 = type metadata accessor for Trigger.Schedule(0);
      result = (v19)(&a2[v28[5]], v22, v10);
      *&a2[v28[6]] = v26;
      a2[v28[7]] = v27;
      *&a2[v28[8]] = v23;
      return result;
    }

    v30 = &off_279018000;
    v31 = v48;
    (*(v46 + 8))(v15, v10);
  }

  sub_24B8F35E4(v7, &qword_27F063488);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_24BAAA5FC();
  MEMORY[0x24C250160](0xD000000000000039, 0x800000024BAC0EE0);
  v32 = v30;
  v33 = [v31 *(v30 + 353)];
  v34 = [v33 startTime];

  v35 = [v34 description];
  v36 = sub_24BAAA01C();
  v38 = v37;

  MEMORY[0x24C250160](v36, v38);

  MEMORY[0x24C250160](32, 0xE100000000000000);
  v39 = [v31 v32 + 2715];
  v40 = [v39 endTime];

  v41 = [v40 description];
  v42 = sub_24BAAA01C();
  v44 = v43;

  MEMORY[0x24C250160](v42, v44);

  MEMORY[0x24C250160](41, 0xE100000000000000);
  result = sub_24BAAA6CC();
  __break(1u);
  return result;
}

uint64_t sub_24B92936C(uint64_t a1)
{
  sub_24BAAA7FC();
  sub_24BAA7DCC();
  sub_24B92DA1C(&qword_27F064C00, MEMORY[0x277CC9578]);
  sub_24BAA9F1C();
  sub_24BAA9F1C();
  sub_24B92C2F4(v4, *(v1 + *(a1 + 24)));
  sub_24BAAA81C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B929458(uint64_t a1, uint64_t a2)
{
  sub_24BAA7DCC();
  sub_24B92DA1C(&qword_27F064C00, MEMORY[0x277CC9578]);
  sub_24BAA9F1C();
  sub_24BAA9F1C();
  sub_24B92C2F4(a1, *(v2 + *(a2 + 24)));
  sub_24BAAA81C();
  return sub_24BAAA3DC();
}

uint64_t sub_24B92952C(uint64_t a1, uint64_t a2)
{
  sub_24BAAA7FC();
  sub_24BAA7DCC();
  sub_24B92DA1C(&qword_27F064C00, MEMORY[0x277CC9578]);
  sub_24BAA9F1C();
  sub_24BAA9F1C();
  sub_24B92C2F4(v5, *(v2 + *(a2 + 24)));
  sub_24BAAA81C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B929618()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C2508F0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x24C2508F0](*&v3);
  sub_24BAAA82C();
  v4 = v0[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x24C2508F0](*&v4);
  sub_24BAAA07C();
  return sub_24BAAA81C();
}

uint64_t sub_24B9296A8()
{
  sub_24BAAA7FC();
  sub_24B929618();
  return sub_24BAAA84C();
}

uint64_t sub_24B9296EC()
{
  sub_24BAAA7FC();
  sub_24B929618();
  return sub_24BAAA84C();
}

uint64_t sub_24B929728(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 24) != *(a2 + 24) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (sub_24BAAA78C() & 1) != 0)
  {
    return v6 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B9297CC()
{
  sub_24BAAA7FC();
  sub_24BAAA3DC();
  sub_24BAAA81C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B92983C()
{
  sub_24BAAA3DC();
  sub_24BAAA81C();
  return sub_24BAAA3DC();
}

uint64_t sub_24B929890()
{
  sub_24BAAA7FC();
  sub_24BAAA3DC();
  sub_24BAAA81C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B9298FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_24B8F37E8(0, &unk_27F067FA0);
  if (sub_24BAAA3CC() & 1) == 0 || ((v2 ^ v3))
  {
    return 0;
  }

  else
  {
    return sub_24BAAA3CC() & 1;
  }
}

uint64_t sub_24B9299AC()
{
  v1 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B928E10(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    return *v3;
  }

  sub_24B92B960(v3, type metadata accessor for Trigger);
  return 0;
}

uint64_t sub_24B929A70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_24B8F37E8(0, &unk_27F067FA0);
  return sub_24BAAA3CC() & 1;
}

uint64_t sub_24B929ADC()
{
  v1 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B928E10(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    return *v3;
  }

  sub_24B92B960(v3, type metadata accessor for Trigger);
  return 0;
}

uint64_t sub_24B929BA0()
{
  v1 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B928E10(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    return *v3;
  }

  sub_24B92B960(v3, type metadata accessor for Trigger);
  return 0;
}

uint64_t sub_24B929C64()
{
  sub_24BAAA7FC();
  sub_24BAAA81C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B929D08()
{
  sub_24BAAA7FC();
  sub_24BAAA81C();
  sub_24BAAA3DC();
  return sub_24BAAA84C();
}

uint64_t sub_24B929D64()
{
  v1 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B928E10(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    return *v3;
  }

  sub_24B92B960(v3, type metadata accessor for Trigger);
  return 0;
}

unint64_t sub_24B929E28()
{
  v1 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B928E10(v0, v3);
  v4 = 0x705060403020100uLL >> (8 * swift_getEnumCaseMultiPayload());
  sub_24B92B960(v3, type metadata accessor for Trigger);
  return v4;
}

void sub_24B929EEC(uint64_t a1)
{
  v3 = type metadata accessor for Trigger.Schedule(0);
  MEMORY[0x28223BE20](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B929E28();
  MEMORY[0x24C2508C0](v9);
  sub_24B928E10(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5 && EnumCaseMultiPayload != 6)
    {
      v15 = *v8;
      sub_24BAAA3DC();

      return;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *v8;
      v12 = *(v8 + 2);
      sub_24BAAA3DC();
      sub_24BAAA81C();
      sub_24BAAA3DC();

LABEL_11:
      return;
    }

LABEL_10:
    v11 = *(v8 + 1);
    sub_24BAAA81C();
    sub_24BAAA3DC();
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    v13 = *(v8 + 1);
    v16[0] = *v8;
    v16[1] = v13;
    v14 = *(v8 + 3);
    v16[2] = *(v8 + 2);
    v16[3] = v14;
    sub_24B929618();
    sub_24B9142B0(v16);
  }

  else
  {
    sub_24B92B9C0(v8, v5);
    sub_24BAA7DCC();
    sub_24B92DA1C(&qword_27F064C00, MEMORY[0x277CC9578]);
    sub_24BAA9F1C();
    sub_24BAA9F1C();
    sub_24B92C2F4(a1, *&v5[*(v3 + 24)]);
    sub_24BAAA81C();
    sub_24BAAA3DC();
    sub_24B92B960(v5, type metadata accessor for Trigger.Schedule);
  }
}

uint64_t sub_24B92A184()
{
  sub_24BAAA7FC();
  sub_24B929EEC(v1);
  return sub_24BAAA84C();
}

uint64_t sub_24B92A1C8()
{
  sub_24BAAA7FC();
  sub_24B929EEC(v1);
  return sub_24BAAA84C();
}

unint64_t sub_24B92A21C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B92E780(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_24B92A264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v18[0] = sub_24BAA7C1C();
  v9 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24BAA7F2C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7EFC();
  [a1 hour];
  [a1 minute];
  (*(v13 + 56))(v8, 1, 1, v12);
  v16 = sub_24BAA7F3C();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_24BAA7BFC();
  sub_24BAA7BAC();
  sub_24BAA7BEC();
  sub_24BAA7EEC();
  (*(v9 + 8))(v11, v18[0]);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24B92A5B4()
{
  v1 = v0;
  v2 = sub_24BAA7DCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v60 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B18);
  v6 = MEMORY[0x28223BE20](v5);
  v66 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v56[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v59 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v65 = &v56[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v72 = &v56[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v56[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v56[-v23];
  v63 = v3[2];
  v61 = v3 + 2;
  v63(&v56[-v23], v1, v2);
  v62 = v3[7];
  v62(v24, 0, 1, v2);
  v67 = type metadata accessor for Trigger.Schedule(0);
  v68 = v1;
  v69 = *(v1 + *(v67 + 32));
  v25 = [v69 timePeriod];
  v26 = [v25 startTime];

  sub_24B92A264(v26, v22);
  v64 = v5;
  v27 = *(v5 + 48);
  sub_24B92BA24(v24, v9);
  sub_24B92BA24(v22, &v9[v27]);
  v71 = v3;
  v28 = v3[6];
  if (v28(v9, 1, v2) == 1)
  {
    v58 = v15;
    v70 = v28;
    sub_24B8F35E4(v22, &qword_27F063488);
    sub_24B8F35E4(v24, &qword_27F063488);
    if (v70(&v9[v27], 1, v2) == 1)
    {
      sub_24B8F35E4(v9, &qword_27F063488);
      goto LABEL_8;
    }

LABEL_6:
    v29 = v9;
LABEL_14:
    sub_24B8F35E4(v29, &qword_27F064B18);
    goto LABEL_15;
  }

  sub_24B92BA24(v9, v72);
  if (v28(&v9[v27], 1, v2) == 1)
  {
    sub_24B8F35E4(v22, &qword_27F063488);
    sub_24B8F35E4(v24, &qword_27F063488);
    (v71[1])(v72, v2);
    goto LABEL_6;
  }

  v70 = v28;
  v58 = v15;
  v30 = v71;
  v31 = v60;
  (v71[4])(v60, &v9[v27], v2);
  sub_24B92DA1C(&qword_27F064B28, MEMORY[0x277CC9578]);
  v32 = v72;
  v57 = sub_24BAA9F5C();
  v33 = v30[1];
  v33(v31, v2);
  sub_24B8F35E4(v22, &qword_27F063488);
  sub_24B8F35E4(v24, &qword_27F063488);
  v33(v32, v2);
  sub_24B8F35E4(v9, &qword_27F063488);
  if ((v57 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v34 = v67;
  v35 = v65;
  v63(v65, v68 + *(v67 + 20), v2);
  v62(v35, 0, 1, v2);
  v36 = [v69 timePeriod];
  v37 = [v36 endTime];

  v38 = v58;
  sub_24B92A264(v37, v58);

  v39 = *(v64 + 48);
  v40 = v66;
  sub_24B92BA24(v35, v66);
  sub_24B92BA24(v38, &v40[v39]);
  v41 = v70;
  if (v70(v40, 1, v2) != 1)
  {
    v43 = v59;
    sub_24B92BA24(v40, v59);
    if (v41(&v40[v39], 1, v2) != 1)
    {
      v46 = v71;
      v47 = v60;
      (v71[4])(v60, &v40[v39], v2);
      sub_24B92DA1C(&qword_27F064B28, MEMORY[0x277CC9578]);
      v48 = sub_24BAA9F5C();
      v49 = v46[1];
      v49(v47, v2);
      sub_24B8F35E4(v38, &qword_27F063488);
      v42 = v69;
      sub_24B8F35E4(v35, &qword_27F063488);
      v49(v43, v2);
      sub_24B8F35E4(v40, &qword_27F063488);
      v34 = v67;
      if ((v48 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_24B8F35E4(v38, &qword_27F063488);
    sub_24B8F35E4(v35, &qword_27F063488);
    (v71[1])(v43, v2);
    goto LABEL_13;
  }

  sub_24B8F35E4(v38, &qword_27F063488);
  sub_24B8F35E4(v35, &qword_27F063488);
  if (v41(&v40[v39], 1, v2) != 1)
  {
LABEL_13:
    v29 = v40;
    goto LABEL_14;
  }

  sub_24B8F35E4(v40, &qword_27F063488);
  v42 = v69;
LABEL_18:
  v50 = v68;
  v51 = *(v68 + *(v34 + 28));
  if (v51 == [v42 isEnabled])
  {
    v52 = *(v50 + *(v34 + 24));
    v53 = [v42 timePeriod];
    v54 = [v53 weekdays];

    v55 = sub_24B92CCE4(v54);
    v44 = sub_24B981674(v52, v55);

    return v44 & 1;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

id sub_24B92AE44()
{
  v0 = sub_24BAA7C1C();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24BAA7F2C();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7EFC();
  v6 = [objc_allocWithZone(MEMORY[0x277D05A60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B30);
  v7 = sub_24BAA7F0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24BAAD820;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277CC9980], v7);
  v13(v12 + v9, *MEMORY[0x277CC99A0], v7);
  sub_24B8F28BC(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_24BAA7EAC();

  v14 = sub_24BAA7B9C();
  if (v15 & 1) != 0 || (v16 = v14, v17 = sub_24BAA7BDC(), (v18))
  {

    v6 = 0;
  }

  else
  {
    v19 = v17;
    [v6 setHour_];
    [v6 setMinute_];
  }

  (*(v23 + 8))(v2, v24);
  (*(v3 + 8))(v5, v22);
  return v6;
}

uint64_t sub_24B92B150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v57 = a2;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v36 - v4;
  v5 = sub_24BAA7F0C();
  v6 = *(v5 - 8);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24BAA7C1C();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v50 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - v13;
  v14 = sub_24BAA7F2C();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x28223BE20](v14);
  v58 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7EFC();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B30);
  v16 = *(v6 + 72);
  v48 = v6;
  v17 = *(v6 + 80);
  v45 = (v17 + 32) & ~v17;
  v46 = v45 + 6 * v16;
  v18 = swift_allocObject();
  v44 = xmmword_24BAAFC10;
  *(v18 + 16) = xmmword_24BAAFC10;
  v19 = v18 + ((v17 + 32) & ~v17);
  v43 = *MEMORY[0x277CC9978];
  v20 = *(v7 + 104);
  v20(v19);
  v59 = *MEMORY[0x277CC9988];
  v20(v19 + v16);
  v40 = 2 * v16;
  v60 = *MEMORY[0x277CC9998];
  v20(v19 + 2 * v16);
  v41 = 3 * v16;
  v61 = *MEMORY[0x277CC9968];
  v20(v19 + 3 * v16);
  v36 = 4 * v16;
  v39 = *MEMORY[0x277CC9980];
  v20(v19 + 4 * v16);
  v38 = 5 * v16;
  v37 = *MEMORY[0x277CC99A0];
  v20(v19 + 5 * v16);
  sub_24B8F28BC(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_24BAA7EAC();

  v21 = swift_allocObject();
  *(v21 + 16) = v44;
  v22 = v21 + v45;
  v23 = v43;
  (v20)(v21 + v45, v43, v5);
  (v20)(v22 + v16, v59, v5);
  (v20)(v22 + v40, v60, v5);
  (v20)(v22 + v41, v61, v5);
  (v20)(v22 + v36, v39, v5);
  (v20)(v22 + v38, v37, v5);
  sub_24B8F28BC(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v24 = v50;
  sub_24BAA7EAC();

  v25 = v42;
  sub_24BAA7B8C();
  (v20)(v9, v23, v5);
  sub_24BAA7C0C();
  v26 = *(v48 + 8);
  v26(v9, v5);
  sub_24BAA7BBC();
  (v20)(v9, v59, v5);
  sub_24BAA7C0C();
  v26(v9, v5);
  sub_24BAA7BCC();
  (v20)(v9, v60, v5);
  sub_24BAA7C0C();
  v26(v9, v5);
  sub_24BAA7B7C();
  (v20)(v9, v61, v5);
  sub_24BAA7C0C();
  v27 = v5;
  v28 = v55;
  v26(v9, v27);
  v29 = v58;
  sub_24BAA7EEC();
  v30 = v54;
  v31 = *(v53 + 8);
  v31(v24, v54);
  v31(v25, v30);
  (*(v51 + 8))(v29, v52);
  v32 = sub_24BAA7DCC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v28, 1, v32) != 1)
  {
    return (*(v33 + 32))(v56, v28, v32);
  }

  (*(v33 + 16))(v56, v57, v32);
  result = (v34)(v28, 1, v32);
  if (result != 1)
  {
    return sub_24B8F35E4(v28, &qword_27F063488);
  }

  return result;
}

uint64_t sub_24B92B8F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  result = a2();
  if (*(result + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    v6 = result + 16 * v4;
    v8 = *(v6 + 32);
    v7 = *(v6 + 40);

    *a3 = v8;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_24B92B960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B92B9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Trigger.Schedule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B92BA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B92BA94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B9A0644(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_24BAAA75C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24BAAA15C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_24B92BBCC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B92BBCC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_24B99FEB4(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_24B92C108((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B99A39C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_24B99A39C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_24B92C108((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24B99FEB4(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_24B99FE28(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_24B92C108(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_24B92C2F4(uint64_t a1, uint64_t a2)
{
  result = sub_24BAAA84C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24BAAA7FC();
    MEMORY[0x24C2508C0](v12);
    result = sub_24BAAA84C();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C2508C0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B92C420(uint64_t a1, uint64_t a2)
{
  if ((sub_24BAA7D9C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Trigger.Schedule(0);
  if ((sub_24BAA7D9C() & 1) == 0 || (sub_24B981674(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0 || *(a1 + *(v4 + 28)) != *(a2 + *(v4 + 28)))
  {
    return 0;
  }

  sub_24B8F37E8(0, &unk_27F067FA0);
  return sub_24BAAA3CC() & 1;
}

uint64_t sub_24B92C4D8(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v66 = type metadata accessor for Trigger.Schedule(0);
  v3 = MEMORY[0x28223BE20](v66);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v66 - v5;
  v6 = type metadata accessor for Trigger(0);
  v7 = MEMORY[0x28223BE20](v6);
  v69 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v70 = &v66 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v66 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v66 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v66 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B20);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v66 - v30;
  v32 = &v66 + *(v29 + 56) - v30;
  sub_24B928E10(v71, &v66 - v30);
  v33 = a2;
  v34 = v32;
  sub_24B928E10(v33, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v46 = v70;
        sub_24B928E10(v31, v70);
        v47 = *(v46 + 1);
        if (swift_getEnumCaseMultiPayload() != 6)
        {

          v36 = v31;
          goto LABEL_45;
        }

        v48 = *(v32 + 1);
        if (*v46 == *v32)
        {
          sub_24B8F37E8(0, &unk_27F067FA0);
          v39 = sub_24BAAA3CC();
        }

        else
        {
          v39 = 0;
        }

        v63 = v31;
LABEL_60:
        sub_24B92B960(v63, type metadata accessor for Trigger);
        return v39 & 1;
      }

      v36 = v31;
      v59 = v69;
      sub_24B928E10(v31, v69);
      v53 = *v59;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v55 = *v32;
        goto LABEL_37;
      }
    }

    else
    {
      v36 = v31;
      if (EnumCaseMultiPayload == 4)
      {
        sub_24B928E10(v31, v16);
        v37 = *(v16 + 1);
        if (swift_getEnumCaseMultiPayload() != 4)
        {

          goto LABEL_45;
        }

        v38 = *(v34 + 1);
        if (*v16 == *v34)
        {
          sub_24B8F37E8(0, &unk_27F067FA0);
          v39 = sub_24BAAA3CC();
        }

        else
        {
          v39 = 0;
        }

        goto LABEL_59;
      }

      sub_24B928E10(v31, v13);
      v53 = *(v13 + 1);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v54 = *v13;
        v55 = *(v32 + 1);
        if (v54 != *v32)
        {
          v39 = 0;
LABEL_38:

          goto LABEL_59;
        }

LABEL_37:
        sub_24B8F37E8(0, &unk_27F067FA0);
        v39 = sub_24BAAA3CC();
        goto LABEL_38;
      }
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v36 = v31;
    if (EnumCaseMultiPayload == 2)
    {
      sub_24B928E10(v31, v22);
      v40 = *v22;
      v41 = *(v22 + 2);
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_45;
      }

      v42 = v22[8];
      v43 = *v32;
      v44 = v32[8];
      v45 = *(v32 + 2);
      sub_24B8F37E8(0, &unk_27F067FA0);
      v39 = 0;
      if ((sub_24BAAA3CC() & 1) != 0 && ((v42 ^ v44) & 1) == 0)
      {
        v39 = sub_24BAAA3CC();
      }
    }

    else
    {
      sub_24B928E10(v31, v19);
      v56 = *(v19 + 1);
      v57 = swift_getEnumCaseMultiPayload();
      if (v57 != 3)
      {

        goto LABEL_45;
      }

      v58 = *(v32 + 1);
      if (*v19 == *v32)
      {
        sub_24B8F37E8(0, &unk_27F067FA0);
        v39 = sub_24BAAA3CC();
      }

      else
      {
        v39 = 0;
      }
    }

    goto LABEL_59;
  }

  v36 = v31;
  if (EnumCaseMultiPayload)
  {
    sub_24B928E10(v31, v25);
    v49 = v25[1];
    v76 = *v25;
    v77 = v49;
    v50 = v25[3];
    v78 = v25[2];
    v79 = v50;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_24B9142B0(&v76);
      goto LABEL_45;
    }

    v51 = *(v32 + 1);
    v72 = *v32;
    v73 = v51;
    v52 = *(v32 + 3);
    v74 = *(v32 + 2);
    v75 = v52;
    if (*&v76 == *&v72 && *(&v76 + 1) == *(&v72 + 1) && DWORD2(v77) == DWORD2(v73) && *&v77 == *&v73)
    {
      if (v78 == v74)
      {
        sub_24B9142B0(&v72);
        sub_24B9142B0(&v76);
LABEL_63:
        v39 = v79 ^ v75 ^ 1;
        goto LABEL_59;
      }

      v65 = sub_24BAAA78C();
      sub_24B9142B0(&v72);
      sub_24B9142B0(&v76);
      v39 = 0;
      if (v65)
      {
        goto LABEL_63;
      }
    }

    else
    {
      sub_24B9142B0(&v72);
      sub_24B9142B0(&v76);
      v39 = 0;
    }

LABEL_59:
    v63 = v36;
    goto LABEL_60;
  }

  sub_24B928E10(v31, v27);
  if (!swift_getEnumCaseMultiPayload())
  {
    v60 = v67;
    sub_24B92B9C0(v27, v67);
    v61 = v68;
    sub_24B92B9C0(v32, v68);
    if (sub_24BAA7D9C() & 1) != 0 && (v62 = v66, (sub_24BAA7D9C()) && (sub_24B981674(*(v60 + *(v62 + 24)), *(v61 + *(v62 + 24))) & 1) != 0 && *(v60 + *(v62 + 28)) == *(v61 + *(v62 + 28)))
    {
      sub_24B8F37E8(0, &unk_27F067FA0);
      v39 = sub_24BAAA3CC();
    }

    else
    {
      v39 = 0;
    }

    sub_24B92B960(v61, type metadata accessor for Trigger.Schedule);
    sub_24B92B960(v60, type metadata accessor for Trigger.Schedule);
    goto LABEL_59;
  }

  sub_24B92B960(v27, type metadata accessor for Trigger.Schedule);
LABEL_45:
  sub_24B8F35E4(v36, &qword_27F064B20);
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_24B92CCE4(char a1)
{
  v10 = MEMORY[0x277D84FA0];
  if ((a1 & 0x40) != 0)
  {
    sub_24B8E523C(&v3, 0);
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_24B8E523C(&v4, 1);
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_24B8E523C(&v5, 2);
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_24B8E523C(&v6, 3);
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_24B8E523C(&v8, 5);
    if ((a1 & 0x20) == 0)
    {
      return v10;
    }

    goto LABEL_8;
  }

LABEL_14:
  sub_24B8E523C(&v7, 4);
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((a1 & 0x20) != 0)
  {
LABEL_8:
    sub_24B8E523C(&v9, 6);
  }

  return v10;
}

uint64_t sub_24B92CDC4(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  for (i = v4 & *(result + 56); i; v2 |= qword_24BAB0270[*(*(result + 48) + (v7 | (v6 << 6)))])
  {
    v6 = v1;
LABEL_9:
    v7 = __clz(__rbit64(i));
    i &= i - 1;
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return v2;
    }

    i = *(result + 56 + 8 * v6);
    ++v1;
    if (i)
    {
      v1 = v6;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Weekday(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Weekday(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B92CFD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B92D01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B92D090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BAA7DCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B92D160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24BAA7DCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24B92D218()
{
  sub_24BAA7DCC();
  if (v0 <= 0x3F)
  {
    sub_24B92D2CC();
    if (v1 <= 0x3F)
    {
      sub_24B8F37E8(319, &qword_27F064B60);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B92D2CC()
{
  if (!qword_27F064B58)
  {
    sub_24B8F3E00();
    v0 = sub_24BAAA25C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F064B58);
    }
  }
}

uint64_t sub_24B92D378()
{
  result = type metadata accessor for Trigger.Schedule(319);
  if (v1 <= 0x3F)
  {
    result = sub_24B8F37E8(319, &qword_27F063490);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B92D470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B92D4B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B92D518(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B92D560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B92D5B4()
{
  result = qword_27F064B78;
  if (!qword_27F064B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064B78);
  }

  return result;
}

unint64_t sub_24B92D608(uint64_t a1)
{
  result = sub_24B92D630();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B92D630()
{
  result = qword_27F064B80;
  if (!qword_27F064B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064B80);
  }

  return result;
}

unint64_t sub_24B92D688()
{
  result = qword_27F064B88;
  if (!qword_27F064B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064B88);
  }

  return result;
}

unint64_t sub_24B92D6DC(uint64_t a1)
{
  result = sub_24B92D704();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B92D704()
{
  result = qword_27F064B90;
  if (!qword_27F064B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064B90);
  }

  return result;
}

unint64_t sub_24B92D75C()
{
  result = qword_27F064B98;
  if (!qword_27F064B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064B98);
  }

  return result;
}

unint64_t sub_24B92D7B0(uint64_t a1)
{
  result = sub_24B92D7D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B92D7D8()
{
  result = qword_27F064BA0;
  if (!qword_27F064BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BA0);
  }

  return result;
}

unint64_t sub_24B92D830()
{
  result = qword_27F064BA8;
  if (!qword_27F064BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BA8);
  }

  return result;
}

unint64_t sub_24B92D884(uint64_t a1)
{
  result = sub_24B92D8AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B92D8AC()
{
  result = qword_27F064BB0;
  if (!qword_27F064BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BB0);
  }

  return result;
}

unint64_t sub_24B92D904()
{
  result = qword_27F064BB8;
  if (!qword_27F064BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BB8);
  }

  return result;
}

unint64_t sub_24B92D958(uint64_t a1)
{
  result = sub_24B92D980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B92D980()
{
  result = qword_27F064BC0;
  if (!qword_27F064BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BC0);
  }

  return result;
}

uint64_t sub_24B92DA1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B92DAAC(uint64_t a1)
{
  result = sub_24B92DA1C(&qword_27F064BD8, type metadata accessor for Trigger.Schedule);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B92DB08()
{
  result = qword_27F064BE0;
  if (!qword_27F064BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BE0);
  }

  return result;
}

unint64_t sub_24B92DB5C(uint64_t a1)
{
  result = sub_24B92DB84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24B92DB84()
{
  result = qword_27F064BE8;
  if (!qword_27F064BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BE8);
  }

  return result;
}

unint64_t sub_24B92DC20()
{
  result = qword_27F064BF8;
  if (!qword_27F064BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064BF8);
  }

  return result;
}

uint64_t sub_24B92DC74(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 16))
  {
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v25 = 0xE000000000000000;
    return sub_24BAA7C2C();
  }

  v27 = a2;
  v29 = MEMORY[0x277D84FA0];
  v30 = MEMORY[0x277D84FA0];
  v3 = objc_opt_self();
  v4 = byte_285EBE840;
  [v3 weekdayIsWeekend_];
  sub_24B8E523C(&v28, v4);
  v5 = byte_285EBE841;
  [v3 weekdayIsWeekend_];
  sub_24B8E523C(&v28, v5);
  v6 = byte_285EBE842;
  [v3 weekdayIsWeekend_];
  sub_24B8E523C(&v28, v6);
  v7 = byte_285EBE843;
  [v3 weekdayIsWeekend_];
  sub_24B8E523C(&v28, v7);
  v8 = byte_285EBE844;
  [v3 weekdayIsWeekend_];
  sub_24B8E523C(&v28, v8);
  v9 = byte_285EBE845;
  [v3 weekdayIsWeekend_];
  sub_24B8E523C(&v28, v9);
  v10 = byte_285EBE846;
  [v3 weekdayIsWeekend_];
  sub_24B8E523C(&v28, v10);
  if (sub_24B981674(a1, v30))
  {

    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v25 = 0xE000000000000000;
    return sub_24BAA7C2C();
  }

  if (sub_24B981674(a1, v29))
  {

    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v25 = 0xE000000000000000;
    return sub_24BAA7C2C();
  }

  v11 = sub_24B8F14D8(qword_285EBE820);
  v12 = sub_24B981674(a1, v11);

  if (v12)
  {

    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v25 = 0xE000000000000000;
    return sub_24BAA7C2C();
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = sub_24BAA3A1C(*(a1 + 16), 0);
  v26 = sub_24BAA4550(&v28, v15 + 32, v14, a1);

  sub_24B8F0C5C();
  if (v26 != v14)
  {
    __break(1u);
LABEL_22:
    v15 = MEMORY[0x277D84F90];
  }

  v28 = v15;
  v16 = sub_24B92BA94(&v28);
  v17 = v28;
  MEMORY[0x28223BE20](v16);
  v25 = v27;
  v18 = sub_24B927FA8(sub_24B92E790, &v24, v17);

  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v25 = 0xE000000000000000;
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24BAAD5B0;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066A30);
  sub_24B8F384C(&qword_27F064C08, &unk_27F066A30);
  v20 = sub_24BAAA0FC();
  v22 = v21;

  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_24B8F6A20();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_24BAAA03C();

  return v23;
}

uint64_t sub_24B92E2D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24B8F2CE0(&unk_285EBEE98);
  v5 = sub_24B981674(v4, a1);

  if (v5 & 1) != 0 || (v6 = sub_24B8F2CE0(&unk_285EBEEC0), v7 = sub_24B981674(v6, a1), , (v7) || (v8 = sub_24B8F14D8(qword_285EBE820), v9 = sub_24B981674(v8, a1), , (v9) || (sub_24B981674(MEMORY[0x277D84FA0], a1))
  {

    return sub_24B92DC74(a1, a2);
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = sub_24BAA3A1C(*(a1 + 16), 0);
  v13 = sub_24BAA4550(&v24, v12 + 32, v11, a1);

  sub_24B8F0C5C();
  if (v13 != v11)
  {
    __break(1u);
LABEL_11:
    v12 = MEMORY[0x277D84F90];
  }

  v24 = v12;
  v14 = sub_24B92BA94(&v24);
  v15 = v24;
  MEMORY[0x28223BE20](v14);
  v23 = a2;
  v16 = sub_24B927FA8(sub_24B92E7C4, &v22, v15);

  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v23 = 0xE000000000000000;
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24BAAD5B0;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066A30);
  sub_24B8F384C(&qword_27F064C08, &unk_27F066A30);
  v18 = sub_24BAAA0FC();
  v20 = v19;

  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_24B8F6A20();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = sub_24BAAA03C();

  return v21;
}

void sub_24B92E638(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 isEnabled];
  v5 = [a1 region];
  [v5 center];
  v7 = v6;
  v9 = v8;

  v10 = [a1 region];
  [v10 radius];
  v12 = v11;

  v13 = [a1 region];
  v14 = [v13 geoReferenceFrame];

  v15 = [a1 region];
  v16 = [v15 identifier];

  v17 = sub_24BAAA01C();
  v19 = v18;

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v4;
  *(a2 + 56) = a1;
}

unint64_t sub_24B92E780(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_24B92E898(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24B92E968(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24B92EA38()
{
  sub_24B8F45F4();
  if (v0 <= 0x3F)
  {
    sub_24B93070C(319, &qword_27F064C20, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24B8F4644();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B92EB0C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for EditGameControllerTriggerView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C48);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v31 = *(v1 + 16);
  v32 = v8;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C38);
  sub_24BAA9A1C();
  v10 = v28;
  v11 = v29;
  v12 = v30;
  *v4 = v27;
  *(v4 + 1) = v10;
  v4[16] = v11;
  *(v4 + 3) = v12;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B930418(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *(v4 + 4) = sub_24BAA86FC();
  *(v4 + 5) = v13;
  v14 = *(v2 + 24);
  *&v4[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v27 = sub_24BAA7C2C();
  v28 = v15;
  v16 = sub_24B930418(&qword_27F064C40, type metadata accessor for EditGameControllerTriggerView);
  v17 = sub_24B8F5E3C();
  v18 = MEMORY[0x277D837D0];
  sub_24BAA952C();

  v19 = sub_24B930D90(v4, type metadata accessor for EditGameControllerTriggerView);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  v27 = v2;
  v28 = v18;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v21 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v27 = v20;
  v28 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_24BAA96CC();
  return (*(v24 + 8))(v7, v22);
}

uint64_t sub_24B92EF24(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B92F110(uint64_t a1)
{
  GameControllerTriggerView = type metadata accessor for CreateGameControllerTriggerView(0);
  v3 = *(GameControllerTriggerView - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](GameControllerTriggerView - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24B93098C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateGameControllerTriggerView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24B9309F8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CreateGameControllerTriggerView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24B92F2B4(uint64_t a1)
{
  v2 = sub_24BAA868C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940);
  MEMORY[0x28223BE20](v3);
  v5 = &v11[-v4];
  v6 = *a1;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v13 = *(a1 + 16);
  v14 = v7;
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C38);
  sub_24BAA99FC();
  v9 = v12;
  v6(v11[8], v12);

  type metadata accessor for CreateGameControllerTriggerView(0);
  sub_24BA8DA5C(v5);
  MEMORY[0x24C24FC10](v3);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F6050(v5);
}

uint64_t sub_24B92F444@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_24BAA862C();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v22 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C68);
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - v5;
  v6 = type metadata accessor for EditGameControllerTriggerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_24B93098C(v1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditGameControllerTriggerView);
  sub_24BAAA1BC();
  v9 = sub_24BAAA1AC();
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  sub_24B9309F8(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for EditGameControllerTriggerView);
  sub_24B93098C(v1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditGameControllerTriggerView);
  v13 = sub_24BAAA1AC();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  sub_24B9309F8(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10, type metadata accessor for EditGameControllerTriggerView);
  sub_24BAA9B9C();
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C70);
  sub_24B930CB8();
  v15 = v21;
  sub_24BAA92BC();
  v16 = v22;
  sub_24BAA9D7C();
  sub_24B8F384C(&qword_27F064C80, &qword_27F064C68);
  sub_24B930418(&qword_27F064860, MEMORY[0x277CDDAB8]);
  v17 = v25;
  v18 = v23;
  sub_24BAA96EC();

  (*(v27 + 8))(v16, v17);
  return (*(v24 + 8))(v15, v18);
}

void sub_24B92F834(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8[2] = *a1;
  v8[3] = v3;
  v9 = v4;
  v10 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C88);
  MEMORY[0x24C24FC10](v8, v6);
  v7 = v8[0];

  *a2 = v7;
}

uint64_t sub_24B92F8A4(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v11 = a4[1];
  v12 = *(a4 + 16);
  v13 = a4[3];
  v24 = *a4;
  v10 = v24;
  v25 = v11;
  v26 = v12;
  v27 = v13;

  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C88);
  MEMORY[0x24C24FC10](v28);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v14;
  v18[0] = v9;
  v19 = v28[1];
  sub_24BAA9B6C();

  if (a4[4])
  {
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v27 = v14;

    MEMORY[0x24C24FC10](&v20, v15);
    v16 = v21;
    *v8 = v20;
    *(v8 + 1) = v16;
    swift_storeEnumTagMultiPayload();
    sub_24B991000(v8);

    return sub_24B930D90(v8, type metadata accessor for Trigger);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B930418(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B92FAA8()
{
  sub_24B92FD44();
  sub_24B8F5E3C();
  sub_24BAA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064880);
  sub_24B8F384C(&qword_27F064888, &qword_27F064880);
  return sub_24BAA9C2C();
}

uint64_t sub_24B92FBA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648C8);
  return sub_24B92FC18(a1 + *(v2 + 44));
}

uint64_t sub_24B92FC18@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  v2 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_24B92FD44()
{
  v1 = v0;
  if (!v0[4])
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B930418(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v2 = sub_24B8D7188();

  if (v2)
  {
    v3 = [v2 mode];

    v4 = [v3 semanticType];

    if (v4 == 7)
    {
      v5 = v1[1];
      v6 = *(v1 + 16);
      v7 = v1[3];
      v27 = *v1;
      v28 = v5;
      v29 = v6;
      v30 = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C88);
      MEMORY[0x24C24FC10](&v25, v8);
      v9 = v25;

      if (v9 == 1)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }
      }

      else if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      swift_once();
      return sub_24BAA7C2C();
    }
  }

  else
  {
  }

  v10 = v1[1];
  v11 = *(v1 + 16);
  v12 = v1[3];
  v27 = *v1;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C88);
  MEMORY[0x24C24FC10](&v25, v13);
  v14 = v25;

  if (v14 == 1)
  {
    if (qword_27F063110 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  if (qword_27F063110 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_12:
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24BAAD5B0;

  sub_24B984444();
  v16 = sub_24B8D7188();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 mode];

    v19 = [v18 name];
    v20 = sub_24BAAA01C();
    v22 = v21;
  }

  else
  {

    v20 = 0;
    v22 = 0xE000000000000000;
  }

  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_24B8F6A20();
  *(v15 + 32) = v20;
  *(v15 + 40) = v22;
  v23 = sub_24BAA9FEC();

  return v23;
}

uint64_t sub_24B93019C()
{
  v1 = type metadata accessor for EditGameControllerTriggerView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v18 = *v0;
  v19 = v4;
  v20 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064C38);
  sub_24BAA9A1C();
  v6 = v15;
  v7 = v16;
  v8 = v17;
  *v3 = v14;
  *(v3 + 1) = v6;
  v3[16] = v7;
  *(v3 + 3) = v8;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B930418(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *(v3 + 4) = sub_24BAA86FC();
  *(v3 + 5) = v9;
  v10 = *(v1 + 24);
  *&v3[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v14 = sub_24BAA7C2C();
  v15 = v11;
  sub_24B930418(&qword_27F064C40, type metadata accessor for EditGameControllerTriggerView);
  sub_24B8F5E3C();
  sub_24BAA952C();

  return sub_24B930D90(v3, type metadata accessor for EditGameControllerTriggerView);
}

uint64_t sub_24B930418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B930470()
{
  v1 = (type metadata accessor for CreateGameControllerTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9305C0()
{
  v1 = *(type metadata accessor for CreateGameControllerTriggerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24B92F2B4(v2);
}

void sub_24B930668(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, ValueMetadata *))
{
  sub_24B93070C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v6 <= 0x3F)
    {
      sub_24B8F4644();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B93070C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Trigger.GameController);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B930760()
{
  type metadata accessor for EditGameControllerTriggerView(255);
  sub_24B930418(&qword_27F064C40, type metadata accessor for EditGameControllerTriggerView);
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B9307FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064C48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
  type metadata accessor for EditGameControllerTriggerView(255);
  sub_24B930418(&qword_27F064C40, type metadata accessor for EditGameControllerTriggerView);
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B93098C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9309F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24B930A60(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for EditGameControllerTriggerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24B92F834(v4, a1);
}

uint64_t objectdestroy_26Tm_1()
{
  v1 = (type metadata accessor for EditGameControllerTriggerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063940) + 32);
    v8 = sub_24BAA868C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B930C34(char *a1)
{
  v3 = *(type metadata accessor for EditGameControllerTriggerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_24B92F8A4(a1, v4, v5, v6);
}

unint64_t sub_24B930CB8()
{
  result = qword_27F064C78;
  if (!qword_27F064C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064C70);
    sub_24B8F384C(&qword_27F064888, &qword_27F064880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064C78);
  }

  return result;
}

uint64_t sub_24B930D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B930DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064C68);
  sub_24BAA862C();
  sub_24B8F384C(&qword_27F064C80, &qword_27F064C68);
  sub_24B930418(&qword_27F064860, MEMORY[0x277CDDAB8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B930EDC()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier;
  v2 = sub_24BAA7E4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WatchFace()
{
  result = qword_27F064C90;
  if (!qword_27F064C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B931000()
{
  result = sub_24BAA7E4C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B9310C0()
{
  result = qword_27F064CA0;
  if (!qword_27F064CA0)
  {
    type metadata accessor for WatchFace();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064CA0);
  }

  return result;
}

uint64_t sub_24B931118@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WatchFace();
  result = sub_24BAAA60C();
  *a1 = result;
  return result;
}