uint64_t sub_254F858D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F8582C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254F85900(uint64_t a1)
{
  v2 = sub_254F9399C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8593C(uint64_t a1)
{
  v2 = sub_254F9399C();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryDecorationRecognitionEntities.encode(to:)()
{
  sub_254F4E9D0();
  sub_254F52F94(&qword_27F761B08);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v0);
  sub_254F4FC44();
  v1 = sub_254F994A0();
  sub_254F4EFBC(v1, v2);
  sub_254F9399C();

  sub_254F9975C();
  sub_254F779D0();
  sub_254F9BF20();
  sub_254F52F94(&qword_27F761270);
  sub_254F939F0();
  sub_254F4EFE0();
  sub_254F9BD80();

  v3 = sub_254F99930();
  v4(v3);
  sub_254F4F348();
}

void QueryDecorationRecognitionEntities.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_254F4E9D0();
  sub_254F99A90();
  sub_254F52F94(&qword_27F761B18);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F50064();
  v14 = sub_254F99664();
  sub_254F4EFBC(v14, v15);
  sub_254F9399C();
  sub_254F99A0C();
  sub_254F779D0();
  sub_254F9BF10();
  if (!v11)
  {
    sub_254F52F94(&qword_27F761270);
    sub_254F93AA4();
    sub_254F995BC();
    v16 = sub_254F99494();
    v17(v16);
    *v12 = a10;
  }

  sub_254F4DA5C(v10);
  sub_254F997B0();
  sub_254F4F348();
}

uint64_t VersionedQueryDecorationOutput.Version.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_254F9BC20();

  *a1 = v2 != 0;
  return result;
}

unint64_t VersionedQueryDecorationOutput.description.getter()
{
  sub_254F9911C();
  sub_254F99744();
  sub_254F9BB90();
  MEMORY[0x259C2FA00](0x7372657620202020, 0xED0000203A6E6F69);
  sub_254F9BBD0();
  sub_254F991B4();
  sub_254F99270();

  sub_254F99744();
  sub_254F9BB90();

  sub_254F9911C();
  sub_254F99A84(OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_deviceIdsID);

  sub_254F52F94(&qword_27F761AD0);
  sub_254F4F244();
  sub_254F99850();

  sub_254F991B4();
  sub_254F99270();

  sub_254F994B8();
  sub_254F998EC();
  sub_254F52F94(&qword_27F761B48);
  sub_254F4F244();
  sub_254F99850();

  sub_254F991B4();
  sub_254F99270();

  sub_254F99744();
  sub_254F9BB90();

  sub_254F9911C();
  v8 = v0;
  v1 = sub_254F98F30(OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_queryDecorationToolRetrievalResponse);
  sub_254F99B0C(v1, v2);
  sub_254F52F94(&qword_27F761B50);
  v3 = sub_254F9B9A0();
  MEMORY[0x259C2FA00](v3);

  sub_254F994D8();
  MEMORY[0x259C2FA00](0xD00000000000002ALL, v8);

  sub_254F99744();
  sub_254F9BB90();

  sub_254F9911C();
  v7 = v4;
  sub_254F998EC();
  sub_254F52F94(&qword_27F761B58);
  sub_254F4F244();
  sub_254F99850();

  sub_254F991B4();
  sub_254F99270();

  sub_254F99744();
  sub_254F9BB90();

  sub_254F993F8();
  sub_254F998EC();
  sub_254F52F94(&qword_27F761B00);
  v5 = sub_254F4F244();
  MEMORY[0x259C2FA00](v5);

  sub_254F991B4();
  MEMORY[0x259C2FA00](0xD000000000000020, v7);

  sub_254F998D4();
  return 0xD000000000000020;
}

id VersionedQueryDecorationOutput.init(version:deviceIdsID:spans:queryDecorationToolRetrievalResponse:dynamicEnumerationEntities:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_254F99AD8();
  ObjectType = swift_getObjectType();
  v15 = *(v8 + 48);
  v16 = &v7[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_deviceIdsID];
  *v16 = v11;
  *(v16 + 1) = v10;
  *&v7[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_spans] = v9;
  v17 = &v7[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_queryDecorationToolRetrievalResponse];
  v18 = *(v8 + 16);
  *v17 = *v8;
  *(v17 + 1) = v18;
  *(v17 + 2) = *(v8 + 32);
  *(v17 + 6) = v15;
  *&v7[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_dynamicEnumerationEntities] = a6;
  *&v7[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_context] = a7;
  v20.receiver = v7;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

Swift::Void __swiftcall VersionedQueryDecorationOutput.osLogOutcomes()()
{
  sub_254F878F8();

  sub_254F861D8();
}

void sub_254F861D8()
{
  v41 = type metadata accessor for RetrievedContext(0);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_254F52F94(&qword_27F761F20);
  MEMORY[0x28223BE20](v2);
  v37 = (&v37 - v3);
  v4 = sub_254F52F94(&qword_27F761F28);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v37 - v8);
  v42 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_context);
  if (v10)
  {
    v11 = 0;
    v46 = 0xD000000000000035;
    v47 = 0x8000000254FA77B0;
    v12 = *(v10 + 16);
    v39 = v10;
    for (i = v7; ; v7 = i)
    {
      if (v11 == v12)
      {
        v13 = 1;
        v11 = v12;
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_25;
        }

        *v37 = v11;
        sub_254F93414();
        sub_254F98DAC();
        v13 = 0;
        ++v11;
      }

      sub_254F4E598(v7, v13, 1, v2);
      sub_254F98DAC();
      if (sub_254F4E5C0(v9, 1, v2) == 1)
      {
        break;
      }

      v14 = *v9;
      v15 = v2;
      v16 = v43;
      sub_254F92FB4();
      v17 = *(v41 + 40);
      memcpy(v45, (v16 + v17), sizeof(v45));
      if (sub_254F6C0F4(v45) == 1 || (v18 = v45[19]) == 0)
      {

        v18 = 0xE300000000000000;
        v19 = 7104878;
      }

      else
      {
        v19 = v45[18];
      }

      memcpy(v44, (v43 + v17), sizeof(v44));
      if (sub_254F6C0F4(v44) == 1 || (v20 = v44[28]) == 0)
      {

        v20 = 0xE300000000000000;
        v21 = 7104878;
      }

      else
      {
        v21 = v44[27];
      }

      sub_254F87ED0(v14, v19, v18, v21, v20, v22, v23, v24, v37, v38, v39, i, v41, v42, v43, v44[0], v44[1], v44[2], v44[3], v44[4], v44[5], v44[6], v44[7], v44[8], v44[9], v44[10]);
      v26 = v25;
      v28 = v27;

      MEMORY[0x259C2FA00](v26, v28);

      sub_254F92D68();
      v2 = v15;
      v10 = v39;
    }

    if (qword_280C45318 == -1)
    {
      goto LABEL_19;
    }

LABEL_26:
    swift_once();
LABEL_19:
    v29 = sub_254F9B7F0();
    sub_254F4DED0(v29, qword_280C45320);
    v31 = v46;
    v30 = v47;

    v32 = sub_254F9B7D0();
    v33 = sub_254F9BB10();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45[0] = v35;
      *v34 = 136315138;
      v36 = sub_254F7AD30(v31, v30, v45);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_254F4C000, v32, v33, "%s", v34, 0xCu);
      sub_254F4DA5C(v35);
      MEMORY[0x259C303A0](v35, -1, -1);
      MEMORY[0x259C303A0](v34, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_254F86728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xEB00000000444973;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E617073 && a2 == 0xE500000000000000;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000024 && 0x8000000254FA7530 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x8000000254FA7560 == a2;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F8691C(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x6449656369766564;
      break;
    case 2:
      result = 0x736E617073;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F869E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F86728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F86A0C(uint64_t a1)
{
  v2 = sub_254F93BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F86A48(uint64_t a1)
{
  v2 = sub_254F93BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void VersionedQueryDecorationOutput.encode(to:)()
{
  sub_254F99C20();
  sub_254F52F94(&qword_27F761B60);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v2);
  sub_254F4E558();
  sub_254F98F98();
  sub_254F93BBC();
  sub_254F4F1BC();
  sub_254F93C10();
  sub_254F4E2F0();
  sub_254F9BE00();
  if (!v1)
  {
    sub_254F9961C(OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_deviceIdsID);
    sub_254F4F22C(1);
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F995B0();
    sub_254F52F94(&qword_27F761B78);
    sub_254F93C64();
    sub_254F98F14();
    sub_254F9BD80();
    v3 = sub_254F98F70(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_queryDecorationToolRetrievalResponse);
    sub_254F99948(v3, v4, v5, v6, v7, v8, v9);
    sub_254F993E0();
    sub_254F93B58(v10, v11);
    sub_254F93D38();
    sub_254F4E2F0();
    sub_254F9BD80();
    sub_254F99AEC();
    sub_254F999B4();
    sub_254F52F94(&qword_27F761B80);
    sub_254F93DF0();
    sub_254F98F14();
    sub_254F9BD80();
    sub_254F52F94(&qword_27F761270);
    sub_254F939F0();
    sub_254F98F14();
    sub_254F9BD80();
  }

  v12 = sub_254F4F36C();
  v13(v12);
  sub_254F99C0C();
}

void VersionedQueryDecorationOutput.__allocating_init(from:)()
{
  sub_254F99868();
  sub_254F996DC();
  VersionedQueryDecorationOutput.init(from:)();
}

void VersionedQueryDecorationOutput.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_254F52F94(&qword_27F761B88);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F778C8();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F93BBC();
  sub_254F994AC();
  sub_254F9BF10();
  if (v1)
  {
    sub_254F4DA5C(v3);
    sub_254F99BEC();
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_254F93EA4();
    sub_254F99110();
    sub_254F9BD10();
    sub_254F9991C(1);
    v5 = sub_254F9BC50();
    sub_254F99640(v5, v6, OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_deviceIdsID);
    sub_254F52F94(&qword_27F761B78);
    sub_254F995B0();
    sub_254F93EF8();
    sub_254F4E39C();
    sub_254F9BC90();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_spans] = v11;
    sub_254F993E0();
    sub_254F93FAC();
    sub_254F99110();
    sub_254F9BC90();
    sub_254F99670(v12);
    sub_254F52F94(&qword_27F761B80);
    sub_254F999B4();
    sub_254F94000();
    sub_254F4E39C();
    sub_254F9BC90();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_dynamicEnumerationEntities] = v11;
    sub_254F52F94(&qword_27F761270);
    sub_254F93AA4();
    sub_254F4E39C();
    sub_254F9BC90();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_context] = v11;
    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_init);
    v7 = sub_254F98FD4();
    v8(v7);
    sub_254F4DA5C(v3);
  }

  sub_254F4FC6C();
  sub_254F4F348();
}

void sub_254F87114(void *a1@<X8>)
{
  VersionedQueryDecorationOutput.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

id QueryDecorationOutput.versioned()()
{
  v1 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_deviceIdsID + 8);
  v2 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_spans);
  v3 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse + 8);
  v4 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse + 16);
  v5 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse + 24);
  v6 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse + 32);
  v7 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse + 40);
  v8 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse + 48);
  v12 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_deviceIdsID);
  v13[0] = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse);
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_context);
  objc_allocWithZone(type metadata accessor for VersionedQueryDecorationOutput());

  sub_254F93B58(v13[0], v3);

  return VersionedQueryDecorationOutput.init(version:deviceIdsID:spans:queryDecorationToolRetrievalResponse:dynamicEnumerationEntities:context:)(v10, v12, v1, v2, v13, v10, v9);
}

id VersionedQueryDecorationOutput.unversioned()()
{
  v1 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_deviceIdsID);
  v2 = *(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared30VersionedQueryDecorationOutput_deviceIdsID + 8);
  v10 = v1;
  objc_allocWithZone(type metadata accessor for QueryDecorationOutput());

  sub_254F9993C();
  sub_254F779D0();
  sub_254F93B58(v3, v4);

  sub_254F99598();
  return QueryDecorationOutput.init(spans:queryDecorationToolRetrievalResponse:dynamicEnumerationEntities:context:deviceIdsID:)(v5, v6, v7, v8, v10, v2);
}

id QueryDecorationOutput.__allocating_init(spans:queryDecorationToolRetrievalResponse:dynamicEnumerationEntities:context:deviceIdsID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_254F990D4();
  v11 = objc_allocWithZone(v6);
  v12 = sub_254F99984();
  return QueryDecorationOutput.init(spans:queryDecorationToolRetrievalResponse:dynamicEnumerationEntities:context:deviceIdsID:)(v12, v13, v9, v8, v7, a6);
}

uint64_t QueryDecorationVersionError.hashValue.getter()
{
  sub_254F77C0C();
  MEMORY[0x259C2FEE0](0);
  return sub_254F9BF00();
}

uint64_t sub_254F874B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return sub_254F93B58(v4, v5);
}

id sub_254F87538(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_254F4EB58();
  v5 = sub_254F9B960();

  return v5;
}

unint64_t QueryDecorationOutput.description.getter()
{
  sub_254F9911C();
  sub_254F994B8();

  sub_254F52F94(&qword_27F761B48);
  sub_254F4F244();
  sub_254F99850();

  sub_254F991B4();
  sub_254F99270();

  sub_254F99AA8();
  sub_254F9BB90();

  sub_254F9911C();
  v8 = v0;
  v1 = sub_254F98F30(OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse);
  sub_254F99B0C(v1, v2);
  sub_254F52F94(&qword_27F761B50);
  v3 = sub_254F9B9A0();
  MEMORY[0x259C2FA00](v3);

  sub_254F994D8();
  MEMORY[0x259C2FA00](0xD00000000000002ALL, v8);

  sub_254F99AA8();
  sub_254F9BB90();

  sub_254F9911C();
  sub_254F998EC();
  sub_254F52F94(&qword_27F761B58);
  sub_254F4F244();
  sub_254F99850();

  sub_254F991B4();
  sub_254F99270();

  sub_254F99AA8();
  sub_254F9BB90();

  sub_254F993F8();
  sub_254F998EC();
  sub_254F52F94(&qword_27F761B00);
  sub_254F4F244();
  sub_254F99850();

  sub_254F991B4();
  sub_254F99270();

  sub_254F99AA8();
  sub_254F9BB90();

  sub_254F9911C();
  v7 = v4;
  sub_254F99A84(OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_deviceIdsID);

  sub_254F52F94(&qword_27F761AD0);
  v5 = sub_254F4F244();
  MEMORY[0x259C2FA00](v5);

  sub_254F991B4();
  MEMORY[0x259C2FA00](0xD000000000000011, v7);

  sub_254F998D4();
  return 0xD000000000000017;
}

id QueryDecorationOutput.init(spans:queryDecorationToolRetrievalResponse:dynamicEnumerationEntities:context:deviceIdsID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_254F990D4();
  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v10 + 48);
  *&v6[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_spans] = v13;
  v16 = &v6[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse];
  v17 = *(v10 + 16);
  *v16 = *v10;
  *(v16 + 1) = v17;
  *(v16 + 2) = *(v10 + 32);
  *(v16 + 6) = v15;
  *&v6[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_dynamicEnumerationEntities] = v9;
  *&v6[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_context] = v8;
  v18 = &v6[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_deviceIdsID];
  *v18 = v7;
  *(v18 + 1) = a6;
  v20.receiver = v6;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

