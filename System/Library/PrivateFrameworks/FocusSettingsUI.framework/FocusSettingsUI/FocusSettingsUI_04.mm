uint64_t sub_24B93115C(void *a1, uint64_t *a2)
{
  v4 = sub_24BAA7E4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *a2;
  v12 = *(v5 + 16);
  v12(&v15 - v9, *a1 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v4);
  v12(v8, v11 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v4);
  LOBYTE(v11) = sub_24BAA7E0C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  return v11 & 1;
}

uint64_t sub_24B931340(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_24B931410(void *result, uint64_t a2, int a3, uint64_t a4)
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

void sub_24B9314E0()
{
  sub_24B8F45F4();
  if (v0 <= 0x3F)
  {
    sub_24B932CAC(319, &qword_27F064CB8, MEMORY[0x277CE10B8]);
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

void sub_24B931600(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, ValueMetadata *))
{
  sub_24B932CAC(319, a4, a5);
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

uint64_t sub_24B9316C0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for EditMindfulnessTriggerView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064CD0);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v31 = *(v1 + 16);
  v32 = v8;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064CD8);
  sub_24BAA9A1C();
  v10 = v28;
  v11 = v29;
  v12 = v30;
  *v4 = v27;
  *(v4 + 1) = v10;
  v4[16] = v11;
  *(v4 + 3) = v12;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B932A54(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
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
  v16 = sub_24B932A54(&qword_27F064CE0, type metadata accessor for EditMindfulnessTriggerView);
  v17 = sub_24B8F5E3C();
  v18 = MEMORY[0x277D837D0];
  sub_24BAA952C();

  v19 = sub_24B933304(v4, type metadata accessor for EditMindfulnessTriggerView);
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

uint64_t sub_24B931ADC(uint64_t a1)
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

uint64_t sub_24B931CC8(uint64_t a1)
{
  MindfulnessTriggerView = type metadata accessor for CreateMindfulnessTriggerView(0);
  v3 = *(MindfulnessTriggerView - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](MindfulnessTriggerView - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24B932F2C(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateMindfulnessTriggerView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24B932F98(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CreateMindfulnessTriggerView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24B931E6C(uint64_t a1)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064CD8);
  sub_24BAA99FC();
  v9 = v12;
  v6(v11[8], v12);

  type metadata accessor for CreateMindfulnessTriggerView(0);
  sub_24BA8DA5C(v5);
  MEMORY[0x24C24FC10](v3);
  sub_24BAA867C();
  sub_24BAA9B6C();
  return sub_24B8F6050(v5);
}

uint64_t sub_24B931FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[1] = a1;
  v3 = type metadata accessor for EditMindfulnessTriggerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24B932F2C(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditMindfulnessTriggerView);
  sub_24BAAA1BC();
  v6 = sub_24BAAA1AC();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_24B932F98(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for EditMindfulnessTriggerView);
  sub_24B932F2C(v1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EditMindfulnessTriggerView);
  v10 = sub_24BAAA1AC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  sub_24B932F98(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for EditMindfulnessTriggerView);
  sub_24BAA9B9C();
  v13[4] = v2;
  v13[5] = v15;
  v13[6] = v16;
  v14 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D00);
  sub_24B933258();
  sub_24BAA92BC();
}

void sub_24B932200(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8[2] = *a1;
  v8[3] = v3;
  v9 = v4;
  v10 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D10);
  MEMORY[0x24C24FC10](v8, v6);
  v7 = v8[0];

  *a2 = v7;
}

uint64_t sub_24B932270(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D10);
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

    return sub_24B933304(v8, type metadata accessor for Trigger);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B932A54(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B932474(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v12 = *a1;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D10);
  MEMORY[0x24C24FC10](v11, v4);
  v5 = LOBYTE(v11[0]);

  if (v5 == 1)
  {
    if (qword_27F063110 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27F063110 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v12 = sub_24BAA7C2C();
  v13 = v6;
  sub_24B8F5E3C();
  v12 = sub_24BAA93CC();
  v13 = v7;
  v14 = v8 & 1;
  v15 = v9;
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639B8);
  sub_24B8F68B8();
  return sub_24BAA9C4C();
}

uint64_t sub_24B932688@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_24B9327B8()
{
  v1 = type metadata accessor for EditMindfulnessTriggerView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v18 = *v0;
  v19 = v4;
  v20 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064CD8);
  sub_24BAA9A1C();
  v6 = v15;
  v7 = v16;
  v8 = v17;
  *v3 = v14;
  *(v3 + 1) = v6;
  v3[16] = v7;
  *(v3 + 3) = v8;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B932A54(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
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
  sub_24B932A54(&qword_27F064CE0, type metadata accessor for EditMindfulnessTriggerView);
  sub_24B8F5E3C();
  sub_24BAA952C();

  return sub_24B933304(v3, type metadata accessor for EditMindfulnessTriggerView);
}

uint64_t sub_24B932A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B932AAC()
{
  v1 = (type metadata accessor for CreateMindfulnessTriggerView(0) - 8);
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

uint64_t sub_24B932BFC()
{
  v1 = *(type metadata accessor for CreateMindfulnessTriggerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24B931E6C(v2);
}

void sub_24B932CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Trigger.Mindfulness);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24B932D00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064CD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
  type metadata accessor for EditMindfulnessTriggerView(255);
  sub_24B932A54(&qword_27F064CE0, type metadata accessor for EditMindfulnessTriggerView);
  sub_24B8F5E3C();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B932E74()
{
  type metadata accessor for EditMindfulnessTriggerView(255);
  sub_24B932A54(&qword_27F064CE0, type metadata accessor for EditMindfulnessTriggerView);
  sub_24B8F5E3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B932F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B932F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24B933000(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for EditMindfulnessTriggerView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24B932200(v4, a1);
}

uint64_t objectdestroy_26Tm_2()
{
  v1 = (type metadata accessor for EditMindfulnessTriggerView(0) - 8);
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

uint64_t sub_24B9331D4(char *a1)
{
  v3 = *(type metadata accessor for EditMindfulnessTriggerView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_24B932270(a1, v4, v5, v6);
}

unint64_t sub_24B933258()
{
  result = qword_27F064D08;
  if (!qword_27F064D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064D00);
    sub_24B8F68B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064D08);
  }

  return result;
}

uint64_t sub_24B933304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B9333B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B9333FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B933468@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  sub_24BAA824C();
  v15 = sub_24BAA826C();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = a1 & 1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  v34 = a3;
  *(v16 + 40) = a4;

  v35 = v14;
  sub_24BAA9A4C();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v39 = sub_24BAA7C2C();
  v40 = v18;
  sub_24B8F5E3C();
  v19 = sub_24BAA93CC();
  v21 = v20;
  v23 = v22;
  v33 = v24;
  v42 = v17;
  v43 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  v25 = sub_24BAA9A1C();
  v32 = v31;
  v31[1] = v41;
  MEMORY[0x28223BE20](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064158);
  v30[4] = sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  v30[5] = sub_24B8F384C(&qword_27F064168, &qword_27F064158);
  v30[3] = v26;
  v27 = v38;
  v30[1] = v30;
  v30[2] = v38;
  v30[0] = sub_24B934070;
  v28 = v35;
  sub_24BAA95AC();

  sub_24B900910(v19, v21, v23 & 1);

  return (*(v37 + 8))(v28, v27);
}

uint64_t sub_24B93388C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064180);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v47 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v46 = v38 - v4;
  v5 = sub_24BAA83FC();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064130);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  v45 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v44 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064188);
  v40 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064190);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v43 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v38 - v22;
  sub_24BAA824C();
  v24 = sub_24BAA826C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v38[1] = v25 + 56;
  v39 = v26;
  v26(v10, 0, 1, v24);

  sub_24BAA9A4C();
  sub_24BAA83EC();
  v27 = sub_24BAA845C();
  sub_24BAA846C();
  sub_24BAA846C();
  if (sub_24BAA846C() != v27)
  {
    sub_24BAA846C();
  }

  v28 = sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA953C();
  (*(v41 + 8))(v7, v42);
  v29 = *(v45 + 8);
  v29(v15, v11);
  v49 = v11;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  sub_24BAA94DC();
  (*(v40 + 8))(v18, v16);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v49 = sub_24BAA7C2C();
  v50 = v30;
  sub_24BAA825C();
  v39(v10, 0, 1, v24);
  sub_24B8F5E3C();
  v31 = v44;
  sub_24BAA9A6C();
  v32 = v46;
  sub_24BAA94DC();
  v29(v31, v11);
  v33 = v43;
  sub_24B934080(v23, v43);
  v34 = v47;
  sub_24B9340F0(v32, v47);
  v35 = v48;
  sub_24B934080(v33, v48);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064198);
  sub_24B9340F0(v34, v35 + *(v36 + 48));
  sub_24B934160(v32);
  sub_24B9341C8(v23);
  sub_24B934160(v34);
  return sub_24B9341C8(v33);
}

uint64_t sub_24B933EFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  result = sub_24BAA93CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24B933FD0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B934080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9340F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B934160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B9341C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B934230()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068B00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064158);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24B8F384C(&qword_27F064168, &qword_27F064158);
  return swift_getOpaqueTypeConformance2();
}

uint64_t LockScreenMastheadView.symbolImageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_symbolImageName);

  return v1;
}

void *LockScreenMastheadView.keyColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_keyColor);
  v2 = v1;
  return v1;
}

void LockScreenMastheadView.init(keyColor:symbolImageName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24BAA975C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PagesAndHomeScreenHeader();
  MEMORY[0x28223BE20](v11);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v3[OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_rootView] = 0;
  *&v3[OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_keyColor] = a1;
  v14 = &v3[OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_symbolImageName];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = type metadata accessor for LockScreenMastheadView();
  v66.receiver = v3;
  v66.super_class = v15;
  v62 = a3;

  v16 = a1;
  v17 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a1)
  {
    v18 = v16;
    v19 = sub_24BAA973C();
  }

  else
  {
    v19 = sub_24BAA974C();
  }

  v20 = v19;
  v61 = v16;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v21 = sub_24BAA7C2C();
  v23 = v22;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0EE0], v7);
  v24 = v62;

  v25 = sub_24BAA98AC();
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v26 = (v13 + v11[5]);
  *v26 = v21;
  v26[1] = v23;
  *(v13 + v11[6]) = 0;
  v27 = (v13 + v11[7]);
  *v27 = a2;
  v27[1] = v24;
  *(v13 + v11[8]) = v20;
  *(v13 + v11[9]) = v25;
  *(v13 + v11[10]) = v20;
  *(v13 + v11[11]) = 0;
  v28 = (v13 + v11[12]);
  v63 = 0;

  sub_24BAA99EC();
  v29 = v65;
  *v28 = v64;
  v28[1] = v29;
  v30 = (v13 + v11[13]);
  v63 = 0;
  sub_24BAA99EC();
  v31 = v65;
  *v30 = v64;
  v30[1] = v31;
  v32 = (v13 + v11[14]);
  v63 = 0x3FECCCCCCCCCCCCDLL;
  sub_24BAA99EC();
  v33 = v65;
  *v32 = v64;
  v32[1] = v33;
  v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D40));
  v35 = sub_24BAA8C3C();
  v36 = [v35 view];
  v37 = OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_rootView;
  v38 = *&v17[OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_rootView];
  *&v17[OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_rootView] = v36;
  v39 = v36;

  if (!v39)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints_];

  if (!*&v17[v37])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v17 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_24BAB08D0;
  v41 = *&v17[v37];
  if (!v41)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = [v41 leadingAnchor];
  v43 = [v17 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v40 + 32) = v44;
  v45 = *&v17[v37];
  if (!v45)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v46 = [v45 trailingAnchor];
  v47 = [v17 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v40 + 40) = v48;
  v49 = *&v17[v37];
  if (!v49)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v50 = [v49 bottomAnchor];
  v51 = [v17 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v40 + 48) = v52;
  v53 = *&v17[v37];
  if (v53)
  {
    v54 = objc_opt_self();
    v55 = v53;

    v56 = [v55 topAnchor];

    v57 = [v17 topAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    *(v40 + 56) = v58;
    sub_24B934EA0();
    v59 = sub_24BAAA11C();

    [v54 activateConstraints_];

    return;
  }

LABEL_18:
  __break(1u);
}

id LockScreenMastheadView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LockScreenMastheadView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_rootView) = 0;
  sub_24BAAA6CC();
  __break(1u);
}

id LockScreenMastheadView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LockScreenMastheadView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenMastheadView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B934DB0(uint64_t a1)
{
  v2 = sub_24BAA82DC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24BAA876C();
}

unint64_t sub_24B934EA0()
{
  result = qword_27F0697E0;
  if (!qword_27F0697E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0697E0);
  }

  return result;
}

FSUIPlatformEligibility __swiftcall FSUIPlatformEligibility.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FSUIPlatformEligibility()
{
  result = qword_27F064D48;
  if (!qword_27F064D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F064D48);
  }

  return result;
}

uint64_t sub_24B935028()
{
  if (MEMORY[0x277D0E358])
  {
    v2 = MEMORY[0x277D0E360] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || MEMORY[0x277D0E368] == 0)
  {
    return 0;
  }

  v30 = v0;
  v31 = v1;
  v5 = sub_24BAA80EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24BAA80BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA80AC();
  sub_24BAA80DC();
  (*(v10 + 8))(v12, v9);
  v13 = sub_24BAA809C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA80CC();
  v17 = (*(v14 + 88))(v16, v13);
  if (MEMORY[0x277D0DFB8] && v17 == *MEMORY[0x277D0DFB8])
  {
    if (qword_27F063100 != -1)
    {
      swift_once();
    }

    v18 = sub_24BAA812C();
    __swift_project_value_buffer(v18, qword_27F077068);
    v19 = sub_24BAA810C();
    v20 = sub_24BAAA2AC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_24;
    }

    v21 = swift_slowAlloc();
    v29 = &v28;
    v22 = v21;
    *v21 = 0;
    _os_log_impl(&dword_24B8D3000, v19, v20, "Generative models unavailable.", v21, 2u);
    v23 = v22;
    goto LABEL_23;
  }

  if (MEMORY[0x277D0E270] && v17 == *MEMORY[0x277D0E270])
  {
    (*(v6 + 8))(v8, v5);
    return 1;
  }

  if (qword_27F063100 != -1)
  {
    swift_once();
  }

  v24 = sub_24BAA812C();
  __swift_project_value_buffer(v24, qword_27F077068);
  v19 = sub_24BAA810C();
  v25 = sub_24BAAA29C();
  if (os_log_type_enabled(v19, v25))
  {
    v26 = swift_slowAlloc();
    v29 = v5;
    v27 = v26;
    *v26 = 0;
    _os_log_impl(&dword_24B8D3000, v19, v25, "Received unknown generative models availability state", v26, 2u);
    v23 = v27;
    v5 = v29;
LABEL_23:
    MEMORY[0x24C251390](v23, -1, -1);
  }

LABEL_24:

  (*(v6 + 8))(v8, v5);
  (*(v14 + 8))(v16, v13);
  return 0;
}

uint64_t sub_24B935498@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FocusInformationIconView();
  sub_24B8F3208(v1 + *(v10 + 20), v9, &unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
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

uint64_t FocusInformationIconView.init(semanticType:symbolImageName:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for FocusInformationIconView();
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  result = swift_storeEnumTagMultiPayload();
  *(a5 + v10[6]) = a1;
  v13 = (a5 + v10[7]);
  *v13 = a2;
  v13[1] = a3;
  *(a5 + v10[8]) = a4;
  return result;
}

uint64_t FocusInformationIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D50);
  v4 = sub_24BAA9D1C();
  v6 = v5;
  sub_24B935AE4(v2, &v28);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v18 = v28;
  v19 = v29;
  v27[6] = v34;
  v27[7] = v35;
  v27[8] = v36;
  v27[2] = v30;
  v27[3] = v31;
  v27[4] = v32;
  v27[5] = v33;
  v27[0] = v28;
  v27[1] = v29;
  sub_24B8F3208(&v18, &v8, &qword_27F064D58);
  sub_24B8F35E4(v27, &qword_27F064D58);
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v9 = v18;
  v10 = v19;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D60);
  sub_24B8F384C(&qword_27F064D68, &qword_27F064D60);
  sub_24BAA95EC();
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v37 = v17;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v13;
  v28 = v8;
  v29 = v9;
  return sub_24B8F35E4(&v28, &qword_27F064D60);
}

uint64_t sub_24B935948(uint64_t a1)
{
  v2 = sub_24BAA9D1C();
  v4 = v3;
  sub_24B935AE4(a1, &v26);
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v16 = v26;
  v17 = v27;
  v25[6] = v32;
  v25[7] = v33;
  v25[8] = v34;
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[5] = v31;
  v25[0] = v26;
  v25[1] = v27;
  sub_24B8F3208(&v16, &v6, &qword_27F064D58);
  sub_24B8F35E4(v25, &qword_27F064D58);
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v7 = v16;
  v8 = v17;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D60);
  sub_24B8F384C(&qword_27F064D68, &qword_27F064D60);
  sub_24BAA95EC();
  v32 = v12;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v26 = v6;
  v27 = v7;
  return sub_24B8F35E4(&v26, &qword_27F064D60);
}

uint64_t sub_24B935AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = v37 - v4;
  v38 = sub_24BAA82DC();
  v5 = *(v38 - 8);
  v6 = MEMORY[0x28223BE20](v38);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - v9;
  v11 = type metadata accessor for FocusInformationIconView();
  v12 = *(v11 + 32);
  if (*(a1 + v12))
  {
    v13 = *(a1 + v12);
  }

  else
  {
    v13 = sub_24BAA974C();
  }

  v14 = v11;
  v15 = *(a1 + *(v11 + 24));
  v37[1] = v13;
  if (v15 == 9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064DD8);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24BAAD820;
    *(v16 + 32) = v13;

    *(v16 + 40) = sub_24BAA97DC();
    sub_24BAA9E0C();
    sub_24BAA9E1C();
    MEMORY[0x24C24FD10](v16);
    sub_24BAA847C();
    v17 = v63;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    *&v41[22] = v67;
    *&v41[38] = v68;
    *&v41[6] = v66;
    LOBYTE(v53[0]) = 0;
    *&v51[0] = v17;
    *(&v51[1] + 8) = v65;
    *(v51 + 8) = v64;
    WORD4(v51[2]) = 256;
    *(&v51[2] + 10) = *v41;
    *(&v51[3] + 10) = *&v41[16];
    *(&v51[4] + 10) = *&v41[32];
    *(&v51[5] + 1) = *(&v68 + 1);
    LOBYTE(v52) = 0;
  }

  else
  {

    sub_24BAA9D1C();
    sub_24BAA83BC();
    *&v55[38] = v68;
    *&v55[22] = v67;
    *&v55[6] = v66;
    *(v51 + 10) = *v55;
    LOBYTE(v53[0]) = 1;
    *&v51[0] = v13;
    WORD4(v51[0]) = 256;
    *(&v51[1] + 10) = *&v55[16];
    *(&v51[2] + 10) = *&v55[32];
    *(&v51[3] + 1) = *(&v68 + 1);
    LOBYTE(v52) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D98);
  sub_24B936768();
  sub_24B936820();
  sub_24BAA8D0C();
  v18 = (a1 + *(v14 + 28));
  v19 = *v18;
  v20 = v18[1];
  sub_24B935498(v10);
  v21 = v38;
  (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v38);
  v22 = sub_24BAA82CC();
  v23 = *(v5 + 8);
  v23(v8, v21);
  v23(v10, v21);
  _s15FocusSettingsUI14ActivitySourceV25inverseVariantIfAvailable3for17isDarkColorSchemeS2S_SbtFZ_0(v19, v20, v22 & 1);
  v24 = sub_24BAA994C();
  sub_24BAA91CC();
  v25 = sub_24BAA919C();
  v26 = v40;
  (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
  v27 = sub_24BAA91FC();
  sub_24B8F35E4(v26, &qword_27F063CD8);
  KeyPath = swift_getKeyPath();
  v29 = sub_24BAA982C();
  v30 = swift_getKeyPath();
  v45 = v59;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v42 = v56;
  v43 = v57;
  v44 = v58;
  v49[0] = v56;
  v49[1] = v57;
  v50 = v62;
  v49[2] = v58;
  v49[3] = v59;
  v49[4] = v60;
  v49[5] = v61;
  v51[2] = v58;
  v51[3] = v59;
  v51[4] = v60;
  v51[5] = v61;
  LOBYTE(v52) = v62;
  v51[0] = v56;
  v51[1] = v57;
  sub_24B8F3208(v49, v53, &qword_27F064DD0);

  v31 = v51[5];
  v32 = v39;
  *(v39 + 64) = v51[4];
  *(v32 + 80) = v31;
  v33 = v52;
  v34 = v51[1];
  *v32 = v51[0];
  *(v32 + 16) = v34;
  v35 = v51[3];
  *(v32 + 32) = v51[2];
  *(v32 + 48) = v35;
  *(v32 + 96) = v33;
  *(v32 + 104) = v24;
  *(v32 + 112) = KeyPath;
  *(v32 + 120) = v27;
  *(v32 + 128) = v30;
  *(v32 + 136) = v29;

  v53[4] = v46;
  v53[5] = v47;
  v54 = v48;
  v53[0] = v42;
  v53[1] = v43;
  v53[2] = v44;
  v53[3] = v45;
  return sub_24B8F35E4(v53, &qword_27F064DD0);
}

uint64_t sub_24B936140@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064D50);
  return sub_24B935948(v1);
}

uint64_t sub_24B9361DC(uint64_t a1)
{
  v2 = sub_24BAA8B9C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24BAA87DC();
}

