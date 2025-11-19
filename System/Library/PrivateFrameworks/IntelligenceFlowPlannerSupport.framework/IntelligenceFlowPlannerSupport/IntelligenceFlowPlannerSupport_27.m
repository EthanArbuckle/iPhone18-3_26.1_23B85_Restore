uint64_t sub_22C09CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911188, &qword_22C2ADEB8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D911188, &qword_22C2ADEB8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911188, &qword_22C2ADEB8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911188, &qword_22C2ADEB8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911188, &qword_22C2ADEB8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911188, &qword_22C2ADEB8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90F260, &qword_22C2AE840);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoPrimitiveAction.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_22BE17D78();
      sub_22C09D290(v10, v11, v12, v13);
    }

    else
    {
      v18 = sub_22BE17D78();
      sub_22C09D498(v18, v19, v20, v21);
    }
  }

  else
  {
    v14 = sub_22BE17D78();
    sub_22C09D08C(v14, v15, v16, v17);
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    v22 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
    sub_22BE235A8(v22);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C09D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C09D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C09D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90F260, &qword_22C2AE840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90F260, &qword_22C2AE840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoPrimitiveAction.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoPrimitiveActionEnum(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE1AEE4();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D90F268, &qword_22C297170);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BE1AC54(v16);
  sub_22BE28764();
  sub_22BE26A1C();
  if (v17)
  {
    sub_22BE23D0C();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D90F260, &qword_22C2AE840);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
      sub_22BE3636C(v19);
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
      v18 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23D0C();
  if (v17)
  {
    sub_22C0B1AA4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D90F268, &qword_22C297170);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoPrimitiveActionEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90F260, &qword_22C2AE840);
  if (&qword_27D90F260)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C09D930(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910980, type metadata accessor for TranscriptProtoPrimitiveAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C09D9B0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C09DA20()
{
  sub_22BE2C988(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction);

  return sub_22C270774();
}

unint64_t sub_22C09DAA0()
{
  result = qword_27D90E758;
  if (!qword_27D90E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90E758);
  }

  return result;
}

unint64_t sub_22C09DAF4()
{
  result = qword_27D90E7D0;
  if (!qword_27D90E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90E7D0);
  }

  return result;
}

unint64_t sub_22C09DB48()
{
  result = qword_27D90E9D0;
  if (!qword_27D90E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90E9D0);
  }

  return result;
}

unint64_t sub_22C09DB9C()
{
  result = qword_27D90EAE0;
  if (!qword_27D90EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EAE0);
  }

  return result;
}

unint64_t sub_22C09DBF0()
{
  result = qword_27D90EE28;
  if (!qword_27D90EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EE28);
  }

  return result;
}

unint64_t sub_22C09DC44()
{
  result = qword_27D90EE90;
  if (!qword_27D90EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EE90);
  }

  return result;
}

unint64_t sub_22C09DC98()
{
  result = qword_27D90EEE0;
  if (!qword_27D90EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EEE0);
  }

  return result;
}

unint64_t sub_22C09DCEC()
{
  result = qword_27D90EEF0;
  if (!qword_27D90EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EEF0);
  }

  return result;
}

unint64_t sub_22C09DD40()
{
  result = qword_27D90EF00;
  if (!qword_27D90EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EF00);
  }

  return result;
}

unint64_t sub_22C09DD94()
{
  result = qword_27D90EF28;
  if (!qword_27D90EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90EF28);
  }

  return result;
}

unint64_t sub_22C09DDE8()
{
  result = qword_27D90F0D0;
  if (!qword_27D90F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F0D0);
  }

  return result;
}

unint64_t sub_22C09DE40()
{
  result = qword_27D90F278;
  if (!qword_27D90F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F278);
  }

  return result;
}

unint64_t sub_22C09DE98()
{
  result = qword_27D90F280;
  if (!qword_27D90F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F280);
  }

  return result;
}

unint64_t sub_22C09DEF0()
{
  result = qword_27D90F288;
  if (!qword_27D90F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F288);
  }

  return result;
}

unint64_t sub_22C09DF48()
{
  result = qword_27D90F290;
  if (!qword_27D90F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F290);
  }

  return result;
}

unint64_t sub_22C09DFA0()
{
  result = qword_27D90F298;
  if (!qword_27D90F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F298);
  }

  return result;
}

unint64_t sub_22C09DFF8()
{
  result = qword_27D90F2A0;
  if (!qword_27D90F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2A0);
  }

  return result;
}

unint64_t sub_22C09E050()
{
  result = qword_27D90F2A8;
  if (!qword_27D90F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2A8);
  }

  return result;
}

unint64_t sub_22C09E0A8()
{
  result = qword_27D90F2B0;
  if (!qword_27D90F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2B0);
  }

  return result;
}

unint64_t sub_22C09E100()
{
  result = qword_27D90F2B8;
  if (!qword_27D90F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2B8);
  }

  return result;
}

unint64_t sub_22C09E158()
{
  result = qword_27D90F2C0;
  if (!qword_27D90F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2C0);
  }

  return result;
}

unint64_t sub_22C09E1B0()
{
  result = qword_27D90F2C8;
  if (!qword_27D90F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2C8);
  }

  return result;
}

unint64_t sub_22C09E208()
{
  result = qword_27D90F2D0;
  if (!qword_27D90F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2D0);
  }

  return result;
}

unint64_t sub_22C09E260()
{
  result = qword_27D90F2D8;
  if (!qword_27D90F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2D8);
  }

  return result;
}

unint64_t sub_22C09E2B8()
{
  result = qword_27D90F2E0;
  if (!qword_27D90F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2E0);
  }

  return result;
}

unint64_t sub_22C09E310()
{
  result = qword_27D90F2E8;
  if (!qword_27D90F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2E8);
  }

  return result;
}

unint64_t sub_22C09E368()
{
  result = qword_27D90F2F0;
  if (!qword_27D90F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2F0);
  }

  return result;
}

unint64_t sub_22C09E3C0()
{
  result = qword_27D90F2F8;
  if (!qword_27D90F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F2F8);
  }

  return result;
}

unint64_t sub_22C09E418()
{
  result = qword_27D90F300;
  if (!qword_27D90F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F300);
  }

  return result;
}

unint64_t sub_22C09E470()
{
  result = qword_27D90F308;
  if (!qword_27D90F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F308);
  }

  return result;
}

unint64_t sub_22C09E4C8()
{
  result = qword_27D90F310;
  if (!qword_27D90F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F310);
  }

  return result;
}

unint64_t sub_22C09E520()
{
  result = qword_27D90F318;
  if (!qword_27D90F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F318);
  }

  return result;
}

unint64_t sub_22C09E578()
{
  result = qword_27D90F320;
  if (!qword_27D90F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F320);
  }

  return result;
}

unint64_t sub_22C09E5D0()
{
  result = qword_27D90F328;
  if (!qword_27D90F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F328);
  }

  return result;
}

unint64_t sub_22C09E628()
{
  result = qword_27D90F330;
  if (!qword_27D90F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F330);
  }

  return result;
}

unint64_t sub_22C09E680()
{
  result = qword_27D90F338;
  if (!qword_27D90F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F338);
  }

  return result;
}

unint64_t sub_22C09E6D8()
{
  result = qword_27D90F340;
  if (!qword_27D90F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F340);
  }

  return result;
}

unint64_t sub_22C0A23F0()
{
  result = qword_27D90F788;
  if (!qword_27D90F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F788);
  }

  return result;
}

unint64_t sub_22C0A2448()
{
  result = qword_27D90F790;
  if (!qword_27D90F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F790);
  }

  return result;
}

unint64_t sub_22C0A49C0()
{
  result = qword_27D90FA90;
  if (!qword_27D90FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90FA90);
  }

  return result;
}

unint64_t sub_22C0A4A18()
{
  result = qword_27D90FA98;
  if (!qword_27D90FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90FA98);
  }

  return result;
}

unint64_t sub_22C0B076C()
{
  result = qword_27D9113B8;
  if (!qword_27D9113B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9113B8);
  }

  return result;
}

unint64_t sub_22C0B07C0()
{
  result = qword_27D911480;
  if (!qword_27D911480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911480);
  }

  return result;
}

unint64_t sub_22C0B0814()
{
  result = qword_27D911550;
  if (!qword_27D911550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D911550);
  }

  return result;
}

uint64_t sub_22C0B0868()
{
  v1 = sub_22BE1B2D4();
  v3 = v2(v1);
  sub_22BE18000(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BE19454();
  v7(v6);
  return v0;
}

uint64_t sub_22C0B08BC()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18000(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C0B137C()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B142C(uint64_t a1)
{
  v4 = *(a1 + 56);
  *(v2 - 96) = v1;

  return sub_22BE22868();
}

uint64_t sub_22C0B149C()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_22C0B14F0()
{

  return sub_22C270794();
}

uint64_t sub_22C0B1568()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1588()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B15A8()
{

  return sub_22C2705D4();
}

uint64_t sub_22C0B15D0(uint64_t a1)
{
  *(v3 - 112) = a1;
  *(v3 - 104) = v1;
  v5 = *(a1 + 20);
  v6 = *(v2 + 56);

  return sub_22BE22868();
}

uint64_t sub_22C0B15FC()
{
  *(v1 - 88) = v0;

  return sub_22BE22868();
}

uint64_t sub_22C0B1694(uint64_t result)
{
  *(v2 - 88) = result;
  v3 = *(result + 24);
  v4 = *(v1 + 48);
  return result;
}

uint64_t sub_22C0B16A4()
{

  return sub_22C2707D4();
}

uint64_t sub_22C0B16D4()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B16F4()
{
  v2 = *(*(v0 - 88) + 24);

  return sub_22C2704B4();
}

uint64_t sub_22C0B176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_22BE5CE4C(a5, a6);
}

uint64_t sub_22C0B19D4()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1A00()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1A28(unint64_t *a1)
{

  return sub_22BE2C988(a1, v1);
}

uint64_t sub_22C0B1A50()
{
  result = *(v1 + 8);
  v3 = *(v0 + 8);
  return result;
}

uint64_t sub_22C0B1A60()
{
  v2 = *(*(v0 - 88) + 28);

  return sub_22C2704B4();
}

uint64_t sub_22C0B1A8C()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1AA4()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1AC8()
{
  v2 = *(*(v0 - 112) + 24);

  return sub_22C2704B4();
}

uint64_t sub_22C0B1AFC()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1B14()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1B34()
{

  return sub_22BE19DC4(v0, 0, 1, v1);
}

uint64_t sub_22C0B1B54()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1BAC(uint64_t a1)
{
  v2 = *(a1 + 28);

  return sub_22C2704B4();
}

uint64_t sub_22C0B1BC4()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1BEC()
{

  return sub_22C270564();
}

uint64_t sub_22C0B1C14()
{
  v3 = *(v1 - 88) + v0;

  return sub_22C272FD4();
}

uint64_t sub_22C0B1C6C()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_22C0B1CCC()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1CE4()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1CFC()
{
  v2 = *(v0 + 24);

  return sub_22C2704B4();
}

uint64_t sub_22C0B1D14()
{
  v2 = *(v0 - 176);

  return sub_22BE22868();
}

uint64_t sub_22C0B1D30()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1D54()
{

  return sub_22C0B0868();
}

uint64_t sub_22C0B1D70()
{
  v2 = *(v0 + 32);

  return sub_22C2704B4();
}

uint64_t sub_22C0B1D88()
{

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1DC0(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(v1 + 56);
  return result;
}

unsigned __int8 *sub_22C0B1DF0(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

void sub_22C0B1DFC()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v0;
  v5 = *(v0 + 8);
}

uint64_t sub_22C0B1E1C()
{
  v2 = *(v1 - 88);
  result = *v2;
  v4 = v2[1];
  v5 = *v0;
  v6 = v0[1];
  return result;
}

uint64_t sub_22C0B1EA8(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(v1 + 48);
  return result;
}

uint64_t sub_22C0B1EBC(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(v1 - 120);
  v4 = *(*(v1 - 112) + 48);
  return result;
}

void sub_22C0B1EF8()
{

  sub_22BFE7680();
}

uint64_t sub_22C0B1F18()
{
  v2 = *(v0 - 72);

  return sub_22C270884();
}

uint64_t sub_22C0B1F38()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1F58()
{

  return sub_22C272FD4();
}

uint64_t sub_22C0B1F78()
{
  v2 = *(v0 - 72);

  return sub_22C0B08BC();
}

uint64_t sub_22C0B1F90()
{

  return sub_22BE22868();
}

uint64_t sub_22C0B1FA8()
{
  v2 = *(v0 - 136);

  return sub_22BE22868();
}

uint64_t sub_22C0B1FC0()
{

  return sub_22BE22868();
}

uint64_t TranscriptProtoEvent.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoEvent(v1);
  v0[11] = 0;
  v0[12] = 0;
  v3 = v2[11];
  v4 = type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE1AF78(v4);
  sub_22BFBFC8C(v2[12]);
  v5 = v2[13];
  v6 = type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE1AF78(v6);
  v7 = v2[14];
  v8 = type metadata accessor for TranscriptProtoParticipantID(0);
  sub_22BE1AF78(v8);
  v9 = v2[15];
  v10 = type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE1AF78(v10);
  v11 = v0 + v2[16];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
  v0[4] = 0;
  v0[5] = v12;
  v0[6] = 0;
  v0[7] = v12;
  v0[8] = 0;
  v0[9] = v12;
  result = sub_22C272E84();
  v0[10] = result;
  return result;
}

uint64_t TranscriptProtoEvent.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 64);
  v2 = sub_22C2704B4();
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE23C98();

  return v6(v5);
}

uint64_t TranscriptProtoEvent.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 64);
  v2 = sub_22C2704B4();
  sub_22BE1834C(v2);
  v4 = *(v3 + 40);
  v5 = sub_22BE33684();

  return v6(v5);
}

uint64_t TranscriptProtoEvent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 64);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPayload(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoTranscript.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoTranscript(v1);
  v0[3] = 0;
  v0[4] = 0;
  sub_22C0E9BF8(v2);
  sub_22BE412F4();
  v0[2] = MEMORY[0x277D84F90];
}

uint64_t TranscriptProtoTranscript.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTranscript(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTimepoint.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoTimepoint(v1);
  sub_22BE3CC6C(v2);
  v3 = sub_22C270454();
  sub_22BE1AF78(v3);
  sub_22C0E9860();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoTimepoint.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTimepoint(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionStart.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoLocaleSettings(v2);
  v6 = sub_22C0E966C(v0, v4, v5, v3);
  v7 = type metadata accessor for TranscriptProtoSessionStart(v6);
  v8 = sub_22BFBFC98(v7);
  v9 = type metadata accessor for TranscriptProtoDeviceDetails(v8);
  v10 = sub_22BE29EF0(v9);
  v11 = type metadata accessor for TranscriptProtoGenderSettings(v10);
  sub_22C0E96B4(v0 + v1, v12, v13, v11);
  *(v0 + v14) = 2;
  sub_22C0E9860();
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C0B2528()
{
  v0 = sub_22BE2B880();
  v2 = *(v1(v0) + 32);
  v3 = sub_22C2704B4();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE23C98();

  return v7(v6);
}

uint64_t sub_22C0B25AC()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 32);
  v3 = sub_22C2704B4();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t TranscriptProtoSessionStart.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSessionStart(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDateTimeContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDateTimeContext(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoUserTurnStarted.init()()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for TranscriptProtoUserTurnStarted(v0);
  v2 = *(v1 + 20);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  v7 = *(v1 + 24);
  v8 = type metadata accessor for TranscriptProtoUserTurn(0);
  sub_22BE1AF78(v8);
  v9 = sub_22BE27190();
  v10 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v9);
  sub_22BE1AF78(v10);
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoUserTurnStarted.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserTurnStarted(v0) + 32);
  return sub_22BE18504();
}

