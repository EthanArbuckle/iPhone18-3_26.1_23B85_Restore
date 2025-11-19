uint64_t sub_1C47064D0(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB768();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  MEMORY[0x1C6940010](*a2, a2[1]);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v6 + 8))(v11, v3);
}

void sub_1C47065F4()
{
  sub_1C43FE96C();
  v1 = v0;
  v45 = v2;
  v40[1] = v3;
  v4 = sub_1C4EFBD38();
  v5 = sub_1C43FCDF8(v4);
  v44 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v40 - v18;
  v20 = sub_1C456902C(&qword_1EC0BBC28, &qword_1C4F22560);
  v21 = sub_1C43FCDF8(v20);
  v43 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v42 = v40 - v28;
  v29 = *v1;
  v30 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v31 = sub_1C44331AC();
  v41 = xmmword_1C4F0D130;
  *(v31 + 16) = xmmword_1C4F0D130;
  v32 = MEMORY[0x1E69A0038];
  *(v31 + 56) = v4;
  *(v31 + 64) = v32;
  sub_1C4422F90((v31 + 32));
  sub_1C4413054();
  MEMORY[0x1C693A9D0](v31, MEMORY[0x1E69E63B0], v12, MEMORY[0x1E69E63B0]);

  (*(v14 + 8))(v19, v12);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v33 = sub_1C44331AC();
  *(v33 + 16) = v41;
  sub_1C4EFBD48();
  v34 = sub_1C4EFADA8();
  v35 = MEMORY[0x1E699FDA8];
  *(v33 + 56) = v34;
  *(v33 + 64) = v35;
  sub_1C4422F90((v33 + 32));
  sub_1C4EFB918();
  (*(v44 + 8))(v11, v4);
  sub_1C441F858();
  sub_1C4401CBC(v36, &qword_1EC0BBC28, &qword_1C4F22560);
  v37 = v42;
  sub_1C4EFB2F8();

  v38 = *(v43 + 8);
  v38(v27, v20);
  sub_1C440021C(&qword_1EC0BBC38);
  sub_1C440E150();
  v38(v37, v20);
  if (!v29)
  {
    if ((v46 & 1) == 0)
    {
      sub_1C4EF9AC8();
    }

    v39 = sub_1C4EF9CD8();
    sub_1C440D320(v39);
  }

  sub_1C43FBC80();
}

void sub_1C47069B8()
{
  sub_1C43FE96C();
  v1 = v0;
  v35 = v2;
  v32[1] = v3;
  v4 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = sub_1C456902C(&qword_1EC0BBC28, &qword_1C4F22560);
  v13 = sub_1C43FCDF8(v12);
  v34 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - v20;
  v22 = *v1;
  v23 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v24 = sub_1C44331AC();
  v33 = xmmword_1C4F0D130;
  *(v24 + 16) = xmmword_1C4F0D130;
  v25 = sub_1C4EFBD38();
  v26 = MEMORY[0x1E69A0038];
  *(v24 + 56) = v25;
  *(v24 + 64) = v26;
  sub_1C4422F90((v24 + 32));
  sub_1C4413054();
  MEMORY[0x1C693A9D0](v24, MEMORY[0x1E69E63B0], v4, MEMORY[0x1E69E63B0]);

  (*(v6 + 8))(v11, v4);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v27 = sub_1C44331AC();
  *(v27 + 16) = v33;
  v28 = MEMORY[0x1E69A0048];
  *(v27 + 56) = v25;
  *(v27 + 64) = v28;
  sub_1C4422F90((v27 + 32));
  sub_1C4413054();
  sub_1C441F858();
  sub_1C4401CBC(v29, &qword_1EC0BBC28, &qword_1C4F22560);
  sub_1C4EFB2F8();

  v30 = *(v34 + 8);
  v30(v19, v12);
  sub_1C440021C(&qword_1EC0BBC38);
  sub_1C440E150();
  v30(v21, v12);
  if (!v22)
  {
    if ((v36 & 1) == 0)
    {
      sub_1C4EF9AC8();
    }

    v31 = sub_1C4EF9CD8();
    sub_1C440D320(v31);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4706CD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001C4F948C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4706DF0(char a1)
{
  if (!a1)
  {
    return 0x6D614E656C626174;
  }

  if (a1 == 1)
  {
    return 0x7365727574616566;
  }

  return 0xD000000000000018;
}

void sub_1C4706E50()
{
  sub_1C43FE96C();
  v14[1] = v2;
  v14[2] = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0BBBE8, &unk_1C4F22510);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  v13 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C4707C70();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v0)
  {
    v15 = 1;
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4707D18(&qword_1EDDF05C8);
    sub_1C43FD604();
    v15 = 2;
    sub_1C456902C(&qword_1EC0BBBE0, &qword_1C4F22508);
    sub_1C4707D84(&qword_1EC0BBBF0, sub_1C4707E08);
    sub_1C43FD604();
  }

  (*(v7 + 8))(v12, v5);
  sub_1C43FBC80();
}

void sub_1C4707048()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0BBBD8, &unk_1C4F224F8);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4707C70();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C4F02678();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4707D18(&qword_1EDDFCE90);
    sub_1C4411BB8();
    sub_1C4F026C8();
    sub_1C456902C(&qword_1EC0BBBE0, &qword_1C4F22508);
    sub_1C4707D84(&qword_1EDDF06F8, sub_1C4707CC4);
    sub_1C4411BB8();
    sub_1C4F026C8();
    v8 = sub_1C440A9F8();
    v9(v8);
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

uint64_t sub_1C47072D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1C4706480();
}

uint64_t sub_1C470731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4706CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4707344(uint64_t a1)
{
  v2 = sub_1C4707C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4707380(uint64_t a1)
{
  v2 = sub_1C4707C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C47073BC(void *a1@<X8>)
{
  sub_1C4707048();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1C47073EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4706E50();
}

char *sub_1C470740C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v6;
  v7 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v7;
  v8 = &v4[OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_entityType;
  v10 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v10);
  (*(v11 + 32))(&v4[v9], a4);
  return v4;
}

uint64_t sub_1C4707494()
{
  sub_1C43FBCD4();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v7 = *(*(sub_1C456902C(&qword_1EC0BBC08, &qword_1C4F22530) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4707534, 0, 0);
}

uint64_t sub_1C4707534()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v2 + 4);
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  *(v0 + 48) = *(v2 + 3);
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = sub_1C456902C(&qword_1EC0BBC10, &qword_1C4F22538);
  v7 = (v1 + *(v6 + 48));
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_entityType;
  v9 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v9);
  (*(v10 + 16))(v1, &v2[v8]);
  v11 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name];
  v12 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name + 8];
  *v7 = v11;
  v7[1] = v12;
  sub_1C440BAA8(v1, 0, 1, v6);
  v13 = type metadata accessor for EntityRelevanceHistoricalFeatureDatabaseTable.EntityTypeQuery(0);
  sub_1C440BAA8(v1, 0, 1, v13);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_1C47076A4;
  v15 = *(v0 + 128);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);

  return sub_1C4704BB8(v18, v19, v15, v16, v17);
}

uint64_t sub_1C47076A4()
{
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v2 = *v1;
  sub_1C43FBDAC();
  *v5 = v2;
  *(v2 + 144) = v0;

  sub_1C4420C3C(v4, &qword_1EC0BBC08, &qword_1C4F22530);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C470780C, 0, 0);
  }

  else
  {
    v6 = *(v2 + 128);

    sub_1C43FBDA0();

    return v7();
  }
}

uint64_t sub_1C470780C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 128);

  sub_1C43FBDA0();
  v3 = *(v0 + 144);

  return v2();
}

char *sub_1C4707868()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);

  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_entityType;
  v8 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v8);
  (*(v9 + 8))(&v0[v7]);
  v10 = *&v0[OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name + 8];

  return v0;
}

uint64_t sub_1C4707920()
{
  sub_1C4707868();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C47079A0()
{
  result = sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4707A64()
{
  v1 = (*v0 + OBJC_IVAR____TtC24IntelligencePlatformCore44HistoricalFeatureDatabaseTrainingSetProvider_name);
  v2 = *v1;
  v3 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4707AA4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4707B70;

  return sub_1C4707494();
}

uint64_t sub_1C4707B70()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBDAC();
  *v3 = v2;

  sub_1C43FBDA0();

  return v4();
}

unint64_t sub_1C4707C70()
{
  result = qword_1EDDFA6C0;
  if (!qword_1EDDFA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6C0);
  }

  return result;
}

unint64_t sub_1C4707CC4()
{
  result = qword_1EDDFED58;
  if (!qword_1EDDFED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED58);
  }

  return result;
}

uint64_t sub_1C4707D18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4707D84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BBBE0, &qword_1C4F22508);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4707E08()
{
  result = qword_1EDDDC378;
  if (!qword_1EDDDC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC378);
  }

  return result;
}

unint64_t sub_1C4707F60()
{
  result = qword_1EDDFCD40;
  if (!qword_1EDDFCD40)
  {
    sub_1C4EFB078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCD40);
  }

  return result;
}

unint64_t sub_1C4707FB8()
{
  result = qword_1EC0BBC00;
  if (!qword_1EC0BBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC00);
  }

  return result;
}