uint64_t type metadata accessor for FocusInformationIconView()
{
  result = qword_27F064D70;
  if (!qword_27F064D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B93632C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B936468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24B93658C()
{
  sub_24B936680(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24B936680(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DNDModeSemanticType(319);
      if (v2 <= 0x3F)
      {
        sub_24B9366D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B936680(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_24B9366D4()
{
  if (!qword_27F064968)
  {
    v0 = sub_24BAAA3FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F064968);
    }
  }
}

unint64_t sub_24B936768()
{
  result = qword_27F064DA0;
  if (!qword_27F064DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064D90);
    sub_24B8F384C(&qword_27F064DA8, &qword_27F064DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064DA0);
  }

  return result;
}

unint64_t sub_24B936820()
{
  result = qword_27F064DB8;
  if (!qword_27F064DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064D98);
    sub_24B8F384C(&qword_27F064DC0, &qword_27F064DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064DB8);
  }

  return result;
}

uint64_t sub_24B9368FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24B9369E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HomeScreenPageView()
{
  result = qword_27F064DE8;
  if (!qword_27F064DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B936AF8()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B936C64();
    if (v1 <= 0x3F)
    {
      sub_24B936D50(319, &qword_27F064DF8, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B936D50(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24B936CBC();
          if (v4 <= 0x3F)
          {
            sub_24B936D50(319, &qword_27F064E08, &type metadata for HomeScreenPagesListView, MEMORY[0x277D83D88]);
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

void sub_24B936C64()
{
  if (!qword_27F068F10)
  {
    sub_24BAA82DC();
    v0 = sub_24BAA82EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F068F10);
    }
  }
}

void sub_24B936CBC()
{
  if (!qword_27F064E00)
  {
    type metadata accessor for HomeScreenSnapshot();
    sub_24B93AF14(&qword_27F064330, type metadata accessor for HomeScreenSnapshot);
    v0 = sub_24BAA850C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F064E00);
    }
  }
}

void sub_24B936D50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24B936DA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B936DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeScreenPageView.HomeScreenPageViewStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeScreenPageView.HomeScreenPageViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B936F8C()
{
  result = qword_27F064E10;
  if (!qword_27F064E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064E10);
  }

  return result;
}

double sub_24B936FE0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_27F064DE0 = 1.0 / v2;
  return result;
}

uint64_t sub_24B937068@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = sub_24BAA866C();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x28223BE20](v1);
  v58 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HomeScreenPageView();
  v4 = v3 - 8;
  v52 = *(v3 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E18);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E20);
  MEMORY[0x28223BE20](v68);
  v57 = &v51 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E28);
  MEMORY[0x28223BE20](v63);
  v10 = &v51 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E30);
  MEMORY[0x28223BE20](v66);
  v67 = &v51 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E38);
  MEMORY[0x28223BE20](v61);
  v13 = &v51 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E40);
  MEMORY[0x28223BE20](v65);
  v62 = &v51 - v14;
  v15 = sub_24BAA8B7C();
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E48);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E50);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  v27 = *(v4 + 52);
  v28 = v64;
  v29 = *(v64 + v27);
  if (v29 == 1)
  {
    *v10 = sub_24BAA8BCC();
    *(v10 + 1) = 0x4028000000000000;
    v10[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064EE0);
    sub_24B938240(&v10[*(v33 + 44)]);
    sub_24B8F3208(v10, v13, &qword_27F064E28);
    swift_storeEnumTagMultiPayload();
    sub_24B93B2A4(&qword_27F064E78, &qword_27F064E50, &unk_24BAB0C88, sub_24B93A8BC);
    sub_24B8F384C(&qword_27F064ED0, &qword_27F064E28);
    v34 = v62;
    sub_24BAA8D0C();
    sub_24B8F3208(v34, v67, &qword_27F064E40);
    swift_storeEnumTagMultiPayload();
    sub_24B93A7D8();
    sub_24B93AAE4();
    sub_24BAA8D0C();
    sub_24B8F35E4(v34, &qword_27F064E40);
    return sub_24B8F35E4(v10, &qword_27F064E28);
  }

  else if (v29)
  {
    v35 = v53;
    sub_24B93A6E0(v64, v53);
    v36 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v37 = swift_allocObject();
    v38 = sub_24B9106EC(v35, v37 + v36);
    MEMORY[0x28223BE20](v38);
    *(&v51 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E58);
    sub_24B8F384C(&qword_27F064E60, &qword_27F064E58);
    v39 = v54;
    sub_24BAA9A5C();
    v40 = v58;
    sub_24BAA865C();
    sub_24B8F384C(&qword_27F064E68, &qword_27F064E18);
    sub_24B93AF14(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    v42 = v56;
    v41 = v57;
    v43 = v60;
    sub_24BAA944C();
    (*(v59 + 8))(v40, v43);
    (*(v55 + 8))(v39, v42);
    v44 = sub_24BAA90DC();
    sub_24BAA828C();
    v45 = v67;
    v46 = v41 + *(v68 + 36);
    *v46 = v44;
    *(v46 + 8) = v47;
    *(v46 + 16) = v48;
    *(v46 + 24) = v49;
    *(v46 + 32) = v50;
    *(v46 + 40) = 0;
    sub_24B93A768(v41, v45);
    swift_storeEnumTagMultiPayload();
    sub_24B93A7D8();
    sub_24B93AAE4();
    sub_24BAA8D0C();
    return sub_24B93AC30(v41);
  }

  else
  {
    sub_24B937ABC(v20);
    v70 = sub_24B937F10();
    v71 = v30;
    sub_24B93A8BC();
    sub_24B8F5E3C();
    sub_24BAA959C();

    sub_24B8F35E4(v20, &qword_27F064E48);
    sub_24BAA8B5C();
    sub_24BAA85DC();
    (*(v51 + 8))(v17, v15);
    sub_24B8F35E4(v24, &qword_27F064E50);
    sub_24B8F3208(v26, v13, &qword_27F064E50);
    swift_storeEnumTagMultiPayload();
    sub_24B93B2A4(&qword_27F064E78, &qword_27F064E50, &unk_24BAB0C88, sub_24B93A8BC);
    sub_24B8F384C(&qword_27F064ED0, &qword_27F064E28);
    v31 = v62;
    sub_24BAA8D0C();
    sub_24B8F3208(v31, v67, &qword_27F064E40);
    swift_storeEnumTagMultiPayload();
    sub_24B93A7D8();
    sub_24B93AAE4();
    sub_24BAA8D0C();
    sub_24B8F35E4(v31, &qword_27F064E40);
    return sub_24B8F35E4(v26, &qword_27F064E50);
  }
}

uint64_t sub_24B937ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for HomeScreenPageView();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = v5;
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA9D1C();
  v47 = v7;
  v48 = v6;
  sub_24B939744(v2, &v63);
  v58 = v66;
  v59 = v67;
  v60 = v68;
  v55 = v63;
  v56 = v64;
  v57 = v65;
  v62 = v68;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v61[0] = v63;
  v61[1] = v64;
  sub_24B8F3208(&v55, &v54, &qword_27F064EE8);
  sub_24B8F35E4(v61, &qword_27F064EE8);
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v63 = v55;
  v64 = v56;
  *&v49 = v4;
  v8 = *(v4 + 40);
  v53 = v2;
  v9 = *(v2 + v8);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064EA0) + 36));
  v11 = sub_24BAA869C();
  v12 = *(v11 + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24BAA8B2C();
  v15 = *(*(v14 - 8) + 104);
  v15(&v10[v12], v13, v14);
  *v10 = v9;
  *(v10 + 1) = v9;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
  v16 = v47;
  *a1 = v48;
  *(a1 + 8) = v16;
  v17 = v66;
  *(a1 + 48) = v65;
  *(a1 + 64) = v17;
  *(a1 + 80) = v67;
  *(a1 + 96) = v68;
  v18 = v64;
  *(a1 + 16) = v63;
  *(a1 + 32) = v18;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E90) + 36));
  v15(&v19[*(v11 + 20)], v13, v14);
  *v19 = v9;
  *(v19 + 1) = v9;
  v20 = [objc_opt_self() blackColor];
  v21 = sub_24BAA973C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v19[*(v22 + 52)] = v21;
  *&v19[*(v22 + 56)] = 256;
  if (qword_27F063080 != -1)
  {
    swift_once();
  }

  v23 = sub_24BAA90BC();
  sub_24BAA828C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064EF0) + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = v53;
  v34 = v53 + *(v49 + 48);
  v35 = *v34;
  v49 = *(v34 + 8);
  v36 = *(v34 + 3);
  v37 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064EF8) + 36)];
  *v37 = v35;
  *(v37 + 8) = v49;
  *(v37 + 3) = v36;

  v38 = sub_24BAA9D1C();
  v40 = v39;
  v41 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064EC8) + 36)];
  *v41 = v38;
  v41[1] = v40;
  v42 = v52;
  sub_24B93A6E0(v33, v52);
  v43 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v44 = swift_allocObject();
  sub_24B9106EC(v42, v44 + v43);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E48);
  v46 = (a1 + *(result + 36));
  *v46 = sub_24B93AC98;
  v46[1] = v44;
  v46[2] = 0;
  v46[3] = 0;
  return result;
}

uint64_t sub_24B937F10()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
    v3 = *(v0 + *(type metadata accessor for HomeScreenPageView() + 32) + 8);

    v4 = sub_24B9A970C(v3, v2);
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v7 >= 1)
      {
        if (qword_27F063110 == -1)
        {
LABEL_6:
          sub_24BAA7C2C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
          v8 = swift_allocObject();
          v9 = MEMORY[0x277D83B88];
          *(v8 + 16) = xmmword_24BAAD5B0;
          v10 = MEMORY[0x277D83C10];
          *(v8 + 56) = v9;
          *(v8 + 64) = v10;
          *(v8 + 32) = v7;
          v11 = sub_24BAA9FEC();

          return v11;
        }

LABEL_15:
        swift_once();
        goto LABEL_6;
      }
    }

    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    sub_24BAA7C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24BAAD5B0;
    v14 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages);
    if (!v14 || (, v15 = sub_24B9A970C(v3, v14), v17 = v16, , (v17 & 1) != 0))
    {
      v18 = -1;
LABEL_13:
      v19 = MEMORY[0x277D83C10];
      *(v13 + 56) = MEMORY[0x277D83B88];
      *(v13 + 64) = v19;
      *(v13 + 32) = v18;
      v20 = sub_24BAA9FEC();

      return v20;
    }

    v18 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B93AF14(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B938240@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F10);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = &v25 - v4;
  v5 = sub_24BAA8B7C();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E48);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E50);
  v11 = MEMORY[0x28223BE20](v26);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v13);
  v28 = &v25 - v16;
  sub_24B937ABC(v10);
  *&v46[0] = sub_24B937F10();
  *(&v46[0] + 1) = v17;
  sub_24B93A8BC();
  sub_24B8F5E3C();
  sub_24BAA959C();

  sub_24B8F35E4(v10, &qword_27F064E48);
  type metadata accessor for HomeScreenPageView();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (LOBYTE(v46[0]) == 1)
  {
    sub_24BAA8B3C();
  }

  else
  {
    *&v46[0] = MEMORY[0x277D84F90];
    sub_24B93AF14(&unk_27F0651E0, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18);
    sub_24BAAA48C();
  }

  v18 = v28;
  sub_24BAA85DC();
  (*(v27 + 8))(v7, v5);
  sub_24B8F35E4(v15, &qword_27F064E50);
  sub_24B9387D0(v44);
  v41 = v44[8];
  v42 = v44[9];
  v43 = v45;
  v37 = v44[4];
  v38 = v44[5];
  v39 = v44[6];
  v40 = v44[7];
  v33 = v44[0];
  v34 = v44[1];
  v35 = v44[2];
  v36 = v44[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F20);
  sub_24B93AF5C();
  v19 = v30;
  sub_24BAA95EC();
  v46[8] = v41;
  v46[9] = v42;
  v47 = v43;
  v46[4] = v37;
  v46[5] = v38;
  v46[6] = v39;
  v46[7] = v40;
  v46[0] = v33;
  v46[1] = v34;
  v46[2] = v35;
  v46[3] = v36;
  sub_24B8F35E4(v46, &qword_27F064F20);
  v20 = v29;
  sub_24B8F3208(v18, v29, &qword_27F064E50);
  v21 = v31;
  sub_24B8F3208(v19, v31, &qword_27F064F10);
  v22 = v32;
  sub_24B8F3208(v20, v32, &qword_27F064E50);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F88);
  sub_24B8F3208(v21, v22 + *(v23 + 48), &qword_27F064F10);
  sub_24B8F35E4(v19, &qword_27F064F10);
  sub_24B8F35E4(v18, &qword_27F064E50);
  sub_24B8F35E4(v21, &qword_27F064F10);
  return sub_24B8F35E4(v20, &qword_27F064E50);
}

uint64_t sub_24B9387D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA992C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24BAA991C();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_24BAA997C();

  (*(v4 + 8))(v6, v3);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  LOBYTE(v34) = 1;
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  v8 = sub_24BAA920C();
  KeyPath = swift_getKeyPath();
  v10 = objc_opt_self();
  v11 = [v10 systemGray3Color];
  v12 = sub_24BAA973C();
  v13 = swift_getKeyPath();
  v14 = [v10 systemBackgroundColor];
  v15 = sub_24BAA973C();
  v16 = (v1 + *(type metadata accessor for HomeScreenPageView() + 48));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];

  v21 = sub_24BAA9D1C();
  *&v30 = v15;
  WORD4(v30) = 256;
  *&v31 = v17;
  *(&v31 + 1) = v18;
  *&v32 = v19;
  *(&v32 + 1) = v20;
  *&v33 = v21;
  *(&v33 + 1) = v22;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 64) = *&v29[23];
  *(a1 + 72) = KeyPath;
  *(a1 + 50) = *&v29[16];
  v23 = *v29;
  *(a1 + 34) = *&v29[8];
  *(a1 + 18) = v23;
  *(a1 + 80) = v8;
  *(a1 + 88) = v13;
  *(a1 + 96) = v12;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  *(a1 + 152) = v33;
  *(a1 + 136) = v26;
  *(a1 + 120) = v25;
  *(a1 + 104) = v24;
  v34 = v15;
  v35 = 256;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  sub_24B8F3208(&v30, v28, &qword_27F064F80);
  return sub_24B8F35E4(&v34, &qword_27F064F80);
}

uint64_t sub_24B938AC0(uint64_t a1)
{
  v2 = type metadata accessor for HomeScreenPageView();
  v3 = *(a1 + *(v2 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_24BAA81AC();
  *v5 = !*v5;
  v4(&v11, 0);

  v7 = (a1 + *(v2 + 36));
  v8 = *(v7 + 3);
  if (v8)
  {
    v11 = *v7;
    v12 = *(v7 + 2);
    v13 = v8;
    v9 = v7[3];
    v14 = v7[2];
    v15 = v9;
    v10 = v7[5];
    v16 = v7[4];
    v17 = v10;
    return sub_24B9FE48C(v3);
  }

  return result;
}

uint64_t sub_24B938BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24BAA8BCC();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F90);
  return sub_24B938C14(a1, a2 + *(v4 + 44));
}

uint64_t sub_24B938C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F98);
  MEMORY[0x28223BE20](v47);
  v38 = &v36 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064FA0);
  MEMORY[0x28223BE20](v42);
  v45 = &v36 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064FA8);
  MEMORY[0x28223BE20](v44);
  v37 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064FB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v48 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v36 - v9;
  v10 = sub_24BAA8B7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E48);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E50);
  v17 = MEMORY[0x28223BE20](v39);
  v43 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v41 = &v36 - v22;
  sub_24B937ABC(v16);
  *&v53[0] = sub_24B937F10();
  *(&v53[0] + 1) = v23;
  sub_24B93A8BC();
  sub_24B8F5E3C();
  sub_24BAA959C();

  sub_24B8F35E4(v16, &qword_27F064E48);
  type metadata accessor for HomeScreenPageView();
  v40 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (LOBYTE(v53[0]) == 1)
  {
    sub_24BAA8B3C();
  }

  else
  {
    *&v53[0] = MEMORY[0x277D84F90];
    sub_24B93AF14(&unk_27F0651E0, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18);
    sub_24BAAA48C();
  }

  v24 = v41;
  sub_24BAA85DC();
  (*(v11 + 8))(v13, v10);
  sub_24B8F35E4(v21, &qword_27F064E50);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (LOBYTE(v53[0]) == 1)
  {
    v25 = sub_24BAA9D1C();
    v27 = v26;
    sub_24B939EB8(v40, v53);
    memcpy(v51, v53, sizeof(v51));
    memcpy(v52, v53, 0x128uLL);
    sub_24B8F3208(v51, v50, &qword_27F064FF0);
    sub_24B8F35E4(v52, &qword_27F064FF0);
    memcpy(&v50[16], v51, 0x128uLL);
    *v50 = v25;
    *&v50[8] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064FC8);
    sub_24B93B358();
    v28 = v37;
    sub_24BAA95EC();
    memcpy(v53, v50, 0x138uLL);
    sub_24B8F35E4(v53, &qword_27F064FC8);
    v29 = &qword_27F064FA8;
    sub_24B8F3208(v28, v45, &qword_27F064FA8);
  }

  else
  {
    sub_24B93952C(v50);
    v52[4] = *&v50[64];
    v52[5] = *&v50[80];
    *&v52[6] = *&v50[96];
    v52[0] = *v50;
    v52[1] = *&v50[16];
    v52[2] = *&v50[32];
    v52[3] = *&v50[48];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F38);
    sub_24B93B014();
    v28 = v38;
    sub_24BAA95EC();
    v53[4] = v52[4];
    v53[5] = v52[5];
    *&v53[6] = *&v52[6];
    v53[0] = v52[0];
    v53[1] = v52[1];
    v53[3] = v52[3];
    v53[2] = v52[2];
    sub_24B8F35E4(v53, &qword_27F064F38);
    v29 = &qword_27F064F98;
    sub_24B8F3208(v28, v45, &qword_27F064F98);
  }

  swift_storeEnumTagMultiPayload();
  sub_24B93B2A4(&qword_27F064FB8, &qword_27F064FA8, &unk_24BAB0E60, sub_24B93B358);
  sub_24B93B2A4(&qword_27F064FE0, &qword_27F064F98, &unk_24BAB0E50, sub_24B93B014);
  v30 = v46;
  sub_24BAA8D0C();
  sub_24B8F35E4(v28, v29);
  v31 = v43;
  sub_24B8F3208(v24, v43, &qword_27F064E50);
  v32 = v48;
  sub_24B8F3208(v30, v48, &qword_27F064FB0);
  v33 = v49;
  sub_24B8F3208(v31, v49, &qword_27F064E50);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064FE8);
  sub_24B8F3208(v32, v33 + *(v34 + 48), &qword_27F064FB0);
  sub_24B8F35E4(v30, &qword_27F064FB0);
  sub_24B8F35E4(v24, &qword_27F064E50);
  sub_24B8F35E4(v32, &qword_27F064FB0);
  return sub_24B8F35E4(v31, &qword_27F064E50);
}

double sub_24B93952C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA992C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24BAA991C();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_24BAA997C();

  (*(v3 + 8))(v5, v2);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v15 = 1;
  *&v14[8] = v16;
  *&v14[24] = v17;
  *&v14[40] = v18;
  v7 = sub_24BAA920C();
  KeyPath = swift_getKeyPath();
  v9 = [objc_opt_self() systemGray3Color];
  v10 = sub_24BAA973C();
  v11 = swift_getKeyPath();
  v12 = *&v14[18];
  *(a1 + 18) = *&v14[2];
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v12;
  result = *&v14[34];
  *(a1 + 50) = *&v14[34];
  *(a1 + 64) = *&v14[48];
  *(a1 + 72) = KeyPath;
  *(a1 + 80) = v7;
  *(a1 + 88) = v11;
  *(a1 + 96) = v10;
  return result;
}

uint64_t sub_24B939744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomeScreenPageView();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_24BAA992C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v10 = *(*a1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenWallpaperSnapshot);
    if (v10)
    {
      v11 = v10;
      v34 = v4;
      v12 = a1;
      v13 = v11;
      sub_24BAA98FC();
      v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = *MEMORY[0x277CE0FE0];
      (*(v7 + 104))(v9);
      v14 = sub_24BAA997C();
      v29 = v6;
      v32 = v14;

      (*(v7 + 8))(v9, v6);
      v15 = (v12 + *(v34 + 24));
      v16 = *v15;
      v17 = v15[1];
      *&v46 = v16;
      *(&v46 + 1) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F00);
      sub_24BAA99FC();

      v18 = *&v45[0];
      v19 = v30;
      sub_24B93A6E0(v12, v30);
      v20 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v21 = v31;
      v22 = swift_allocObject();
      v23 = v19;
      v6 = v29;
      sub_24B9106EC(v23, v22 + v20);
      LOBYTE(v45[0]) = 1;
      v46 = v32;
      LOWORD(v47) = 1;
      *(&v47 + 1) = v18;
      *&v48 = sub_24B93AE64;
    }

    else
    {
      v22 = 0;
      *&v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v21 = *MEMORY[0x277CE0FE0];
    }

    v49 = 0uLL;
    *(&v48 + 1) = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    sub_24BAA98FC();
    (*(v7 + 104))(v9, v21, v6);
    v24 = sub_24BAA997C();

    (*(v7 + 8))(v9, v6);
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v39 = v49;
    v40[0] = v46;
    v40[1] = v47;
    v40[2] = v48;
    v40[3] = v49;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    sub_24B8F3208(v40, v45, &qword_27F064F08);

    sub_24B8F35E4(&v46, &qword_27F064F08);
    v35 = 1;
    v25 = v42;
    *a2 = v41;
    *(a2 + 16) = v25;
    v26 = v44;
    *(a2 + 32) = v43;
    *(a2 + 48) = v26;
    *(a2 + 64) = v24;
    *(a2 + 72) = 0;
    *(a2 + 80) = 1;

    v45[0] = v36;
    v45[1] = v37;
    v45[2] = v38;
    v45[3] = v39;
    return sub_24B8F35E4(v45, &qword_27F064F08);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B93AF14(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B939BF4()
{
  type metadata accessor for HomeScreenPageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  result = sub_24BAA99FC();
  if (v1 == 1)
  {
    MEMORY[0x28223BE20](result);
    sub_24BAA9D4C();
    sub_24BAA842C();
  }

  return result;
}

uint64_t sub_24B939CD8()
{
  type metadata accessor for HomeScreenPageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F00);
  return sub_24BAA9A0C();
}