uint64_t sub_22C0B285C()
{
  v1 = sub_22C0E968C();
  v2(v1);
  v3 = sub_22BE238E8();
  v7 = sub_22C0E966C(v3, v4, v5, v6);
  v8 = v0(v7);
  sub_22BE38954(v8);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C0B28D4()
{
  v0 = sub_22BE2B880();
  v2 = *(v1(v0) + 20);
  v3 = sub_22C2704B4();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE23C98();

  return v7(v6);
}

uint64_t sub_22C0B2958()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 20);
  v3 = sub_22C2704B4();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t TranscriptProtoUserTurn.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserTurn(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0B2A9C()
{
  v0 = sub_22BE2B880();
  v2 = v1(v0);
  sub_22BE39320(v2);
  v3 = sub_22C2704B4();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE23C98();

  return v7(v6);
}

uint64_t sub_22C0B2B1C()
{
  v0 = sub_22BE17BC4();
  v2 = v1(v0);
  sub_22BE39320(v2);
  v3 = sub_22C2704B4();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t TranscriptProtoSpeechPartialResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpeechPartialResult(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoRequest(v2);
  v4 = sub_22BFBFC98(v3);
  v5 = type metadata accessor for TranscriptProtoRequestContent(v4);
  v6 = sub_22BE29EF0(v5);
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(v6);
  sub_22BE23D30(v7);
  *v8 = 0;
  v8[1] = 0;
  v9 = v1[8];
  v10 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE1AF78(v10);
  v11 = sub_22BE2BC9C();
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v11);
  sub_22BE1AF78(v12);
  v13 = v1[10];
  v14 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_22BE1AF78(v14);
  v15 = v1[11];
  v16 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22BE1AF78(v16);
  v17 = &v0[v1[12]];
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 48);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestContent(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestSuggestedInvocation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestSuggestedInvocation(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0B2EA0()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  v5 = sub_22BE341A4(v4);
  v0(v5);
  v6 = sub_22BE3CE14();
  sub_22BE19DC4(v6, v7, v8, v9);
  v10 = v1 + *(v4 + 24);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoRequestContentTextContent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoRequestContentSpeechContent.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v2);
  v4 = sub_22C0E986C(v3);
  v5 = type metadata accessor for TranscriptProtoSpeechPackage(v4);
  v6 = sub_22BE25B20();
  sub_22BE19DC4(v6, v7, v8, v5);
  v9 = *(v1 + 24);
  sub_22BE375F8();
  sub_22C0E96B4(v0 + v9, v10, v11, v12);
  v14 = sub_22BE3A23C(v13);
  sub_22BE19DC4(v14, v15, v16, v5);
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpeechPackage.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpeechPackage(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0B313C()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  sub_22BE38954(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = v0;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Phrase.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpeechPackage.Phrase(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpeechPackage.Interpretation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(v0) + 20);
  return sub_22BE18504();
}

double TranscriptProtoSpeechPackage.Token.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(v1) + 36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpeechPackage.Token(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentRequest.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoRequestContent(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequest(v5);
  sub_22BFBFC8C(*(v6 + 20));
  v8 = sub_22BE39320(v7);
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v8);
  sub_22BE23D30(v9);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22C0B33EC()
{
  v0 = sub_22BE2B880();
  v2 = *(v1(v0) + 28);
  v3 = sub_22C2704B4();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE23C98();

  return v7(v6);
}

uint64_t sub_22C0B3470()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 28);
  v3 = sub_22C2704B4();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t TranscriptProtoExternalAgentRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0B353C()
{
  v2 = sub_22C0E968C();
  v4 = v1 + *(v3(v2) + 24);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v1[2] = v0;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlan.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlan(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanSearchTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(v0) + 28);
  return sub_22BE18504();
}

void sub_22C0B3768()
{
  v0 = sub_22BE2B880();
  v2 = v1(v0);
  sub_22BE48874(v2);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanTextTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoRequestPrescribedPlanConvertTool.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v1);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  v3 = v0 + *(v2 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v0) + 32);
  return sub_22BE18504();
}

void sub_22C0B39C0()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_22C0E9BF8(v3);
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoRequestPrescribedPlanDisplayTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanKnowledgeTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22BE375F8();
  v5 = sub_22C0E966C(a1, v2, v3, v4);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v5);
  v7 = sub_22BE48874(v6);
  *v8 = 0;
  *(v8 + 8) = 1;
  return sub_22BE37CF8(v7);
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  sub_22BE48874(v1);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAction.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoAction(v1);
  v3 = sub_22C0E9734(v2);
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE23D30(v4);
  *v5 = 0;
  v5[1] = 0;
  sub_22C0E9860();
  *v6 = 0;
  v6[1] = 0;
  v7 = sub_22BE2BC9C();
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v7);
  sub_22BE1AF78(v8);
  sub_22C0E9CF8();
  *v0 = 0;
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  result = sub_22C272E84();
  *(v0 + 8) = result;
  return result;
}