void sub_254F878F8()
{
  sub_254F77B94();
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F761F10);
  sub_254F4E534();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F686A4();
  v60 = v7;
  v8 = sub_254F52F94(&qword_27F761F18);
  v9 = sub_254F77A18(v8);
  MEMORY[0x28223BE20](v9);
  sub_254F505D4();
  MEMORY[0x28223BE20](v10);
  sub_254F99374();
  MEMORY[0x28223BE20](v11);
  sub_254F99A30();
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v16 = *v4;
  v63 = v0;
  v17 = *(v0 + v16);
  if (!v17)
  {
    goto LABEL_27;
  }

  v59 = v13;
  sub_254F9911C();
  v77[20] = 0xD000000000000036;
  v77[21] = v18;

  v19 = 0;
  v61 = v17;
  for (i = v1; ; v1 = i)
  {
    v20 = *(v17 + 16);
    if (v19 == v20)
    {
      v21 = 1;
    }

    else
    {
      if (v19 >= v20)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        swift_once();
        goto LABEL_23;
      }

      type metadata accessor for SpanMatchedEntity(0);
      sub_254F99798();
      *v60 = v19;
      sub_254F9903C();
      sub_254F93414();
      sub_254F4F25C();
      sub_254F98DAC();
      v21 = 0;
      ++v19;
    }

    sub_254F4E598(v2, v21, 1, v5);
    sub_254F4F698();
    sub_254F98DAC();
    if (sub_254F4E5C0(v15, 1, v5) == 1)
    {
      break;
    }

    v22 = &v15[*(v5 + 48)];
    sub_254F997F8();
    v24 = *&v22[v23];

    sub_254F99024();
    sub_254F92D68();
    if (*(v24 + 16))
    {
      sub_254F99BAC();

      sub_254F94A88(v77, &v64);

      sub_254F94AC0(v77);
    }

    else
    {

      sub_254F99600();
    }

    v25 = sub_254F99628();
    sub_254F99B2C(v25, v26, v27, v28, v29, v30, v31, v32, v59, v60, v61, i, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);

    v33 = sub_254F994A0();
    MEMORY[0x259C2FA00](v33);

    v17 = v61;
  }

  MEMORY[0x259C2FA00](0x6B6E61522D2D2D0ALL, 0xEE002D2D2D206465);

  v34 = 0;
  while (1)
  {
    v35 = *(v17 + 16);
    if (v34 == v35)
    {
      v36 = 1;
      v37 = v59;
    }

    else
    {
      if (v34 >= v35)
      {
        goto LABEL_29;
      }

      type metadata accessor for SpanMatchedEntity(0);
      sub_254F99798();
      *v60 = v34;
      sub_254F9903C();
      sub_254F93414();
      v37 = v59;
      sub_254F98DAC();
      v36 = 0;
      ++v34;
    }

    sub_254F4E598(v37, v36, 1, v5);
    sub_254F99AB4();
    sub_254F98DAC();
    if (sub_254F4E5C0(v1, 1, v5) == 1)
    {
      break;
    }

    v38 = v1 + *(v5 + 48);
    sub_254F997F8();
    v40 = *(v38 + v39);

    sub_254F99024();
    sub_254F92D68();
    if (*(v40 + 16))
    {
      sub_254F99BAC();

      sub_254F94A88(v77, &v64);

      sub_254F94AC0(v77);
    }

    else
    {

      sub_254F99600();
    }

    v41 = sub_254F99628();
    sub_254F99B2C(v41, v42, v43, v44, v45, v46, v47, v48, v59, v60, v61, i, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);

    v49 = sub_254F994A0();
    MEMORY[0x259C2FA00](v49);

    v17 = v61;
    v1 = i;
  }

  if (qword_280C45318 != -1)
  {
    goto LABEL_30;
  }

LABEL_23:
  v50 = sub_254F9B7F0();
  sub_254F4DED0(v50, qword_280C45320);

  v51 = sub_254F9B7D0();
  v52 = sub_254F9BB10();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v77[0] = v54;
    *v53 = 136315138;
    v55 = sub_254F99990();
    v58 = sub_254F7AD30(v55, v56, v57);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_254F4C000, v51, v52, "%s", v53, 0xCu);
    sub_254F4DA5C(v54);
    sub_254F99C34();
    sub_254F99C34();
  }

  else
  {
  }

LABEL_27:
  sub_254F77BAC();
}

void sub_254F87ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_254F99728();
  a25 = v26;
  a26 = v27;
  v41 = v28;
  v42 = v29;
  v31 = v30;
  v33 = v32;
  a13 = v34;
  a13 = sub_254F9BE20();
  a14 = v35;
  a11 = 32;
  a12 = 0xE100000000000000;
  sub_254F98D58();
  sub_254F99308(4, &a11);

  a13 = v33;
  a14 = v31;
  a11 = 32;
  a12 = 0xE100000000000000;
  v36 = sub_254F99308(65, &a11);
  v38 = v37;
  a13 = v41;
  a14 = v42;
  a11 = 32;
  a12 = 0xE100000000000000;
  sub_254F99308(40, &a11);
  a13 = 8202;
  a14 = 0xE200000000000000;
  v39 = sub_254F99984();
  MEMORY[0x259C2FA00](v39);

  sub_254F998A0();
  MEMORY[0x259C2FA00](v36, v38);

  sub_254F998A0();
  v40 = sub_254F4EB58();
  MEMORY[0x259C2FA00](v40);

  sub_254F998A0();
  sub_254F9970C();
}

uint64_t sub_254F88048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E617073 && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000024 && 0x8000000254FA7530 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x8000000254FA7560 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6449656369766564 && a2 == 0xEB00000000444973)
        {

          return 4;
        }

        else
        {
          v10 = sub_254F9BE30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_254F881F4(char a1)
{
  result = 0x736E617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    case 4:
      result = 0x6449656369766564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F882A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F88048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F882D0(uint64_t a1)
{
  v2 = sub_254F940FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8830C(uint64_t a1)
{
  v2 = sub_254F940FC();

  return MEMORY[0x2821FE720](a1, v2);
}

id _s22IntelligenceFlowShared20QueryDecorationInputCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void QueryDecorationOutput.encode(to:)()
{
  sub_254F99C20();
  sub_254F992B4();
  sub_254F52F94(&qword_27F761BC0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v2);
  sub_254F4E558();
  sub_254F98F98();
  sub_254F940FC();
  sub_254F4F1BC();
  sub_254F52F94(&qword_27F761B78);
  sub_254F93C64();
  sub_254F98F14();
  sub_254F9BD80();
  if (!v1)
  {
    v3 = sub_254F98F70(v0 + OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_queryDecorationToolRetrievalResponse);
    v10 = sub_254F99948(v3, v4, v5, v6, v7, v8, v9);
    sub_254F93B58(v10, v11);
    sub_254F93D38();
    sub_254F9913C();
    sub_254F9BD80();
    sub_254F99AEC();
    sub_254F995B0();
    sub_254F52F94(&qword_27F761B80);
    sub_254F93DF0();
    sub_254F98F14();
    sub_254F9BD80();
    sub_254F993E0();
    sub_254F52F94(&qword_27F761270);
    sub_254F939F0();
    sub_254F98F14();
    sub_254F9BD80();
    sub_254F4F22C(4);
    sub_254F9913C();
    sub_254F9BD40();
  }

  v12 = sub_254F4F36C();
  v13(v12);
  sub_254F99584();
  sub_254F99C0C();
}

void QueryDecorationOutput.__allocating_init(from:)()
{
  sub_254F99868();
  sub_254F996DC();
  QueryDecorationOutput.init(from:)();
}

void QueryDecorationOutput.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_254F52F94(&qword_27F761BC8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F778C8();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F940FC();
  sub_254F994AC();
  sub_254F9BF10();
  if (v1)
  {
    sub_254F4DA5C(v3);
    sub_254F99BEC();
  }

  else
  {
    sub_254F52F94(&qword_27F761B78);
    sub_254F93EF8();
    sub_254F4E39C();
    sub_254F9BC90();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_spans] = v11;
    sub_254F93FAC();
    sub_254F99110();
    sub_254F9BC90();
    sub_254F99670(v12);
    sub_254F52F94(&qword_27F761B80);
    sub_254F995B0();
    sub_254F94000();
    sub_254F4E39C();
    sub_254F9BC90();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_dynamicEnumerationEntities] = v11;
    sub_254F52F94(&qword_27F761270);
    sub_254F993E0();
    sub_254F93AA4();
    sub_254F4E39C();
    sub_254F9BC90();
    *&v0[OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_context] = v11;
    sub_254F9991C(4);
    v5 = sub_254F9BC50();
    sub_254F99640(v5, v6, OBJC_IVAR____TtC22IntelligenceFlowShared21QueryDecorationOutput_deviceIdsID);
    v10.receiver = v0;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_init);
    v7 = sub_254F98FD4();
    v8(v7);
    sub_254F4DA5C(v3);
  }

  sub_254F77C44();
  sub_254F4F348();
}