uint64_t sub_24B939D54(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    result = sub_24B9A1468();
    if (result)
    {
      v3 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenWallpaperSnapshot);
      type metadata accessor for HomeScreenPageView();
      if (v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
        sub_24BAA9A0C();
        v4 = &qword_27F064F00;
      }

      else
      {
        v4 = &qword_27F063B38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      return sub_24BAA9A0C();
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B93AF14(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B939EB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a1;
  v48 = a2;
  v2 = sub_24BAA992C();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24BAA975C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA82DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v41 = *(type metadata accessor for HomeScreenPageView() + 20);
  sub_24BA8DCD0(v12);
  v13 = *MEMORY[0x277CDF3C0];
  v39 = *(v7 + 104);
  v39(v10, v13, v6);
  v14 = sub_24BAA82CC();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  v16 = objc_opt_self();
  v17 = &selRef_systemGroupedBackgroundColor;
  if (v14)
  {
    v17 = &selRef_systemGray4Color;
  }

  v18 = [v16 *v17];
  v49 = sub_24BAA973C();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *(v95 + 6) = *(&v95[3] + 6);
  *(&v95[1] + 6) = *(&v95[4] + 6);
  *(&v95[2] + 6) = *(&v95[5] + 6);
  sub_24BA8DCD0(v12);
  v39(v10, v13, v6);
  v19 = sub_24BAA82CC();
  v15(v10, v6);
  v15(v12, v6);
  v20 = objc_opt_self();
  v21 = &selRef_systemGroupedBackgroundColor;
  if (v19)
  {
    v21 = &selRef_systemGray4Color;
  }

  v22 = [v20 *v21];
  v23 = sub_24BAA973C();
  (*(v43 + 104))(v42, *MEMORY[0x277CE0EE0], v44);
  v24 = sub_24BAA98BC();
  v25 = sub_24BAA9D1C();
  *&v53 = v23;
  WORD4(v53) = 256;
  *&v54 = v24;
  *(&v54 + 1) = 0x4000000000000000;
  v56 = 0;
  v55 = 0;
  *&v57 = v25;
  *(&v57 + 1) = v26;
  v66 = v53;
  v67 = v54;
  v68 = 0u;
  v69 = v57;
  v58 = v23;
  v59 = 256;
  v60 = v24;
  v61 = 0x4000000000000000;
  v63 = 0;
  v62 = 0;
  v64 = v25;
  v65 = v26;
  sub_24B8F3208(&v53, &v90, &qword_27F064F80);
  sub_24B8F35E4(&v58, &qword_27F064F80);
  v27 = [objc_opt_self() systemBackgroundColor];
  v28 = sub_24BAA973C();
  v44 = v28;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v52[6] = *(&v95[6] + 6);
  *&v52[22] = *(&v95[7] + 6);
  *&v52[38] = *(&v95[8] + 6);
  sub_24BAA991C();
  v30 = v45;
  v29 = v46;
  v31 = v47;
  (*(v46 + 104))(v45, *MEMORY[0x277CE0FE0], v47);
  v32 = sub_24BAA997C();

  (*(v29 + 8))(v30, v31);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  LOBYTE(v90) = 1;
  *&v51[6] = *(&v95[9] + 6);
  *&v51[22] = *(&v95[10] + 6);
  *&v51[38] = *(&v95[11] + 6);
  v33 = sub_24BAA920C();
  KeyPath = swift_getKeyPath();
  v35 = sub_24BAA974C();
  v36 = swift_getKeyPath();
  *&v70[0] = v49;
  WORD4(v70[0]) = 256;
  *(v70 + 10) = v95[0];
  *(&v70[1] + 10) = v95[1];
  *(&v70[2] + 10) = v95[2];
  *(&v70[3] + 1) = *(&v95[2] + 14);
  v70[4] = v66;
  v70[5] = v67;
  v70[6] = v68;
  v70[7] = v69;
  v50[4] = v66;
  v50[5] = v67;
  *&v71[0] = v28;
  WORD4(v71[0]) = 256;
  *(v71 + 10) = *v52;
  *(&v71[3] + 1) = *&v52[46];
  v50[6] = v68;
  v50[7] = v69;
  v50[0] = v70[0];
  v50[1] = v70[1];
  v50[2] = v70[2];
  v50[3] = v70[3];
  *(&v71[2] + 10) = *&v52[32];
  *(&v71[1] + 10) = *&v52[16];
  v72[0] = v32;
  v72[1] = 0;
  v50[10] = v71[2];
  v50[11] = v71[3];
  v50[8] = v71[0];
  v50[9] = v71[1];
  LOWORD(v73[0]) = 1;
  *&v73[3] = *&v51[46];
  *(&v73[2] + 2) = *&v51[32];
  *(&v73[1] + 2) = *&v51[16];
  *(v73 + 2) = *v51;
  *(&v73[3] + 1) = KeyPath;
  *&v74 = v33;
  *(&v74 + 1) = v36;
  v75 = v35;
  v50[12] = v32;
  v50[13] = v73[0];
  *&v50[18] = v35;
  v50[16] = v73[3];
  v50[17] = v74;
  v50[14] = v73[1];
  v50[15] = v73[2];
  memcpy(v48, v50, 0x128uLL);
  v78 = *v51;
  v76[0] = v32;
  v76[1] = 0;
  v77 = 1;
  v79 = *&v51[16];
  *v80 = *&v51[32];
  *&v80[14] = *&v51[46];
  v81 = KeyPath;
  v82 = v33;
  v83 = v36;
  v84 = v35;
  sub_24B8F3208(v70, &v90, &qword_27F064FF8);
  sub_24B8F3208(v71, &v90, &qword_27F064D98);
  sub_24B8F3208(v72, &v90, &qword_27F064F38);
  sub_24B8F35E4(v76, &qword_27F064F38);
  v85 = v44;
  v86 = 256;
  v87 = *v52;
  v88 = *&v52[16];
  *v89 = *&v52[32];
  *&v89[14] = *&v52[46];
  sub_24B8F35E4(&v85, &qword_27F064D98);
  v90 = v49;
  v91 = 256;
  v92 = v95[0];
  v93 = v95[1];
  *v94 = v95[2];
  *(&v94[1] + 6) = *(&v95[2] + 14);
  *(&v94[2] + 6) = v66;
  *(&v94[4] + 6) = v67;
  *(&v94[6] + 6) = v68;
  *(&v94[8] + 6) = v69;
  return sub_24B8F35E4(&v90, &qword_27F064FF8);
}

uint64_t sub_24B93A6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeScreenPageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B93A768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B93A7D8()
{
  result = qword_27F064E70;
  if (!qword_27F064E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064E40);
    sub_24B93B2A4(&qword_27F064E78, &qword_27F064E50, &unk_24BAB0C88, sub_24B93A8BC);
    sub_24B8F384C(&qword_27F064ED0, &qword_27F064E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064E70);
  }

  return result;
}

unint64_t sub_24B93A8BC()
{
  result = qword_27F064E80;
  if (!qword_27F064E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064E48);
    sub_24B93A948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064E80);
  }

  return result;
}

unint64_t sub_24B93A948()
{
  result = qword_27F064E88;
  if (!qword_27F064E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064E90);
    sub_24B93AA00();
    sub_24B8F384C(&qword_27F064EC0, &qword_27F064EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064E88);
  }

  return result;
}

unint64_t sub_24B93AA00()
{
  result = qword_27F064E98;
  if (!qword_27F064E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064EA0);
    sub_24B8F384C(&qword_27F064EA8, &qword_27F064EB0);
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064E98);
  }

  return result;
}

unint64_t sub_24B93AAE4()
{
  result = qword_27F064ED8;
  if (!qword_27F064ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064E18);
    sub_24BAA866C();
    sub_24B8F384C(&qword_27F064E68, &qword_27F064E18);
    sub_24B93AF14(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064ED8);
  }

  return result;
}

uint64_t sub_24B93AC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for HomeScreenPageView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA82DC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + *(v1 + 36) + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B93AE7C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HomeScreenPageView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24B93AF14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B93AF5C()
{
  result = qword_27F064F28;
  if (!qword_27F064F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064F20);
    sub_24B93B014();
    sub_24B8F384C(&qword_27F064F78, &qword_27F064F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064F28);
  }

  return result;
}

unint64_t sub_24B93B014()
{
  result = qword_27F064F30;
  if (!qword_27F064F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064F38);
    sub_24B93B0CC();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064F30);
  }

  return result;
}

unint64_t sub_24B93B0CC()
{
  result = qword_27F064F40;
  if (!qword_27F064F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064F48);
    sub_24B93B184();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064F40);
  }

  return result;
}

unint64_t sub_24B93B184()
{
  result = qword_27F064F50;
  if (!qword_27F064F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064F58);
    sub_24B93B210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064F50);
  }

  return result;
}

unint64_t sub_24B93B210()
{
  result = qword_27F064F60;
  if (!qword_27F064F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064F60);
  }

  return result;
}

uint64_t sub_24B93B2A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24B93AF14(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B93B358()
{
  result = qword_27F064FC0;
  if (!qword_27F064FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064FC8);
    sub_24B8F384C(&qword_27F064FD0, &qword_27F064FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F064FC0);
  }

  return result;
}

unint64_t sub_24B93B414()
{
  result = qword_27F065000;
  if (!qword_27F065000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065008);
    sub_24B93A7D8();
    sub_24B93AAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065000);
  }

  return result;
}

uint64_t sub_24B93B4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065100);
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065108);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v63 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v46 - v10;
  v11 = type metadata accessor for FilteredAppSource();
  sub_24B93E1BC(&unk_27F065110, type metadata accessor for FilteredAppSource);

  v53 = v11;
  sub_24BAA84EC();
  swift_getKeyPath();
  sub_24BAA84FC();

  v61 = *(&v91 + 1);
  v62 = v91;
  v59 = v93;
  v60 = v92;
  v105 = *(a1 + 64);
  v79 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v56 = *(&v68 + 1);
  v57 = v68;
  v55 = v69;
  v58 = sub_24BAA90AC();
  sub_24BAA828C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v91) = 0;
  v20 = *(a1 + 40);
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 1;
    goto LABEL_7;
  }

  if (sub_24BAAA52C() < 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v91 = *(a1 + 64);
  sub_24BAA99FC();
  v21 = 1;
  if ((v68 & 1) == 0)
  {
    *v6 = sub_24BAA8BCC();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065138);
    sub_24B93BAE8(a1, &v6[*(v22 + 44)]);
    v23 = sub_24BAA90BC();
    v24 = &v6[*(v54 + 36)];
    *v24 = v23;
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
    v24[40] = 1;
    sub_24B93DE40(v6, v64);
    v21 = 0;
  }

LABEL_7:
  v25 = v64;
  (*(v4 + 56))(v64, v21, 1, v54);
  v91 = *(a1 + 16);
  v92 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  sub_24BAA9B8C();
  v54 = *(&v68 + 1);
  v26 = v68;
  v52 = v69;
  v27 = *(a1 + 48);
  v51 = *(a1 + 56);
  v91 = v105;
  v28 = v27;
  v48 = v68;
  v49 = v27;

  sub_24BAA99FC();
  v50 = v68;
  v29 = sub_24BAA84DC();
  v46 = v30;
  v47 = v29;
  v31 = v30;
  v65 = 0;
  v32 = v63;
  sub_24B8F3208(v25, v63, &qword_27F065108);
  LODWORD(v53) = v65;
  *&v68 = v62;
  *(&v68 + 1) = v61;
  *&v69 = v60;
  *(&v69 + 1) = v59;
  *&v70 = v57;
  *(&v70 + 1) = v56;
  LOBYTE(v71) = v55;
  *(&v71 + 1) = v107[0];
  DWORD1(v71) = *(v107 + 3);
  BYTE8(v71) = v58;
  *(&v71 + 9) = *v106;
  HIDWORD(v71) = *&v106[3];
  *&v72 = v13;
  *(&v72 + 1) = v15;
  *&v73 = v17;
  *(&v73 + 1) = v19;
  v74 = 0;
  v33 = v72;
  v34 = v73;
  *(a2 + 96) = 0;
  *(a2 + 64) = v33;
  *(a2 + 80) = v34;
  v35 = v68;
  v36 = v69;
  v37 = v71;
  *(a2 + 32) = v70;
  *(a2 + 48) = v37;
  *a2 = v35;
  *(a2 + 16) = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065128);
  sub_24B8F3208(v32, a2 + *(v38 + 48), &qword_27F065108);
  v39 = (a2 + *(v38 + 64));
  *&v75 = v29;
  *(&v75 + 1) = v31;
  v40 = v54;
  *&v76 = v26;
  *(&v76 + 1) = v54;
  v41 = v52;
  *&v77 = v52;
  *(&v77 + 1) = v28;
  LOBYTE(v28) = v50;
  LOBYTE(v25) = v51;
  LOBYTE(v78[0]) = v51;
  BYTE1(v78[0]) = v50;
  *(v78 + 2) = v66;
  WORD3(v78[0]) = v67;
  *(&v78[0] + 1) = sub_24B8FC66C;
  *&v78[1] = 0;
  LOBYTE(v31) = v53;
  BYTE8(v78[1]) = v53;
  v42 = v75;
  v43 = v76;
  *(v39 + 57) = *(v78 + 9);
  v44 = v78[0];
  v39[2] = v77;
  v39[3] = v44;
  *v39 = v42;
  v39[1] = v43;
  sub_24B8F3208(&v68, &v91, &qword_27F065130);
  sub_24B93DD90(&v75, &v91);
  sub_24B8F35E4(v64, &qword_27F065108);
  *&v79 = v47;
  *(&v79 + 1) = v46;
  v80 = v48;
  v81 = v40;
  v82 = v41;
  v83 = v49;
  v84 = v25;
  v85 = v28;
  v86 = v66;
  v87 = v67;
  v88 = sub_24B8FC66C;
  v89 = 0;
  v90 = v31;
  sub_24B93DDEC(&v79);
  sub_24B8F35E4(v63, &qword_27F065108);
  *&v91 = v62;
  *(&v91 + 1) = v61;
  v92 = v60;
  v93 = v59;
  v94 = v57;
  v95 = v56;
  v96 = v55;
  *v97 = v107[0];
  *&v97[3] = *(v107 + 3);
  v98 = v58;
  *v99 = *v106;
  *&v99[3] = *&v106[3];
  v100 = v13;
  v101 = v15;
  v102 = v17;
  v103 = v19;
  v104 = 0;
  return sub_24B8F35E4(&v91, &qword_27F065130);
}

uint64_t sub_24B93BAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v2 = sub_24BAA8DFC();
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24BAA9C6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065140);
  v8 = *(v30 - 8);
  v9 = MEMORY[0x28223BE20](v30);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065148);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  *v18 = sub_24BAA8AAC();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F065150);
  sub_24B93BFCC(&v18[*(v19 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C08);
  sub_24BAA9C7C();
  *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
  *v7 = xmmword_24BAB0EB0;
  (*(v5 + 104))(v7, *MEMORY[0x277CDF100], v4);
  sub_24BAA9C8C();
  v35 = v31;
  sub_24BAA8BCC();
  v36 = 0;
  sub_24B93E1BC(&qword_27F065160, MEMORY[0x277CE0428]);
  sub_24BAAA85C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065168);
  sub_24B93DEB8();
  sub_24BAA9D8C();
  v20 = v16;
  v29 = v16;
  sub_24B8F3208(v18, v16, &qword_27F065148);
  v21 = *(v8 + 16);
  v22 = v33;
  v23 = v30;
  v21(v33, v12, v30);
  v24 = v20;
  v25 = v34;
  sub_24B8F3208(v24, v34, &qword_27F065148);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F065188);
  v21((v25 + *(v26 + 48)), v22, v23);
  v27 = *(v8 + 8);
  v27(v12, v23);
  sub_24B8F35E4(v18, &qword_27F065148);
  v27(v22, v23);
  return sub_24B8F35E4(v29, &qword_27F065148);
}

uint64_t sub_24B93BFCC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v27 = sub_24BAA8B7C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0651F8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - v6;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v30 = sub_24BAA7C2C();
  v31 = v7;
  sub_24B8F5E3C();
  v8 = sub_24BAA93CC();
  v10 = v9;
  v12 = v11;
  sub_24BAA928C();
  v13 = sub_24BAA939C();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_24B900910(v8, v10, v12 & 1);

  v30 = v13;
  v31 = v15;
  v17 &= 1u;
  v32 = v17;
  v33 = v19;
  sub_24BAA8B6C();
  v20 = v26;
  sub_24BAA961C();
  (*(v25 + 8))(v2, v27);
  sub_24B900910(v13, v15, v17);

  v21 = v28;
  sub_24B8F3208(v20, v28, &qword_27F0651F8);
  v22 = v29;
  sub_24B8F3208(v21, v29, &qword_27F0651F8);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065208) + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_24B8F35E4(v20, &qword_27F0651F8);
  return sub_24B8F35E4(v21, &qword_27F0651F8);
}

uint64_t sub_24B93C2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v21[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_16:
    v5 = sub_24BAAA52C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v19 = a2;
      v6 = 0;
      v7 = 0;
      a2 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x24C2506E0](v6, v4);
          v8 = v9;
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v12 = v21[0];
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v4 + 8 * v6 + 32);

          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v22 = v8;
        MEMORY[0x28223BE20](v9);
        v18 = &v22;
        if (sub_24BA3F098(sub_24B93DF68, &v17, v11))
        {
        }

        else
        {
          sub_24BAAA66C();
          v20 = v7;
          sub_24BAAA69C();
          v7 = v20;
          sub_24BAAA6AC();
          sub_24BAAA67C();
        }

        ++v6;
        if (v10 == v5)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_18:
  v22 = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 48);
  v13[3] = *(a1 + 32);
  v13[4] = v14;
  v13[5] = *(a1 + 64);
  v15 = *(a1 + 16);
  v13[1] = *a1;
  v13[2] = v15;
  sub_24B93DFF8(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065180);
  sub_24B8F384C(&qword_27F065198, &qword_27F063500);
  sub_24B8F384C(&qword_27F065178, &qword_27F065180);
  v18 = sub_24B93E1BC(&qword_27F0651A0, type metadata accessor for EventSource);
  return sub_24BAA9C0C();
}

uint64_t sub_24B93C5FC(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  v5 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = a2[4];
  v6 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  *(v4 + 96) = v3;
  sub_24B93DFF8(a2, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0651A8);
  sub_24B93E048();
  return sub_24BAA9A5C();
}

uint64_t sub_24B93C6DC(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v19 = v4;
  v17 = v5;
  v18 = v5;
  v15 = v4;
  v16 = v3;
  sub_24B90BFFC(&v19, v13);

  sub_24B8F3208(&v18, v13, &qword_27F063500);
  sub_24B90BFFC(&v19, v13);

  sub_24B8F3208(&v18, v13, &qword_27F063500);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](v13);
  v15 = a2;
  v12[2] = &v15;
  v7 = sub_24BA3F098(sub_24B93E5C0, v12, v13[0]);

  sub_24B90BF84(&v19);

  sub_24B8F35E4(&v18, &qword_27F063500);
  if ((v7 & 1) == 0)
  {
    v15 = v4;
    v16 = v3;
    v17 = v5;
    MEMORY[0x24C24FC10](v14, v6);

    MEMORY[0x24C2501C0](v10);
    if (*((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_6:
      sub_24BAAA16C();
      goto LABEL_7;
    }

LABEL_10:
    sub_24BAAA14C();
    goto LABEL_6;
  }

  v15 = v4;
  v16 = v3;
  v17 = v5;

  MEMORY[0x24C24FC10](v14, v6);
  v8 = sub_24B93D7B4(v14, a2);

  if (v14[0] >> 62)
  {
    v9 = sub_24BAAA52C();
    if (v9 >= v8)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v9 = *((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 < v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_4:
  sub_24B9AF5C4(v8, v9);
LABEL_7:
  v13[0] = v4;
  v13[1] = v3;
  v13[2] = v5;
  v12[3] = v14[0];
  sub_24BAA9B6C();
  sub_24B90BF84(&v19);

  return sub_24B8F35E4(&v18, &qword_27F063500);
}

uint64_t sub_24B93C95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v31 = sub_24BAA8B7C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0651C0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v27 - v7);
  type metadata accessor for AppIconCache();
  sub_24B93E1BC(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v28 = sub_24BAA86FC();
  v27 = v9;
  KeyPath = swift_getKeyPath();
  v11 = *(a1 + 32);
  v30 = *(a1 + 24);

  v29 = sub_24BAA974C();
  v42 = *(a2 + 16);
  v43 = *(a2 + 32);
  v39 = *(a2 + 16);
  v40 = *(a2 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](&v41);
  *&v39 = a1;
  v38 = &v39;
  v13 = sub_24BA3F098(sub_24B93E5C0, v37, v41);

  v14 = swift_allocObject();
  v15 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a2 + 64);
  v16 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v16;
  *(v14 + 96) = a1;
  v17 = v8 + v6[9];
  *v17 = a1;
  *(v17 + 1) = 0x4050000000000000;
  v18 = v27;
  *(v17 + 2) = v28;
  *(v17 + 3) = v18;
  *(v17 + 4) = KeyPath;
  v17[40] = 0;
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v19 = (v8 + v6[10]);
  *v19 = v30;
  v19[1] = v11;
  v20 = (v8 + v6[11]);
  *v20 = 0x72616D6B63656863;
  v20[1] = 0xE90000000000006BLL;
  *(v8 + v6[12]) = v29;
  v21 = v8 + v6[13];
  LOBYTE(v41) = v13 & 1;

  sub_24B93DFF8(a2, &v39);
  sub_24BAA99EC();
  v22 = *(&v39 + 1);
  *v21 = v39;
  *(v21 + 1) = v22;
  v23 = (v8 + v6[14]);
  *v23 = sub_24B93E1A8;
  v23[1] = v14;
  v39 = v42;
  v40 = v43;
  MEMORY[0x24C24FC10](&v41, v12);
  *&v39 = a1;
  v36 = &v39;
  LOBYTE(v14) = sub_24BA3F098(sub_24B93E5C0, v35, v41);

  if (v14)
  {
    v24 = v32;
    sub_24BAA8B3C();
    v25 = v31;
  }

  else
  {
    *&v39 = MEMORY[0x277D84F90];
    sub_24B93E1BC(&unk_27F0651E0, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18);
    v24 = v32;
    v25 = v31;
    sub_24BAAA48C();
  }

  sub_24B8F384C(&qword_27F0651B8, &unk_27F0651C0);
  sub_24BAA961C();
  (*(v33 + 8))(v24, v25);
  return sub_24B8F35E4(v8, &unk_27F0651C0);
}

uint64_t sub_24B93CEA0(char a1, void *a2, uint64_t a3)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  if (a1)
  {
    v19 = a2[2];
    v18 = v6;
    v14 = v5;
    v15 = v4;
    v16 = v6;
    sub_24B90BFFC(&v19, &v11);

    sub_24B8F3208(&v18, &v11, &qword_27F063500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
    MEMORY[0x24C24FC10](&v17);

    MEMORY[0x24C2501C0](v7);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24BAAA14C();
    }

    sub_24BAAA16C();
    v11 = v5;
    v12 = v4;
    v13 = v6;
    goto LABEL_8;
  }

  v19 = a2[2];
  v18 = v6;
  v14 = v5;
  v15 = v4;
  v16 = v6;

  sub_24B90BFFC(&v19, &v11);

  sub_24B8F3208(&v18, &v11, &qword_27F063500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](&v17);
  v8 = sub_24B93D7B4(&v17, a3);

  if (v17 >> 62)
  {
    result = sub_24BAAA52C();
    v10 = result;
    if (result >= v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v8)
    {
LABEL_7:
      sub_24B9AF5C4(v8, v10);
      v11 = v5;
      v12 = v4;
      v13 = v6;
LABEL_8:
      sub_24BAA9B6C();
      sub_24B90BF84(&v19);

      return sub_24B8F35E4(&v18, &qword_27F063500);
    }
  }

  __break(1u);
  return result;
}

id sub_24B93D2B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvailableAppsView.SearchBar.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24B93D384(void *a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8);
  MEMORY[0x24C24FC10](&v7, v5);
  v6 = sub_24BAA9FDC();

  [a1 setText_];
}