uint64_t TranscriptProtoAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAction(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionParameterValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionParameterValue(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionCancellation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionCancellation(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPromptSelection.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPromptSelection(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionConfirmation(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmationSystemStyle.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0B438C()
{
  v3 = sub_22BE3359C();
  v5 = v4(v3);
  v8 = sub_22C0E966C(v2, v6, v7, v5);
  v9 = (v1)(v8);
  v10 = sub_22C0E986C(v9);
  v0(v10);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = v2 + *(v1 + 24);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoParameterValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterValue(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolDisambiguation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoToolDisambiguation(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentOutcome.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoExternalAgentOutcome(v1);
  v3 = *(v2 + 20);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  v8 = *(v2 + 24);
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE23D30(v9);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoExternalAgentOutcome.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResultPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResultPayload(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStatementResult(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = *(v2 + 20);
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE1AF78(v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE29520(v6);
  v8 = sub_22BE3A23C(v7);
  sub_22BE19DC4(v8, v9, v10, v3);
  v11 = sub_22BE2BC9C();
  v12 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v11);
  sub_22BE1AF78(v12);
  return sub_22C0E9CF8();
}

uint64_t sub_22C0B475C()
{
  v0 = sub_22BE2B880();
  v2 = *(v1(v0) + 40);
  v3 = sub_22C2704B4();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE23C98();

  return v7(v6);
}

uint64_t sub_22C0B47E0()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 40);
  v3 = sub_22C2704B4();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t TranscriptProtoStatementResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResult(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseGenerationRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseGenerationRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCandidate.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCandidate(v0) + 32);
  return sub_22BE18504();
}

uint64_t sub_22C0B4A18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  v2 = a1(0);
  sub_22BE48874(v2);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoCandidatePromptStatus.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCandidatePromptStatus(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoClientAction.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoClientAction(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  v3 = *(v2 + 36);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v4, v5, v6, v7);
  sub_22C0E9CF8();
  sub_22BE412F4();
  sub_22C272594();
  sub_22BE18040();
  *(v0 + 16) = sub_22C272E84();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_22BE18040();
  result = sub_22C272E84();
  *(v0 + 24) = result;
  return result;
}

uint64_t TranscriptProtoClientAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoClientAction(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoShimParameters.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoShimParameters(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoShimParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoShimParameter(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoShimParameter.StringQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoShimParameter.StringQuery(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPersonQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPersonQuery(v0) + 32);
  return sub_22BE18504();
}

uint64_t sub_22C0B4F28@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v3 = a2(0);
  sub_22BE48874(v3);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoPersonQuery.Handle.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPersonQuery.Handle(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0B4FE8()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  v0[1] = 0;
  v0[2] = 0;
  result = sub_22BE37CF8(v3);
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoPhotosCandidates.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPhotosCandidates(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoActionParameterContext.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = *(type metadata accessor for TranscriptProtoActionParameterContext(v1) + 24);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v6);
  v7 = sub_22BE27190();
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v7);
  sub_22BE1AF78(v8);
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoActionParameterContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionParameterContext(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIntelligenceFlowError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntelligenceFlowError(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSessionError(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionCoordinatorError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSessionCoordinatorError(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExecutorError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExecutorError(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPlannerError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPlannerError(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionRequirement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionRequirement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementMessage.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemRequirementMessage(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementProtectedAppRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAppRequirement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAppRequirement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  result = sub_22C0E9BF8(v2);
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPermissionRequirement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPermissionRequirement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailure.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionFailure(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailureFailure.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionFailureFailure(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoActionFailureDeveloperDefinedError.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v1);
  sub_22C0E9BF8(v2);
  sub_22BE23340();
  *(v0 + 32) = 0;
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailureUnableToHandleRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoActionSuccess(v2);
  sub_22C0E9734(v3);
  v4 = sub_22C272594();
  sub_22BE1AF78(v4);
  v5 = sub_22BE27190();
  v6 = type metadata accessor for TranscriptProtoUndoContext(v5);
  sub_22BE1AF78(v6);
  v7 = v1[8];
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_22BE1AF78(v8);
  sub_22BFBFC8C(v1[9]);
  v9 = v1[10];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  v14 = v0 + v1[11];
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 44);
  v2 = sub_22C2704B4();
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE23C98();

  return v6(v5);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 44);
  v2 = sub_22C2704B4();
  sub_22BE1834C(v2);
  v4 = *(v3 + 40);
  v5 = sub_22BE33684();

  return v6(v5);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 44);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSnippetStream.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSnippetStream(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUndoContext(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoFollowUpAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoFollowUpAction(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoFollowUpActionExecutableAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(v0) + 20);
  return sub_22BE18504();
}

double TranscriptProtoFollowUpActionExecutableActionLinkAction.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v1);
  sub_22C0E9BF8(v2);
  sub_22BE412F4();
  result = 0.0;
  *(v0 + 16) = xmmword_22C28BFC0;
  *(v0 + 32) = 0;
  return result;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoParameterConfirmation.init()(uint64_t a1@<X8>)
{
  v1 = sub_22C0E9C84(a1);
  v2 = type metadata accessor for TranscriptProtoParameterConfirmation(v1);
  sub_22C0E9B58(v2);
  v3 = sub_22C272594();
  sub_22BE29520(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoParameterConfirmation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterConfirmation(v0) + 32);
  return sub_22BE18504();
}

void TranscriptProtoParameterDisambiguation.init()(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  sub_22C0E9BF8(v2);
  sub_22BE412F4();
  *(a1 + 16) = MEMORY[0x277D84F90];
}

uint64_t TranscriptProtoParameterDisambiguation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterDisambiguation(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoValueDisambiguation.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoValueDisambiguation(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementOutcome.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementOutcome(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterNeedsValue(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValueContext.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterNeedsValueContext(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValuePhotosSearch.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0B6934()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  v5 = sub_22C0E9B58(v4);
  v0(v5);
  v6 = sub_22BE3CE14();
  sub_22BE19DC4(v6, v7, v8, v9);
  sub_22BE3CF24();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoParameterNotAllowed.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterCandidatesNotFound.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParticipantID.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParticipantID(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanID.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpanID(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoPlan.init()(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 6;
  v2 = a1 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
  *(a1 + 32) = MEMORY[0x277D84F90];
}

uint64_t sub_22C0B6C7C()
{
  v0 = sub_22BE2B880();
  v2 = *(v1(v0) + 36);
  v3 = sub_22C2704B4();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE23C98();

  return v7(v6);
}

uint64_t sub_22C0B6D00()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 36);
  v3 = sub_22C2704B4();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t TranscriptProtoPlan.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPlan(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRecoverableError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRecoverableError(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPlanGenerationError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPlanGenerationError(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoPlanGenerationModelOutputError.init()()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v0);
  v2 = sub_22C0E9734(v1);
  v3 = type metadata accessor for TranscriptProtoIntelligenceFlowError(v2);
  sub_22BE23D30(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryResults.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryResults(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0B7118(uint64_t a1, void (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  v8 = sub_22BE3C4D0();
  v10 = v9(v8);
  v11 = v10[5];
  a2(0);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = v10[6];
  a3(0);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  v21 = v10[7];
  a4(0);
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v25);
  v26 = &v4[v10[8]];
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v4 = 0;
  return result;
}

uint64_t TranscriptProtoQueryStep.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryStep(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.StringQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C0B75A8()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  sub_22BE38954(v4);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v0(0);
  result = sub_22C272E84();
  *v1 = result;
  return result;
}

uint64_t TranscriptProtoQueryPayload.AnswerSynthesisToolQuery.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryStepResults.init()()
{
  v1 = sub_22BE1A5E4();
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(v1);
  v3 = sub_22C0E9734(StepResults);
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE23D30(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryStepResults(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoResponseDialog.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoResponseDialog(v1);
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v3 = v0 + *(v2 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoResponseDialog.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseDialog(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseOutput.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoResponseOutput(v1);
  v3 = v2[8];
  v4 = type metadata accessor for TranscriptProtoDialogType(0);
  v5 = sub_22BE25B20();
  sub_22BE19DC4(v5, v6, v7, v4);
  v8 = sub_22BE3A23C(v2[9]);
  sub_22BE19DC4(v8, v9, v10, v4);
  v11 = v2[10];
  v12 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_22BE1AF78(v12);
  v13 = v2[11];
  v14 = type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_22BE1AF78(v14);
  sub_22BFBFC8C(v2[12]);
  v15 = v0 + v2[13];
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v17 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  *(v0 + 16) = v17;
  *(v0 + 24) = v17;
  return result;
}

uint64_t TranscriptProtoResponseOutput.unknownFields.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 52);
  v2 = sub_22C2704B4();
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE23C98();

  return v6(v5);
}

uint64_t TranscriptProtoResponseOutput.unknownFields.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 52);
  v2 = sub_22C2704B4();
  sub_22BE1834C(v2);
  v4 = *(v3 + 40);
  v5 = sub_22BE33684();

  return v6(v5);
}

uint64_t TranscriptProtoResponseOutput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseOutput(v0) + 52);
  return sub_22BE18504();
}

uint64_t TranscriptProtoVisualOutputOptions.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoVisualOutputOptions(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoVisualOutput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoVisualOutput(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoLiveActivityOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoLiveActivityOutputPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInAppResponseOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInAppResponseOutputPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemSnippetOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPluginSnippetOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAceCommandOutputPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAceCommandOutputPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAceCommandOutputData.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAceCommandOutputData(v0) + 20);
  return sub_22BE18504();
}

double sub_22C0B7FF0()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22BE48874(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = 0.0;
  *v0 = xmmword_22C28BFC0;
  return result;
}

uint64_t TranscriptProtoAddViews.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAddViews(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAddDialogs.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAddDialogs(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSayIt.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSayIt(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRepeatIt.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRepeatIt(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestCompleted.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestCompleted(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCommandFailed.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCommandFailed(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDialogType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDialogType(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStaticText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStaticText(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCATDialog.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCATDialog(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSonicText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSonicText(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoGeneratedText.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoGeneratedText(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseManifest.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoResponseManifest(v2);
  v4 = sub_22BFBFC98(v3);
  v5 = type metadata accessor for TranscriptProtoResponseDialog(v4);
  v6 = sub_22BE29EF0(v5);
  v7 = type metadata accessor for TranscriptProtoResponseVisual(v6);
  sub_22BE23D30(v7);
  *v8 = 0;
  v8[1] = 0;
  sub_22C0E9860();
  *v9 = 0;
  v9[1] = 0;
  *(v0 + v1[9]) = 2;
  *(v0 + v1[10]) = 2;
  v10 = v1[11];
  v11 = type metadata accessor for TranscriptProtoUIType(0);
  sub_22BE1AF78(v11);
  v12 = v0 + v1[12];
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22C0B8880()
{
  v0 = sub_22BE2B880();
  v2 = *(v1(v0) + 48);
  v3 = sub_22C2704B4();
  sub_22BE18000(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BE23C98();

  return v7(v6);
}

uint64_t sub_22C0B8904()
{
  v0 = sub_22BE17BC4();
  v2 = *(v1(v0) + 48);
  v3 = sub_22C2704B4();
  sub_22BE1834C(v3);
  v5 = *(v4 + 40);
  v6 = sub_22BE33684();

  return v7(v6);
}

uint64_t TranscriptProtoResponseManifest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseManifest(v0) + 48);
  return sub_22BE18504();
}

void TranscriptProtoResponseParameter.init()(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_22C28E6A0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  v1 = a1 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoResponseParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseParameter(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResponseVisual.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoResponseVisual(v1);
  v3 = sub_22C0E9734(v2);
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(v3);
  sub_22BE23D30(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v6;
  return result;
}

uint64_t TranscriptProtoResponseVisual.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseVisual(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0B8B88()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22BE48874(v3);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoResponseVisualOptions.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResponseVisualOptions(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUIType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUIType(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUILabel.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUILabel(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoUIConfirmationLabel.init()()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for TranscriptProtoUIConfirmationLabel(v0);
  sub_22BE37CF8(v1);
  sub_22BE23340();
}

uint64_t TranscriptProtoUIConfirmationLabel.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUIConfirmationLabel(v0) + 24);
  return sub_22BE18504();
}

double TranscriptProtoArchiveViewPayload.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoArchiveViewPayload(v1);
  v0[1] = 0u;
  v0[2] = 0u;
  sub_22C0E9BF8(v2);
  result = 0.0;
  *v0 = xmmword_22C28BFC0;
  return result;
}

uint64_t TranscriptProtoArchiveViewPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoArchiveViewPayload(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoLiveActivityPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoLiveActivityPayload(v0) + 20);
  return sub_22BE18504();
}

double sub_22C0B900C()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22BE37CF8(v3);
  result = 0.0;
  *v0 = xmmword_22C28BFC0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoPluginSnippetPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPluginSnippetPayload(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoControlPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoControlPayload(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoSystemPromptResolution.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolution(v1);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v3 = sub_22BE39320(v2);
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v3);
  sub_22BE1AF78(v4);
  v5 = v2[7];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  v10 = v2[8];
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE1AF78(v11);
  v12 = v0 + v2[9];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoSystemPromptResolution.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolutionInput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionResolverRequest.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoActionResolverRequest(v2);
  v4 = sub_22BE3CC6C(v3);
  v5 = type metadata accessor for TranscriptProtoParameterSet(v4);
  sub_22BE1AF78(v5);
  v6 = *(v1 + 32);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  v11 = sub_22BE2BC9C();
  v12 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v11);
  sub_22BE1AF78(v12);
  result = sub_22C0E9CF8();
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoActionResolverRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionResolverRequest(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoContextRetrieved.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoContextRetrieved(v1);
  result = sub_22BE37CF8(v2);
  v4 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v4;
  return result;
}

uint64_t TranscriptProtoContextRetrieved.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoContextRetrieved(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrievedContextStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C0B96DC()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  *v0 = 0;
  v0[1] = 0;
  sub_22BE48874(v3);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoSafetyModeException.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSafetyModeException(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterSet.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterSet(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoParameter.init()(uint64_t a1@<X8>)
{
  v1 = sub_22C0E9C84(a1);
  v2 = type metadata accessor for TranscriptProtoParameter(v1);
  v3 = sub_22C0E9734(v2);
  v4 = type metadata accessor for TranscriptProtoCandidate(v3);
  sub_22BE23D30(v4);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameter(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolutionUserAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemPromptResolutionRequirementResolution.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoVariableSetter.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoVariableSetter(v2);
  sub_22C0E986C(v3);
  v4 = sub_22C272594();
  v5 = sub_22BE25B20();
  sub_22BE19DC4(v5, v6, v7, v4);
  v8 = v0 + *(v1 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = sub_22C272E84();
  *v0 = result;
  return result;
}

uint64_t TranscriptProtoVariableSetter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoVariableSetter(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C0B9B7C()
{
  v3 = sub_22BE3359C();
  v5 = v4(v3);
  v6 = sub_22BFBFCD0(v5);
  v7 = v1(v6);
  result = sub_22BE30FA8(v7);
  *v2 = v0;
  return result;
}

uint64_t TranscriptProtoVariableStep.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoVariableStep(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprCallVariant.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v1);
  sub_22BE37CF8(v2);
  sub_22BE412F4();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  result = sub_22C272E84();
  *(v0 + 16) = result;
  return result;
}

uint64_t TranscriptProtoASTFlatExprCallVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprCallVariant(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprSayVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprSayVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprPickVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprPickVariant(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprConfirmVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUndoVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprRejectVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprCancelVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTPickType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  v1 = type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE48874(v1);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoASTPickType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTPickType(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0BA250()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22C0E9BF8(v3);
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoASTFlatExprSearchVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUpdateParametersVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init()()
{
  v1 = sub_22BE1A5E4();
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v1);
  v3 = sub_22C0E9B58(updated);
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(v3);
  sub_22BE29520(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  *(v0 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprPickOneVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprResolveToolVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprDotVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprDotVariant(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExpr.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExpr(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatValue(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatValueArrayVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatValueDictVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatValueDictVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0BAA2C()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v4);
  v8 = v0(0);
  v9 = *(v8 + 20);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v4);
  v13 = v1 + *(v8 + 24);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoASTFlatExprIndexVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSiriXFallbackExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSiriXFallbackExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoValueExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoValueExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoValueExpressionArrayVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoValueExpressionArrayVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPrefixExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPrefixExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C0BAFF8()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  v5 = sub_22BE341A4(v4);
  v6 = v0(v5);
  v7 = sub_22BE3CE14();
  sub_22BE19DC4(v7, v8, v9, v6);
  v10 = *(v4 + 24);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v6);
  sub_22BE3CF24();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  return result;
}

uint64_t TranscriptProtoInfixExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInfixExpression(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0BB124()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  v5 = sub_22BE341A4(v4);
  v0(v5);
  v6 = sub_22BE3CE14();
  sub_22BE19DC4(v6, v7, v8, v9);
  v10 = &v1[*(v4 + 24)];
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprPrefixVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoIndexExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIndexExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUpdateParametersExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUpdateParametersExpression(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v1) + 24);
  sub_22BE375F8();
  sub_22C0E96B4(v0 + v2, v3, v4, v5);
  v7 = v0 + v6;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_22C0E9860();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoGlobalToolIdentifier.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoGlobalToolIdentifier(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0BB548()
{
  v3 = sub_22BE3359C();
  v5 = v4(v3);
  v6 = sub_22BFBFCD0(v5);
  v7 = v1(v6);
  sub_22BE30FA8(v7);
  v0(0);
  result = sub_22C272E84();
  *v2 = result;
  return result;
}

uint64_t TranscriptProtoCallExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCallExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrieveSpansExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRetrieveSpansExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRetrieveToolsExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRetrieveToolsExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSayExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSayExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPickExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPickExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoConfirmExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoConfirmExpression(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoSearchExpression.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = v0 + *(type metadata accessor for TranscriptProtoSearchExpression(v1) + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
}

uint64_t TranscriptProtoSearchExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSearchExpression(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStructuredSearchExpression.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStructuredSearchExpression(v1);
  sub_22C0E9734(v2);
  v3 = sub_22C2725A4();
  sub_22BE23D30(v3);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  type metadata accessor for TranscriptProtoStatementID(0);
  v4 = MEMORY[0x277D84F90];
  result = sub_22C272E84();
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v1);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v3 = sub_22BE39320(v2);
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE23D30(v4);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPickOneExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPickOneExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoResolveToolExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoResolveToolExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUndoExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUndoExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRejectExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRejectExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCancelExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCancelExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoOpenExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoOpenExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPayloadExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPayloadExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoFormatExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoFormatExpression(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserConfirmExpression.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  sub_22BE1A140();
  sub_22BE19DC4(v3, v4, v5, v2);
  v6 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v7 = sub_22BE3A23C(v6[5]);
  sub_22BE19DC4(v7, v8, v9, v2);
  v10 = sub_22BE3A23C(v6[6]);
  sub_22BE19DC4(v10, v11, v12, v2);
  v13 = v0 + v6[7];
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoUserConfirmExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserDisambiguateExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserDisambiguateExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAnswerSynthesisExpression.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAnswerSynthesisExpression(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAnswerSynthesisExtractionCandidate.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAnswerSynthesisExtractionCandidate(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolParameterValue.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoToolParameterValue(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEntitySpanMatchResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEntitySpanMatchResult(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoToolRetrievalResponse.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = v0 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(v1) + 36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23340();
  *(v0 + 32) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = v3;
}

uint64_t TranscriptProtoToolRetrievalResponse.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoToolRetrievalResponse(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSystemResponse.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoSystemResponse(v2);
  v4 = sub_22BFBFC98(v3);
  v5 = type metadata accessor for TranscriptProtoResponseOutput(v4);
  sub_22BE1AF78(v5);
  sub_22BFBFC8C(*(v1 + 24));
  v6 = v0 + *(v1 + 28);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoSystemResponse.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSystemResponse(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoInterpretedStatementResult.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoStatementOutcome(v2);
  v6 = sub_22C0E966C(v0, v4, v5, v3);
  v7 = type metadata accessor for TranscriptProtoInterpretedStatementResult(v6);
  v8 = sub_22C0E986C(v7);
  v9 = type metadata accessor for TranscriptProtoStatementID(v8);
  v10 = sub_22BE25B20();
  sub_22BE19DC4(v10, v11, v12, v9);
  v13 = sub_22BE3A23C(v1[6]);
  sub_22BE19DC4(v13, v14, v15, v9);
  sub_22BFBFC8C(v1[7]);
  sub_22C0E9860();
  *v16 = 0;
  v16[1] = 0;
  v17 = sub_22BE3A23C(v1[9]);
  sub_22BE19DC4(v17, v18, v19, v9);
  return sub_22C0E9CF8();
}

uint64_t TranscriptProtoInterpretedStatementResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22BE375F8();
  v6 = sub_22C0E966C(a1, v3, v4, v5);
  v7 = type metadata accessor for TranscriptProtoProgramStatement(v6);
  v8 = sub_22C0E986C(v7);
  type metadata accessor for TranscriptProtoExpression(v8);
  v9 = sub_22BE25B20();
  sub_22BE19DC4(v9, v10, v11, v12);
  *(a1 + *(v1 + 24)) = 2;
  *(a1 + *(v1 + 28)) = 2;
  sub_22C0E9860();
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = sub_22BE2BC9C();
  v15 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(v14);
  sub_22BE1AF78(v15);
  return sub_22C0E9CF8();
}

uint64_t TranscriptProtoProgramStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoProgramStatement(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoProgramStatement.ExecutionSupportType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0BCD5C()
{
  v1 = sub_22BE2B880();
  v3 = v2(v1);
  sub_22C0E9BF8(v3);
  sub_22BE23340();
  *(v0 + 32) = 0;
  *(v0 + 40) = v4;
}

uint64_t TranscriptProtoLocaleSettings.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoLocaleSettings(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoGenderSettings.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoGenderSettings(v1);
  result = sub_22BE37CF8(v2);
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoGenderSettings.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoGenderSettings(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v1);
  sub_22BE48874(v2);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoDeviceDetails.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDeviceDetails(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementID.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  result = sub_22BE37CF8(v2);
  *v0 = 0;
  return result;
}

uint64_t TranscriptProtoStatementID.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementID(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolResolution.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoToolResolution(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoUndoRedoRequest.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoUndoRedoRequest(v1);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = sub_22BE25B20();
  sub_22BE19DC4(v5, v6, v7, v4);
  v8 = sub_22BE3A23C(v2[8]);
  sub_22BE19DC4(v8, v9, v10, v4);
  v11 = v0 + v2[9];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoUndoRedoRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(v0) + 36);
  return sub_22BE18504();
}

void TranscriptProtoClientUndoRedoRequest.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(v1);
  v3 = sub_22C0E9B58(v2);
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE29520(v4);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
  *(v0 + 16) = 0;
}

uint64_t TranscriptProtoClientUndoRedoRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoTypeConversionRequest.init()()
{
  sub_22BE1A5E4();
  v1 = sub_22C272594();
  v4 = sub_22C0E966C(v0, v2, v3, v1);
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(v4);
  sub_22BFBFC98(v5);
  v6 = sub_22C2725A4();
  v7 = sub_22BE29EF0(v6);
  v8 = type metadata accessor for TranscriptProtoStatementID(v7);
  sub_22BE23D30(v8);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoTypeConversionRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0BD444()
{
  v2 = sub_22C0E968C();
  v3(v2);
  v4 = sub_22BE238E8();
  v8 = sub_22C0E966C(v4, v5, v6, v7);
  v9 = v0(v8);
  v10 = sub_22BE341A4(v9);
  v11 = type metadata accessor for TranscriptProtoStatementID(v10);
  v12 = sub_22BE3CE14();
  sub_22BE19DC4(v12, v13, v14, v11);
  v15 = *(v9 + 24);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v11);
  v19 = v1 + *(v9 + 28);
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t TranscriptProtoTypeConversionResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTypeConversionResult(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationResult.init()()
{
  v1 = sub_22BE1A5E4();
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(v1);
  v3 = sub_22BE3CC6C(DecorationResult);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(v3);
  sub_22BE1AF78(DecorationToolRetrievalResponse);
  sub_22C0E9860();
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v6 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v6;
  v0[2] = v6;
  return result;
}

uint64_t TranscriptProtoQueryDecorationResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(v0) + 32);
  return sub_22BE18504();
}

uint64_t sub_22C0BD670()
{
  v4 = sub_22BE3359C();
  v6 = v5(v4);
  v7 = sub_22BFBFCD0(v6);
  v8 = v1(v7);
  sub_22C0E9744(v8);
  v9 = *(v3 + 24);
  v0(0);
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v13);
  v14 = v2 + *(v3 + 28);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSkipStatement.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSkipStatement(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestAmendment.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestAmendment(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoToolRetrievalRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoToolRetrievalRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSpanMatchRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSpanMatchRequest(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoIntermediateSystemResponse.init()()
{
  v2 = sub_22BE1A5E4();
  v3 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v2);
  v4 = sub_22BFBFC98(v3);
  v5 = type metadata accessor for TranscriptProtoResponseOutput(v4);
  sub_22BE1AF78(v5);
  sub_22BFBFC8C(v1[6]);
  v6 = v1[7];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v7, v8, v9, v10);
  sub_22C0E9860();
  *v11 = 0;
  v11[1] = 0;
  v12 = v0 + v1[9];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE412F4();
}

uint64_t TranscriptProtoIntermediateSystemResponse.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponse(v0) + 36);
  return sub_22BE18504();
}

uint64_t sub_22C0BE254()
{
  v2 = sub_22C0E968C();
  v4 = v3(v2);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v5 = sub_22C0E9B58(v4);
  v0(v5);
  v6 = sub_22BE3CE14();
  sub_22BE19DC4(v6, v7, v8, v9);
  sub_22BE3CF24();
  *v10 = 0;
  v10[1] = 0;
  v11 = v1 + *(v4 + 32);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = 0;
  return result;
}

uint64_t TranscriptProtoIntermediateSystemResponseRendered.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAgentRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentHandoffRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAgentHandoffRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAgentPassRequest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAgentPassRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  sub_22BE1A5E4();
  v0 = sub_22C2704B4();
  sub_22BE18000(v0);
  v2 = *(v1 + 16);
  v3 = sub_22BE19454();

  return v4(v3);
}

uint64_t _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  sub_22BE17BC4();
  v1 = sub_22C2704B4();
  sub_22BE18000(v1);
  v3 = *(v2 + 40);
  v4 = sub_22BE291BC();

  return v5(v4, v0);
}

uint64_t TranscriptProtoAgentPrimitiveAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAgentPrimitiveAction(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPrimitiveAction.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPrimitiveAction(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0BE824(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DAA0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BE8A8@<X0>(uint64_t *a1@<X8>)
{
  result = TranscriptProtoPlanSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22C0BE8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C0B07C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BE958(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DB9C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BE9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C0B076C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DBF0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DC98();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DCEC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DC44();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DD40();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BECA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DD94();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BED18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DAF4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BED90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DDE8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22C0BEE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC2DD4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoEvent.clientRequestID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_22BE19454();
}

uint64_t TranscriptProtoEvent.clientRequestID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t TranscriptProtoEvent.clientSessionID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_22BE19454();
}

uint64_t TranscriptProtoEvent.clientSessionID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t TranscriptProtoEvent.clientApplicationID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_22BE19454();
}

uint64_t TranscriptProtoEvent.clientApplicationID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t TranscriptProtoEvent.rawInitiatedSpans.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return sub_22BE19454();
}

uint64_t TranscriptProtoEvent.rawQueryEventID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t TranscriptProtoEvent.rawPayload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 44);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.clientGroupID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 48);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.timepoint.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 52);
  return sub_22BE22814();
}

uint64_t TranscriptProtoEvent.timepoint.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 52);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoEvent.timepoint.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 52);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.sender.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 56);
  return sub_22BE22814();
}

uint64_t TranscriptProtoEvent.sender.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 56);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoEvent.sender.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 56);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.postingSpan.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 60);
  return sub_22BE22814();
}

uint64_t TranscriptProtoEvent.postingSpan.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 60);
  return sub_22BE2343C();
}

uint64_t TranscriptProtoEvent.postingSpan.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoEvent(v0) + 60);
  return sub_22BE18504();
}

uint64_t TranscriptProtoEvent.init(rawID:rawSessionID:rawQueryEventID:rawPayload:clientRequestID:clientSessionID:clientApplicationID:clientGroupID:timepoint:sender:postingSpan:rawInitiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = type metadata accessor for TranscriptProtoEvent(0);
  v22 = v21[11];
  type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE1A140();
  sub_22BE19DC4(v23, v24, v25, v26);
  v27 = v21[13];
  v28 = (a8 + v21[12]);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE1A140();
  sub_22BE19DC4(v29, v30, v31, v32);
  v33 = v21[14];
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v34, v35, v36, v37);
  v38 = v21[15];
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v39, v40, v41, v42);
  v43 = a8 + v21[16];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  sub_22BE2343C();
  *(a8 + 32) = a7;
  *(a8 + 40) = a9;
  *(a8 + 56) = a10;
  *(a8 + 72) = a11;
  *v28 = a12;
  v28[1] = a13;
  sub_22BE2343C();
  sub_22BE2343C();
  result = sub_22BE2343C();
  *(a8 + 80) = a17;
  return result;
}

void static TranscriptProtoPayloadEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v445 = v24;
  v446 = v25;
  v26 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v31 = sub_22BE18950(v30);
  v32 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(v31);
  v33 = sub_22BE19448(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v37 = sub_22BE18950(v36);
  v38 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(v37);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  v43 = sub_22BE18950(v42);
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(v43);
  v45 = sub_22BE290A0(matched, v402);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v49 = sub_22BE18950(v48);
  v50 = type metadata accessor for TranscriptProtoContextRetrievalRequest(v49);
  v51 = sub_22BE19448(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17A44();
  v55 = sub_22BE18950(v54);
  v56 = type metadata accessor for TranscriptProtoToolRetrievalRequest(v55);
  v57 = sub_22BE290A0(v56, &v401);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v61 = sub_22BE18950(v60);
  v62 = type metadata accessor for TranscriptProtoRequestAmendment(v61);
  v63 = sub_22BE19448(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17A44();
  v67 = sub_22BE18950(v66);
  v68 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(v67);
  v69 = sub_22BE19448(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17A44();
  v73 = sub_22BE18950(v72);
  v74 = type metadata accessor for TranscriptProtoSkipStatement(v73);
  v75 = sub_22BE19448(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE17A44();
  v79 = sub_22BE18950(v78);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(v79);
  v81 = sub_22BE19448(DecorationPrePlannerResult);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22BE17A44();
  v85 = sub_22BE18950(v84);
  v86 = type metadata accessor for TranscriptProtoContinuePlanning(v85);
  v87 = sub_22BE19448(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22BE17A44();
  v91 = sub_22BE18950(v90);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(v91);
  v93 = sub_22BE19448(DecorationResult);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BE17A44();
  v97 = sub_22BE18950(v96);
  v98 = type metadata accessor for TranscriptProtoTypeConversionResult(v97);
  v99 = sub_22BE19448(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22BE17A44();
  v103 = sub_22BE18950(v102);
  v104 = type metadata accessor for TranscriptProtoTypeConversionRequest(v103);
  v105 = sub_22BE19448(v104);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v109 = sub_22BE18950(v108);
  v110 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(v109);
  v111 = sub_22BE19448(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  sub_22BE17A44();
  v115 = sub_22BE18950(v114);
  v116 = type metadata accessor for TranscriptProtoUndoRedoRequest(v115);
  v117 = sub_22BE19448(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  sub_22BE17A44();
  v121 = sub_22BE18950(v120);
  v122 = type metadata accessor for TranscriptProtoToolResolution(v121);
  v123 = sub_22BE19448(v122);
  v125 = *(v124 + 64);
  MEMORY[0x28223BE20](v123);
  sub_22BE17A44();
  v127 = sub_22BE18950(v126);
  v128 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(v127);
  v129 = sub_22BE290A0(v128, &v396);
  v131 = *(v130 + 64);
  MEMORY[0x28223BE20](v129);
  sub_22BE17A44();
  v133 = sub_22BE18950(v132);
  v134 = type metadata accessor for TranscriptProtoExternalAgentOutcome(v133);
  v135 = sub_22BE19448(v134);
  v137 = *(v136 + 64);
  MEMORY[0x28223BE20](v135);
  sub_22BE17A44();
  v139 = sub_22BE18950(v138);
  v140 = type metadata accessor for TranscriptProtoExternalAgentRequest(v139);
  v141 = sub_22BE19448(v140);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v141);
  sub_22BE17A44();
  v145 = sub_22BE18950(v144);
  v146 = type metadata accessor for TranscriptProtoStatementResult(v145);
  v147 = sub_22BE19448(v146);
  v149 = *(v148 + 64);
  MEMORY[0x28223BE20](v147);
  sub_22BE17A44();
  v151 = sub_22BE18950(v150);
  v152 = type metadata accessor for TranscriptProtoSystemResponse(v151);
  v153 = sub_22BE19448(v152);
  v155 = *(v154 + 64);
  MEMORY[0x28223BE20](v153);
  sub_22BE17A44();
  v157 = sub_22BE18950(v156);
  v158 = type metadata accessor for TranscriptProtoToolRetrievalResponse(v157);
  v159 = sub_22BE19448(v158);
  v161 = *(v160 + 64);
  MEMORY[0x28223BE20](v159);
  sub_22BE17A44();
  v163 = sub_22BE18950(v162);
  v164 = type metadata accessor for TranscriptProtoActionCancellation(v163);
  v165 = sub_22BE19448(v164);
  v167 = *(v166 + 64);
  MEMORY[0x28223BE20](v165);
  sub_22BE17A44();
  v169 = sub_22BE18950(v168);
  v170 = type metadata accessor for TranscriptProtoContextRetrieved(v169);
  v171 = sub_22BE290A0(v170, &v394);
  v173 = *(v172 + 64);
  MEMORY[0x28223BE20](v171);
  sub_22BE17A44();
  v175 = sub_22BE18950(v174);
  v176 = type metadata accessor for TranscriptProtoEntitySpanMatchResult(v175);
  v177 = sub_22BE290A0(v176, &v399);
  v179 = *(v178 + 64);
  MEMORY[0x28223BE20](v177);
  sub_22BE17A44();
  v181 = sub_22BE18950(v180);
  v182 = type metadata accessor for TranscriptProtoResponseGenerationRequest(v181);
  v183 = sub_22BE290A0(v182, &v398);
  v185 = *(v184 + 64);
  MEMORY[0x28223BE20](v183);
  sub_22BE17A44();
  v187 = sub_22BE18950(v186);
  v188 = type metadata accessor for TranscriptProtoSafetyModeException(v187);
  v189 = sub_22BE290A0(v188, &v397);
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v189);
  sub_22BE17A44();
  v193 = sub_22BE18950(v192);
  v194 = type metadata accessor for TranscriptProtoSafetyModeRelease(v193);
  v195 = sub_22BE19448(v194);
  v197 = *(v196 + 64);
  MEMORY[0x28223BE20](v195);
  sub_22BE17A44();
  v199 = sub_22BE18950(v198);
  v200 = type metadata accessor for TranscriptProtoActionResolverRequest(v199);
  v201 = sub_22BE19448(v200);
  v203 = *(v202 + 64);
  MEMORY[0x28223BE20](v201);
  sub_22BE17A44();
  v205 = sub_22BE18950(v204);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(v205);
  v207 = sub_22BE19448(StepResults);
  v209 = *(v208 + 64);
  MEMORY[0x28223BE20](v207);
  sub_22BE17A44();
  v211 = sub_22BE18950(v210);
  v212 = type metadata accessor for TranscriptProtoRecoverableError(v211);
  v213 = sub_22BE19448(v212);
  v215 = *(v214 + 64);
  MEMORY[0x28223BE20](v213);
  sub_22BE17A44();
  v217 = sub_22BE18950(v216);
  v218 = type metadata accessor for TranscriptProtoSessionError(v217);
  v219 = sub_22BE19448(v218);
  v221 = *(v220 + 64);
  MEMORY[0x28223BE20](v219);
  sub_22BE17A44();
  v223 = sub_22BE18950(v222);
  v224 = type metadata accessor for TranscriptProtoVariableStep(v223);
  v225 = sub_22BE19448(v224);
  v227 = *(v226 + 64);
  MEMORY[0x28223BE20](v225);
  sub_22BE17A44();
  v229 = sub_22BE18950(v228);
  Step = type metadata accessor for TranscriptProtoQueryStep(v229);
  v231 = sub_22BE19448(Step);
  v233 = *(v232 + 64);
  MEMORY[0x28223BE20](v231);
  sub_22BE17A44();
  v235 = sub_22BE18950(v234);
  v236 = type metadata accessor for TranscriptProtoClientAction(v235);
  v237 = sub_22BE19448(v236);
  v239 = *(v238 + 64);
  MEMORY[0x28223BE20](v237);
  sub_22BE17A44();
  v241 = sub_22BE18950(v240);
  v242 = type metadata accessor for TranscriptProtoAction(v241);
  v243 = sub_22BE19448(v242);
  v245 = *(v244 + 64);
  MEMORY[0x28223BE20](v243);
  sub_22BE17A44();
  v247 = sub_22BE18950(v246);
  v248 = type metadata accessor for TranscriptProtoPlan(v247);
  v249 = sub_22BE19448(v248);
  v251 = *(v250 + 64);
  MEMORY[0x28223BE20](v249);
  sub_22BE17A44();
  v253 = sub_22BE18950(v252);
  v254 = type metadata accessor for TranscriptProtoRequest(v253);
  v255 = sub_22BE19448(v254);
  v257 = *(v256 + 64);
  MEMORY[0x28223BE20](v255);
  sub_22BE17A44();
  v259 = sub_22BE18950(v258);
  v260 = type metadata accessor for TranscriptProtoSpeechPartialResult(v259);
  v261 = sub_22BE290A0(v260, &v395);
  v263 = *(v262 + 64);
  MEMORY[0x28223BE20](v261);
  sub_22BE17A44();
  v265 = sub_22BE18950(v264);
  v266 = type metadata accessor for TranscriptProtoUserTurnStarted(v265);
  v267 = sub_22BE19448(v266);
  v269 = *(v268 + 64);
  MEMORY[0x28223BE20](v267);
  sub_22BE17A44();
  v271 = sub_22BE18950(v270);
  v272 = type metadata accessor for TranscriptProtoSessionStart(v271);
  v273 = sub_22BE19448(v272);
  v275 = *(v274 + 64);
  MEMORY[0x28223BE20](v273);
  sub_22BE17A44();
  v277 = sub_22BE18950(v276);
  v444 = type metadata accessor for TranscriptProtoPayloadEnum(v277);
  v278 = sub_22BE18000(v444);
  v280 = *(v279 + 64);
  MEMORY[0x28223BE20](v278);
  sub_22BE183AC();
  v441 = v281 - v282;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v283);
  sub_22BE19490();
  v440 = v284;
  sub_22BE1B99C();
  v286 = MEMORY[0x28223BE20](v285);
  sub_22BE4608C(v286, v287, v288, v289, v290, v291, v292, v293, v393);
  MEMORY[0x28223BE20](v294);
  sub_22BE389A0();
  MEMORY[0x28223BE20](v295);
  sub_22BE19490();
  v438 = v296;
  sub_22BE1B99C();
  v298 = MEMORY[0x28223BE20](v297);
  sub_22BE23730(v298, v299, v300, v301, v302, v303, v304, v305, v393);
  MEMORY[0x28223BE20](v306);
  sub_22BE19490();
  v437 = v307;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v308);
  sub_22BE19490();
  v436 = v309;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v310);
  sub_22BE19490();
  v435 = v311;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v312);
  sub_22BE19490();
  v433 = v313;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v314);
  sub_22BE19490();
  v434 = v315;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v316);
  sub_22BE19490();
  v431 = v317;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v318);
  sub_22BE19490();
  v430 = v319;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v320);
  sub_22BE19490();
  v429 = v321;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v322);
  sub_22BE19490();
  v428 = v323;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v324);
  sub_22BE19490();
  v427 = v325;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v326);
  sub_22BE19490();
  v426 = v327;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v328);
  sub_22BE19490();
  v432 = v329;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v330);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v331);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v332);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v333);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v334);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v335);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v336);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v337);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v338);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v339);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v340);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v341);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v342);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v343);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v344);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v345);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v346);
  sub_22BE23858();
  MEMORY[0x28223BE20](v347);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v348);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v349);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v350);
  sub_22BE18094();
  MEMORY[0x28223BE20](v351);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v352);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v353);
  sub_22BE26800();
  v354 = sub_22BE5CE4C(&qword_27D911700, &qword_22C2AE478);
  sub_22BE19448(v354);
  v356 = *(v355 + 64);
  sub_22BE179FC();
  v358 = MEMORY[0x28223BE20](v357);
  v360 = &v393 - v359;
  v361 = *(v358 + 56);
  sub_22C0C2A68();
  v445 = v361;
  sub_22C0C2A68();
  sub_22BE2590C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22C0C1B18();
        static TranscriptProtoUserTurnStarted.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE19454();
        goto LABEL_167;
      }

      sub_22BE26148();
      goto LABEL_158;
    case 2u:
      sub_22BE18E74();
      sub_22BE3FF88(&v443);
      if (sub_22BE25D28() != 2)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v404);
      sub_22C0C1B18();
      sub_22BE46B80();
      v378 = v364 && v376 == v377;
      if (v378 || (sub_22C274014() & 1) != 0)
      {
        v379 = v21[2];
        v380 = v20[2];
        sub_22BE9C9E8();
        if (v381)
        {
          sub_22C0E9B3C(&v395);
          sub_22C0C1B6C();
          if (sub_22BE3F474())
          {
            goto LABEL_173;
          }
        }
      }

      goto LABEL_175;
    case 3u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 3)
      {
        sub_22BE1A90C();
        sub_22BE324E0(&v403);
        sub_22C0C1B18();
        static TranscriptProtoRequest.== infix(_:_:)();
        sub_22BE3C5A4();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22BE3E76C();
      goto LABEL_158;
    case 4u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 4)
      {
        sub_22BE1A90C();
        sub_22C0C1B18();
        v370 = sub_22BE324FC();
        static TranscriptProtoPlan.== infix(_:_:)(v370, v371);
        sub_22BE3C5A4();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22C0E9918();
      goto LABEL_158;
    case 5u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 5)
      {
        sub_22BE1A90C();
        sub_22BE324E0(&v405);
        sub_22C0C1B18();
        static TranscriptProtoAction.== infix(_:_:)();
        sub_22BE3C5A4();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22BE20118();
      goto LABEL_158;
    case 6u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 6)
      {
        sub_22BE1A90C();
        sub_22C0C1B18();
        sub_22BE336E8();
        static TranscriptProtoClientAction.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_167;
      }

      sub_22C0E98B8();
      goto LABEL_158;
    case 7u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() == 7)
      {
        sub_22BE1A90C();
        sub_22BE324E0(&v406);
        sub_22C0C1B18();
        static TranscriptProtoQueryStep.== infix(_:_:)();
        sub_22BE3C5A4();
        sub_22C0C1AC4();
LABEL_167:
        sub_22C0C1AC4();
        sub_22BE3617C();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE3ACD8();
LABEL_158:
        sub_22C0C1AC4();
LABEL_159:
        sub_22BE33928(v360, &qword_27D911700, &qword_22C2AE478);
      }

      goto LABEL_168;
    case 8u:
      sub_22BE18E74();
      sub_22BE3FF88(&v441);
      if (sub_22BE25D28() != 8)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v407);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoVariableStep.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 9u:
      sub_22BE18E74();
      sub_22BE3FF88(&v442);
      if (sub_22BE25D28() != 9)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v408);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoSessionError.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xAu:
      sub_22BE18E74();
      sub_22BE3FF88(&v444);
      if (sub_22BE25D28() != 10)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v409);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoRecoverableError.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xBu:
      sub_22BE18E74();
      sub_22BE3FF88(&v445);
      if (sub_22BE25D28() != 11)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v410);
      sub_22C0C1B18();
      v369 = sub_22BE38970();
      static TranscriptProtoQueryStepResults.== infix(_:_:)(v369);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xCu:
      sub_22BE18E74();
      sub_22BE3FF88(&v446);
      if (sub_22BE25D28() != 12)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v411);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoActionResolverRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xDu:
      sub_22BE18E74();
      sub_22BE3FF88(&v447);
      if (sub_22BE25D28() != 13)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v412);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE38970();
      sub_22C272FD4();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0xEu:
      sub_22BE18E74();
      sub_22BE3FF88(&a15);
      if (sub_22BE25D28() != 14)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v414);
      sub_22C0C1B18();
      v366 = v21[1];
      v367 = v20[1];
      if (v366)
      {
        if (!v367)
        {
          goto LABEL_175;
        }

        v368 = *v21 == *v20 && v366 == v367;
        if (!v368 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_175;
        }
      }

      else if (v367)
      {
LABEL_175:
        sub_22C0C1AC4();
        sub_22BE291B0();
        sub_22C0C1AC4();
        sub_22BE3617C();
        sub_22C0C1AC4();
        goto LABEL_168;
      }

      sub_22C0E97EC(&v397);
      sub_22C0C1B6C();
      if ((sub_22BE3F474() & 1) == 0)
      {
        goto LABEL_175;
      }