void sub_254F88984(void *a1@<X8>)
{
  QueryDecorationOutput.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t QueryDecorationToolRetrievalResponse.originalSubQuery.setter()
{
  sub_254F5653C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t QueryDecorationToolRetrievalResponse.rewrittenQuery.setter()
{
  sub_254F5653C();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t QueryDecorationToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t QueryDecorationToolRetrievalResponse.types.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t QueryDecorationToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t static QueryDecorationToolRetrievalResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_254F9BE30() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v5 || v3 != v6)
  {
    sub_254F9993C();
    if ((sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  if (v4 != v7)
  {
    return 0;
  }

  v10 = sub_254F99AC0();
  sub_254F54BD8(v10, v11);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = sub_254F4E364();

  return sub_254F88C94(v13, v14);
}

uint64_t sub_254F88C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F9B8D0();
  v78 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v58 - v8;
  v77 = sub_254F9B8F0();
  v68 = *(v77 - 8);
  v9 = MEMORY[0x28223BE20](v77);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = &v58 - v11;
  v12 = sub_254F52F94(&qword_27F761EE8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v71 = &v58 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v70 = v15;
  v65 = v7;
  v66 = a2;
  v17 = 0;
  v62 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v59 = (v21 + 63) >> 6;
  v60 = v19;
  v61 = v68 + 16;
  v75 = (v68 + 32);
  v73 = v78 + 16;
  v74 = (v78 + 32);
  v63 = (v68 + 8);
  v64 = (v78 + 8);
  while (v23)
  {
    v72 = (v23 - 1) & v23;
    v24 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_13:
    v29 = v62;
    v31 = v67;
    v30 = v68;
    v32 = v77;
    (*(v68 + 16))(v67, *(v62 + 48) + *(v68 + 72) * v24, v77);
    v33 = *(v29 + 56);
    v34 = v78;
    v35 = v76;
    (*(v78 + 16))(v76, v33 + *(v78 + 72) * v24, v4);
    v36 = sub_254F52F94(&qword_27F761EF0);
    v37 = *(v36 + 48);
    v38 = *(v30 + 32);
    v39 = v70;
    v38(v70, v31, v32);
    (*(v34 + 32))(v39 + v37, v35, v4);
    sub_254F4E598(v39, 0, 1, v36);
    v25 = v71;
    v23 = v72;
LABEL_14:
    sub_254F98DAC();
    v40 = sub_254F52F94(&qword_27F761EF0);
    v41 = sub_254F4E5C0(v25, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *(v40 + 48);
    v44 = v4;
    v45 = v69;
    v46 = v77;
    (*v75)(v69, v25, v77);
    v47 = v65;
    (*v74)(v65, v25 + v43, v44);
    v48 = v66;
    v49 = sub_254F906C0(v45);
    v51 = v50;
    (*v63)(v45, v46);
    if ((v51 & 1) == 0)
    {
      (*v64)(v47, v44);
      return 0;
    }

    v52 = v78;
    v53 = *(v48 + 56) + *(v78 + 72) * v49;
    v54 = v76;
    (*(v78 + 16))(v76, v53, v44);
    sub_254F505E4(&qword_27F761EF8, MEMORY[0x277D72B90]);
    v55 = sub_254F9B950();
    v56 = *(v52 + 8);
    v56(v54, v44);
    result = (v56)(v47, v44);
    v4 = v44;
    if ((v55 & 1) == 0)
    {
      return v42;
    }
  }

  v26 = v70;
  v25 = v71;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v59)
    {
      v57 = sub_254F52F94(&qword_27F761EF0);
      sub_254F4E598(v26, 1, 1, v57);
      v23 = 0;
      goto LABEL_14;
    }

    v28 = *(v60 + 8 * v27);
    ++v17;
    if (v28)
    {
      v72 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_254F89258(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000254FA76B0 == a2;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574746972776572 && a2 == 0xEE0079726575516ELL;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6576656972746572 && a2 == 0xEE00736C6F6F5464;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7365707974 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_254F9BE30();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_254F89414(char a1)
{
  result = 0x6574746972776572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E656469666E6F63;
      break;
    case 3:
      result = 0x6576656972746572;
      break;
    case 4:
      result = 0x7365707974;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_254F894D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F89258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F894FC(uint64_t a1)
{
  v2 = sub_254F94150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F89538(uint64_t a1)
{
  v2 = sub_254F94150();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryDecorationToolRetrievalResponse.encode(to:)()
{
  sub_254F99444();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F761BD0);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F94150();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F4F698();
  sub_254F9BDB0();
  if (!v0)
  {
    sub_254F4E2F0();
    sub_254F9BDB0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F52F94(&qword_27F761BD8);
    sub_254F941A4();
    sub_254F9909C();
    sub_254F9BE00();
    sub_254F52F94(&qword_27F761BE0);
    sub_254F94258();
    sub_254F9909C();
    sub_254F9BE00();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F99428();
}

void QueryDecorationToolRetrievalResponse.init(from:)()
{
  sub_254F99444();
  v2 = v1;
  v4 = v3;
  sub_254F52F94(&qword_27F761BE8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_254F99658();
  sub_254F4EFBC(v6, v7);
  sub_254F94150();
  sub_254F999A8();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v2);
  }

  else
  {
    v8 = sub_254F99B8C();
    v18 = v9;
    v10 = sub_254F99B8C();
    v17 = v11;
    v16 = v10;
    LOBYTE(v19) = 2;
    sub_254F642C4();
    sub_254F9BCF0();
    v13 = v12;
    sub_254F52F94(&qword_27F761BD8);
    sub_254F94344();
    sub_254F994F0();
    sub_254F52F94(&qword_27F761BE0);
    sub_254F943F8();
    sub_254F994F0();
    v14 = sub_254F9917C();
    v15(v14);
    *v4 = v8;
    *(v4 + 8) = v18;
    *(v4 + 16) = v16;
    *(v4 + 24) = v17;
    *(v4 + 32) = v13;
    *(v4 + 40) = v19;
    *(v4 + 48) = v19;

    sub_254F4DA5C(v2);
  }

  sub_254F99428();
}

uint64_t ToolRetrievalType.identifier.getter()
{
  sub_254F77918();
  sub_254F9B8F0();
  sub_254F4E534();
  v0 = sub_254F4E364();

  return v1(v0);
}

uint64_t ToolRetrievalType.identifier.setter()
{
  sub_254F778A0();
  sub_254F9B8F0();
  sub_254F4E534();
  v1 = sub_254F997BC();

  return v2(v1, v0);
}

uint64_t sub_254F89B5C@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  a2(0);
  sub_254F4E534();
  v9 = *(v8 + 16);

  return v9(a3, v3 + v6, v7);
}

uint64_t sub_254F89C0C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v6 = *(a2(0) + 20);
  a3(0);
  sub_254F4E880();
  v8 = *(v7 + 40);

  return v8(v3 + v6, a1);
}

uint64_t ToolRetrievalType.definition.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for ToolRetrievalType(v0);
  return sub_254F4F68C();
}

uint64_t ToolRetrievalType.init(identifier:definition:)()
{
  sub_254F50B9C();
  v3 = v2;
  sub_254F9B8F0();
  sub_254F4E880();
  (*(v4 + 32))(v3, v1);
  v5 = *(type metadata accessor for ToolRetrievalType(0) + 20);
  sub_254F9B8D0();
  sub_254F4E880();
  v7 = *(v6 + 32);

  return v7(v3 + v5, v0);
}

uint64_t static ToolRetrievalType.== infix(_:_:)()
{
  sub_254F50B9C();
  if ((sub_254F9B8E0() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for ToolRetrievalType(0) + 20);

  return MEMORY[0x2821DB1F8](v1 + v2, v0 + v2);
}

uint64_t sub_254F89DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F89E9C(char a1)
{
  if (a1)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_254F89EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F89DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F89F08(uint64_t a1)
{
  v2 = sub_254F94504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F89F44(uint64_t a1)
{
  v2 = sub_254F94504();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolRetrievalType.encode(to:)()
{
  sub_254F99C20();
  sub_254F52F94(&qword_27F761BF0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F4FC44();
  sub_254F98F98();
  sub_254F94504();
  sub_254F9975C();
  sub_254F9BF20();
  sub_254F9B8F0();
  sub_254F9921C();
  sub_254F505E4(v2, v3);
  sub_254F4EFF0();
  sub_254F4EFE0();
  sub_254F9BE00();
  if (!v0)
  {
    type metadata accessor for ToolRetrievalType(0);
    sub_254F77AF8();
    sub_254F9B8D0();
    sub_254F4F16C();
    sub_254F505E4(v4, v5);
    sub_254F4EFE0();
    sub_254F9BE00();
  }

  v6 = sub_254F99930();
  v7(v6);
  sub_254F99584();
  sub_254F99C0C();
}

void ToolRetrievalType.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v24 = sub_254F9B8D0();
  sub_254F4DF18();
  v22 = v4;
  MEMORY[0x28223BE20](v5);
  sub_254F4F314();
  sub_254F9933C();
  v26 = sub_254F9B8F0();
  sub_254F4DF18();
  v23 = v6;
  MEMORY[0x28223BE20](v7);
  sub_254F4F314();
  sub_254F995F4(v9 - v8);
  v27 = sub_254F52F94(&qword_27F761C00);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v10);
  sub_254F4E558();
  v11 = type metadata accessor for ToolRetrievalType(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v12);
  sub_254F4F314();
  v15 = v14 - v13;
  sub_254F4EFBC(v3, v3[3]);
  sub_254F94504();
  sub_254F4F360();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v3);
  }

  else
  {
    sub_254F9921C();
    sub_254F505E4(v16, v17);
    sub_254F4EFF0();
    sub_254F9BD10();
    (*(v23 + 32))(v15, v25, v26);
    sub_254F77AF8();
    sub_254F4F16C();
    sub_254F505E4(v18, v19);
    sub_254F99A18();
    sub_254F9BD10();
    v20 = sub_254F99358();
    v21(v20, v27);
    (*(v22 + 32))(v15 + *(v11 + 20), v1, v24);
    sub_254F93414();
    sub_254F4DA5C(v3);
    sub_254F92D68();
  }

  sub_254F4F348();
}

unint64_t QueryDecorationLookback.description.getter()
{

  sub_254F52F94(&qword_27F761C08);
  v0 = sub_254F9B9A0();
  MEMORY[0x259C2FA00](v0);

  MEMORY[0x259C2FA00](62, 0xE100000000000000);

  return 0xD000000000000016;
}

uint64_t static QueryDecorationLookback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {

      v4 = sub_254F8F678(v2, v3);

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254F8A5F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000254FA76D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254F9BE30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254F8A698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F8A5F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254F8A6C4(uint64_t a1)
{
  v2 = sub_254F94558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8A700(uint64_t a1)
{
  v2 = sub_254F94558();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryDecorationLookback.encode(to:)()
{
  sub_254F4E9D0();
  sub_254F52F94(&qword_27F761C10);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v0);
  sub_254F4FC44();
  v1 = sub_254F994A0();
  sub_254F4EFBC(v1, v2);
  sub_254F94558();

  sub_254F9975C();
  sub_254F779D0();
  sub_254F9BF20();
  sub_254F52F94(&qword_27F761C20);
  sub_254F945AC();
  sub_254F4EFE0();
  sub_254F9BD80();

  v3 = sub_254F99930();
  v4(v3);
  sub_254F4F348();
}

void QueryDecorationLookback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_254F4E9D0();
  sub_254F99A90();
  sub_254F52F94(&qword_27F761C38);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F50064();
  v14 = sub_254F99664();
  sub_254F4EFBC(v14, v15);
  sub_254F94558();
  sub_254F99A0C();
  sub_254F779D0();
  sub_254F9BF10();
  if (!v11)
  {
    sub_254F52F94(&qword_27F761C20);
    sub_254F94680();
    sub_254F995BC();
    v16 = sub_254F99494();
    v17(v16);
    *v12 = a10;
  }

  sub_254F4DA5C(v10);
  sub_254F997B0();
  sub_254F4F348();
}

void static IdentifiedEntityValue.== infix(_:_:)()
{
  sub_254F77B94();
  v40 = sub_254F9B890();
  sub_254F4DF18();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_254F4F314();
  v5 = sub_254F996AC();
  type metadata accessor for IdentifiedEntityValue(v5);
  sub_254F4E534();
  MEMORY[0x28223BE20](v6);
  sub_254F505D4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = (&v39 - v11);
  v13 = sub_254F52F94(&qword_27F761C50);
  sub_254F77A18(v13);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  sub_254F99364();
  v16 = (v0 + *(v15 + 56));
  sub_254F93414();
  sub_254F99984();
  sub_254F93414();
  sub_254F99658();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_254F4F324();
    sub_254F4F238();
    sub_254F93414();
    v17 = *(sub_254F52F94(&qword_27F761C58) + 48);
    v19 = *(v9 + v17);
    v18 = *(v9 + v17 + 8);
    sub_254F99494();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *(v16 + v17 + 8);
      v39 = *(v16 + v17);
      v21 = v40;
      (*(v3 + 32))(v1, v16, v40);
      sub_254F99990();
      v22 = sub_254F9B880();
      v23 = *(v3 + 8);
      v23(v9, v21);
      if (v22)
      {
        if (v19 != v39 || v18 != v20)
        {
          sub_254F99148();
          v25 = sub_254F9BE30();

          v26 = sub_254F4F25C();
          (v23)(v26);
          if (v25)
          {
            goto LABEL_33;
          }

LABEL_22:
          sub_254F9928C();
          goto LABEL_34;
        }

        v38 = sub_254F4F25C();
        (v23)(v38);
        goto LABEL_33;
      }

      v35 = sub_254F4F25C();
      (v23)(v35);

LABEL_21:

      goto LABEL_22;
    }

    (*(v3 + 8))(v9, v40);
  }

  else
  {
    sub_254F4F324();
    sub_254F93414();
    v28 = *v12;
    v27 = v12[1];
    v30 = v12[2];
    v29 = v12[3];
    sub_254F99494();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = v16[2];
      v31 = v16[3];
      if (v28 == *v16 && v27 == v16[1])
      {
      }

      else
      {
        sub_254F99148();
        v34 = sub_254F9BE30();

        if ((v34 & 1) == 0)
        {

          goto LABEL_21;
        }
      }

      if (v30 != v32 || v29 != v31)
      {
        sub_254F4F33C();
        v37 = sub_254F9BE30();

        if (v37)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

LABEL_33:
      sub_254F9928C();
      goto LABEL_34;
    }
  }

  sub_254F6C10C(v0, &qword_27F761C50);
LABEL_34:
  sub_254F77BAC();
}

uint64_t sub_254F8AD94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F8AE60(char a1)
{
  if (a1)
  {
    return 0x6C61566465707974;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_254F8AE98(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_254F99B4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F99B4C();

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

uint64_t sub_254F8AF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F8AD94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F8AF68(uint64_t a1)
{
  v2 = sub_254F94734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8AFA4(uint64_t a1)
{
  v2 = sub_254F94734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F8AFE0(uint64_t a1)
{
  v2 = sub_254F947DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8B01C(uint64_t a1)
{
  v2 = sub_254F947DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F8B058(uint64_t a1)
{
  v2 = sub_254F94788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8B094(uint64_t a1)
{
  v2 = sub_254F94788();

  return MEMORY[0x2821FE720](a1, v2);
}

void IdentifiedEntityValue.encode(to:)()
{
  sub_254F4E9D0();
  sub_254F52F94(&qword_27F761C60);
  sub_254F4DF18();
  v27 = v3;
  v28 = v2;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F686A4();
  v31 = v5;
  sub_254F993EC();
  sub_254F9B890();
  sub_254F4DF18();
  v29 = v6;
  v30 = v7;
  MEMORY[0x28223BE20](v6);
  sub_254F4F314();
  v10 = v9 - v8;
  sub_254F52F94(&qword_27F761C68);
  sub_254F4DF18();
  v25 = v12;
  v26 = v11;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F4FC44();
  type metadata accessor for IdentifiedEntityValue(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v14);
  sub_254F4F314();
  v15 = sub_254F52F94(&qword_27F761C70);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v16);
  sub_254F4E558();
  v17 = sub_254F99628();
  sub_254F4EFBC(v17, v18);
  sub_254F94734();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F4F324();
  sub_254F93414();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_254F52F94(&qword_27F761C58);
    v19 = sub_254F995A4();
    v20(v19);
    sub_254F94788();
    sub_254F4F3D8();
    sub_254F9BD30();
    sub_254F4E448();
    sub_254F505E4(v21, v22);
    sub_254F99A18();
    sub_254F9BE00();
    if (!v0)
    {
      sub_254F9BDB0();
    }

    (*(v27 + 8))(v31, v28);
    (*(v30 + 8))(v10, v29);
  }

  else
  {
    sub_254F947DC();
    sub_254F4F3D8();
    sub_254F9BD30();
    sub_254F9BDB0();

    if (!v0)
    {
      sub_254F505B0();
      sub_254F9BDB0();
    }

    (*(v25 + 8))(v1, v26);
  }

  v23 = sub_254F99358();
  v24(v23, v15);
  sub_254F997B0();
  sub_254F4F348();
}

uint64_t IdentifiedEntityValue.hash(into:)()
{
  sub_254F778A0();
  sub_254F9B890();
  sub_254F4DF18();
  MEMORY[0x28223BE20](v0);
  sub_254F4F314();
  sub_254F99128();
  type metadata accessor for IdentifiedEntityValue(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v1);
  sub_254F4F314();
  sub_254F99578();
  sub_254F4F324();
  sub_254F93414();
  sub_254F99628();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_254F52F94(&qword_27F761C58);
    v2 = sub_254F4F33C();
    v3(v2);
    MEMORY[0x259C2FEE0](1);
    sub_254F4E448();
    sub_254F505E4(v4, v5);
    sub_254F9964C();
    sub_254F9B930();
    sub_254F99658();
    sub_254F9B9C0();

    v6 = sub_254F99990();
    return v7(v6);
  }

  else
  {
    MEMORY[0x259C2FEE0](0);
    sub_254F4EB58();
    sub_254F9B9C0();

    sub_254F99658();
    sub_254F9B9C0();
  }
}

uint64_t sub_254F8B70C(void (*a1)(_BYTE *))
{
  sub_254F77C0C();
  a1(v3);
  return sub_254F9BF00();
}

void IdentifiedEntityValue.init(from:)()
{
  sub_254F4E9D0();
  v80 = v0;
  v3 = v2;
  v72 = v4;
  v78 = sub_254F52F94(&qword_27F761C98);
  sub_254F4DF18();
  v75 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F686A4();
  sub_254F995F4(v7);
  sub_254F52F94(&qword_27F761CA0);
  sub_254F4DF18();
  v73 = v9;
  v74 = v8;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v10);
  sub_254F686A4();
  v76 = v11;
  v12 = sub_254F52F94(&qword_27F761CA8);
  sub_254F4DF18();
  v77 = v13;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  sub_254F50064();
  v15 = type metadata accessor for IdentifiedEntityValue(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v16);
  sub_254F505D4();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v68 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  v26 = v3[3];
  v79 = v3;
  sub_254F4EFBC(v3, v26);
  sub_254F94734();
  sub_254F99A0C();
  v27 = v80;
  sub_254F9BF10();
  if (!v27)
  {
    v68 = v23;
    v70 = v19;
    v71 = v25;
    v80 = v15;
    v28 = sub_254F9BD20();
    sub_254F673E4(v28, 0);
    v30 = v12;
    if (v31 != v29 >> 1)
    {
      sub_254F9932C();
      v69 = v12;
      sub_254F9999C();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      v36 = *(v33 + v32);
      sub_254F6865C(v32 + 1);
      v38 = v37;
      v40 = v39;
      swift_unknownObjectRelease();
      if (v38 == v40 >> 1)
      {
        if (v36)
        {
          sub_254F94788();
          sub_254F4F3D8();
          sub_254F9BC30();
          sub_254F9B890();
          sub_254F4E448();
          sub_254F505E4(v41, v42);
          sub_254F99A18();
          v43 = v70;
          sub_254F9BD10();
          v76 = sub_254F9BCC0();
          v73 = 0;
          v56 = v55;
          swift_unknownObjectRelease();
          v57 = (v43 + *(sub_254F52F94(&qword_27F761C58) + 48));
          v58 = sub_254F992C4();
          v59(v58);
          v60 = sub_254F996EC();
          v61(v60);
          *v57 = v76;
          v57[1] = v56;
        }

        else
        {
          sub_254F947DC();
          sub_254F4F3D8();
          sub_254F9BC30();
          v50 = sub_254F9BCC0();
          v52 = v51;
          v78 = v50;
          sub_254F505B0();
          v53 = sub_254F9BCC0();
          v54 = (v77 + 8);
          v73 = 0;
          v62 = v53;
          v64 = v63;
          swift_unknownObjectRelease();
          v65 = sub_254F995A4();
          v66(v65);
          (*v54)(v1, v69);
          v67 = v68;
          *v68 = v78;
          v67[1] = v52;
          v67[2] = v62;
          v67[3] = v64;
        }

        swift_storeEnumTagMultiPayload();
        sub_254F92FB4();
        sub_254F92FB4();
        sub_254F4DA5C(v79);
        goto LABEL_11;
      }

      v30 = v69;
    }

    v44 = v80;
    sub_254F9BBB0();
    sub_254F77D00();
    v46 = v45;
    sub_254F52F94(&qword_27F761100);
    *v46 = v44;
    sub_254F9BC40();
    sub_254F77CC8();
    sub_254F778AC();
    (*(v47 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_254F9924C();
    v49(v48, v30);
  }

  sub_254F4DA5C(v79);
LABEL_11:
  sub_254F997B0();
  sub_254F4F348();
}

uint64_t sub_254F8BE90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_254F9BEB0();
  a4(v6);
  return sub_254F9BF00();
}

uint64_t IdentifiedEntityValue.description.getter()
{
  v2 = sub_254F9B890();
  sub_254F4DF18();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_254F4F314();
  v6 = sub_254F996AC();
  type metadata accessor for IdentifiedEntityValue(v6);
  sub_254F4E534();
  MEMORY[0x28223BE20](v7);
  sub_254F4F314();
  sub_254F99578();
  sub_254F4F324();
  sub_254F4F33C();
  sub_254F93414();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_254F52F94(&qword_27F761C58);
    (*(v4 + 32))(v1, v0, v2);
    sub_254F9BBD0();
    MEMORY[0x259C2FA00](32, 0xE100000000000000);
    v8 = sub_254F4F1B0();
    MEMORY[0x259C2FA00](v8);

    v9 = sub_254F9941C();
    v10(v9);
  }

  else
  {
    MEMORY[0x259C2FA00](32, 0xE100000000000000);
    v11 = sub_254F4EB58();
    MEMORY[0x259C2FA00](v11);
  }

  return sub_254F99A78();
}

uint64_t SpanMatchedEntity.matchMetadata.getter()
{
  sub_254F997F8();
}

uint64_t static SpanMatchedEntity.== infix(_:_:)()
{
  sub_254F50B9C();
  v2 = *(type metadata accessor for SpanMatchedEntity(0) + 20);
  v3 = *(v1 + v2);
  if (v3[2])
  {
    v5 = v3[8];
    v4 = v3[9];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v0 + v2);
  if (v6[2])
  {
    v8 = v6[8];
    v7 = v6[9];

    if (v4)
    {
      if (v7)
      {
        if (v5 == v8 && v4 == v7)
        {

          v10 = 1;
        }

        else
        {
          v10 = sub_254F9BE30();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v7)
    {
      v10 = 0;
      goto LABEL_18;
    }
  }

  else if (v4)
  {
LABEL_13:
    v10 = 0;
LABEL_18:

    return v10 & 1;
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t SpanMatchedEntity.init(typedValue:matchMetadata:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_254F98DAC();
  result = sub_254F997F8();
  *(a2 + v5) = a1;
  return result;
}

unint64_t SpanMatchedEntity.debugDescription.getter()
{
  v1 = sub_254F99AC0();
  sub_254F52F94(v1);
  sub_254F4E534();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v2);
  sub_254F50064();
  sub_254F9911C();
  sub_254F9BB90();

  sub_254F9911C();
  v9 = v3;
  sub_254F94830();
  sub_254F99494();
  v4 = sub_254F9B9A0();
  MEMORY[0x259C2FA00](v4);

  sub_254F994D8();
  MEMORY[0x259C2FA00](0xD000000000000010, v9);

  sub_254F9BB90();

  sub_254F9911C();
  v10 = v5;
  sub_254F997F8();
  v7 = MEMORY[0x259C2FAF0](*(v0 + v6), &type metadata for EntityMatch);
  MEMORY[0x259C2FA00](v7);

  sub_254F994D8();
  MEMORY[0x259C2FA00](0xD000000000000013, v10);

  sub_254F998D4();
  return 0xD000000000000013;
}

uint64_t sub_254F8C3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74654D686374616DLL && a2 == 0xED00006174616461)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F8C4B4()
{
  sub_254F99460();
  MEMORY[0x259C2FEE0](v0 & 1);
  return sub_254F9BF00();
}

uint64_t sub_254F8C4F0(char a1)
{
  if (a1)
  {
    return 0x74654D686374616DLL;
  }

  else
  {
    return 0x6C61566465707974;
  }
}

uint64_t sub_254F8C540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F8C3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F8C568(uint64_t a1)
{
  v2 = sub_254F94884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8C5A4(uint64_t a1)
{
  v2 = sub_254F94884();

  return MEMORY[0x2821FE720](a1, v2);
}

void SpanMatchedEntity.encode(to:)()
{
  sub_254F99C20();
  sub_254F992B4();
  sub_254F52F94(&qword_27F761CB0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F4E558();
  sub_254F98F98();
  sub_254F94884();
  sub_254F4F1BC();
  sub_254F9B890();
  sub_254F4E448();
  sub_254F505E4(v2, v3);
  sub_254F4EFF0();
  sub_254F98F84();
  sub_254F9BD80();
  if (!v0)
  {
    type metadata accessor for SpanMatchedEntity(0);
    sub_254F52F94(&qword_27F761CB8);
    sub_254F948D8();
    sub_254F99A24();
    sub_254F98F84();
    sub_254F9BE00();
  }

  v4 = sub_254F4F36C();
  v5(v4);
  sub_254F99584();
  sub_254F99C0C();
}

void SpanMatchedEntity.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v3 = sub_254F52F94(&qword_27F761178);
  sub_254F77A18(v3);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F99774();
  sub_254F52F94(&qword_27F761CC0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F778C8();
  v6 = type metadata accessor for SpanMatchedEntity(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v7);
  sub_254F4F314();
  v10 = v9 - v8;
  v11 = sub_254F4F238();
  sub_254F4EFBC(v11, v12);
  sub_254F94884();
  sub_254F994AC();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v2);
  }

  else
  {
    sub_254F9B890();
    sub_254F4E448();
    sub_254F505E4(v13, v14);
    sub_254F4EFF0();
    sub_254F999F8();
    sub_254F9BC90();
    sub_254F98DAC();
    sub_254F52F94(&qword_27F761CB8);
    sub_254F77AF8();
    sub_254F949B0();
    sub_254F995E8();
    sub_254F999F8();
    sub_254F9BD10();
    v15 = sub_254F99780();
    v16(v15);
    *(v10 + *(v6 + 20)) = v17;
    sub_254F9903C();
    sub_254F93414();
    sub_254F4DA5C(v2);
    sub_254F99024();
    sub_254F92D68();
  }

  sub_254F77C44();
  sub_254F4F348();
}

void EntityMatch.matchProperties.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 116);
  v6 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 28) = v5;
  *(a1 + 32) = v6;
}

void EntityMatch.init(identifier:sourceItemIdentifier:startStrIndex:endStrIndex:userUtterance:entityName:matchScore:matchProperties:matcherType:originAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, char *a26, uint64_t a27, uint64_t a28)
{
  sub_254F99520();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v53 = v39;
  v41 = v40;
  v59 = v42;
  sub_254F9B760();
  sub_254F4DF18();
  v51 = v44;
  v52 = v43;
  MEMORY[0x28223BE20](v43);
  sub_254F4F314();
  sub_254F99578();
  v57 = a25[2];
  v58 = *a25;
  v55 = *a26;
  v56 = *(a25 + 7);

  sub_254F99598();
  v54 = sub_254F9BA00();
  sub_254F99598();
  v45 = sub_254F9BA00();
  if (v36)
  {
    v46 = v53;
  }

  else
  {
    sub_254F9B750();
    v46 = sub_254F9B740();
    v36 = v47;
    (*(v51 + 8))(v28, v52);
  }

  sub_254F996CC();
  *v41 = v59;
  *(v41 + 8) = v34;
  *(v41 + 16) = v46;
  *(v41 + 24) = v36;
  *(v41 + 32) = v59;
  *(v41 + 40) = v34;
  *(v41 + 48) = a23;
  *(v41 + 56) = a24;
  *(v41 + 64) = v54;
  *(v41 + 72) = v45;
  *(v41 + 80) = v38;
  *(v41 + 88) = v58;
  *(v41 + 96) = v48;
  *(v41 + 104) = v57;
  *(v41 + 112) = v49;
  *(v41 + 116) = v56;
  *(v41 + 120) = v50;
  *(v41 + 121) = v55;
  *(v41 + 128) = a27;
  *(v41 + 136) = a28;
  *(v41 + 144) = v32;
  *(v41 + 152) = v30;
  sub_254F9955C();
}

void EntityMatch.init(identifier:sourceItemIdentifier:startIndex:endIndex:userUtterance:entityName:matchScore:matchProperties:matcherType:originAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, char *a26, uint64_t a27, uint64_t a28)
{
  sub_254F99520();
  v57 = v28;
  v58 = v29;
  v55 = v30;
  v56 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_254F9B760();
  sub_254F4DF18();
  MEMORY[0x28223BE20](v44);
  sub_254F4F314();
  sub_254F99578();
  v53 = a25[2];
  v54 = *a25;
  v52 = *(a25 + 7);
  v45 = *a26;

  if (!v37)
  {
    sub_254F9B750();
    v41 = sub_254F9B740();
    v37 = v46;
    v47 = sub_254F99A6C();
    v48(v47);
  }

  sub_254F996CC();
  *v43 = v35;
  *(v43 + 8) = v33;
  *(v43 + 16) = v41;
  *(v43 + 24) = v37;
  *(v43 + 32) = v35;
  *(v43 + 40) = v33;
  *(v43 + 48) = a23;
  *(v43 + 56) = a24;
  *(v43 + 64) = v55;
  *(v43 + 72) = v56;
  *(v43 + 80) = v39;
  *(v43 + 88) = v54;
  *(v43 + 96) = v49;
  *(v43 + 104) = v53;
  *(v43 + 112) = v50;
  *(v43 + 116) = v52;
  *(v43 + 120) = v51;
  *(v43 + 121) = v45;
  *(v43 + 128) = a27;
  *(v43 + 136) = a28;
  *(v43 + 144) = v57;
  *(v43 + 152) = v58;
  sub_254F9955C();
}

void EntityMatch.init(entityName:matchedUserUtterance:)()
{
  sub_254F77B94();
  v2 = v1;
  v4 = v3;
  v18 = v5;
  v19 = v6;
  v8 = v7;
  v9 = sub_254F9B760();
  sub_254F4DF18();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_254F4F314();
  sub_254F99578();
  sub_254F99598();
  v13 = sub_254F9BA00();
  sub_254F99598();
  v14 = sub_254F9BA00();
  sub_254F9B750();
  v15 = sub_254F9B740();
  v17 = v16;
  (*(v11 + 8))(v0, v9);
  *v8 = 0;
  *(v8 + 8) = 0xE000000000000000;
  *(v8 + 16) = v15;
  *(v8 + 24) = v17;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  *(v8 + 48) = v18;
  *(v8 + 56) = v19;
  *(v8 + 64) = v13;
  *(v8 + 72) = v14;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 1;
  *(v8 + 104) = 0;
  *(v8 + 112) = 1;
  *(v8 + 116) = 0;
  *(v8 + 120) = 1;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0xE000000000000000;
  *(v8 + 144) = v4;
  *(v8 + 152) = v2;
  sub_254F77BAC();
}

uint64_t MatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 4);
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 28) = v6;
  *(a6 + 32) = v7;
  return result;
}

void EntityMatch.init(sourceItemIdentifier:startStrIndex:endStrIndex:userUtterance:entityName:matchScore:matchProperties:originAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25)
{
  sub_254F99520();
  v27 = v26;
  v54 = v28;
  v55 = v29;
  v31 = v30;
  v33 = v32;
  v53 = v34;
  v36 = v35;
  v56 = v37;
  v52 = sub_254F9B760();
  sub_254F4DF18();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_254F4F314();
  sub_254F99774();
  if (*(a23 + 33))
  {
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v51 = *(a23 + 7);
    v50 = a23[2];
    v49 = *a23;
  }

  v41 = sub_254F9BA00();
  v42 = sub_254F9BA00();
  sub_254F9B750();
  v43 = sub_254F9B740();
  v45 = v44;
  (*(v39 + 8))(v25, v52);
  sub_254F996CC();
  *v36 = v53;
  *(v36 + 8) = v33;
  *(v36 + 16) = v43;
  *(v36 + 24) = v45;
  *(v36 + 32) = v53;
  *(v36 + 40) = v33;
  *(v36 + 48) = v54;
  *(v36 + 56) = v55;
  *(v36 + 64) = v41;
  *(v36 + 72) = v42;
  *(v36 + 80) = v27;
  *(v36 + 88) = v49;
  *(v36 + 96) = v46;
  *(v36 + 104) = v50;
  *(v36 + 112) = v47;
  *(v36 + 116) = v51;
  *(v36 + 120) = v48;
  *(v36 + 121) = 0;
  *(v36 + 128) = a24;
  *(v36 + 136) = a25;
  *(v36 + 144) = v31;
  *(v36 + 152) = v56;
  sub_254F9955C();
}

unint64_t EntityMatch.description.getter()
{
  sub_254F9BB90();

  sub_254F9911C();
  v0 = sub_254F4EB58();
  MEMORY[0x259C2FA00](v0);
  MEMORY[0x259C2FA00](34, 0xE100000000000000);
  return 0xD000000000000011;
}

unint64_t EntityMatch.matchedUserUtterance.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = __dst[8];
  v2 = sub_254F9B9D0();
  if (v3 & 1) != 0 || (v4 = v2, result = sub_254F9B9D0(), (v6))
  {
    if (qword_280C453B8 != -1)
    {
      swift_once();
    }

    v7 = sub_254F9B7F0();
    sub_254F4DED0(v7, qword_280C453C0);
    sub_254F94A88(__dst, v16);
    v8 = sub_254F9B7D0();
    v9 = sub_254F9BB20();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 134218498;
      *(v10 + 4) = v1;
      *(v10 + 12) = 2048;
      *(v10 + 14) = __dst[9];
      sub_254F94AC0(__dst);
      *(v10 + 22) = 2080;
      v12 = sub_254F9941C();
      *(v10 + 24) = sub_254F7AD30(v12, v13, v14);
      _os_log_impl(&dword_254F4C000, v8, v9, "[EntityMatch] invalid index when getting matchedUserUtterance. startIndex: %ld, endIndex: %ld, userUtterance: %s", v10, 0x20u);
      sub_254F4DA5C(v11);
      sub_254F99C34();
      sub_254F99C34();
    }

    else
    {
      sub_254F94AC0(__dst);
    }

    return sub_254F4E364();
  }

  if (result >> 14 >= v4 >> 14)
  {
    sub_254F99598();
    v15 = sub_254F9BA20();
    MEMORY[0x259C2F9D0](v15);

    return sub_254F4E364();
  }

  __break(1u);
  return result;
}

uint64_t EntityMatch.debugString.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  v11 = v0[16];
  v10 = v0[17];
  v4 = v0[18];
  v3 = v0[19];
  sub_254F9BB90();
  MEMORY[0x259C2FA00](0xD00000000000002ALL, 0x8000000254FA72A0);
  v5 = sub_254F99AB4();
  MEMORY[0x259C2FA00](v5);
  sub_254F9953C();
  MEMORY[0x259C2FA00](v1, v2);
  sub_254F9953C();
  v6 = sub_254F9BE20();
  MEMORY[0x259C2FA00](v6);

  MEMORY[0x259C2FA00](0xD000000000000010, 0x8000000254FA7310);
  v7 = sub_254F9BE20();
  MEMORY[0x259C2FA00](v7);

  MEMORY[0x259C2FA00](0xD000000000000015, 0x8000000254FA7330);
  MEMORY[0x259C2FA00](v4, v3);
  MEMORY[0x259C2FA00](0xD00000000000001CLL, 0x8000000254FA7350);
  v8 = EntityMatch.matchedUserUtterance.getter();
  MEMORY[0x259C2FA00](v8);

  sub_254F9953C();
  sub_254F9BB00();
  MEMORY[0x259C2FA00](0xD000000000000017, 0x8000000254FA7390);
  sub_254F99B6C();
  MEMORY[0x259C2FA00](0xD000000000000013, 0x8000000254FA73B0);
  sub_254F99B6C();
  MEMORY[0x259C2FA00](0xD000000000000019, 0x8000000254FA73D0);
  MEMORY[0x259C2FA00](v11, v10);
  MEMORY[0x259C2FA00](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_254F8D8D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000254FA76F0 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E797469746E65 && a2 == 0xEA0000000000656DLL;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646E497472617473 && a2 == 0xEA00000000007865;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6353686374616DLL && a2 == 0xEA00000000006572;
              if (v11 || (sub_254F9BE30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F7250686374616DLL && a2 == 0xEF73656974726570;
                if (v12 || (sub_254F9BE30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x547265686374616DLL && a2 == 0xEB00000000657079;
                  if (v13 || (sub_254F9BE30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x8000000254FA7710 == a2;
                    if (v14 || (sub_254F9BE30() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6574745572657375 && a2 == 0xED000065636E6172)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_254F9BE30();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_254F8DC50(char a1)
{
  result = 0x6449797469746E65;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x614E797469746E65;
      break;
    case 4:
      result = 0x646E497472617473;
      break;
    case 5:
      result = 0x7865646E49646E65;
      break;
    case 6:
      result = 0x6F6353686374616DLL;
      break;
    case 7:
      result = 0x6F7250686374616DLL;
      break;
    case 8:
      result = 0x547265686374616DLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x6574745572657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F8DDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F8D8D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F8DDEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F8DC48();
  *a1 = result;
  return result;
}

uint64_t sub_254F8DE14(uint64_t a1)
{
  v2 = sub_254F94AF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8DE50(uint64_t a1)
{
  v2 = sub_254F94AF0();

  return MEMORY[0x2821FE720](a1, v2);
}

void EntityMatch.encode(to:)()
{
  sub_254F99444();
  v2 = sub_254F52F94(&qword_27F761CC8);
  sub_254F4DF18();
  v4 = v3;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F4E558();
  v6 = sub_254F995A4();
  sub_254F4EFBC(v6, v7);
  sub_254F94AF0();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F4F698();
  sub_254F9BDB0();
  if (!v0)
  {
    sub_254F4F22C(1);
    sub_254F4E2F0();
    sub_254F9BDB0();
    sub_254F4F22C(2);
    sub_254F99664();
    sub_254F4E2F0();
    sub_254F9BDB0();
    sub_254F4F22C(3);
    sub_254F4E2F0();
    sub_254F9BDB0();
    sub_254F4E2F0();
    sub_254F9BDF0();
    sub_254F4E2F0();
    sub_254F9BDF0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F94B44();
    sub_254F4E2F0();
    sub_254F9BE00();
    sub_254F94B98();
    sub_254F4E2F0();
    sub_254F9BE00();
    sub_254F4F22C(9);
    sub_254F4E2F0();
    sub_254F9BDB0();
    sub_254F4F22C(10);
    sub_254F4E2F0();
    sub_254F9BDB0();
  }

  (*(v4 + 8))(v1, v2);
  sub_254F4FC6C();
  sub_254F99428();
}

void EntityMatch.init(from:)()
{
  sub_254F99444();
  v2 = v1;
  v4 = v3;
  sub_254F52F94(&qword_27F761CD0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F50064();
  sub_254F4EFBC(v2, v2[3]);
  sub_254F94AF0();
  sub_254F99A0C();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v2);
  }

  else
  {
    v32 = v4;
    LOBYTE(v39) = 0;
    sub_254F642AC();
    v6 = sub_254F9BCC0();
    v36 = v7;
    sub_254F4E34C(1);
    v31 = sub_254F9BCC0();
    v35 = v8;
    sub_254F4E34C(2);
    v30 = sub_254F9BCC0();
    v34 = v9;
    sub_254F4E34C(3);
    v29 = sub_254F9BCC0();
    v33 = v10;
    sub_254F4E34C(4);
    v28 = sub_254F9BD00();
    sub_254F4E34C(5);
    v27 = sub_254F9BD00();
    sub_254F4E34C(6);
    sub_254F9BCF0();
    v12 = v11;
    sub_254F94BEC();
    sub_254F642AC();
    sub_254F9BD10();
    v25 = v41;
    v26 = v39;
    v24 = HIDWORD(v42);
    v68 = v40;
    v67 = v42;
    v66 = v43;
    LOBYTE(v38[0]) = 8;
    sub_254F94C40();
    sub_254F642AC();
    sub_254F9BD10();
    sub_254F4E34C(9);
    v13 = sub_254F9BCC0();
    v15 = v14;
    v63 = 10;
    sub_254F642AC();
    v16 = sub_254F9BCC0();
    v23 = v17;
    v18 = v16;
    v19 = sub_254F9968C();
    v20(v19);
    v22 = v6;
    v38[0] = v6;
    v38[1] = v36;
    v38[2] = v31;
    v38[3] = v35;
    v38[4] = v30;
    v38[5] = v34;
    v38[6] = v29;
    v38[7] = v33;
    v38[8] = v28;
    v38[9] = v27;
    LODWORD(v38[10]) = v12;
    v38[11] = v26;
    v37 = v68;
    LOBYTE(v38[12]) = v68;
    v38[13] = v25;
    v21 = v67;
    LOBYTE(v38[14]) = v67;
    HIDWORD(v38[14]) = v24;
    LOBYTE(v6) = v66;
    LOWORD(v38[15]) = v66;
    v38[16] = v13;
    v38[17] = v15;
    v38[18] = v18;
    v38[19] = v23;
    memcpy(v32, v38, 0xA0uLL);
    sub_254F94A88(v38, &v39);
    sub_254F4DA5C(v2);
    v39 = v22;
    v40 = v36;
    v41 = v31;
    v42 = v35;
    v43 = v30;
    v44 = v34;
    v45 = v29;
    v46 = v33;
    v47 = v28;
    v48 = v27;
    v49 = v12;
    v50 = v26;
    v51 = v37;
    v52 = v25;
    v53 = v21;
    v54 = v24;
    v55 = v6;
    v56 = 0;
    v58 = v65;
    v57 = v64;
    v59 = v13;
    v60 = v15;
    v61 = v18;
    v62 = v23;
    sub_254F94AC0(&v39);
  }

  sub_254F99428();
}

uint64_t sub_254F8E79C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F5478616DLL && a2 == 0xED0000746E756F43;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000254FA7730 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000254FA7750 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_254F9BE30();

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

uint64_t sub_254F8E8C4()
{
  sub_254F99460();
  MEMORY[0x259C2FEE0](v0);
  return sub_254F9BF00();
}

uint64_t sub_254F8E900(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6E656B6F5478616DLL;
  }
}

uint64_t sub_254F8E96C()
{
  sub_254F9BEB0();
  sub_254F99C64();
  return sub_254F9BF00();
}

uint64_t sub_254F8E9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F8E79C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F8E9D8(uint64_t a1)
{
  v2 = sub_254F94C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F8EA14(uint64_t a1)
{
  v2 = sub_254F94C94();

  return MEMORY[0x2821FE720](a1, v2);
}

void MatchProperties.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F761CD8);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F94C94();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F9BD70();
  if (!v0)
  {
    sub_254F77AF8();
    sub_254F4E2F0();
    sub_254F9BD70();
    sub_254F9934C();
    sub_254F94CE8();
    sub_254F4E2F0();
    sub_254F9BD80();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F4F348();
}

void MatchProperties.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_254F4E9D0();
  sub_254F99A90();
  sub_254F52F94(&qword_27F761CE0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  sub_254F99488();
  v15 = sub_254F99664();
  sub_254F4EFBC(v15, v16);
  sub_254F94C94();
  sub_254F779D0();
  sub_254F9BF10();
  if (!v12)
  {
    sub_254F50448();
    v17 = sub_254F9BC80();
    v19 = v18;
    sub_254F77AF8();
    sub_254F50448();
    v20 = sub_254F9BC80();
    v24 = v21;
    v25 = v20;
    sub_254F9934C();
    sub_254F94D3C();
    sub_254F9BC90();
    v22 = sub_254F50038();
    v23(v22);
    *v13 = v17;
    *(v13 + 8) = v19 & 1;
    *(v13 + 16) = v25;
    *(v13 + 24) = v24 & 1;
    *(v13 + 28) = a10;
    *(v13 + 32) = a11;
  }

  sub_254F4DA5C(v11);
  sub_254F77C44();
  sub_254F4F348();
}

uint64_t SpanMatchingError.hashValue.getter()
{
  sub_254F77C0C();
  sub_254F99C64();
  return sub_254F9BF00();
}

void static EntityMatchFormatter.format(entities:)()
{
  sub_254F77B94();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    strcpy(v11, "The user has ");
    v11[7] = -4864;
    for (i = (v0 + 32); ; i += 160)
    {
      if (v1 == v2)
      {
        goto LABEL_11;
      }

      memcpy(__dst, i, sizeof(__dst));
      memcpy(v10, i, sizeof(v10));
      if (v1 - 1 == v2)
      {
        break;
      }

      if (v2)
      {
        sub_254F94A88(__dst, &v7);
        v4 = 8236;
        v5 = 0xE200000000000000;
        goto LABEL_8;
      }

      sub_254F94A88(__dst, &v7);
LABEL_9:
      v7 = 0;
      v8 = 0xE000000000000000;
      sub_254F9BB90();

      v7 = 0xD000000000000011;
      v8 = 0x8000000254FA7280;
      v6 = sub_254F9993C();
      MEMORY[0x259C2FA00](v6);
      MEMORY[0x259C2FA00](34, 0xE100000000000000);
      sub_254F94AC0(v10);
      MEMORY[0x259C2FA00](v7, v8);

      ++v2;
    }

    sub_254F94A88(__dst, &v7);
    v4 = 0x20646E61202CLL;
    v5 = 0xE600000000000000;
LABEL_8:
    MEMORY[0x259C2FA00](v4, v5);
    goto LABEL_9;
  }

LABEL_11:
  sub_254F77BAC();
}

uint64_t Array<A>.rankPerTypeByRelevance()()
{

  v1 = sub_254F8F1D0(v0);
  v2 = v1;
  v15 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v10)
  {
    v10 = i;
LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = sub_254F8F51C(v14, *(*(v2 + 48) + (v11 | (v10 << 6))));
    if (*v12)
    {
      sub_254F8F5CC(v12);
    }

    result = (v13)(v14, 0);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v15;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_254F8F1D0(uint64_t a1)
{
  v2 = type metadata accessor for RetrievedContext(0);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v28 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v36 = MEMORY[0x277D84F98];
  v34 = *(a1 + 16);
  v29 = xmmword_254F9F990;
  v30 = a1;
  while (1)
  {
    if (v34 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v8 = v35;
    sub_254F93414();
    v9 = v8[*(v33 + 36)];
    v11 = sub_254F90758(v9);
    v12 = v7[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v7[3] < v14)
    {
      sub_254F911BC(v14, 1);
      v7 = v36;
      v16 = sub_254F90758(v9);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_21;
      }

      v11 = v16;
    }

    if (v15)
    {
      v18 = v7[7];
      sub_254F92FB4();
      v19 = *(v18 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v18 + 8 * v11) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_254F90084(0, *(v19 + 16) + 1, 1, v19);
        *(v18 + 8 * v11) = v19;
      }

      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_254F90084(v21 > 1, v22 + 1, 1, v19);
        *(v18 + 8 * v11) = v19;
      }

      *(v19 + 16) = v22 + 1;
      sub_254F92FB4();
      a1 = v30;
    }

    else
    {
      sub_254F52F94(&qword_27F761EC0);
      v23 = swift_allocObject();
      *(v23 + 16) = v29;
      sub_254F92FB4();
      v7[(v11 >> 6) + 8] |= 1 << v11;
      *(v7[6] + v11) = v9;
      *(v7[7] + 8 * v11) = v23;
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v7[2] = v26;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_254F9BE50();
  __break(1u);
  return result;
}

void (*sub_254F8F51C(void *a1, uint64_t a2))(void *a1)
{
  v4 = sub_254F9306C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_254F91468(v4, a2);
  return sub_254F8F580;
}

void sub_254F8F580(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_254F8F5CC(size_t *a1)
{
  v2 = *(type metadata accessor for RetrievedContext(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_254F98CF0(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_254F91558(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_254F8F678(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F9B890();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254F52F94(&qword_27F761C50);
  MEMORY[0x28223BE20](v8);
  v76 = &v62 - v9;
  v10 = type metadata accessor for IdentifiedEntityValue(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v74 = &v62 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v83 = &v62 - v20;
  result = MEMORY[0x28223BE20](v19);
  v24 = &v62 - v23;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v25 = 0;
  v26 = a1 + 56;
  v27 = 1 << *(a1 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(a1 + 56);
  v30 = (v27 + 63) >> 6;
  v82 = a2 + 56;
  v72 = (v5 + 8);
  v70 = (v5 + 32);
  v71 = v7;
  v73 = v8;
  v78 = v13;
  v79 = v10;
  v77 = v18;
  v66 = a1;
  v75 = v4;
  v65 = v22;
  v64 = v24;
  v63 = a1 + 56;
  v62 = v30;
  v69 = a2;
  if (!v29)
  {
    goto LABEL_8;
  }

  do
  {
    v67 = (v29 - 1) & v29;
LABEL_13:
    v68 = v25;
    v81 = *(v22 + 72);
    sub_254F93414();
    sub_254F92FB4();
    sub_254F9BEB0();
    IdentifiedEntityValue.hash(into:)();
    v33 = sub_254F9BF00();
    v34 = -1 << *(a2 + 32);
    v35 = v33 & ~v34;
    v36 = v76;
    if (((*(v82 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
LABEL_50:
      sub_254F92D68();
      return 0;
    }

    v80 = ~v34;
    while (1)
    {
      sub_254F93414();
      v37 = (v36 + *(v8 + 48));
      sub_254F93414();
      sub_254F93414();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v49 = v74;
        sub_254F93414();
        v51 = *v49;
        v50 = v49[1];
        v53 = v49[2];
        v52 = v49[3];
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v54 = *v37;
          v55 = v37[1];
          v57 = v37[2];
          v56 = v37[3];
          if (v51 == v54 && v50 == v55)
          {
          }

          else
          {
            v59 = sub_254F9BE30();

            if ((v59 & 1) == 0)
            {

              sub_254F92D68();
              v8 = v73;
              v13 = v78;
LABEL_41:
              sub_254F92D68();
              goto LABEL_42;
            }
          }

          v60 = v53 == v57 && v52 == v56;
          v8 = v73;
          if (v60)
          {

            goto LABEL_46;
          }

          v61 = sub_254F9BE30();

          sub_254F92D68();
          v13 = v78;
          if (v61)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        sub_254F92D68();

        v13 = v78;
        goto LABEL_27;
      }

      sub_254F93414();
      v38 = *(sub_254F52F94(&qword_27F761C58) + 48);
      v39 = *&v13[v38];
      v40 = *&v13[v38 + 8];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_254F92D68();

      (*v72)(v13, v75);
      v36 = v76;
LABEL_27:
      sub_254F6C10C(v36, &qword_27F761C50);
LABEL_42:
      v35 = (v35 + 1) & v80;
      if (((*(v82 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v42 = *(v37 + v38);
    v41 = *(v37 + v38 + 8);
    v43 = v71;
    v44 = v75;
    (*v70)(v71, v37, v75);
    v45 = sub_254F9B880();
    v46 = *v72;
    (*v72)(v13, v44);
    if ((v45 & 1) == 0)
    {

      v46(v43, v44);
      sub_254F92D68();
      v36 = v76;
      sub_254F92D68();
      v8 = v73;
      v13 = v78;
      a2 = v69;
      goto LABEL_42;
    }

    v47 = v39 == v42 && v40 == v41;
    a2 = v69;
    if (!v47)
    {
      v48 = sub_254F9BE30();

      v46(v71, v75);
      sub_254F92D68();
      v8 = v73;
      v13 = v78;
      v36 = v76;
      if (v48)
      {
        goto LABEL_47;
      }

      goto LABEL_41;
    }

    v46(v71, v75);
    v8 = v73;
LABEL_46:
    sub_254F92D68();
    v13 = v78;
LABEL_47:
    sub_254F92D68();
    result = sub_254F92D68();
    v22 = v65;
    v25 = v68;
    v26 = v63;
    v30 = v62;
    v29 = v67;
  }

  while (v67);
LABEL_8:
  v31 = v25;
  while (1)
  {
    v25 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v25 >= v30)
    {
      return 1;
    }

    v32 = *(v26 + 8 * v25);
    ++v31;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_254F8FF7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254F52F94(&qword_27F761F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_254F90084(size_t result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_254F90270(v8, v7);
  v10 = *(type metadata accessor for RetrievedContext(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_254F9036C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_254F90170(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254F52F94(&qword_27F761EC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

size_t sub_254F90270(uint64_t a1, uint64_t a2)
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

  sub_254F52F94(&qword_27F761EC0);
  v4 = *(type metadata accessor for RetrievedContext(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

uint64_t sub_254F9036C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for RetrievedContext(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for RetrievedContext(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_254F90440(char *a1, int64_t a2, char a3)
{
  result = sub_254F90480(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254F90460(void *a1, int64_t a2, char a3)
{
  result = sub_254F90588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254F90480(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254F52F94(&qword_27F761F30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_254F90588(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_254F52F94(&qword_27F761F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254F52F94(&qword_27F761F40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_254F906C0(uint64_t a1)
{
  sub_254F9B8F0();
  sub_254F505E4(&qword_27F761F00, MEMORY[0x277D72D58]);
  v2 = sub_254F9B920();

  return sub_254F907B0(a1, v2);
}

unint64_t sub_254F90758(uint64_t a1)
{
  v2 = a1;
  v3 = sub_254F7B848(*(v1 + 40), a1, ContextType.rawValue.getter);

  return sub_254F9096C(v2, v3);
}

unint64_t sub_254F907B0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_254F9B8F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_254F505E4(&qword_27F761F08, MEMORY[0x277D72D58]);
    v9 = sub_254F9B950();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_254F9096C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE0073746E657645;
      v8 = 0x7261646E656C6163;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000013;
          v7 = 0x8000000254FA5D30;
          break;
        case 2:
          break;
        case 3:
          v8 = 0x4C746E6572727563;
          v7 = 0xEF6E6F697461636FLL;
          break;
        case 4:
          v8 = 0x74536E6F69746F6DLL;
          v7 = 0xEB00000000657461;
          break;
        case 5:
          v8 = 0xD000000000000017;
          v7 = 0x8000000254FA5D70;
          break;
        case 6:
          v8 = 0x49664F746E696F70;
          v7 = 0xEF7473657265746ELL;
          break;
        case 7:
          v8 = 0xD000000000000010;
          v7 = 0x8000000254FA5DA0;
          break;
        case 8:
          v8 = 0xD000000000000010;
          v7 = 0x8000000254FA5DC0;
          break;
        case 9:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000254FA5DE0;
          break;
        case 0xA:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000254FA5E00;
          break;
        case 0xB:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000254FA5E20;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x8000000254FA5E40;
          break;
        case 0xD:
          v8 = 0xD000000000000018;
          v7 = 0x8000000254FA5E60;
          break;
        case 0xE:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000254FA5E80;
          break;
        case 0xF:
          v7 = 0xEB00000000707041;
          goto LABEL_27;
        case 0x10:
          v9 = 0x6E6F73726550;
          goto LABEL_26;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x8000000254FA5EC0;
          break;
        case 0x12:
          v9 = 0x747865544955;
LABEL_26:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          goto LABEL_27;
        case 0x13:
          v8 = 0xD000000000000013;
          v7 = 0x8000000254FA5EE0;
          break;
        case 0x14:
          v8 = 0xD000000000000012;
          v7 = 0x8000000254FA5F00;
          break;
        case 0x15:
          v8 = 0xD000000000000013;
          v7 = 0x8000000254FA5F20;
          break;
        case 0x16:
          v7 = 0xE800000000000000;
          v8 = 0x6C6C61436576696CLL;
          break;
        case 0x17:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000254FA5F40;
          break;
        case 0x18:
          v8 = 0xD000000000000017;
          v7 = 0x8000000254FA5F60;
          break;
        case 0x19:
          v8 = 0xD000000000000016;
          v7 = 0x8000000254FA5F80;
          break;
        case 0x1A:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000254FA5FA0;
          break;
        case 0x1B:
          v8 = 0xD000000000000014;
          v7 = 0x8000000254FA5FC0;
          break;
        case 0x1C:
          v8 = 0xD000000000000014;
          v7 = 0x8000000254FA5FE0;
          break;
        case 0x1D:
          v8 = 0xD000000000000013;
          v7 = 0x8000000254FA6000;
          break;
        case 0x1E:
          v8 = 0xD000000000000013;
          v7 = 0x8000000254FA6020;
          break;
        case 0x1F:
          v7 = 0xEC000000656D6F48;
LABEL_27:
          v8 = 0x6E65657263536E6FLL;
          break;
        case 0x20:
          v8 = 0xD000000000000014;
          v7 = 0x8000000254FA6050;
          break;
        default:
          v8 = 0xD000000000000012;
          v7 = 0x8000000254FA5D10;
          break;
      }

      v10 = 0x7261646E656C6163;
      v11 = 0xEE0073746E657645;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000013;
          v11 = 0x8000000254FA5D30;
          break;
        case 2:
          break;
        case 3:
          v10 = 0x4C746E6572727563;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 4:
          v10 = 0x74536E6F69746F6DLL;
          v11 = 0xEB00000000657461;
          break;
        case 5:
          v10 = 0xD000000000000017;
          v11 = 0x8000000254FA5D70;
          break;
        case 6:
          v10 = 0x49664F746E696F70;
          v11 = 0xEF7473657265746ELL;
          break;
        case 7:
          v10 = 0xD000000000000010;
          v11 = 0x8000000254FA5DA0;
          break;
        case 8:
          v10 = 0xD000000000000010;
          v11 = 0x8000000254FA5DC0;
          break;
        case 9:
          v10 = 0xD00000000000001BLL;
          v11 = 0x8000000254FA5DE0;
          break;
        case 10:
          v10 = 0xD00000000000001ALL;
          v11 = 0x8000000254FA5E00;
          break;
        case 11:
          v10 = 0xD00000000000001CLL;
          v11 = 0x8000000254FA5E20;
          break;
        case 12:
          v10 = 0xD000000000000016;
          v11 = 0x8000000254FA5E40;
          break;
        case 13:
          v10 = 0xD000000000000018;
          v11 = 0x8000000254FA5E60;
          break;
        case 14:
          v10 = 0xD00000000000001CLL;
          v11 = 0x8000000254FA5E80;
          break;
        case 15:
          v11 = 0xEB00000000707041;
          goto LABEL_52;
        case 16:
          v12 = 0x6E6F73726550;
          goto LABEL_51;
        case 17:
          v10 = 0xD000000000000010;
          v11 = 0x8000000254FA5EC0;
          break;
        case 18:
          v12 = 0x747865544955;
LABEL_51:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          goto LABEL_52;
        case 19:
          v10 = 0xD000000000000013;
          v11 = 0x8000000254FA5EE0;
          break;
        case 20:
          v10 = 0xD000000000000012;
          v11 = 0x8000000254FA5F00;
          break;
        case 21:
          v10 = 0xD000000000000013;
          v11 = 0x8000000254FA5F20;
          break;
        case 22:
          v11 = 0xE800000000000000;
          v10 = 0x6C6C61436576696CLL;
          break;
        case 23:
          v10 = 0xD00000000000001ALL;
          v11 = 0x8000000254FA5F40;
          break;
        case 24:
          v10 = 0xD000000000000017;
          v11 = 0x8000000254FA5F60;
          break;
        case 25:
          v10 = 0xD000000000000016;
          v11 = 0x8000000254FA5F80;
          break;
        case 26:
          v10 = 0xD00000000000001BLL;
          v11 = 0x8000000254FA5FA0;
          break;
        case 27:
          v10 = 0xD000000000000014;
          v11 = 0x8000000254FA5FC0;
          break;
        case 28:
          v10 = 0xD000000000000014;
          v11 = 0x8000000254FA5FE0;
          break;
        case 29:
          v10 = 0xD000000000000013;
          v11 = 0x8000000254FA6000;
          break;
        case 30:
          v10 = 0xD000000000000013;
          v11 = 0x8000000254FA6020;
          break;
        case 31:
          v11 = 0xEC000000656D6F48;
LABEL_52:
          v10 = 0x6E65657263536E6FLL;
          break;
        case 32:
          v10 = 0xD000000000000014;
          v11 = 0x8000000254FA6050;
          break;
        default:
          v10 = 0xD000000000000012;
          v11 = 0x8000000254FA5D10;
          break;
      }

      if (v8 == v10 && v7 == v11)
      {
        break;
      }

      v14 = sub_254F9BE30();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_254F911BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_254F52F94(&qword_27F761EE0);
  v30 = a2;
  result = sub_254F9BC00();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_254F92C60(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v30 & 1) == 0)
    {
    }

    sub_254F9BEB0();
    ContextType.rawValue.getter();
    sub_254F9B9C0();

    result = sub_254F9BF00();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void (*sub_254F91468(void *a1, uint64_t a2))(uint64_t a1)
{
  v4 = sub_254F9306C(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_254F92BE8(v4);
  v4[9] = sub_254F92A04((v4 + 4), a2);
  return sub_254F914F8;
}

void sub_254F914F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_254F91558(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_254F9BE10();
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
        type metadata accessor for RetrievedContext(0);
        v6 = sub_254F9BAE0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RetrievedContext(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_254F9190C(v8, v9, a1, v4);
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
    return sub_254F91688(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_254F91688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for RetrievedContext(0);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v37 = v17;
    v31 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v35 = v19;
      v36 = a3;
      v33 = v22;
      v34 = v21;
      do
      {
        sub_254F93414();
        sub_254F93414();
        v23 = *(v8 + 32);
        if (v16[v23 + 4] == 3)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = *&v16[v23];
        }

        v25 = &v12[v23];
        v26 = v25[4];
        v27 = *v25;
        if (v26 == 3)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v27;
        }

        sub_254F92D68();
        result = sub_254F92D68();
        if (v28 >= v24)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return result;
        }

        sub_254F92FB4();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_254F92FB4();
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v36 + 1;
      v19 = v35 + v31;
      v21 = v34 - 1;
      v22 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_254F9190C(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v131 = a1;
  v8 = type metadata accessor for RetrievedContext(0);
  v140 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v144 = &v126 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v145 = &v126 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v126 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v138 = &v126 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v126 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v128 = &v126 - v23;
  result = MEMORY[0x28223BE20](v22);
  v127 = &v126 - v25;
  v141 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
    v29 = v4;
LABEL_119:
    v5 = *v131;
    if (!*v131)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v8 = v29;
    if (result)
    {
LABEL_121:
      v120 = (v28 + 16);
      v121 = *(v28 + 16);
      for (i = v28; v121 >= 2; v28 = i)
      {
        if (!*v141)
        {
          goto LABEL_158;
        }

        v122 = (v28 + 16 * v121);
        v28 = *v122;
        v123 = &v120[2 * v121];
        v124 = v123[1];
        sub_254F923C8(*v141 + *(v140 + 72) * *v122, *v141 + *(v140 + 72) * *v123, *v141 + *(v140 + 72) * v124, v5);
        if (v8)
        {
          break;
        }

        if (v124 < v28)
        {
          goto LABEL_146;
        }

        if (v121 - 2 >= *v120)
        {
          goto LABEL_147;
        }

        *v122 = v28;
        v122[1] = v124;
        v125 = *v120 - v121;
        if (*v120 < v121)
        {
          goto LABEL_148;
        }

        v121 = *v120 - 1;
        result = memmove(v123, v123 + 2, 16 * v125);
        *v120 = v121;
      }
    }

LABEL_155:
    result = sub_254F92910(v28);
    v28 = result;
    goto LABEL_121;
  }

  v126 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v146 = v8;
  v29 = v4;
  while (1)
  {
    v30 = v27;
    v31 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v130 = v29;
      v32 = *v141;
      v33 = *(v140 + 72);
      v143 = v27 + 1;
      v34 = v32 + v33 * v31;
      v136 = v32;
      v5 = v127;
      v139 = v26;
      sub_254F93414();
      v35 = v30;
      v36 = v128;
      sub_254F93414();
      v37 = *(v8 + 32);
      if (*(v5 + v37 + 4) == 3)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = *(v5 + v37);
      }

      v39 = &v36[v37];
      v40 = v39[4];
      v41 = *v39;
      if (v40 == 3)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = v41;
      }

      sub_254F92D68();
      result = sub_254F92D68();
      v43 = v139;
      v129 = v35;
      v44 = v35 + 2;
      i = v33;
      v45 = v136 + v33 * (v35 + 2);
      while (1)
      {
        v46 = v44;
        if (++v143 >= v43)
        {
          break;
        }

        v47 = v137;
        sub_254F93414();
        v5 = v138;
        sub_254F93414();
        v48 = *(v146 + 32);
        if (v47[v48 + 4] == 3)
        {
          v49 = 0.0;
        }

        else
        {
          v49 = *&v47[v48];
        }

        v50 = v5 + v48;
        v51 = *(v50 + 4);
        v52 = *v50;
        if (v51 == 3)
        {
          v53 = 0.0;
        }

        else
        {
          v53 = v52;
        }

        sub_254F92D68();
        result = sub_254F92D68();
        v43 = v139;
        v45 += i;
        v34 += i;
        v44 = v46 + 1;
        if (v42 < v38 == v53 >= v49)
        {
          goto LABEL_21;
        }
      }

      v143 = v43;
LABEL_21:
      v29 = v130;
      if (v42 >= v38)
      {
        v31 = v143;
        v30 = v129;
LABEL_43:
        v8 = v146;
        goto LABEL_44;
      }

      v31 = v143;
      v8 = v129;
      if (v143 < v129)
      {
        goto LABEL_152;
      }

      if (v129 >= v143)
      {
        v30 = v129;
        goto LABEL_43;
      }

      v5 = v28;
      if (v43 >= v46)
      {
        v54 = v46;
      }

      else
      {
        v54 = v43;
      }

      v55 = i * (v54 - 1);
      v56 = i * v54;
      v57 = v129 * i;
      do
      {
        if (v8 != --v31)
        {
          v58 = *v141;
          if (!*v141)
          {
            goto LABEL_159;
          }

          sub_254F92FB4();
          v59 = v57 < v55 || v58 + v57 >= (v58 + v56);
          if (v59)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v57 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_254F92FB4();
        }

        ++v8;
        v55 -= i;
        v56 -= i;
        v57 += i;
      }

      while (v8 < v31);
      v29 = v130;
      v28 = v5;
      v8 = v146;
      v31 = v143;
      v30 = v129;
    }

LABEL_44:
    v60 = v141[1];
    if (v31 < v60)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_151;
      }

      if (v31 - v30 < v126)
      {
        break;
      }
    }

LABEL_66:
    if (v31 < v30)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v143 = v31;
    if ((result & 1) == 0)
    {
      result = sub_254F90170(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v77 = *(v28 + 16);
    v76 = *(v28 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_254F90170((v76 > 1), v77 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v78;
    v79 = v28 + 32;
    v80 = (v28 + 32 + 16 * v77);
    v81 = v143;
    *v80 = v30;
    v80[1] = v81;
    v139 = *v131;
    if (!v139)
    {
      goto LABEL_160;
    }

    if (v77)
    {
      i = v28;
      while (1)
      {
        v82 = v78 - 1;
        v83 = (v79 + 16 * (v78 - 1));
        v84 = (v28 + 16 * v78);
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v85 = *(v28 + 32);
          v86 = *(v28 + 40);
          v95 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          v88 = v95;
LABEL_87:
          if (v88)
          {
            goto LABEL_137;
          }

          v100 = *v84;
          v99 = v84[1];
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_140;
          }

          v104 = v83[1];
          v105 = v104 - *v83;
          if (__OFSUB__(v104, *v83))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v102, v105))
          {
            goto LABEL_145;
          }

          if (v102 + v105 >= v87)
          {
            if (v87 < v105)
            {
              v82 = v78 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        if (v78 < 2)
        {
          goto LABEL_139;
        }

        v107 = *v84;
        v106 = v84[1];
        v95 = __OFSUB__(v106, v107);
        v102 = v106 - v107;
        v103 = v95;
LABEL_102:
        if (v103)
        {
          goto LABEL_142;
        }

        v109 = *v83;
        v108 = v83[1];
        v95 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v95)
        {
          goto LABEL_144;
        }

        if (v110 < v102)
        {
          goto LABEL_116;
        }

LABEL_109:
        if (v82 - 1 >= v78)
        {
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
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
          goto LABEL_154;
        }

        if (!*v141)
        {
          goto LABEL_157;
        }

        v114 = v17;
        v115 = (v79 + 16 * (v82 - 1));
        v28 = *v115;
        v116 = v79;
        v5 = v82;
        v117 = (v79 + 16 * v82);
        v118 = v117[1];
        sub_254F923C8(*v141 + *(v140 + 72) * *v115, *v141 + *(v140 + 72) * *v117, *v141 + *(v140 + 72) * v118, v139);
        if (v29)
        {
        }

        if (v118 < v28)
        {
          goto LABEL_132;
        }

        v8 = *(i + 16);
        if (v5 > v8)
        {
          goto LABEL_133;
        }

        *v115 = v28;
        v115[1] = v118;
        if (v5 >= v8)
        {
          goto LABEL_134;
        }

        v78 = v8 - 1;
        result = memmove(v117, v117 + 2, 16 * (v8 - 1 - v5));
        v28 = i;
        *(i + 16) = v8 - 1;
        v119 = v8 > 2;
        v8 = v146;
        v79 = v116;
        v17 = v114;
        if (!v119)
        {
          goto LABEL_116;
        }
      }

      v89 = v79 + 16 * v78;
      v90 = *(v89 - 64);
      v91 = *(v89 - 56);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_135;
      }

      v94 = *(v89 - 48);
      v93 = *(v89 - 40);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_136;
      }

      v96 = v84[1];
      v97 = v96 - *v84;
      if (__OFSUB__(v96, *v84))
      {
        goto LABEL_138;
      }

      v95 = __OFADD__(v87, v97);
      v98 = v87 + v97;
      if (v95)
      {
        goto LABEL_141;
      }

      if (v98 >= v92)
      {
        v112 = *v83;
        v111 = v83[1];
        v95 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v95)
        {
          goto LABEL_149;
        }

        if (v87 < v113)
        {
          v82 = v78 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_87;
    }

LABEL_116:
    v26 = v141[1];
    v27 = v143;
    if (v143 >= v26)
    {
      goto LABEL_119;
    }
  }

  v61 = v30 + v126;
  if (__OFADD__(v30, v126))
  {
    goto LABEL_153;
  }

  if (v61 >= v60)
  {
    v61 = v141[1];
  }

  if (v61 < v30)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v31 == v61)
  {
    goto LABEL_66;
  }

  i = v28;
  v130 = v29;
  v62 = *v141;
  v63 = *(v140 + 72);
  v64 = *v141 + v63 * (v31 - 1);
  v65 = -v63;
  v129 = v30;
  v66 = v30 - v31;
  v132 = v63;
  v133 = v61;
  v67 = v62 + v31 * v63;
LABEL_53:
  v143 = v31;
  v135 = v67;
  v136 = v66;
  v139 = v64;
  v68 = v64;
  v5 = v146;
  while (1)
  {
    sub_254F93414();
    v69 = v145;
    sub_254F93414();
    v70 = *(v5 + 32);
    if (v17[v70 + 4] == 3)
    {
      v71 = 0.0;
    }

    else
    {
      v71 = *&v17[v70];
    }

    v72 = &v69[v70];
    v73 = v72[4];
    v74 = *v72;
    if (v73 == 3)
    {
      v75 = 0.0;
    }

    else
    {
      v75 = v74;
    }

    sub_254F92D68();
    result = sub_254F92D68();
    if (v75 >= v71)
    {
LABEL_64:
      v31 = v143 + 1;
      v64 = v139 + v132;
      v66 = v136 - 1;
      v67 = v135 + v132;
      if (v143 + 1 == v133)
      {
        v31 = v133;
        v29 = v130;
        v28 = i;
        v8 = v146;
        v30 = v129;
        goto LABEL_66;
      }

      goto LABEL_53;
    }

    if (!v62)
    {
      break;
    }

    sub_254F92FB4();
    v5 = v146;
    swift_arrayInitWithTakeFrontToBack();
    sub_254F92FB4();
    v68 += v65;
    v67 += v65;
    v59 = __CFADD__(v66++, 1);
    if (v59)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_254F923C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for RetrievedContext(0);
  v9 = MEMORY[0x28223BE20](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v18 = &v59 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_73;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_74;
  }

  v24 = (a2 - a1) / v20;
  v68 = a4;
  v69 = a1;
  if (v24 >= v22 / v20)
  {
    v63 = a1;
    v34 = v22 / v20;
    sub_254F9036C(a2, v22 / v20, a4);
    v64 = a4;
    v35 = a4 + v34 * v20;
    v36 = -v20;
    v37 = v35;
    v62 = -v20;
LABEL_43:
    v59 = v37;
    v38 = v37;
    v39 = v63;
    v61 = a2 + v36;
    while (1)
    {
      if (v35 <= v64)
      {
        v69 = a2;
        v67 = v38;
        goto LABEL_71;
      }

      if (a2 <= v39)
      {
        break;
      }

      v60 = v38;
      v40 = a2;
      v41 = v62;
      v42 = v35 + v62;
      v43 = v65;
      v44 = v35;
      sub_254F93414();
      v45 = v8;
      v46 = v66;
      sub_254F93414();
      v47 = v45;
      v48 = *(v45 + 32);
      if (v43[v48 + 4] == 3)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = *&v43[v48];
      }

      v50 = &v46[v48];
      v51 = v50[4];
      v52 = *v50;
      if (v51 == 3)
      {
        v53 = 0.0;
      }

      else
      {
        v53 = v52;
      }

      v54 = a3 + v41;
      sub_254F92D68();
      sub_254F92D68();
      if (v53 < v49)
      {
        if (a3 < v40 || v54 >= v40)
        {
          a2 = v61;
          v8 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          a3 = v54;
          v36 = v62;
          v35 = v44;
        }

        else
        {
          v37 = v60;
          v21 = a3 == v40;
          v57 = v61;
          v36 = v62;
          a2 = v61;
          v8 = v47;
          a3 = v54;
          v35 = v44;
          if (!v21)
          {
            v58 = v60;
            swift_arrayInitWithTakeBackToFront();
            v35 = v44;
            a2 = v57;
            v37 = v58;
          }
        }

        goto LABEL_43;
      }

      v55 = a3 < v44 || v54 >= v44;
      a2 = v40;
      if (v55)
      {
        v8 = v45;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v54;
        v35 = v42;
        v38 = v42;
        v39 = v63;
      }

      else
      {
        v38 = v42;
        v21 = v44 == a3;
        a3 = v54;
        v35 = v42;
        v8 = v45;
        v39 = v63;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v54;
          v35 = v42;
          v38 = v42;
        }
      }
    }

    v69 = a2;
    v67 = v59;
  }

  else
  {
    sub_254F9036C(a1, (a2 - a1) / v20, a4);
    v66 = (a4 + v24 * v20);
    v67 = v66;
    while (a4 < v66 && a2 < a3)
    {
      sub_254F93414();
      sub_254F93414();
      v26 = *(v8 + 32);
      if (v18[v26 + 4] == 3)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = *&v18[v26];
      }

      v28 = &v15[v26];
      v29 = v28[4];
      v30 = *v28;
      if (v29 == 3)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v30;
      }

      sub_254F92D68();
      sub_254F92D68();
      if (v31 >= v27)
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v68 = a4 + v20;
        a4 += v20;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      a1 += v20;
      v69 = a1;
    }
  }

LABEL_71:
  sub_254F92924(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_254F92924(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for RetrievedContext(0);
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

unint64_t (*sub_254F92A04(uint64_t a1, uint64_t a2))(unint64_t result)
{
  v3 = v2;
  *(a1 + 8) = v2;
  *(a1 + 24) = a2;
  v6 = *v2;
  v7 = sub_254F90758(a2);
  *(a1 + 25) = v8 & 1;
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  sub_254F52F94(&qword_27F761ED0);
  if (sub_254F9BBE0())
  {
    v11 = sub_254F90758(a2);
    if ((v10 & 1) == (v12 & 1))
    {
      v9 = v11;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_254F9BE50();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v9;
  if (v10)
  {
    v13 = *(*(*v3 + 56) + 8 * v9);
  }

  else
  {
    v13 = 0;
  }

  *a1 = v13;
  return sub_254F92B1C;
}

unint64_t sub_254F92B1C(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      v4 = *(result + 24);
      v5 = *(result + 16);

      return sub_254F92C1C(v5, v4, v1, v2);
    }
  }

  else if (*(result + 25))
  {
    sub_254F52F94(&qword_27F761270);
    sub_254F98D04();
    v3 = sub_254F4E364();

    return MEMORY[0x2821FD640](v3);
  }

  return result;
}

uint64_t (*sub_254F92BE8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_254F92C10;
}

unint64_t sub_254F92C1C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_254F92C60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254F9DA30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_254F92CC4()
{
  result = qword_280C459E0;
  if (!qword_280C459E0)
  {
    sub_254F55B94(&qword_27F760DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C459E0);
  }

  return result;
}

uint64_t sub_254F92D68()
{
  v1 = sub_254F778A0();
  v2(v1);
  sub_254F4E534();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_254F92DBC()
{
  result = qword_280C46070;
  if (!qword_280C46070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46070);
  }

  return result;
}

unint64_t sub_254F92E10()
{
  result = qword_27F761950;
  if (!qword_27F761950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761950);
  }

  return result;
}

unint64_t sub_254F92E64()
{
  result = qword_280C46048;
  if (!qword_280C46048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46048);
  }

  return result;
}

unint64_t sub_254F92EB8()
{
  result = qword_280C46030;
  if (!qword_280C46030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46030);
  }

  return result;
}

unint64_t sub_254F92F0C()
{
  result = qword_27F761960;
  if (!qword_27F761960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761960);
  }

  return result;
}

unint64_t sub_254F92F60()
{
  result = qword_280C46018;
  if (!qword_280C46018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46018);
  }

  return result;
}

uint64_t sub_254F92FB4()
{
  sub_254F50B9C();
  v1(0);
  sub_254F4E880();
  v2 = sub_254F4E364();
  v3(v2);
  return v0;
}

uint64_t sub_254F93008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedTool.Definition(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_254F9306C(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_254F930C0()
{
  result = qword_280C46088;
  if (!qword_280C46088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46088);
  }

  return result;
}

unint64_t sub_254F93114()
{
  result = qword_280C45170;
  if (!qword_280C45170)
  {
    sub_254F55B94(&qword_27F7619B8);
    sub_254F93198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45170);
  }

  return result;
}

unint64_t sub_254F93198()
{
  result = qword_280C45688;
  if (!qword_280C45688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45688);
  }

  return result;
}

unint64_t sub_254F931EC()
{
  result = qword_280C456C8;
  if (!qword_280C456C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C456C8);
  }

  return result;
}

unint64_t sub_254F93240()
{
  result = qword_27F7619C0;
  if (!qword_27F7619C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7619C0);
  }

  return result;
}

unint64_t sub_254F93294()
{
  result = qword_280C45168;
  if (!qword_280C45168)
  {
    sub_254F55B94(&qword_27F7619B8);
    sub_254F93318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45168);
  }

  return result;
}

unint64_t sub_254F93318()
{
  result = qword_280C45680;
  if (!qword_280C45680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45680);
  }

  return result;
}

unint64_t sub_254F9336C()
{
  result = qword_280C456C0;
  if (!qword_280C456C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C456C0);
  }

  return result;
}

unint64_t sub_254F933C0()
{
  result = qword_27F7619D0;
  if (!qword_27F7619D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7619D0);
  }

  return result;
}

uint64_t sub_254F93414()
{
  sub_254F50B9C();
  v1(0);
  sub_254F4E880();
  v2 = sub_254F4E364();
  v3(v2);
  return v0;
}

uint64_t sub_254F93468(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_254F934D8()
{
  result = qword_27F7619E0;
  if (!qword_27F7619E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7619E0);
  }

  return result;
}

unint64_t sub_254F9352C()
{
  result = qword_27F7619F8;
  if (!qword_27F7619F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7619F8);
  }

  return result;
}

unint64_t sub_254F93580()
{
  result = qword_27F761A48;
  if (!qword_27F761A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761A48);
  }

  return result;
}

unint64_t sub_254F935D4()
{
  result = qword_27F761A50;
  if (!qword_27F761A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761A50);
  }

  return result;
}

unint64_t sub_254F93628()
{
  result = qword_27F761A58;
  if (!qword_27F761A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761A58);
  }

  return result;
}

unint64_t sub_254F9367C()
{
  result = qword_27F761A60;
  if (!qword_27F761A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761A60);
  }

  return result;
}

unint64_t sub_254F936D0()
{
  result = qword_280C45B20;
  if (!qword_280C45B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B20);
  }

  return result;
}

unint64_t sub_254F93724()
{
  result = qword_280C45150;
  if (!qword_280C45150)
  {
    sub_254F55B94(&qword_27F761AE0);
    sub_254F937A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45150);
  }

  return result;
}

unint64_t sub_254F937A8()
{
  result = qword_280C45550;
  if (!qword_280C45550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45550);
  }

  return result;
}

unint64_t sub_254F937FC()
{
  result = qword_280C45560;
  if (!qword_280C45560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45560);
  }

  return result;
}

unint64_t sub_254F93850()
{
  result = qword_280C45148;
  if (!qword_280C45148)
  {
    sub_254F55B94(&qword_27F761AE0);
    sub_254F938D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45148);
  }

  return result;
}

unint64_t sub_254F938D4()
{
  result = qword_280C45540;
  if (!qword_280C45540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45540);
  }

  return result;
}

unint64_t sub_254F93948()
{
  result = qword_280C45C08;
  if (!qword_280C45C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C08);
  }

  return result;
}

unint64_t sub_254F9399C()
{
  result = qword_27F761B10;
  if (!qword_27F761B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761B10);
  }

  return result;
}

unint64_t sub_254F939F0()
{
  result = qword_280C460E0;
  if (!qword_280C460E0)
  {
    sub_254F55B94(&qword_27F761270);
    sub_254F505E4(&qword_280C46268, type metadata accessor for RetrievedContext);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C460E0);
  }

  return result;
}

unint64_t sub_254F93AA4()
{
  result = qword_280C45A00;
  if (!qword_280C45A00)
  {
    sub_254F55B94(&qword_27F761270);
    sub_254F505E4(&qword_280C45D88, type metadata accessor for RetrievedContext);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45A00);
  }

  return result;
}

uint64_t sub_254F93B58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_254F93BBC()
{
  result = qword_27F761B68;
  if (!qword_27F761B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761B68);
  }

  return result;
}

unint64_t sub_254F93C10()
{
  result = qword_27F761B70;
  if (!qword_27F761B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761B70);
  }

  return result;
}

unint64_t sub_254F93C64()
{
  result = qword_280C459F0;
  if (!qword_280C459F0)
  {
    sub_254F55B94(&qword_27F761B78);
    sub_254F505E4(&qword_280C45D50, type metadata accessor for SpanMatchedEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C459F0);
  }

  return result;
}

unint64_t sub_254F93D38()
{
  result = qword_280C45A80;
  if (!qword_280C45A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45A80);
  }

  return result;
}

uint64_t sub_254F93D8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_254F93DF0()
{
  result = qword_280C459E8;
  if (!qword_280C459E8)
  {
    sub_254F55B94(&qword_27F761B80);
    sub_254F505E4(&qword_280C45BF0, type metadata accessor for DynamicEnumerationEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C459E8);
  }

  return result;
}

unint64_t sub_254F93EA4()
{
  result = qword_27F761B90;
  if (!qword_27F761B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761B90);
  }

  return result;
}

unint64_t sub_254F93EF8()
{
  result = qword_280C45160;
  if (!qword_280C45160)
  {
    sub_254F55B94(&qword_27F761B78);
    sub_254F505E4(&qword_280C45668, type metadata accessor for SpanMatchedEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45160);
  }

  return result;
}

unint64_t sub_254F93FAC()
{
  result = qword_280C45538;
  if (!qword_280C45538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45538);
  }

  return result;
}

unint64_t sub_254F94000()
{
  result = qword_280C45158;
  if (!qword_280C45158)
  {
    sub_254F55B94(&qword_27F761B80);
    sub_254F505E4(&qword_280C45558, type metadata accessor for DynamicEnumerationEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45158);
  }

  return result;
}

unint64_t sub_254F940FC()
{
  result = qword_280C45C20;
  if (!qword_280C45C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C20);
  }

  return result;
}

unint64_t sub_254F94150()
{
  result = qword_280C45A98;
  if (!qword_280C45A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45A98);
  }

  return result;
}

unint64_t sub_254F941A4()
{
  result = qword_280C45180;
  if (!qword_280C45180)
  {
    sub_254F55B94(&qword_27F761BD8);
    sub_254F505E4(&qword_280C456B8, type metadata accessor for RetrievedTool);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45180);
  }

  return result;
}

unint64_t sub_254F94258()
{
  result = qword_280C451B0;
  if (!qword_280C451B0)
  {
    sub_254F55B94(&qword_27F761BE0);
    sub_254F505E4(&qword_280C451D0, MEMORY[0x277D72D58]);
    sub_254F505E4(&qword_280C451E0, MEMORY[0x277D72B90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C451B0);
  }

  return result;
}

unint64_t sub_254F94344()
{
  result = qword_280C45178;
  if (!qword_280C45178)
  {
    sub_254F55B94(&qword_27F761BD8);
    sub_254F505E4(&qword_280C456A8, type metadata accessor for RetrievedTool);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45178);
  }

  return result;
}

unint64_t sub_254F943F8()
{
  result = qword_280C451A8;
  if (!qword_280C451A8)
  {
    sub_254F55B94(&qword_27F761BE0);
    sub_254F505E4(&qword_280C451C8, MEMORY[0x277D72D58]);
    sub_254F505E4(&qword_280C451D8, MEMORY[0x277D72B90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C451A8);
  }

  return result;
}

unint64_t sub_254F94504()
{
  result = qword_27F761BF8;
  if (!qword_27F761BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761BF8);
  }

  return result;
}

unint64_t sub_254F94558()
{
  result = qword_27F761C18;
  if (!qword_27F761C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761C18);
  }

  return result;
}

unint64_t sub_254F945AC()
{
  result = qword_27F761C28;
  if (!qword_27F761C28)
  {
    sub_254F55B94(&qword_27F761C20);
    sub_254F505E4(&qword_27F761C30, type metadata accessor for IdentifiedEntityValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761C28);
  }

  return result;
}

unint64_t sub_254F94680()
{
  result = qword_27F761C40;
  if (!qword_27F761C40)
  {
    sub_254F55B94(&qword_27F761C20);
    sub_254F505E4(&qword_27F761C48, type metadata accessor for IdentifiedEntityValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761C40);
  }

  return result;
}

unint64_t sub_254F94734()
{
  result = qword_27F761C78;
  if (!qword_27F761C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761C78);
  }

  return result;
}

unint64_t sub_254F94788()
{
  result = qword_27F761C80;
  if (!qword_27F761C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761C80);
  }

  return result;
}