id sub_24B93D41C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 48);
  v19 = *v1;
  v20 = v3;
  v21 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8);
  sub_24BAA9B8C();
  v8 = v17;
  v9 = v18;
  v10 = type metadata accessor for AvailableAppsView.SearchBar.Coordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text];
  *v12 = v16;
  *(v12 + 2) = v8;
  *(v12 + 3) = v9;
  v13 = &v11[OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__isSearching];
  *v13 = v5;
  *(v13 + 1) = v6;
  v13[16] = v7;
  v15.receiver = v11;
  v15.super_class = v10;

  result = objc_msgSendSuper2(&v15, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24B93D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B93E568();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24B93D5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B93E568();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24B93D614()
{
  sub_24B93E568();
  sub_24BAA8CDC();
  __break(1u);
}

uint64_t sub_24B93D63C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F8);
  return sub_24B93B4A8(v7, a1 + *(v5 + 44));
}

unint64_t sub_24B93D6B0(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_24BAAA52C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C2506E0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = [*(v7 + 16) isEqual_];

    if (v8)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_24B93D7B4(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_24B93D6B0(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_24BAAA52C();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v18 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_24BAAA52C())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C2506E0](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_15:
    v12 = [*(v11 + 16) isEqual_];

    if ((v12 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C2506E0](v8, v5);
          v14 = MEMORY[0x24C2506E0](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_45;
          }

          if (v9 >= v15)
          {
            goto LABEL_46;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_24B9B0DEC(v5);
          v16 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

        if ((v5 & 0x8000000000000000) != 0 || v16)
        {
          v5 = sub_24B9B0DEC(v5);
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v17 + 16))
        {
          goto LABEL_43;
        }

        *(v17 + 8 * v9 + 32) = v13;

        *v18 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_24BAAA52C();
}

uint64_t sub_24B93DA24(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text);
  v4 = *(v1 + OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text + 16);
  v5 = *(v1 + OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text + 24);
  v24 = *(v1 + OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text);
  v25 = v4;
  v26 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8);
  MEMORY[0x24C24FC10](&v22);
  v7 = v22;
  v6 = v23;
  v8 = [a1 text];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24BAAA01C();
    v12 = v11;

    if (v7 != v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  if (v6 == v12)
  {
  }

LABEL_7:
  v14 = sub_24BAAA78C();

  if ((v14 & 1) == 0)
  {
    v15 = [a1 text];
    if (v15)
    {
      v16 = v15;
      v17 = sub_24BAAA01C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = *(v3 + 2);
    v21 = *(v3 + 3);
    v24 = *v3;
    v25 = v20;
    v26 = v21;
    v22 = v17;
    v23 = v19;
    return sub_24BAA9B6C();
  }

  return result;
}

uint64_t sub_24B93DBA4()
{
  v3 = *(v0 + OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text);
  v4 = *(v0 + OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text + 16);
  v5 = *(v0 + OBJC_IVAR____TtCVV15FocusSettingsUI17AvailableAppsView9SearchBar11Coordinator__text + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8);
  sub_24BAA9B6C();
  v1 = [objc_opt_self() sharedApplication];
  [v1 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B6C();
  return 1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24B93DCC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24B93DD08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B93DE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B93DEB8()
{
  result = qword_27F065170;
  if (!qword_27F065170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065168);
    sub_24B8F384C(&qword_27F065178, &qword_27F065180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065170);
  }

  return result;
}

uint64_t sub_24B93DF88()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_24B93E048()
{
  result = qword_27F0651B0;
  if (!qword_27F0651B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0651A8);
    sub_24B8F384C(&qword_27F0651B8, &unk_27F0651C0);
    sub_24B93E1BC(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0651B0);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24B93E1BC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B93E220(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24B93E268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B93E310()
{
  result = qword_27F065220;
  if (!qword_27F065220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065220);
  }

  return result;
}

id sub_24B93E364()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D759E8]) initWithFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065228);
  sub_24BAA8FCC();
  [v0 setDelegate_];

  [v0 setAutocapitalizationType_];
  [v0 setAutocorrectionType_];
  [v0 setSpellCheckingType_];
  [v0 setSearchBarStyle_];
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  v1 = sub_24BAA9FDC();

  [v0 setPlaceholder_];

  [v0 setShowsCancelButton_];
  v2 = [v0 searchTextField];
  [v2 setClearButtonMode_];
  sub_24BAA8FCC();
  [v2 setDelegate_];

  return v0;
}

unint64_t sub_24B93E568()
{
  result = qword_27F065230;
  if (!qword_27F065230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065230);
  }

  return result;
}

uint64_t FocusFilterSystemConfigurationMastheadView.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_title);

  return v1;
}

uint64_t FocusFilterSystemConfigurationMastheadView.symbolName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_symbolName);

  return v1;
}

id sub_24B93E6CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_24BAA9FDC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FocusFilterSystemConfigurationMastheadView.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_subtitle);

  return v1;
}

void *FocusFilterSystemConfigurationMastheadView.color.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_color);
  v2 = v1;
  return v1;
}

void FocusFilterSystemConfigurationMastheadView.init(title:subtitle:symbolName:color:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v15 = type metadata accessor for FocusFilterSystemConfigurationMasthead();
  MEMORY[0x28223BE20](v15);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v7[OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_rootView] = 0;
  v18 = &v7[OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_title];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v7[OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_symbolName];
  v63 = a3;
  v64 = a5;
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v7[OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_subtitle];
  *v20 = a3;
  *(v20 + 1) = a4;
  *&v7[OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_color] = a7;
  v21 = type metadata accessor for FocusFilterSystemConfigurationMastheadView();
  v66.receiver = v7;
  v66.super_class = v21;

  v65 = a6;

  v22 = a7;
  v23 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  if (!a7)
  {
    v24 = [objc_opt_self() tintColor];
  }

  v25 = v22;
  v26 = sub_24BAA973C();
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v27 = (v17 + v15[6]);
  v28 = v15[8];
  v29 = (v17 + v15[7]);
  v30 = (v17 + v15[5]);
  *v30 = a1;
  v30[1] = a2;
  *v27 = v63;
  v27[1] = a4;
  v31 = v65;
  *v29 = v64;
  v29[1] = v31;
  *(v17 + v28) = v26;
  v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0652C8));

  v33 = sub_24BAA8C3C();
  v34 = [v33 view];
  v35 = OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_rootView;
  v36 = *&v23[OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_rootView];
  *&v23[OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_rootView] = v34;
  v37 = v34;

  if (!v37)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v37 setTranslatesAutoresizingMaskIntoConstraints_];

  v38 = *&v23[v35];
  if (!v38)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v64 = v25;
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 clearColor];
  [v40 setBackgroundColor_];

  if (!*&v23[v35])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v63 = v33;
  [v23 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_24BAB08D0;
  v43 = *&v23[v35];
  if (!v43)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v44 = [v43 leadingAnchor];
  v45 = [v23 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v42 + 32) = v46;
  v47 = *&v23[v35];
  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v48 = [v47 trailingAnchor];
  v49 = [v23 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v42 + 40) = v50;
  v51 = *&v23[v35];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = [v51 bottomAnchor];
  v53 = [v23 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v42 + 48) = v54;
  v55 = *&v23[v35];
  if (v55)
  {
    v56 = objc_opt_self();
    v57 = v55;

    v58 = [v57 topAnchor];

    v59 = [v23 topAnchor];
    v60 = [v58 constraintEqualToAnchor_];

    *(v42 + 56) = v60;
    sub_24B934EA0();
    v61 = sub_24BAAA11C();

    [v56 activateConstraints_];

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t type metadata accessor for FocusFilterSystemConfigurationMasthead()
{
  result = qword_27F0652E0;
  if (!qword_27F0652E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *FocusFilterSystemConfigurationMasthead.init(title:subtitle:symbolName:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for FocusFilterSystemConfigurationMasthead();
  v17 = (a8 + result[6]);
  v18 = result[8];
  v19 = (a8 + result[7]);
  v20 = (a8 + result[5]);
  *v20 = a1;
  v20[1] = a2;
  *v17 = a3;
  v17[1] = a4;
  *v19 = a5;
  v19[1] = a6;
  *(a8 + v18) = a7;
  return result;
}

id FocusFilterSystemConfigurationMastheadView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void FocusFilterSystemConfigurationMastheadView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_rootView) = 0;
  sub_24BAAA6CC();
  __break(1u);
}

id FocusFilterSystemConfigurationMastheadView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FocusFilterSystemConfigurationMastheadView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusFilterSystemConfigurationMastheadView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B93F1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
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

uint64_t FocusFilterSystemConfigurationMasthead.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for FocusFilterSystemConfigurationMasthead() + 20));

  return v1;
}

uint64_t FocusFilterSystemConfigurationMasthead.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FocusFilterSystemConfigurationMasthead() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FocusFilterSystemConfigurationMasthead.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FocusFilterSystemConfigurationMasthead() + 24));

  return v1;
}

uint64_t FocusFilterSystemConfigurationMasthead.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FocusFilterSystemConfigurationMasthead() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FocusFilterSystemConfigurationMasthead.symbolName.getter()
{
  v1 = *(v0 + *(type metadata accessor for FocusFilterSystemConfigurationMasthead() + 28));

  return v1;
}

uint64_t FocusFilterSystemConfigurationMasthead.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FocusFilterSystemConfigurationMasthead() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FocusFilterSystemConfigurationMasthead.tintColor.getter()
{
  type metadata accessor for FocusFilterSystemConfigurationMasthead();
}

uint64_t FocusFilterSystemConfigurationMasthead.tintColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FocusFilterSystemConfigurationMasthead() + 32);

  *(v1 + v3) = a1;
  return result;
}

double FocusFilterSystemConfigurationMasthead.body.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0652D0);
  sub_24B93F7A4(v1, a1 + *(v3 + 44));
  v4 = sub_24BAA90BC();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0652D8) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_24B93F7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065308);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v130 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v111 - v7;
  v9 = sub_24BAA9D1C();
  v11 = v10;
  v12 = a1;
  v116 = a1;
  sub_24B940384(a1, &v207);
  v223 = v211;
  v224 = v212;
  v225 = v213;
  v219 = v207;
  v220 = v208;
  v222 = v210;
  v221 = v209;
  v226[1] = v208;
  v226[0] = v207;
  v226[2] = v209;
  v226[3] = v210;
  v226[4] = v211;
  v226[5] = v212;
  v227 = v213;
  sub_24B8F3208(&v219, &v178, &qword_27F065310);
  sub_24B8F35E4(v226, &qword_27F065310);
  v235 = v223;
  v236 = v224;
  v237 = v225;
  v231 = v219;
  v232 = v220;
  v233 = v221;
  v234 = v222;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v13 = &v8[*(v4 + 44)];
  v14 = *(sub_24BAA869C() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24BAA8B2C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #12.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
  v22 = v236;
  *(v8 + 5) = v235;
  *(v8 + 6) = v22;
  v23 = v232;
  *(v8 + 1) = v231;
  *(v8 + 2) = v23;
  v24 = v234;
  *(v8 + 3) = v233;
  *(v8 + 4) = v24;
  v25 = v229;
  *(v8 + 120) = v228;
  *v8 = v9;
  *(v8 + 1) = v11;
  *(v8 + 14) = v237;
  *(v8 + 136) = v25;
  v129 = v8;
  *(v8 + 152) = v230;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v119 = v197;
  v120 = v195;
  v117 = v200;
  v118 = v199;
  v240 = 1;
  v239 = v196;
  v238 = v198;
  v115 = type metadata accessor for FocusFilterSystemConfigurationMasthead();
  v26 = (v12 + *(v115 + 20));
  v27 = v26[1];
  *&v207 = *v26;
  *(&v207 + 1) = v27;
  v28 = sub_24B8F5E3C();

  v114 = v28;
  v29 = sub_24BAA93CC();
  v31 = v30;
  LOBYTE(v11) = v32;
  sub_24BAA988C();
  v33 = sub_24BAA933C();
  v35 = v34;
  LOBYTE(v12) = v36;

  sub_24B900910(v29, v31, v11 & 1);

  sub_24BAA918C();
  sub_24BAA91EC();
  sub_24BAA921C();

  v37 = sub_24BAA939C();
  v127 = v38;
  v128 = v37;
  LOBYTE(v28) = v39;
  v123 = v40;

  sub_24B900910(v33, v35, v12 & 1);

  KeyPath = swift_getKeyPath();
  v122 = swift_getKeyPath();
  v125 = v28 & 1;
  LOBYTE(v207) = v28 & 1;
  LOBYTE(v178) = 0;
  v121 = sub_24BAA90AC();
  sub_24BAA828C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v207) = 0;
  v49 = (v116 + *(v115 + 24));
  v50 = v49[1];
  if (v50)
  {
    v51 = *v49;

    sub_24BAA9D1C();
    sub_24BAA83BC();
    v115 = v203;
    v116 = v201;
    v112 = v206;
    v113 = v205;
    LOBYTE(v158) = 1;
    v138 = v202;
    v137 = v204;
    *&v207 = v51;
    *(&v207 + 1) = v50;
    v52 = sub_24BAA93CC();
    v54 = v53;
    v56 = v55;
    sub_24BAA988C();
    v57 = sub_24BAA933C();
    v59 = v58;
    v61 = v60;

    sub_24B900910(v52, v54, v56 & 1);

    sub_24BAA916C();
    v62 = sub_24BAA939C();
    v64 = v63;
    v66 = v65;
    v111 = v67;

    sub_24B900910(v57, v59, v61 & 1);

    v68 = swift_getKeyPath();
    v69 = swift_getKeyPath();
    v70 = v66 & 1;
    LOBYTE(v207) = v66 & 1;
    LOBYTE(v178) = 0;
    v71 = swift_getKeyPath();
    LOBYTE(v59) = sub_24BAA90AC();
    sub_24BAA828C();
    LOBYTE(v207) = 0;
    v72 = v158;
    LODWORD(v114) = v138;
    *(&v140 + 1) = *v132;
    DWORD1(v140) = *&v132[3];
    HIDWORD(v141) = *&v131[3];
    *(&v141 + 9) = *v131;
    DWORD1(v143) = *&v133[3];
    *(&v143 + 1) = *v133;
    HIWORD(v144) = v136;
    *(&v144 + 10) = v135;
    DWORD1(v145) = *&v134[3];
    *(&v145 + 1) = *v134;
    v73 = v137;
    *&v139 = v62;
    *(&v139 + 1) = v64;
    LOBYTE(v140) = v70;
    *(&v140 + 1) = v111;
    *&v141 = v68;
    BYTE8(v141) = 1;
    *&v166 = v62;
    *(&v166 + 1) = v64;
    *&v142 = v69;
    *(&v142 + 1) = 7;
    LOBYTE(v143) = 0;
    LOBYTE(v167) = v70;
    *(&v143 + 1) = v71;
    *&v144 = 0x3FE0000000000000;
    WORD4(v144) = 256;
    LOBYTE(v145) = v59;
    *(&v145 + 1) = v74;
    *&v146[0] = v75;
    *(&v146[0] + 1) = v76;
    *&v146[1] = v77;
    BYTE8(v146[1]) = 0;
    v149 = v141;
    v150 = v142;
    v147 = v139;
    v148 = v140;
    *(v154 + 9) = *(v146 + 9);
    v153 = v145;
    v154[0] = v146[0];
    v151 = v143;
    v152 = v144;
    *(&v167 + 1) = *v132;
    DWORD1(v167) = *&v132[3];
    *(&v167 + 1) = v111;
    *&v168 = v68;
    BYTE8(v168) = 1;
    *(&v168 + 9) = *v131;
    HIDWORD(v168) = *&v131[3];
    *&v169 = v69;
    *(&v169 + 1) = 7;
    LOBYTE(v170) = 0;
    DWORD1(v170) = *&v133[3];
    *(&v170 + 1) = *v133;
    *(&v170 + 1) = v71;
    *&v171 = 0x3FE0000000000000;
    WORD4(v171) = 256;
    *(&v171 + 10) = v135;
    HIWORD(v171) = v136;
    LOBYTE(v172) = v59;
    *(&v172 + 1) = *v134;
    DWORD1(v172) = *&v134[3];
    *(&v172 + 1) = v74;
    *&v173 = v75;
    *(&v173 + 1) = v76;
    *&v174 = v77;
    BYTE8(v174) = 0;
    sub_24B8F3208(&v139, &v207, &qword_27F065330);
    sub_24B8F35E4(&v166, &qword_27F065330);
    *&v178 = 0;
    BYTE8(v178) = v72;
    *&v179 = v116;
    BYTE8(v179) = v114;
    *&v180 = v115;
    BYTE8(v180) = v73;
    *&v181 = v113;
    *(&v181 + 1) = v112;
    v188 = v153;
    v189[0] = v154[0];
    *(v189 + 9) = *(v154 + 9);
    v184 = v149;
    v185 = v150;
    v187 = v152;
    v186 = v151;
    v182 = v147;
    v183 = v148;
    nullsub_1(&v178);
    v217 = v188;
    v218[0] = v189[0];
    *(v218 + 9) = *(v189 + 9);
    v213 = v184;
    v214 = v185;
    v216 = v187;
    v215 = v186;
    v209 = v180;
    v210 = v181;
    v212 = v183;
    v211 = v182;
    v208 = v179;
    v207 = v178;
  }

  else
  {
    sub_24B940C58(&v207);
  }

  v78 = v130;
  sub_24B8F3208(v129, v130, &qword_27F065308);
  v79 = v240;
  v80 = v239;
  v81 = v238;
  v156 = v217;
  v157[0] = v218[0];
  *(v157 + 9) = *(v218 + 9);
  v153 = v213;
  v154[0] = v214;
  v154[1] = v215;
  v155 = v216;
  v149 = v209;
  v150 = v210;
  v151 = v211;
  v152 = v212;
  v147 = v207;
  v148 = v208;
  v82 = v124;
  sub_24B8F3208(v78, v124, &qword_27F065308);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065318);
  v84 = v82 + v83[12];
  *v84 = 0;
  *(v84 + 8) = v79;
  v85 = v119;
  *(v84 + 16) = v120;
  *(v84 + 24) = v80;
  *(v84 + 32) = v85;
  *(v84 + 40) = v81;
  v86 = v117;
  *(v84 + 48) = v118;
  *(v84 + 56) = v86;
  v87 = v82 + v83[16];
  *&v158 = v128;
  *(&v158 + 1) = v127;
  LOBYTE(v159) = v125;
  *(&v159 + 1) = *v191;
  DWORD1(v159) = *&v191[3];
  v88 = v122;
  v89 = v123;
  *(&v159 + 1) = v123;
  *&v160 = KeyPath;
  *(&v160 + 1) = 4;
  LOBYTE(v161) = 0;
  DWORD1(v161) = *&v190[3];
  *(&v161 + 1) = *v190;
  *(&v161 + 1) = v122;
  LOWORD(v162) = 1;
  BYTE2(v162) = 1;
  BYTE7(v162) = v194;
  *(&v162 + 3) = v193;
  v90 = v121;
  BYTE8(v162) = v121;
  HIDWORD(v162) = *&v192[3];
  *(&v162 + 9) = *v192;
  *&v163 = v42;
  *(&v163 + 1) = v44;
  *&v164 = v46;
  *(&v164 + 1) = v48;
  v165 = 0;
  v92 = v162;
  v91 = v163;
  v93 = v164;
  *(v87 + 112) = 0;
  *(v87 + 80) = v91;
  *(v87 + 96) = v93;
  v94 = v158;
  v95 = v159;
  v96 = v160;
  *(v87 + 48) = v161;
  *(v87 + 64) = v92;
  *(v87 + 16) = v95;
  *(v87 + 32) = v96;
  *v87 = v94;
  v97 = v83[20];
  v98 = v157[0];
  v176 = v156;
  v177[0] = v157[0];
  *(v177 + 9) = *(v157 + 9);
  v99 = v153;
  v100 = v154[0];
  v172 = v153;
  v173 = v154[0];
  v102 = v154[1];
  v101 = v155;
  v174 = v154[1];
  v175 = v155;
  v104 = v151;
  v103 = v152;
  v170 = v151;
  v171 = v152;
  v105 = v149;
  v106 = v150;
  v168 = v149;
  v169 = v150;
  v108 = v147;
  v107 = v148;
  v166 = v147;
  v167 = v148;
  v109 = (v82 + v97);
  v109[10] = v156;
  v109[11] = v98;
  *(v109 + 185) = *(v157 + 9);
  v109[6] = v99;
  v109[7] = v100;
  v109[8] = v102;
  v109[9] = v101;
  v109[2] = v105;
  v109[3] = v106;
  v109[4] = v104;
  v109[5] = v103;
  *v109 = v108;
  v109[1] = v107;
  sub_24B8F3208(&v158, &v178, &qword_27F065320);
  sub_24B8F3208(&v166, &v178, &qword_27F065328);
  sub_24B8F35E4(v129, &qword_27F065308);
  v188 = v156;
  v189[0] = v157[0];
  *(v189 + 9) = *(v157 + 9);
  v184 = v153;
  v185 = v154[0];
  v187 = v155;
  v186 = v154[1];
  v180 = v149;
  v181 = v150;
  v182 = v151;
  v183 = v152;
  v178 = v147;
  v179 = v148;
  sub_24B8F35E4(&v178, &qword_27F065328);
  *&v139 = v128;
  *(&v139 + 1) = v127;
  LOBYTE(v140) = v125;
  *(&v140 + 1) = *v191;
  DWORD1(v140) = *&v191[3];
  *(&v140 + 1) = v89;
  *&v141 = KeyPath;
  *(&v141 + 1) = 4;
  LOBYTE(v142) = 0;
  *(&v142 + 1) = *v190;
  DWORD1(v142) = *&v190[3];
  *(&v142 + 1) = v88;
  LOWORD(v143) = 1;
  BYTE2(v143) = 1;
  BYTE7(v143) = v194;
  *(&v143 + 3) = v193;
  BYTE8(v143) = v90;
  HIDWORD(v143) = *&v192[3];
  *(&v143 + 9) = *v192;
  *&v144 = v42;
  *(&v144 + 1) = v44;
  *&v145 = v46;
  *(&v145 + 1) = v48;
  LOBYTE(v146[0]) = 0;
  sub_24B8F35E4(&v139, &qword_27F065320);
  return sub_24B8F35E4(v130, &qword_27F065308);
}