LABEL_173:
      sub_22C0C1AC4();
      sub_22BE291B0();
      sub_22C0C1AC4();
LABEL_174:
      sub_22BE3617C();
      sub_22C0C1AC4();
LABEL_168:
      sub_22BE363EC();
      sub_22BE1AABC();
      return;
    case 0xFu:
      sub_22BE18E74();
      sub_22BE3FF88(&a11);
      if (sub_22BE25D28() != 15)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v413);
      sub_22C0C1B18();
      sub_22C0E9B30();
      sub_22BE982FC();
      if (v382)
      {
        sub_22C0E97EC(&v398);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x10u:
      sub_22BE18E74();
      sub_22BE3FF88(&a13);
      if (sub_22BE25D28() != 16)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v415);
      sub_22C0C1B18();
      sub_22C0E9B30();
      sub_22BE9AD38();
      if (v365)
      {
        sub_22C0E97EC(&v399);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x11u:
      sub_22BE18E74();
      sub_22BE3FF88(&a18);
      if (sub_22BE25D28() != 17)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v418);
      sub_22C0C1B18();
      sub_22C0E9B30();
      sub_22BE9A770();
      if (v383)
      {
        v384 = v21[1];
        v385 = v20[1];
        sub_22BE9A770();
        if (v386)
        {
          sub_22C0E9B3C(&v394);
          sub_22C0C1B6C();
          if (sub_22BE3F474())
          {
            goto LABEL_173;
          }
        }
      }

      goto LABEL_175;
    case 0x12u:
      sub_22BE18E74();
      sub_22BE3FF88(&a9);
      if (sub_22BE25D28() != 18)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v416);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoActionCancellation.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x13u:
      sub_22BE18E74();
      sub_22BE3FF88(&a10);
      if (sub_22BE25D28() != 19)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v417);
      sub_22C0C1B18();
      v388 = sub_22BE38970();
      static TranscriptProtoToolRetrievalResponse.== infix(_:_:)(v388, v389);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x14u:
      sub_22BE18E74();
      sub_22BE3FF88(&a12);
      if (sub_22BE25D28() != 20)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v419);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoSystemResponse.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x15u:
      sub_22BE18E74();
      sub_22BE3FF88(&a14);
      if (sub_22BE25D28() != 21)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v420);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoStatementResult.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x16u:
      sub_22BE18E74();
      sub_22BE3FF88(&a16);
      if (sub_22BE25D28() != 22)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v421);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoExternalAgentRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x17u:
      sub_22BE18E74();
      sub_22BE3FF88(&a17);
      if (sub_22BE25D28() != 23)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v422);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoExternalAgentOutcome.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x18u:
      sub_22BE18E74();
      v372 = v432;
      sub_22C0C2A68();
      if (sub_22BE25D28() != 24)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v425);
      sub_22C0C1B18();
      sub_22BE46B80();
      v375 = v364 && v373 == v374;
      if (v375 || (sub_22C274014()) && (sub_22BE9693C(*(v372 + 16), v20[2]))
      {
        sub_22C0E9B3C(&v396);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x19u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 25)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v423);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoToolResolution.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Au:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 26)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v424);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoUndoRedoRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Bu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 27)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v426);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoClientUndoRedoRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Cu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 28)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v427);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoTypeConversionRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Du:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 29)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v428);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoTypeConversionResult.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Eu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 30)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v429);
      sub_22C0C1B18();
      v387 = sub_22BE38970();
      static TranscriptProtoQueryDecorationResult.== infix(_:_:)(v387);
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x1Fu:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 31)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v430);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE38970();
      sub_22C272FD4();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x20u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 32)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v431);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoQueryDecorationPrePlannerResult.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x21u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 33)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v432);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoSkipStatement.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x22u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 34)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v433);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoExecutionPreconditionEvaluatorRequest.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x23u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 35)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v434);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoRequestAmendment.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x24u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 36)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v436);
      sub_22C0C1B18();
      sub_22BE46B80();
      v364 = v364 && v362 == v363;
      if (v364 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC(&v401);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x25u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 37)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v435);
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE38970();
      sub_22C272FD4();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x26u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 38)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v439);
      sub_22C0C1B18();
      sub_22BE46B80();
      v392 = v364 && v390 == v391;
      if (v392 || (sub_22C274014() & 1) != 0)
      {
        sub_22C0E97EC(v402);
        sub_22C0C1B6C();
        if (sub_22BE3F474())
        {
          goto LABEL_173;
        }
      }

      goto LABEL_175;
    case 0x27u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 39)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v437);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoIntermediateSystemResponse.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x28u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 40)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v438);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoIntermediateSystemResponseRendered.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x29u:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28() != 41)
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v440);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoAgentPrimitiveAction.== infix(_:_:)();
      sub_22BE3C5A4();
      goto LABEL_166;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_174;
      }

      goto LABEL_159;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_174;
      }

      goto LABEL_159;
    default:
      sub_22BE18E74();
      sub_22C0C2A68();
      if (sub_22BE25D28())
      {
        goto LABEL_158;
      }

      sub_22BE1A90C();
      sub_22BE324E0(&v400);
      sub_22C0C1B18();
      sub_22BE38970();
      static TranscriptProtoSessionStart.== infix(_:_:)();
      sub_22BE3C5A4();