unint64_t sub_254F947DC()
{
  result = qword_27F761C88;
  if (!qword_27F761C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761C88);
  }

  return result;
}

uint64_t sub_254F94830()
{
  sub_254F50B9C();
  sub_254F52F94(v1);
  sub_254F4E880();
  v2 = sub_254F4E364();
  v3(v2);
  return v0;
}

unint64_t sub_254F94884()
{
  result = qword_280C45D68;
  if (!qword_280C45D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D68);
  }

  return result;
}

unint64_t sub_254F948D8()
{
  result = qword_280C45190;
  if (!qword_280C45190)
  {
    sub_254F55B94(&qword_27F761CB8);
    sub_254F9495C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45190);
  }

  return result;
}

unint64_t sub_254F9495C()
{
  result = qword_280C45920;
  if (!qword_280C45920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45920);
  }

  return result;
}

unint64_t sub_254F949B0()
{
  result = qword_280C45188;
  if (!qword_280C45188)
  {
    sub_254F55B94(&qword_27F761CB8);
    sub_254F94A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45188);
  }

  return result;
}

unint64_t sub_254F94A34()
{
  result = qword_280C45918;
  if (!qword_280C45918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45918);
  }

  return result;
}

unint64_t sub_254F94AF0()
{
  result = qword_280C460A0;
  if (!qword_280C460A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C460A0);
  }

  return result;
}