uint64_t sub_1C470804C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BBC08, &qword_1C4F22530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47080D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4708138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C47081C0()
{
  sub_1C4708218();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C4708218()
{
  if (!qword_1EC0BBC50)
  {
    sub_1C4EFDAB8();
    sub_1C4572308(&qword_1EC0C2BD0, &qword_1C4F0FF50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0BBC50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceHistoricalFeatureDatabaseTable.SchemaError(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for EntityRelevanceHistoricalFeatureDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4708424()
{
  result = qword_1EC0BBC58;
  if (!qword_1EC0BBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC58);
  }

  return result;
}

unint64_t sub_1C470847C()
{
  result = qword_1EC0BBC60;
  if (!qword_1EC0BBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC60);
  }

  return result;
}

unint64_t sub_1C47084D4()
{
  result = qword_1EDDFA6B0;
  if (!qword_1EDDFA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6B0);
  }

  return result;
}

unint64_t sub_1C470852C()
{
  result = qword_1EDDFA6B8;
  if (!qword_1EDDFA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6B8);
  }

  return result;
}

uint64_t sub_1C4708580(uint64_t a1)
{
  v2 = sub_1C4EFDE88();
  v3 = sub_1C43FCDF8(v2);
  v126 = v4;
  v127 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  v125 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  v124 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v123 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v130 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v129 = v15;
  v115 = type metadata accessor for GraphTriple(0);
  v16 = sub_1C43FCDF8(v115);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v134 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v114 - v23;
  v25 = sub_1C4EFF0C8();
  v135 = sub_1C43FCDF8(v25);
  v136 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v135);
  sub_1C43FBFDC();
  v133 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  v116 = v31;
  v32 = *(*(sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v114 - v34;
  v36 = sub_1C4EFD548();
  v37 = sub_1C43FCDF8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v44 = v43 - v42;
  v45 = sub_1C4EFDE98();
  v46 = sub_1C43FCDF8(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v53 = v52 - v51;
  sub_1C4EFD538();
  sub_1C4EFDCC8();
  (*(v39 + 8))(v44, v36);
  v54 = v136;
  sub_1C4EFF8F8();
  sub_1C43FCF64();
  v118 = v55;
  sub_1C440BAA8(v56, v57, v58, v55);
  v59 = sub_1C498DB80();
  v122 = v35;
  sub_1C4423A0C(v35, &qword_1EC0BAA00, &unk_1C4F17400);
  v60 = *(v48 + 8);
  v119 = v53;
  v120 = v48 + 8;
  v121 = v45;
  v117 = v60;
  v60(v53, v45);
  v61 = *(v59 + 16);
  v132 = v18;
  v128 = a1;
  if (v61)
  {
    v137 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v62 = v137;
    v63 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v114[1] = v59;
    v64 = v59 + v63;
    v131 = *(v18 + 72);
    v65 = (v54 + 16);
    v66 = v135;
    v67 = v116;
    do
    {
      sub_1C4709E74(v64, v24);
      (*v65)(v67, v24, v66);
      sub_1C4709ED8(v24);
      v137 = v62;
      v68 = *(v62 + 16);
      if (v68 >= *(v62 + 24) >> 1)
      {
        sub_1C459D178();
        v66 = v135;
        v62 = v137;
      }

      *(v62 + 16) = v68 + 1;
      sub_1C43FBF6C();
      (*(v70 + 32))(v62 + v69 + *(v70 + 72) * v68, v67, v66);
      v64 += v131;
      --v61;
    }

    while (v61);

    v18 = v132;
  }

  else
  {
  }

  sub_1C45972E0();
  v131 = v71;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v72 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v72);
  v74 = *(v73 + 72);
  v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE778();
  sub_1C4D504A4();
  v116 = v77;
  v78 = *MEMORY[0x1E69A95C0];
  v80 = v126;
  v79 = v127;
  v81 = *(v126 + 104);
  sub_1C4413074();
  v81();
  sub_1C4413074();
  v81();
  v82 = v123;
  sub_1C4413074();
  v81();
  v83 = v124;
  sub_1C4413074();
  v81();
  v84 = v125;
  sub_1C4413074();
  v81();
  v85 = v119;
  v86 = v129;
  sub_1C4EFDCD8();

  v87 = *(v80 + 8);
  v87(v84, v79);
  v87(v83, v79);
  v87(v82, v79);
  v87(v130, v79);
  v87(v86, v79);
  v88 = v122;
  sub_1C43FCF64();
  sub_1C440BAA8(v89, v90, v91, v118);
  v92 = sub_1C498DB80();
  sub_1C4423A0C(v88, &qword_1EC0BAA00, &unk_1C4F17400);
  v117(v85, v121);
  v93 = sub_1C4F00F28();
  v131 = *(v92 + 16);
  if (v131)
  {
    v94 = 0;
    v130 = (v134 + *(v115 + 32));
    v129 = v92 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v95 = (v136 + 16);
    v127 = v136 + 40;
    v128 = v136 + 32;
    while (v94 < *(v92 + 16))
    {
      v96 = v134;
      sub_1C4709E74(v129 + *(v18 + 72) * v94, v134);
      v97 = *v130;
      v98 = v130[1];
      (*v95)(v133, v96, v135);
      swift_isUniquelyReferenced_nonNull_native();
      v137 = v93;
      v99 = sub_1C445FAA8(v97, v98);
      if (__OFADD__(*(v93 + 16), (v100 & 1) == 0))
      {
        goto LABEL_23;
      }

      v101 = v99;
      v102 = v100;
      sub_1C456902C(&qword_1EC0B8D78, &qword_1C4F0E308);
      if (sub_1C4F02458())
      {
        v103 = sub_1C445FAA8(v97, v98);
        v18 = v132;
        if ((v102 & 1) != (v104 & 1))
        {
          goto LABEL_25;
        }

        v101 = v103;
      }

      else
      {
        v18 = v132;
      }

      v93 = v137;
      if (v102)
      {
        v105 = sub_1C4403070();
        (*(v106 + 40))(v105, v133);
      }

      else
      {
        *(v137 + 8 * (v101 >> 6) + 64) |= 1 << v101;
        v107 = (*(v93 + 48) + 16 * v101);
        *v107 = v97;
        v107[1] = v98;
        v108 = sub_1C4403070();
        (*(v109 + 32))(v108, v133);
        v110 = *(v93 + 16);
        v111 = __OFADD__(v110, 1);
        v112 = v110 + 1;
        if (v111)
        {
          goto LABEL_24;
        }

        *(v93 + 16) = v112;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      ++v94;
      sub_1C4709ED8(v134);
      if (v131 == v94)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1C4F029F8();
    __break(1u);
  }

  else
  {
LABEL_21:

    return v93;
  }

  return result;
}

uint64_t sub_1C4708EDC(uint64_t a1)
{
  v167 = a1;
  v163 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  sub_1C43FCDF8(v163);
  v151[1] = v1;
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v164 = (v151 - v5);
  v6 = *(*(sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v162 = v151 - v8;
  v161 = sub_1C4EFDE88();
  v9 = sub_1C43FCDF8(v161);
  *&v160 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v159 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v158 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v157 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v166 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD230();
  v156 = v21;
  v22 = type metadata accessor for GraphTriple(0);
  v23 = sub_1C43FCF7C(v22);
  v169 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  v171 = sub_1C4EFF0C8();
  v30 = sub_1C43FCDF8(v171);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v36 = v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v152 = v38;
  v39 = *(*(sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v151 - v41;
  v43 = sub_1C4EFD548();
  v44 = sub_1C43FCDF8(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v51 = v50 - v49;
  v52 = sub_1C4EFDE98();
  v53 = sub_1C43FCDF8(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  v60 = v59 - v58;
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFDCC8();
  (*(v46 + 8))(v51, v43);
  sub_1C4EFF8F8();
  sub_1C43FCF64();
  sub_1C440BAA8(v61, v62, v63, v64);
  v65 = sub_1C498DB80();
  sub_1C4423A0C(v42, &qword_1EC0BAA00, &unk_1C4F17400);
  v66 = *(v55 + 8);
  v165 = v60;
  v155 = v52;
  v154 = v55 + 8;
  v153 = v66;
  v66(v60, v52);
  v67 = *(v65 + 16);
  v68 = MEMORY[0x1E69E7CC0];
  v170 = v32;
  v168 = v36;
  if (v67)
  {
    v173 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v69 = v173;
    sub_1C43FBF6C();
    v151[0] = v65;
    v71 = v65 + v70;
    v169 = *(v72 + 72);
    v73 = (v32 + 16);
    v74 = v171;
    v75 = v152;
    do
    {
      sub_1C4709E74(v71, v29);
      (*v73)(v75, v29, v74);
      sub_1C4709ED8(v29);
      v173 = v69;
      v76 = *(v69 + 16);
      if (v76 >= *(v69 + 24) >> 1)
      {
        sub_1C459D178();
        v74 = v171;
        v69 = v173;
      }

      *(v69 + 16) = v76 + 1;
      sub_1C43FBF6C();
      (*(v78 + 32))(v69 + v77 + *(v78 + 72) * v76, v75, v74);
      v71 += v169;
      --v67;
    }

    while (v67);

    v68 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v69 = MEMORY[0x1E69E7CC0];
  }

  v174 = v68;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45972E0();
  v169 = v79;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v80 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v80);
  v82 = *(v81 + 72);
  v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE558();
  sub_1C4D504A4();
  v152 = v85;
  v86 = v160;
  v87 = *(v160 + 104);
  v88 = v156;
  v89 = v161;
  (v87)(v156, *MEMORY[0x1E69A95C0], v161);
  sub_1C440AA08();
  v87(v90, v91);
  v92 = v157;
  sub_1C440AA08();
  v87(v93, v94);
  v95 = v158;
  sub_1C440AA08();
  v87(v96, v97);
  v98 = v159;
  sub_1C440AA08();
  v87(v99, v100);
  v149 = v98;
  v150 = v152;
  v101 = v166;
  sub_1C4EFDCD8();

  v102 = *(v86 + 8);
  v102(v98, v89);
  v102(v95, v89);
  v102(v92, v89);
  v102(v101, v89);
  v102(v88, v89);
  sub_1C4EFD678();
  v103 = v162;
  sub_1C43FCF64();
  v108 = sub_1C440BAA8(v104, v105, v106, v107);
  MEMORY[0x1EEE9AC00](v108);
  v149 = &v174;
  v109 = v165;
  sub_1C48687D0(v165, v103, sub_1C470A310, &v151[-4]);
  sub_1C4423A0C(v103, &unk_1EC0C07E0, &unk_1C4F168F0);
  v153(v109, v155);
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v110 = sub_1C4F00978();
  v111 = sub_1C442B738(v110, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v165 = v111;
  v112 = sub_1C4F00968();
  v113 = sub_1C4F01CB8();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 134218240;
    swift_beginAccess();
    *(v114 + 4) = v174[2];
    *(v114 + 12) = 2048;
    v115 = *(v69 + 16);

    *(v114 + 14) = v115;

    _os_log_impl(&dword_1C43F8000, v112, v113, "Create map from LOI ID to MDID, found %ld for %ld places.", v114, 0x16u);
    sub_1C43FBE2C();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v116 = v170;
  v117 = v163;
  swift_beginAccess();
  v118 = v174;
  v119 = v174[2];
  v120 = v171;
  v121 = v168;
  if (v119)
  {
    v163 = *(v117 + 48);
    sub_1C43FBF6C();
    v123 = v118 + v122;
    v125 = *(v124 + 72);
    v161 = v116 + 2;
    v162 = v125;
    v126 = v116 + 1;
    v159 = v118;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *&v127 = 136315394;
    v160 = v127;
    do
    {
      v169 = v119;
      v128 = v164;
      sub_1C470A318(v123, v164);
      v129 = v128[1];
      v166 = *v128;
      v130 = v163;
      (v161->isa)(v121, v128 + v163, v120);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v131 = sub_1C4F00968();
      v132 = v171;
      v133 = v131;
      v134 = sub_1C4F01CB8();

      isa = v126->isa;
      (v126->isa)(v128 + v130, v132);
      LODWORD(v167) = v134;
      v170 = v133;
      if (os_log_type_enabled(v133, v134))
      {
        v136 = swift_slowAlloc();
        v172[0] = swift_slowAlloc();
        *v136 = v160;
        v137 = sub_1C441D828(v166, v129, v172);

        *(v136 + 4) = v137;
        *(v136 + 12) = 2080;
        sub_1C470A388();
        v138 = sub_1C4F02858();
        v140 = v139;
        isa(v168, v171);
        v141 = sub_1C441D828(v138, v140, v172);

        *(v136 + 14) = v141;
        v142 = v170;
        v120 = v171;
        _os_log_impl(&dword_1C43F8000, v170, v167, "LOI_UUID:MDID -> %s : %s", v136, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        v121 = v168;
        sub_1C43FBE2C();
      }

      else
      {

        isa(v121, v132);
        v120 = v132;
      }

      v123 += v162;
      v119 = v169 - 1;
    }

    while (v169 != 1);
    v118 = v159;
  }

  v143 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v144 = sub_1C4709DDC(v143);
  if (*(v144 + 16) >= v118[2])
  {
    goto LABEL_25;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v145 = sub_1C4F00968();
  v146 = sub_1C4F01CE8();
  if (!os_log_type_enabled(v145, v146))
  {

LABEL_25:

    return v144;
  }

  v147 = swift_slowAlloc();
  *v147 = 134218240;
  *(v147 + 4) = v118[2];
  *(v147 + 12) = 2048;
  *(v147 + 14) = *(v144 + 16);

  _os_log_impl(&dword_1C43F8000, v145, v146, "Possible duplicate LOI IDs detected: %ld -> %ld", v147, 0x16u);
  sub_1C43FBE2C();

  return v144;
}

uint64_t sub_1C4709BD0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v14 = *v12;
  v13 = v12[1];
  sub_1C4EF9CE8();
  v15 = sub_1C4EF9D38();
  v16 = sub_1C44157D4(v11, 1, v15);
  sub_1C4423A0C(v11, &qword_1EC0B9DC8, &unk_1C4F124A0);
  if (v16 != 1)
  {
    v17 = *(v4 + 48);
    *v7 = v14;
    *(v7 + 1) = v13;
    v18 = sub_1C4EFF0C8();
    (*(*(v18 - 8) + 16))(&v7[v17], a1, v18);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C458918C();
    v19 = *(*a2 + 16);
    sub_1C4589D3C();
    v20 = *a2;
    *(v20 + 16) = v19 + 1;
    sub_1C470A3E0(v7, v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19);
  }

  return 1;
}

uint64_t sub_1C4709DDC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C456902C(&qword_1EC0BAAF0, &qword_1C4F16BF8);
    v3 = sub_1C4F02558();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C4709F34(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1C4709E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4709ED8(uint64_t a1)
{
  v2 = type metadata accessor for GraphTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4709F34(uint64_t a1, char a2, uint64_t *a3)
{
  v54 = a3;
  v5 = sub_1C4EFF0C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = v43 - v10;
  v11 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v51 = (v43 - v15);
  v50 = *(a1 + 16);
  if (!v50)
  {
  }

  v16 = 0;
  v49 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v47 = v6;
  v48 = v17;
  v52 = (v6 + 32);
  v43[2] = v6 + 8;
  v43[3] = v6 + 16;
  v43[1] = v6 + 40;
  v45 = v14;
  v46 = a1;
  while (v16 < *(a1 + 16))
  {
    v18 = v51;
    sub_1C470A318(v49 + *(v14 + 72) * v16, v51);
    v20 = *v18;
    v19 = v18[1];
    v21 = *v52;
    v22 = v18 + v48;
    v23 = v5;
    (*v52)(v53, v22, v5);
    v24 = *v54;
    v26 = sub_1C445FAA8(v20, v19);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_18;
    }

    v29 = v25;
    if (*(v24 + 24) >= v27 + v28)
    {
      if ((a2 & 1) == 0)
      {
        sub_1C456902C(&qword_1EC0B8D78, &qword_1C4F0E308);
        sub_1C4F02468();
      }
    }

    else
    {
      v30 = v54;
      sub_1C467A010();
      v31 = *v30;
      v32 = sub_1C445FAA8(v20, v19);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_20;
      }

      v26 = v32;
    }

    v34 = *v54;
    if (v29)
    {
      v35 = v47;
      v36 = v44;
      v37 = v53;
      v5 = v23;
      (*(v47 + 16))(v44, v53, v23);
      (*(v35 + 8))(v37, v23);

      (*(v35 + 40))(v34[7] + *(v35 + 72) * v26, v36, v23);
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v38 = (v34[6] + 16 * v26);
      *v38 = v20;
      v38[1] = v19;
      v5 = v23;
      v21((v34[7] + *(v47 + 72) * v26), v53, v23);
      v39 = v34[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_19;
      }

      v34[2] = v41;
    }

    ++v16;
    a2 = 1;
    v14 = v45;
    a1 = v46;
    if (v50 == v16)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C470A318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C470A388()
{
  result = qword_1EDDFE810;
  if (!qword_1EDDFE810)
  {
    sub_1C4EFF0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE810);
  }

  return result;
}

uint64_t sub_1C470A3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B88B8, &qword_1C4F0DCB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1C470A450(uint64_t a1)
{
  v100 = *v1;
  v4 = sub_1C4EF98F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v87 = v7 - v6;
  v91 = sub_1C4EFCD88();
  v8 = sub_1C43FCDF8(v91);
  v89 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v88 = v13 - v12;
  v14 = sub_1C456902C(&qword_1EC0BBC78, &unk_1C4F228F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v81 - v16;
  v17 = sub_1C4EFCD98();
  v18 = sub_1C43FCDF8(v17);
  v93 = v19;
  v94 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v81 - v24;
  v25 = sub_1C4EFF968();
  v26 = sub_1C43FCDF8(v25);
  v97 = v27;
  v98 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = sub_1C4EFDED8();
  v34 = sub_1C43FCDF8(v33);
  v96 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v40 = (v39 - v38);
  v41 = sub_1C4F00008();
  v42 = sub_1C43FCDF8(v41);
  v99 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBCC4();
  v1[4] = 2;
  v101 = v1;
  v1[2] = a1;
  v46 = sub_1C4EFEF48();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = a1;

  v50 = sub_1C4EFEF38();
  if (!v2)
  {
    v51 = v50;
    v84 = v32;
    v85 = v41;
    v82 = v33;
    v83 = v40;
    v86 = v49;
    sub_1C4EFFFF8();
    sub_1C4EFFF88();
    sub_1C470CF20(&qword_1EDDEFE90, MEMORY[0x1E69A9C38]);
    v55 = sub_1C4EFEF18();
    v56 = sub_1C442C8AC();
    v57(v56);
    v52 = v101;
    v101[3] = v55;
    sub_1C4EFDF58();
    v58 = v82;
    v59 = v83;
    *v83 = sub_1C494A1D8;
    v59[1] = 0;
    (*(v96 + 104))(v59, *MEMORY[0x1E69A95E0], v58);
    v60 = *(sub_1C456902C(qword_1EC0BBC80, &qword_1C4F3BE70) + 48);
    v61 = *MEMORY[0x1E69A9A40];
    v62 = sub_1C4EFF958();
    v63 = v84;
    (*(*(v62 - 8) + 104))(v84, v61, v62);
    sub_1C4EFF928();
    (*(v97 + 104))(v63, *MEMORY[0x1E69A9A28], v98);
    v64 = sub_1C4EFDEE8();
    v65 = v95;
    sub_1C4EFDEB8();
    v66 = v94;
    if (sub_1C44157D4(v65, 1, v94) == 1)
    {
      sub_1C4423A0C(v65, &qword_1EC0BBC78, &unk_1C4F228F0);
    }

    else
    {
      v100 = v64;
      v68 = v92;
      v67 = v93;
      (*(v93 + 32))(v92, v65, v66);
      v69 = v90;
      (*(v67 + 16))(v90, v68, v66);
      if ((*(v67 + 88))(v69, v66) == *MEMORY[0x1E69A9198])
      {
        v99 = v51;
        (*(v67 + 96))(v69, v66);
        v70 = v89;
        v71 = v69;
        v72 = v88;
        (*(v89 + 32))(v88, v71, v91);
        type metadata accessor for EntityRelevanceExplainer();
        v73 = v87;
        sub_1C4EFCD38();
        v79 = sub_1C46F741C(v73, 1.0);

        v80 = v92;

        (*(v70 + 8))(v72, v91);
        (*(v93 + 8))(v80, v66);
LABEL_15:
        v52[5] = v79;
        return v52;
      }

      v74 = *(v67 + 8);
      v74(v68, v66);
      v74(v69, v66);
    }

    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v75 = sub_1C4F00978();
    sub_1C442B738(v75, qword_1EDE2DDE0);
    v76 = sub_1C4F00968();
    v77 = sub_1C4F01CB8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_1C43F8000, v76, v77, "[InferenceCore] Running without explainer", v78, 2u);
      MEMORY[0x1C6942830](v78, -1, -1);
    }

    v79 = 0;
    goto LABEL_15;
  }

  v52 = v101;
  v53 = v101[2];

  swift_deallocPartialClassInstance();
  return v52;
}

uint64_t sub_1C470AD58(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v26 - v10;
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - v18;
  switch(a1)
  {
    case 1:
      sub_1C470CDF4();
      swift_allocError();
      *v24 = xmmword_1C4F14630;
      *(v24 + 16) = 2;
      swift_willThrow();
      break;
    case 2:
      if (!a4)
      {
        goto LABEL_14;
      }

      if (!*(a4 + 16))
      {
        goto LABEL_14;
      }

      v20 = sub_1C445FAA8(a2, a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }

      (*(v13 + 16))(v16, *(a4 + 56) + *(v13 + 72) * v20, v12);
      a2 = sub_1C4EFF068();
      (*(v13 + 8))(v16, v12);
      break;
    case 3:
      v26[2] = a2;
      v26[3] = a3;
      v26[0] = 44;
      v26[1] = 0xE100000000000000;
      sub_1C4415EA8();
      if (sub_1C4F02048())
      {
        goto LABEL_14;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF0D8();
      if (sub_1C44157D4(v11, 1, v12) == 1)
      {
        sub_1C4423A0C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_14;
      }

      a2 = sub_1C4EFF068();
      (*(v13 + 8))(v11, v12);
      break;
    case 4:
    case 5:
    case 6:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      if (a4 && *(a4 + 16) && (v22 = sub_1C445FAA8(a2, a3), (v23 & 1) != 0))
      {
        (*(v13 + 16))(v19, *(a4 + 56) + *(v13 + 72) * v22, v12);
        a2 = sub_1C4EFF068();
        (*(v13 + 8))(v19, v12);
      }

      else
      {
LABEL_14:
        a2 = 0;
      }

      break;
  }

  return a2;
}

uint64_t sub_1C470B08C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v73 = a6;
  v74 = a7;
  v81 = a8;
  v82 = a4;
  v76 = a3;
  v80 = a2;
  v68 = a1;
  v10 = sub_1C4F01188();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1C4EFFF78();
  v72 = *(v75 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EFFCD8();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C4EFFF58();
  v18 = *(v84 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1C456902C(&qword_1EC0BB868, &unk_1C4F22980);
  v79 = *(v83 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v24 = &v66 - v23;
  sub_1C470CF20(&qword_1EDDEFEB8, MEMORY[0x1E69A9B80]);
  v25 = sub_1C4EFD568();
  v77 = v8;
  v26 = *(v8 + 24);
  swift_unknownObjectRetain();
  sub_1C4EFFF48();
  v27 = v85;
  sub_1C4EFFDD8();
  if (v27)
  {
    return (*(v18 + 8))(v21, v84);
  }

  v66 = a5;
  v85 = 0;
  (*(v18 + 8))(v21, v84);
  v29 = v82;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = v69;
  v31 = v76;
  sub_1C4EFFCC8();
  v84 = v25;
  sub_1C4EFD558();
  (*(v70 + 8))(v30, v15);
  v32 = v71;
  sub_1C4EFEF58();
  sub_1C4EFFF68();
  v34 = v33;
  (*(v72 + 8))(v32, v75);
  v35 = *(v77 + 40);
  v67 = v24;
  if (v35)
  {
    sub_1C46F7648(v66, 3, 10);
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = sub_1C4EF93D8();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  v78 = v37;
  v86[0] = v37;
  sub_1C456902C(&qword_1EC0BBC68, qword_1C4F22790);
  sub_1C470CC68();
  v42 = v85;
  v43 = sub_1C4EF93B8();
  if (v42)
  {

    v45 = 0;
    v46 = 0;
  }

  else
  {
    v47 = v43;
    v48 = v44;

    sub_1C4F01178();
    v49 = sub_1C4F01158();
    v46 = v50;
    v51 = v47;
    v45 = v49;
    sub_1C4434000(v51, v48);
  }

  v52 = v80;
  v85 = 0;
  objc_autoreleasePoolPop(v38);
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v53 = sub_1C4F00978();
  sub_1C442B738(v53, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v54 = sub_1C4F00968();
  v55 = sub_1C4F01CF8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v45;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v86[0] = v58;
    *v57 = 136315650;
    *(v57 + 4) = sub_1C441D828(v68, v52, v86);
    *(v57 + 12) = 2048;
    *(v57 + 14) = v34;
    *(v57 + 22) = 2080;
    if (v46)
    {
      v59 = v56;
    }

    else
    {
      v59 = 1701736302;
    }

    v60 = v31;
    if (v46)
    {
      v61 = v46;
    }

    else
    {
      v61 = 0xE400000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v62 = sub_1C441D828(v59, v61, v86);
    v31 = v60;

    *(v57 + 24) = v62;
    _os_log_impl(&dword_1C43F8000, v54, v55, "[InferenceCore] Inference for %s: score = %f, explanation: %s", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v58, -1, -1);
    v63 = v57;
    v45 = v56;
    v29 = v82;
    MEMORY[0x1C6942830](v63, -1, -1);
  }

  result = (*(v79 + 8))(v67, v83);
  v64 = v81;
  v65 = v84;
  *v81 = v31;
  v64[1] = v29;
  v64[2] = v34;
  v64[3] = v45;
  v64[4] = v46;
  v64[5] = v65;
  return result;
}

void sub_1C470B7CC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9 = v8;
  v12 = a4[2];
  v13 = a4[3];
  v65 = a4[4];
  v14 = *(v7 + 16);
  v70 = a1;
  v62 = a6;
  v63 = a3;
  v59 = a2;
  v60 = a7;
  v58 = v12;
  if (a1 == 2)
  {
    v15 = sub_1C4708EDC(v14);
    goto LABEL_5;
  }

  if (!a1)
  {
    v15 = sub_1C4708580(v14);
LABEL_5:
    v68 = v15;
    goto LABEL_7;
  }

  v68 = 0;
LABEL_7:
  v16 = *(v65 + 16);
  MEMORY[0x1EEE9AC00](v65);
  v61 = a5;
  v56[2] = a5;

  v64 = v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v17 = sub_1C49A529C(sub_1C470CB14, v56);

  v18 = v17;
  v19 = 0;
  v72 = *(v17 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  v20 = v17 + 40;
  *&v21 = 136315138;
  v67 = v21;
  v22 = v68;
  v57 = v20;
LABEL_8:
  for (i = (v20 + 16 * v19); ; i += 2)
  {
    if (v72 == v19)
    {

      v49 = swift_allocObject();
      v51 = v61;
      v50 = v62;
      v49[2] = v71;
      v49[3] = v51;
      v52 = v58;
      v49[4] = v50;
      v49[5] = v52;
      v53 = v65;
      v49[6] = v64;
      v49[7] = v53;
      v54 = v60;
      v55 = v63;
      v49[8] = v59;
      v49[9] = v55;
      *v54 = v66;
      v54[1] = sub_1C470CB30;
      v54[2] = v49;
      v54[3] = sub_1C470CBDC;
      v54[4] = 0;
      v54[5] = sub_1C470CC14;
      v54[6] = 0;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      return;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    v24 = v19;
    v26 = *(i - 1);
    v25 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C470AD58(v70, v26, v25, v22);
    if (v9)
    {

      return;
    }

    v29 = v28;
    if (v28)
    {
      v39 = v27;
      v40 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v66 + 16);
        sub_1C458D334();
        v66 = v47;
      }

      v41 = *(v66 + 16);
      v42 = v41 + 1;
      if (v41 >= *(v66 + 24) >> 1)
      {
        v69 = v41 + 1;
        sub_1C458D334();
        v42 = v69;
        v43 = v24;
        v66 = v48;
      }

      else
      {
        v43 = v24;
      }

      v19 = v43 + 1;
      v44 = v66;
      *(v66 + 16) = v42;
      v45 = (v44 + 32 * v41);
      v45[4] = v26;
      v45[5] = v25;
      v45[6] = v39;
      v45[7] = v29;
      v18 = v40;
      v20 = v57;
      goto LABEL_8;
    }

    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CD8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v69 = 0;
      v34 = v33;
      v35 = v18;
      v36 = swift_slowAlloc();
      v73 = v36;
      *v34 = v67;
      *(v34 + 4) = sub_1C441D828(v26, v25, &v73);
      _os_log_impl(&dword_1C43F8000, v31, v32, "Dropping identifier since it cannot be resolved to mdid: %s", v34, 0xCu);
      sub_1C440962C(v36);
      v37 = v36;
      v18 = v35;
      MEMORY[0x1C6942830](v37, -1, -1);
      v38 = v34;
      v22 = v68;
      v9 = v69;
      MEMORY[0x1C6942830](v38, -1, -1);
    }

    else
    {
    }

    v19 = v24 + 1;
  }

  __break(1u);
}

double sub_1C470BC30@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v11 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v37 = a4;
  v38 = a5;
  *&v39 = a6;
  v15 = sub_1C470C1D4(v11, v12, a2, a3, &v37);
  v16 = sub_1C4F01108();
  v36 = v15;
  v17 = [v15 featureValueForName_];

  v18 = v17;
  if (v17)
  {
    [v17 doubleValue];
  }

  else
  {
    v19 = 0.0;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_15;
  }

  if (v19 >= 2)
  {
    sub_1C470B08C(v11, v12, v14, v13, v36, a7, a9, &v37);
    v32 = v37;
    v33 = v38;
    swift_unknownObjectRelease();

    *a8 = v32;
    *(a8 + 8) = v33;
    result = *&v39;
    v35 = v40;
    *(a8 + 16) = v39;
    *(a8 + 32) = v35;
    return result;
  }

  if (!v17)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1C441D828(v11, v12, &v37);
      _os_log_impl(&dword_1C43F8000, v21, v22, "[InferenceCore] feature 'totalCount' not found for %s", v23, 0xCu);
      sub_1C440962C(v24);
      MEMORY[0x1C6942830](v24, -1, -1);
      v25 = v23;
      v18 = 0;
      MEMORY[0x1C6942830](v25, -1, -1);
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    goto LABEL_23;
  }

LABEL_15:
  v26 = sub_1C4F00978();
  sub_1C442B738(v26, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CB8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = v18;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1C441D828(v11, v12, &v37);
    _os_log_impl(&dword_1C43F8000, v27, v28, "[InferenceCore] Skipping %s because total count is below threshold", v29, 0xCu);
    sub_1C440962C(v31);
    MEMORY[0x1C6942830](v31, -1, -1);
    MEMORY[0x1C6942830](v29, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = 0.0;
  *(a8 + 16) = 0u;
  *(a8 + 32) = 0u;
  *a8 = 0u;
  return result;
}

uint64_t sub_1C470C1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v95 = a4;
  v98 = a1;
  v5 = *a5;
  v6 = a5[2];
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v92 = a5[1];
    v93 = v5;
    v94 = v6;
    __dst[0] = MEMORY[0x1E69E7CC0];
    v96 = a2;
    sub_1C459E008(0, v7, 0);
    v10 = v96;
    v8 = __dst[0];
    v11 = (a3 + 40);
    v97 = xmmword_1C4F0D130;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v14 = swift_allocObject();
      *(v14 + 16) = v97;
      *(v14 + 32) = v98;
      *(v14 + 40) = v10;
      __dst[0] = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a1 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v16 >= v15 >> 1)
      {
        a1 = sub_1C459E008((v15 > 1), v16 + 1, 1);
        v10 = v96;
        v8 = __dst[0];
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 40 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = 0;
      *(v17 + 56) = v14;
      *(v17 + 64) = 0;
      v11 += 2;
      --v7;
    }

    while (v7);
    v6 = v94;
  }

  v18 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v86[16] = 0;
  v87 = v8;
  v88 = v19;
  v89 = v21;
  v90 = v20;
  v91 = 0;
  v22 = sub_1C49A5498(sub_1C470CD1C, v86);

  v23 = 0;
  *&v97 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC8];
  v25 = 32;
  v96 = 32;
LABEL_8:
  v26 = v25 + 80 * v23;
  v98 = v24;
  while (v97 != v23)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    memcpy(__dst, (v22 + v26), 0x49uLL);
    sub_1C470CD44(__dst, &v99);
    v27 = objc_autoreleasePoolPush();
    sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v28 = v101;
    v29 = sub_1C4F01D38();
    if (v28)
    {

      objc_autoreleasePoolPop(v27);
      sub_1C470CDA0(__dst);
    }

    v30 = v29;
    v101 = 0;
    v32 = __dst[2];
    v31 = __dst[3];
    objc_autoreleasePoolPop(v27);
    if (v30)
    {
      v36 = v98;
      LODWORD(v94) = swift_isUniquelyReferenced_nonNull_native();
      v99 = v36;
      v37 = sub_1C445FAA8(v32, v31);
      if (!__OFADD__(v36[2], (v38 & 1) == 0))
      {
        v39 = v37;
        v40 = v38;
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        if (sub_1C4F02458())
        {
          v41 = sub_1C445FAA8(v32, v31);
          v43 = v40;
          v44 = v40 & 1;
          v25 = v96;
          if (v44 == (v42 & 1))
          {
            v39 = v41;
            goto LABEL_21;
          }

LABEL_56:
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v43 = v40;
        v25 = v96;
LABEL_21:
        v24 = v99;
        if (v43)
        {
          v48 = v99[7];
          v49 = *(v48 + 8 * v39);
          *(v48 + 8 * v39) = v30;

          sub_1C470CDA0(__dst);
          goto LABEL_25;
        }

        v99[(v39 >> 6) + 8] |= 1 << v39;
        v50 = (v24[6] + 16 * v39);
        *v50 = v32;
        v50[1] = v31;
        *(v24[7] + 8 * v39) = v30;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C470CDA0(__dst);
        v51 = v24[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (!v52)
        {
          v24[2] = v53;
          goto LABEL_25;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v33 = v98;
    v34 = sub_1C445FAA8(v32, v31);
    if (v35)
    {
      v45 = v34;
      swift_isUniquelyReferenced_nonNull_native();
      v99 = v33;
      v46 = v33[3];
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v24 = v99;
      v47 = *(v99[6] + 16 * v45 + 8);

      sub_1C4F02478();
      sub_1C470CDA0(__dst);
      v25 = v96;
LABEL_25:
      ++v23;
      goto LABEL_8;
    }

    sub_1C470CDA0(__dst);
    v26 += 80;
    ++v23;
  }

  if (v95)
  {
    v54 = 0;
    v55 = *(v95 + 16);
    v56 = v95 + 40;
    v57 = MEMORY[0x1E69E7CC8];
    *&v97 = v95 + 40;
LABEL_28:
    v58 = (v56 + 16 * v54);
    for (i = v54; v55 != i; ++i)
    {
      if (i >= v55)
      {
        goto LABEL_50;
      }

      v54 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_51;
      }

      v61 = *(v58 - 1);
      v60 = *v58;
      v62 = objc_opt_self();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v63 = [v62 featureValueWithDouble_];
      if (v63)
      {
        v66 = v63;
        LODWORD(v96) = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v57;
        v67 = sub_1C445FAA8(v61, v60);
        if (__OFADD__(v57[2], (v68 & 1) == 0))
        {
          goto LABEL_53;
        }

        v69 = v67;
        v70 = v68;
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        if (sub_1C4F02458())
        {
          v71 = sub_1C445FAA8(v61, v60);
          if ((v70 & 1) != (v72 & 1))
          {
            goto LABEL_56;
          }

          v69 = v71;
        }

        v57 = __dst[0];
        if (v70)
        {
          v73 = *(__dst[0] + 56);
          v74 = *(v73 + 8 * v69);
          *(v73 + 8 * v69) = v66;
        }

        else
        {
          *(__dst[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
          v78 = (v57[6] + 16 * v69);
          *v78 = v61;
          v78[1] = v60;
          *(v57[7] + 8 * v69) = v66;
          v79 = v57[2];
          v52 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v52)
          {
            goto LABEL_55;
          }

          v57[2] = v80;
        }

        goto LABEL_44;
      }

      v64 = sub_1C445FAA8(v61, v60);
      if (v65)
      {
        v75 = v64;
        swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v57;
        v76 = v57[3];
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v57 = __dst[0];
        v77 = *(*(__dst[0] + 48) + 16 * v75 + 8);

        sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
        sub_1C4F02478();

LABEL_44:
        v56 = v97;
        goto LABEL_28;
      }

      v58 += 2;
    }

    v82 = v98;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = v82;
    v84 = v101;
    sub_1C46C63CC(v57, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, __dst);
    v101 = v84;
  }

  sub_1C4461BB8(0, &qword_1EDDDB8B0, 0x1E695FE48);
  result = sub_1C470C9F4();
  if (!result)
  {
    sub_1C470CDF4();
    swift_allocError();
    *v85 = xmmword_1C4F14630;
    *(v85 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

id sub_1C470C9F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v1 = sub_1C4F00EC8();

  v2 = [v0 initWithFeatureValueDictionary_];

  return v2;
}

void *sub_1C470CA8C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1C470CABC()
{
  sub_1C470CA8C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C470CB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 8) = result;
    *(a2 + 16) = v5;
    *(a2 + 24) = v4;
    *(a2 + 32) = *(a1 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1C470CBDC(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_1C470CB64(v3);
}

double sub_1C470CC14@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = a1[2];
  sub_1C470CB74(v8, v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

unint64_t sub_1C470CC68()
{
  result = qword_1EDDEFEA8;
  if (!qword_1EDDEFEA8)
  {
    sub_1C4572308(&qword_1EC0BBC68, qword_1C4F22790);
    sub_1C470CF20(&qword_1EDDEFEB0, MEMORY[0x1E69A9BB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFEA8);
  }

  return result;
}

unint64_t sub_1C470CDF4()
{
  result = qword_1EC0BBC70;
  if (!qword_1EC0BBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBC70);
  }

  return result;
}

uint64_t sub_1C470CE58(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1C470CE74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C470CEB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1C470CEF8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C470CF20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C470CF78(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_1C4EFFF58();
  *(v3 + 40) = v4;
  sub_1C43FCF7C(v4);
  *(v3 + 48) = v5;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = sub_1C456902C(&qword_1EC0BB868, &unk_1C4F22980);
  *(v3 + 64) = v8;
  sub_1C43FCF7C(v8);
  *(v3 + 72) = v9;
  v11 = *(v10 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v12 = sub_1C4EFFF78();
  *(v3 + 88) = v12;
  sub_1C43FCF7C(v12);
  *(v3 + 96) = v13;
  v15 = *(v14 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v16 = sub_1C4F00008();
  *(v3 + 120) = v16;
  sub_1C43FCF7C(v16);
  *(v3 + 128) = v17;
  v19 = *(v18 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C470D148, 0, 0);
}

uint64_t sub_1C470D148()
{
  v1 = sub_1C4EFEF48();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[18] = sub_1C4EFEF38();
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[2];
  v7 = v0[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFFFF8();
  sub_1C4EFFF88();
  sub_1C470D890();
  v0[19] = sub_1C4EFEF18();
  (*(v5 + 8))(v4, v6);
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E69A9C20], v0[5]);
  v9 = *(MEMORY[0x1E69A9BD8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1C470D398;
  v11 = v0[10];
  v12 = v0[7];

  return MEMORY[0x1EEE13C40](v11);
}

uint64_t sub_1C470D398()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 24);

    v8 = sub_1C470D7E0;
  }

  else
  {
    v8 = sub_1C470D518;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C470D518()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  sub_1C4EFEF58();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  v8 = (*(v4 + 88))(v2, v3);
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[11];
  if (v8 == *MEMORY[0x1E69A9C28])
  {
    (*(v9 + 96))(v0[13], v11);
    v12 = *v10;
    v13 = v10[1];
  }

  else
  {
    (*(v9 + 8))(v0[13], v11);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DDE0);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "EntityRelevanceMLModel.init: not correct metadataOutput", v17, 2u);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    v12 = 0;
    v13 = 0;
  }

  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  v21 = v0[14];
  v23 = v0[11];
  v22 = v0[12];
  v30 = v0[13];
  v31 = v0[10];
  v32 = v0[7];
  v33 = v0[2];
  v34 = v0[3];

  MEMORY[0x1C6940010](58, 0xE100000000000000);
  if (v13)
  {
    v24 = v12;
  }

  else
  {
    v24 = 0x746C7561666564;
  }

  if (v13)
  {
    v25 = v13;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  MEMORY[0x1C6940010](v24, v25);

  (*(v22 + 8))(v21, v23);

  v26 = v0[1];
  v27 = v0[19];
  v28.n128_u64[0] = v0[4];

  return v26(v27, v33, v34, v28);
}

uint64_t sub_1C470D7E0()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[21];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

unint64_t sub_1C470D890()
{
  result = qword_1EDDEFE90;
  if (!qword_1EDDEFE90)
  {
    sub_1C4EFFF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFE90);
  }

  return result;
}

unint64_t sub_1C470D8E8(uint64_t a1)
{
  result = sub_1C4702C80();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C470D970(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_1C44157D4((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C470DAF0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            sub_1C440BAA8(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C470DD50(uint64_t a1)
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

_DWORD *sub_1C470DDD8(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v6 < a2)
  {
    v8 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v6;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_18:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        return (v6 + (v10 | v15) + 1);
      default:
LABEL_22:
        if (v6)
        {
          return sub_1C44157D4((result + v7 + 8) & ~v7, v6, v4);
        }

        return 0;
    }
  }

  return sub_1C44157D4((result + v7 + 8) & ~v7, v6, v4);
}

void sub_1C470DEFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = ((*(v7 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(v7 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v18 = &a1[v10 + 8] & ~v10;

          sub_1C440BAA8(v18, a2, v9, v6);
        }

        break;
    }
  }

  else
  {
    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = a2 - v9;
    }

    if (v11)
    {
      v17 = ~v9 + a2;
      bzero(a1, ((*(v8 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C470E0EC(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB0B8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a2;
  v12 = a2[1];
  sub_1C4EFB058();
  v15 = a2;
  sub_1C4EFBFC8();
  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_1C470E200(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ViewDatabaseArtifact.Property();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *(v17 + 16);
  if (v18)
  {
    v29 = *(v13 + 20);
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    do
    {
      sub_1C443CCBC(v19, v16);
      v21 = *v16;
      v22 = *(v16 + 1);
      v23 = sub_1C4EFBE38();
      (*(*(v23 - 8) + 16))(v6, &v16[v29], v23);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v16);
      sub_1C440BAA8(v6, 0, 1, v23);
      sub_1C4EFB498();

      sub_1C4423A0C(v6, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v24 = sub_1C4EFBF38();
      sub_1C440BAA8(v10, 1, 1, v24);
      sub_1C4EFB538();

      sub_1C4423A0C(v10, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  v25 = *MEMORY[0x1E69A00D0];
  v26 = sub_1C4EFBF38();
  (*(*(v26 - 8) + 104))(v10, v25, v26);
  sub_1C440BAA8(v10, 0, 1, v26);
  sub_1C4EFB478();
  return sub_1C4423A0C(v10, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C470E518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C470E5EC(char a1)
{
  if (a1)
  {
    return 0x6C43797469746E65;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

uint64_t sub_1C470E630(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a4;
  v6 = sub_1C456902C(&qword_1EC0BBD90, &qword_1C4F22AF8);
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C470EA74();
  sub_1C4F02BF8();
  v20 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v19 = v17;
    v18 = 1;
    sub_1C470EB1C();
    sub_1C4F027E8();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1C470E7B0(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BBD88, &qword_1C4F22AF0);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C470EA74();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C470EAC8();
    sub_1C4F026C8();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C470E984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C470E518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C470E9AC(uint64_t a1)
{
  v2 = sub_1C470EA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C470E9E8(uint64_t a1)
{
  v2 = sub_1C470EA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C470EA24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C470E7B0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1C470EA74()
{
  result = qword_1EDDFA7F0;
  if (!qword_1EDDFA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7F0);
  }

  return result;
}

unint64_t sub_1C470EAC8()
{
  result = qword_1EDDFB7C0;
  if (!qword_1EDDFB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB7C0);
  }

  return result;
}

unint64_t sub_1C470EB1C()
{
  result = qword_1EDDE8140[0];
  if (!qword_1EDDE8140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE8140);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceRankingDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C470EC50()
{
  result = qword_1EC0BBD98;
  if (!qword_1EC0BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBD98);
  }

  return result;
}

unint64_t sub_1C470ECA8()
{
  result = qword_1EDDFA7E0;
  if (!qword_1EDDFA7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7E0);
  }

  return result;
}

unint64_t sub_1C470ED00()
{
  result = qword_1EDDFA7E8;
  if (!qword_1EDDFA7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA7E8);
  }

  return result;
}

uint64_t sub_1C470ED70()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C470EE58(uint64_t a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a1 + 16);
  v24 = a1;
  v25 = v9;
  v28 = a2;
  v27 = a2 + 7;
  v11 = (v10 + 16);
  v23 = v10;
  v12 = (v10 + 8);
  while (v8 != v25)
  {
    v26 = v8;
    if (v28[2])
    {
      v13 = *(v23 + 72);
      v14 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + v13 * v26;
      v15 = v28;
      v16 = v28[5];
      sub_1C4498DE4(&qword_1EC0B90D0);
      v17 = sub_1C4F00FD8();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        v19 = v17 & v18;
        if (((*(v27 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        (*v11)(v7, v28[6] + v19 * v13, v4);
        sub_1C4498DE4(&qword_1EC0B9D00);
        v20 = sub_1C4F010B8();
        (*v12)(v7, v4);
        v17 = v19 + 1;
        if (v20)
        {

          return v26;
        }
      }
    }

    v8 = v26 + 1;
  }

  return 0;
}

NSObject *sub_1C470F0AC(id *a1)
{
  v3 = v1;
  v74 = a1;
  isa = v1->isa;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v67 - v6;
  v8 = sub_1C4EF9CD8();
  v76 = *(v8 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v67 - v13;
  v15 = *(&v1->isa + qword_1EC0BBDB8);
  v17 = *(&v1->isa + qword_1EC0BBDE8);
  v16 = *(&v1[1].isa + qword_1EC0BBDE8);
  sub_1C4411BD8();
  v18 = sub_1C4598E54();
  if (v2)
  {

LABEL_3:
    v19 = *(&v1[6].isa + qword_1EC0BBDC0);
    v85 = *(&v1[4].isa + qword_1EC0BBDC0);
    v86 = v19;
    v20 = *(&v1[2].isa + qword_1EC0BBDC0);
    v84[0] = *(&v1->isa + qword_1EC0BBDC0);
    v84[1] = v20;
    v21 = *(v85 + 16);
    MEMORY[0x1EEE9AC00](v18);
    *(&v67 - 2) = v84;
    sub_1C446C37C(sub_1C4707C54, &(&v67)[-4]);
    sub_1C47108AC();
    v30 = *(&v3->isa + qword_1EC0BBDD8);
    v31 = sub_1C4EF9BE8();
    v32 = v30 / 300.0;
    if (COERCE__INT64(fabs(v30 / 300.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          MEMORY[0x1EEE9AC00](v31);
          *(&v67 - 2) = v14;
          *(&v67 - 1) = v3;
          sub_1C45DA250();
          v34 = v33;
          v35 = v76;
          (*(v76 + 8))(v14, v8);
          v36 = v34;
          goto LABEL_14;
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (!v18)
  {
    goto LABEL_3;
  }

  if (!*(v18 + 16))
  {

    goto LABEL_3;
  }

  v70 = v18;
  if (qword_1EDDFA668 != -1)
  {
LABEL_29:
    sub_1C4406758();
    swift_once();
  }

  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDE2DDE0);
  sub_1C4400248();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v23 = sub_1C4F00968();
  v24 = sub_1C4F01CB8();

  v69 = v24;
  v25 = v24;
  v26 = v23;
  if (os_log_type_enabled(v23, v25))
  {
    v27 = swift_slowAlloc();
    sub_1C43FEC60();
    v68 = swift_slowAlloc();
    *&v77 = v68;
    *v27 = 136315394;
    v28 = sub_1C441F870(qword_1EC0BBDE0);
    *(v27 + 4) = sub_1C441D828(v28, v29, &v77);
    *(v27 + 12) = 2048;
    *(v27 + 14) = *(sub_1C4400248() + 16);

    v67 = v26;
    _os_log_impl(&dword_1C43F8000, v26, v69, "%s: Found saved state with %ld points. Will resume.", v27, 0x16u);
    v26 = v68;
    sub_1C440962C(v68);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C4400248();
  }

  v65._countAndFlagsBits = sub_1C4411BD8();
  KeyValueStore.delete(key:)(v65);
  if (v66)
  {
    sub_1C4400248();

    return v26;
  }

  v35 = v76;
  v36 = sub_1C4400248();
LABEL_14:
  v70 = v36;
  sub_1C446D094(v36, v7);
  v37 = sub_1C44157D4(v7, 1, v8);
  v38 = v75;
  if (v37 == 1)
  {
    (*(v35 + 16))(v75, v74, v8);
    if (sub_1C44157D4(v7, 1, v8) != 1)
    {
      sub_1C4423A0C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v35 + 32))(v75, v7, v8);
  }

  sub_1C442E860(v3 + qword_1EC0BBDA8, &v77);
  v39 = v71;
  (*(v35 + 16))(v71, v38, v8);
  *(&v3->isa + qword_1EC0BBDD8);
  v40 = v72;
  sub_1C4EF9BE8();
  v41 = type metadata accessor for CachedContextProvider();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_1C466C344(&v77, v39, v40);
  v71 = v44;
  v45 = qword_1EC0BBDF8;
  swift_beginAccess();
  v46 = *(&v3->isa + v45);
  *(&v3->isa + v45) = MEMORY[0x1E69E7CC0];

  v74 = &v67;
  v82 = *(&v3->isa + qword_1EC0BBDB0);
  MEMORY[0x1EEE9AC00](v47);
  *(&v67 - 2) = v44;
  *(&v67 - 1) = v3;
  v48 = isa[10];
  v49 = isa[11];
  v72 = v8;
  v51 = isa[12];
  v50 = isa[13];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *&v77 = v48;
  *(&v77 + 1) = v49;
  v78 = v51;
  v79 = v50;
  type metadata accessor for EntityRelevanceTrainingSetProvider();
  v52 = sub_1C4F017A8();
  *&v77 = type metadata accessor for DigestingEntityRelevanceFeatureProvider();
  *(&v77 + 1) = v48;
  v78 = v49;
  v79 = &off_1EEB23D18;
  v80 = v51;
  v81 = v50;
  v53 = type metadata accessor for CombinedFeatureAndGroundTruthProvider();
  WitnessTable = swift_getWitnessTable();
  sub_1C4D4F664(sub_1C4711B14, &(&v67)[-4], v52, v53, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v55);

  (*(v76 + 8))(v75, v72);
  swift_getWitnessTable();
  type metadata accessor for EntityRelevanceHistoricalFeatureStoreDigestTask();
  v56 = *(&v3[2].isa + qword_1EC0BBDC0);
  v83[0] = *(&v3->isa + qword_1EC0BBDC0);
  v83[1] = v56;
  v57 = *(&v3[6].isa + qword_1EC0BBDC0);
  v83[2] = *(&v3[4].isa + qword_1EC0BBDC0);
  v83[3] = v57;
  v58 = sub_1C46FF2D0();
  v59 = v70;
  sub_1C45FB394();
  v26 = v60;
  v61 = (v3 + qword_1EC0BBDF0);
  v62 = *(&v3->isa + qword_1EC0BBDF0);
  v63 = v61[1];
  *v61 = v58;
  v61[1] = v59;
  sub_1C46F4E90(v83, &v77);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46F4E50(v62);
  return v26;
}

uint64_t sub_1C470F990@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v95 = a4;
  v87 = a2;
  v97 = a1;
  v90 = *(*a3 + 88);
  v94 = *(v90 - 8);
  v6 = *(v94 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v93 = &v85 - v8;
  v88 = *(v9 + 80);
  v92 = *(v88 - 8);
  v10 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v85 - v11;
  *&v13 = v12;
  *(&v13 + 1) = v14;
  v89 = *(v15 + 96);
  v98 = v13;
  v99 = v89;
  v16 = type metadata accessor for EntityRelevanceTrainingSetProvider();
  v117 = v16;
  sub_1C442E860(a1 + v16[14], &v98);
  sub_1C442E860(a1 + v16[15], v115);
  sub_1C442E860(a1 + v16[16], v114);
  v86 = *(a1 + v16[17]);
  v17 = *(&v99 + 1);
  v18 = sub_1C4418280(&v98, *(&v99 + 1));
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v116;
  v24 = sub_1C4418280(v115, v116);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v21;
  v30 = *v27;
  v31 = type metadata accessor for BehaviorDatabaseEventTracker();
  v113[3] = v31;
  v113[4] = &off_1F43E2390;
  v113[0] = v29;
  v32 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v111 = v32;
  v112 = &off_1F43E2510;
  v110[0] = v30;
  v33 = type metadata accessor for CachedBehaviorFeaturizerProvider();
  v34 = swift_allocObject();
  v35 = sub_1C4418280(v113, v31);
  v36 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = v111;
  v41 = sub_1C4418280(v110, v111);
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v85 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v38;
  v47 = *v44;
  v109[3] = v31;
  v109[4] = &off_1F43E2390;
  v109[0] = v46;
  v108[3] = v32;
  v108[4] = &off_1F43E2510;
  v108[0] = v47;
  *(v34 + 160) = 0u;
  *(v34 + 176) = 0u;
  *(v34 + 192) = 0u;
  v48 = v87;
  *(v34 + 16) = v87;
  v96 = v34;
  sub_1C442E860(v109, v34 + 24);
  sub_1C442E860(v108, v34 + 64);
  sub_1C442E860(v114, v34 + 104);
  *(v34 + 144) = v86;
  sub_1C442E860(v114, v107);
  sub_1C442E860(v108, v105);
  v49 = v106;
  v50 = sub_1C4418280(v105, v106);
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v53 = (&v85 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = *v53;
  v103 = type metadata accessor for CachedContextProvider();
  v104 = &off_1F43E5FE8;
  v101[4] = &off_1F43E2510;
  *&v102 = v48;
  v101[3] = v32;
  v101[0] = v55;
  type metadata accessor for CachedBehaviorDatabaseHistogramManager();
  v56 = swift_allocObject();
  v57 = sub_1C4418280(v101, v32);
  v58 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = (&v85 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = *v60;
  v56[15] = v32;
  v56[16] = &off_1F43E2510;
  v56[12] = v62;
  v56[17] = MEMORY[0x1E69E7CC8];
  sub_1C441D670(&v102, (v56 + 2));
  sub_1C441D670(v107, (v56 + 7));
  swift_retain_n();

  sub_1C440962C(v101);
  sub_1C440962C(v114);
  sub_1C440962C(v108);
  sub_1C440962C(v109);
  sub_1C440962C(v105);
  v63 = v96;
  *(v96 + 152) = v56;
  sub_1C440962C(v110);
  sub_1C440962C(v113);
  sub_1C440962C(v115);
  sub_1C440962C(&v98);
  *(&v99 + 1) = v33;
  *&v100 = &off_1F43E2F88;
  *&v98 = v63;
  v64 = qword_1EC0BBDF8;
  swift_beginAccess();

  sub_1C45891F0();
  v65 = *(*(a3 + v64) + 16);
  sub_1C4589D98();
  v66 = v33;
  v67 = sub_1C4418280(&v98, v33);
  v68 = *(v33 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = *(v68 + 16);
  v87(&v85 - v70);
  sub_1C4711B34(v65, *(&v85 - v70), (a3 + v64));
  sub_1C440962C(&v98);
  swift_endAccess();
  v71 = *(a3 + qword_1EC0BBDD0);
  v72 = *(v97 + v117[18]);
  *(&v99 + 1) = v66;
  *&v100 = &off_1F43E2F88;
  *&v98 = v96;
  v73 = type metadata accessor for DigestingEntityRelevanceFeatureProvider();
  v74 = swift_allocObject();
  v75 = sub_1C4418280(&v98, v66);
  MEMORY[0x1EEE9AC00](v75);
  v87(&v85 - v70);
  v76 = *(&v85 - v70);
  v74[6] = v66;
  v74[7] = &off_1F43E2F88;
  v74[8] = v72;
  v74[2] = v71;
  v74[3] = v76;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(&v98);
  *&v98 = v73;
  v77 = v88;
  *(&v98 + 1) = v88;
  v78 = v90;
  *&v99 = v90;
  *(&v99 + 1) = &off_1EEB23D18;
  v100 = v89;
  type metadata accessor for CombinedFeatureAndGroundTruthProvider();
  *&v98 = v74;
  v79 = v97;
  (*(v92 + 16))(v91, v97, v77);
  v80 = v117;
  (*(v94 + 16))(v93, v79 + v117[13], v78);
  v81 = (v79 + v80[19]);
  v82 = *v81;
  v83 = v81[1];
  *v95 = sub_1C46FDCB4();
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C471035C()
{
  v1 = *(v0 + qword_1EC0BBDF0);
  if (!v1)
  {
    return 0;
  }

  v6 = *(v0 + qword_1EC0BBDF0 + 8);
  v2 = *(v1 + qword_1EC151C30);
  sub_1C46F366C(v1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598054();
  v4 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4711690(&v6, v4);
  if (*(v6 + 16) < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C4C075A0();

    return v6;
  }

  return result;
}

void sub_1C4710434()
{
  v1 = sub_1C471035C();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + qword_1EC0BBDB8);
    sub_1C441F870(qword_1EC0BBDE8);
    sub_1C495C28C();
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DDE0);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CB8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      sub_1C43FEC60();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315394;
      v15 = sub_1C441F870(qword_1EC0BBDE0);
      *(v13 + 4) = sub_1C441D828(v15, v16, &v19);
      *(v13 + 12) = 2048;
      v17 = *(v2 + 16);

      *(v13 + 14) = v17;

      _os_log_impl(&dword_1C43F8000, v11, v12, "%s: Saved data collection state with %ld remaining points.", v13, 0x16u);
      sub_1C440962C(v14);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);

    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CB8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      sub_1C43FEC60();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      v8 = sub_1C441F870(qword_1EC0BBDE0);
      *(v6 + 4) = sub_1C441D828(v8, v9, &v19);
      _os_log_impl(&dword_1C43F8000, oslog, v5, "%s: Skipping persisting state for deferral since no sample task has been created.", v6, 0xCu);
      sub_1C440962C(v7);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }
}

uint64_t sub_1C47108AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + qword_1EC0BBDB8);
  result = KeyValueStore.delete(key:)(*(v1 + qword_1EC0BBDE8));
  if (!v5)
  {
    v6 = qword_1EC0BBDF8;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = *(v7 + 16);
    v9 = v7 + 32;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        v13 = *(v1 + qword_1EC0BBDB0);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v12 = *(v2 + 96);
        v14 = *(v2 + 80);
        v15 = v12;
        type metadata accessor for EntityRelevanceTrainingSetProvider();
        sub_1C4F017A8();
        swift_getWitnessTable();
        sub_1C4F01548();
      }

      if (i >= *(v7 + 16))
      {
        break;
      }

      sub_1C442E860(v9, &v14);
      v11 = *sub_1C4409678(&v14, *(&v15 + 1));
      sub_1C460924C();
      result = sub_1C440962C(&v14);
      v9 += 40;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4710A78(uint64_t a1, uint64_t a2)
{
  v5 = *(*a2 + 96);
  v37 = *(*a2 + 80);
  v38 = v5;
  v6 = type metadata accessor for EntityRelevanceTrainingSetProvider();
  if (!*(a1 + v6[18]) || (result = sub_1C46DE0D8(), !v2))
  {
    v40 = type metadata accessor for BehaviorFeaturizer();
    sub_1C442E860(a2 + qword_1EC0BBDA8, &v37);
    sub_1C442E860(a1 + v6[14], v35);
    sub_1C442E860(a1 + v6[16], v32);
    v8 = *(a1 + v6[17]);
    v9 = *(&v38 + 1);
    v30 = v39;
    v10 = sub_1C4418280(&v37, *(&v38 + 1));
    v31 = v29;
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x1EEE9AC00](v10);
    v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = v36;
    v16 = sub_1C4418280(v35, v36);
    v29[1] = v29;
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    v22 = v33;
    v21 = v34;
    v23 = sub_1C4418280(v32, v33);
    v24 = *(*(v22 - 8) + 64);
    MEMORY[0x1EEE9AC00](v23);
    v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    v28 = type metadata accessor for BehaviorDatabaseEventTracker();

    sub_1C460784C(v13, v19, v26, v8, v40, v9, v22, v28, v30, v21, &off_1F43E2390);
    sub_1C440962C(v32);
    sub_1C440962C(v35);
    sub_1C440962C(&v37);
    sub_1C4604A6C();
  }

  return result;
}

uint64_t sub_1C4710DE4()
{
  sub_1C4467948(v0 + qword_1EC0BBDA0);
  sub_1C440962C((v0 + qword_1EC0BBDA8));
  v1 = *(v0 + qword_1EC0BBDB0);

  v2 = *(v0 + qword_1EC0BBDB8);

  v3 = *(v0 + qword_1EC0BBDC0 + 8);
  v4 = *(v0 + qword_1EC0BBDC0 + 24);
  v5 = *(v0 + qword_1EC0BBDC0 + 32);
  v6 = *(v0 + qword_1EC0BBDC0 + 40);
  v7 = *(v0 + qword_1EC0BBDC0 + 48);
  v8 = *(v0 + qword_1EC0BBDC0 + 56);

  v9 = *(v0 + qword_1EC0BBDD0);

  v10 = *(v0 + qword_1EC0BBDE0 + 8);

  v11 = *(v0 + qword_1EC0BBDE8 + 8);

  v12 = *(v0 + qword_1EC0BBDF0 + 8);
  sub_1C46F4E50(*(v0 + qword_1EC0BBDF0));
  v13 = *(v0 + qword_1EC0BBDF8);

  return v0;
}

uint64_t sub_1C4710EF8()
{
  sub_1C4710DE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C4710F70(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_1C471154C(319, &qword_1EC0BBF00);
      if (v6 <= 0x3F)
      {
        sub_1C471154C(319, &qword_1EC0BBF08);
        if (v7 <= 0x3F)
        {
          sub_1C471154C(319, &qword_1EC0BBF10);
          if (v8 <= 0x3F)
          {
            type metadata accessor for KeyValueStore();
            if (v9 <= 0x3F)
            {
              sub_1C47115A0();
              if (v10 <= 0x3F)
              {
                sub_1C4700EB8();
                if (v11 <= 0x3F)
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

uint64_t sub_1C47110BC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *(((v14 + result) & 0xFFFFFFFFFFFFFFF8) + 24);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return sub_1C44157D4(result, v6, v5);
  }

  v15 = ((((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C47112A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((((((((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((((((((((((v16 + v15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_46:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          sub_1C440BAA8(a1, a2, v8, v7);
        }

        else
        {
          v24 = &a1[v16] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v24 + 8) = 0u;
            *(v24 + 24) = 0u;
            *v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v24 + 24) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((v16 + v15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((((((((((((v16 + v15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((((((((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C471154C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C47115A0()
{
  if (!qword_1EC0BBF18)
  {
    type metadata accessor for EntityInteractionHistoryIngestor();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0BBF18);
    }
  }
}

NSObject *sub_1C47115F8(id *a1)
{
  v3 = *v1;
  result = sub_1C470F0AC(a1);
  if (v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1C4711690(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v46 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v48 = a1;
  v20 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C470EE58(v20, a2);
  v46 = v2;
  if (v2)
  {
    goto LABEL_4;
  }

  v61 = v19;
  v51 = v11;
  if (v22)
  {
    v3 = *(v20 + 16);
LABEL_4:

    return v3;
  }

  v3 = result;
  v23 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v24 = v20;
    v62 = v7 + 16;
    v59 = a2 + 56;
    v60 = (v7 + 8);
    v47 = (v7 + 40);
    v25 = v61;
    v52 = v7;
    v50 = v14;
    while (1)
    {
      v26 = *(v24 + 16);
      if (v23 == v26)
      {
        goto LABEL_4;
      }

      if (v23 >= v26)
      {
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
LABEL_33:
        __break(1u);
        break;
      }

      v56 = v3;
      v57 = v24;
      v53 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v27 = v24 + v53;
      v28 = *(v7 + 72);
      v58 = v23;
      v29 = *(v7 + 16);
      v54 = v27;
      v55 = v28 * v23;
      v29(v25, v27 + v28 * v23, v6);
      if (*(a2 + 16))
      {
        v30 = *(a2 + 40);
        sub_1C4498DE4(&qword_1EC0B90D0);
        v31 = sub_1C4F00FD8();
        v32 = a2;
        v33 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v34 = v31 & v33;
          a2 = v32;
          v25 = v61;
          if (((*(v59 + (((v31 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v33)) & 1) == 0)
          {
            break;
          }

          v29(v17, *(v32 + 48) + v34 * v28, v6);
          sub_1C4498DE4(&qword_1EC0B9D00);
          v35 = sub_1C4F010B8();
          v36 = *v60;
          (*v60)(v17, v6);
          v31 = v34 + 1;
          if (v35)
          {
            v25 = v61;
            result = v36(v61, v6);
            a2 = v32;
            v3 = v56;
            v24 = v57;
            v37 = v58;
            goto LABEL_24;
          }
        }
      }

      result = (*v60)(v25, v6);
      v38 = v56;
      v37 = v58;
      if (v56 == v58)
      {
        v24 = v57;
      }

      else
      {
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        v39 = *(v57 + 16);
        if (v56 >= v39)
        {
          goto LABEL_31;
        }

        v40 = v28 * v56;
        v41 = v54;
        v49 = v40;
        result = (v29)(v50, v54 + v40, v6);
        if (v58 >= v39)
        {
          goto LABEL_32;
        }

        v29(v51, v41 + v55, v6);
        v24 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348C0(v24);
          v24 = v45;
        }

        v42 = v24 + v53;
        v43 = *v47;
        result = (*v47)(v24 + v53 + v49, v51, v6);
        if (v58 >= *(v24 + 16))
        {
          goto LABEL_33;
        }

        result = v43(v42 + v55, v50, v6);
        v37 = v58;
        *v48 = v24;
        v25 = v61;
      }

      v44 = __OFADD__(v38, 1);
      v3 = v38 + 1;
      if (v44)
      {
        goto LABEL_29;
      }

LABEL_24:
      v44 = __OFADD__(v37, 1);
      v23 = v37 + 1;
      v7 = v52;
      if (v44)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4711B34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for CachedBehaviorFeaturizerProvider();
  v10 = &off_1F43E2F88;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_1C441D670(&v8, v6 + 40 * a1 + 32);
}

double sub_1C4711BA4()
{
  qword_1EDE2CD08 = 0;
  result = 0.0;
  xmmword_1EDE2CCE8 = 0u;
  unk_1EDE2CCF8 = 0u;
  return result;
}

uint64_t sub_1C4711BBC()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CD10);
  v1 = sub_1C442B738(v0, qword_1EDE2CD10);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C4711C38(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BBFC0, &qword_1C4F22E18);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v41 - v6 + 16;
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v9 = sub_1C43FBCE0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v41 - v12 + 16;
  if (Configuration.isECREnabled.getter())
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DCD8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_1C43FCED0();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "EntityResolutionXPC: starting...", v17, 2u);
      sub_1C43FBE2C();
    }

    if (qword_1EDDE5538 != -1)
    {
      sub_1C440D340();
    }

    v18 = sub_1C442B738(v8, qword_1EDE2CD10);
    sub_1C44098F0(a1, v13);
    v19 = type metadata accessor for Configuration();
    sub_1C440BAA8(v13, 0, 1, v19);
    swift_beginAccess();
    sub_1C44408D4(v13, v18, &unk_1EC0B9610, &unk_1C4F0F2E0);
    swift_endAccess();
    if (qword_1EDDFF2A0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C44E7FAC();
    v21 = qword_1EDDE5510;
    v22 = *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
    if (v21 != -1)
    {
      sub_1C4419470();
    }

    v23 = sub_1C4EFFB58();
    v24 = sub_1C4EFF7A8();
    sub_1C440BAA8(v7, 1, 1, v24);
    v25 = v22;
    v26 = sub_1C4EFFB48();
    v41[3] = v23;
    v41[4] = MEMORY[0x1E69A9B10];
    v41[0] = v26;
    swift_beginAccess();
    sub_1C44408D4(v41, &xmmword_1EDE2CCE8, &qword_1EC0BBF28, &qword_1C4F22D28);
    swift_endAccess();

    sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
    sub_1C4433C94();
    v31 = sub_1C49AA56C();
    v32 = qword_1EDE2CCD8;
    qword_1EDE2CCD8 = v31;
    v33 = v31;

    if (v33)
    {
      qword_1EDE2CCE0 = [objc_allocWithZone(type metadata accessor for EntityResolutionXPC.Delegate()) init];
      v34 = qword_1EDE2CCE0;
      swift_unknownObjectRelease();
      [v33 setDelegate_];

      [v33 resume];
    }

    else
    {
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CE8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = sub_1C43FCED0();
        sub_1C43FBD24(v37);
        sub_1C440BAE8(&dword_1C43F8000, v38, v39, "Failed to create EntityResolution XPC service");
        sub_1C43FE9D4();
      }
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DCD8);
    v40 = sub_1C4F00968();
    v28 = sub_1C4F01CF8();
    if (os_log_type_enabled(v40, v28))
    {
      v29 = sub_1C43FCED0();
      *v29 = 0;
      _os_log_impl(&dword_1C43F8000, v40, v28, "EntityResolution is not enabled.", v29, 2u);
      sub_1C43FBE2C();
    }

    v30 = v40;
  }
}

uint64_t sub_1C471220C()
{
  sub_1C4EFC798();
  result = sub_1C4EFC788();
  qword_1EDDE5530 = result;
  return result;
}

uint64_t EntityResolutionXPC.Server.warmup(for:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v0[15] = v2;
  v0[16] = ObjectType;
  v4 = sub_1C4F008B8();
  v0[17] = v4;
  sub_1C43FCF7C(v4);
  v0[18] = v5;
  v7 = *(v6 + 64);
  v0[19] = sub_1C43FE604();
  v0[20] = swift_task_alloc();
  v8 = sub_1C4F008F8();
  v0[21] = v8;
  sub_1C43FCF7C(v8);
  v0[22] = v9;
  v11 = *(v10 + 64);
  v0[23] = sub_1C43FE604();
  v0[24] = swift_task_alloc();
  v12 = sub_1C4F00978();
  v0[25] = v12;
  sub_1C43FCF7C(v12);
  v0[26] = v13;
  v15 = *(v14 + 64);
  v0[27] = sub_1C43FE604();
  v0[28] = swift_task_alloc();
  v16 = sub_1C4EFD618();
  v0[29] = v16;
  sub_1C43FCF7C(v16);
  v0[30] = v17;
  v19 = *(v18 + 64);
  v0[31] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1C47123FC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  sub_1C4F00188();
  v7 = sub_1C442FCD8();
  v8(v7);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v9 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v10 = *(v0 + 160);
    v11 = sub_1C43FCED0();
    sub_1C43FBD24(v11);
    v12 = sub_1C4F008A8();
    sub_1C4423684(&dword_1C43F8000, v13, v14, v12, "ECR.XPC.warmup", "");
    sub_1C43FE9D4();
  }

  v62 = *(v0 + 224);
  v15 = *(v0 + 208);
  v60 = *(v0 + 248);
  v61 = *(v0 + 200);
  v16 = *(v0 + 184);
  v59 = *(v0 + 192);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);

  v23 = sub_1C4409BFC();
  v24(v23, v20, v22);
  v25 = sub_1C4F00948();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1C442BA8C();
  v28 = sub_1C4425AA0();
  v29(v28, v59, v17);
  sub_1C447EFEC();
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v59, v17);
  (*(v15 + 8))(v62, v61);
  if (qword_1EDDE5510 != -1)
  {
    sub_1C4419470();
  }

  sub_1C43FD630();
  sub_1C4460108(&xmmword_1EDE2CCE8, v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
  if (*(v0 + 80))
  {
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    sub_1C441D670((v0 + 56), v0 + 16);
    v32 = swift_task_alloc();
    *(v0 + 256) = v32;
    v32[2] = v0 + 16;
    v32[3] = v31;
    v32[4] = v30;
    v33 = *(MEMORY[0x1E69E8920] + 4);
    v34 = swift_task_alloc();
    *(v0 + 264) = v34;
    *v34 = v0;
    v34[1] = sub_1C471280C;
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DE38](v35, v36, v37, v38, v39, v40, v32, v41);
  }

  else
  {
    sub_1C4420C3C(v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    v42 = sub_1C4EFF588();
    sub_1C4712ACC();
    sub_1C441C97C();
    swift_allocError();
    sub_1C440BC6C(v43, "Entity Resolution service is not available");
    v44 = *MEMORY[0x1E69A9938];
    (*(*(v42 - 8) + 104))();
    swift_willThrow();
    v46 = *(v0 + 240);
    v45 = *(v0 + 248);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v49 = *(v0 + 216);
    v51 = *(v0 + 184);
    v50 = *(v0 + 192);
    v53 = *(v0 + 152);
    v52 = *(v0 + 160);
    sub_1C4715778();
    v54 = *(v46 + 8);
    v55 = sub_1C4402B58();
    v56(v55);

    sub_1C43FBCF0();

    return v57(0);
  }
}

uint64_t sub_1C471280C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 272) = v0;

  if (!v0)
  {
    v9 = *(v3 + 256);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4712910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = *(v12 + 240);
  v13 = *(v12 + 248);
  v16 = *(v12 + 224);
  v15 = *(v12 + 232);
  v17 = *(v12 + 216);
  v19 = *(v12 + 184);
  v18 = *(v12 + 192);
  v21 = *(v12 + 152);
  v20 = *(v12 + 160);
  HIDWORD(a9) = *(v12 + 280);
  sub_1C440962C((v12 + 16));
  sub_1C4715778();
  (*(v14 + 8))(v13, v15);

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1C47129EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v13 = v12[32];

  sub_1C440962C(v12 + 2);
  v35 = v12[34];
  v15 = v12[30];
  v14 = v12[31];
  v17 = v12[28];
  v16 = v12[29];
  v18 = v12[27];
  v20 = v12[23];
  v19 = v12[24];
  v21 = v12[19];
  v22 = v12[20];
  sub_1C4715778();
  v23 = *(v15 + 8);
  v24 = sub_1C4402B58();
  v25(v24);

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

unint64_t sub_1C4712ACC()
{
  result = qword_1EC0BBF30;
  if (!qword_1EC0BBF30)
  {
    sub_1C4EFF588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BBF30);
  }

  return result;
}

uint64_t sub_1C4712B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  sub_1C442E860(a2, v15);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1C441D670(v15, v12 + 16);
  *(v12 + 56) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_1C4EFC778();
}

uint64_t sub_1C4712CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4712CF8, 0, 0);
}

uint64_t sub_1C4712CF8()
{
  sub_1C43FCF70();
  v1 = v0[3];
  v2 = v1[4];
  sub_1C4409678(v1, v1[3]);
  v3 = *(MEMORY[0x1E69A9C78] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1C4712DA4;
  v5 = sub_1C4418A30(v0[4]);

  return MEMORY[0x1EEE13D40](v5);
}

uint64_t sub_1C4712DA4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4712EA0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 40);
  *(v0 + 64) = 1;
  sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  sub_1C441C97C();
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4712F1C()
{
  sub_1C43FBCD4();
  v1 = v0[5];
  v0[2] = v0[7];
  sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C471301C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1C47130D8;

  return EntityResolutionXPC.Server.warmup(for:)();
}

uint64_t sub_1C47130D8()
{
  sub_1C43FEAEC();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = *(v5 + 32);
  v9 = *(v5 + 16);
  v10 = *v1;
  *v7 = *v1;

  sub_1C444B0DC();
  v12 = *(v11 + 24);
  if (v2)
  {
    v13 = sub_1C4EF9798();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v11 + 24), v4 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v14 = *(v10 + 8);

  return v14();
}

uint64_t EntityResolutionXPC.Server.submitQuery(_:)()
{
  sub_1C43FBCD4();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v0[33] = v2;
  v0[34] = ObjectType;
  v4 = sub_1C4F00908();
  v0[35] = v4;
  sub_1C43FCF7C(v4);
  v0[36] = v5;
  v7 = *(v6 + 64);
  v0[37] = sub_1C43FBE7C();
  v8 = sub_1C4F008B8();
  v0[38] = v8;
  sub_1C43FCF7C(v8);
  v0[39] = v9;
  v11 = *(v10 + 64);
  v0[40] = sub_1C43FE604();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v12 = sub_1C4F008F8();
  v0[43] = v12;
  sub_1C43FCF7C(v12);
  v0[44] = v13;
  v15 = *(v14 + 64);
  v0[45] = sub_1C43FE604();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v16 = sub_1C4F00978();
  v0[48] = v16;
  sub_1C43FCF7C(v16);
  v0[49] = v17;
  v19 = *(v18 + 64);
  v0[50] = sub_1C43FE604();
  v0[51] = swift_task_alloc();
  v20 = sub_1C4EFD618();
  v0[52] = v20;
  sub_1C43FCF7C(v20);
  v0[53] = v21;
  v23 = *(v22 + 64);
  v0[54] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1C4713478()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);
  v6 = *(v0 + 336);
  sub_1C4F00188();
  v7 = sub_1C442FCD8();
  v8(v7);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v9 = sub_1C4F008D8();
  v10 = sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v11 = *(v0 + 336);
    v12 = sub_1C43FCED0();
    sub_1C43FBD24(v12);
    v13 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, v9, v10, v13, "ECR.XPC.submitQuery", "", v3, 2u);
    sub_1C43FE9D4();
  }

  v57 = *(v0 + 408);
  v14 = *(v0 + 392);
  v55 = *(v0 + 432);
  v56 = *(v0 + 384);
  v15 = *(v0 + 368);
  v16 = *(v0 + 376);
  v17 = *(v0 + 352);
  v54 = *(v0 + 344);
  v18 = *(v0 + 328);
  v19 = *(v0 + 336);
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);

  v22 = sub_1C4409BFC();
  v23(v22, v19, v21);
  v24 = sub_1C4F00948();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1C442BA8C();
  v27 = sub_1C4425AA0();
  v28(v27, v16, v54);
  sub_1C447EFEC();
  v29 = *(v20 + 8);
  *(v0 + 440) = v29;
  *(v0 + 448) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v19, v21);
  v30 = *(v17 + 8);
  *(v0 + 456) = v30;
  *(v0 + 464) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v16, v54);
  (*(v14 + 8))(v57, v56);
  if (qword_1EDDE5510 != -1)
  {
    sub_1C4419470();
  }

  sub_1C43FD630();
  sub_1C4460108(&xmmword_1EDE2CCE8, v0 + 184, &qword_1EC0BBF28, &qword_1C4F22D28);
  if (!*(v0 + 208))
  {
    v44 = *(v0 + 424);
    v43 = *(v0 + 432);
    v45 = *(v0 + 416);
    sub_1C4420C3C(v0 + 184, &qword_1EC0BBF28, &qword_1C4F22D28);
    v46 = sub_1C4EFF588();
    sub_1C4712ACC();
    swift_allocError();
    sub_1C440BC6C(v47, "Entity Resolution service is not available");
    v48 = *MEMORY[0x1E69A9938];
    (*(*(v46 - 8) + 104))();
    swift_willThrow();
    (*(v44 + 8))(v43, v45);
    v49 = *(v0 + 432);
    sub_1C44170B0();
    v50 = *(v0 + 296);

    sub_1C43FBDA0();
    sub_1C4409BA4();

    __asm { BRAA            X1, X16 }
  }

  v58 = *(v0 + 264);
  sub_1C441D670((v0 + 184), v0 + 144);
  v31 = swift_task_alloc();
  *(v0 + 472) = v31;
  *(v31 + 16) = v0 + 144;
  *(v31 + 24) = v58;
  v32 = *(MEMORY[0x1E69E8920] + 4);
  v33 = swift_task_alloc();
  *(v0 + 480) = v33;
  sub_1C4461BB8(0, &qword_1EDDDB8C8, 0x1E69A9E90);
  *v33 = v0;
  v33[1] = sub_1C47138D0;
  sub_1C43FEAF8();
  sub_1C4409BA4();

  return MEMORY[0x1EEE6DE38](v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_1C47138D0()
{
  sub_1C43FCF70();
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *(v2 + 480);
  *v4 = *v1;
  *(v3 + 488) = v0;

  v6 = *(v2 + 472);

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C47139F8()
{
  v62 = v0;
  v1 = v0[54];
  v2 = v0[45];
  loga = v0[40];
  v3 = v0[31];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1C47145A8();
  v54 = v3;
  sub_1C4714538();
  sub_1C44239FC(v5);
  v6 = sub_1C440F54C();
  *(v6 + 16) = 2;
  v7 = sub_1C440F54C();
  *(v7 + 16) = 8;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C4714530;
  *(v8 + 24) = v4;
  v9 = sub_1C440F54C();
  *(v9 + 16) = 32;
  v10 = sub_1C440F54C();
  *(v10 + 16) = 8;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v6;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v7;
  *(inited + 64) = sub_1C4716C58;
  *(inited + 72) = v8;
  *(inited + 80) = sub_1C44549F4;
  *(inited + 88) = v9;
  *(inited + 96) = sub_1C44549F4;
  *(inited + 104) = v10;
  *(inited + 112) = sub_1C4454CCC;
  *(inited + 120) = 0;
  sub_1C4EFD5C8();
  v12 = sub_1C4EFD5F8();
  v14 = v13;
  sub_1C4EFD608();
  v15 = sub_1C4F008D8();
  sub_1C4F00928();
  v16 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v14)
  {
    if (HIDWORD(v12))
    {
      __break(1u);
    }

    else
    {
      if ((v12 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      if (v12 >> 16 <= 0x10)
      {
        v12 = (v0 + 32);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
LABEL_10:
    log = v15;
    v25 = v0[36];
    v24 = v0[37];
    v26 = v0[35];

    sub_1C4F00958();

    if ((*(v25 + 88))(v24, v26) == *MEMORY[0x1E69E93E8])
    {
      v27 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[36] + 8))(v0[37], v0[35]);
      format = "entity_count=%{signpost.telemetry:number1,public}ld %s";
      v27 = 2;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = 0;
    v60 = 0;
    v61 = v29;
    *v28 = v27;
    v28[1] = v27;
    v59 = v28 + 2;
    while (v30 != 96)
    {
      v32 = *(inited + v30 + 32);
      v31 = *(inited + v30 + 40);

      v32(&v59, &v60, &v61);

      v30 += 16;
    }

    v44 = v0[56];
    v45 = v0[57];
    v43 = v0[55];
    v49 = v0[58];
    v51 = v0[54];
    v33 = v16;
    v34 = v12;
    v35 = v0[53];
    v47 = v0[52];
    v42 = v0[45];
    v36 = v0[43];
    v37 = v0[40];
    v38 = v0[38];

    v39 = sub_1C4F008A8();
    _os_signpost_emit_with_name_impl(&dword_1C43F8000, log, v33, v39, v34, format, v28, 0x16u);
    sub_1C440962C(v29);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v43(v37, v38);
    v45(v42, v36);
    (*(v35 + 8))(v51, v47);
    goto LABEL_17;
  }

  __break(1u);
LABEL_5:
  v18 = v0[55];
  v46 = v0[56];
  v48 = v0[57];
  v19 = v0[53];
  logb = v0[54];
  v50 = v0[52];
  formata = v0[58];
  v20 = v0[45];
  v21 = v0[43];
  v22 = v0[40];
  v23 = v0[38];

  v18(v22, v23);
  v48(v20, v21);
  (*(v19 + 8))(logb, v50);
LABEL_17:
  v40 = v0[54];
  sub_1C44170B0();
  logc = v0[37];
  sub_1C440962C(v0 + 18);

  sub_1C43FBCF0();

  return v41(v54);
}

uint64_t sub_1C4713F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  (*(v12[53] + 8))(v12[54], v12[52]);
  sub_1C440962C(v12 + 18);
  v24 = v12[61];
  v13 = v12[54];
  sub_1C44170B0();
  v14 = v12[37];

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_1C4714020(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  sub_1C442E860(a2, v16);
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1C441D670(v16, v12 + 16);
  *(v12 + 56) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = a3;
  sub_1C4EFC778();
}

uint64_t sub_1C47141D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C47141F8, 0, 0);
}

uint64_t sub_1C47141F8()
{
  sub_1C43FCF70();
  v1 = v0[4];
  v2 = v1[4];
  sub_1C4409678(v1, v1[3]);
  v3 = *(MEMORY[0x1E69A9C70] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C47142A4;
  v5 = sub_1C4418A30(v0[5]);

  return MEMORY[0x1EEE13D38](v5);
}

uint64_t sub_1C47142A4()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C47143B4()
{
  sub_1C43FBCD4();
  v1 = v0[6];
  v0[3] = v0[9];
  sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  sub_1C441C97C();
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4714430()
{
  sub_1C43FBCD4();
  v1 = v0[6];
  v0[2] = v0[8];
  sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C47144AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 rankedResults];
  sub_1C4461BB8(0, &qword_1EDDDBAB8, 0x1E69A9EE0);
  sub_1C4F01678();

  v4 = sub_1C4428DA0();

  *a2 = v4;
  return result;
}

unint64_t sub_1C47145A8()
{
  result = qword_1EDDDBDA0;
  if (!qword_1EDDDBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDA0);
  }

  return result;
}

uint64_t sub_1C471461C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C47146E0;

  return EntityResolutionXPC.Server.submitQuery(_:)();
}

uint64_t sub_1C47146E0()
{
  sub_1C43FEAEC();
  sub_1C4408958();
  v4 = v3[5];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;

  sub_1C444B0DC();
  v10 = *(v9 + 32);
  if (v0)
  {
    sub_1C4EF9798();

    v11 = sub_1C4413080();
    v12(v11, 0, v1);

    _Block_release(v10);
  }

  else
  {
    v13 = sub_1C4413080();
    v14(v13, v1, 0);
    _Block_release(v10);
  }

  sub_1C441B890();

  return v15();
}

uint64_t EntityResolutionXPC.Server.submitCollectionQuery(_:)()
{
  sub_1C43FBCD4();
  *(v0 + 24) = swift_getObjectType();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C47148C4()
{
  sub_1C43FCF70();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_1C4461BB8(0, &qword_1EC0BBF40, 0x1E69A9E78);
  *v4 = v0;
  v4[1] = sub_1C47149C8;
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, 0xD000000000000019, v8, v9, v2, v10);
}

uint64_t sub_1C47149C8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4714ACC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 32);

  sub_1C43FBDA0();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1C4714B28(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BBFD8, &qword_1C4F22E38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1C4EFC778();
}

uint64_t sub_1C4714CBC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);
  sub_1C4461BB8(0, &qword_1EC0BBF40, 0x1E69A9E78);
  *(v0 + 16) = sub_1C4714D64();
  sub_1C456902C(&qword_1EC0BBFD8, &qword_1C4F22E38);
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v2();
}

id sub_1C4714D64()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C4461BB8(0, &unk_1EC0BBFE0, 0x1E69A9E70);
  v1 = sub_1C4F01658();

  v2 = [v0 initWithCandidates_];

  return v2;
}

uint64_t sub_1C4714E0C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C4717374;

  return EntityResolutionXPC.Server.submitCollectionQuery(_:)();
}

uint64_t EntityResolutionXPC.Server.generateMentions(forQuery:)()
{
  sub_1C43FCF70();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v0[17] = v2;
  v0[18] = ObjectType;
  v0[16] = v4;
  v6 = sub_1C4F008B8();
  v0[19] = v6;
  sub_1C43FCF7C(v6);
  v0[20] = v7;
  v9 = *(v8 + 64);
  v0[21] = sub_1C43FE604();
  v0[22] = swift_task_alloc();
  v10 = sub_1C4F008F8();
  v0[23] = v10;
  sub_1C43FCF7C(v10);
  v0[24] = v11;
  v13 = *(v12 + 64);
  v0[25] = sub_1C43FE604();
  v0[26] = swift_task_alloc();
  v14 = sub_1C4F00978();
  v0[27] = v14;
  sub_1C43FCF7C(v14);
  v0[28] = v15;
  v17 = *(v16 + 64);
  v0[29] = sub_1C43FE604();
  v0[30] = swift_task_alloc();
  v18 = sub_1C4EFD618();
  v0[31] = v18;
  sub_1C43FCF7C(v18);
  v0[32] = v19;
  v21 = *(v20 + 64);
  v0[33] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C4715094()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 176);
  sub_1C4F00188();
  v7 = sub_1C442FCD8();
  v8(v7);
  sub_1C4F008C8();
  sub_1C4F008D8();
  sub_1C4F00898();
  v9 = sub_1C4F008D8();
  sub_1C4F01E28();
  if (sub_1C4F01F28())
  {
    v10 = *(v0 + 176);
    v11 = sub_1C43FCED0();
    sub_1C43FBD24(v11);
    v12 = sub_1C4F008A8();
    sub_1C4423684(&dword_1C43F8000, v13, v14, v12, "ECR.XPC.generateMentions", "");
    sub_1C43FE9D4();
  }

  v63 = *(v0 + 240);
  v15 = *(v0 + 224);
  v61 = *(v0 + 264);
  v62 = *(v0 + 216);
  v16 = *(v0 + 200);
  v60 = *(v0 + 208);
  v17 = *(v0 + 184);
  v18 = *(v0 + 192);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v22 = *(v0 + 152);
  v21 = *(v0 + 160);

  v23 = sub_1C4409BFC();
  v24(v23, v20, v22);
  v25 = sub_1C4F00948();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1C442BA8C();
  v28 = sub_1C4425AA0();
  v29(v28, v60, v17);
  sub_1C447EFEC();
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v60, v17);
  (*(v15 + 8))(v63, v62);
  if (qword_1EDDE5510 != -1)
  {
    sub_1C4419470();
  }

  sub_1C43FD630();
  sub_1C4460108(&xmmword_1EDE2CCE8, v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
  if (!*(v0 + 80))
  {
    sub_1C4420C3C(v0 + 56, &qword_1EC0BBF28, &qword_1C4F22D28);
    v43 = sub_1C4EFF588();
    sub_1C4712ACC();
    sub_1C441C97C();
    swift_allocError();
    *v44 = 0xD00000000000002ALL;
    v44[1] = 0x80000001C4F94AC0;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x1E69A9938], v43);
    swift_willThrow();
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);
    v48 = *(v0 + 240);
    v47 = *(v0 + 248);
    v49 = *(v0 + 232);
    v51 = *(v0 + 200);
    v50 = *(v0 + 208);
    v53 = *(v0 + 168);
    v52 = *(v0 + 176);
    sub_1C4715778();
    v54 = *(v46 + 8);
    v55 = sub_1C4402B58();
    v56(v55);

    sub_1C43FBDA0();
    sub_1C4409BA4();

    __asm { BRAA            X1, X16 }
  }

  v30 = *(v0 + 128);
  v64 = *(v0 + 136);
  sub_1C441D670((v0 + 56), v0 + 16);
  v31 = swift_task_alloc();
  *(v0 + 272) = v31;
  *(v31 + 16) = v0 + 16;
  *(v31 + 24) = v30;
  *(v31 + 32) = v64;
  v32 = *(MEMORY[0x1E69E8920] + 4);
  v33 = swift_task_alloc();
  *(v0 + 280) = v33;
  sub_1C4461BB8(0, &unk_1EC0BBF48, 0x1E69A9EC8);
  *v33 = v0;
  v33[1] = sub_1C47154BC;
  sub_1C43FEAF8();
  sub_1C4409BA4();

  return MEMORY[0x1EEE6DE38](v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_1C47154BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v9 = *(v3 + 272);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C47155C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = v12[32];
  v13 = v12[33];
  v16 = v12[30];
  v15 = v12[31];
  v17 = v12[29];
  v19 = v12[25];
  v18 = v12[26];
  v21 = v12[21];
  v20 = v12[22];
  v31 = v12[15];
  sub_1C440962C(v12 + 2);
  sub_1C4715778();
  (*(v14 + 8))(v13, v15);

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, a10, a11, a12);
}

uint64_t sub_1C471569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v13 = v12[34];

  sub_1C440962C(v12 + 2);
  v35 = v12[36];
  v15 = v12[32];
  v14 = v12[33];
  v17 = v12[30];
  v16 = v12[31];
  v18 = v12[29];
  v20 = v12[25];
  v19 = v12[26];
  v21 = v12[21];
  v22 = v12[22];
  sub_1C4715778();
  v23 = *(v15 + 8);
  v24 = sub_1C4402B58();
  v25(v24);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_1C4715778()
{
  v38 = sub_1C4F00908();
  v0 = sub_1C43FCDF8(v38);
  v41 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v40 = v5 - v4;
  v6 = sub_1C4F008B8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4F008F8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = v22 - v21;
  sub_1C4EFD5C8();
  v39 = sub_1C4EFD5F8();
  v25 = v24;
  sub_1C4EFD608();
  v26 = sub_1C4F008D8();
  sub_1C4F00928();
  v37 = sub_1C4F01E18();
  result = sub_1C4F01F28();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v14, v6);
    return (*(v18 + 8))(v23, v15);
  }

  v35 = v9;
  v36 = v6;
  if ((v25 & 1) == 0)
  {
    v29 = v40;
    v28 = v41;
    v30 = v39;
    if (v39)
    {
      v31 = v38;
LABEL_9:

      sub_1C4F00958();

      if ((*(v28 + 88))(v29, v31) == *MEMORY[0x1E69E93E8])
      {
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 8))(v29, v31);
        v32 = "";
      }

      v33 = sub_1C43FCED0();
      *v33 = 0;
      v34 = sub_1C4F008A8();
      _os_signpost_emit_with_name_impl(&dword_1C43F8000, v26, v37, v34, v30, v32, v33, 2u);
      sub_1C43FBE2C();
      v9 = v35;
      v6 = v36;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  v29 = v40;
  v28 = v41;
  if (HIDWORD(v39))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v39 & 0xFFFFF800) != 0xD800)
  {
    v31 = v38;
    if (v39 >> 16 <= 0x10)
    {
      v30 = &v42;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C4715AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&qword_1EC0BBFD0, &qword_1C4F22E20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  if (qword_1EDDE5520 != -1)
  {
    swift_once();
  }

  sub_1C442E860(a2, v17);
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_1C441D670(v17, v14 + 16);
  *(v14 + 56) = a3;
  *(v14 + 64) = a4;
  (*(v9 + 32))(v14 + v13, v12, v8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFC778();
}

uint64_t sub_1C4715C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4715C7C, 0, 0);
}

uint64_t sub_1C4715C7C()
{
  sub_1C43FEAEC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C43FBC98();
  v5 = sub_1C4EFFFC8();
  v6 = v0[6];
  v0[2] = v5;
  sub_1C456902C(&qword_1EC0BBFD0, &qword_1C4F22E20);
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4715D80(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  sub_1C443FBD0();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_1C43FBC98();

  return sub_1C446D134(v10, v11);
}

uint64_t sub_1C4715DF8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1C4715ECC;

  return EntityResolutionXPC.Server.generateMentions(forQuery:)();
}

uint64_t sub_1C4715ECC()
{
  sub_1C43FEAEC();
  sub_1C4408958();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;

  sub_1C444B0DC();
  v10 = *(v9 + 24);
  if (v0)
  {
    sub_1C4EF9798();

    v11 = sub_1C4413080();
    v12(v11, 0, v1);

    _Block_release(v10);
  }

  else
  {
    v13 = sub_1C4413080();
    v14(v13, v1, 0);
    _Block_release(v10);
  }

  sub_1C441B890();

  return v15();
}

uint64_t EntityResolutionXPC.Server.requestAssetDownload(forAssetType:localeIdentifier:)()
{
  sub_1C43FBCD4();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  v0[6] = sub_1C43FBE7C();
  v8 = sub_1C4EF9E48();
  v0[7] = v8;
  sub_1C43FCF7C(v8);
  v0[8] = v9;
  v11 = *(v10 + 64);
  v0[9] = sub_1C43FBE7C();
  v12 = sub_1C456902C(&qword_1EC0BBF58, &unk_1C4F22D60);
  v0[10] = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  v0[11] = sub_1C43FE604();
  v0[12] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C4716164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v14 = v12[2];
  v13 = v12[3];
  if (sub_1C4EFF178() == v14 && v15 == v13)
  {
  }

  else
  {
    v17 = v12[2];
    v18 = v12[3];
    v19 = sub_1C4F02938();

    if ((v19 & 1) == 0)
    {
      v20 = v12[6];
      v21 = sub_1C4EF98F8();
      sub_1C440BAA8(v20, 1, 1, v21);
      v22 = objc_allocWithZone(MEMORY[0x1E69A9E68]);
      sub_1C4716B9C(v20, 0);
      goto LABEL_9;
    }
  }

  v24 = v12[11];
  v23 = v12[12];
  v25 = v12[9];
  v26 = v12[10];
  v27 = v12[7];
  v28 = v12[8];
  v30 = v12[4];
  v29 = v12[5];
  v31 = *(v26 + 48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9D48();
  LOBYTE(v29) = sub_1C4EFF188();
  (*(v28 + 8))(v25, v27);
  *v23 = v29 & 1;
  v32 = sub_1C43FBC98();
  sub_1C4460108(v32, v33, &qword_1EC0BBF58, &unk_1C4F22D60);
  v34 = *(v26 + 48);
  v35 = objc_allocWithZone(MEMORY[0x1E69A9E68]);
  sub_1C4716B9C(v24 + v34, v29 & 1);
  v36 = sub_1C4406834();
  sub_1C4420C3C(v36, &qword_1EC0BBF58, &unk_1C4F22D60);
LABEL_9:
  v38 = v12[11];
  v37 = v12[12];
  v39 = v12[9];
  v40 = v12[6];

  sub_1C43FBCF0();
  sub_1C43FEA3C();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1C47163BC(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[4] = v6;
  sub_1C4F01138();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1C47164B4;

  return EntityResolutionXPC.Server.requestAssetDownload(forAssetType:localeIdentifier:)();
}

uint64_t sub_1C47164B4()
{
  sub_1C4408958();
  v4 = v3[6];
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v2;
  sub_1C43FBDAC();
  *v9 = v8;

  sub_1C444B0DC();
  v11 = *(v10 + 24);
  if (v0)
  {
    sub_1C4EF9798();

    v12 = sub_1C4413080();
    v13(v12, 0, v1);

    _Block_release(v11);
  }

  else
  {
    v14 = sub_1C4413080();
    v15(v14, v1, 0);
    _Block_release(v11);
  }

  sub_1C441B890();

  return v16();
}

id EntityResolutionXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C47166A0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  if (qword_1EDDE5538 != -1)
  {
    sub_1C440D340();
  }

  v9 = sub_1C442B738(v3, qword_1EDE2CD10);
  swift_beginAccess();
  sub_1C4460108(v9, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v10 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = &v8[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_1C4467948(v8);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v13) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v14) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        sub_1C43FBD24(v23);
        sub_1C440BAE8(&dword_1C43F8000, v24, v25, "EntityResolutionXPC: service is in no-op mode.");
        sub_1C43FE9D4();
      }
    }

    else
    {
      sub_1C4433C94();
      if (sub_1C446874C())
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for EntityResolutionXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v31 = sub_1C4716A04;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43EA040;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v31 = sub_1C4716A24;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43EA068;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C4716A44(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FE9D4();
  }
}

id sub_1C4716B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C4EF98F8();
  v7 = 0;
  if (sub_1C44157D4(a1, 1, v6) != 1)
  {
    v7 = sub_1C4EF9868();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithURL:v7 isEmbedded:a2 & 1];

  return v8;
}

uint64_t sub_1C4716CE0()
{
  sub_1C43FEAEC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v6[1] = sub_1C442F080;
  v8 = sub_1C4402B58();

  return v9(v8);
}

uint64_t sub_1C4716D94()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4716E24()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4716EB4()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1C443FBD0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4716EF4()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4716F84()
{
  sub_1C43FCF70();
  sub_1C440224C();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E174(v1);

  return v4(v3);
}

uint64_t sub_1C4717014()
{
  sub_1C43FCF70();
  v1 = sub_1C456902C(&qword_1EC0BBFD0, &qword_1C4F22E20);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = swift_task_alloc();
  v7 = sub_1C43FC218(v6);
  *v7 = v8;
  v7[1] = sub_1C442F080;

  return sub_1C4715C58(v0 + 16, v4, v5, v0 + v3);
}

uint64_t sub_1C47170F8()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&qword_1EC0BBFD8, &qword_1C4F22E38);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v5[1] = sub_1C442F080;

  return sub_1C4714C9C(v0 + v3);
}

uint64_t sub_1C47171C4()
{
  sub_1C43FCF70();
  v1 = sub_1C456902C(&qword_1EC0BBFF0, &qword_1C4F22E50);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v8 = sub_1C444FD20(v6);

  return sub_1C47141D4(v8, v9, v10);
}

uint64_t sub_1C4717294()
{
  sub_1C43FCF70();
  v1 = sub_1C456902C(&qword_1EC0BBFF8, &qword_1C4F22E68);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v8 = sub_1C444FD20(v6);

  return sub_1C4712CD4(v8, v9, v10);
}

uint64_t sub_1C47173A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C4EFB0B8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4EFB058();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1C4EFBFC8();
  return (*(v12 + 8))(v16, v9);
}

uint64_t sub_1C47174C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a1;
  v6 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ViewDatabaseArtifact.Property();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a5 + 16);
  if (v20)
  {
    v31 = *(v16 + 20);
    v21 = a5 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v17 + 72);
    do
    {
      sub_1C443CCBC(v21, v19);
      v23 = *v19;
      v24 = *(v19 + 1);
      v25 = sub_1C4EFBE38();
      (*(*(v25 - 8) + 16))(v9, &v19[v31], v25);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C469C410(v19);
      sub_1C440BAA8(v9, 0, 1, v25);
      sub_1C4EFB498();

      sub_1C4423A0C(v9, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v26 = sub_1C4EFBF38();
      sub_1C440BAA8(v13, 1, 1, v26);
      sub_1C4EFB538();

      sub_1C4423A0C(v13, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  v27 = *MEMORY[0x1E69A00D0];
  v28 = sub_1C4EFBF38();
  (*(*(v28 - 8) + 104))(v13, v27, v28);
  sub_1C440BAA8(v13, 0, 1, v28);
  sub_1C4EFB478();
  return sub_1C4423A0C(v13, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C47177DC()
{
  v0 = sub_1C4F025D8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4717854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C47177DC();
  *a2 = result;
  return result;
}

uint64_t sub_1C4717884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46DD0DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C47178B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C47177DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C47178D8(uint64_t a1)
{
  v2 = sub_1C4717D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4717914(uint64_t a1)
{
  v2 = sub_1C4717D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4717950(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BC000, &unk_1C4F22F90);
  v4 = sub_1C43FCDF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4717D88();
  sub_1C4F02BC8();
  if (!v1)
  {
    v7 = sub_1C4F02678();
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CA2C(&qword_1EDDFEA60, &qword_1EDDFF060);
    sub_1C4F026C8();
    v9 = sub_1C44069E0();
    v10(v9);
  }

  sub_1C440962C(a1);
  return v7;
}

uint64_t sub_1C4717B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = sub_1C456902C(&qword_1EC0BC008, &qword_1C4F22FA0);
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4717D88();
  sub_1C4F02BF8();
  v18 = 0;
  sub_1C4F02798();
  if (!v4)
  {
    v16[1] = v16[0];
    v17 = 1;
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C443CA2C(&qword_1EDDDBC60, &qword_1EDDE3FF8);
    sub_1C4F027E8();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1C4717D38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4717950(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C4717D88()
{
  result = qword_1EDDFAB78[0];
  if (!qword_1EDDFAB78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFAB78);
  }

  return result;
}

uint64_t sub_1C4717DDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ViewDatabaseArtifact.Property();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1C4717E20(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4717EFC()
{
  result = qword_1EC0BC010;
  if (!qword_1EC0BC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC010);
  }

  return result;
}

unint64_t sub_1C4717F54()
{
  result = qword_1EDDFAB68;
  if (!qword_1EDDFAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAB68);
  }

  return result;
}

unint64_t sub_1C4717FAC()
{
  result = qword_1EDDFAB70;
  if (!qword_1EDDFAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAB70);
  }

  return result;
}

void sub_1C4718020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22 = sub_1C47782B8();
  v23 = sub_1C4428DA0();
  if (v23)
  {
    v24 = v23;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    if (v24 < 0)
    {
      __break(1u);
      return;
    }

    v25 = 0;
    v26 = v43;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1C6940F90](v25, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v27 featureName];
      v30 = sub_1C4F01138();
      v32 = v31;

      v34 = *(v43 + 16);
      v33 = *(v43 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C43FCFE8(v33);
        sub_1C44CD9C0();
      }

      ++v25;
      *(v43 + 16) = v34 + 1;
      v35 = v43 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
    }

    while (v24 != v25);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v26, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_1C4718178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v129 = v20;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  v32 = v31;
  sub_1C43FBE44();
  v33 = sub_1C4EFDE88();
  v34 = sub_1C43FCDF8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v121 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v42 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v45 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v48 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v124 = v50;
  sub_1C43FBE44();
  v51 = sub_1C4EFDE68();
  v52 = sub_1C43FBD18(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD2D8();
  v123 = v55;
  sub_1C43FBE44();
  v122 = sub_1C4EFDE98();
  v56 = sub_1C43FCDF8(v122);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD2D8();
  v62 = v61;
  v63 = sub_1C456902C(&qword_1EC0B89C8, &unk_1C4F23170);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  v125 = v67;
  v130 = MEMORY[0x1E69E7CC0];
  v131 = MEMORY[0x1E69E7CC0];
  v68 = *(v26 + 16);
  if (v68)
  {
    v119 = v125 + *(v65 + 48);
    v118 = *(v129 + 16);
    v69 = v26 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v117 = *(v66 + 72);
    v116 = *MEMORY[0x1E69A95C0];
    v114 = (v36 + 8);
    v115 = (v36 + 104);
    v113 = (v58 + 8);
    v112 = xmmword_1C4F0D130;
    v111[1] = v62;
    v120 = v24;
    v111[0] = v32;
    do
    {
      v128 = v68;
      v129 = v69;
      v70 = v125;
      sub_1C445FFF0(v69, v125, &qword_1EC0B89C8, &unk_1C4F23170);
      v71 = *v70;
      v126 = v70[1];
      v127 = v71;
      sub_1C456902C(&qword_1EC0B8ED0, &unk_1C4F377B0);
      v72 = v48;
      v73 = v45;
      v74 = v42;
      v75 = sub_1C4EFF8A8();
      sub_1C43FCDF8(v75);
      v77 = v76;
      v79 = *(v78 + 72);
      v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v81 = swift_allocObject();
      *(v81 + 16) = v112;
      v82 = v121;
      (*(v77 + 32))(v81 + v80, v119, v75);
      sub_1C4D51DB8();
      v84 = v83;
      v85 = *v115;
      sub_1C442B8EC();
      v85(v86, v87);
      sub_1C442B8EC();
      v85(v88, v89);
      sub_1C442B8EC();
      v85(v90, v91);
      sub_1C442B8EC();
      v85(v92, v93);
      sub_1C442B8EC();
      v85(v94, v95);
      v109 = v82;
      v110 = 0;
      v108 = v84;
      sub_1C43FEAF8();
      sub_1C44623AC();
      v96 = v120;

      v97 = v114;
      v98 = *v114;
      v99 = sub_1C440CAF0();
      v98(v99);
      v42 = v74;
      v100 = sub_1C4404BCC();
      v98(v100);
      v45 = v73;
      (v98)(v73, v33);
      v48 = v72;
      (v98)(v72, v33);
      v101 = sub_1C440A6C4();
      v98(v101);
      sub_1C441B388(&a18);
      sub_1C4EFDEA8();
      sub_1C4EFD678();
      sub_1C4422A7C(&a17);
      sub_1C43FCF64();
      v106 = sub_1C440BAA8(v102, v103, v104, v105);
      MEMORY[0x1EEE9AC00](v106);
      v107 = v126;
      v111[-6] = v127;
      v111[-5] = v107;
      v108 = v96;
      v109 = &v130;
      v110 = &v131;
      sub_1C48687D0(v97, v98, sub_1C47238B0, &v111[-8]);

      sub_1C4420C3C(v98, &unk_1EC0C07E0, &unk_1C4F168F0);
      (*v113)(v97, v122);
      v69 = v129 + v117;
      v68 = v128 - 1;
    }

    while (v128 != 1);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C471875C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v34 = a6;
  v11 = sub_1C4EFEEF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GraphTriple(0);
  v17 = *(v16 + 28);
  sub_1C4EFE4E8();
  sub_1C450229C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
  LOBYTE(v17) = sub_1C4F010B8();
  (*(v12 + 8))(v15, v11);
  if (v17)
  {
    v37 = a2;
    v38 = a3;
    v35 = 64;
    v36 = 0xE100000000000000;
    sub_1C4415EA8();
    v18 = sub_1C4F01FC8();
    v19 = sub_1C4A3E184(v18);
    v21 = v20;

    if (v21)
    {
      v22 = (a1 + *(v16 + 32));
      v23 = *v22;
      v24 = v22[1];
      v25 = *MEMORY[0x1E695CBD8];
      if (v23 == sub_1C4F01138() && v24 == v26)
      {
      }

      else
      {
        v28 = sub_1C4F02938();

        if ((v28 & 1) == 0)
        {
LABEL_13:
          sub_1C4588BAC();
          v29 = *(*a5 + 16);
          sub_1C45897E8();
          v30 = *a5;
          *(v30 + 16) = v29 + 1;
          v31 = v30 + 16 * v29;
          *(v31 + 32) = v19;
          *(v31 + 40) = v21;
          return 1;
        }
      }

      if (!sub_1C4499AD0(v19, v21, a4))
      {
        v37 = v19;
        v38 = v21;
        v35 = 1969513774;
        v36 = 0xE400000000000000;
        if ((sub_1C4F02048() & 1) == 0)
        {
          a5 = v34;
        }
      }

      goto LABEL_13;
    }
  }

  return 1;
}

uint64_t sub_1C4718CD0()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF98F8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v12 = sub_1C4F01E88();
  v13 = sub_1C4486838(0x73657361696C61, 0xE700000000000000, 25188, 0xE200000000000000, v12);

  if (!v13)
  {
    __break(1u);
  }

  sub_1C4EF98C8();

  (*(v3 + 32))(v11, v8, v0);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_1C4EF9868();
  v16 = sub_1C4EF9868();
  v27[0] = 0;
  v17 = [v14 copyItemAtURL:v15 toURL:v16 error:v27];

  if (v17)
  {
    v18 = *(v3 + 8);
    v19 = v27[0];
    v20 = sub_1C43FE99C();
    result = v18(v20);
  }

  else
  {
    v22 = v27[0];
    sub_1C4EF97A8();

    swift_willThrow();
    v23 = *(v3 + 8);
    v24 = sub_1C43FE99C();
    result = v25(v24);
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C4718F1C()
{
  sub_1C43FBD3C();
  v39 = v0;
  v40 = v1;
  v2 = sub_1C4EFC018();
  v3 = sub_1C43FCDF8(v2);
  v43 = v4;
  v44 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v9 = (v8 - v7);
  v10 = sub_1C4F00D88();
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v41 = v14;
  sub_1C43FBE44();
  v15 = sub_1C4EFB148();
  v16 = sub_1C43FCDF8(v15);
  v45 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v42 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38[-v22];
  v24 = [objc_opt_self() defaultManager];
  sub_1C4EF98E8();
  v25 = sub_1C4F01108();

  v26 = [v24 fileExistsAtPath_];

  if ((v26 & 1) == 0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDDFECB8);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CC8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C43F8000, v28, v29, "EntityTaggingFactsFeaturizer: Performing one-time copy of relationship alias database.", v30, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C4718CD0();
  }

  sub_1C4EFB138();
  sub_1C4EF98E8();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v9 = 0x404E000000000000;
  (*(v43 + 104))(v9, *MEMORY[0x1E69A00D8], v44);
  sub_1C4EFB118();
  sub_1C4EF98E8();
  (*(v45 + 16))(v42, v23, v15);
  v31 = sub_1C4EFB218();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_1C4EFB1F8();
  MEMORY[0x1EEE9AC00](v34);
  v35 = v40;
  *&v38[-16] = v39;
  *&v38[-8] = v35;
  sub_1C456902C(&qword_1EC0BC028, &unk_1C4F231B0);
  sub_1C4EFB208();
  v36 = sub_1C4433CA8();
  v37(v36);

  sub_1C43FE9F0();
}

uint64_t sub_1C4719588@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_1C4F02248();

  *&v30 = 0xD00000000000002CLL;
  *(&v30 + 1) = 0x80000001C4F94F50;
  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4EFB758();
  sub_1C4EFBBB8();
  if (v3)
  {

    (*(v7 + 8))(v10, v6);
    return sub_1C4420C3C(&v30, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  (*(v7 + 8))(v10, v6);
  sub_1C4420C3C(&v30, &unk_1EC0BC770, &qword_1C4F10DC0);
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC8];
  v12 = v33;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!sub_1C4458EE8())
        {

          result = sub_1C44239FC(v26);
          *v12 = v27;
          return result;
        }

        sub_1C4EFBC68();
        if (*(&v31 + 1))
        {
          break;
        }

LABEL_12:

        sub_1C4420C3C(&v30, &qword_1EC0B9038, &unk_1C4F231C0);
      }

      sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_10;
      }

      v13 = v29;
      v33 = v28;
      sub_1C4EFBC68();
      if (!*(&v31 + 1))
      {

        goto LABEL_12;
      }

      if (swift_dynamicCast())
      {
        break;
      }

LABEL_10:
    }

    v24 = v29;
    v25 = v28;
    sub_1C44239FC(v26);
    v14 = v27;
    v23[3] = swift_isUniquelyReferenced_nonNull_native();
    *&v30 = v14;
    v26 = sub_1C445FAA8(v33, v13);
    v15 = *(v14 + 16);
    LODWORD(v27) = v16;
    if (__OFADD__(v15, (v16 & 1) == 0))
    {
      break;
    }

    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    v17 = sub_1C4F02458();
    v18 = v30;
    if (v17)
    {
      v26 = sub_1C445FAA8(v33, v13);
      v20 = v27;
      if ((v27 & 1) != (v19 & 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = v27;
    }

    v21 = v26;
    if (v20)
    {
    }

    else
    {
      sub_1C44686DC(v26, v33, v13, MEMORY[0x1E69E7CD0], v18);
    }

    v27 = v18;
    v22 = *(v18 + 56) + 8 * v21;
    sub_1C44869B4(&v30, v25, v24);

    v26 = sub_1C455B6CC;
  }

  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4719A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v28 = sub_1C43FD2C8(v27);
  v29 = type metadata accessor for GraphTriple(v28);
  v30 = sub_1C43FCF7C(v29);
  v217 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v34);
  v35 = sub_1C4EFF0C8();
  v36 = sub_1C43FCDF8(v35);
  v248 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v218 = v42;
  v43 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBD18(v43);
  v45 = *(v44 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v246 = v47;
  sub_1C43FBE44();
  v48 = sub_1C4EFDE88();
  v49 = sub_1C43FCDF8(v48);
  v51 = v50;
  v243 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v240 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  v239 = v56;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v210 - v60;
  v62 = sub_1C4EFD548();
  v63 = sub_1C43FCDF8(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  v68 = sub_1C4EFDE68();
  v69 = sub_1C43FBD18(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v72);
  v238 = sub_1C4EFDE98();
  v73 = sub_1C43FCDF8(v238);
  v242 = v74;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FD2D8();
  v235 = v77;
  v78 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v79 = sub_1C43FBD18(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v83);
  v241 = (&v210 - v84);
  sub_1C43FCF64();
  v247 = v35;
  sub_1C440BAA8(v85, v86, v87, v35);
  v251 = MEMORY[0x1E69E7CC0];
  v234 = *(v20 + 16);
  v88 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v89 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v89);
  v92 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v93 = v92 + *(v90 + 72);
  v227 = *(v91 + 80);
  v229 = v88;
  v226 = v93;
  v94 = swift_allocObject();
  v249 = xmmword_1C4F0D130;
  *(v94 + 16) = xmmword_1C4F0D130;
  v228 = v92;
  sub_1C4EFEBB8();
  sub_1C4D504A4();
  v245 = v95;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  sub_1C442DEC4(inited);
  sub_1C4EFCF48();
  v97 = sub_1C4EFD2F8();
  v99 = v98;
  v100 = *(v65 + 8);
  v101 = sub_1C4414550();
  v102(v101);
  *(v94 + 32) = v97;
  *(v94 + 40) = v99;
  sub_1C448DE08(v94);
  v244 = v103;
  LODWORD(v99) = *MEMORY[0x1E69A95C0];
  v104 = v51 + 104;
  v105 = *(v51 + 104);
  (v105)(v61, *MEMORY[0x1E69A95C0], v48);
  v106 = v236;
  sub_1C448DFD8();
  v105();
  sub_1C4410278(&a17);
  sub_1C448DFD8();
  v105();
  sub_1C448DFD8();
  v105();
  v107 = v240;
  v224 = v99;
  sub_1C448DFD8();
  v225 = v104;
  v223 = v105;
  v105();
  v207 = v107;
  v208 = 0;
  v206 = 0;
  sub_1C43FEAF8();
  v108 = v94;
  sub_1C4EFDE58();

  v110 = v243 + 8;
  v109 = *(v243 + 8);
  v109(v107, v48);
  v111 = sub_1C4414A08();
  (v109)(v111);
  v109(v108, v48);
  v109(v106, v48);
  v230 = v61;
  v231 = v48;
  v243 = v110;
  v222 = v109;
  v109(v61, v48);
  v112 = v235;
  sub_1C4EFDEA8();
  sub_1C4EFF8F8();
  v113 = v246;
  sub_1C43FCF64();
  sub_1C440BAA8(v114, v115, v116, v117);
  v118 = sub_1C498DB80();
  sub_1C4420C3C(v113, &qword_1EC0BAA00, &unk_1C4F17400);
  v119 = *(v242 + 8);
  v242 += 8;
  v221 = v119;
  v119(v112, v238);
  v120 = *(v118 + 16);
  if (v120)
  {
    v250 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v121 = v250;
    v122 = v118 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
    v123 = v247;
    v124 = *(v217 + 72);
    v245 = v118;
    v246 = v124;
    v125 = (v248 + 16);
    v126 = v219;
    v127 = v218;
    do
    {
      sub_1C4709E74(v122, v126);
      v128 = *v125;
      v129 = sub_1C43FE99C();
      v130(v129);
      sub_1C4709ED8(v126);
      v250 = v121;
      v132 = *(v121 + 16);
      v131 = *(v121 + 24);
      if (v132 >= v131 >> 1)
      {
        sub_1C43FCFE8(v131);
        sub_1C459D178();
        v123 = v247;
        v121 = v250;
      }

      *(v121 + 16) = v132 + 1;
      (*(v248 + 32))(v121 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v132, v127, v123);
      v122 += v246;
      --v120;
    }

    while (v120);
  }

  else
  {

    v121 = MEMORY[0x1E69E7CC0];
    v123 = v247;
  }

  v133 = v248;
  v134 = v233;
  v219 = *(v121 + 16);
  if (v219)
  {
    v135 = 0;
    v216 = *(v248 + 80);
    v215 = (v216 + 32) & ~v216;
    v214 = v121 + v215;
    v213 = v248 + 16;
    v217 = v248 + 8;
    v218 = v121;
    v136 = v237;
    v137 = v239;
    while (v135 < *(v121 + 16))
    {
      v138 = *(v133 + 72);
      v244 = v135;
      v139 = *(v133 + 16);
      v139(v134, v214 + v138 * v135, v247);
      sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
      v140 = v215;
      v141 = swift_allocObject();
      v142 = sub_1C442DEC4(v141);
      (v139)(v143 + v140, v134, v247, v142);
      sub_1C4D51ABC();
      sub_1C4450650(v144);
      sub_1C4422A7C(v145);
      v146 = swift_allocObject();
      sub_1C442DEC4(v146);
      sub_1C4EFE308();
      sub_1C4597A90();
      v245 = v147;
      sub_1C43FC1C0();
      v148 = swift_allocObject();
      sub_1C442DEC4(v148);
      sub_1C4EFE658();
      sub_1C4597A90();
      v149 = v230;
      v150 = v231;
      v151 = v223;
      (v223)(v230, v224, v231);
      v152 = v236;
      sub_1C4401744();
      v151();
      sub_1C4401744();
      v151();
      sub_1C4401744();
      v151();
      v153 = v240;
      sub_1C4401744();
      v151();
      v207 = v153;
      v206 = 0;
      v154 = v246;
      sub_1C4EFDE58();

      v155 = v222;
      v222(v153, v150);
      v155(v137, v150);
      v155(v136, v150);
      v156 = v152;
      v134 = v233;
      v155(v156, v150);
      v155(v149, v150);
      sub_1C441B388(&a15);
      sub_1C4EFDEA8();
      sub_1C4EFD678();
      sub_1C440BC84(&a11);
      sub_1C43FCF64();
      v161 = sub_1C440BAA8(v157, v158, v159, v160);
      MEMORY[0x1EEE9AC00](v161);
      v162 = v241;
      v208 = v241;
      v209 = v134;
      v163 = sub_1C43FBEF8();
      sub_1C48687D0(v163, v164, v165, v166);
      v123 = v247;
      sub_1C4420C3C(v154, &unk_1EC0C07E0, &unk_1C4F168F0);
      v167 = sub_1C4402258();
      v168(v167);
      v169 = v220;
      sub_1C445FFF0(v162, v220, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (sub_1C44157D4(v169, 1, v123) != 1)
      {

        sub_1C4420C3C(v169, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v174 = sub_1C4469158();
        v175(v174);
        v133 = v248;
        goto LABEL_15;
      }

      v135 = v244 + 1;
      v170 = sub_1C4404BCC();
      sub_1C4420C3C(v170, v171, &qword_1C4F105A0);
      v172 = sub_1C4469158();
      v173(v172);
      v133 = v248;
      v121 = v218;
      if (v219 == v135)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

LABEL_15:
    v176 = v211;
    sub_1C445FFF0(v241, v211, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v176, 1, v123) == 1)
    {
      sub_1C4420C3C(v176, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v177 = *(v133 + 32);
      v178 = v231;
      v179 = v212;
      sub_1C440BADC();
      v180();
      sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
      v181 = *(v133 + 72);
      v182 = v123;
      v183 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v184 = swift_allocObject();
      v185 = sub_1C442DEC4(v184);
      (*(v133 + 16))(v186 + v183, v179, v182, v185);
      sub_1C4D51ABC();
      sub_1C4450650(v187);
      sub_1C4410278(v188);
      *(swift_allocObject() + 16) = v249;
      v189 = v228;
      sub_1C4EFEAB8();
      sub_1C4597A90();
      v245 = v190;
      *(swift_allocObject() + 16) = v249;
      sub_1C4EFE548();
      sub_1C4597A90();
      sub_1C4410278(&a9);
      sub_1C445FD08();
      v191 = v223;
      v223();
      sub_1C440BC84(&a16);
      sub_1C445FD08();
      v191();
      v192 = v237;
      sub_1C445FD08();
      v191();
      v193 = v239;
      sub_1C445FD08();
      v191();
      v194 = v240;
      sub_1C445FD08();
      v191();
      v207 = v194;
      v206 = 0;
      sub_1C4EFDE58();

      v195 = v194;
      v196 = v222;
      v197 = v243;
      v222(v195, v178);
      v196(v193, v178);
      v196(v192, v178);
      v196(v189, v178);
      v196(v176, v178);
      sub_1C441B388(&a15);
      sub_1C4EFDEA8();
      sub_1C4EFD678();
      v198 = v232;
      sub_1C43FCF64();
      v203 = sub_1C440BAA8(v199, v200, v201, v202);
      MEMORY[0x1EEE9AC00](v203);
      v208 = &v251;
      sub_1C48687D0(v197, v198, sub_1C4723B84, &v206);
      sub_1C4420C3C(v198, &unk_1EC0C07E0, &unk_1C4F168F0);
      v204 = sub_1C4402258();
      v205(v204);
      (*(v248 + 8))(v212, v247);
    }

    sub_1C4420C3C(v241, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C471AA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v6 = *v5 == 0x796C696D61464146 && v5[1] == 0xEE00656C63726943;
  if (!v6 && (sub_1C4F02938() & 1) == 0)
  {
    return 1;
  }

  sub_1C4420C3C(a2, &unk_1EC0BA0E0, &qword_1C4F105A0);
  v7 = sub_1C4EFF0C8();
  (*(*(v7 - 8) + 16))(a2, a3, v7);
  sub_1C440BAA8(a2, 0, 1, v7);
  return 0;
}

void sub_1C471AB8C()
{
  sub_1C43FBD3C();
  v50 = v0;
  v1 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBC74();
  v49 = v5;
  sub_1C43FBE44();
  v6 = sub_1C4EFDE88();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v44 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v46 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C4EFDE68();
  v18 = sub_1C43FBD18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v21 = sub_1C4EFDE98();
  v22 = sub_1C43FCDF8(v21);
  v47 = v23;
  v48 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v45 = v26;
  v52 = MEMORY[0x1E69E7CC0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C459740C();
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v27 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v27);
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFE418();
  sub_1C4597A90();
  v32 = *MEMORY[0x1E69A95C0];
  v33 = *(v9 + 104);
  sub_1C43FE9A8();
  v33();
  sub_1C43FE9A8();
  v33();
  sub_1C43FE9A8();
  v33();
  sub_1C43FE9A8();
  v33();
  sub_1C43FE9A8();
  v33();
  sub_1C43FEAF8();
  sub_1C4EFDE58();

  v34 = *(v44 + 8);
  v34(v46, v6);
  v35 = sub_1C440A6C4();
  (v34)(v35);
  v36 = sub_1C440CAF0();
  (v34)(v36);
  v37 = sub_1C4404BCC();
  (v34)(v37);
  v38 = sub_1C43FBEF8();
  (v34)(v38);
  sub_1C4EFDEA8();
  v39 = *(v50 + 16);
  sub_1C4EFD678();
  sub_1C43FCF64();
  sub_1C440BAA8(v40, v41, v42, v43);
  v51[2] = &v52;
  sub_1C48687D0(v45, v49, sub_1C472386C, v51);
  sub_1C4420C3C(v49, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v47 + 8))(v45, v48);
  sub_1C43FE9F0();
}

uint64_t sub_1C471AFEC(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C44109B4();
  v9 = sub_1C4EFF0C8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = (a1 + *(type metadata accessor for GraphTriple(0) + 32));
  v22 = *v21;
  v23 = v21[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFF0D8();
  if (sub_1C44157D4(v2, 1, v9) == 1)
  {
    sub_1C4420C3C(v2, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v24 = *(v12 + 32);
    v25 = sub_1C43FE99C();
    v24(v25);
    v26 = *(v12 + 16);
    v27 = sub_1C43FBEF8();
    v28(v27);
    sub_1C4588EAC();
    v29 = *(*a2 + 16);
    sub_1C4589A94();
    (*(v12 + 8))(v20, v9);
    v30 = *a2;
    *(v30 + 16) = v29 + 1;
    (v24)(v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v17, v9);
  }

  return 1;
}

void sub_1C471B1EC()
{
  sub_1C43FBD3C();
  v105 = v0;
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v88 - v7;
  v9 = sub_1C4EFF0C8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v92 = v15;
  v104 = sub_1C456902C(&qword_1EC0BACF0, &unk_1C4F23190);
  v16 = sub_1C43FBCE0(v104);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v95 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v88 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v106 = v24;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C440E194();
  sub_1C450229C(v25, v26);
  v97 = v9;
  sub_1C440BADC();
  v94 = sub_1C4F00F28();
  v28 = v2 + 64;
  v27 = *(v2 + 64);
  v29 = *(v2 + 32);
  sub_1C43FD030();
  v32 = v31 & v30;
  v101 = v22 + 8;
  v102 = v22;
  v34 = (v33 + 63) >> 6;
  v88[1] = v12 + 16;
  v89 = v12;
  v90 = (v12 + 8);
  v91 = (v12 + 32);
  v103 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v35 = 0;
  v99 = v34;
  v100 = v2 + 64;
  for (i = v8; v32; v28 = v100)
  {
LABEL_6:
    v37 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v38 = v37 | (v35 << 6);
    v39 = v103;
    v40 = *(v103 + 48);
    v41 = sub_1C4EFF8A8();
    sub_1C43FCDF8(v41);
    v43 = v42;
    v45 = v106;
    (*(v44 + 16))(v106, v40 + *(v44 + 72) * v38, v41);
    v46 = (*(v39 + 56) + 16 * v38);
    v47 = *v46;
    v48 = v46[1];
    v49 = v104;
    v50 = (v45 + *(v104 + 48));
    *v50 = v47;
    v50[1] = v48;
    v51 = v102;
    sub_1C445FFF0(v45, v102, &qword_1EC0BACF0, &unk_1C4F23190);
    v52 = *&v101[*(v49 + 48)];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (*(v105 + 16) && (sub_1C457AC78(), (v54 & 1) != 0))
    {
      v55 = (*(v105 + 56) + 16 * v53);
      v56 = v55[1];
      v93 = *v55;
      v98 = *(v43 + 8);
      v57 = v98;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v57(v51, v41);
      v58 = v106;
      v59 = v95;
      sub_1C445FFF0(v106, v95, &qword_1EC0BACF0, &unk_1C4F23190);
      v60 = (v59 + *(v104 + 48));
      v61 = *v60;
      v62 = v60[1];
      v63 = i;
      sub_1C4EFF0D8();
      v98(v59, v41);
      if (sub_1C44157D4(v63, 1, v97) != 1)
      {
        (*v91)(v92, v63, v97);
        v64 = v94;
        LODWORD(v98) = swift_isUniquelyReferenced_nonNull_native();
        v107 = v64;
        sub_1C44E3664();
        if (__OFADD__(*(v64 + 16), (v66 & 1) == 0))
        {
          goto LABEL_29;
        }

        v67 = v65;
        v68 = v66;
        sub_1C456902C(&qword_1EC0BC020, &unk_1C4F231A0);
        v69 = sub_1C4F02458();
        v70 = v107;
        if (v69)
        {
          sub_1C44E3664();
          if ((v68 & 1) != (v72 & 1))
          {
            goto LABEL_31;
          }

          v73 = v71;
          if (v68)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v73 = v67;
          if (v68)
          {
LABEL_21:
            v94 = v70;
            v77 = v70[7];
            v78 = *(v77 + 8 * v73);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v77 + 8 * v73) = v78;
            if (isUniquelyReferenced_nonNull_native)
            {
              v80 = v73;
            }

            else
            {
              v85 = *(v78 + 16);
              sub_1C43FCEC0();
              sub_1C443D664();
              v78 = v86;
              v80 = v73;
              *(v77 + 8 * v73) = v86;
            }

            v82 = *(v78 + 16);
            v81 = *(v78 + 24);
            if (v82 >= v81 >> 1)
            {
              sub_1C43FCFE8(v81);
              sub_1C443D664();
              *(v77 + 8 * v80) = v87;
            }

            (*v90)(v92, v97);
            sub_1C4420C3C(v106, &qword_1EC0BACF0, &unk_1C4F23190);
            v83 = *(v77 + 8 * v80);
            *(v83 + 16) = v82 + 1;
            v84 = v83 + 16 * v82;
            *(v84 + 32) = v93;
            *(v84 + 40) = v56;
            goto LABEL_11;
          }
        }

        v70[(v73 >> 6) + 8] |= 1 << v73;
        (*(v89 + 16))(v70[6] + *(v89 + 72) * v73, v92, v97);
        *(v70[7] + 8 * v73) = MEMORY[0x1E69E7CC0];
        v74 = v70[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_30;
        }

        v70[2] = v76;
        goto LABEL_21;
      }

      sub_1C4420C3C(v58, &qword_1EC0BACF0, &unk_1C4F23190);

      sub_1C4420C3C(v63, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4420C3C(v106, &qword_1EC0BACF0, &unk_1C4F23190);
      (*(v43 + 8))(v51, v41);
    }

LABEL_11:
    v34 = v99;
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {

      sub_1C43FE9F0();
      return;
    }

    v32 = *(v28 + 8 * v36);
    ++v35;
    if (v32)
    {
      v35 = v36;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C471B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v93 = v24;
  v94 = v20;
  v25 = sub_1C4EF9E28();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  v31 = sub_1C4EF9E48();
  v32 = sub_1C43FCDF8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  v40 = sub_1C456902C(&qword_1EC0BC018, &unk_1C4F23180);
  sub_1C43FBD18(v40);
  v42 = *(v41 + 64);
  sub_1C43FBC68();
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v91 - v45;
  v47 = sub_1C47189E8(v44);
  if (!v21)
  {
    v92 = v47;
    sub_1C4EF9E08();
    sub_1C4EF9E38();
    (*(v34 + 8))(v39, v31);
    sub_1C4EF9E18();
    v48 = *(v28 + 8);
    v49 = sub_1C440A6C4();
    v50(v49);
    v51 = sub_1C4EF9D78();
    if (sub_1C44157D4(v46, 1, v51) == 1)
    {
      sub_1C4420C3C(v46, &qword_1EC0BC018, &unk_1C4F23180);
    }

    else
    {
      sub_1C4EF9D68();
      v52 = *(*(v51 - 8) + 8);
      v53 = sub_1C440CAF0();
      v54(v53);
    }

    sub_1C4718F1C();
    v56 = v55;

    if (!v56)
    {
      sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
      v57 = sub_1C4F00F28();
      v56 = v57;
    }

    v65 = v92;
    sub_1C4722A98(v57, v58, v59, v60, v61, v62, v63, v64, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
    v67 = v66;
    v68 = MEMORY[0x1E69E7CC0];
    sub_1C4719A00(v66, v69, v70, v71, v72, v73, v74, v75, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
    v77 = v76;
    sub_1C471BE2C(v65, v78, v79, v80, v81, v82, v83, v84, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
    v85 = v104;
    v86 = v105;
    v87 = v106;
    v88 = v107;
    v89 = v108;
    v90 = v93;
    *v93 = v103;
    v90[1] = v85;
    v90[2] = v86;
    v90[3] = v87;
    v90[4] = v88;
    *(v90 + 10) = v89;
    *(v90 + 11) = v68;
    *(v90 + 12) = v56;
    *(v90 + 13) = v65;
    *(v90 + 14) = v67;
    *(v90 + 15) = v77;
  }

  sub_1C43FBC80();
}

void sub_1C471BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v151 = v21;
  v155 = v24;
  v149 = v25;
  v26 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v26);
  v28 = *(v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v154 = v30;
  sub_1C43FBE44();
  v145 = sub_1C4EFDE88();
  v31 = sub_1C43FCDF8(v145);
  v148 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v158 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v41 = v40;
  sub_1C43FBE44();
  v42 = sub_1C4EFDE68();
  v43 = sub_1C43FBD18(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v157 = v46;
  sub_1C43FBE44();
  v47 = sub_1C4EFDE98();
  v48 = sub_1C43FCDF8(v47);
  v152 = v49;
  v153 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v52);
  v53 = sub_1C4EFF0C8();
  v54 = sub_1C43FCDF8(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD2D8();
  v60 = v59;
  v61 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v62 = sub_1C43FBD18(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBD08();
  v67 = v65 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v136 - v69;
  v156 = v20;
  v143 = v20[2];
  sub_1C486DFC0();
  v159 = v71;
  sub_1C4868198();
  v160 = v70;
  sub_1C445FFF0(v70, v67, &unk_1EC0BA0E0, &qword_1C4F105A0);
  if (sub_1C44157D4(v67, 1, v53) == 1)
  {

    sub_1C440BADC();
    sub_1C4420C3C(v72, v73, v74);
    sub_1C472376C();
    swift_allocError();
    *v75 = 0;
    swift_willThrow();
    sub_1C440BADC();
    sub_1C4420C3C(v76, v77, v78);
  }

  else
  {
    v79 = *(v56 + 32);
    v80 = v60;
    v81 = v60;
    v140 = v60;
    v82 = v53;
    v139 = v53;
    v79(v81, v67, v53);
    v168 = 0;
    v169 = MEMORY[0x1E69E7CC0];
    v166 = MEMORY[0x1E69E7CC0];
    v167 = 0;
    v165 = MEMORY[0x1E69E7CC0];
    v163 = 0;
    v164 = 1;
    sub_1C4EFF8A8();
    sub_1C450229C(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
    v162 = sub_1C440C490();
    v161 = sub_1C440C490();
    v83 = swift_allocObject();
    v142 = v83;
    *(v83 + 16) = sub_1C440C490();
    v138 = v83 + 16;
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v84 = *(v56 + 72);
    v85 = *(v56 + 80);
    v141 = v56;
    v86 = (v85 + 32) & ~v85;
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1C4F0D130;
    (*(v56 + 16))(v87 + v86, v80, v82);
    sub_1C4D51ABC();
    v137 = v88;
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    v89 = sub_1C4EFEEF8();
    sub_1C43FCF7C(v89);
    v91 = *(v90 + 72);
    v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    *(swift_allocObject() + 16) = xmmword_1C4F0F820;
    sub_1C4EFEA18();
    sub_1C4EFE2C8();
    sub_1C4EFEAC8();
    sub_1C4EFE3D8();
    sub_1C4EFEBA8();
    sub_1C4EFE638();
    sub_1C4597A90();
    v94 = *MEMORY[0x1E69A95C0];
    v95 = v148;
    v96 = *(v148 + 104);
    v136 = v41;
    v97 = v145;
    (v96)(v41, v94, v145);
    sub_1C442C8C0();
    v96();
    sub_1C4410278(&a11);
    sub_1C442C8C0();
    v96();
    sub_1C4422A7C(&a13);
    sub_1C442C8C0();
    v96();
    v98 = v147;
    sub_1C442C8C0();
    v96();
    v134 = v98;
    v135 = 0;
    v133 = 0;
    v99 = v158;
    v100 = v136;
    sub_1C4EFDE58();

    v101 = *(v95 + 8);
    v101(v98, v97);
    v102 = sub_1C4414A08();
    (v101)(v102);
    v101(v41, v97);
    v101(v99, v97);
    v101(v100, v97);
    v103 = v150;
    sub_1C4EFDEA8();
    sub_1C4EFD678();
    v104 = v154;
    sub_1C43FCF64();
    v109 = sub_1C440BAA8(v105, v106, v107, v108);
    MEMORY[0x1EEE9AC00](v109);
    *(&v136 - 10) = v142;
    *(&v136 - 9) = &v161;
    *(&v136 - 8) = &v162;
    *(&v136 - 7) = &v169;
    *(&v136 - 6) = &v167;
    *(&v136 - 5) = &v166;
    v133 = &v165;
    v134 = &v163;
    v110 = v156;
    v135 = v156;
    sub_1C48687D0(v103, v104, sub_1C47237C0, (&v136 - 12));
    sub_1C4420C3C(v104, &unk_1EC0C07E0, &unk_1C4F168F0);
    v148 = v165;
    sub_1C471AB8C();
    v158 = v111;
    sub_1C471AB8C();
    v157 = v112;
    sub_1C4422A7C(&v167);
    swift_beginAccess();
    v113 = *v110;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C471B1EC();
    v154 = v114;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C471B1EC();
    v147 = v115;

    sub_1C4718178(v169, v155, v116, v117, v118, v119, v120, v121, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
    v155 = v123;
    v156 = v122;
    (*(v152 + 8))(v103, v153);
    (*(v141 + 8))(v140, v139);
    sub_1C4420C3C(v160, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v124 = v167;
    v125 = v168;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v126 = v163;
    v170 = v164;

    v127 = v149;
    v128 = v155;
    v129 = v156;
    *v149 = v159;
    v127[1] = v129;
    v127[2] = v128;
    v127[3] = v124;
    v131 = v157;
    v130 = v158;
    v127[4] = v125;
    v127[5] = v131;
    v127[6] = v130;
    v127[7] = v126;
    *(v127 + 64) = v170;
    *(v127 + 65) = v167;
    *(v127 + 17) = *(&v167 + 3);
    v132 = v147;
    v127[9] = v154;
    v127[10] = v132;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C471C7A8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t a9)
{
  v183 = a8;
  v184 = a4;
  v185 = a7;
  v189 = a6;
  v191 = a5;
  v182 = a3;
  v192 = a2;
  v188 = sub_1C456902C(&qword_1EC0B89C8, &unk_1C4F23170);
  v190 = *(v188 - 1);
  v10 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v12 = &v181 - v11;
  v13 = type metadata accessor for GraphTriple(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v187 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v186 = &v181 - v17;
  v18 = sub_1C4EFEEF8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v181 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v181 - v27;
  v29 = a1;
  v30 = a1 + v13[5];
  v193 = v19[2];
  v194 = v19 + 2;
  v193(&v181 - v27, v30, v18, v26);
  sub_1C4EFE638();
  v31 = sub_1C450229C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748]);
  LOBYTE(a1) = sub_1C4F010B8();
  v34 = v19[1];
  v33 = v19 + 1;
  v32 = v34;
  (v34)(v24, v18);
  if ((a1 & 1) == 0)
  {
    v196 = v29;
    sub_1C4EFEA18();
    v59 = sub_1C4F010B8();
    (v32)(v24, v18);
    if (v59)
    {
      (v32)(v28, v18);
      v60 = v13;
      v61 = v13[7];
      sub_1C4EFE518();
      v62 = v196;
      LOBYTE(v61) = sub_1C4F010B8();
      (v32)(v24, v18);
      if (v61)
      {
        v63 = (v62 + v60[8]);
        v64 = v63[1];
        v65 = v60[6];
        v66 = v188[12];
        *v12 = *v63;
        *(v12 + 1) = v64;
        v67 = sub_1C4EFF8A8();
        (*(*(v67 - 8) + 16))(&v12[v66], v62 + v65, v67);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v68 = v191;
        sub_1C4589208();
        v69 = *(*v68 + 16);
        sub_1C4589DB0();
        v70 = *v68;
        *(v70 + 16) = v69 + 1;
        sub_1C47237FC(v12, v70 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v69);
      }

      return 1;
    }

    sub_1C4EFE2C8();
    v71 = sub_1C4F010B8();
    (v32)(v24, v18);
    if (v71)
    {
      (v32)(v28, v18);
      v72 = (v196 + v13[8]);
      v74 = *v72;
      v73 = v72[1];
      v75 = v189;
      v76 = v189[1];
      *v189 = v74;
      v75[1] = v73;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_36:

      return 1;
    }

    sub_1C4EFEAC8();
    v104 = sub_1C4F010B8();
    (v32)(v24, v18);
    if ((v104 & 1) == 0)
    {
      sub_1C4EFE3D8();
      v131 = sub_1C4F010B8();
      (v32)(v24, v18);
      if (v131)
      {
        (v32)(v28, v18);
        v132 = (v196 + v13[8]);
        v133 = *v132;
        v134 = v132[1];
        sub_1C47224CC();
      }

      else
      {
        v188 = v13;
        sub_1C4EFEBA8();
        v164 = sub_1C4F010B8();
        (v32)(v24, v18);
        (v32)(v28, v18);
        if ((v164 & 1) == 0)
        {
          return 1;
        }

        if (*(a9 + 8) == 1)
        {
          v165 = (v196 + v188[8]);
          v166 = *v165;
          v167 = v165[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v135 = sub_1C4AA1304(v166, v167);
        }

        else
        {
          v136 = 0;
          v135 = *a9;
        }
      }

      *a9 = v135;
      *(a9 + 8) = v136 & 1;
      return 1;
    }

    (v32)(v28, v18);
    v105 = v196;
    v106 = (v196 + v13[8]);
    v107 = *v106;
    v108 = v106[1];
    v109 = *MEMORY[0x1E695CB60];
    v111 = v107 == sub_1C4F01138() && v108 == v110;
    if (v111)
    {
    }

    else
    {
      v112 = sub_1C4F02938();

      if ((v112 & 1) == 0)
      {
        v113 = *MEMORY[0x1E695CBD8];
        if (v107 == sub_1C4F01138() && v108 == v114)
        {
        }

        else
        {
          v116 = sub_1C4F02938();

          if ((v116 & 1) == 0)
          {
            return 1;
          }
        }

        v159 = v13[6];
        v160 = v183;
LABEL_63:
        sub_1C4588F54();
        v161 = *(*v160 + 16);
        sub_1C4589B3C();
        v162 = *v160;
        *(v162 + 16) = v161 + 1;
        v163 = sub_1C4EFF8A8();
        (*(*(v163 - 8) + 16))(v162 + ((*(*(v163 - 8) + 80) + 32) & ~*(*(v163 - 8) + 80)) + *(*(v163 - 8) + 72) * v161, v105 + v159, v163);
        return 1;
      }
    }

    v159 = v13[6];
    v160 = v185;
    goto LABEL_63;
  }

  v191 = v31;
  (v32)(v28, v18);
  v35 = v29;
  v36 = (v29 + v13[11]);
  v37 = *v36;
  v38 = v36[1];
  v189 = v36;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = objc_autoreleasePoolPush();
  v200 = v37;
  v201 = v38;
  v198 = 30;
  v199 = 0xE100000000000000;
  v190 = sub_1C4415EA8();
  v40 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v39);
  v41 = *(v40 + 16);

  v111 = v41 == 1;
  v42 = v35;
  v43 = v13;
  if (v111)
  {
    v183 = v32;
    v185 = v33;
    v188 = v13;
    v196 = v35;
    v44 = *v189;
    v45 = v189[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = objc_autoreleasePoolPush();
    v200 = v44;
    v201 = v45;
    v198 = 30;
    v199 = 0xE100000000000000;
    v47 = sub_1C4F01FC8();

    objc_autoreleasePoolPop(v46);
    v48 = (v47 + 40);
    v49 = -*(v47 + 16);
    v50 = -1;
    v42 = qword_1EDE2D620;
    while (1)
    {
      if (v49 + v50 == -1)
      {

        v42 = v196;
        v43 = v188;
        v32 = v183;
        goto LABEL_17;
      }

      if (++v50 >= *(v47 + 16))
      {
        break;
      }

      v51 = *(v48 - 1);
      v52 = *v48;
      v53 = qword_1EDDF7900;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v53 != -1)
      {
        swift_once();
      }

      v48 += 4;
      v54 = type metadata accessor for SourceIdPrefix();
      v55 = sub_1C442B738(v54, qword_1EDE2D620);
      v57 = *v55;
      v56 = v55[1];
      v200 = v57;
      v201 = v56;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v58 = sub_1C4F013E8();

      if (v58)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_17:
  v77 = v195;
  (v193)(v195, v42 + v43[7], v18);
  sub_1C4EFE808();
  v78 = sub_1C4F010B8();
  (v32)(v24, v18);
  if (v78 & 1) != 0 || (sub_1C4EFE628(), v79 = sub_1C4F010B8(), (v32)(v24, v18), (v79))
  {
    (v32)(v77, v18);
    v24 = v192;
    swift_beginAccess();
    v80 = v43[6];
    if (!*(*(v24 + 16) + 16))
    {
      goto LABEL_59;
    }

    v81 = *(v24 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C457AC78();
    v83 = v82;

    if ((v83 & 1) == 0)
    {
      goto LABEL_59;
    }

    v48 = v43;
    if (qword_1EDDFECB0 == -1)
    {
LABEL_22:
      v84 = sub_1C4F00978();
      sub_1C442B738(v84, qword_1EDDFECB8);
      v85 = v186;
      sub_1C4709E74(v42, v186);
      v86 = v187;
      sub_1C4709E74(v42, v187);

      v87 = sub_1C4F00968();
      v88 = sub_1C4F01CC8();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v188 = v48;
        v91 = v90;
        *v89 = 136315394;
        v196 = v42;
        v197 = v90;
        v92 = v188[6];
        swift_beginAccess();
        v93 = sub_1C465C2AC(v85 + v92, *(v24 + 16));
        v95 = v94;
        swift_endAccess();
        v198 = v93;
        v199 = v95;
        sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
        v96 = sub_1C4F01198();
        v98 = v97;
        sub_1C4709ED8(v85);
        v99 = sub_1C441D828(v96, v98, &v197);

        *(v89 + 4) = v99;
        *(v89 + 12) = 2080;
        v100 = (v86 + v188[8]);
        v101 = *v100;
        v102 = v100[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4709ED8(v86);
        v103 = sub_1C441D828(v101, v102, &v197);

        *(v89 + 14) = v103;
        v42 = v196;
        _os_log_impl(&dword_1C43F8000, v87, v88, "Overwriting relationshipIDToPersonID: %s with %s", v89, 0x16u);
        swift_arrayDestroy();
        v43 = v188;
        MEMORY[0x1C6942830](v91, -1, -1);
        MEMORY[0x1C6942830](v89, -1, -1);
      }

      else
      {

        sub_1C4709ED8(v86);
        sub_1C4709ED8(v85);
        v43 = v48;
      }

LABEL_59:
      v154 = (v42 + v43[8]);
      v155 = *v154;
      v156 = v154[1];
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v157 = *(v24 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v197 = *(v24 + 16);
      sub_1C4661AA8();
      *(v24 + 16) = v197;
      swift_endAccess();
      return 1;
    }

LABEL_81:
    swift_once();
    goto LABEL_22;
  }

  v188 = v43;
  sub_1C4EFEB48();
  v117 = sub_1C4F010B8();
  (v32)(v24, v18);
  (v32)(v77, v18);
  if (v117)
  {
    v196 = v42;
    v118 = *v189;
    v119 = v189[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v120 = objc_autoreleasePoolPush();
    v200 = v118;
    v201 = v119;
    v198 = 30;
    v199 = 0xE100000000000000;
    v121 = sub_1C4F01FC8();

    objc_autoreleasePoolPop(v120);
    v122 = (v121 + 40);
    v123 = -*(v121 + 16);
    v24 = -1;
    do
    {
      v48 = (v123 + v24);
      if (v123 + v24 == -1)
      {
        break;
      }

      if (++v24 >= *(v121 + 16))
      {
        goto LABEL_79;
      }

      v124 = *(v122 - 1);
      v42 = *v122;
      v125 = qword_1EDDF7900;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v125 != -1)
      {
        swift_once();
      }

      v122 += 2;
      v126 = type metadata accessor for SourceIdPrefix();
      v127 = sub_1C442B738(v126, qword_1EDE2D620);
      v129 = *v127;
      v128 = v127[1];
      v200 = v129;
      v201 = v128;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v130 = sub_1C4F013E8();
    }

    while ((v130 & 1) == 0);

    v137 = *v189;
    v138 = v189[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v139 = objc_autoreleasePoolPush();
    v200 = v137;
    v201 = v138;
    v198 = 30;
    v199 = 0xE100000000000000;
    v140 = sub_1C4F01FC8();

    objc_autoreleasePoolPop(v139);
    v42 = (v140 + 40);
    v141 = -*(v140 + 16);
    v142 = -1;
    while (1)
    {
      if (v141 + v142 == -1)
      {

        v111 = (v48 + 1) == 0;
        v168 = v196;
        if (!v111)
        {
          return 1;
        }

        goto LABEL_74;
      }

      if (++v142 >= *(v140 + 16))
      {
        goto LABEL_80;
      }

      v144 = *(v42 - 1);
      v143 = *v42;
      v145 = qword_1EDDFBCA0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v145 != -1)
      {
        swift_once();
      }

      v146 = type metadata accessor for SourceIdPrefix();
      v147 = sub_1C442B738(v146, &qword_1EDE2DD58);
      v149 = *v147;
      v148 = v147[1];
      v200 = v149;
      v201 = v148;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v24 = sub_1C4F013E8();

      if (v24)
      {
        break;
      }

      if (qword_1EDDF7908 != -1)
      {
        swift_once();
      }

      v42 += 2;
      v150 = sub_1C442B738(v146, qword_1EDE2D638);
      v152 = *v150;
      v151 = v150[1];
      v200 = v152;
      v201 = v151;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v153 = sub_1C4F013E8();

      if (v153)
      {
        goto LABEL_71;
      }
    }

LABEL_71:

    v111 = (v48 + 1) == 0;
    v168 = v196;
    if (!v111)
    {
      return 1;
    }

    v169 = v188[6];
    v170 = (v196 + v188[8]);
    v171 = *v170;
    v172 = v170[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v173 = v182;
    v174 = *v182;
    swift_isUniquelyReferenced_nonNull_native();
    v200 = *v173;
    sub_1C4661AA8();
    *v173 = v200;
LABEL_74:
    v175 = v188[6];
    v176 = (v168 + v188[8]);
    v177 = *v176;
    v178 = v176[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v179 = v184;
    v180 = *v184;
    swift_isUniquelyReferenced_nonNull_native();
    v200 = *v179;
    sub_1C4661AA8();
    *v179 = v200;
  }

  return 1;
}