LABEL_166:
      sub_22C0C1AC4();
      goto LABEL_167;
  }
}

uint64_t sub_22C0C1AC4()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18000(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C0C1B18()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE1834C(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

unint64_t sub_22C0C1B6C()
{
  result = qword_27D9090E0;
  if (!qword_27D9090E0)
  {
    sub_22C2704B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9090E0);
  }

  return result;
}

uint64_t TranscriptProtoTranscript.sessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t TranscriptProtoTranscript.sessionID.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoTranscript.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TranscriptProtoTranscript.clientSessionID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_22BE19454();
}

uint64_t TranscriptProtoTranscript.clientSessionID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t TranscriptProtoTranscript.init(sessionID:clientSessionID:events:)()
{
  sub_22BE3852C();
  v6 = sub_22BE367A8();
  v7 = type metadata accessor for TranscriptProtoTranscript(v6);
  result = sub_22C0E9D10(v7);
  *v5 = v4;
  v5[1] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[2] = v0;
  return result;
}

uint64_t TranscriptProtoTimepoint.rawDate.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoTimepoint(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoTimepoint.init(rawDate:suspendingClockInstantNs:continuousClockInstantNs:rawBootSessionUuid:)()
{
  sub_22BE3C358();
  sub_22BE3852C();
  v5 = sub_22BE367A8();
  v6 = type metadata accessor for TranscriptProtoTimepoint(v5);
  v7 = *(v6 + 28);
  sub_22C270454();
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v4 + *(v6 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  sub_22BE267B8();
}

uint64_t TranscriptProtoSessionStart.originatingDevice.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSessionStart(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionStart.genderSettings.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSessionStart(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoSessionStart.shouldExecutePreviousActionsForUserPrompt.setter()
{
  v2 = sub_22BE17BC4();
  result = type metadata accessor for TranscriptProtoSessionStart(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t TranscriptProtoSessionStart.shouldExecutePreviousActionsForUserPrompt.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoSessionStart(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoSessionStart.init(initialLocaleSettings:originatingDevice:genderSettings:shouldExecutePreviousActionsForUserPrompt:)()
{
  sub_22BE19460();
  v3 = v2;
  sub_22BE48E10();
  v4 = sub_22C0E9824();
  type metadata accessor for TranscriptProtoLocaleSettings(v4);
  v5 = sub_22BE238E8();
  v9 = sub_22C0E966C(v5, v6, v7, v8);
  v10 = type metadata accessor for TranscriptProtoSessionStart(v9);
  v11 = sub_22BE23ED8(v10);
  type metadata accessor for TranscriptProtoDeviceDetails(v11);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoGenderSettings(v16);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  v21 = *(v1 + 28);
  v22 = v0 + *(v1 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE431C0();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  *(v0 + v21) = v3;
  sub_22BE1AABC();
}

uint64_t sub_22C0C2214()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 20);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2274()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 20);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoDateTimeContext.dateTime.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoDateTimeContext(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoUserTurnStarted.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserTurnStarted(v0) + 20);
  return sub_22BE18504();
}

uint64_t sub_22C0C2400()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 24);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2460()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 24);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoUserTurnStarted.turn.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserTurnStarted(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C0C2500()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 28);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2560()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 28);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoUserTurnStarted.siriRequestContext.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoUserTurnStarted(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoUserTurnStarted.init(statementID:turn:turnID:siriRequestContext:)()
{
  sub_22BE19460();
  sub_22BE3CAC4();
  v3 = sub_22C0E9824();
  v4 = type metadata accessor for TranscriptProtoUserTurnStarted(v3);
  v5 = v4[5];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  v10 = v4[6];
  type metadata accessor for TranscriptProtoUserTurn(0);
  v11 = sub_22BE409A4();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = v4[7];
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = v0 + v4[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  sub_22BE2343C();
  *v0 = v2;
  v0[1] = v1;
  sub_22BE2343C();
  sub_22BE1AABC();
}

void static TranscriptProtoUserTurnEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE39FFC();
  v2 = type metadata accessor for TranscriptProtoUserTurnText(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22BE35598();
  v7 = type metadata accessor for TranscriptProtoUserTurnSpeech(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = sub_22C0E9BB8();
  v12 = type metadata accessor for TranscriptProtoUserTurnEnum(v11);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v16);
  sub_22BE26800();
  v17 = sub_22BE5CE4C(&qword_27D911708, &unk_22C2AE4C0);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B72C();
  v22 = *(v21 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() == 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE2BD04();
      sub_22C272FD4();
      sub_22C0C1AC4();
      sub_22BE1B328();
LABEL_8:
      sub_22C0C1AC4();
      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_9;
    }
  }

  else
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (sub_22C0E9EFC() != 1)
    {
      sub_22BE3D6A0();
      sub_22C0C1B18();
      sub_22C2704B4();
      sub_22C0C1B6C();
      sub_22BE25C08();
      sub_22C272FD4();
      sub_22C0C1AC4();
      sub_22BE38970();
      goto LABEL_8;
    }

    sub_22C0E9848();
  }

  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D911708, &unk_22C2AE4C0);
LABEL_9:
  sub_22BE1B1B8();
  sub_22BE1AABC();
}

uint64_t sub_22C0C2A68()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE1834C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t TranscriptProtoRequest.content.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.prescribedPlan.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.rawRewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.siriRequestContext.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 36);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.suggestedInvocation.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 40);
  return sub_22BE18504();
}

uint64_t sub_22C0C2E98()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 44);
  return sub_22BE182B4();
}

uint64_t sub_22C0C2EF8()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 44);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoRequest.datetimeContext.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequest(v0) + 44);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequest.init(content:safetyMode:prescribedPlan:rawRewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:datetimeContext:)@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoRequest(0);
  v7 = sub_22BFBFC98(v6);
  v8 = type metadata accessor for TranscriptProtoRequestContent(v7);
  sub_22BE1AF78(v8);
  v9 = v4[6];
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v10 = sub_22BE25B20();
  sub_22BE19DC4(v10, v11, v12, v13);
  v14 = v4[8];
  v15 = &a4[v4[7]];
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = v4[9];
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v24);
  v25 = v4[10];
  type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  sub_22BE1A140();
  sub_22BE19DC4(v26, v27, v28, v29);
  v30 = v4[11];
  type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v31, v32, v33, v34);
  v35 = &a4[v4[12]];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *a4 = a1;
  sub_22BE2343C();
  *v15 = a2;
  v15[1] = a3;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  return sub_22BE2343C();
}

void static TranscriptProtoRequestContentEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE46DA4(v1, v2);
  v4 = type metadata accessor for TranscriptProtoRequestContentStopContent(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v9 = sub_22C0E9724(v8);
  v10 = type metadata accessor for TranscriptProtoSystemPromptResolution(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v15 = sub_22BE28E74(v14);
  v16 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v15);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v20 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  v24 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v28);
  sub_22BE18094();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v30);
  sub_22BE25A90();
  v31 = sub_22BE5CE4C(&qword_27D911710, &qword_22C2AE4F8);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1B72C();
  v36 = *(v35 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() == 1)
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        sub_22BE324FC();
        static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_15;
      }

      sub_22C0E99B4();
      goto LABEL_13;
    case 2u:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() == 2)
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        static TranscriptProtoSystemPromptResolution.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_15;
      }

      sub_22BE3E76C();
      goto LABEL_13;
    case 3u:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() == 3)
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        sub_22C2704B4();
        sub_22C0C1B6C();
        sub_22BE2BD04();
        sub_22C272FD4();
        sub_22C0C1AC4();
        goto LABEL_15;
      }

      sub_22BE291DC();
      goto LABEL_13;
    default:
      sub_22BE2C6E8();
      sub_22C0C2A68();
      if (sub_22C0E9BA0())
      {
        sub_22BE379D8();
LABEL_13:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911710, &qword_22C2AE4F8);
      }

      else
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
        sub_22BE3C724();
        sub_22C0C1AC4();