unint64_t sub_254F94B44()
{
  result = qword_280C456A0;
  if (!qword_280C456A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C456A0);
  }

  return result;
}

unint64_t sub_254F94B98()
{
  result = qword_280C45678;
  if (!qword_280C45678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45678);
  }

  return result;
}

unint64_t sub_254F94BEC()
{
  result = qword_280C45698;
  if (!qword_280C45698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45698);
  }

  return result;
}

unint64_t sub_254F94C40()
{
  result = qword_280C45670;
  if (!qword_280C45670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45670);
  }

  return result;
}

unint64_t sub_254F94C94()
{
  result = qword_280C45DB0[0];
  if (!qword_280C45DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C45DB0);
  }

  return result;
}

unint64_t sub_254F94CE8()
{
  result = qword_280C45958;
  if (!qword_280C45958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45958);
  }

  return result;
}

unint64_t sub_254F94D3C()
{
  result = qword_280C45948;
  if (!qword_280C45948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45948);
  }

  return result;
}

unint64_t sub_254F94D94()
{
  result = qword_27F761CE8;
  if (!qword_27F761CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761CE8);
  }

  return result;
}

unint64_t sub_254F94DEC()
{
  result = qword_27F761CF0;
  if (!qword_27F761CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761CF0);
  }

  return result;
}