uint64_t sub_24B940384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_24BAA82DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  sub_24B93F1EC(&v33 - v12);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3C0], v7);
  v14 = sub_24BAA82CC();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  v16 = objc_opt_self();
  v17 = &selRef_secondarySystemGroupedBackgroundColor;
  if ((v14 & 1) == 0)
  {
    v17 = &selRef_systemBackgroundColor;
  }

  v18 = [v16 *v17];
  v34 = sub_24BAA973C();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v41[3] = *&v41[27];
  *&v41[11] = *&v41[35];
  *&v41[19] = *&v41[43];
  v19 = type metadata accessor for FocusFilterSystemConfigurationMasthead();

  v20 = sub_24BAA994C();
  v21 = *(v19 + 32);
  if (*(a1 + v21))
  {
    v22 = *(a1 + v21);
  }

  else
  {
    v22 = sub_24BAA974C();
  }

  KeyPath = swift_getKeyPath();

  sub_24BAA91EC();
  v24 = *MEMORY[0x277CE09A0];
  v25 = sub_24BAA919C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v6, v24, v25);
  (*(v26 + 56))(v6, 0, 1, v25);
  v27 = sub_24BAA91FC();
  sub_24B8F35E4(v6, &qword_27F063CD8);
  v28 = swift_getKeyPath();
  v29 = v34;
  *&v35[0] = v34;
  WORD4(v35[0]) = 256;
  *(v35 + 10) = *v41;
  *(&v35[1] + 10) = *&v41[8];
  *(&v35[2] + 10) = *&v41[16];
  *(&v35[3] + 1) = *&v41[23];
  v30 = v35[1];
  *a2 = v35[0];
  *(a2 + 16) = v30;
  v31 = v35[3];
  *(a2 + 32) = v35[2];
  *(a2 + 48) = v31;
  *(a2 + 64) = v20;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = v22;
  *(a2 + 88) = v28;
  *(a2 + 96) = v27;
  sub_24B8F3208(v35, &v36, &qword_27F064D98);
  v36 = v29;
  v37 = 256;
  v38 = *v41;
  v39 = *&v41[8];
  *v40 = *&v41[16];
  *&v40[14] = *&v41[23];
  return sub_24B8F35E4(&v36, &qword_27F064D98);
}

double sub_24B9407B4@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0652D0);
  sub_24B93F7A4(v1, a1 + *(v3 + 44));
  v4 = sub_24BAA90BC();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0652D8) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_24B9408A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B940984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B940A4C()
{
  sub_24B936C64();
  if (v0 <= 0x3F)
  {
    sub_24B940B08(319, &qword_27F063DF8);
    if (v1 <= 0x3F)
    {
      sub_24B940B08(319, &qword_27F064968);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B940B08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24BAAA3FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_24B940B58()
{
  result = qword_27F0652F0;
  if (!qword_27F0652F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0652D8);
    sub_24B940BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0652F0);
  }

  return result;
}

unint64_t sub_24B940BE4()
{
  result = qword_27F0652F8;
  if (!qword_27F0652F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0652F8);
  }

  return result;
}

double sub_24B940C58(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24B940C94()
{
  sub_24BAA800C();
  result = sub_24BAA7FFC();
  qword_27F076EE0 = result;
  return result;
}

uint64_t sub_24B940CC8()
{
  v0 = sub_24BAA804C();
  __swift_allocate_value_buffer(v0, qword_27F076EE8);
  __swift_project_value_buffer(v0, qword_27F076EE8);
  if (qword_27F063088 != -1)
  {
    swift_once();
  }

  return sub_24BAA801C();
}

uint64_t sub_24B940D58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063090 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA804C();
  __swift_project_value_buffer(v2, qword_27F076EE8);
  sub_24BAA802C();
  result = sub_24BAA8D0C();
  *a1 = v4;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_24B940E28()
{
  if (qword_27F063088 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24B940EA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B940EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B940F7C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065388);
  v2 = v1 - 8;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065390);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  sub_24BAA807C();
  v15 = sub_24BAA988C();
  KeyPath = swift_getKeyPath();
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065398) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653A0) + 36)] = 256;
  sub_24BAA927C();
  sub_24BAA91CC();
  v18 = sub_24BAA921C();

  v19 = swift_getKeyPath();
  v20 = &v14[*(v9 + 44)];
  *v20 = v19;
  v20[1] = v18;
  sub_24BAA806C();
  v21 = sub_24BAA989C();
  v22 = swift_getKeyPath();
  v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653A8) + 36)];
  *v23 = v22;
  v23[1] = v21;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653B0) + 36)] = 256;
  v24 = sub_24BAA927C();
  v25 = swift_getKeyPath();
  v26 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653B8) + 36)];
  *v26 = v25;
  v26[1] = v24;
  v27 = swift_getKeyPath();
  v28 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653C0) + 36)];
  *v28 = v27;
  v28[1] = 0xC000000000000000;
  v29 = &v7[*(v2 + 44)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B10) + 28);
  v31 = sub_24BAA937C();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *v29 = swift_getKeyPath();
  sub_24B8F3208(v14, v12, &qword_27F065390);
  sub_24B8F3208(v7, v5, &qword_27F065388);
  v32 = v36;
  sub_24B8F3208(v12, v36, &qword_27F065390);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653C8);
  sub_24B8F3208(v5, v32 + *(v33 + 48), &qword_27F065388);
  sub_24B8F35E4(v7, &qword_27F065388);
  sub_24B8F35E4(v14, &qword_27F065390);
  sub_24B8F35E4(v5, &qword_27F065388);
  return sub_24B8F35E4(v12, &qword_27F065390);
}

uint64_t sub_24B94134C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065368);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-v3];
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065370) + 48);
  *v4 = sub_24BAA8BDC();
  *(v4 + 1) = 0x3FF0000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065378);
  sub_24B940F7C(&v4[*(v5 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065380);
  sub_24B8F384C(&qword_27F065360, &qword_27F065368);
  swift_getOpaqueTypeConformance2();
  return sub_24BAA9C1C();
}

uint64_t sub_24B9414CC()
{
  if (qword_27F063090 != -1)
  {
    swift_once();
  }

  v0 = sub_24BAA804C();
  __swift_project_value_buffer(v0, qword_27F076EE8);
  v1 = sub_24BAA803C();
  sub_24B941624(v1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065340);
  sub_24B8F384C(&qword_27F065348, &qword_27F065338);
  sub_24B941920();
  sub_24B941978();
  return sub_24BAA9BFC();
}

uint64_t sub_24B941624(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065370);
  v2 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v39 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v2 + 80);
    v42 = v11;
    v43 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x277D84F90] + v43;
    v13 = 0;
    v14 = 0;
    v47 = sub_24BAA808C();
    v15 = *(v47 - 8);
    v16 = *(v15 + 16);
    v45 = v15 + 16;
    v46 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v44 = *(v15 + 72);
    v18 = v10;
    v40 = v9;
    v41 = v2;
    while (1)
    {
      v20 = v47;
      v21 = *(v48 + 48);
      *v5 = v13;
      v46(&v5[v21], v17, v20);
      result = sub_24B941A98(v5, v8);
      if (v14)
      {
        v10 = v18;
        v19 = __OFSUB__(v14--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v18[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v23 = v8;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653D0);
        v26 = *(v2 + 72);
        v27 = v43;
        v10 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v10);
        if (!v26)
        {
          goto LABEL_34;
        }

        v28 = result - v27;
        if (result - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v30 = v28 / v26;
        v10[2] = v25;
        v10[3] = 2 * (v28 / v26);
        v31 = v10 + v27;
        v32 = v18[3] >> 1;
        v33 = v32 * v26;
        if (v18[2])
        {
          if (v10 < v18 || v31 >= v18 + v43 + v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v31[v33];
        v35 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v8 = v23;
        v9 = v40;
        v2 = v41;
        v19 = __OFSUB__(v35, 1);
        v14 = v35 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      result = sub_24B941A98(v8, v12);
      v12 += *(v2 + 72);
      v17 += v44;
      v18 = v10;
      if (v9 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v36 = v10[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v19 = __OFSUB__(v37, v14);
    v38 = v37 - v14;
    if (v19)
    {
      goto LABEL_36;
    }

    v10[2] = v38;
  }

  return v10;
}

unint64_t sub_24B941920()
{
  result = qword_27F065350;
  if (!qword_27F065350)
  {
    sub_24BAA808C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065350);
  }

  return result;
}

unint64_t sub_24B941978()
{
  result = qword_27F065358;
  if (!qword_27F065358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065340);
    sub_24B8F384C(&qword_27F065360, &qword_27F065368);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065358);
  }

  return result;
}

uint64_t sub_24B941A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_24B941B70()
{
  result = qword_27F0653D8;
  if (!qword_27F0653D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0653E0);
    sub_24B941978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0653D8);
  }

  return result;
}

unint64_t sub_24B941BF8()
{
  result = qword_27F0653E8;
  if (!qword_27F0653E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0653F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0653E8);
  }

  return result;
}

uint64_t QuickStartAppExceptionsView.init(modeIdentifier:dismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 18) = 514;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  sub_24BAA99EC();
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  sub_24BAA99EC();
  *(a5 + 40) = v11;
  *(a5 + 17) = 1;
  *(a5 + 48) = v12;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a5 = sub_24B941E08;
  *(a5 + 8) = result;
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_24B941D74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityConfigViewModel();
  swift_allocObject();

  return sub_24B982ABC(a1, a2);
}

uint64_t sub_24B941DD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t QuickStartAppExceptionsView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *v1;
  v33 = v1[1];
  v34 = v3;
  v35 = v4;
  v36 = *(v1 + 8);
  v32 = v5;
  *a1 = sub_24BAA9CEC();
  a1[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0653F8);
  sub_24B942044(&v32, a1 + *(v7 + 44));
  v8 = [objc_opt_self() systemBackgroundColor];
  v9 = sub_24BAA973C();
  v10 = sub_24BAA90BC();
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065400) + 36);
  *v11 = v9;
  v11[8] = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065408) + 36);
  v13 = *(sub_24BAA869C() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_24BAA8B2C();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #12.0 }

  *v12 = _Q0;
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
  sub_24BAA9CFC();
  sub_24BAA83BC();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065410) + 36));
  v22 = v30;
  *v21 = v29;
  v21[1] = v22;
  v21[2] = v31;
  v23 = swift_allocObject();
  v24 = v33;
  v25 = v35;
  *(v23 + 48) = v34;
  *(v23 + 64) = v25;
  *(v23 + 80) = v36;
  *(v23 + 16) = v32;
  *(v23 + 32) = v24;
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065418) + 36));
  *v26 = sub_24B9462C8;
  v26[1] = v23;
  v26[2] = 0;
  v26[3] = 0;
  return sub_24B9462D0(&v32, v28);
}

uint64_t sub_24B942044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v54 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065450) - 8;
  MEMORY[0x28223BE20](v47);
  v4 = &v43 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065458) - 8;
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065460) - 8;
  v6 = MEMORY[0x28223BE20](v50);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v52 = &v43 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065468);
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065470);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v43 = &v43 - v21;
  v55 = a1;
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065478);
  sub_24B8F384C(&qword_27F065480, &qword_27F065478);
  sub_24BAA829C();
  sub_24BAA9D1C();
  sub_24BAA86BC();
  (*(v11 + 32))(v20, v13, v45);
  v22 = &v20[*(v15 + 44)];
  v23 = v61;
  *(v22 + 4) = v60;
  *(v22 + 5) = v23;
  *(v22 + 6) = v62;
  v24 = v57;
  *v22 = v56;
  *(v22 + 1) = v24;
  v25 = v59;
  *(v22 + 2) = v58;
  *(v22 + 3) = v25;
  v26 = v43;
  sub_24B90294C(v20, v43, &qword_27F065470);
  *v4 = sub_24BAA8BCC();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065488);
  sub_24B94529C(v44, &v4[*(v27 + 44)]);
  v28 = sub_24BAA90BC();
  v29 = &v4[*(v47 + 44)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_24BAA9D1C();
  sub_24BAA86BC();
  v30 = v49;
  sub_24B90294C(v4, v49, &qword_27F065450);
  v31 = (v30 + *(v51 + 44));
  v32 = v68;
  v31[4] = v67;
  v31[5] = v32;
  v31[6] = v69;
  v33 = v64;
  *v31 = v63;
  v31[1] = v33;
  v34 = v66;
  v31[2] = v65;
  v31[3] = v34;
  v35 = v48;
  v36 = &v48[*(v50 + 44)];
  sub_24BAA9CAC();
  LOBYTE(v4) = sub_24BAA90BC();
  v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065490) + 36)] = v4;
  sub_24B90294C(v30, v35, &qword_27F065458);
  v37 = v52;
  sub_24B90294C(v35, v52, &qword_27F065460);
  v38 = v46;
  sub_24B8F3208(v26, v46, &qword_27F065470);
  v39 = v53;
  sub_24B8F3208(v37, v53, &qword_27F065460);
  v40 = v54;
  sub_24B8F3208(v38, v54, &qword_27F065470);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065498);
  sub_24B8F3208(v39, v40 + *(v41 + 48), &qword_27F065460);
  sub_24B8F35E4(v37, &qword_27F065460);
  sub_24B8F35E4(v26, &qword_27F065470);
  sub_24B8F35E4(v39, &qword_27F065460);
  return sub_24B8F35E4(v38, &qword_27F065470);
}

uint64_t sub_24B94267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065530);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  *v9 = sub_24BAA8BCC();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065538);
  sub_24B942850(a1, &v9[*(v10 + 44)]);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v19 = v23;
  v20 = v21;
  v11 = v25;
  v12 = v26;
  v29 = 1;
  v28 = v22;
  v27 = v24;
  sub_24B8F3208(v9, v7, &qword_27F065530);
  v13 = v29;
  v14 = v28;
  LOBYTE(a1) = v27;
  sub_24B8F3208(v7, a2, &qword_27F065530);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065540) + 48);
  *v15 = 0;
  *(v15 + 8) = v13;
  v16 = v19;
  *(v15 + 16) = v20;
  *(v15 + 24) = v14;
  *(v15 + 32) = v16;
  *(v15 + 40) = a1;
  *(v15 + 48) = v11;
  *(v15 + 56) = v12;
  sub_24B8F35E4(v9, &qword_27F065530);
  return sub_24B8F35E4(v7, &qword_27F065530);
}