LABEL_15:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoRequestContentTextContent.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContentSpeechContent.speechPackage.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContentSpeechContent.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestContentSpeechContent.preItnspeechPackage.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoRequestContentSpeechContent.init(text:speechPackage:statementID:preItnspeechPackage:)()
{
  sub_22BE22B9C();
  sub_22BE3CAC4();
  v3 = sub_22C0E9824();
  v4 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(v3);
  v5 = sub_22C0E9B88(v4);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage(v5);
  v7 = sub_22BE409A4();
  sub_22BE19DC4(v7, v8, v9, v6);
  v10 = v4[6];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = v4[7];
  sub_22BE1A140();
  sub_22BE19DC4(v16, v17, v18, v6);
  v19 = v0 + v4[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v2;
  v0[1] = v1;
  sub_22C0E9C9C();
  sub_22BE2343C();
  sub_22C0E9C9C();
  sub_22BE234D8();
}

uint64_t sub_22C0C3A94(uint64_t a1)
{
  v3 = sub_22C0E9824();
  v5 = v4(v3);
  sub_22BE38954(v5);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v1 = a1;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.init(text:confidenceScore:startTime:silenceStartTime:endTime:)(double a1, double a2, double a3)
{
  v10 = sub_22BE37898();
  v11 = v6 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(v10) + 36);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = v5;
  *(v6 + 8) = v4;
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.getter()
{
  v0 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  sub_22BE36160(*(v0 + 20));
  return sub_22BE19454();
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for TranscriptProtoExternalAgentRequest(v3);
  result = sub_22BE1AFA8(*(v4 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentRequest.rewriteMetadataInlined.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoExternalAgentRequest.init(content:rawRewriteMetadataEventID:rewriteMetadataInlined:)()
{
  sub_22BE3C358();
  v3 = sub_22BE2597C();
  v4 = type metadata accessor for TranscriptProtoRequestContent(v3);
  v7 = sub_22C0E966C(v2, v5, v6, v4);
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequest(v7);
  v9 = *(v8 + 24);
  v10 = (v2 + *(v8 + 20));
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE1A140();
  sub_22C0E9C4C(v11, v12, v13, v14);
  sub_22BE2590C();
  sub_22BE2343C();
  *v10 = v1;
  v10[1] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t sub_22C0C3E98()
{
  v4 = sub_22BE37898();
  v6 = v3 + *(v5(v4) + 24);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = v0;
  return result;
}

void static TranscriptProtoRequestPrescribedPlanEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE46DA4(v2, v3);
  v105 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(v4);
  v5 = sub_22BE18000(v105);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v113 = v8;
  v9 = sub_22BE183BC();
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v15 = sub_22BE48A8C(v14);
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(v15);
  v17 = sub_22BE19448(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v112 = v20;
  v21 = sub_22BE183BC();
  v22 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(v21);
  v23 = sub_22BE19448(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  v111 = v26;
  v27 = sub_22BE183BC();
  v28 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(v27);
  v29 = sub_22BE19448(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v109 = v32;
  v33 = sub_22BE183BC();
  v34 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(v33);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v108 = v38;
  v39 = sub_22BE183BC();
  v106 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(v39);
  v40 = sub_22BE18000(v106);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v110 = v43;
  v44 = sub_22BE183BC();
  v104 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(v44);
  v45 = sub_22BE18000(v104);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v107 = v48;
  v49 = sub_22BE183BC();
  v50 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(v49);
  v51 = sub_22BE18000(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE183AC();
  v115 = v54 - v55;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v56);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v57);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v58);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v59);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v60);
  sub_22BE2390C();
  v62 = MEMORY[0x28223BE20](v61);
  sub_22BE3C05C(v62, v63, v64, v65, v66, v67, v68, v69, v103);
  MEMORY[0x28223BE20](v70);
  v72 = &v103 - v71;
  v73 = sub_22BE5CE4C(&qword_27D911718, &unk_22C2AE510);
  sub_22BE19448(v73);
  v75 = *(v74 + 64);
  sub_22BE179FC();
  v77 = MEMORY[0x28223BE20](v76);
  v79 = &v103 - v78;
  v80 = *(v77 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE324FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE192FC();
      v88 = v114;
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 1)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22C0C1B18();
      v89 = *v88;
      v90 = v88[1];
      sub_22BE33C2C();
      v93 = v93 && v91 == v92;
      if (v93 || (sub_22C274014() & 1) != 0)
      {
        sub_22BE3FF30(v106);
        sub_22C0C1B6C();
        sub_22C0E9EC4();
      }

      goto LABEL_48;
    case 2u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 2)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22C0C1B18();
      v83 = sub_22BE25C08();
      static TranscriptProtoRequestPrescribedPlanTextTool.== infix(_:_:)(v83, v84);
      sub_22BE43208();
      sub_22C0C1AC4();
      goto LABEL_49;
    case 3u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() == 3)
      {
        sub_22BE39198();
        v85 = v109;
        sub_22C0C1B18();
        static TranscriptProtoRequestPrescribedPlanConvertTool.== infix(_:_:)(v1, v85);
        sub_22BE43208();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE291DC();
      goto LABEL_31;
    case 4u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() == 4)
      {
        sub_22BE39198();
        sub_22C0C1B18();
        v81 = sub_22BE33BE8();
        static TranscriptProtoRequestPrescribedPlanDisplayTool.== infix(_:_:)(v81, v82);
        sub_22BE43208();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE20118();
      goto LABEL_31;
    case 5u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() == 5)
      {
        sub_22BE39198();
        sub_22C0C1B18();
        v94 = sub_22BE2590C();
        static TranscriptProtoRequestPrescribedPlanKnowledgeTool.== infix(_:_:)(v94, v95);
        sub_22BE43208();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE379D8();
      goto LABEL_31;
    case 6u:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 6)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22BE385CC();
      sub_22C0C1B18();
      sub_22BE336E8();
      static TranscriptProtoRequestPrescribedPlanOpenTool.== infix(_:_:)();
      sub_22BE43208();
      sub_22C0C1AC4();
      sub_22BE1A8C4();
      goto LABEL_49;
    case 7u:
      sub_22BE192FC();
      v86 = v115;
      sub_22C0C2A68();
      if (sub_22C0E9C10() != 7)
      {
        goto LABEL_31;
      }

      sub_22BE39198();
      sub_22C0E9B7C();
      sub_22C0C1B18();
      v87 = *(v0 + 8);
      if (*(v86 + 8))
      {
        if (!*(v0 + 8))
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      if (*v86 != *v0)
      {
        v87 = 1;
      }

      if ((v87 & 1) == 0)
      {
LABEL_47:
        sub_22BE3FF30(v105);
        sub_22C0C1B6C();
        sub_22C0E9EC4();
      }

LABEL_48:
      sub_22C0C1AC4();
LABEL_49:
      sub_22C0C1AC4();
      sub_22BE36570();
      sub_22C0C1AC4();
LABEL_32:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
    default:
      sub_22BE192FC();
      sub_22C0C2A68();
      if (!sub_22C0E9C10())
      {
        sub_22BE39198();
        v96 = v107;
        sub_22C0C1B18();
        v97 = *v72;
        v98 = *(v72 + 1);
        sub_22BE33C2C();
        v101 = v93 && v99 == v100;
        if (v101 || (sub_22C274014()) && v72[16] == *(v96 + 16) && v72[17] == *(v96 + 17))
        {
          v102 = *(v104 + 28);
          sub_22C2704B4();
          sub_22C0C1B6C();
          sub_22C272FD4();
        }

        sub_22BE41774();
        sub_22C0C1AC4();
        goto LABEL_49;
      }

      sub_22BE3E76C();
LABEL_31:
      sub_22C0C1AC4();
      sub_22BE33928(v79, &qword_27D911718, &unk_22C2AE510);
      goto LABEL_32;
  }
}

uint64_t sub_22C0C48BC()
{
  v3 = sub_22BE28634();
  v5 = v2 + *(v4(v3) + 20);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

void TranscriptProtoRequestPrescribedPlanConvertTool.init(query:isExplicit:partner:directInvocationClient:)()
{
  sub_22BE3C358();
  sub_22BE32534();
  v6 = v5;
  v8 = v7;
  sub_22BE44738();
  v10 = v9;
  v11 = v9 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v4;
  *(v10 + 8) = v3;
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  *(v10 + 48) = v0;
  sub_22BE267B8();
}

uint64_t sub_22C0C4A98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_22BE367A8();
  v13 = v12(v11);
  result = sub_22C0E9D10(v13);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.getter()
{
  v0 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  sub_22BE38954(v0);
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.setter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  result = sub_22BE38954(v4);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init(resultStatementID:elementAtIndex:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  sub_22BE375F8();
  v9 = sub_22C0E966C(a3, v6, v7, v8);
  v10 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(v9);
  v11 = *(v10 + 24);
  v12 = a3 + *(v10 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  result = sub_22BE2343C();
  *v12 = a1;
  *(v12 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.elementAtIndex.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)()
{
  sub_22BE18378();
  v3 = v2;
  v4 = v2 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v1;
  *(v3 + 8) = v0 & 1;
  return result;
}

uint64_t TranscriptProtoAction.parameterValues.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t TranscriptProtoAction.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAction(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C0C4E40()
{
  v0 = sub_22BE2BB48();
  v2 = v1(v0);
  sub_22BE36160(*(v2 + 28));
  return sub_22BE19454();
}

uint64_t sub_22C0C4E8C()
{
  v3 = sub_22BE23708();
  v5 = v4(v3);
  result = sub_22BE1AFA8(*(v5 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoAction.bundleID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAction(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoAction.planEventID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAction(v0) + 32);
  return sub_22BE18504();
}

uint64_t sub_22C0C4FA0()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 36);
  return sub_22BE182B4();
}

uint64_t sub_22C0C5000()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 36);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoAction.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoAction(v0) + 36);
  return sub_22BE18504();
}

void TranscriptProtoAction.init(statementID:bundleID:isConfirmed:parameterValues:planEventID:tool:)()
{
  sub_22C0E9E48();
  v23 = v1;
  v21 = v2;
  v22 = v3;
  v5 = v4;
  v7 = v6;
  sub_22C0E9C34();
  v9 = v8;
  v10 = type metadata accessor for TranscriptProtoAction(0);
  v11 = v10[6];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = (v9 + v10[7]);
  v17 = (v9 + v10[8]);
  v18 = v10[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22C0E9744(v19);
  v20 = v9 + v10[10];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v16 = v0;
  v16[1] = v7;
  *v9 = v5;
  *(v9 + 8) = v21;
  *v17 = v22;
  v17[1] = v23;
  sub_22BE2343C();
  sub_22BE3E534();
}

uint64_t TranscriptProtoActionParameterValue.promptSelection.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionParameterValue(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionParameterValue.init(value:promptSelection:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoToolParameterValue(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoActionParameterValue(v5);
  v7 = sub_22BFBFCD0(v6);
  v8 = type metadata accessor for TranscriptProtoPromptSelection(v7);
  sub_22BE30FA8(v8);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoActionCancellation.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionCancellation(v0) + 20);
  return sub_22BE18504();
}

void TranscriptProtoPromptSelection.promptSelectionValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t TranscriptProtoPromptSelection.promptSelectionValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t static TranscriptProtoPromptSelectionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_22BE36330(a1, a2);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (!v7)
  {
    v4 = 0;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 == 1)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

uint64_t TranscriptProtoActionConfirmation.systemStyle.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionConfirmation(v0) + 20);
  return sub_22BE18504();
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911720, &unk_22C2AE540);
  sub_22BE19448(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  v4 = MEMORY[0x28223BE20](v3);
  sub_22BE3607C(v4);
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)();
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.source.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(bundleIdentifier:source:isExplicitRequest:)()
{
  sub_22BE3C358();
  v4 = v3;
  v5 = sub_22BE3E308();
  v6 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(v5) + 24);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_22BE1A140();
  sub_22C0E9C4C(v7, v8, v9, v10);
  *v2 = v1;
  *(v2 + 8) = v0;
  sub_22BE2343C();
  *(v2 + 16) = v4;
  sub_22BE267B8();
}

uint64_t TranscriptProtoParameterValue.promptSelection.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterValue(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterValue.init(value:promptSelection:)()
{
  sub_22BE28634();
  v1 = sub_22C272594();
  v4 = sub_22C0E966C(v0, v2, v3, v1);
  v5 = type metadata accessor for TranscriptProtoParameterValue(v4);
  v6 = sub_22BFBFCD0(v5);
  v7 = type metadata accessor for TranscriptProtoPromptSelection(v6);
  sub_22BE30FA8(v7);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoExternalAgentOutcome.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoExternalAgentOutcome.statementOutcome.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoExternalAgentOutcome.init(responseText:statementID:statementOutcome:)()
{
  sub_22BE3C358();
  v2 = sub_22BE37898();
  v3 = type metadata accessor for TranscriptProtoExternalAgentOutcome(v2);
  v4 = *(v3 + 20);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  v9 = *(v3 + 24);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE1A140();
  sub_22C0E9DE4(v10, v11, v12, v13);
  *v1 = v0;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoStatementResultPayload.response.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResultPayload(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResultPayload.init(outcome:response:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoStatementOutcome(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoStatementResultPayload(v5);
  v7 = sub_22BFBFCD0(v6);
  v8 = type metadata accessor for TranscriptProtoResponseManifest(v7);
  sub_22BE30FA8(v8);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

uint64_t TranscriptProtoStatementResult.actionEventID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t TranscriptProtoStatementResult.actionEventID.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoStatementResult.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.resultStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResult(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.originProgramStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResult(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0C5F3C()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 32);
  return sub_22BE182B4();
}

uint64_t sub_22C0C5F9C()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 32);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoStatementResult.originTaskStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResult(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoStatementResult.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoStatementResult(v0) + 36);
  return sub_22BE18504();
}

void TranscriptProtoStatementResult.init(actionEventID:payload:resultStatementID:originProgramStatementID:originTaskStatementID:tool:)()
{
  sub_22C0E9E48();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C0E9824();
  v6 = type metadata accessor for TranscriptProtoStatementResult(v5);
  v7 = v6[5];
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v6[6];
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v13);
  v17 = v6[7];
  v18 = sub_22BE3CE14();
  sub_22BE19DC4(v18, v19, v20, v13);
  v21 = v6[8];
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v13);
  v25 = v6[9];
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE1A140();
  sub_22BE19DC4(v26, v27, v28, v29);
  v30 = v0 + v6[10];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = v4;
  v0[1] = v2;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE3E534();
}

uint64_t TranscriptProtoCandidate.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCandidate(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCandidate.promptStatus.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCandidate(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoCandidate.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoCandidate(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoCandidate.init(value:source:promptStatus:statementID:)()
{
  sub_22BE19460();
  v1 = v0;
  v3 = *v2;
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = v4[5];
  sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  v10 = v4[6];
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = v4[7];
  sub_22BE375F8();
  v16 = sub_22BE409A4();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = &v1[v4[8]];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v1 = v3;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoCandidatePromptStatusEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_22BE36330(a1, a2);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (!v7)
  {
    v4 = 0;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 == 1)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

uint64_t TranscriptProtoClientAction.shimParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t TranscriptProtoClientAction.clientQueryID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_22BE19454();
}

uint64_t TranscriptProtoClientAction.clientQueryID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t TranscriptProtoClientAction.planEventID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_22BE19454();
}

uint64_t TranscriptProtoClientAction.planEventID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t TranscriptProtoClientAction.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoClientAction(v0) + 36);
  return sub_22BE18504();
}

void TranscriptProtoClientAction.init(toolID:parameters:clientQueryID:planEventID:statementID:shimParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE22B9C();
  sub_22C0E9DA0();
  sub_22BE1B23C();
  v31 = v30;
  v32 = type metadata accessor for TranscriptProtoClientAction(0);
  v33 = *(v32 + 36);
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v34, v35, v36, v37);
  v38 = v31 + *(v32 + 40);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v31 = v29;
  v31[1] = v28;
  v31[2] = v27;
  v31[4] = v26;
  v31[5] = v25;
  v31[6] = v24;
  v31[7] = v23;
  sub_22BE2343C();
  v31[3] = a23;
  sub_22BE234D8();
}

void static TranscriptProtoShimParameterEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE46DA4(v3, v4);
  v6 = type metadata accessor for TranscriptProtoPhotosCandidates(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v54 = v10;
  v11 = sub_22BE183BC();
  v12 = type metadata accessor for TranscriptProtoPersonQuery(v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v17 = sub_22BE48A8C(v16);
  v53 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(v17);
  v18 = sub_22BE18000(v53);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE28E74(v21);
  v22 = sub_22C272594();
  v23 = sub_22BE179D8(v22);
  v55 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v27 = sub_22C0E9BB8();
  v28 = type metadata accessor for TranscriptProtoShimParameterEnum(v27);
  v29 = sub_22BE18000(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v32);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v33);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v34);
  v36 = &v52 - v35;
  v37 = sub_22BE5CE4C(&qword_27D911728, &unk_22C2AE570);
  sub_22BE19448(v37);
  v39 = *(v38 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1B72C();
  v42 = *(v41 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14() != 1)
      {
        sub_22BE250B0();
        goto LABEL_20;
      }

      sub_22BE47E00();
      sub_22C0E9A68();
      sub_22C0C1B18();
      v45 = *v2;
      v46 = v2[1];
      sub_22BE33C2C();
      v49 = v49 && v47 == v48;
      if (v49 || (sub_22C274014() & 1) != 0)
      {
        sub_22BEC0A84(v53);
        sub_22C0C1B6C();
        sub_22C0E99FC();
        sub_22BE250B0();
        sub_22C0C1AC4();
      }

      else
      {
        sub_22BE250B0();
        sub_22C0C1AC4();
      }

      sub_22BE250B0();
      sub_22C0C1AC4();
      sub_22C0E97B4();
      goto LABEL_24;
    case 2u:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14() == 2)
      {
        sub_22BE28DC8();
        sub_22BE39F80();
        static TranscriptProtoPersonQuery.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE35838();
        goto LABEL_8;
      }

      sub_22BE291DC();
      goto LABEL_20;
    case 3u:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14() == 3)
      {
        sub_22BE47E00();
        sub_22C0E9D94();
        sub_22C0C1B18();
        v43 = sub_22BE336E8();
        static TranscriptProtoPhotosCandidates.== infix(_:_:)(v43, v44);
        sub_22C0C1AC4();
        sub_22BE1A8C4();
LABEL_8:
        sub_22C0C1AC4();
        goto LABEL_23;
      }

      sub_22C0E9A74();
LABEL_20:
      sub_22C0C1AC4();
      goto LABEL_21;
    default:
      sub_22BE20228();
      sub_22C0C2A68();
      if (sub_22C0E9F14())
      {
        (*(v55 + 8))(v36, v22);
LABEL_21:
        sub_22BE33928(v0, &qword_27D911728, &unk_22C2AE570);
      }

      else
      {
        v50 = v55;
        (*(v55 + 32))(v1, v0 + v42, v22);
        sub_22BE33BE8();
        sub_22C272584();
        v51 = *(v50 + 8);
        v51(v1, v22);
        v51(v36, v22);
LABEL_23:
        sub_22C0E97B4();
      }

LABEL_24:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoPersonQuery.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_22BE19454();
}

uint64_t TranscriptProtoPersonQuery.name.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t TranscriptProtoPersonQuery.handle.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPersonQuery(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoPersonQuery.id.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPersonQuery(v0) + 28);
  return sub_22BE18504();
}

uint64_t sub_22C0C6F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C0B0814();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoPersonQuery.Handle.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = 3;
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_22BE48874(v4);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a2 = v3;
  return result;
}

void TranscriptProtoPersonQuery.init(name:handle:isMe:id:)()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE41300();
  v10 = type metadata accessor for TranscriptProtoPersonQuery(v9);
  v11 = v10[6];
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = v10[8];
  v17 = (v2 + v10[7]);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *(v2 + 8) = v1;
  *(v2 + 16) = v0;
  sub_22BE2343C();
  *v2 = v8;
  *v17 = v6;
  v17[1] = v4;
  sub_22BE1AABC();
}

uint64_t sub_22C0C7104()
{
  v4 = sub_22BE37898();
  v6 = v3 + *(v5(v4) + 24);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v3[1] = v2;
  v3[2] = v1;
  *v3 = v0;
  return result;
}

uint64_t TranscriptProtoActionParameterContext.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionParameterContext(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionParameterContext.tool.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionParameterContext(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoActionParameterContext.init(statementID:parameterID:tool:actionClass:)()
{
  sub_22BE19460();
  sub_22BE48E10();
  v3 = v2;
  v5 = *v4;
  v6 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v7 = v6[6];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v6[7];
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = v3 + v6[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  *v3 = v1;
  *(v3 + 8) = v0;
  sub_22BE2343C();
  *(v3 + 16) = v5;
  sub_22BE1AABC();
}

void static TranscriptProtoSessionErrorEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE46DA4(v1, v2);
  v4 = type metadata accessor for TranscriptProtoExecutorError(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v9 = sub_22C0E9724(v8);
  v10 = type metadata accessor for TranscriptProtoPlannerError(v9);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v14 = sub_22C0E9BB8();
  v15 = type metadata accessor for TranscriptProtoSessionCoordinatorError(v14);
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v47 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v19 = sub_22BE18000(v47);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v23 = sub_22BE28E74(v22);
  v24 = type metadata accessor for TranscriptProtoSessionErrorEnum(v23);
  v25 = sub_22BE18000(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v28);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v29);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v30);
  v32 = (&v46 - v31);
  v33 = sub_22BE5CE4C(&qword_27D911730, &qword_22C2AE588);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1B72C();
  v38 = *(v37 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74() != 1)
      {
        goto LABEL_13;
      }

      sub_22C0E983C();
      sub_22C0C1B18();
      static TranscriptProtoSessionCoordinatorError.== infix(_:_:)();
      sub_22C0C1AC4();
      goto LABEL_10;
    case 2u:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74() == 2)
      {
        sub_22C0E9B94();
        sub_22C0C1B18();
        sub_22BE1A8C4();
        static TranscriptProtoPlannerError.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE336E8();
        goto LABEL_10;
      }

      sub_22C0E9A74();
      goto LABEL_13;
    case 3u:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74() != 3)
      {
        sub_22C0E9830();
        goto LABEL_13;
      }

      sub_22C0E9B94();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoExecutorError.== infix(_:_:)();
      sub_22C0C1AC4();
LABEL_10:
      sub_22C0C1AC4();
      sub_22BE1BCAC();
      break;
    default:
      sub_22BE33A6C();
      sub_22C0C2A68();
      if (sub_22C0E9F74())
      {
        sub_22BE28F6C();
LABEL_13:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911730, &qword_22C2AE588);
      }

      else
      {
        sub_22BE1B488();
        sub_22C0E9A68();
        sub_22C0C1B18();
        v39 = *v32;
        v40 = v32[1];
        sub_22BE33C2C();
        v43 = v43 && v41 == v42;
        if (v43 || (sub_22C274014() & 1) != 0)
        {
          v44 = v32[2];
          sub_22BE3FEBC();
          if (v43)
          {
            v45 = *(v47 + 24);
            sub_22C2704B4();
            sub_22C0C1B6C();
            sub_22BE3C224();
          }
        }

        sub_22BE18AC0();
        sub_22C0C1AC4();
        sub_22BE35838();
        sub_22C0C1AC4();
        sub_22BE1BCAC();
      }

      break;
  }

  sub_22C0E9B70();
  sub_22BE1AABC();
}

void static TranscriptProtoSessionCoordinatorErrorEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v45 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v3 = sub_22BE18000(v45);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE183AC();
  v44[2] = v6 - v7;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v8);
  sub_22BE19490();
  v44[1] = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE25A90();
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v12 = sub_22BE18000(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v15);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v16);
  v18 = (v44 - v17);
  v19 = sub_22BE5CE4C(&qword_27D911738, &qword_22C2AE598);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B72C();
  v24 = *(v23 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE37C04();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE1B488();
        sub_22C0E9A5C();
        sub_22C0C1B18();
        v26 = *v2;
        v27 = v2[1];
        sub_22BE33C2C();
        v30 = v30 && v28 == v29;
        if (v30 || (sub_22C274014() & 1) != 0)
        {
          v31 = v2[2];
          sub_22BE3FEBC();
          if (v30)
          {
            sub_22C0E9B14();
            sub_22C0C1B6C();
            sub_22BE3C224();
          }
        }

LABEL_34:
        sub_22BE18AC0();
        sub_22C0C1AC4();
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
        goto LABEL_35;
      }
    }

    else
    {
      sub_22BE37C04();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE1B488();
        sub_22C0C1B18();
        v32 = *v1;
        v33 = v1[1];
        sub_22BE33C2C();
        v36 = v30 && v34 == v35;
        if (v36 || (sub_22C274014() & 1) != 0)
        {
          v37 = v1[2];
          sub_22BE3FEBC();
          if (v30)
          {
            sub_22C0E9B14();
            sub_22C0C1B6C();
            sub_22BE39EB8();
          }
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    sub_22BE37C04();
    sub_22C0C2A68();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      v38 = *v18;
      v39 = v18[1];
      sub_22BE33C2C();
      v42 = v30 && v40 == v41;
      if (v42 || (sub_22C274014() & 1) != 0)
      {
        v43 = v18[2];
        sub_22BE3FEBC();
        if (v30)
        {
          sub_22C0E9B14();
          sub_22C0C1B6C();
          sub_22BE32E64();
        }
      }

      goto LABEL_34;
    }
  }

  sub_22BE28F6C();
  sub_22C0C1AC4();
  sub_22BE33928(v0, &qword_27D911738, &qword_22C2AE598);