unint64_t sub_254F94E44()
{
  result = qword_27F761CF8;
  if (!qword_27F761CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761CF8);
  }

  return result;
}

unint64_t sub_254F94E98()
{
  result = qword_27F761D00;
  if (!qword_27F761D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D00);
  }

  return result;
}

unint64_t sub_254F94EF0()
{
  result = qword_27F761D08;
  if (!qword_27F761D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D08);
  }

  return result;
}

unint64_t sub_254F95020()
{
  result = qword_27F761D18;
  if (!qword_27F761D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D18);
  }

  return result;
}

unint64_t sub_254F95078()
{
  result = qword_280C45548;
  if (!qword_280C45548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45548);
  }

  return result;
}

unint64_t sub_254F950D4()
{
  result = qword_27F761D20;
  if (!qword_27F761D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D20);
  }

  return result;
}

unint64_t sub_254F9512C()
{
  result = qword_27F761D28;
  if (!qword_27F761D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D28);
  }

  return result;
}

unint64_t sub_254F95184()
{
  result = qword_27F761D30;
  if (!qword_27F761D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D30);
  }

  return result;
}

unint64_t sub_254F951DC()
{
  result = qword_27F761D38;
  if (!qword_27F761D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D38);
  }

  return result;
}

unint64_t sub_254F95234()
{
  result = qword_27F761D40;
  if (!qword_27F761D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D40);
  }

  return result;
}