uint64_t sub_24B942850@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v182 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  v173 = *(v3 - 8);
  v174 = *(v173 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v189 = &v147 - v4;
  v160 = type metadata accessor for AllowedAppsPickerView(0);
  MEMORY[0x28223BE20](v160);
  v6 = (&v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065548);
  MEMORY[0x28223BE20](v175);
  v178 = &v147 - v7;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065550);
  MEMORY[0x28223BE20](v177);
  v180 = &v147 - v8;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065558);
  v9 = MEMORY[0x28223BE20](v179);
  v181 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v176 = &v147 - v12;
  MEMORY[0x28223BE20](v11);
  v203 = &v147 - v13;
  v204 = sub_24BAA8AAC();
  LOBYTE(v217) = 1;
  sub_24B943AE8(a1, &v239);
  v270 = *&v240[112];
  v271[0] = *&v240[128];
  *(v271 + 9) = *&v240[137];
  v266 = *&v240[48];
  v267 = *&v240[64];
  v268 = *&v240[80];
  v269 = *&v240[96];
  v262 = v239;
  v263 = *v240;
  v264 = *&v240[16];
  v265 = *&v240[32];
  v272[7] = *&v240[96];
  v272[8] = *&v240[112];
  v273[0] = *&v240[128];
  *(v273 + 9) = *&v240[137];
  v272[4] = *&v240[48];
  v272[5] = *&v240[64];
  v272[6] = *&v240[80];
  v272[0] = v239;
  v272[1] = *v240;
  v272[2] = *&v240[16];
  v272[3] = *&v240[32];
  sub_24B8F3208(&v262, v208, &qword_27F065560);
  sub_24B8F35E4(v272, &qword_27F065560);
  *(&v260[7] + 7) = v269;
  *(&v260[8] + 7) = v270;
  *(&v260[9] + 7) = v271[0];
  v260[10] = *(v271 + 9);
  *(&v260[3] + 7) = v265;
  *(&v260[4] + 7) = v266;
  *(&v260[5] + 7) = v267;
  *(&v260[6] + 7) = v268;
  *(v260 + 7) = v262;
  *(&v260[1] + 7) = v263;
  *(&v260[2] + 7) = v264;
  v192 = v217;
  v202 = sub_24BAA90AC();
  sub_24BAA828C();
  v200 = v15;
  v201 = v14;
  v198 = v17;
  v199 = v16;
  LOBYTE(v208[0]) = 0;
  v197 = sub_24BAA90CC();
  sub_24BAA828C();
  v195 = v19;
  v196 = v18;
  v193 = v21;
  v194 = v20;
  LOBYTE(v239) = 0;
  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = type metadata accessor for ActivityConfigViewModel();
  v26 = sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  v191 = sub_24B991A94();

  KeyPath = swift_getKeyPath();
  v27 = *(a1 + 48);
  *&v240[16] = *(a1 + 32);
  *&v240[32] = v27;
  *&v240[48] = *(a1 + 64);
  v29 = *a1;
  v28 = *(a1 + 16);
  v205 = a1;
  v239 = v29;
  *v240 = v28;
  v208[0] = sub_24B9446A0();
  v208[1] = v30;
  sub_24B8F5E3C();
  v167 = sub_24BAA93CC();
  v187 = v31;
  v188 = v32;
  v34 = v33;
  v161 = swift_getKeyPath();
  v172 = sub_24BAA90AC();
  sub_24BAA828C();
  v170 = v36;
  v171 = v35;
  v168 = v38;
  v169 = v37;
  v186 = v34 & 1;
  LOBYTE(v208[0]) = v34 & 1;
  LOBYTE(v217) = 0;
  v166 = sub_24BAA90DC();
  sub_24BAA828C();
  v164 = v40;
  v165 = v39;
  v162 = v42;
  v163 = v41;
  LOBYTE(v239) = 0;
  v184 = v23;
  v185 = v22;
  v183 = v24;
  v206 = v25;
  v207 = v26;
  sub_24BAA82FC();
  sub_24B984444();
  v43 = sub_24B8D7188();
  if (v43)
  {
    v44 = v43;
    v45 = [v43 mode];

    v46 = [v45 identifier];
    v47 = v189;
    sub_24BAA7E1C();

    v48 = 0;
    v49 = v47;
  }

  else
  {
    v49 = v189;
    v48 = 1;
  }

  v50 = sub_24BAA7E4C();
  (*(*(v50 - 8) + 56))(v49, v48, 1, v50);
  v51 = v205;
  v52 = *(v205 + 48);
  *&v240[16] = *(v205 + 32);
  *&v240[32] = v52;
  *&v240[48] = *(v205 + 64);
  v53 = *(v205 + 16);
  v239 = *v205;
  *v240 = v53;
  *&v217 = sub_24B944BA4();
  type metadata accessor for DNDConfigurationType(0);
  sub_24BAA9BAC();
  v158 = v208[1];
  v159 = v208[0];
  v157 = v208[2];
  v217 = *(v51 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
  sub_24BAA9A1C();
  v148 = *(&v239 + 1);
  v149 = v239;
  v147 = *v240;
  LOBYTE(v239) = 0;
  sub_24BAA9BAC();
  v154 = *(&v217 + 1);
  v155 = v217;
  v153 = v218;
  v209 = *(v51 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v151 = *(&v239 + 1);
  v152 = v239;
  v150 = v240[0];
  sub_24BAA82FC();
  v156 = sub_24B991A94();

  sub_24BAA82FC();
  v54 = sub_24B9A1610();

  if (v54 >> 62)
  {
    v55 = sub_24BAAA52C();
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v160;

  v57 = swift_allocObject();
  v58 = v205;
  v59 = *(v205 + 48);
  *(v57 + 48) = *(v205 + 32);
  *(v57 + 64) = v59;
  *(v57 + 80) = *(v58 + 64);
  v60 = *(v58 + 16);
  *(v57 + 16) = *v58;
  *(v57 + 32) = v60;
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v61 = v56[5];
  *(v6 + v61) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v62 = v6 + v56[6];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = (v6 + v56[7]);
  sub_24B9462D0(v58, &v239);
  *v63 = sub_24BAA86FC();
  v63[1] = v64;
  v65 = (v6 + v56[15]);
  v66 = MEMORY[0x277D84F90];
  *&v209 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  sub_24BAA99EC();
  v67 = *(&v239 + 1);
  *v65 = v239;
  v65[1] = v67;
  if (v66 >> 62 && sub_24BAAA52C())
  {
    v68 = sub_24B8F2E1C(MEMORY[0x277D84F90]);
  }

  else
  {
    v68 = MEMORY[0x277D84FA0];
  }

  v69 = (v6 + v56[16]);
  *&v209 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065568);
  sub_24BAA99EC();
  v70 = *(&v239 + 1);
  *v69 = v239;
  v69[1] = v70;
  if (v66 >> 62 && sub_24BAAA52C())
  {
    v71 = sub_24B8F2E1C(MEMORY[0x277D84F90]);
  }

  else
  {
    v71 = MEMORY[0x277D84FA0];
  }

  LODWORD(v160) = v55 == 0;
  v72 = (v6 + v56[17]);
  *&v209 = v71;
  sub_24BAA99EC();
  v73 = *(&v239 + 1);
  *v72 = v239;
  v72[1] = v73;
  v74 = v6 + v56[18];
  LOBYTE(v209) = 0;
  sub_24BAA99EC();
  v75 = *(&v239 + 1);
  *v74 = v239;
  *(v74 + 1) = v75;
  v76 = v6 + v56[19];
  LOBYTE(v209) = 0;
  sub_24BAA99EC();
  v77 = *(&v239 + 1);
  *v76 = v239;
  *(v76 + 1) = v77;
  v78 = v6 + v56[21];
  LOBYTE(v209) = 0;
  sub_24BAA99EC();
  v79 = *(&v239 + 1);
  *v78 = v239;
  *(v78 + 1) = v79;
  v80 = v6 + v56[22];
  LOBYTE(v209) = 0;
  sub_24BAA99EC();
  v81 = *(&v239 + 1);
  *v80 = v239;
  *(v80 + 1) = v81;
  v82 = v6 + v56[23];
  LOBYTE(v209) = 0;
  sub_24BAA99EC();
  v83 = *(&v239 + 1);
  *v82 = v239;
  *(v82 + 1) = v83;
  v84 = v6 + v56[24];
  *v84 = sub_24B8FC66C;
  *(v84 + 1) = 0;
  v84[16] = 0;
  v85 = v6 + v56[25];
  *v85 = sub_24B91CCE8;
  *(v85 + 1) = 0;
  v85[16] = 0;
  v86 = (v6 + v56[8]);
  v88 = v158;
  v87 = v159;
  *v86 = v159;
  v86[1] = v88;
  v89 = v157;
  v86[2] = v157;
  v90 = (v6 + v56[9]);
  v92 = v148;
  v91 = v149;
  *v90 = v149;
  v90[1] = v92;
  v93 = v147;
  v90[2] = v147;
  *&v239 = v91;
  *(&v239 + 1) = v92;
  *v240 = v93;

  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  MEMORY[0x24C24FC10](&v209, v94);
  v95 = (v6 + v56[20]);
  *v95 = v209;
  v95[1] = 0;
  v96 = v6 + v56[10];
  v97 = v154;
  *v96 = v155;
  *(v96 + 1) = v97;
  v96[16] = v153;
  v98 = v6 + v56[11];
  v99 = v151;
  *v98 = v152;
  *(v98 + 1) = v99;
  v98[16] = v150;
  v100 = (*(v173 + 80) + 16) & ~*(v173 + 80);
  v101 = (v174 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  sub_24B90294C(v189, v102 + v100, &qword_27F0669D0);
  v103 = (v102 + v101);
  *v103 = v87;
  v103[1] = v88;
  v103[2] = v89;
  v104 = v6 + v56[26];
  *v104 = sub_24B9472EC;
  *(v104 + 1) = v102;
  v104[16] = 0;
  *(v6 + v56[12]) = v160;
  *(v6 + v56[13]) = v156;
  v105 = (v6 + v56[14]);
  *v105 = sub_24B947158;
  v105[1] = v57;
  v106 = sub_24BAA82FC();
  v107 = sub_24BAA813C();
  v108 = v178;
  sub_24B94738C(v6, v178);
  v109 = (v108 + *(v175 + 36));
  *v109 = v107;
  v109[1] = v106;
  v110 = *(v205 + 19);
  v111 = swift_getKeyPath();
  v112 = swift_allocObject();
  *(v112 + 16) = v110 & 1;
  v113 = v180;
  sub_24B90294C(v108, v180, &qword_27F065548);
  v114 = (v113 + *(v177 + 36));
  *v114 = v111;
  v114[1] = sub_24B9027F8;
  v114[2] = v112;
  LOBYTE(v111) = sub_24BAA90AC();
  sub_24BAA828C();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v123 = v113;
  v124 = v176;
  sub_24B90294C(v123, v176, &qword_27F065550);
  v125 = v124 + *(v179 + 36);
  *v125 = v111;
  *(v125 + 8) = v116;
  *(v125 + 16) = v118;
  *(v125 + 24) = v120;
  *(v125 + 32) = v122;
  *(v125 + 40) = 0;
  v126 = v124;
  v127 = v203;
  sub_24B90294C(v126, v203, &qword_27F065558);
  v128 = v181;
  sub_24B8F3208(v127, v181, &qword_27F065558);
  *(&v208[16] + 1) = v260[7];
  *(&v208[18] + 1) = v260[8];
  *(&v208[20] + 1) = v260[9];
  *(&v208[22] + 1) = v260[10];
  *(&v208[8] + 1) = v260[3];
  *(&v208[10] + 1) = v260[4];
  *(&v208[12] + 1) = v260[5];
  *(&v208[14] + 1) = v260[6];
  *(&v208[2] + 1) = v260[0];
  *(&v208[4] + 1) = v260[1];
  v208[0] = v204;
  v208[1] = 0;
  LOBYTE(v208[2]) = v192;
  *(&v208[6] + 1) = v260[2];
  *(&v208[24] + 1) = *v277;
  HIDWORD(v208[24]) = *&v277[3];
  LOBYTE(v208[25]) = v202;
  *(&v208[25] + 1) = *v276;
  HIDWORD(v208[25]) = *&v276[3];
  v208[26] = v201;
  v208[27] = v200;
  v208[28] = v199;
  v208[29] = v198;
  LOBYTE(v208[30]) = 0;
  *(&v208[30] + 1) = *v275;
  HIDWORD(v208[30]) = *&v275[3];
  LOBYTE(v208[31]) = v197;
  HIDWORD(v208[31]) = *&v274[3];
  *(&v208[31] + 1) = *v274;
  v208[32] = v196;
  v208[33] = v195;
  v208[34] = v194;
  v208[35] = v193;
  LOBYTE(v208[36]) = 0;
  *(&v208[36] + 1) = *v261;
  HIDWORD(v208[36]) = *&v261[3];
  v208[37] = KeyPath;
  v208[38] = v191;
  v129 = v182;
  memcpy(v182, v208, 0x138uLL);
  v130 = v167;
  *&v209 = v167;
  *(&v209 + 1) = v187;
  LOBYTE(v210) = v186;
  *(&v210 + 1) = *v280;
  DWORD1(v210) = *&v280[3];
  *(&v210 + 1) = v188;
  v131 = v161;
  *&v211 = v161;
  BYTE8(v211) = 1;
  *(&v211 + 9) = *v279;
  HIDWORD(v211) = *&v279[3];
  LOBYTE(v112) = v172;
  LOBYTE(v212) = v172;
  *(&v212 + 1) = *v278;
  DWORD1(v212) = *&v278[3];
  v133 = v170;
  v132 = v171;
  *(&v212 + 1) = v171;
  *&v213 = v170;
  v135 = v168;
  v134 = v169;
  *(&v213 + 1) = v169;
  *&v214 = v168;
  BYTE8(v214) = 0;
  *(&v214 + 9) = v282[0];
  HIDWORD(v214) = *(v282 + 3);
  LOBYTE(v101) = v166;
  LOBYTE(v215) = v166;
  DWORD1(v215) = *&v281[3];
  *(&v215 + 1) = *v281;
  v137 = v164;
  v136 = v165;
  *(&v215 + 1) = v165;
  *&v216[0] = v164;
  v139 = v162;
  v138 = v163;
  *(&v216[0] + 1) = v163;
  *&v216[1] = v162;
  BYTE8(v216[1]) = 0;
  v140 = v210;
  *(v129 + 312) = v209;
  *(v129 + 328) = v140;
  v141 = v212;
  *(v129 + 344) = v211;
  *(v129 + 360) = v141;
  v142 = v213;
  v143 = v214;
  *(v129 + 433) = *(v216 + 9);
  v144 = v216[0];
  *(v129 + 408) = v215;
  *(v129 + 424) = v144;
  *(v129 + 376) = v142;
  *(v129 + 392) = v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065570);
  sub_24B8F3208(v128, &v129[*(v145 + 64)], &qword_27F065558);
  sub_24B8F3208(v208, &v239, &qword_27F065578);
  sub_24B8F3208(&v209, &v239, &qword_27F065580);
  sub_24B8F35E4(v203, &qword_27F065558);
  sub_24B8F35E4(v128, &qword_27F065558);
  *&v217 = v130;
  *(&v217 + 1) = v187;
  v218 = v186;
  *v219 = *v280;
  *&v219[3] = *&v280[3];
  v220 = v188;
  v221 = v131;
  v222 = 1;
  *v223 = *v279;
  *&v223[3] = *&v279[3];
  v224 = v112;
  *v225 = *v278;
  *&v225[3] = *&v278[3];
  v226 = v132;
  v227 = v133;
  v228 = v134;
  v229 = v135;
  v230 = 0;
  *&v231[3] = *(v282 + 3);
  *v231 = v282[0];
  v232 = v101;
  *&v233[3] = *&v281[3];
  *v233 = *v281;
  v234 = v136;
  v235 = v137;
  v236 = v138;
  v237 = v139;
  v238 = 0;
  sub_24B8F35E4(&v217, &qword_27F065580);
  *&v240[113] = v260[7];
  *&v240[129] = v260[8];
  *&v240[145] = v260[9];
  *&v240[161] = v260[10];
  *&v240[49] = v260[3];
  *&v240[65] = v260[4];
  *&v240[81] = v260[5];
  *&v240[97] = v260[6];
  *&v240[1] = v260[0];
  *&v240[17] = v260[1];
  v239 = v204;
  v240[0] = v192;
  *&v240[33] = v260[2];
  *v241 = *v277;
  *&v241[3] = *&v277[3];
  v242 = v202;
  *v243 = *v276;
  *&v243[3] = *&v276[3];
  v244 = v201;
  v245 = v200;
  v246 = v199;
  v247 = v198;
  v248 = 0;
  *v249 = *v275;
  *&v249[3] = *&v275[3];
  v250 = v197;
  *&v251[3] = *&v274[3];
  *v251 = *v274;
  v252 = v196;
  v253 = v195;
  v254 = v194;
  v255 = v193;
  v256 = 0;
  *v257 = *v261;
  *&v257[3] = *&v261[3];
  v258 = KeyPath;
  v259 = v191;
  return sub_24B8F35E4(&v239, &qword_27F065578);
}

uint64_t sub_24B943AE8@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v3 = sub_24BAA992C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 16);
  v10 = type metadata accessor for ActivityConfigViewModel();
  v11 = sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  KeyPath = v8;
  v54 = v7;
  LODWORD(v52) = v9;
  v51 = v10;
  v48[1] = v11;
  sub_24BAA82FC();
  sub_24B984444();
  v12 = sub_24B8D7188();
  if (v12 && (v13 = v12, v14 = [v12 mode], v13, v15 = objc_msgSend(v14, sel_symbolImageName), v14, v15))
  {
    sub_24BAAA01C();
  }

  else
  {
  }

  sub_24BAA994C();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v49 = sub_24BAA997C();

  (*(v4 + 8))(v6, v3);
  sub_24BAA82FC();
  v54 = sub_24B991A94();

  KeyPath = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v95 = 1;
  v51 = sub_24BAA914C();
  v52 = swift_getKeyPath();
  v16 = a1[3];
  *v89 = a1[2];
  *&v89[16] = v16;
  *&v89[32] = *(a1 + 8);
  v17 = a1[1];
  v87 = *a1;
  v88 = v17;
  v67 = sub_24B9440B4();
  v68 = v18;
  sub_24B8F5E3C();
  v19 = sub_24BAA93CC();
  v21 = v20;
  v23 = v22;
  sub_24BAA914C();
  v24 = sub_24BAA939C();
  v26 = v25;
  v28 = v27;

  sub_24B900910(v19, v21, v23 & 1);

  sub_24BAA91AC();
  v29 = sub_24BAA932C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24B900910(v24, v26, v28 & 1);

  v36 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v38 = v49;
  v67 = v49;
  v68 = 0;
  LOWORD(v69) = 1;
  *(&v69 + 2) = v93;
  WORD3(v69) = v94;
  *(&v69 + 1) = KeyPath;
  *&v70[0] = v54;
  *(v70 + 8) = v64;
  *(&v70[1] + 8) = v65;
  *(&v70[2] + 8) = v66;
  *(&v70[3] + 1) = v52;
  v71 = v51;
  v55 = v49;
  v56 = v69;
  *&v61[0] = v51;
  v59 = v70[2];
  v60 = v70[3];
  v57 = v70[0];
  v58 = v70[1];
  *&v72 = v29;
  *(&v72 + 1) = v31;
  LOBYTE(v73) = v33 & 1;
  DWORD1(v73) = *(v63 + 3);
  *(&v73 + 1) = v63[0];
  *(&v73 + 1) = v35;
  *&v74 = v36;
  *(&v74 + 1) = 3;
  LOBYTE(v75) = 0;
  DWORD1(v75) = *(v62 + 3);
  *(&v75 + 1) = v62[0];
  *(&v75 + 1) = v37;
  v76 = 1;
  *(v61 + 8) = v72;
  BYTE8(v61[4]) = 1;
  *(&v61[3] + 8) = v75;
  *(&v61[2] + 8) = v74;
  *(&v61[1] + 8) = v73;
  v39 = v69;
  v40 = v50;
  *v50 = v49;
  v40[1] = v39;
  v41 = v57;
  v42 = v58;
  v43 = v60;
  v40[4] = v59;
  v40[5] = v43;
  v40[2] = v41;
  v40[3] = v42;
  v44 = v61[0];
  v45 = v61[1];
  *(v40 + 153) = *(&v61[3] + 9);
  v46 = v61[3];
  v40[8] = v61[2];
  v40[9] = v46;
  v40[6] = v44;
  v40[7] = v45;
  v77[0] = v29;
  v77[1] = v31;
  v78 = v33 & 1;
  *v79 = v63[0];
  *&v79[3] = *(v63 + 3);
  v80 = v35;
  v81 = v36;
  v82 = 3;
  v83 = 0;
  *v84 = v62[0];
  *&v84[3] = *(v62 + 3);
  v85 = v37;
  v86 = 1;
  sub_24B8F3208(&v67, &v87, &qword_27F065588);
  sub_24B8F3208(&v72, &v87, &qword_27F065590);
  sub_24B8F35E4(v77, &qword_27F065590);
  v87 = v38;
  LOWORD(v88) = 1;
  *(&v88 + 2) = v93;
  WORD3(v88) = v94;
  *(&v88 + 1) = KeyPath;
  *v89 = v54;
  *&v89[8] = v64;
  *&v89[24] = v65;
  v90 = v66;
  v91 = v52;
  v92 = v51;
  return sub_24B8F35E4(&v87, &qword_27F065588);
}

uint64_t sub_24B9440B4()
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  sub_24B984444();
  v0 = sub_24B8D7188();

  if (!v0)
  {

    goto LABEL_10;
  }

  v1 = [v0 mode];

  v2 = [v1 semanticType];

  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_10;
        }

        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }
      }

      else if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

LABEL_33:
      swift_once();
      return sub_24BAA7C2C();
    }

LABEL_27:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_33;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
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

    goto LABEL_33;
  }

  switch(v2)
  {
    case 6:
      goto LABEL_27;
    case 7:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_33;
    case 8:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_33;
  }

LABEL_10:
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24BAAD5B0;
  sub_24BAA82FC();
  sub_24B984444();
  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 mode];

    v7 = [v6 name];
    v8 = sub_24BAAA01C();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_24B8F6A20();
  *(v3 + 32) = v8;
  *(v3 + 40) = v10;
  v11 = sub_24BAA9FEC();

  return v11;
}

uint64_t sub_24B9446A0()
{
  sub_24B946324();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  sub_24B984444();
  v0 = sub_24B8D7188();

  if (!v0)
  {

    goto LABEL_9;
  }

  v1 = [v0 mode];

  v2 = [v1 semanticType];

  if (v2 > 3)
  {
    if (v2 <= 5)
    {

      if (v2 == 4)
      {
        v3 = 1263685463;
        v4 = 0xE400000000000000;
      }

      else
      {
        v3 = 0x4C414E4F53524550;
        v4 = 0xE800000000000000;
      }

      goto LABEL_27;
    }

    if (v2 != 6)
    {
      if (v2 == 7)
      {

        v3 = 0x474E494D4147;
        v4 = 0xE600000000000000;
        goto LABEL_27;
      }

      if (v2 == 8)
      {

        v3 = 0x4E4C5546444E494DLL;
        v4 = 0xEB00000000535345;
LABEL_27:
        MEMORY[0x24C250160](v3, v4);

        if (qword_27F063110 != -1)
        {
          swift_once();
        }

        v9 = sub_24BAA7C2C();
        goto LABEL_30;
      }

      goto LABEL_9;
    }

    v10 = 1145128274;
    goto LABEL_23;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {

      v3 = 0x5353454E544946;
LABEL_24:
      v4 = 0xE700000000000000;
      goto LABEL_27;
    }

    v10 = 1447645764;
LABEL_23:
    v3 = v10 | 0x474E4900000000;
    goto LABEL_24;
  }

  if (!v2)
  {

    v3 = 0x445F544F4E5F4F44;
    v4 = 0xEE00425255545349;
    goto LABEL_27;
  }

  if (v2 == 1)
  {

    v3 = 0x5045454C53;
    v4 = 0xE500000000000000;
    goto LABEL_27;
  }

LABEL_9:

  MEMORY[0x24C250160](16421, 0xE200000000000000);

  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24BAAD5B0;
  v6 = sub_24B9440B4();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_24B8F6A20();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = sub_24BAA9FEC();

LABEL_30:

  return v9;
}

uint64_t sub_24B944BA4()
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 configuration];
    v3 = [v2 applicationConfigurationType];

    if (v3 != 2)
    {
      sub_24BAA82FC();
      sub_24B984444();
      v4 = sub_24B8D7188();
      if (v4)
      {
        v5 = v4;
        v6 = [v4 configuration];
        v7 = [v6 applicationConfigurationType];

        return v7;
      }

      else
      {

        return 2;
      }
    }
  }

  else
  {
  }

  sub_24BAA82FC();
  sub_24B984444();
  v9 = sub_24B8D7188();

  if (v9)
  {
    v10 = [v9 mode];

    v11 = [v10 semanticType];

    if (v11 == 5)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24B944DE8()
{
  v1 = *(v0 + 48);
  v34 = *(v0 + 32);
  v35 = v1;
  v36 = *(v0 + 64);
  v2 = *(v0 + 16);
  v32 = *v0;
  v33 = v2;
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v3 = sub_24BAA812C();
  __swift_project_value_buffer(v3, qword_27F077038);
  sub_24B9462D0(&v32, &v27);
  v4 = sub_24BAA810C();
  v5 = sub_24BAAA2CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v29 = v34;
    v30 = v35;
    v31 = v36;
    v27 = v32;
    v28 = v33;
    *(v6 + 4) = sub_24B944BA4();
    sub_24B947408(&v32);
    _os_log_impl(&dword_24B8D3000, v4, v5, "[QuickStart] writing appExceptionType=%lu", v6, 0xCu);
    MEMORY[0x24C251390](v6, -1, -1);
  }

  else
  {
    sub_24B947408(&v32);
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  v29 = v34;
  v30 = v35;
  v31 = v36;
  v27 = v32;
  v28 = v33;
  v7 = sub_24B944BA4();
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DB0E4(v7);

  sub_24B9462D0(&v32, &v27);
  v8 = sub_24BAA810C();
  v9 = sub_24BAAA2CC();
  sub_24B947408(&v32);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136315138;
    v26 = v24;
    v27 = __PAIR128__(v34, *(&v33 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
    v23 = v9;
    sub_24BAA99FC();
    v11 = type metadata accessor for EventSource();
    v12 = MEMORY[0x24C2501F0](v25, v11);
    v14 = v13;

    v15 = sub_24B8E49D4(v12, v14, &v26);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_24B8D3000, v8, v23, "[QuickStart] writing appsWithExceptions=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C251390](v24, -1, -1);
    MEMORY[0x24C251390](v10, -1, -1);
  }

  v16 = sub_24BAA82FC();
  v27 = __PAIR128__(v34, *(&v33 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
  sub_24BAA99FC();
  v17 = v26;
  if (v26 >> 62)
  {
    if (sub_24BAAA52C() >= 501)
    {
      goto LABEL_11;
    }
  }

  else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 501)
  {
    goto LABEL_11;
  }

  v18 = *(v16 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__appsWithExceptions);

  v20 = sub_24B8F154C(v19);

  v21 = sub_24B9817E4(v18, v20);

  if ((v21 & 1) == 0)
  {
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DD9E0(v17);

    goto LABEL_13;
  }

LABEL_11:

LABEL_13:

  return (*(&v35 + 1))(1);
}

uint64_t sub_24B94529C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654A0);
  v3 = *(v38 - 8);
  v4 = MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654A8);
  v36 = *(v8 - 8);
  v9 = v36;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = swift_allocObject();
  v16 = *(a1 + 48);
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(a1 + 64);
  v17 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  v40 = a1;
  sub_24B9462D0(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654B0);
  sub_24B946E64();
  v35 = v14;
  sub_24BAA9A5C();
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  sub_24B9462D0(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654D0);
  sub_24B946F60();
  v21 = v7;
  v33 = v7;
  sub_24BAA9A5C();
  v22 = *(v9 + 16);
  v34 = v12;
  v22(v12, v14, v8);
  v23 = *(v3 + 16);
  v24 = v37;
  v25 = v21;
  v26 = v38;
  v23(v37, v25, v38);
  v27 = v39;
  v22(v39, v12, v8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654F0);
  v23(&v27[*(v28 + 48)], v24, v26);
  v29 = *(v3 + 8);
  v29(v33, v26);
  v30 = *(v36 + 8);
  v30(v35, v8);
  v29(v24, v26);
  return (v30)(v34, v8);
}