LABEL_35:
  sub_22BE1AABC();
}

void static TranscriptProtoExecutorErrorEnum.== infix(_:_:)()
{
  sub_22BE3C358();
  v2 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_22BE35598();
  v7 = type metadata accessor for TranscriptProtoExecutorErrorEnum(v6);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v13 = (v12 - v11);
  v14 = sub_22BE5CE4C(&qword_27D911740, &qword_22C2AE5A8);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B72C();
  v19 = *(v18 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE181B0(v0);
  if (!v20)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    sub_22BE181B0(v0 + v19);
    if (!v20)
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      v21 = *v13;
      v22 = v13[1];
      sub_22C0E9854();
      if (v23)
      {
        v26 = v24 == v25;
      }

      else
      {
        v26 = 0;
      }

      if (!v26 && (sub_22C274014() & 1) == 0 || v13[2] != *(v1 + 16) || (v27 = *(v2 + 24), sub_22C2704B4(), sub_22C0C1B6C(), (sub_22C0E9EA4() & 1) == 0))
      {
        sub_22BE18AC0();
        sub_22C0C1AC4();
        sub_22BE3C5E4();
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
        goto LABEL_19;
      }

      sub_22BE18AC0();
      sub_22C0C1AC4();
      sub_22BE3C5E4();
      sub_22C0C1AC4();
      goto LABEL_5;
    }

    sub_22BE28F6C();
    sub_22C0C1AC4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D911740, &qword_22C2AE5A8);
    goto LABEL_19;
  }

  sub_22BE181B0(v0 + v19);
  if (!v20)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_22BE26148();
  sub_22C0C1AC4();
LABEL_19:
  sub_22BE267B8();
}

void static TranscriptProtoPlannerErrorEnum.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22C0E9C34();
  v28 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = sub_22BE18000(v28);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE183AC();
  sub_22BE41FF4();
  MEMORY[0x28223BE20](v8);
  sub_22BE181E4();
  v9 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v13);
  sub_22BE26800();
  v14 = sub_22BE5CE4C(&qword_27D911748, &qword_22C2AE5B8);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B72C();
  v19 = *(v18 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22BE1B62C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      v27 = *v4 == *v3 && v4[1] == v3[1];
      if (v27 || (sub_22C274014()) && v4[2] == v3[2])
      {
        sub_22C0E9B14();
        sub_22C0C1B6C();
        if (sub_22C272FD4())
        {
          goto LABEL_24;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22BE19EBC();
    sub_22C0C2A68();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE1B488();
      sub_22C0C1B18();
      v21 = *v2;
      v22 = v2[1];
      sub_22C0E9854();
      v25 = v25 && v23 == v24;
      if (v25 || (sub_22C274014()) && v2[2] == *(v1 + 16))
      {
        v26 = *(v28 + 24);
        sub_22C2704B4();
        sub_22C0C1B6C();
        if (sub_22C0E9EA4())
        {
LABEL_24:
          sub_22BE18AC0();
          sub_22C0C1AC4();
          sub_22C0C1AC4();
          goto LABEL_25;
        }
      }

LABEL_26:
      sub_22BE18AC0();
      sub_22C0C1AC4();
      sub_22C0C1AC4();
      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_27;
    }

LABEL_13:
    sub_22BE28F6C();
    sub_22C0C1AC4();
    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
LABEL_25:
    sub_22BE26148();
    sub_22C0C1AC4();
    goto LABEL_27;
  }

LABEL_15:
  sub_22BE33928(v0, &qword_27D911748, &qword_22C2AE5B8);
LABEL_27:
  sub_22BE1AABC();
}

void static TranscriptProtoActionRequirementEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v2 = sub_22BE19448(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17A44();
  v5 = sub_22BE183BC();
  v6 = type metadata accessor for TranscriptProtoPermissionRequirement(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_22BE35598();
  v11 = type metadata accessor for TranscriptProtoAppRequirement(v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v19);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v20);
  sub_22BE324EC();
  v21 = sub_22BE5CE4C(&qword_27D911750, &qword_22C2AE5C8);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1B72C();
  v26 = *(v25 + 56);
  sub_22C0C2A68();
  sub_22C0E9D34();
  sub_22BE1B62C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE390E8();
      sub_22C0C2A68();
      if (sub_22C0E9F5C() != 1)
      {
        goto LABEL_11;
      }

      sub_22BE393F8();
      sub_22C0C1B18();
      static TranscriptProtoPermissionRequirement.== infix(_:_:)();
      sub_22C0C1AC4();
      goto LABEL_14;
    case 2u:
      sub_22BE390E8();
      sub_22C0C2A68();
      if (sub_22C0E9F5C() == 2)
      {
        sub_22BE393F8();
        sub_22C0C1B18();
        static TranscriptProtoSystemRequirementMessage.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_14;
      }

      sub_22BE3ACD8();
      goto LABEL_11;
    case 3u:
      if (sub_22C0E9F5C() != 3)
      {
        goto LABEL_12;
      }

      sub_22BE26148();
      sub_22C0C1AC4();
      goto LABEL_15;
    default:
      sub_22BE390E8();
      sub_22C0C2A68();
      if (sub_22C0E9F5C())
      {
        sub_22BE3E76C();
LABEL_11:
        sub_22C0C1AC4();
LABEL_12:
        sub_22BE33928(v0, &qword_27D911750, &qword_22C2AE5C8);
      }

      else
      {
        sub_22BE393F8();
        sub_22C0C1B18();
        static TranscriptProtoAppRequirement.== infix(_:_:)();
        sub_22C0C1AC4();
LABEL_14:
        sub_22C0C1AC4();
        sub_22BE26148();
        sub_22C0C1AC4();
      }

LABEL_15:
      sub_22BE363EC();
      sub_22BE1AABC();
      return;
  }
}

void static TranscriptProtoSystemRequirementMessageEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  v38 = v6;
  v7 = sub_22BE183BC();
  v8 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(v7);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v12 = sub_22BE37EA4();
  v37 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(v12);
  v13 = sub_22BE18000(v37);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v16 = sub_22BE183BC();
  v17 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(v16);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  v23 = (v21 - v22);
  MEMORY[0x28223BE20](v24);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v25);
  sub_22BE181E4();
  v26 = sub_22BE5CE4C(&qword_27D911758, &qword_22C2AE5D8);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B72C();
  v31 = *(v30 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C0E96D4();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() != 1)
      {
        goto LABEL_18;
      }

      sub_22C0E9A50();
      sub_22C0C1B18();
      static TranscriptProtoSystemRequirementAuthenticationRequest.== infix(_:_:)();
      sub_22C0C1AC4();
      sub_22BE3C5E4();
      goto LABEL_12;
    case 2u:
      sub_22C0E96D4();
      sub_22C0C2A68();
      if (sub_22C0E9BA0() != 2)
      {
        sub_22BE3E76C();
        goto LABEL_18;
      }

      sub_22C0E9A50();
      sub_22C0C1B18();
      static TranscriptProtoSystemRequirementUserLocationForSystemRequest.== infix(_:_:)(v23, v38);
      sub_22C0C1AC4();
LABEL_12:
      sub_22C0C1AC4();
      sub_22BE23A1C();
      break;
    case 3u:
      if (sub_22C0E9BA0() == 3)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    case 4u:
      if (sub_22C0E9BA0() == 4)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    case 5u:
      if (sub_22C0E9BA0() == 5)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    case 6u:
      if (sub_22C0E9BA0() == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    default:
      sub_22C0E96D4();
      sub_22C0C2A68();
      if (sub_22C0E9BA0())
      {
        sub_22C0E9830();
LABEL_18:
        sub_22C0C1AC4();
LABEL_19:
        sub_22BE33928(v0, &qword_27D911758, &qword_22C2AE5D8);
      }

      else
      {
        sub_22C0E9A50();
        sub_22C0C1B18();
        v32 = *v1;
        v33 = v1[1];
        sub_22BE33C2C();
        v36 = v36 && v34 == v35;
        if (v36 || (sub_22C274014()) && (sub_22BEC0A84(v37), sub_22C0C1B6C(), (sub_22BE39EB8()))
        {
          sub_22C0E98D0();
          sub_22C0C1AC4();
          sub_22BE431C0();
          sub_22C0C1AC4();
LABEL_27:
          sub_22BE23A1C();
        }

        else
        {
          sub_22C0E98D0();
          sub_22C0C1AC4();
          sub_22BE431C0();
          sub_22C0C1AC4();
          sub_22BE23A1C();
        }
      }

      break;
  }

  sub_22C0E9B70();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.minimumViableLocationAccuracy.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.timeoutForLocationFetch.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.timeoutForLocationFetch.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.init(isPreciseLocationRequired:minimumViableLocationAccuracy:timeoutForLocationFetch:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  result = sub_22C0E9D10(v12);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t _s30IntelligenceFlowPlannerSupport053TranscriptProtoSystemRequirementAuthenticationRequestI9LevelEnumO9hashValueSivg_0()
{
  sub_22C0E9D88();
  sub_22C274154();
  sub_22BE290B4();
  return sub_22C2741A4();
}

uint64_t sub_22C0C8FD0()
{
  sub_22C0E9D88();
  sub_22C274154();
  sub_22BE290B4();
  return sub_22C2741A4();
}

uint64_t TranscriptProtoActionFailure.concludesStreamingStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionFailure(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionFailure.init(failure:concludesStreamingStatementID:)()
{
  v1 = sub_22BE28634();
  v2 = type metadata accessor for TranscriptProtoActionFailureFailure(v1);
  v5 = sub_22C0E966C(v0, v3, v4, v2);
  v6 = type metadata accessor for TranscriptProtoActionFailure(v5);
  v7 = sub_22BFBFCD0(v6);
  v8 = type metadata accessor for TranscriptProtoStatementID(v7);
  sub_22BE30FA8(v8);
  sub_22BE18040();
  sub_22BE2343C();
  sub_22C0E987C();
  return sub_22BE2343C();
}

void static TranscriptProtoActionFailureFailureEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v4 = sub_22BE18000(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v37 = v7;
  v8 = sub_22BE183BC();
  v9 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(v8);
  v10 = sub_22BE18000(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v36 = v13;
  v14 = sub_22BE183BC();
  v15 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(v14);
  v16 = sub_22BE18000(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v19);
  sub_22BE181E4();
  v20 = sub_22BE5CE4C(&qword_27D911760, &qword_22C2AE5F8);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1B72C();
  v25 = *(v24 + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE19EBC();
      sub_22C0C2A68();
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_49;
      }

      sub_22C0E9B94();
      sub_22C0C1B18();
      v26 = v2[1];
      v27 = v37[1];
      if (v26)
      {
        if (!v27)
        {
          goto LABEL_71;
        }

        v28 = *v2 == *v37 && v26 == v27;
        if (!v28 && (sub_22C274014() & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (v27)
      {
LABEL_71:
        sub_22C0E9888();
        sub_22C0C1AC4();
        goto LABEL_72;
      }

      v35 = *(v3 + 20);
      sub_22C2704B4();
      sub_22C0C1B6C();
      if (sub_22BE3C224())
      {
        sub_22C0E9888();
        sub_22C0C1AC4();
        goto LABEL_68;
      }

      goto LABEL_71;
    case 2u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 3u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 4u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 5u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 6u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 7u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 8u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 9u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xAu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xBu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xCu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xDu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xEu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0xFu:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x10u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x11u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x12u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    case 0x13u:
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    default:
      sub_22BE19EBC();
      sub_22C0C2A68();
      sub_22C0E983C();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22C0E9830();
LABEL_49:
        sub_22C0C1AC4();
LABEL_50:
        sub_22BE33928(v0, &qword_27D911760, &qword_22C2AE5F8);
      }

      else
      {
        sub_22C0E9B94();
        sub_22C0C1B18();
        v29 = *v1;
        v30 = v1[1];
        sub_22BE33C2C();
        v33 = v28 && v31 == v32;
        if (v33 || (sub_22C274014()) && (v1[2] == v36[2] ? (v34 = v1[3] == v36[3]) : (v34 = 0), (v34 || (sub_22C274014()) && v1[4] == v36[4] && (sub_22BE27190(), sub_22C2704B4(), sub_22C0C1B6C(), (sub_22BE39EB8())))
        {
          sub_22C0E98A0();
          sub_22C0C1AC4();
LABEL_68:
          sub_22C0C1AC4();
LABEL_69:
          sub_22BE26148();
          sub_22C0C1AC4();
        }

        else
        {
          sub_22C0E98A0();
          sub_22C0C1AC4();
LABEL_72:
          sub_22C0C1AC4();
          sub_22BE26148();
          sub_22C0C1AC4();
        }
      }

      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoActionSuccess.returnValue.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.undoContext.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 28);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.followUpAction.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 32);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.getter()
{
  v0 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22BE36160(*(v0 + 36));
  return sub_22BE19454();
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for TranscriptProtoActionSuccess(v3);
  result = sub_22BE1AFA8(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 36);
  return sub_22BE18504();
}

uint64_t sub_22C0C9AB8()
{
  v0 = sub_22BE1C364();
  v2 = *(v1(v0) + 40);
  return sub_22BE182B4();
}

uint64_t sub_22C0C9B18()
{
  v0 = sub_22BE27BE8();
  v2 = *(v1(v0) + 40);
  return sub_22BFBFC6C();
}

uint64_t TranscriptProtoActionSuccess.concludesStreamingStatementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoActionSuccess(v0) + 40);
  return sub_22BE18504();
}

uint64_t TranscriptProtoActionSuccess.init(returnValue:undoContext:didShowInAppResult:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_22C0E9C34();
  v9 = v8;
  v10 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v11 = v10[6];
  sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v12, v13, v14, v15);
  v16 = v10[7];
  type metadata accessor for TranscriptProtoUndoContext(0);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  v21 = v10[8];
  type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v25);
  v26 = v10[10];
  v27 = &v9[v10[9]];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v28, v29, v30, v31);
  v32 = &v9[v10[11]];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  sub_22BE2343C();
  *v9 = a3;
  sub_22BE2343C();
  v9[1] = a5;
  *v27 = a6;
  v27[1] = a7;
  return sub_22BE2343C();
}

uint64_t sub_22C0C9DAC()
{
  sub_22BE3852C();
  v2 = v1;
  v4 = v3(0);
  v7 = sub_22C0E966C(v2, v5, v6, v4);
  v8 = v2 + *(v0(v7) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2590C();
  return sub_22BE3D598();
}

void static TranscriptProtoFollowUpActionExecutableActionEnum.== infix(_:_:)()
{
  sub_22BE3C358();
  v1 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v2 = sub_22BE18000(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE183AC();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  sub_22C0E9BD8();
  v9 = sub_22BE5CE4C(&qword_27D911768, &unk_22C2AE620);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  v13 = *(MEMORY[0x28223BE20](v12) + 56);
  sub_22C0C2A68();
  sub_22C0C2A68();
  sub_22C0C1B18();
  sub_22C0C1B18();
  v14 = *v0 == *v7 && v0[1] == v7[1];
  if (v14 || (sub_22C274014()) && (MEMORY[0x2318A6720](v0[2], v0[3], v7[2], v7[3]) & 1) != 0 && v0[4] == v7[4])
  {
    v15 = *(v1 + 28);
    sub_22C2704B4();
    sub_22C0C1B6C();
    sub_22C272FD4();
  }

  sub_22C0C1AC4();
  sub_22C0C1AC4();
  sub_22BE267B8();
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_22BE19454();
  sub_22BE29D7C(v3, v4);
  return sub_22BE19454();
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.setter()
{
  sub_22BE1A8A8();
  result = sub_22BE29DD4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22C0CA26C()
{
  sub_22BE3852C();
  v6 = sub_22BE367A8();
  v8 = v7(v6);
  result = sub_22C0E9D10(v8);
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0;
  return result;
}

uint64_t TranscriptProtoParameterConfirmation.item.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterConfirmation(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterConfirmation.ancestorValue.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterConfirmation(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoParameterConfirmation.init(parameterID:parameterIndex:item:ancestorValue:)()
{
  sub_22BE22B9C();
  v5 = v4;
  v6 = sub_22BE41300();
  v7 = type metadata accessor for TranscriptProtoParameterConfirmation(v6);
  v8 = v7[6];
  v9 = sub_22C272594();
  sub_22BE1A140();
  sub_22BE19DC4(v10, v11, v12, v9);
  v13 = v7[7];
  sub_22BE1A140();
  sub_22BE19DC4(v14, v15, v16, v9);
  v17 = v3 + v7[8];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 16) = v0;
  *(v3 + 24) = v5 & 1;
  sub_22C0E9CCC();
  sub_22C0E9CCC();
  sub_22BE234D8();
}

uint64_t TranscriptProtoParameterDisambiguation.init(parameterID:parameterIndex:items:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = sub_22BE367A8();
  v12 = type metadata accessor for TranscriptProtoParameterDisambiguation(v11);
  result = sub_22C0E9D10(v12);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 32) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a3;
  return result;
}

void static TranscriptProtoStatementOutcomeEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v138 = v2;
  v139 = v1;
  v3 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v134 = v7;
  v8 = sub_22BE183BC();
  v127[0] = type metadata accessor for TranscriptProtoValueDisambiguation(v8);
  v9 = sub_22BE18000(v127[0]);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v135 = v12;
  v13 = sub_22BE183BC();
  v14 = type metadata accessor for TranscriptProtoActionFailure(v13);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  v133 = v18;
  v19 = sub_22BE183BC();
  v20 = type metadata accessor for TranscriptProtoToolDisambiguation(v19);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v132 = v24;
  v25 = sub_22BE183BC();
  v26 = type metadata accessor for TranscriptProtoActionRequirement(v25);
  v27 = sub_22BE19448(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  v131 = v30;
  v31 = sub_22BE183BC();
  v32 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v31);
  v33 = sub_22BE19448(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v130 = v36;
  v37 = sub_22BE183BC();
  v38 = type metadata accessor for TranscriptProtoParameterNotAllowed(v37);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  v129 = v42;
  v43 = sub_22BE183BC();
  v44 = type metadata accessor for TranscriptProtoParameterDisambiguation(v43);
  v45 = sub_22BE19448(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v128 = v48;
  v49 = sub_22BE183BC();
  v50 = type metadata accessor for TranscriptProtoParameterConfirmation(v49);
  v51 = sub_22BE19448(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17A44();
  v127[4] = v54;
  v55 = sub_22BE183BC();
  v56 = type metadata accessor for TranscriptProtoParameterNeedsValue(v55);
  v57 = sub_22BE19448(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17A44();
  v127[3] = v60;
  v61 = sub_22BE183BC();
  v62 = type metadata accessor for TranscriptProtoActionConfirmation(v61);
  v63 = sub_22BE19448(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17A44();
  v127[2] = v66;
  v67 = sub_22BE183BC();
  v68 = type metadata accessor for TranscriptProtoActionSuccess(v67);
  v69 = sub_22BE19448(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17A44();
  v127[1] = v72;
  v73 = sub_22BE183BC();
  v74 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(v73);
  v75 = sub_22BE18000(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE183AC();
  sub_22BE389A0();
  v79 = MEMORY[0x28223BE20](v78);
  sub_22BE3C05C(v79, v80, v81, v82, v83, v84, v85, v86, v127[0]);
  v88 = MEMORY[0x28223BE20](v87);
  sub_22BE23730(v88, v89, v90, v91, v92, v93, v94, v95, v127[0]);
  MEMORY[0x28223BE20](v96);
  sub_22BE19490();
  v137 = v97;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v98);
  sub_22BE19490();
  v136 = v99;
  sub_22BE1B99C();
  v101 = MEMORY[0x28223BE20](v100);
  sub_22BE4608C(v101, v102, v103, v104, v105, v106, v107, v108, v127[0]);
  MEMORY[0x28223BE20](v109);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v110);
  sub_22BE23858();
  MEMORY[0x28223BE20](v111);
  sub_22BE25F20();
  MEMORY[0x28223BE20](v112);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v113);
  sub_22BE18094();
  MEMORY[0x28223BE20](v114);
  sub_22BE25A90();
  v115 = sub_22BE5CE4C(&qword_27D911770, &unk_22C2AE630);
  sub_22BE19448(v115);
  v117 = *(v116 + 64);
  sub_22BE179FC();
  v119 = MEMORY[0x28223BE20](v118);
  v121 = v127 - v120;
  v122 = *(v119 + 56);
  sub_22C0C2A68();
  v139 = v122;
  sub_22C0C2A68();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 1)
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        static TranscriptProtoActionConfirmation.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22BE3E76C();
      goto LABEL_39;
    case 2u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22C0C1B18();
        static TranscriptProtoParameterNeedsValue.== infix(_:_:)();
        sub_22C0C1AC4();
        sub_22BE19454();
        sub_22C0C1AC4();
        sub_22BE311F8();
        goto LABEL_30;
      }

      sub_22BE26148();
      goto LABEL_39;
    case 3u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 3)
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        sub_22BE33BE8();
        static TranscriptProtoParameterConfirmation.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22BE20118();
      goto LABEL_39;
    case 4u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 4)
      {
        sub_22BE3CF90();
        v123 = v128;
        sub_22C0C1B18();
        static TranscriptProtoParameterDisambiguation.== infix(_:_:)(v0, v123);
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22BE3ACD8();
      goto LABEL_39;
    case 5u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() == 5)
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        sub_22BE25C08();
        static TranscriptProtoParameterNotAllowed.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_29;
      }

      sub_22C0E9848();
      goto LABEL_39;
    case 6u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 6)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoParameterCandidatesNotFound.== infix(_:_:)();
      goto LABEL_28;
    case 7u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 7)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoActionRequirement.== infix(_:_:)();
      goto LABEL_28;
    case 8u:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 8)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      v125 = sub_22BE1B328();
      static TranscriptProtoToolDisambiguation.== infix(_:_:)(v125, v126);
      goto LABEL_28;
    case 9u:
      sub_22BE1A75C();
      sub_22BE385CC();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 9)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoActionFailure.== infix(_:_:)();
      goto LABEL_28;
    case 0xAu:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 10)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22C0E9E3C();
      sub_22BE98DD8();
      if (v124)
      {
        sub_22BE3FF30(v127[0]);
        sub_22C0C1B6C();
        sub_22C272FD4();
      }

      sub_22C0E99CC();
      sub_22C0C1AC4();
      sub_22C0C1AC4();
      sub_22BE311F8();
      sub_22C0C1AC4();
      goto LABEL_40;
    case 0xBu:
      sub_22BE1A75C();
      sub_22C0E9D94();
      sub_22C0C2A68();
      if (sub_22BE35D68() != 11)
      {
        goto LABEL_39;
      }

      sub_22BE3CF90();
      sub_22C0C1B18();
      sub_22BE1B328();
      static TranscriptProtoSnippetStream.== infix(_:_:)();