unint64_t sub_254F952D4()
{
  result = qword_280C460C0;
  if (!qword_280C460C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C460C0);
  }

  return result;
}

unint64_t sub_254F9532C()
{
  result = qword_280C45940;
  if (!qword_280C45940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45940);
  }

  return result;
}

unint64_t sub_254F95384()
{
  result = qword_280C45950;
  if (!qword_280C45950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45950);
  }

  return result;
}

unint64_t sub_254F953DC()
{
  result = qword_280C45938;
  if (!qword_280C45938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45938);
  }

  return result;
}

unint64_t sub_254F95434()
{
  result = qword_27F761D48;
  if (!qword_27F761D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D48);
  }

  return result;
}

void sub_254F954B0()
{
  type metadata accessor for RetrievedTool.Definition(319);
  if (v0 <= 0x3F)
  {
    sub_254F9618C(319, &qword_280C459F8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for RetrievedTool.AppSource(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for RetrievedTool.AppSource(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_254F956A4()
{
  v0 = sub_254F9B830();
  if (v1 <= 0x3F)
  {
    v2 = sub_254F9B910();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = type metadata accessor for UIControlTool(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_254F95770()
{
  sub_254F96138(319, &qword_280C45A28, MEMORY[0x277D72238]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_254F95810(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_254F95824(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F95864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254F958CC()
{
  result = sub_254F9B760();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_254F95B9C()
{
  result = sub_254F9B8B0();
  if (v1 <= 0x3F)
  {
    result = sub_254F9B890();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_254F95D14(uint64_t a1, uint64_t a2)
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

uint64_t sub_254F95D30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F95D70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_254F95DF4()
{
  result = sub_254F9B8F0();
  if (v1 <= 0x3F)
  {
    result = sub_254F9B8D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254F95E78(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      return sub_254F77A94(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return sub_254F77A94(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return sub_254F77A94(v4);
}

uint64_t sub_254F95EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_254F95F28()
{
  sub_254F95F9C();
  if (v0 <= 0x3F)
  {
    sub_254F95FF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_254F95F9C()
{
  if (!qword_280C451A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C451A0);
    }
  }
}

void sub_254F95FF8()
{
  if (!qword_280C451F8)
  {
    sub_254F9B890();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C451F8);
    }
  }
}

void sub_254F96088()
{
  sub_254F96138(319, &qword_280C46320, MEMORY[0x277D72A78]);
  if (v0 <= 0x3F)
  {
    sub_254F9618C(319, &qword_280C45A18);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254F96138(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_254F9BB50();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_254F9618C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_254F9BAF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_254F961E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254F961FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F9621C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityMatch.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VersionedQueryDecorationOutput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254F964E4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254F96640(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F9672C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254F77A94(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return sub_254F77A94((*a1 | (v4 << 8)) - 5);
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

      return sub_254F77A94((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_254F77A94(v8);
}

_BYTE *sub_254F967B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F968BC(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_254F4E89C(a1);
}

_BYTE *sub_254F96908(_BYTE *result, int a2, int a3)
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

uint64_t sub_254F969B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254F77A94(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_254F77A94((*a1 | (v4 << 8)) - 4);
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

      return sub_254F77A94((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254F77A94((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_254F77A94(v8);
}

_BYTE *sub_254F96A38(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_254F77A8C(result, v6);
        break;
      case 2:
        result = sub_254F77A84(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_254F4FC54(result, v6);
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
          result = sub_254F779F8(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254F96B48()
{
  result = qword_27F761D60;
  if (!qword_27F761D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D60);
  }

  return result;
}

unint64_t sub_254F96BA0()
{
  result = qword_27F761D68;
  if (!qword_27F761D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D68);
  }

  return result;
}

unint64_t sub_254F96BF8()
{
  result = qword_27F761D70;
  if (!qword_27F761D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D70);
  }

  return result;
}

unint64_t sub_254F96C50()
{
  result = qword_27F761D78;
  if (!qword_27F761D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D78);
  }

  return result;
}

unint64_t sub_254F96CA8()
{
  result = qword_27F761D80;
  if (!qword_27F761D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D80);
  }

  return result;
}

unint64_t sub_254F96D00()
{
  result = qword_27F761D88;
  if (!qword_27F761D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D88);
  }

  return result;
}

unint64_t sub_254F96D58()
{
  result = qword_27F761D90;
  if (!qword_27F761D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D90);
  }

  return result;
}

unint64_t sub_254F96DB0()
{
  result = qword_27F761D98;
  if (!qword_27F761D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761D98);
  }

  return result;
}

unint64_t sub_254F96E08()
{
  result = qword_27F761DA0;
  if (!qword_27F761DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DA0);
  }

  return result;
}

unint64_t sub_254F96E60()
{
  result = qword_27F761DA8;
  if (!qword_27F761DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DA8);
  }

  return result;
}

unint64_t sub_254F96EB8()
{
  result = qword_27F761DB0;
  if (!qword_27F761DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DB0);
  }

  return result;
}

unint64_t sub_254F96F10()
{
  result = qword_27F761DB8;
  if (!qword_27F761DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DB8);
  }

  return result;
}

unint64_t sub_254F96F68()
{
  result = qword_27F761DC0;
  if (!qword_27F761DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DC0);
  }

  return result;
}

unint64_t sub_254F96FC0()
{
  result = qword_27F761DC8;
  if (!qword_27F761DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DC8);
  }

  return result;
}

unint64_t sub_254F97018()
{
  result = qword_27F761DD0;
  if (!qword_27F761DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DD0);
  }

  return result;
}

unint64_t sub_254F97070()
{
  result = qword_27F761DD8;
  if (!qword_27F761DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DD8);
  }

  return result;
}

unint64_t sub_254F970C8()
{
  result = qword_27F761DE0;
  if (!qword_27F761DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DE0);
  }

  return result;
}

unint64_t sub_254F97120()
{
  result = qword_27F761DE8;
  if (!qword_27F761DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DE8);
  }

  return result;
}

unint64_t sub_254F97178()
{
  result = qword_27F761DF0;
  if (!qword_27F761DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DF0);
  }

  return result;
}

unint64_t sub_254F971D0()
{
  result = qword_27F761DF8;
  if (!qword_27F761DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761DF8);
  }

  return result;
}

unint64_t sub_254F97228()
{
  result = qword_27F761E00;
  if (!qword_27F761E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E00);
  }

  return result;
}

unint64_t sub_254F97280()
{
  result = qword_27F761E08;
  if (!qword_27F761E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E08);
  }

  return result;
}

unint64_t sub_254F972D8()
{
  result = qword_27F761E10;
  if (!qword_27F761E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E10);
  }

  return result;
}

unint64_t sub_254F97330()
{
  result = qword_27F761E18;
  if (!qword_27F761E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E18);
  }

  return result;
}

unint64_t sub_254F97388()
{
  result = qword_27F761E20;
  if (!qword_27F761E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E20);
  }

  return result;
}

unint64_t sub_254F973E0()
{
  result = qword_280C45DA0;
  if (!qword_280C45DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45DA0);
  }

  return result;
}

unint64_t sub_254F97438()
{
  result = qword_280C45DA8;
  if (!qword_280C45DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45DA8);
  }

  return result;
}

unint64_t sub_254F97490()
{
  result = qword_280C46090;
  if (!qword_280C46090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46090);
  }

  return result;
}

unint64_t sub_254F974E8()
{
  result = qword_280C46098;
  if (!qword_280C46098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46098);
  }

  return result;
}

unint64_t sub_254F97540()
{
  result = qword_280C45D58;
  if (!qword_280C45D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D58);
  }

  return result;
}