uint64_t sub_24B94566C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_24BAA9D1C();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065508);
  sub_24B945718(a1, a2 + *(v5 + 44));
  LOBYTE(a1) = sub_24BAA90AC();
  sub_24BAA828C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654B0);
  v15 = a2 + *(result + 36);
  *v15 = a1;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
  return result;
}

uint64_t sub_24B945718@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065510);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - v7;
  v9 = *(sub_24BAA869C() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24BAA8B2C();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #12.0 }

  *v8 = _Q0;
  v17 = sub_24BAA979C();
  KeyPath = swift_getKeyPath();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065518) + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v20 = &v8[*(v4 + 44)];
  v21 = v106;
  *v20 = v105;
  *(v20 + 1) = v21;
  *(v20 + 2) = v107;
  v22 = a1[3];
  v86 = a1[2];
  v87 = v22;
  v88 = *(a1 + 8);
  v23 = a1[1];
  v84 = *a1;
  v85 = v23;
  sub_24B946324();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v24 = sub_24BAA7C2C();
  v26 = v25;

  *&v84 = v24;
  *(&v84 + 1) = v26;
  sub_24B8F5E3C();
  v27 = sub_24BAA93CC();
  v29 = v28;
  v31 = v30;
  sub_24BAA928C();
  sub_24BAA917C();

  v32 = sub_24BAA939C();
  v68 = v33;
  v69 = v32;
  LOBYTE(v24) = v34;
  v70 = v35;

  sub_24B900910(v27, v29, v31 & 1);

  v36 = swift_getKeyPath();
  v66 = v36;
  v37 = sub_24BAA982C();
  v38 = swift_getKeyPath();
  v65 = v38;
  v39 = v24 & 1;
  v102 = v24 & 1;
  v67 = v24 & 1;
  v100 = 0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v40 = sub_24BAA911C();
  sub_24BAA828C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v103 = 0;
  v49 = v72;
  sub_24B8F3208(v8, v72, &qword_27F065510);
  v50 = v49;
  v51 = v71;
  sub_24B8F3208(v50, v71, &qword_27F065510);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065520) + 48);
  v53 = v69;
  v54 = v70;
  v71 = v8;
  v55 = v68;
  *&v76 = v69;
  *(&v76 + 1) = v68;
  LOBYTE(v77) = v39;
  *(&v77 + 1) = *v101;
  DWORD1(v77) = *&v101[3];
  *(&v77 + 1) = v70;
  *&v78 = v36;
  *(&v78 + 1) = 1;
  LOBYTE(v79) = 0;
  *(&v79 + 1) = *v99;
  DWORD1(v79) = *&v99[3];
  *(&v79 + 1) = v38;
  *&v80[0] = v37;
  *(v80 + 8) = v73;
  *(&v80[2] + 8) = v75;
  *(&v80[1] + 8) = v74;
  BYTE8(v80[3]) = v40;
  *(&v80[3] + 9) = *v104;
  HIDWORD(v80[3]) = *&v104[3];
  *&v81 = v42;
  *(&v81 + 1) = v44;
  *&v82 = v46;
  *(&v82 + 1) = v48;
  v83 = 0;
  v56 = v77;
  *v52 = v76;
  *(v52 + 16) = v56;
  v57 = v78;
  v58 = v79;
  v59 = v80[1];
  v60 = v80[2];
  *(v52 + 64) = v80[0];
  *(v52 + 80) = v59;
  *(v52 + 32) = v57;
  *(v52 + 48) = v58;
  v61 = v80[3];
  v62 = v81;
  v63 = v82;
  *(v52 + 160) = 0;
  *(v52 + 128) = v62;
  *(v52 + 144) = v63;
  *(v52 + 96) = v60;
  *(v52 + 112) = v61;
  sub_24B8F3208(&v76, &v84, &qword_27F065528);
  sub_24B8F35E4(v71, &qword_27F065510);
  *&v84 = v53;
  *(&v84 + 1) = v55;
  LOBYTE(v85) = v67;
  *(&v85 + 1) = *v101;
  DWORD1(v85) = *&v101[3];
  *(&v85 + 1) = v54;
  *&v86 = v66;
  *(&v86 + 1) = 1;
  LOBYTE(v87) = 0;
  *(&v87 + 1) = *v99;
  DWORD1(v87) = *&v99[3];
  *(&v87 + 1) = v65;
  v88 = v37;
  v91 = v75;
  v90 = v74;
  v89 = v73;
  v92 = v40;
  *&v93[3] = *&v104[3];
  *v93 = *v104;
  v94 = v42;
  v95 = v44;
  v96 = v46;
  v97 = v48;
  v98 = 0;
  sub_24B8F35E4(&v84, &qword_27F065528);
  return sub_24B8F35E4(v72, &qword_27F065510);
}

uint64_t sub_24B945C94()
{
  v1 = sub_24BAA9E2C();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24BAA9E5C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA9E3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[3];
  v26 = v0[2];
  v27 = v11;
  v12 = *v0;
  v25 = v0[1];
  v28 = *(v0 + 8);
  v24 = v12;
  (*(&v11 + 1))(1);
  sub_24B926F30();
  (*(v8 + 104))(v10, *MEMORY[0x277D851B8], v7);
  v13 = sub_24BAAA36C();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  v15 = v25;
  v16 = v27;
  *(v14 + 48) = v26;
  *(v14 + 64) = v16;
  *(v14 + 80) = v28;
  *(v14 + 16) = v24;
  *(v14 + 32) = v15;
  aBlock[4] = sub_24B947074;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_2;
  v17 = _Block_copy(aBlock);
  sub_24B9462D0(&v24, v22);
  sub_24BAA9E4C();
  v22[0] = MEMORY[0x277D84F90];
  sub_24B947094(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v6, v3, v17);
  _Block_release(v17);

  (*(v21 + 8))(v3, v1);
  (*(v4 + 8))(v6, v20);
}

uint64_t sub_24B946090@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_24BAA90AC();
  sub_24BAA828C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v6 & 1;
  v19 = sub_24BAA90DC();
  result = sub_24BAA828C();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v18;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0;
  *(a1 + 80) = v19;
  *(a1 + 88) = v21;
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;
  *(a1 + 112) = v24;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_24B9461E8()
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  sub_24B9A1610();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0648E8);
  return sub_24BAA9A0C();
}

BOOL sub_24B946324()
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (!v0)
  {

LABEL_8:
    sub_24BAA82FC();
    sub_24B984444();
    v4 = sub_24B8D7188();

    if (v4)
    {
LABEL_9:
      v5 = [v4 mode];

      v6 = [v5 semanticType];

      return v6 == 5;
    }

    goto LABEL_10;
  }

  v1 = v0;
  v2 = [v0 configuration];
  v3 = [v2 applicationConfigurationType];

  if (v3 == 2)
  {
    goto LABEL_8;
  }

  if (v3 != 1)
  {
    if (!v3)
    {
      return 0;
    }

    sub_24BAA82FC();
    sub_24B984444();
    v4 = sub_24B8D7188();

    if (v4)
    {
      goto LABEL_9;
    }

LABEL_10:

    return 0;
  }

  return 1;
}

uint64_t sub_24B94653C()
{
  v38[2] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654F8);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v37[-v5];
  MEMORY[0x28223BE20](v4);
  v8 = &v37[-v7];
  v9 = objc_opt_self();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B947094(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v10 = sub_24BAA9FDC();

  v11 = [v9 dnd:v10 settingsURLWithModeIdentifier:?];

  if (v11)
  {
    sub_24BAA7D3C();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_24BAA7D5C();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v6, v12, 1, v13);
  sub_24B90294C(v6, v8, &qword_27F0654F8);
  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    sub_24B8F3208(v8, v3, &qword_27F0654F8);
    if ((*(v14 + 48))(v3, 1, v13) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_24BAA7D2C();
      (*(v14 + 8))(v3, v13);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24BAAD820;
    *(inited + 32) = sub_24BAAA01C();
    v19 = MEMORY[0x277D839B0];
    *(inited + 40) = v20;
    *(inited + 72) = v19;
    *(inited + 48) = 1;
    *(inited + 80) = sub_24BAAA01C();
    *(inited + 88) = v21;
    *(inited + 120) = v19;
    *(inited + 96) = 1;
    sub_24BA20D70(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E40);
    swift_arrayDestroy();
    v22 = sub_24BAA9EDC();

    v38[0] = 0;
    v23 = [v16 openSensitiveURL:v17 withOptions:v22 error:v38];

    if (v23)
    {
      v24 = v38[0];
    }

    else
    {
      v25 = v38[0];
      v26 = sub_24BAA7CCC();

      swift_willThrow();
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v27 = sub_24BAA812C();
      __swift_project_value_buffer(v27, qword_27F077038);
      v28 = v26;
      v29 = sub_24BAA810C();
      v30 = sub_24BAAA2AC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38[0] = v32;
        *v31 = 136315138;
        swift_getErrorValue();
        v33 = sub_24BAAA7DC();
        v35 = sub_24B8E49D4(v33, v34, v38);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_24B8D3000, v29, v30, "Failed to open settings: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x24C251390](v32, -1, -1);
        MEMORY[0x24C251390](v31, -1, -1);
      }

      else
      {
      }
    }
  }

  return sub_24B8F35E4(v8, &qword_27F0654F8);
}

unint64_t sub_24B946B4C()
{
  result = qword_27F065420;
  if (!qword_27F065420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065418);
    sub_24B946BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065420);
  }

  return result;
}

unint64_t sub_24B946BD8()
{
  result = qword_27F065428;
  if (!qword_27F065428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065410);
    sub_24B946C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065428);
  }

  return result;
}

unint64_t sub_24B946C64()
{
  result = qword_27F065430;
  if (!qword_27F065430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065408);
    sub_24B946D1C();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065430);
  }

  return result;
}

unint64_t sub_24B946D1C()
{
  result = qword_27F065438;
  if (!qword_27F065438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065400);
    sub_24B8F384C(&qword_27F065440, &qword_27F065448);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065438);
  }

  return result;
}

unint64_t sub_24B946E64()
{
  result = qword_27F0654B8;
  if (!qword_27F0654B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0654B0);
    sub_24B8F384C(&qword_27F0654C0, &qword_27F0654C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0654B8);
  }

  return result;
}

unint64_t sub_24B946F60()
{
  result = qword_27F0654D8;
  if (!qword_27F0654D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0654D0);
    sub_24B946FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0654D8);
  }

  return result;
}

unint64_t sub_24B946FEC()
{
  result = qword_27F0654E0;
  if (!qword_27F0654E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0654E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0654E0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24B947094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_2Tm()
{
  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24B9471B4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_24BAA7E4C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | 7);
}

uint64_t sub_24B9472EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];

  return sub_24B9D6784(v0 + v2, v4, v5, v6);
}

uint64_t sub_24B94738C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllowedAppsPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B947450(char *a1)
{
  v1 = *a1;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8D9DD0(v1);
}

uint64_t sub_24B947504@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v140 = a2;
  v141 = a1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656D8);
  MEMORY[0x28223BE20](v136);
  v138 = (&v124 - v2);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656E0);
  MEMORY[0x28223BE20](v137);
  v130 = &v124 - v3;
  v131 = type metadata accessor for allowedGroupsView(0);
  v124 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v125 = v4;
  v126 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656E8);
  v5 = MEMORY[0x28223BE20](v127);
  v128 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v129 = (&v124 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v139 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = &v124 - v11;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v171 = sub_24BAA7C2C();
  *(&v171 + 1) = v12;
  sub_24B8F5E3C();
  v13 = sub_24BAAA41C();
  v15 = v14;

  *&v167 = v13;
  *(&v167 + 1) = v15;
  v16 = sub_24BAA93CC();
  v18 = v17;
  v20 = v19;
  sub_24BAA924C();
  v21 = sub_24BAA939C();
  v23 = v22;
  v25 = v24;

  sub_24B900910(v16, v18, v20 & 1);

  sub_24BAA989C();
  v26 = sub_24BAA933C();
  v144 = v27;
  v145 = v26;
  v29 = v28;
  v146 = v30;

  sub_24B900910(v21, v23, v25 & 1);

  v31 = sub_24BAA90AC();
  LOBYTE(v171) = v29 & 1;
  LOBYTE(v167) = 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v134 = v180;
  v135 = v178;
  v132 = v183;
  v133 = v182;
  v192 = 1;
  v191 = v179;
  v190 = v181;
  v32 = v131;
  v33 = v141;
  if (!*(v141 + *(v131 + 20)))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v142 = v29 & 1;
  v143 = v31;

  sub_24B984444();
  v34 = sub_24B8D7188();
  if (!v34)
  {

LABEL_8:

    sub_24B984444();
    v93 = sub_24B8D7188();

    if (v93)
    {
      v94 = [v93 configuration];

      v95 = [v94 phoneCallBypassSettings];

      if (v95)
      {
        v96 = [v95 immediateBypassEventSourceType];

        v97 = v96 == 1;
LABEL_13:
        v92 = *(v33 + *(v32 + 24));
        type metadata accessor for ActivityConfigViewModel();
        sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
        v98 = sub_24BAA86FC();
        v100 = v99;
        LOBYTE(v167) = v97;
        sub_24BAA99EC();
        v101 = v171;
        v102 = *(&v171 + 1);
        v103 = v138;
        *v138 = v98;
        v103[1] = v100;
        *(v103 + 16) = v101;
        v103[3] = v102;
        *(v103 + 32) = v92;
        swift_storeEnumTagMultiPayload();
        sub_24B8F384C(&qword_27F0656F8, &qword_27F0656E0);
        sub_24B952E6C();
        sub_24BAA8D0C();
        goto LABEL_14;
      }
    }

    else
    {
    }

    v97 = 0;
    goto LABEL_13;
  }

  v35 = v34;
  v36 = [v34 configuration];
  v37 = [v36 senderConfigurationType];

  if (v37)
  {
    goto LABEL_8;
  }

  v38 = v126;
  sub_24B952F4C(v33, v126);
  v39 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v40 = swift_allocObject();
  sub_24B954A88(v38, v40 + v39, type metadata accessor for allowedGroupsView);
  v41 = sub_24BAA8AAC();
  v42 = sub_24BAA8BDC();
  KeyPath = swift_getKeyPath();
  v44 = v129;
  *v129 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065710);
  v46 = v44 + v45[9];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  v47 = v44 + v45[10];
  *v47 = 0;
  *(v47 + 8) = 1;
  v48 = v44 + v45[11];
  *v48 = 0;
  *(v48 + 8) = 1;
  v49 = (v44 + v45[12]);
  *v49 = sub_24B9530D0;
  v49[1] = v40;
  v50 = v44 + v45[13];
  *v50 = v41;
  *(v50 + 8) = 0;
  v51 = v44 + v45[14];
  *v51 = v42;
  *(v51 + 8) = 0;
  LOBYTE(v40) = sub_24BAA90EC();
  v52 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065718) + 36);
  *v52 = v40;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 1;
  LOBYTE(v40) = sub_24BAA911C();
  sub_24BAA828C();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065720) + 36);
  *v61 = v40;
  *(v61 + 8) = v54;
  *(v61 + 16) = v56;
  *(v61 + 24) = v58;
  *(v61 + 32) = v60;
  *(v61 + 40) = 0;
  LOBYTE(v45) = *(v33 + *(v32 + 24));
  LODWORD(v131) = v45;
  v62 = swift_getKeyPath();
  v63 = (v44 + *(v127 + 36));
  *v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  *(v63 + *(type metadata accessor for exceptionsPlatter(0) + 20)) = v45;
  v64 = sub_24BAA9D1C();
  v66 = v65;
  v67 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610) + 36));
  *v67 = v64;
  v67[1] = v66;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v126 = v186;
  v127 = v184;
  v124 = v189;
  v125 = v188;
  v175 = 1;
  v158 = v185;
  v157 = v187;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v68 = sub_24BAA86FC();
  v70 = v69;
  v71 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];

  LOBYTE(v42) = sub_24BAA90AC();
  LOBYTE(v171) = 1;
  v72 = sub_24BAA927C();
  v73 = swift_getKeyPath();
  v74 = swift_getKeyPath();
  v75 = sub_24BAA989C();
  v76 = swift_getKeyPath();
  *&v159 = v68;
  *(&v159 + 1) = v70;
  *&v160 = v71;
  BYTE8(v160) = v42;
  v161 = 0u;
  v162 = 0u;
  LOBYTE(v163) = 1;
  *(&v163 + 1) = v73;
  *&v164 = v72;
  *(&v164 + 1) = v74;
  LOBYTE(v165) = 0;
  *(&v165 + 1) = v171;
  DWORD1(v165) = *(&v171 + 3);
  *(&v165 + 1) = v76;
  v166 = v75;
  v77 = v128;
  sub_24B8F3208(v44, v128, &qword_27F0656E8);
  v154 = v164;
  v155 = v165;
  v149 = v159;
  v150 = v160;
  v151 = v161;
  LOBYTE(v71) = v175;
  LOBYTE(v42) = v158;
  LOBYTE(v72) = v157;
  v156 = v166;
  v152 = v162;
  v153 = v163;
  v78 = v130;
  sub_24B8F3208(v77, v130, &qword_27F0656E8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065728);
  v80 = v78 + *(v79 + 48);
  *v80 = 0;
  *(v80 + 8) = v71;
  v81 = v126;
  *(v80 + 16) = v127;
  *(v80 + 24) = v42;
  *(v80 + 32) = v81;
  *(v80 + 40) = v72;
  v82 = v124;
  *(v80 + 48) = v125;
  *(v80 + 56) = v82;
  v83 = v78 + *(v79 + 64);
  v84 = v149;
  v167 = v149;
  v168 = v150;
  v85 = v150;
  v86 = v151;
  v169[0] = v151;
  v169[1] = v152;
  v87 = v153;
  v88 = v152;
  v169[2] = v153;
  v169[3] = v154;
  v89 = v154;
  v169[4] = v155;
  v90 = v156;
  v170 = v156;
  *(v83 + 64) = v153;
  *(v83 + 80) = v89;
  v91 = v155;
  *(v83 + 96) = v155;
  *(v83 + 112) = v90;
  *v83 = v84;
  *(v83 + 16) = v85;
  *(v83 + 32) = v86;
  *(v83 + 48) = v88;
  v171 = v84;
  v172 = v85;
  v173[0] = v86;
  v173[1] = v88;
  v173[2] = v87;
  v173[3] = v89;
  v173[4] = v91;
  v174 = v90;
  sub_24B8F3208(&v159, v148, &qword_27F065730);
  sub_24B8F3208(&v167, v148, &qword_27F065730);
  sub_24B8F35E4(&v171, &qword_27F065730);
  sub_24B8F35E4(v77, &qword_27F0656E8);
  sub_24B8F3208(v78, v138, &qword_27F0656E0);
  swift_storeEnumTagMultiPayload();
  sub_24B8F384C(&qword_27F0656F8, &qword_27F0656E0);
  sub_24B952E6C();
  sub_24BAA8D0C();
  v92 = v131;
  sub_24B8F35E4(&v159, &qword_27F065730);
  sub_24B8F35E4(v78, &qword_27F0656E0);
  sub_24B8F35E4(v44, &qword_27F0656E8);
LABEL_14:
  sub_24BAA9D1C();
  v104 = 1;
  sub_24BAA83BC();
  v137 = v160;
  v138 = v159;
  v131 = *(&v161 + 1);
  v136 = v161;
  LOBYTE(v149) = 1;
  v148[0] = BYTE8(v159);
  v175 = BYTE8(v160);
  if (sub_24B948AB4())
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v105 = sub_24BAA86FC();
    v141 = v106;
    LOBYTE(v167) = 1;
    sub_24BAA99EC();
    v107 = v171;
    v108 = *(&v171 + 1);

    v104 = v105;
    v109 = v92;
  }

  else
  {
    v141 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
  }

  v110 = v192;
  v111 = v191;
  LODWORD(v127) = v190;
  v112 = v139;
  sub_24B8F3208(v147, v139, &qword_27F0656F0);
  LODWORD(v128) = v149;
  LODWORD(v129) = v148[0];
  LODWORD(v130) = v175;
  *&v167 = v145;
  *(&v167 + 1) = v144;
  LOBYTE(v168) = v142;
  *(&v168 + 1) = *v177;
  DWORD1(v168) = *&v177[3];
  *(&v168 + 1) = v146;
  LOBYTE(v169[0]) = v143;
  *(v169 + 1) = *v176;
  DWORD1(v169[0]) = *&v176[3];
  *(v169 + 8) = 0u;
  *(&v169[1] + 8) = 0u;
  BYTE8(v169[2]) = 1;
  v113 = v168;
  v114 = v140;
  *v140 = v167;
  v114[1] = v113;
  v115 = v169[1];
  v114[2] = v169[0];
  v114[3] = v115;
  *(v114 + 57) = *(&v169[1] + 9);
  *(v114 + 10) = 0;
  *(v114 + 88) = v110;
  v116 = v134;
  *(v114 + 12) = v135;
  *(v114 + 104) = v111;
  *(v114 + 14) = v116;
  *(v114 + 120) = v127;
  v117 = v132;
  *(v114 + 16) = v133;
  *(v114 + 17) = v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065708);
  sub_24B8F3208(v112, v114 + v118[16], &qword_27F0656F0);
  v119 = v114 + v118[20];
  *v119 = 0;
  v119[8] = v128;
  *(v119 + 2) = v138;
  v119[24] = v129;
  *(v119 + 4) = v137;
  v119[40] = v130;
  v120 = v131;
  *(v119 + 6) = v136;
  *(v119 + 7) = v120;
  v121 = v114 + v118[24];
  sub_24B8F3208(&v167, &v171, &qword_27F0654E8);
  v122 = v141;
  sub_24B952EC0(v104);
  sub_24B952F08(v104);
  *v121 = v104;
  *(v121 + 1) = v122;
  *(v121 + 2) = v107;
  *(v121 + 3) = v108;
  v121[32] = v109;
  sub_24B8F35E4(v147, &qword_27F0656F0);
  sub_24B952F08(v104);
  sub_24B8F35E4(v112, &qword_27F0656F0);
  *&v171 = v145;
  *(&v171 + 1) = v144;
  LOBYTE(v172) = v142;
  *(&v172 + 1) = *v177;
  DWORD1(v172) = *&v177[3];
  *(&v172 + 1) = v146;
  LOBYTE(v173[0]) = v143;
  *(v173 + 1) = *v176;
  DWORD1(v173[0]) = *&v176[3];
  *(v173 + 8) = 0u;
  *(&v173[1] + 8) = 0u;
  BYTE8(v173[2]) = 1;
  return sub_24B8F35E4(&v171, &qword_27F0654E8);
}