LABEL_28:
      sub_22C0C1AC4();
      goto LABEL_29;
    default:
      sub_22BE1A75C();
      sub_22C0C2A68();
      if (sub_22BE35D68())
      {
        sub_22BE379D8();
LABEL_39:
        sub_22C0C1AC4();
        sub_22BE33928(v121, &qword_27D911770, &unk_22C2AE630);
      }

      else
      {
        sub_22BE3CF90();
        sub_22C0C1B18();
        sub_22BE2590C();
        static TranscriptProtoActionSuccess.== infix(_:_:)();
        sub_22C0C1AC4();
LABEL_29:
        sub_22C0C1AC4();
        sub_22BE311F8();
LABEL_30:
        sub_22C0C1AC4();
      }

LABEL_40:
      sub_22C0E9B70();
      sub_22BE1AABC();
      return;
  }
}

uint64_t TranscriptProtoParameterNeedsValue.typeInstance.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterNeedsValue(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoParameterNeedsValue.context.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterNeedsValue(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoParameterNeedsValue.init(parameterID:typeInstance:context:)()
{
  sub_22BE3C358();
  v3 = sub_22BE2597C();
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValue(v3);
  sub_22BE23ED8(v4);
  sub_22C2725A4();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  v9 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoParameterNeedsValueContext(v9);
  sub_22BE1A140();
  sub_22C0E9C4C(v10, v11, v12, v13);
  *v2 = v1;
  v2[1] = v0;
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE267B8();
}

BOOL static TranscriptProtoParameterNeedsValueContextEnum.== infix(_:_:)()
{
  v1 = sub_22BE5CE4C(&qword_27D911778, &unk_22C2AE650);
  sub_22BE19448(v1);
  v3 = *(v2 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1B72C();
  v6 = v0 + *(v5 + 56);
  sub_22C0C2A68();
  sub_22BE18040();
  sub_22C0C2A68();
  v7 = *v0;
  v8 = v0[1];
  sub_22C0E9854();
  v11 = v11 && v9 == v10;
  v13 = 0;
  if (v11 || (sub_22C274014() & 1) != 0)
  {
    v12 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
    sub_22BE341A4(v12);
    sub_22C2704B4();
    sub_22C0C1B6C();
    if (sub_22C0E9E84())
    {
      v13 = 1;
    }
  }

  sub_22C0C1AC4();
  sub_22BE260B8();
  sub_22C0C1AC4();
  return v13;
}

uint64_t TranscriptProtoParameterNotAllowed.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(v0) + 24);
  return sub_22BE18504();
}

uint64_t sub_22C0CB5E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C09DB48();

  return MEMORY[0x28217E238](a1, a2, v4);
}

void TranscriptProtoParameterNotAllowed.init(parameterID:value:reason:)()
{
  sub_22BE3C358();
  sub_22BE28798();
  v4 = *v3;
  v5 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
  sub_22C272594();
  sub_22BE1A140();
  sub_22C0E9DE4(v6, v7, v8, v9);
  *v2 = v1;
  *(v2 + 8) = v0;
  sub_22BE2343C();
  *(v2 + 16) = v4;
  sub_22BE267B8();
}

uint64_t TranscriptProtoParameterCandidatesNotFound.value.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0CB7B0()
{
  sub_22BE19460();
  sub_22BE32534();
  v4 = sub_22BE41300();
  v6 = v5(v4);
  v7 = sub_22C0E9B88(v6);
  v0(v7);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v3 + *(v6 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v3 = v2;
  v3[1] = v1;
  sub_22BE2C278();
  sub_22BE1AABC();
}

uint64_t TranscriptProtoPlan.promptResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22BE19454();
}

uint64_t TranscriptProtoPlan.promptResponse.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TranscriptProtoPlan.statements.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t TranscriptProtoPlan.overrideID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_22BE19454();
}

uint64_t TranscriptProtoPlan.overrideID.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void TranscriptProtoPlan.init(prompt:promptResponse:statements:overrideID:planSource:)()
{
  sub_22BE19460();
  sub_22BE32534();
  v6 = v5;
  v8 = v7;
  sub_22BE44738();
  v10 = v9;
  v12 = *v11;
  *(v9 + 56) = 6;
  v13 = v9 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v10 = v4;
  *(v10 + 8) = v3;
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v2;
  *(v10 + 40) = v1;
  *(v10 + 48) = v0;
  *(v10 + 56) = v12;
  sub_22BE1AABC();
}

uint64_t static TranscriptProtoRecoverableErrorEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911780, &unk_22C2AE660);
  sub_22BE19448(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  v4 = MEMORY[0x28223BE20](v3);
  sub_22BE3607C(v4);
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  static TranscriptProtoPlanGenerationError.== infix(_:_:)();
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t static TranscriptProtoPlanGenerationErrorEnum.== infix(_:_:)()
{
  sub_22BE18378();
  v0 = sub_22BE5CE4C(&qword_27D911788, &unk_22C2AE670);
  sub_22BE19448(v0);
  v2 = *(v1 + 64);
  sub_22BE179FC();
  v4 = MEMORY[0x28223BE20](v3);
  sub_22BE3607C(v4);
  sub_22C0C2A68();
  sub_22C0E987C();
  sub_22C0C2A68();
  sub_22C0E9C28();
  static TranscriptProtoPlanGenerationModelOutputError.== infix(_:_:)();
  sub_22C0C1AC4();
  sub_22BE1804C();
  sub_22C0C1AC4();
  return sub_22BE36384();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.error.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v0) + 24);
  return sub_22BE18504();
}

void TranscriptProtoPlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)()
{
  sub_22BE3C358();
  sub_22BE3852C();
  v5 = sub_22BE367A8();
  v6 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(v5) + 24);
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE1A140();
  sub_22C0E9E10(v7, v8, v9, v10);
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  v4[3] = v0;
  sub_22BE2343C();
  sub_22BE267B8();
}

uint64_t TranscriptProtoQueryStep.statementID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryStep(v0) + 20);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryStep.context.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryStep(v0) + 24);
  return sub_22BE18504();
}

uint64_t TranscriptProtoQueryStep.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryStep(v0) + 28);
  return sub_22BE18504();
}

void TranscriptProtoQueryStep.init(statementID:context:payload:isAuthenticated:)()
{
  sub_22BE19460();
  v2 = v1;
  sub_22BE48E10();
  v3 = sub_22C0E9824();
  Step = type metadata accessor for TranscriptProtoQueryStep(v3);
  v5 = Step[5];
  sub_22BE375F8();
  sub_22BE1A140();
  sub_22BE19DC4(v6, v7, v8, v9);
  v10 = sub_22C0E9D7C();
  type metadata accessor for TranscriptProtoActionParameterContext(v10);
  sub_22BE1A140();
  sub_22BE19DC4(v11, v12, v13, v14);
  v15 = Step[7];
  type metadata accessor for TranscriptProtoQueryPayload(0);
  v16 = sub_22BE409A4();
  sub_22BE19DC4(v16, v17, v18, v19);
  v20 = &v0[Step[8]];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE2343C();
  sub_22BE2343C();
  sub_22BE2343C();
  *v0 = v2;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoQueryPayload.StringQuery.typeID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v0) + 20);
  return sub_22BE18504();
}

void sub_22C0CC310()
{
  sub_22BE19460();
  sub_22BE32534();
  v4 = sub_22BE41300();
  v6 = v5(v4);
  v7 = sub_22C0E9B88(v6);
  v0(v7);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v3 + *(v6 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE3D598();
  *v3 = v2;
  v3[1] = v1;
  sub_22BE1AABC();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.typeID.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v0) + 20);
  return sub_22BE18504();
}

void static TranscriptProtoQueryPayloadEnum.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE46DA4(v3, v4);
  v50 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(v5);
  v6 = sub_22BE18000(v50);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v10 = sub_22C0E9724(v9);
  v11 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v16 = sub_22BE28E74(v15);
  v17 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(v16);
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  v21 = sub_22BE183BC();
  v22 = type metadata accessor for TranscriptProtoPersonQuery(v21);
  v23 = sub_22BE19448(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v49 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v26 = sub_22BE18000(v49);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v30 = sub_22BE48A8C(v29);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(v30);
  v32 = sub_22BE18000(PayloadEnum);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v35);
  sub_22BE360F8();
  MEMORY[0x28223BE20](v36);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v37);
  sub_22BE2390C();
  MEMORY[0x28223BE20](v38);
  sub_22BE181E4();
  v39 = sub_22BE5CE4C(&qword_27D911790, &unk_22C2AE6A0);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1B72C();
  v44 = *(v43 + 56);
  sub_22C0C2A68();
  sub_22C0E9D34();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() != 1)
      {
        goto LABEL_17;
      }

      sub_22BE28DC8();
      sub_22C0C1B18();
      static TranscriptProtoPersonQuery.== infix(_:_:)();
      sub_22C0C1AC4();
      goto LABEL_23;
    case 2u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() == 2)
      {
        sub_22BE32BFC();
        sub_22C0E9D94();
        sub_22C0C1B18();
        sub_22BE2590C();
        static TranscriptProtoQueryPayload.StringQuery.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_23;
      }

      sub_22BE379D8();
      goto LABEL_17;
    case 3u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() == 3)
      {
        sub_22BE32BFC();
        sub_22C0E9A68();
        sub_22C0C1B18();
        static TranscriptProtoQueryPayload.IdentifierQuery.== infix(_:_:)();
        sub_22C0C1AC4();
        goto LABEL_23;
      }

      sub_22BE291DC();
      goto LABEL_17;
    case 4u:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C() != 4)
      {
        sub_22BE25274();
        goto LABEL_17;
      }

      sub_22BE32BFC();
      sub_22C0E9A5C();
      sub_22C0C1B18();
      v45 = *v2;
      v46 = *v1;
      sub_22BEA51FC();
      if (v47)
      {
        sub_22BEC0A84(v50);
        sub_22C0C1B6C();
        sub_22BE32E64();
      }

      sub_22BE25274();
      sub_22C0C1AC4();
      sub_22BE25274();
      goto LABEL_23;
    default:
      sub_22BE1A00C();
      sub_22C0C2A68();
      if (sub_22C0E9D4C())
      {
        sub_22BE35BC8();
LABEL_17:
        sub_22C0C1AC4();
        sub_22BE33928(v0, &qword_27D911790, &unk_22C2AE6A0);
      }

      else
      {
        sub_22BE32BFC();
        sub_22BE39F80();
        sub_22C0E9E3C();
        sub_22BEA51FC();
        if (v48)
        {
          sub_22BEC0A84(v49);
          sub_22C0C1B6C();
          sub_22BE39EB8();
        }

        sub_22BE35BC8();
        sub_22C0C1AC4();
        sub_22BE35BC8();
LABEL_23:
        sub_22C0C1AC4();
        sub_22BE20524();
      }

      sub_22BE1B1B8();
      sub_22BE1AABC();
      return;
  }
}