unint64_t sub_254F97598()
{
  result = qword_280C45D60;
  if (!qword_280C45D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45D60);
  }

  return result;
}

unint64_t sub_254F975F0()
{
  result = qword_27F761E28;
  if (!qword_27F761E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E28);
  }

  return result;
}

unint64_t sub_254F97648()
{
  result = qword_27F761E30;
  if (!qword_27F761E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E30);
  }

  return result;
}

unint64_t sub_254F976A0()
{
  result = qword_27F761E38;
  if (!qword_27F761E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E38);
  }

  return result;
}

unint64_t sub_254F976F8()
{
  result = qword_27F761E40;
  if (!qword_27F761E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E40);
  }

  return result;
}

unint64_t sub_254F97750()
{
  result = qword_27F761E48;
  if (!qword_27F761E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E48);
  }

  return result;
}

unint64_t sub_254F977A8()
{
  result = qword_27F761E50;
  if (!qword_27F761E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E50);
  }

  return result;
}

unint64_t sub_254F97800()
{
  result = qword_27F761E58;
  if (!qword_27F761E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E58);
  }

  return result;
}

unint64_t sub_254F97858()
{
  result = qword_27F761E60;
  if (!qword_27F761E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E60);
  }

  return result;
}

unint64_t sub_254F978B0()
{
  result = qword_27F761E68;
  if (!qword_27F761E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E68);
  }

  return result;
}

unint64_t sub_254F97908()
{
  result = qword_27F761E70;
  if (!qword_27F761E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E70);
  }

  return result;
}

unint64_t sub_254F97960()
{
  result = qword_280C45A88;
  if (!qword_280C45A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45A88);
  }

  return result;
}

unint64_t sub_254F979B8()
{
  result = qword_280C45A90;
  if (!qword_280C45A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45A90);
  }

  return result;
}

unint64_t sub_254F97A10()
{
  result = qword_280C45C10;
  if (!qword_280C45C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C10);
  }

  return result;
}

unint64_t sub_254F97A68()
{
  result = qword_280C45C18;
  if (!qword_280C45C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C18);
  }

  return result;
}

unint64_t sub_254F97AC0()
{
  result = qword_27F761E78;
  if (!qword_27F761E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E78);
  }

  return result;
}

unint64_t sub_254F97B18()
{
  result = qword_27F761E80;
  if (!qword_27F761E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E80);
  }

  return result;
}

unint64_t sub_254F97B70()
{
  result = qword_27F761E88;
  if (!qword_27F761E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E88);
  }

  return result;
}

unint64_t sub_254F97BC8()
{
  result = qword_27F761E90;
  if (!qword_27F761E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761E90);
  }

  return result;
}

unint64_t sub_254F97C20()
{
  result = qword_280C45BF8;
  if (!qword_280C45BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45BF8);
  }

  return result;
}

unint64_t sub_254F97C78()
{
  result = qword_280C45C00;
  if (!qword_280C45C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C00);
  }

  return result;
}

unint64_t sub_254F97CD0()
{
  result = qword_280C45C40;
  if (!qword_280C45C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C40);
  }

  return result;
}

unint64_t sub_254F97D28()
{
  result = qword_280C45C48;
  if (!qword_280C45C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C48);
  }

  return result;
}

unint64_t sub_254F97D80()
{
  result = qword_280C45B10;
  if (!qword_280C45B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B10);
  }

  return result;
}

unint64_t sub_254F97DD8()
{
  result = qword_280C45B18;
  if (!qword_280C45B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B18);
  }

  return result;
}

unint64_t sub_254F97E30()
{
  result = qword_280C45AD8;
  if (!qword_280C45AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AD8);
  }

  return result;
}

unint64_t sub_254F97E88()
{
  result = qword_280C45AE0;
  if (!qword_280C45AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AE0);
  }

  return result;
}

unint64_t sub_254F97EE0()
{
  result = qword_280C45AF0;
  if (!qword_280C45AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AF0);
  }

  return result;
}

unint64_t sub_254F97F38()
{
  result = qword_280C45AF8;
  if (!qword_280C45AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AF8);
  }

  return result;
}

unint64_t sub_254F97F90()
{
  result = qword_280C45AB8;
  if (!qword_280C45AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AB8);
  }

  return result;
}

unint64_t sub_254F97FE8()
{
  result = qword_280C45AC0;
  if (!qword_280C45AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AC0);
  }

  return result;
}

unint64_t sub_254F98040()
{
  result = qword_280C45B00;
  if (!qword_280C45B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B00);
  }

  return result;
}

unint64_t sub_254F98098()
{
  result = qword_280C45B08;
  if (!qword_280C45B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45B08);
  }

  return result;
}

unint64_t sub_254F980F0()
{
  result = qword_280C45AA0;
  if (!qword_280C45AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AA0);
  }

  return result;
}

unint64_t sub_254F98148()
{
  result = qword_280C45AA8;
  if (!qword_280C45AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AA8);
  }

  return result;
}

unint64_t sub_254F981A0()
{
  result = qword_280C45AC8;
  if (!qword_280C45AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45AC8);
  }

  return result;
}