uint64_t sub_24B9485A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v59 = a1;
  v2 = sub_24BAA8B9C();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v68 = sub_24BAA7C2C();
  v69 = v4;
  sub_24B8F5E3C();
  v5 = sub_24BAA93CC();
  v7 = v6;
  v9 = v8;
  sub_24BAA988C();
  v10 = sub_24BAA933C();
  v12 = v11;
  v14 = v13;

  sub_24B900910(v5, v7, v9 & 1);

  sub_24BAA916C();
  v15 = sub_24BAA939C();
  v17 = v16;
  v52 = v18;
  v20 = v19;

  sub_24B900910(v10, v12, v14 & 1);

  if (*(v59 + *(type metadata accessor for allowedGroupsView(0) + 20)))
  {
    v54 = v20;

    sub_24B984444();
    v21 = sub_24B8D7188();

    v53 = v17;
    v51 = v15;
    if (v21)
    {
      v22 = [v21 configuration];

      v23 = [v22 phoneCallBypassSettings];
    }

    else
    {

      v23 = 0;
    }

    v24 = sub_24B95269C(v23);
    v26 = v25;

    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v27 = sub_24BAA86FC();
    v29 = v28;
    v30 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];

    if (v26)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0;
    }

    v32 = 0xE000000000000000;
    if (v26)
    {
      v32 = v26;
    }

    *&v64 = v31;
    *(&v64 + 1) = v32;
    sub_24BAA99EC();
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v55;
    sub_24BA8DAA8(v55);
    v37 = sub_24BAA8B8C();
    (*(v56 + 8))(v36, v57);
    v38 = v52 & 1;
    v63 = v52 & 1;
    v39 = (v37 & 1) == 0;
    v62 = 1;
    v40 = v27;
    *&v64 = v27;
    *(&v64 + 1) = v29;
    v41 = v29;
    *&v65 = v33;
    *(&v65 + 1) = v34;
    *&v66 = v35;
    *(&v66 + 1) = v30;
    v67 = v39;
    *(v61 + 7) = v64;
    *(&v61[1] + 7) = v65;
    *(&v61[2] + 7) = v66;
    *(&v61[3] + 7) = v39;
    v42 = v58;
    v43 = v51;
    v44 = v53;
    v45 = v54;
    *v58 = v51;
    v42[1] = v44;
    *(v42 + 16) = v38;
    v42[3] = v45;
    v42[4] = 0;
    *(v42 + 40) = 1;
    v46 = v61[0];
    v47 = v61[1];
    v48 = v61[2];
    *(v42 + 82) = *(&v61[2] + 9);
    *(v42 + 73) = v48;
    *(v42 + 57) = v47;
    *(v42 + 41) = v46;
    v68 = v40;
    v69 = v41;
    v70 = v33;
    v71 = v34;
    v72 = v35;
    v73 = v30;
    v74 = v39;
    sub_24B8F319C(v43, v44, v38);

    sub_24B8F3208(&v64, &v60, &qword_27F065738);
    sub_24B8F35E4(&v68, &qword_27F065738);
    sub_24B900910(v43, v44, v38);
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

uint64_t sub_24B948AB4()
{
  if (*(v0 + *(type metadata accessor for allowedGroupsView(0) + 20)))
  {

    sub_24B984444();
    v1 = sub_24B8D7188();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 configuration];
      v4 = [v3 senderConfigurationType];

      v5 = v4 != 1;
    }

    else
    {

      v5 = 1;
    }

    sub_24B984444();
    v6 = sub_24B8D7188();

    if (v6)
    {
      v7 = [v6 configuration];

      v8 = [v7 phoneCallBypassSettings];

      if (v8)
      {
        v9 = [v8 immediateBypassEventSourceType];

        v10 = v9 != 1;
        return v5 & v10;
      }
    }

    else
    {
    }

    v10 = 1;
    return v5 & v10;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B948C7C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656D0);
  return sub_24B947504(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_24B948CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657E0);
  v85 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v68 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065780);
  v7 = MEMORY[0x28223BE20](v86);
  v87 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  if (!*a1)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v10 = &v68 - v9;

  sub_24B984444();
  v11 = sub_24B8D7188();

  if (v11)
  {
    v12 = [v11 configuration];

    v13 = [v12 phoneCallBypassSettings];

    if (v13)
    {
      v14 = [v13 immediateBypassEventSourceType];

      if (v14 == 1)
      {
        v15 = *(v85 + 56);

        return v15(a2, 1, 1, v4);
      }
    }
  }

  else
  {
  }

  v82 = v6;
  v83 = v4;
  v84 = a2;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v98 = sub_24BAA7C2C();
  *(&v98 + 1) = v17;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA86CC();
  swift_getKeyPath();
  sub_24BAA86EC();

  sub_24B8F5E3C();
  sub_24BAA9AFC();
  v18 = sub_24BAA90AC();
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065768) + 36)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_24BAA911C();
  sub_24BAA828C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065770) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065778) + 36)];
  *v32 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  *(v32 + *(type metadata accessor for exceptionsPlatter(0) + 20)) = v30;
  v33 = sub_24BAA9D1C();
  v35 = v34;
  v36 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610) + 36));
  *v36 = v33;
  v36[1] = v35;
  v37 = sub_24BAA988C();
  v38 = swift_getKeyPath();
  v39 = &v10[*(v86 + 36)];
  v77 = v10;
  *v39 = v38;
  v39[1] = v37;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v78 = v122;
  v79 = v124;
  v80 = v127;
  v81 = v126;
  v90 = 1;
  v89 = v123;
  v88 = v125;
  v104 = sub_24BAA7C2C();
  v105 = v40;
  v41 = sub_24BAA93CC();
  v68 = v41;
  v69 = v42;
  v74 = v43;
  LOBYTE(v37) = v44;
  v45 = v42;
  v75 = sub_24BAA90AC();
  v70 = v37 & 1;
  LOBYTE(v104) = v37 & 1;
  LOBYTE(v98) = 1;
  v76 = sub_24BAA927C();
  v73 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  v72 = sub_24BAA989C();
  v86 = swift_getKeyPath();
  v46 = v87;
  sub_24B8F3208(v10, v87, &qword_27F065780);
  v47 = v90;
  v48 = v89;
  v49 = v88;
  v50 = v82;
  sub_24B8F3208(v46, v82, &qword_27F065780);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657E8);
  v52 = v50 + *(v51 + 48);
  *v52 = 0;
  *(v52 + 8) = v47;
  *(v52 + 9) = *v97;
  *(v52 + 12) = *&v97[3];
  *(v52 + 16) = v78;
  *(v52 + 24) = v48;
  *(v52 + 25) = *v96;
  *(v52 + 28) = *&v96[3];
  *(v52 + 32) = v79;
  *(v52 + 40) = v49;
  *(v52 + 44) = *&v95[3];
  *(v52 + 41) = *v95;
  v53 = v80;
  *(v52 + 48) = v81;
  *(v52 + 56) = v53;
  v54 = (v50 + *(v51 + 64));
  *&v98 = v41;
  v55 = v74;
  *(&v98 + 1) = v74;
  LOBYTE(v46) = v70;
  LOBYTE(v99) = v70;
  *(&v99 + 1) = *v92;
  DWORD1(v99) = *&v92[3];
  *(&v99 + 1) = v45;
  v56 = v75;
  LOBYTE(v100[0]) = v75;
  DWORD1(v100[0]) = *&v91[3];
  *(v100 + 1) = *v91;
  *(v100 + 8) = 0u;
  *(&v100[1] + 8) = 0u;
  BYTE8(v100[2]) = 1;
  HIDWORD(v100[2]) = *&v94[3];
  *(&v100[2] + 9) = *v94;
  v57 = v72;
  v58 = v73;
  v59 = v76;
  *&v101 = v73;
  *(&v101 + 1) = v76;
  v60 = v71;
  *&v102 = v71;
  BYTE8(v102) = 0;
  HIDWORD(v102) = *&v93[3];
  *(&v102 + 9) = *v93;
  *&v103 = v86;
  *(&v103 + 1) = v72;
  v61 = v98;
  v62 = v99;
  v63 = v100[1];
  v54[2] = v100[0];
  v54[3] = v63;
  *v54 = v61;
  v54[1] = v62;
  v64 = v100[2];
  v65 = v101;
  v66 = v103;
  v54[6] = v102;
  v54[7] = v66;
  v54[4] = v64;
  v54[5] = v65;
  sub_24B8F3208(&v98, &v104, &qword_27F0657F0);
  sub_24B8F35E4(v77, &qword_27F065780);
  v104 = v68;
  v105 = v55;
  v106 = v46;
  *v107 = *v92;
  *&v107[3] = *&v92[3];
  v108 = v69;
  v109 = v56;
  *v110 = *v91;
  *&v110[3] = *&v91[3];
  v111 = 0u;
  v112 = 0u;
  v113 = 1;
  *&v114[3] = *&v94[3];
  *v114 = *v94;
  v115 = v58;
  v116 = v59;
  v117 = v60;
  v118 = 0;
  *v119 = *v93;
  *&v119[3] = *&v93[3];
  v120 = v86;
  v121 = v57;
  sub_24B8F35E4(&v104, &qword_27F0657F0);
  sub_24B8F35E4(v87, &qword_27F065780);
  v67 = v84;
  sub_24B90294C(v50, v84, &qword_27F0657E0);
  return (*(v85 + 56))(v67, 0, 1, v83);
}

uint64_t sub_24B9495E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657D8);
  return sub_24B948CCC(v6, a1 + *(v4 + 44));
}

uint64_t sub_24B949650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24B949754(a1, a2, a3);
  sub_24B8F5E3C();
  v5 = sub_24BAA93CC();
  v7 = v6;
  v9 = v8;
  sub_24BAA989C();
  v10 = sub_24BAA933C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_24B900910(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v18 = sub_24BAA927C();
  result = swift_getKeyPath();
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0;
  *(a4 + 48) = result;
  *(a4 + 56) = v18;
  return result;
}

uint64_t sub_24B949754(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v6 = sub_24B8D7188();

  if (!v6)
  {

    return 0;
  }

  v7 = [v6 configuration];

  v8 = [v7 phoneCallBypassSettings];

  if (!v8)
  {
    return 0;
  }

  v9 = [v8 immediateBypassEventSourceType];

  result = 0;
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return result;
      }

      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_28;
    }

LABEL_25:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_28:
    swift_once();
    return sub_24BAA7C2C();
  }

  switch(v9)
  {
    case 3:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_28;
    case 4:
      goto LABEL_25;
    case 5:
      if (qword_27F063110 != -1)
      {
        swift_once();
      }

      sub_24BAA7C2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_24BAAD5B0;
      v12 = sub_24B949B24(a1, a2, a3);
      v14 = v13;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_24B8F6A20();
      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      *(v11 + 32) = v15;
      *(v11 + 40) = v16;
      v17 = sub_24BAA9FEC();

      return v17;
  }

  return result;
}

uint64_t sub_24B949B24(uint64_t a1, uint64_t a2, void *a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  sub_24B984444();
  v4 = sub_24B8D7188();

  if (!v4)
  {

    return 0;
  }

  v5 = [v4 configuration];

  v6 = [v5 phoneCallBypassSettings];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 immediateBypassCNGroupIdentifier];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_24BAAA01C();
  v10 = v9;

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0669E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24BAAD5B0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  v13 = sub_24BAAA11C();

  v14 = [v11 predicateForGroupsWithIdentifiers_];

  v27[0] = 0;
  v15 = [a3 groupsMatchingPredicate:v14 error:v27];
  v16 = v27[0];
  if (!v15)
  {
    v25 = v27[0];
    v26 = sub_24BAA7CCC();

    swift_willThrow();
    return 0;
  }

  v17 = v15;
  sub_24B95291C();
  v18 = sub_24BAAA12C();
  v19 = v16;

  if (v18 >> 62)
  {
    if (sub_24BAAA52C())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    return 0;
  }

LABEL_8:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x24C2506E0](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  v22 = [v21 name];
  v23 = sub_24BAAA01C();

  return v23;
}

uint64_t sub_24B949E64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BAAA81C();
  if (v2 != 1)
  {
    MEMORY[0x24C2508C0](v1);
  }

  sub_24BAAA07C();
  return sub_24BAAA84C();
}

uint64_t sub_24B949F10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24BAAA07C();
  sub_24BAAA81C();
  if (v2 != 1)
  {
    MEMORY[0x24C2508C0](v1);
  }

  return sub_24BAAA07C();
}

uint64_t sub_24B949F9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BAAA81C();
  if (v2 != 1)
  {
    MEMORY[0x24C2508C0](v1);
  }

  sub_24BAAA07C();
  return sub_24BAAA84C();
}

uint64_t sub_24B94A044@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t sub_24B94A050(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v10 = sub_24BAAA78C(), v11 = 0, (v10 & 1) != 0))
  {
    if (v4 == v8 && v5 == v9)
    {
      v11 = v7;
      if (v3)
      {
        return v11 & 1;
      }

      goto LABEL_10;
    }

    v12 = sub_24BAAA78C();
    if (!(v3 & 1 | ((v12 & 1) == 0)))
    {
LABEL_10:
      v11 = (v2 == v6) & ~v7;
      return v11 & 1;
    }

    v11 = v12 & v7;
  }

  return v11 & 1;
}

id sub_24B94A120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_24BAA857C();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x28223BE20](v3);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657F8);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  MEMORY[0x28223BE20](v6);
  v39 = v38 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065800);
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v40 = v38 - v9;
  v10 = *v1;
  v56 = v1[1];
  v57[0] = v10;
  v11 = *(v1 + 5);
  v55 = *(v1 + 4);
  sub_24BAAA1BC();
  sub_24B8F3208(v57, &v51, &qword_27F065758);
  sub_24B95286C(&v56, &v51);
  sub_24B8F3208(&v55, &v51, &qword_27F065638);
  v12 = v11;
  v13 = sub_24BAAA1AC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = v1[1];
  *(v14 + 32) = *v1;
  *(v14 + 48) = v16;
  *(v14 + 64) = v1[2];
  sub_24B8F3208(v57, &v51, &qword_27F065758);
  sub_24B95286C(&v56, &v51);
  sub_24B8F3208(&v55, &v51, &qword_27F065638);
  v42 = v12;
  v17 = sub_24BAAA1AC();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  v19 = v2[1];
  *(v18 + 32) = *v2;
  *(v18 + 48) = v19;
  *(v18 + 64) = v2[2];
  sub_24BAA9B9C();
  v20 = v51;
  v21 = v52;
  v38[1] = v52;
  v22 = v53;
  v23 = v54;
  sub_24BAA8B0C();
  v38[2] = v20;
  v51 = v20;
  v52 = v21;
  v53 = v22;
  v54 = v23;
  v50 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065808);
  sub_24B954164();
  v24 = v39;
  sub_24BAA9ACC();
  v25 = v41;
  sub_24BAA856C();
  v26 = sub_24B8F384C(&qword_27F065828, &qword_27F0657F8);
  v27 = MEMORY[0x277CDDA00];
  v28 = v40;
  v29 = v43;
  v30 = v46;
  sub_24BAA947C();
  (*(v47 + 8))(v25, v30);
  (*(v44 + 8))(v24, v29);
  v51 = v29;
  v52 = v30;
  v53 = v26;
  v54 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v49;
  v32 = v45;
  sub_24BAA94DC();

  (*(v48 + 8))(v28, v32);
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065830) + 36)) = 0;
  v33 = swift_allocObject();
  v34 = v2[1];
  *(v33 + 1) = *v2;
  *(v33 + 2) = v34;
  *(v33 + 3) = v2[2];
  v35 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065838) + 36));
  *v35 = sub_24B954264;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  sub_24B8F3208(v57, &v51, &qword_27F065758);
  sub_24B95286C(&v56, &v51);
  sub_24B8F3208(&v55, &v51, &qword_27F065638);
  v36 = v42;

  return v36;
}

uint64_t sub_24B94A740(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a4 + 32);
  v37 = *(a4 + 16);
  v35 = v7;
  v36 = v7;
  v34 = *(a4 + 16);
  sub_24B95286C(&v37, &v32);
  sub_24B8F3208(&v36, &v32, &qword_27F065638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  sub_24BAA99FC();
  if (v5 == v32 && v6 == v33)
  {

LABEL_5:
    sub_24B9528C8(&v37);
    return sub_24B8F35E4(&v36, &qword_27F065638);
  }

  v8 = sub_24BAAA78C();

  if (v8)
  {
    goto LABEL_5;
  }

  v34 = *(a4 + 16);
  v35 = v7;
  v26 = v5;
  v32 = v5;
  v33 = v6;

  sub_24BAA9A0C();
  sub_24B9528C8(&v37);
  sub_24B8F35E4(&v36, &qword_27F065638);
  v10 = sub_24B953270(*(a4 + 40));
  v11 = *(v10 + 16);
  if (!v11)
  {
  }

  v27 = v6;
  v28 = 0;
  v25 = a4;
  v12 = 0;
  v13 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v14 = (v10 + 72);
  v15 = v26;
  do
  {
    v17 = *(v14 - 5);
    v16 = *(v14 - 4);
    v18 = *(v14 - 3);
    v19 = *(v14 - 16);
    v21 = *(v14 - 1);
    v20 = *v14;
    v22 = v21 == v15 && v20 == v27;
    if (v22 || (v23 = sub_24BAAA78C(), v15 = v26, (v23 & 1) != 0))
    {

      sub_24B95426C(v12, v13);
      v15 = v26;
      v12 = v17;
      v13 = v16;
      v29 = v18;
      v30 = v19;
      v28 = v21;
      v31 = v20;
    }

    v14 += 6;
    --v11;
  }

  while (v11);

  if (v13)
  {
    if ((v30 & 1) == 0)
    {
      v24 = *v25;
      sub_24B953744(v29, *v25);
      if (v29 == 5)
      {
        type metadata accessor for ActivityConfigViewModel();
        sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

        if (v24)
        {

          sub_24BAA814C();
          sub_24BAA816C();

          sub_24B984444();
          sub_24B8DA728(5, v28, v31);

          swift_bridgeObjectRelease_n();
        }

        else
        {
          result = sub_24BAA86DC();
          __break(1u);
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t sub_24B94AAD4(uint64_t a1)
{
  sub_24B953270(*(a1 + 40));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065820);
  sub_24B8F384C(&qword_27F065848, &qword_27F065840);
  sub_24B8F384C(&qword_27F065818, &qword_27F065820);
  return sub_24BAA9BEC();
}

uint64_t sub_24B94AC0C(void *a1)
{
  v1 = a1[1];
  v2 = a1[4];
  v3 = a1[5];
  v7[0] = *a1;
  v7[1] = v1;
  v6[0] = v2;
  v6[1] = v3;
  v4 = sub_24B8F5E3C();

  return MEMORY[0x24C24E400](v7, v6, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0], v4);
}

uint64_t sub_24B94AC8C(void *a1)
{
  if (*a1)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();

    if (v1)
    {
      v2 = [v1 configuration];

      v1 = [v2 phoneCallBypassSettings];
    }

    sub_24B95269C(v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
    return sub_24BAA9A0C();
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

uint64_t sub_24B94AE2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v15 = *(v1 + 16);
  v16 = v4;
  sub_24BAAA1BC();
  sub_24B8F3208(&v16, &v14, &qword_27F065758);
  sub_24B8F3208(&v15, &v14, &qword_27F063B38);
  v5 = sub_24BAAA1AC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(v1 + 16);
  *(v6 + 32) = *v1;
  *(v6 + 48) = v8;
  *(v6 + 64) = *(v1 + 32);
  sub_24B8F3208(&v16, &v14, &qword_27F065758);
  sub_24B8F3208(&v15, &v14, &qword_27F063B38);
  v9 = sub_24BAAA1AC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = *(v2 + 16);
  *(v10 + 32) = *v2;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(v2 + 32);
  sub_24BAA9B9C();
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065760);
  sub_24B94B180(v2, a1 + *(v12 + 44));
}

uint64_t sub_24B94AFFC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  if (v5)
  {
    v6 = *a1;
    swift_retain_n();
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8D9DD0(v6);

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DA728(v7, 0, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    return sub_24BAA9A0C();
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B94B180@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  v4 = sub_24BAA90AC();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065768) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = sub_24BAA911C();
  sub_24BAA828C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065770) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065778) + 36));
  *v18 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  *(v18 + *(type metadata accessor for exceptionsPlatter(0) + 20)) = v16;
  v19 = sub_24BAA9D1C();
  v21 = v20;
  v22 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610) + 36));
  *v22 = v19;
  v22[1] = v21;
  v23 = sub_24BAA988C();
  v24 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065780);
  v26 = (a2 + *(result + 36));
  *v26 = v24;
  v26[1] = v23;
  return result;
}