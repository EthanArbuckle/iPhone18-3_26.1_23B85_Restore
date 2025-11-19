uint64_t sub_22BFFE1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911560, &qword_22C2AE278);
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
    sub_22BE33928(v12, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D911560, &qword_22C2AE278);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911560, &qword_22C2AE278);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911560, &qword_22C2AE278);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911560, &qword_22C2AE278);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911560, &qword_22C2AE278);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D909218, &unk_22C2CC930);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoShimParameter.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = sub_22BE17D78();
      sub_22BFFE9F4(v21, v22, v23, v24);
      break;
    case 2u:
      v13 = sub_22BE17D78();
      sub_22BFFEBFC(v13, v14, v15, v16);
      break;
    case 3u:
      v17 = sub_22BE17D78();
      sub_22BFFEE04(v17, v18, v19, v20);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22BFFE7B8(v9, v10, v11, v12);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    v25 = type metadata accessor for TranscriptProtoShimParameter(0);
    sub_22BE235A8(v25);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BFFE7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C272594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v7, 1, v13) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
      sub_22C270884();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFFE9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFFEBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFFEE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909218, &unk_22C2CC930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909218, &unk_22C2CC930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoShimParameter.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoShimParameterEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909220, &qword_22C27FE10);
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
      sub_22BE33928(v0, &qword_27D909218, &unk_22C2CC930);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoShimParameter(0);
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
    sub_22BE33928(v0, &qword_27D909220, &qword_22C27FE10);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoShimParameterEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D909218, &unk_22C2CC930);
  if (&qword_27D909218)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22BFFF29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FE0, type metadata accessor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFF31C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFF38C()
{
  sub_22BE2C988(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter);

  return sub_22C270774();
}

uint64_t sub_22BFFF40C()
{
  result = MEMORY[0x2318AB8D0](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27D90D0C8 = 0xD000000000000018;
  unk_27D90D0D0 = 0x800000022C2D70B0;
  return result;
}

uint64_t sub_22BFFF594(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FD8, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFFF614(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFFF684()
{
  sub_22BE2C988(&qword_27D90F748, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return sub_22C270774();
}

uint64_t sub_22BFFF710()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D0F0);
  sub_22BE199F4(v0, qword_27D90D0F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handle";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isMe";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoPersonQuery.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BFFFA18();
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 4:
        sub_22C0B1800();
        sub_22BE18E2C();
        sub_22C098EAC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFFFA18()
{
  v0 = *(type metadata accessor for TranscriptProtoPersonQuery(0) + 24);
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_22BE2C988(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  return sub_22C2706F4();
}

void TranscriptProtoPersonQuery.traverse<A>(visitor:)()
{
  v1 = sub_22BE3B0CC();
  sub_22BE4E190(v1);
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BFFFB68(v2, v3, v4, v5);
    sub_22C0B1C3C();
    if (v6)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    sub_22C0B1800();
    sub_22BE17D60();
    sub_22C099168();
    v7 = *(type metadata accessor for TranscriptProtoPersonQuery(0) + 32);
    sub_22BE1AC30();
  }
}

uint64_t sub_22BFFFB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoPersonQuery(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E7A8, &unk_22C2B5C40);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoPersonQuery.== infix(_:_:)()
{
  sub_22BE19460();
  v5 = sub_22BE1B2D4();
  v6 = type metadata accessor for TranscriptProtoPersonQuery.Handle(v5);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE38390();
  v10 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v14 = sub_22BE5CE4C(&qword_27D90E7B0, &qword_22C296F78);
  sub_22BE28F58(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E64();
  v18 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v18)
    {
      goto LABEL_21;
    }

    sub_22C0B1A50();
    v21 = v21 && v19 == v20;
    if (!v21 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v18)
  {
    goto LABEL_21;
  }

  v22 = *(type metadata accessor for TranscriptProtoPersonQuery(0) + 24);
  v23 = *(v4 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v3);
  if (v21)
  {
    sub_22BE19FE0(v3 + v23);
    if (v21)
    {
      sub_22BE33928(v3, &qword_27D90E7A8, &unk_22C2B5C40);
      goto LABEL_20;
    }

LABEL_18:
    sub_22BE33928(v3, &qword_27D90E7B0, &qword_22C296F78);
    goto LABEL_21;
  }

  sub_22BE1BF88();
  sub_22BE22868();
  sub_22BE19FE0(v3 + v23);
  if (v24)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
    goto LABEL_18;
  }

  sub_22C0B0868();
  sub_22BE200E0();
  static TranscriptProtoPersonQuery.Handle.== infix(_:_:)();
  sub_22BE377A4();
  sub_22C0B08BC();
  sub_22BE18240();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D90E7A8, &unk_22C2B5C40);
  if ((&qword_27D90E7A8 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_20:
  sub_22C0B16C4();
  if (v21)
  {
    sub_22BE4827C();
    if (v28)
    {
      if (!v26)
      {
        goto LABEL_21;
      }

      sub_22BE3A508(v27);
      v31 = v21 && v29 == v30;
      if (!v31 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (v26)
    {
      goto LABEL_21;
    }

    v32 = *(v2 + 32);
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v33, v34);
    v25 = sub_22BE2B85C();
    goto LABEL_22;
  }

LABEL_21:
  v25 = 0;
LABEL_22:
  sub_22BE1C1DC(v25);
  sub_22BE1AABC();
}

uint64_t sub_22C000090(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FD0, type metadata accessor for TranscriptProtoPersonQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C000110(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C000180()
{
  sub_22BE2C988(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery);

  return sub_22C270774();
}

uint64_t sub_22C000200()
{
  result = MEMORY[0x2318AB8D0](0x656C646E61482ELL, 0xE700000000000000);
  qword_27D90D108 = 0xD000000000000016;
  unk_27D90D110 = 0x800000022C2D70D0;
  return result;
}

char *sub_22C0003A0(char *result)
{
  if (*result != 3)
  {
    v1 = *result;
    sub_22C0B0814();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22C0004BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FC8, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00053C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0005AC()
{
  sub_22BE2C988(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return sub_22C270774();
}

uint64_t sub_22C00062C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D130);
  sub_22BE199F4(v0, qword_27D90D130);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "phone";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "email";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "facetime";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C000870()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D148);
  sub_22BE199F4(v0, qword_27D90D148);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "searchQuery";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetEntities";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C000AB8()
{
  sub_22BE2BB34();
  sub_22BE26210();
  while (1)
  {
    sub_22BE180C8();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_22BE1B73C();
      sub_22BE35F2C();
      sub_22C0B1EF8();
    }

    else if (v1 == 1)
    {
      sub_22BE431FC();
      sub_22C270694();
    }
  }

  sub_22BEE93D4();
}

void TranscriptProtoPhotosCandidates.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22BE4E190(v1);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v2)
    {
      sub_22C272594();
      sub_22BE192C8();
      sub_22BE2C988(v3, v4);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
    sub_22BE25FB0(v5);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C000BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  sub_22BE18378();
  v8 = *(v4 + 16);
  if (*(v7 + 16))
  {
    if (!v8)
    {
      return 0;
    }

    sub_22C0B1A50();
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v12 = sub_22BE1BC88();
  if (a3(v12))
  {
    v13 = a4(0);
    sub_22BE23A04(v13);
    sub_22BE18E5C();
    sub_22BE2C988(v14, v15);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22C000D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FC0, type metadata accessor for TranscriptProtoPhotosCandidates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C000DD8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C000E48()
{
  sub_22BE2C988(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates);

  return sub_22C270774();
}

uint64_t sub_22C000ED4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D160);
  sub_22BE199F4(v0, qword_27D90D160);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 4;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "parameterId";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "tool";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "actionClass";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoActionParameterContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C0011DC();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C001290();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C001344();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0011DC()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C001290()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 28);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

void TranscriptProtoActionParameterContext.traverse<A>(visitor:)()
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v2 || (sub_22BE2910C(), sub_22C270844(), !v0))
  {
    v3 = sub_22BE17D60();
    sub_22C001460(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = sub_22BE17D60();
      sub_22C001634(v7, v8, v9, v10);
      if (*(v1 + 16))
      {
        v12 = *(v1 + 16);
        sub_22C09DAF4();
        sub_22BE23CE4();
        sub_22C2707D4();
      }

      v11 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 32);
      sub_22BE1AC30();
    }
  }

  sub_22C0B1ED0();
}

uint64_t sub_22C001460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C001634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E670, &unk_22C2CC890);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionParameterContext.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22C0B1BA0();
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v5);
  v7 = sub_22BE272C0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  sub_22BEE94C8(v10);
  v11 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE3C048(v15, v60);
  v16 = sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE1B7B0(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v63 = v20;
  v21 = sub_22BE183BC();
  v22 = type metadata accessor for TranscriptProtoStatementID(v21);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v26 = sub_22BE19454();
  v28 = sub_22BE5CE4C(v26, v27);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1B01C();
  v32 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE385BC(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v36 = sub_22BE1AED0();
  v62 = type metadata accessor for TranscriptProtoActionParameterContext(v36);
  v37 = v62[6];
  v38 = *(v1 + 56);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE1C14C(v2);
  if (v39)
  {
    sub_22BE1C14C(v2 + v38);
    if (v39)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v40 = &qword_27D909100;
    v41 = &unk_22C27FD00;
    v42 = v2;
LABEL_25:
    sub_22BE33928(v42, v40, v41);
    goto LABEL_26;
  }

  sub_22BE25C94();
  sub_22BE22868();
  sub_22BE1C14C(v2 + v38);
  if (v39)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v43 = sub_22BE23108();
  v45 = static TranscriptProtoStatementID.== infix(_:_:)(v43, v44);
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  sub_22C0B1E1C();
  if (v39)
  {
    v48 = v46 == v47;
  }

  else
  {
    v48 = 0;
  }

  if (!v48 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v49 = v62[7];
  v50 = *(v61 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v51 = sub_22BE23E90();
  sub_22BE36144(v51, v52);
  if (!v39)
  {
    sub_22BE35EF8();
    sub_22BE18190(v63 + v50);
    if (!v53)
    {
      sub_22BE41FDC();
      sub_22C0B0868();
      v55 = sub_22BE232C8();
      static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v55, v56);
      sub_22BE39304();
      sub_22BE200D4();
      sub_22C0B08BC();
      sub_22BE33928(v63, &qword_27D90E670, &unk_22C2CC890);
      if ((&unk_22C2CC890 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    sub_22BE30F90();
    sub_22C0B08BC();
    goto LABEL_24;
  }

  sub_22BE18190(v63 + v50);
  if (!v39)
  {
LABEL_24:
    v40 = &qword_27D90E678;
    v41 = &qword_22C296F38;
    v42 = v63;
    goto LABEL_25;
  }

  sub_22BE33928(v63, &qword_27D90E670, &unk_22C2CC890);
LABEL_29:
  if (*(v0 + 16) == *(v4 + 16))
  {
    v57 = v62[8];
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v58, v59);
    v54 = sub_22C0B1F58();
    goto LABEL_27;
  }

LABEL_26:
  v54 = 0;
LABEL_27:
  sub_22BE1C1DC(v54);
  sub_22BE1AABC();
}

uint64_t sub_22C001CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FB8, type metadata accessor for TranscriptProtoActionParameterContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C001D34(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C001DA4()
{
  sub_22BE2C988(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext);

  return sub_22C270774();
}

uint64_t sub_22C001E30()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D178);
  sub_22BE199F4(v0, qword_27D90D178);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C002048()
{
  sub_22BE1B0D8();
  while (1)
  {
    sub_22BE1AB1C();
    result = sub_22C270584();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE25300();
      v0();
    }

    else if (result == 1)
    {
      sub_22BE25300();
      sub_22C2706A4();
    }
  }

  return result;
}

uint64_t TranscriptProtoIntelligenceFlowError.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    if (!*(v1 + 16) || (sub_22BE1BAB8(), result = sub_22C270814(), !v0))
    {
      v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
      return sub_22BE25FB0(v4);
    }
  }

  return result;
}

uint64_t static TranscriptProtoIntelligenceFlowError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE23A04(v7);
  sub_22BE18E5C();
  sub_22BE2C988(v8, v9);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C002268(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FB0, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0022E8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C002358()
{
  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return sub_22C270774();
}

uint64_t sub_22C0023E4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D190);
  sub_22BE199F4(v0, qword_27D90D190);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sessionCoordinatorError";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plannerError";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "executorError";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0026B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
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
    sub_22BE33928(v12, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E7E8, &qword_22C2AE580);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C002BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911538, &qword_22C2AE258);
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
    sub_22BE33928(v12, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911538, &qword_22C2AE258);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F800, type metadata accessor for TranscriptProtoSessionCoordinatorError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911538, &qword_22C2AE258);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911538, &qword_22C2AE258);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911538, &qword_22C2AE258);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911538, &qword_22C2AE258);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E7E8, &qword_22C2AE580);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0030A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPlannerError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911540, &qword_22C2AE260);
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
    sub_22BE33928(v12, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D911540, &qword_22C2AE260);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F830, type metadata accessor for TranscriptProtoPlannerError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911540, &qword_22C2AE260);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911540, &qword_22C2AE260);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911540, &qword_22C2AE260);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911540, &qword_22C2AE260);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E7E8, &qword_22C2AE580);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C00359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoExecutorError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911548, &qword_22C2AE268);
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
    sub_22BE33928(v12, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D911548, &qword_22C2AE268);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F818, type metadata accessor for TranscriptProtoExecutorError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911548, &qword_22C2AE268);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911548, &qword_22C2AE268);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911548, &qword_22C2AE268);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911548, &qword_22C2AE268);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E7E8, &qword_22C2AE580);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoSessionError.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = sub_22BE17D78();
      sub_22C003DA4(v21, v22, v23, v24);
      break;
    case 2u:
      v13 = sub_22BE17D78();
      sub_22C003FAC(v13, v14, v15, v16);
      break;
    case 3u:
      v17 = sub_22BE17D78();
      sub_22C0041B4(v17, v18, v19, v20);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22C003BA0(v9, v10, v11, v12);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    v25 = type metadata accessor for TranscriptProtoSessionError(0);
    sub_22BE235A8(v25);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C003BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C003DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F800, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C003FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPlannerError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F830, type metadata accessor for TranscriptProtoPlannerError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0041B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E7E8, &qword_22C2AE580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExecutorError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E7E8, &qword_22C2AE580);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F818, type metadata accessor for TranscriptProtoExecutorError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoSessionError.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoSessionErrorEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E7F0, &qword_22C296F80);
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
      sub_22BE33928(v0, &qword_27D90E7E8, &qword_22C2AE580);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoSessionError(0);
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
    sub_22BE33928(v0, &qword_27D90E7F0, &qword_22C296F80);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoSessionErrorEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E7E8, &qword_22C2AE580);
  if (&qword_27D90E7E8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C00464C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FA8, type metadata accessor for TranscriptProtoSessionError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0046CC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F7E8, type metadata accessor for TranscriptProtoSessionError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00473C()
{
  sub_22BE2C988(&qword_27D90F7E8, type metadata accessor for TranscriptProtoSessionError);

  return sub_22C270774();
}

uint64_t sub_22C0047C8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D1A8);
  sub_22BE199F4(v0, qword_27D90D1A8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToWriteTranscript";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "failedToConvertClientEvent";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C004A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E800, &qword_22C2AE590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
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
    sub_22BE33928(v12, &qword_27D90E800, &qword_22C2AE590);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E800, &qword_22C2AE590);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C004F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E800, &qword_22C2AE590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
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
    sub_22BE33928(v12, &qword_27D90E800, &qword_22C2AE590);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E800, &qword_22C2AE590);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C005438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E800, &qword_22C2AE590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
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
    sub_22BE33928(v12, &qword_27D90E800, &qword_22C2AE590);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E800, &qword_22C2AE590);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoSessionCoordinatorError.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
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
      sub_22C005C1C(v10, v11, v12, v13);
    }

    else
    {
      v18 = sub_22BE17D78();
      sub_22C005E24(v18, v19, v20, v21);
    }
  }

  else
  {
    v14 = sub_22BE17D78();
    sub_22C005A18(v14, v15, v16, v17);
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    v22 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
    sub_22BE235A8(v22);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C005A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E800, &qword_22C2AE590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E800, &qword_22C2AE590);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C005C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E800, &qword_22C2AE590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E800, &qword_22C2AE590);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C005E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E800, &qword_22C2AE590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E800, &qword_22C2AE590);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoSessionCoordinatorError.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E808, &qword_22C296F88);
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
      sub_22BE33928(v0, &qword_27D90E800, &qword_22C2AE590);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
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
    sub_22BE33928(v0, &qword_27D90E808, &qword_22C296F88);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoSessionCoordinatorErrorEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E800, &qword_22C2AE590);
  if (&qword_27D90E800)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C0062BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910FA0, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00633C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F800, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0063AC()
{
  sub_22BE2C988(&qword_27D90F800, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return sub_22C270774();
}

uint64_t sub_22C006438()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D1C0);
  sub_22BE199F4(v0, qword_27D90D1C0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToExecute";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoExecutorError.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = sub_22BE18E2C();
      sub_22C006B78(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = sub_22BE236F4();
      sub_22C006688(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_22C006688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E818, &qword_22C2AE5A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_22BE19DC4(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_22BE22868();
  v30 = v13;
  v25 = sub_22BE1AEA8(v12, 1, v13);
  if (v25 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E818, &qword_22C2AE5A0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (sub_22BE1AEA8(v17, 1, v5) == 1)
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v24, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v26 = v33;
  sub_22C2706F4();
  if (v26)
  {
    v27 = v24;
    return sub_22BE33928(v27, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v22, 1, v5) == 1)
  {
    sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
    v27 = v22;
    return sub_22BE33928(v27, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  if (v25 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  v29 = v31;
  sub_22BE33928(v31, &qword_27D90E818, &qword_22C2AE5A0);
  sub_22C0B0868();
  sub_22BE19DC4(v29, 0, 1, v5);
  return sub_22BE19DC4(v29, 0, 1, v30);
}

uint64_t sub_22C006B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22BE5CE4C(&qword_27D90E818, &qword_22C2AE5A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - v9;
  v11 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v18 = sub_22C270424();
  sub_22BE19DC4(v17, 1, 1, v18);
  sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
  sub_22C2705D4();
  if (v4)
  {
    return sub_22BE33928(v17, &qword_27D9111D0, &byte_22C2ADF00);
  }

  v25[1] = a4;
  v26 = a2;
  sub_22BE22868();
  v19 = sub_22BE1AEA8(v15, 1, v18);
  sub_22BE33928(v15, &qword_27D9111D0, &byte_22C2ADF00);
  if (v19 == 1)
  {
    return sub_22BE33928(v17, &qword_27D9111D0, &byte_22C2ADF00);
  }

  sub_22BE22868();
  v20 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v21 = sub_22BE1AEA8(v10, 1, v20);
  sub_22BE33928(v10, &qword_27D90E818, &qword_22C2AE5A0);
  if (v21 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v17, &qword_27D9111D0, &byte_22C2ADF00);
  v23 = v26;
  sub_22BE33928(v26, &qword_27D90E818, &qword_22C2AE5A0);
  v24 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_22BE19DC4(v23, 1, 1, v24);
  return sub_22BE19DC4(v23, 0, 1, v20);
}

void TranscriptProtoExecutorError.traverse<A>(visitor:)()
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
  type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v7 = sub_22BFB1A7C();
  sub_22BE1AB5C(v7, v8, v9);
  if (v14)
  {
    goto LABEL_3;
  }

  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v11 = sub_22BFB1A7C();
  sub_22BE1AB5C(v11, v12, v13);
  if (v14)
  {
    v15 = sub_22BE17D78();
    sub_22C007150(v15, v16, v17, v18);
    if (v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = sub_22BE17D78();
  sub_22C006F48(v19, v20, v21, v22);
  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_3:
    v10 = type metadata accessor for TranscriptProtoExecutorError(0);
    sub_22BE235A8(v10);
  }

LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C006F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E818, &qword_22C2AE5A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E818, &qword_22C2AE5A0);
  }

  else
  {
    if (sub_22BE1AEA8(v7, 1, v8) != 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C007150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E818, &qword_22C2AE5A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v17 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E818, &qword_22C2AE5A0);
  }

  else
  {
    v14 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    v15 = sub_22BE1AEA8(v12, 1, v14);
    result = sub_22C0B08BC();
    if (v15 == 1)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

void static TranscriptProtoExecutorError.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoExecutorErrorEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E820, &qword_22C296F90);
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
      sub_22BE33928(v0, &qword_27D90E818, &qword_22C2AE5A0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoExecutorError(0);
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
    sub_22BE33928(v0, &qword_27D90E820, &qword_22C296F90);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoExecutorErrorEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E818, &qword_22C2AE5A0);
  if (&qword_27D90E818)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C007610(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F98, type metadata accessor for TranscriptProtoExecutorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C007690(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F818, type metadata accessor for TranscriptProtoExecutorError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C007700()
{
  sub_22BE2C988(&qword_27D90F818, type metadata accessor for TranscriptProtoExecutorError);

  return sub_22C270774();
}

uint64_t sub_22C00778C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D1D8);
  sub_22BE199F4(v0, qword_27D90D1D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToPlan";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "networkError";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoPlannerError.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = sub_22BE236F4();
        sub_22C007F54(v7, v8, v9, v10);
        break;
      case 2:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 1:
        v3 = sub_22BE236F4();
        sub_22C007A5C(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_22C007A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E830, &qword_22C2AE5B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
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
    sub_22BE33928(v12, &qword_27D90E830, &qword_22C2AE5B0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E830, &qword_22C2AE5B0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C007F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E830, &qword_22C2AE5B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90EA38, &qword_22C2B5B90);
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
    sub_22BE33928(v12, &qword_27D90E830, &qword_22C2AE5B0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90EA38, &qword_22C2B5B90);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90EA38, &qword_22C2B5B90);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E830, &qword_22C2AE5B0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoPlannerError.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v15 = sub_22BE17D78();
      sub_22C008540(v15, v16, v17, v18);
LABEL_8:
      sub_22BE291DC();
      sub_22C0B08BC();
      if (v0)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_22BE17D78();
      sub_22C00896C(v11, v12, v13, v14);
      goto LABEL_8;
    }

    v19 = sub_22BE17D78();
    sub_22C008744(v19, v20, v21, v22);
    if (v0)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v9 = type metadata accessor for TranscriptProtoPlannerError(0);
  sub_22BE235A8(v9);
LABEL_11:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C008540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E830, &qword_22C2AE5B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E830, &qword_22C2AE5B0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C008744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E830, &qword_22C2AE5B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E830, &qword_22C2AE5B0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 2)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E830, &qword_22C2AE5B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E830, &qword_22C2AE5B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoPlannerError.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoPlannerErrorEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E838, &qword_22C296F98);
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
      sub_22BE33928(v0, &qword_27D90E830, &qword_22C2AE5B0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoPlannerError(0);
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
    sub_22BE33928(v0, &qword_27D90E838, &qword_22C296F98);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoPlannerErrorEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E830, &qword_22C2AE5B0);
  if (&qword_27D90E830)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C008E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F90, type metadata accessor for TranscriptProtoPlannerError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C008E84(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F830, type metadata accessor for TranscriptProtoPlannerError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C008EF4()
{
  sub_22BE2C988(&qword_27D90F830, type metadata accessor for TranscriptProtoPlannerError);

  return sub_22C270774();
}

uint64_t sub_22C008F80()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D1F0);
  sub_22BE199F4(v0, qword_27D90D1F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "unsupported";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "appRequirement";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "permissionRequirement";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "systemRequirement";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionRequirement.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22C0092B8(v11, v12, v13, v14);
        break;
      case 4:
        v3 = sub_22BE236F4();
        sub_22C0097B0(v3, v4, v5, v6);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22C009CA8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0092B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E848, &qword_22C2AE5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911520, &qword_22C2AE240);
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
    sub_22BE33928(v12, &qword_27D90E848, &qword_22C2AE5C0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D911520, &qword_22C2AE240);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F8C0, type metadata accessor for TranscriptProtoAppRequirement);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911520, &qword_22C2AE240);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911520, &qword_22C2AE240);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911520, &qword_22C2AE240);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911520, &qword_22C2AE240);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E848, &qword_22C2AE5C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0097B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E848, &qword_22C2AE5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911528, &qword_22C2AE248);
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
    sub_22BE33928(v12, &qword_27D90E848, &qword_22C2AE5C0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911528, &qword_22C2AE248);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F8F0, type metadata accessor for TranscriptProtoPermissionRequirement);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911528, &qword_22C2AE248);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911528, &qword_22C2AE248);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911528, &qword_22C2AE248);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911528, &qword_22C2AE248);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E848, &qword_22C2AE5C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C009CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E848, &qword_22C2AE5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911530, &qword_22C2AE250);
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
    sub_22BE33928(v12, &qword_27D90E848, &qword_22C2AE5C0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D911530, &qword_22C2AE250);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F860, type metadata accessor for TranscriptProtoSystemRequirementMessage);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911530, &qword_22C2AE250);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911530, &qword_22C2AE250);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911530, &qword_22C2AE250);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911530, &qword_22C2AE250);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E848, &qword_22C2AE5C0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoActionRequirement.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v21 = sub_22BE17D78();
        sub_22C00A6E0(v21, v22, v23, v24);
        goto LABEL_8;
      case 2u:
        v13 = sub_22BE17D78();
        sub_22C00A8E8(v13, v14, v15, v16);
        goto LABEL_8;
      case 3u:
        v17 = sub_22BE17D78();
        sub_22C00A2B4(v17, v18, v19, v20);
        if (!v0)
        {
          break;
        }

        goto LABEL_10;
      default:
        v9 = sub_22BE17D78();
        sub_22C00A4DC(v9, v10, v11, v12);
LABEL_8:
        sub_22BE291DC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_10;
    }
  }

  v25 = type metadata accessor for TranscriptProtoActionRequirement(0);
  sub_22BE235A8(v25);
LABEL_10:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C00A2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E848, &qword_22C2AE5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E848, &qword_22C2AE5C0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 3)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E848, &qword_22C2AE5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E848, &qword_22C2AE5C0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F8C0, type metadata accessor for TranscriptProtoAppRequirement);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E848, &qword_22C2AE5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E848, &qword_22C2AE5C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F8F0, type metadata accessor for TranscriptProtoPermissionRequirement);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00A8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E848, &qword_22C2AE5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E848, &qword_22C2AE5C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F860, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoActionRequirement.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoActionRequirementEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E850, &qword_22C296FA0);
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
      sub_22BE33928(v0, &qword_27D90E848, &qword_22C2AE5C0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoActionRequirement(0);
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
    sub_22BE33928(v0, &qword_27D90E850, &qword_22C296FA0);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoActionRequirementEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E848, &qword_22C2AE5C0);
  if (&qword_27D90E848)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C00AD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F88, type metadata accessor for TranscriptProtoActionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00AE00(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F848, type metadata accessor for TranscriptProtoActionRequirement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00AE70()
{
  sub_22BE2C988(&qword_27D90F848, type metadata accessor for TranscriptProtoActionRequirement);

  return sub_22C270774();
}

uint64_t sub_22C00AEFC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D208);
  sub_22BE199F4(v0, qword_27D90D208);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceUnlockRequired";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appLaunchRequired";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "carPlayIncompatible";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "carBluetoothIncompatible";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "protectedAppApprovalRequired";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "userAuthenticationRequired";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "userLocationForSystemRequired";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSystemRequirementMessage.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 5:
        v3 = sub_22BE236F4();
        sub_22C00B344(v3, v4, v5, v6);
        break;
      case 7:
        v7 = sub_22BE236F4();
        sub_22C00B83C(v7, v8, v9, v10);
        break;
      case 8:
        v11 = sub_22BE236F4();
        sub_22C00BD34(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C00B344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911508, &qword_22C2AE228);
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
    sub_22BE33928(v12, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D911508, &qword_22C2AE228);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F878, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911508, &qword_22C2AE228);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911508, &qword_22C2AE228);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911508, &qword_22C2AE228);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911508, &qword_22C2AE228);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E860, &qword_22C2AE5D0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C00B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911510, &qword_22C2AE230);
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
    sub_22BE33928(v12, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911510, &qword_22C2AE230);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F890, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911510, &qword_22C2AE230);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911510, &qword_22C2AE230);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911510, &qword_22C2AE230);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911510, &qword_22C2AE230);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E860, &qword_22C2AE5D0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C00BD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911518, &qword_22C2AE238);
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
    sub_22BE33928(v12, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D911518, &qword_22C2AE238);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F8D8, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911518, &qword_22C2AE238);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911518, &qword_22C2AE238);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911518, &qword_22C2AE238);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911518, &qword_22C2AE238);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E860, &qword_22C2AE5D0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoSystemRequirementMessage.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v27 = sub_22BE17D78();
        sub_22C00CE0C(v27, v28, v29, v30);
        goto LABEL_10;
      case 2:
        v19 = sub_22BE17D78();
        sub_22C00D014(v19, v20, v21, v22);
        goto LABEL_10;
      case 3:
        v23 = sub_22BE17D78();
        sub_22C00C368(v23, v24, v25, v26);
        goto LABEL_14;
      case 4:
        v15 = sub_22BE17D78();
        sub_22C00C590(v15, v16, v17, v18);
        goto LABEL_14;
      case 5:
        v31 = sub_22BE17D78();
        sub_22C00C7B8(v31, v32, v33, v34);
        goto LABEL_14;
      case 6:
        v35 = sub_22BE17D78();
        sub_22C00C9E0(v35, v36, v37, v38);
LABEL_14:
        if (v0)
        {
          goto LABEL_15;
        }

        break;
      default:
        v11 = sub_22BE17D78();
        sub_22C00CC08(v11, v12, v13, v14);
LABEL_10:
        sub_22BE291DC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_15;
    }
  }

  v9 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  sub_22BE235A8(v9);
LABEL_15:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C00C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 3)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00C590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 4)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 5)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00C9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 6)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F878, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F890, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C00D014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E860, &qword_22C2AE5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E860, &qword_22C2AE5D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F8D8, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoSystemRequirementMessage.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E868, &qword_22C296FA8);
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
      sub_22BE33928(v0, &qword_27D90E860, &qword_22C2AE5D0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
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
    sub_22BE33928(v0, &qword_27D90E868, &qword_22C296FA8);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoSystemRequirementMessageEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E860, &qword_22C2AE5D0);
  if (&qword_27D90E860)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C00D4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F80, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00D52C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F860, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00D59C()
{
  sub_22BE2C988(&qword_27D90F860, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return sub_22C270774();
}

uint64_t sub_22C00D744(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F78, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00D7C4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F878, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00D834()
{
  sub_22BE2C988(&qword_27D90F878, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_22C270774();
}

void TranscriptProtoSystemRequirementAuthenticationRequest.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C00D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E880, &unk_22C2AE5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E880, &unk_22C2AE5E0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F8A8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoSystemRequirementAuthenticationRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E888, &qword_22C296FB0);
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
      sub_22BE33928(v0, &qword_27D90E880, &unk_22C2AE5E0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
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
    sub_22BE33928(v0, &qword_27D90E888, &qword_22C296FB0);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E880, &unk_22C2AE5E0);
  if (&qword_27D90E880)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C00DE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F70, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00DEBC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F890, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00DF2C()
{
  sub_22BE2C988(&qword_27D90F890, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_22C270774();
}

uint64_t sub_22C00DFC4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D250);
  sub_22BE199F4(v0, qword_27D90D250);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alternativeAuthenticationPermitted";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originDeviceAuthenticationRequired";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C00E1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_22BE19130();
  sub_22BE3C63C();
  v14 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v18);
  sub_22BE374E4();
  v19 = sub_22C270424();
  sub_22BE42650(v19);
  sub_22BE1B470();
  sub_22BE2C988(v20, v21);
  sub_22C0B15A8();
  if (v11 || (sub_22C0B1E30(), v22 = &qword_27D9111D0, sub_22BE3CF70(), v23 = sub_22C0B14AC(), sub_22C0B1FD8(v23, v24, v25), v26 = sub_22BE3C968(), sub_22BE33928(v26, v27, &byte_22C2ADF00), v13 == 1))
  {
    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    sub_22C0B1E10();
    if (v28 == 2)
    {
      LOBYTE(v22) = a11;
    }

    else
    {
      sub_22BE18240();
      sub_22C270594();
      sub_22C0B1E48();
    }

    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
    LOBYTE(byte_22C2ADF00) = v22;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

uint64_t sub_22C00E3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F68, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00E474(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F8A8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00E4E4()
{
  sub_22BE2C988(&qword_27D90F8A8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_22C270774();
}

uint64_t sub_22C00E570()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D268);
  sub_22BE199F4(v0, qword_27D90D268);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signInRequired";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountSetupRequired";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "userConfirmationRequired";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoAppRequirement.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v3 = sub_22BE18E2C();
        v10 = 2;
LABEL_10:
        sub_22C00E814(v3, v4, v5, v6, v10, v7, v8, v9, v11, *v12, v12[4]);
        break;
      case 2:
        v3 = sub_22BE18E2C();
        v10 = 1;
        goto LABEL_10;
      case 1:
        v3 = sub_22BE18E2C();
        v10 = 0;
        goto LABEL_10;
    }
  }
}

void sub_22C00E814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_22BE19130();
  sub_22BE3C63C();
  v14 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v18);
  sub_22BE374E4();
  v19 = sub_22C270424();
  sub_22BE42650(v19);
  sub_22BE1B470();
  sub_22BE2C988(v20, v21);
  sub_22C0B15A8();
  if (v11 || (sub_22C0B1E30(), v22 = &qword_27D9111D0, sub_22BE3CF70(), v23 = sub_22C0B14AC(), sub_22C0B1FD8(v23, v24, v25), v26 = sub_22BE3C968(), sub_22BE33928(v26, v27, &byte_22C2ADF00), v13 == 1))
  {
    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    sub_22C0B1E10();
    if (v28 == 3)
    {
      LOBYTE(v22) = a11;
    }

    else
    {
      sub_22BE18240();
      sub_22C270594();
      sub_22C0B1E48();
    }

    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
    LOBYTE(byte_22C2ADF00) = v22;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoAppRequirement.traverse<A>(visitor:)()
{
  switch(*v0)
  {
    case 1:
      sub_22BE17D78();
      sub_22C00EAE4();
      goto LABEL_5;
    case 2:
      sub_22BE17D78();
      sub_22C00EBC4();
      goto LABEL_5;
    case 3:
      goto LABEL_6;
    default:
      sub_22BE17D78();
      sub_22C00EA0C();
LABEL_5:
      if (!v1)
      {
LABEL_6:
        v2 = type metadata accessor for TranscriptProtoAppRequirement(0);
        sub_22BE235A8(v2);
      }

      return;
  }
}

void sub_22C00EA0C()
{
  sub_22BE2BB34();
  v1 = sub_22BE3ACB0();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1955C();
  if (*v0)
  {
    __break(1u);
  }

  else
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v5, v6);
    sub_22C0B1684();
    sub_22C0B16A4();
    v7 = sub_22C0B14DC();
    v8(v7);
    sub_22BE36324();
    sub_22BEE93D4();
  }
}

void sub_22C00EAE4()
{
  sub_22BE2BB34();
  v1 = sub_22BE3ACB0();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1955C();
  if (*v0 == 1)
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v5, v6);
    sub_22BE19478();
    sub_22C0B16A4();
    v7 = sub_22C0B14DC();
    v8(v7);
    sub_22BE36324();
    sub_22BEE93D4();
  }

  else
  {
    __break(1u);
  }
}

void sub_22C00EBC4()
{
  sub_22BE2BB34();
  v1 = sub_22BE3ACB0();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1955C();
  if (*v0 == 2)
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v5, v6);
    sub_22BE19478();
    sub_22C0B16A4();
    v7 = sub_22C0B14DC();
    v8(v7);
    sub_22BE36324();
    sub_22BEE93D4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C00ECBC()
{
  sub_22BE18378();
  sub_22C0B1DF0(v0, v1);
  if (v4 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v4 != v3)
  {
    return 0;
  }

  v6 = v2(0);
  sub_22BE3636C(v6);
  sub_22BE18E5C();
  sub_22BE2C988(v7, v8);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C00EDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F60, type metadata accessor for TranscriptProtoAppRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00EE6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F8C0, type metadata accessor for TranscriptProtoAppRequirement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00EEDC()
{
  sub_22BE2C988(&qword_27D90F8C0, type metadata accessor for TranscriptProtoAppRequirement);

  return sub_22C270774();
}

uint64_t sub_22C00EF74()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D280);
  sub_22BE199F4(v0, qword_27D90D280);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isPreciseLocationRequired";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minimumViableLocationAccuracy";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timeoutForLocationFetch";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22BE2037C();
        sub_22C270644();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270674();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (*v0 != 1 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v1))
  {
    v3 = sub_22BE17D60();
    result = sub_22C00F2B0(v3);
    if (!v1)
    {
      v4 = sub_22BE17D60();
      sub_22C00F2F0(v4);
      v5 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
      sub_22BE375E4(v5);
      return sub_22BE363D4();
    }
  }

  return result;
}

uint64_t sub_22C00F2B0(uint64_t result)
{
  if ((*(result + 16) & 1) == 0)
  {
    v1 = *(result + 8);
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22C00F2F0(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    v1 = *(result + 24);
    return sub_22C270814();
  }

  return result;
}

uint64_t static TranscriptProtoSystemRequirementUserLocationForSystemRequest.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_22BE18378();
  v7 = *(v5 + 16);
  if (*(v6 + 16))
  {
    if (!*(v5 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 8) != *(v2 + 8))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(v3 + 32))
  {
    if (*(v2 + 32))
    {
      goto LABEL_13;
    }

    return 0;
  }

  v8 = *(v2 + 24);
  v9 = *(v3 + 24);
  sub_22BEC02E4();
  if (v10)
  {
    return 0;
  }

LABEL_13:
  v11 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  sub_22C0B1BAC(v11);
  sub_22BE18E5C();
  sub_22BE2C988(v12, v13);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C00F494(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F58, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C00F514(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F8D8, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C00F584()
{
  sub_22BE2C988(&qword_27D90F8D8, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);

  return sub_22C270774();
}

uint64_t sub_22C00F610()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D298);
  sub_22BE199F4(v0, qword_27D90D298);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriPermissionRequired";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shortcutsPermissionRequired";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "preciseLocationPermissionRequired";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locationPermissionRequired";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "wifiPermissionRequired";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "bluetoothPermissionRequired";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "photosPermissionRequired";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "contactsPermissionRequired";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoPermissionRequirement.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = sub_22BE18E2C();
        v10 = 0;
        goto LABEL_13;
      case 2:
        v3 = sub_22BE18E2C();
        v10 = 1;
        goto LABEL_13;
      case 3:
        v3 = sub_22BE18E2C();
        v10 = 2;
        goto LABEL_13;
      case 4:
        v3 = sub_22BE18E2C();
        v10 = 3;
        goto LABEL_13;
      case 5:
        v3 = sub_22BE18E2C();
        v10 = 4;
        goto LABEL_13;
      case 6:
        v3 = sub_22BE18E2C();
        v10 = 5;
        goto LABEL_13;
      case 7:
        v3 = sub_22BE18E2C();
        v10 = 6;
        goto LABEL_13;
      case 8:
        v3 = sub_22BE18E2C();
        v10 = 7;
LABEL_13:
        sub_22C00FA44(v3, v4, v5, v6, v10, v7, v8, v9, v11, *v12, v12[4]);
        break;
      default:
        continue;
    }
  }
}

void sub_22C00FA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_22BE19130();
  sub_22BE3C63C();
  v14 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v18);
  sub_22BE374E4();
  v19 = sub_22C270424();
  sub_22BE42650(v19);
  sub_22BE1B470();
  sub_22BE2C988(v20, v21);
  sub_22C0B15A8();
  if (v11 || (sub_22C0B1E30(), v22 = &qword_27D9111D0, sub_22BE3CF70(), v23 = sub_22C0B14AC(), sub_22C0B1FD8(v23, v24, v25), v26 = sub_22BE3C968(), sub_22BE33928(v26, v27, &byte_22C2ADF00), v13 == 1))
  {
    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    sub_22C0B1E10();
    if (v28 == 8)
    {
      LOBYTE(v22) = a11;
    }

    else
    {
      sub_22BE18240();
      sub_22C270594();
      sub_22C0B1E48();
    }

    sub_22BE33928(v12, &qword_27D9111D0, &byte_22C2ADF00);
    LOBYTE(byte_22C2ADF00) = v22;
  }

  sub_22BE1AB28();
  sub_22BE18478();
}

void TranscriptProtoPermissionRequirement.traverse<A>(visitor:)()
{
  switch(*v0)
  {
    case 1:
      sub_22BE17D78();
      sub_22C00EAE4();
      goto LABEL_10;
    case 2:
      sub_22BE17D78();
      sub_22C00EBC4();
      goto LABEL_10;
    case 3:
      sub_22BE17D78();
      sub_22C00FC78();
      goto LABEL_10;
    case 4:
      v3 = sub_22BE17D78();
      sub_22C00FD58(v3);
      goto LABEL_10;
    case 5:
      v4 = sub_22BE17D78();
      sub_22C00FEA8(v4);
      goto LABEL_10;
    case 6:
      v2 = sub_22BE17D78();
      sub_22C00FFF8(v2);
      goto LABEL_10;
    case 7:
      v5 = sub_22BE17D78();
      sub_22C010148(v5);
      goto LABEL_10;
    case 8:
      goto LABEL_11;
    default:
      sub_22BE17D78();
      sub_22C00EA0C();
LABEL_10:
      if (!v1)
      {
LABEL_11:
        v6 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
        sub_22BE235A8(v6);
      }

      return;
  }
}

void sub_22C00FC78()
{
  sub_22BE2BB34();
  v1 = sub_22BE3ACB0();
  v2 = sub_22BE179D8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE1955C();
  if (*v0 == 3)
  {
    sub_22C270414();
    sub_22BE1B470();
    sub_22BE2C988(v5, v6);
    sub_22BE19478();
    sub_22C0B16A4();
    v7 = sub_22C0B14DC();
    v8(v7);
    sub_22BE36324();
    sub_22BEE93D4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C00FD58(_BYTE *a1)
{
  v2 = sub_22C270424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 4)
  {
    sub_22C270414();
    sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
    sub_22C2707D4();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C00FEA8(_BYTE *a1)
{
  v2 = sub_22C270424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 5)
  {
    sub_22C270414();
    sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
    sub_22C2707D4();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C00FFF8(_BYTE *a1)
{
  v2 = sub_22C270424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 6)
  {
    sub_22C270414();
    sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
    sub_22C2707D4();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C010148(_BYTE *a1)
{
  v2 = sub_22C270424();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 7)
  {
    sub_22C270414();
    sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
    sub_22C2707D4();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static TranscriptProtoPermissionRequirement.== infix(_:_:)()
{
  sub_22BE18378();
  sub_22C0B1DF0(v0, v1);
  if (v3 == 8)
  {
    if (v2 != 8)
    {
      return 0;
    }
  }

  else if (v3 != v2)
  {
    return 0;
  }

  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  sub_22BE3636C(v5);
  sub_22BE18E5C();
  sub_22BE2C988(v6, v7);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C0103C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F50, type metadata accessor for TranscriptProtoPermissionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C010444(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F8F0, type metadata accessor for TranscriptProtoPermissionRequirement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0104B4()
{
  sub_22BE2C988(&qword_27D90F8F0, type metadata accessor for TranscriptProtoPermissionRequirement);

  return sub_22C270774();
}

uint64_t sub_22C010540()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D2B0);
  sub_22BE199F4(v0, qword_27D90D2B0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "failure";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 8;
  *v10 = "concludesStreamingStatementID";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionFailure.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 8)
    {
      sub_22BE18E2C();
      sub_22C0107E0();
    }

    else if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C0107E0()
{
  v0 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C0108E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E8B8, &qword_22C2B5B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E8B8, &qword_22C2B5B50);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F920, type metadata accessor for TranscriptProtoActionFailureFailure);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C010AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionFailure.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v3 = sub_22BE272C0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29250(v11, v46);
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28784(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE294E0();
  v20 = sub_22BE18040();
  v22 = sub_22BE5CE4C(v20, v21);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B72C();
  v26 = sub_22BE5CE4C(&qword_27D90E8C0, &qword_22C296FB8);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  v30 = MEMORY[0x28223BE20](v29);
  sub_22C0B142C(v30);
  sub_22C0B15FC();
  sub_22BE23B00(v1);
  if (v31)
  {
    sub_22BE22E64();
    if (v31)
    {
      sub_22BE33928(v1, &qword_27D90E8B8, &qword_22C2B5B50);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27D90E8C0;
    v33 = &qword_22C296FB8;
    v34 = v1;
LABEL_20:
    sub_22BE33928(v34, v32, v33);
    goto LABEL_21;
  }

  sub_22BE3C968();
  sub_22BE22868();
  sub_22BE22E64();
  if (v31)
  {
    sub_22C0B1BC4();
    goto LABEL_9;
  }

  sub_22C0B0868();
  sub_22BE1A6BC();
  static TranscriptProtoActionFailureFailure.== infix(_:_:)();
  v36 = v35;
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E8B8, &qword_22C2B5B50);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v37 = type metadata accessor for TranscriptProtoActionFailure(0);
  sub_22BE35EA0(v37);
  sub_22BE4270C();
  sub_22BE3AEBC();
  v38 = sub_22BE2BA98();
  sub_22BE36144(v38, v39);
  if (v31)
  {
    sub_22BE18A84();
    if (v31)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v44, v45);
      v41 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v40)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_19:
    v32 = &qword_27D909100;
    v33 = &unk_22C27FD00;
    v34 = v0;
    goto LABEL_20;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v42 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v42, v43);
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&unk_22C2AE4A0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
LABEL_22:
  sub_22BE1C1DC(v41);
  sub_22BE1AABC();
}

uint64_t sub_22C0110B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F48, type metadata accessor for TranscriptProtoActionFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C011130(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F908, type metadata accessor for TranscriptProtoActionFailure);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0111A0()
{
  sub_22BE2C988(&qword_27D90F908, type metadata accessor for TranscriptProtoActionFailure);

  return sub_22C270774();
}

uint64_t sub_22C01122C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D2C8);
  sub_22BE199F4(v0, qword_27D90D2C8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_22C296E60;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "preflightCheckFailure";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "preciseLocationDisabled";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "locationDisabled";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "wifiDisabled";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "bluetoothDisabled";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "networkFailure";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "partialFailure";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "unsupportedOnDevice";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "featureCurrentlyRestricted";
  *(v23 + 1) = 26;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "entityNotFound";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "actionNotAllowed";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "unableToUndo";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "actionCanceled";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "valueDisambiguationRejected";
  *(v33 + 1) = 27;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "noMatchingTool";
  *(v35 + 1) = 14;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "developerDefinedError";
  *(v37 + 1) = 21;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "unableToCancel";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "searchSucceededNoMatchingTool";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "valueSelectionRequired";
  *(v43 + 1) = 22;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "unableToHandleRequest";
  *(v45 + 1) = 21;
  v45[16] = 2;
  v8();
  return sub_22C2708A4();
}

void TranscriptProtoActionFailureFailure.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
        sub_22BE1BFD0();
        sub_22BFCA9A8();
        break;
      case 16:
        v3 = sub_22BE236F4();
        sub_22C0119D0(v3, v4, v5, v6);
        break;
      case 20:
        v7 = sub_22BE236F4();
        sub_22C011EC8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0119D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9114F8, &qword_22C2AE218);
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
    sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D9114F8, &qword_22C2AE218);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9114F8, &qword_22C2AE218);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9114F8, &qword_22C2AE218);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9114F8, &qword_22C2AE218);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9114F8, &qword_22C2AE218);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E8D0, &qword_22C2AE5F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C011EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911500, &qword_22C2AE220);
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
    sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911500, &qword_22C2AE220);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911500, &qword_22C2AE220);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911500, &qword_22C2AE220);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911500, &qword_22C2AE220);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911500, &qword_22C2AE220);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E8D0, &qword_22C2AE5F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoActionFailureFailure.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v49 = sub_22BE17D78();
        sub_22C014C78(v49, v50, v51, v52);
        goto LABEL_15;
      case 2u:
        sub_22BE17D78();
        sub_22C0454D4();
        goto LABEL_25;
      case 3u:
        v41 = sub_22BE17D78();
        sub_22C0125CC(v41, v42, v43, v44);
        goto LABEL_25;
      case 4u:
        v25 = sub_22BE17D78();
        sub_22C0127F4(v25, v26, v27, v28);
        goto LABEL_25;
      case 5u:
        v57 = sub_22BE17D78();
        sub_22C012A1C(v57, v58, v59, v60);
        goto LABEL_25;
      case 6u:
        v65 = sub_22BE17D78();
        sub_22C012C44(v65, v66, v67, v68);
        goto LABEL_25;
      case 7u:
        v45 = sub_22BE17D78();
        sub_22C012E6C(v45, v46, v47, v48);
        goto LABEL_25;
      case 8u:
        v77 = sub_22BE17D78();
        sub_22C013094(v77, v78, v79, v80);
        goto LABEL_25;
      case 9u:
        v33 = sub_22BE17D78();
        sub_22C0132BC(v33, v34, v35, v36);
        goto LABEL_25;
      case 0xAu:
        v73 = sub_22BE17D78();
        sub_22C0134E4(v73, v74, v75, v76);
        goto LABEL_25;
      case 0xBu:
        v21 = sub_22BE17D78();
        sub_22C01370C(v21, v22, v23, v24);
        goto LABEL_25;
      case 0xCu:
        v29 = sub_22BE17D78();
        sub_22C013934(v29, v30, v31, v32);
        goto LABEL_25;
      case 0xDu:
        v61 = sub_22BE17D78();
        sub_22C013B5C(v61, v62, v63, v64);
        goto LABEL_25;
      case 0xEu:
        v17 = sub_22BE17D78();
        sub_22C013D84(v17, v18, v19, v20);
        goto LABEL_25;
      case 0xFu:
        v37 = sub_22BE17D78();
        sub_22C013FAC(v37, v38, v39, v40);
        goto LABEL_25;
      case 0x10u:
        v13 = sub_22BE17D78();
        sub_22C0141D4(v13, v14, v15, v16);
        goto LABEL_25;
      case 0x11u:
        v53 = sub_22BE17D78();
        sub_22C014600(v53, v54, v55, v56);
        goto LABEL_25;
      case 0x12u:
        v69 = sub_22BE17D78();
        sub_22C014828(v69, v70, v71, v72);
        goto LABEL_25;
      case 0x13u:
        v81 = sub_22BE17D78();
        sub_22C014A50(v81, v82, v83, v84);
LABEL_25:
        if (!v0)
        {
          break;
        }

        goto LABEL_27;
      default:
        v9 = sub_22BE17D78();
        sub_22C0143FC(v9, v10, v11, v12);
LABEL_15:
        sub_22BE291DC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_27;
    }
  }

  v85 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  sub_22BE235A8(v85);
LABEL_27:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0125CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 3)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0127F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 4)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C012A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 5)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C012C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 6)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C012E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 7)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C013094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 8)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0132BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 9)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0134E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 10)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C01370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 11)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C013934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 12)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C013B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 13)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C013D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 14)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C013FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 15)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0141D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 16)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0143FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C014600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 17)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C014828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 18)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C014A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 19)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C014C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E8D0, &qword_22C2AE5F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E8D0, &qword_22C2AE5F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoActionFailureFailure.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E8D8, &qword_22C296FC0);
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
      sub_22BE33928(v0, &qword_27D90E8D0, &qword_22C2AE5F0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
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
    sub_22BE33928(v0, &qword_27D90E8D8, &qword_22C296FC0);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoActionFailureFailureEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E8D0, &qword_22C2AE5F0);
  if (&qword_27D90E8D0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C015110(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F40, type metadata accessor for TranscriptProtoActionFailureFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C015190(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F920, type metadata accessor for TranscriptProtoActionFailureFailure);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C015200()
{
  sub_22BE2C988(&qword_27D90F920, type metadata accessor for TranscriptProtoActionFailureFailure);

  return sub_22C270774();
}

uint64_t sub_22C01528C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D2E0);
  sub_22BE199F4(v0, qword_27D90D2E0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedString";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "code";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    sub_22BE1B448();
    if (!v6 || (sub_22BE2910C(), result = sub_22C270844(), !v0))
    {
      if (!v1[4] || (sub_22BE1BAB8(), result = sub_22C270814(), !v0))
      {
        v7 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
        sub_22BE375E4(v7);
        return sub_22BE363D4();
      }
    }
  }

  return result;
}

uint64_t static TranscriptProtoActionFailureDeveloperDefinedError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_22C274014() & 1) == 0 || *(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  v10 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  sub_22C0B1BAC(v10);
  sub_22BE18E5C();
  sub_22BE2C988(v11, v12);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C0156DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F38, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C01575C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0157CC()
{
  sub_22BE2C988(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_22C270774();
}

uint64_t sub_22C01597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F30, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0159FC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C015A6C()
{
  sub_22BE2C988(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);

  return sub_22C270774();
}

uint64_t sub_22C015AF8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281076F48);
  sub_22BE199F4(v0, qword_281076F48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C290D40;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "returnValue";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "undoContext";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "didShowInAppResult";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "followUpAction";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "shouldOpen";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "inAppSearchString";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "concludesStreamingStatementID";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoActionSuccess.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE18E2C();
        sub_22C015EC0();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22C015F74();
        break;
      case 4:
      case 6:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22C016028();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22C0160DC();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22C016140();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C015EC0()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 24);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

uint64_t sub_22C015F74()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 28);
  type metadata accessor for TranscriptProtoUndoContext(0);
  sub_22BE2C988(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext);
  return sub_22C2706F4();
}

uint64_t sub_22C016028()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 32);
  type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_22BE2C988(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction);
  return sub_22C2706F4();
}

uint64_t sub_22C016140()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 40);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void static TranscriptProtoActionSuccess.== infix(_:_:)()
{
  sub_22BE19460();
  v128 = v2;
  v3 = sub_22BE33690();
  v119 = type metadata accessor for TranscriptProtoStatementID(v3);
  v4 = sub_22BE18000(v119);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  v115 = v7;
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v118 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v118);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v120 = v15;
  v16 = sub_22BE183BC();
  v122 = type metadata accessor for TranscriptProtoFollowUpAction(v16);
  v17 = sub_22BE18000(v122);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  sub_22BE3FF64(v20);
  v21 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE33FF0(v25, v115);
  v121 = sub_22BE5CE4C(&qword_27D90E900, &qword_22C296FC8);
  sub_22BE18000(v121);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1A174();
  v123 = v29;
  v30 = sub_22BE183BC();
  v31 = type metadata accessor for TranscriptProtoUndoContext(v30);
  v32 = sub_22BE1B7B0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17A44();
  sub_22BE3FF7C(v35);
  v36 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
  sub_22BE19448(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE181D0(v40, v116);
  v125 = sub_22BE5CE4C(&qword_27D90E910, &qword_22C296FD0);
  sub_22BE18000(v125);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1BC94(v44, v117);
  v45 = sub_22C272594();
  v46 = sub_22BE35868(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE18DFC();
  v51 = sub_22BE291B0();
  v53 = sub_22BE5CE4C(v51, v52);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE23E58();
  v57 = (sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30) - 8);
  v58 = *(*v57 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v59);
  sub_22BE19E64();
  v127 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v60 = v127[6];
  v61 = v57[14];
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v0);
  if (v62)
  {
    sub_22BE181B0(v0 + v61);
    if (v62)
    {
      sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_12;
    }

LABEL_9:
    v66 = &qword_27D909130;
    v67 = &unk_22C27FD30;
    goto LABEL_10;
  }

  sub_22BE22868();
  sub_22BE181B0(v0 + v61);
  if (v62)
  {
    v63 = *(v48 + 8);
    v64 = sub_22BE25EFC();
    v65(v64);
    goto LABEL_9;
  }

  v69 = *(v48 + 32);
  v70 = sub_22C0B19F4();
  v71(v70);
  sub_22BE192C8();
  sub_22BE2C988(v72, v73);
  v74 = sub_22C272FD4();
  v75 = *(v48 + 8);
  v76 = sub_22BE431C0();
  v75(v76);
  v77 = sub_22BE25EFC();
  v75(v77);
  sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_12:
  v78 = v127[7];
  v79 = *(v125 + 48);
  sub_22BE3CB6C();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v80 = sub_22BE23E90();
  sub_22BE36144(v80, v81);
  if (v62)
  {
    sub_22BE18190(&qword_27D909128 + v79);
    if (v62)
    {
      sub_22BE33928(&qword_27D909128, &qword_27D90E908, &unk_22C2AE600);
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  sub_22C0B1FA8();
  sub_22BE18190(&qword_27D909128 + v79);
  if (v86)
  {
    sub_22C0B1AFC();
LABEL_26:
    v66 = &qword_27D90E910;
    v67 = &qword_22C296FD0;
LABEL_45:
    v68 = &qword_27D909128;
    goto LABEL_46;
  }

  sub_22C0B0868();
  sub_22BEC04E8();
  if (v87)
  {
    v90 = v88 == v89;
  }

  else
  {
    v90 = 0;
  }

  if (!v90 && (sub_22C274014() & 1) == 0 || (v78[2] == v124[2] ? (v91 = v78[3] == v124[3]) : (v91 = 0), !v91 && (sub_22C274014() & 1) == 0 || (v78[4] == v124[4] ? (v92 = v78[5] == v124[5]) : (v92 = 0), !v92 && (sub_22C274014() & 1) == 0)))
  {
    sub_22C0B08BC();
    sub_22BE1AB74();
    sub_22C0B08BC();
    v66 = &qword_27D90E908;
    v67 = &unk_22C2AE600;
    goto LABEL_45;
  }

  v93 = *(v126 + 28);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v94, v95);
  LOBYTE(v93) = sub_22BE3C4B0();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(&qword_27D909128, &qword_27D90E908, &unk_22C2AE600);
  if ((v93 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_17:
  if (*v1 == *v128)
  {
    v82 = v127[8];
    v83 = *(v121 + 48);
    sub_22BE27B84();
    sub_22BE22868();
    v0 = v123;
    sub_22BE27B84();
    sub_22BE22868();
    v84 = sub_22BE23E90();
    sub_22BE36144(v84, v85);
    if (v62)
    {
      sub_22BE18A84();
      if (v62)
      {
        sub_22BE33928(v123, &qword_27D90E8F8, &qword_22C2B5B60);
LABEL_54:
        if (v1[1] != v128[1])
        {
          goto LABEL_47;
        }

        v98 = v127[9];
        sub_22BE28DB4();
        if (v101)
        {
          if (!v99)
          {
            goto LABEL_47;
          }

          sub_22BE3A508(v100);
          v104 = v62 && v102 == v103;
          if (!v104 && (sub_22C274014() & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else if (v99)
        {
          goto LABEL_47;
        }

        v105 = v127[10];
        v106 = *(v118 + 48);
        sub_22BE27B84();
        sub_22BE22868();
        v0 = v120;
        sub_22BE27B84();
        sub_22BE22868();
        v107 = sub_22BE23E90();
        sub_22BE36144(v107, v108);
        if (v62)
        {
          sub_22BE18A84();
          if (v62)
          {
            sub_22BE33928(v120, &qword_27D9090F8, &unk_22C2AE4A0);
            goto LABEL_74;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE18A84();
          if (!v109)
          {
            sub_22BE18AA8();
            sub_22C0B0868();
            v110 = sub_22BE38970();
            static TranscriptProtoStatementID.== infix(_:_:)(v110, v111);
            sub_22BE39304();
            sub_22BE291B0();
            sub_22C0B08BC();
            sub_22BE33928(v120, &qword_27D9090F8, &unk_22C2AE4A0);
            if ((&unk_22C2AE4A0 & 1) == 0)
            {
              goto LABEL_47;
            }

LABEL_74:
            v112 = v127[11];
            sub_22C2704B4();
            sub_22BE18E5C();
            sub_22BE2C988(v113, v114);
            sub_22BE3A008();
            v96 = sub_22C272FD4();
            goto LABEL_48;
          }

          sub_22BE17DB0();
          sub_22C0B08BC();
        }

        v66 = &qword_27D909100;
        v67 = &unk_22C27FD00;
        goto LABEL_10;
      }
    }

    else
    {
      sub_22BE22868();
      sub_22BE18A84();
      if (!v97)
      {
        sub_22C0B0868();
        sub_22BE38970();
        static TranscriptProtoFollowUpAction.== infix(_:_:)();
        sub_22BE39304();
        sub_22BE291B0();
        sub_22C0B08BC();
        sub_22BE33928(v123, &qword_27D90E8F8, &qword_22C2B5B60);
        if ((&qword_22C2B5B60 & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_54;
      }

      sub_22C0B1AA4();
    }

    v66 = &qword_27D90E900;
    v67 = &qword_22C296FC8;
LABEL_10:
    v68 = v0;
LABEL_46:
    sub_22BE33928(v68, v66, v67);
  }

LABEL_47:
  v96 = 0;
LABEL_48:
  sub_22BE1C1DC(v96);
  sub_22BE1AABC();
}

uint64_t sub_22C016BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F28, type metadata accessor for TranscriptProtoActionSuccess);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C016C5C(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C016CCC()
{
  sub_22BE2C988(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess);

  return sub_22C270774();
}

void TranscriptProtoSnippetStream.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22C0B13FC();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

void TranscriptProtoSnippetStream.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  sub_22BE192B4();
  sub_22C016E74();
  if (!v0)
  {
    v1 = type metadata accessor for TranscriptProtoSnippetStream(0);
    sub_22BE235A8(v1);
  }
}

void sub_22C016E74()
{
  sub_22BE19130();
  v1 = sub_22BE3CEF4();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A8B4();
  v7 = sub_22C272594();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE1955C();
  sub_22BE180C8();
  sub_22BE22868();
  v13 = sub_22BE406A0();
  sub_22BE1AB5C(v13, v14, v7);
  if (v15)
  {
    sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
  }

  else
  {
    v16 = *(v10 + 32);
    v17 = sub_22BE1AEE4();
    v18(v17);
    sub_22BE192C8();
    sub_22BE2C988(v19, v20);
    sub_22C0B1684();
    sub_22C270884();
    v21 = *(v10 + 8);
    v22 = sub_22BE18240();
    v23(v22);
  }

  sub_22BE22978();
  sub_22BE18478();
}

void static TranscriptProtoSnippetStream.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v1 = sub_22C272594();
  v2 = sub_22BE35868(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17CBC();
  v7 = sub_22BE1AEE4();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  v18 = *(v17 + 56);
  sub_22BE324FC();
  sub_22C0B1A8C();
  sub_22C0B1A8C();
  sub_22BE181B0(v0);
  if (v19)
  {
    sub_22BE181B0(v0 + v18);
    if (v19)
    {
      sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
LABEL_12:
      v33 = type metadata accessor for TranscriptProtoSnippetStream(0);
      sub_22BE3636C(v33);
      sub_22BE18E5C();
      sub_22BE2C988(v34, v35);
      v23 = sub_22BE35FB8();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22C0B1FC0();
  sub_22BE181B0(v0 + v18);
  if (v19)
  {
    v20 = *(v4 + 8);
    v21 = sub_22BE36680();
    v22(v21);
LABEL_9:
    sub_22BE33928(v0, &qword_27D909130, &unk_22C27FD30);
    goto LABEL_10;
  }

  v24 = *(v4 + 32);
  v25 = sub_22BE3BD64();
  v26(v25);
  sub_22BE192C8();
  sub_22BE2C988(v27, v28);
  v29 = sub_22C0B19D4();
  v30 = *(v4 + 8);
  v31 = sub_22BE3C5E4();
  v30(v31);
  v32 = sub_22BE36680();
  v30(v32);
  sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
LABEL_13:
  sub_22BE1C1DC(v23);
  sub_22BE1AABC();
}

uint64_t sub_22C01730C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F20, type metadata accessor for TranscriptProtoSnippetStream);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C01738C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F970, type metadata accessor for TranscriptProtoSnippetStream);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0173FC()
{
  sub_22BE2C988(&qword_27D90F970, type metadata accessor for TranscriptProtoSnippetStream);

  return sub_22C270774();
}

uint64_t sub_22C017488()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D328);
  sub_22BE199F4(v0, qword_27D90D328);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "actionDescription";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0177C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F18, type metadata accessor for TranscriptProtoUndoContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C017844(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0178B4()
{
  sub_22BE2C988(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext);

  return sub_22C270774();
}

void TranscriptProtoFollowUpAction.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C017A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E930, &unk_22C2AE610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E930, &unk_22C2AE610);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F9B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoFollowUpAction.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E938, &qword_22C296FD8);
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
      sub_22BE33928(v0, &qword_27D90E930, &unk_22C2AE610);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoFollowUpAction(0);
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
    sub_22BE33928(v0, &qword_27D90E938, &qword_22C296FD8);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoFollowUpActionExecutableAction.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E930, &unk_22C2AE610);
  if (&qword_27D90E930)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C017EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F10, type metadata accessor for TranscriptProtoFollowUpAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C017F30(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C017FA0()
{
  sub_22BE2C988(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction);

  return sub_22C270774();
}

uint64_t sub_22C0180A4()
{
  sub_22BE1B0D8();
  while (1)
  {
    sub_22BE1AB1C();
    result = sub_22C270584();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22BE3C5E4();
      sub_22BE32BF0();
      v0();
    }
  }

  return result;
}

uint64_t sub_22C018100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E948, &qword_22C2B5A50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9114F0, &qword_22C2AE210);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v28 = v13;
  v23 = sub_22BE1AEA8(v12, 1, v13);
  if (v23 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E948, &qword_22C2B5A50);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v22, &qword_27D9114F0, &qword_22C2AE210);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v22, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v24 = v31;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D9114F0, &qword_22C2AE210);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9114F0, &qword_22C2AE210);
    v25 = v20;
    return sub_22BE33928(v25, &qword_27D9114F0, &qword_22C2AE210);
  }

  sub_22C0B0868();
  if (v23 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v22, &qword_27D9114F0, &qword_22C2AE210);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E948, &qword_22C2B5A50);
  sub_22C0B0868();
  return sub_22BE19DC4(v27, 0, 1, v28);
}

uint64_t sub_22C0185E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E948, &qword_22C2B5A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E948, &qword_22C2B5A50);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoFollowUpActionExecutableAction.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90E950, &qword_22C296FE0);
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
      sub_22BE33928(v0, &qword_27D90E948, &qword_22C2B5A50);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
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
    sub_22BE33928(v0, &qword_27D90E950, &qword_22C296FE0);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoFollowUpActionExecutableActionEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E948, &qword_22C2B5A50);
  if (&qword_27D90E948)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C018A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F08, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C018AC4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F9B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C018B34()
{
  sub_22BE2C988(&qword_27D90F9B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_22C270774();
}

uint64_t sub_22C018BCC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D370);
  sub_22BE199F4(v0, qword_27D90D370);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkAction";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "linkShowOutputActionOptions";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C018E38()
{
  sub_22BE1B638();
  while (1)
  {
    sub_22BE18240();
    result = sub_22C270584();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22BE27184();
        v0();
        break;
      case 2:
        sub_22BE27184();
        v2();
        break;
      case 1:
        sub_22BE27184();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

void TranscriptProtoFollowUpActionExecutableActionLinkAction.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    if (sub_22BFC4080(v1[2], v1[3]) || (sub_22BE2910C(), sub_22C2707E4(), !v0))
    {
      if (!v1[4] || (sub_22BE1BAB8(), sub_22C270864(), !v0))
      {
        v3 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
        sub_22BE375E4(v3);
        sub_22BE363D4();
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t static TranscriptProtoFollowUpActionExecutableActionLinkAction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0 || (MEMORY[0x2318A6720](v3[2], v3[3], v2[2], v2[3]) & 1) == 0 || v3[4] != v2[4])
  {
    return 0;
  }

  v7 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  sub_22C0B1BAC(v7);
  sub_22BE18E5C();
  sub_22BE2C988(v8, v9);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C0190BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910F00, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C01913C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0191AC()
{
  sub_22BE2C988(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_22C270774();
}

uint64_t sub_22C019238()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D388);
  sub_22BE199F4(v0, qword_27D90D388);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "item";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "ancestorValue";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoParameterConfirmation.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C019540();
        break;
      case 5:
        sub_22BE374D4();
        sub_22C270644();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C0195F4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C019540()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 24);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

uint64_t sub_22C0195F4()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 28);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

void TranscriptProtoParameterConfirmation.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE17D60();
    sub_22BE47B20();
    if (!v0)
    {
      v2 = sub_22BE17D60();
      sub_22C01974C(v2);
      v3 = sub_22BE17D60();
      sub_22C019784(v3, v4, v5, v6);
      v7 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 32);
      sub_22BE1AC30();
    }
  }
}

uint64_t sub_22C01974C(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = *(result + 16);
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22C019784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C272594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D909128, &qword_22C294AA0);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

void static TranscriptProtoParameterConfirmation.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v7 = sub_22C272594();
  v8 = sub_22BE35868(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  v13 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v14 = sub_22BE19448(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  MEMORY[0x28223BE20](v17);
  sub_22BE324EC();
  v18 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  v19 = sub_22BE28F58(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v22);
  sub_22BE32374();
  v23 = *v2;
  v24 = v2[1];
  sub_22BE33C20();
  v27 = v27 && v25 == v26;
  if (!v27 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (v2[3])
  {
    if (!*(v0 + 24))
    {
      goto LABEL_30;
    }

LABEL_10:
    v58 = v3;
    v60 = v4;
    v61 = v10;
    v59 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
    v31 = v59[6];
    v32 = *(v5 + 48);
    sub_22C0B1760();
    sub_22BE22868();
    sub_22C0B1760();
    sub_22BE22868();
    sub_22BE181B0(v6);
    if (v27)
    {
      sub_22BE181B0(v6 + v32);
      if (v27)
      {
        sub_22BE33928(v6, &qword_27D909128, &qword_22C294AA0);
LABEL_20:
        v43 = v59[7];
        v44 = *(v5 + 48);
        sub_22BE4885C();
        sub_22BE4885C();
        sub_22BE181B0(v60);
        if (v27)
        {
          sub_22BE181B0(v60 + v44);
          if (v27)
          {
            sub_22BE33928(v60, &qword_27D909128, &qword_22C294AA0);
            goto LABEL_33;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE181B0(v60 + v44);
          if (!v45)
          {
            (*(v61 + 32))(v58, v60 + v44, v1);
            sub_22BE192C8();
            sub_22BE2C988(v49, v50);
            v51 = sub_22C272FD4();
            v52 = *(v61 + 8);
            v53 = sub_22BE35838();
            v52(v53);
            v54 = sub_22BE25EFC();
            v52(v54);
            sub_22BE33928(v60, &qword_27D909128, &qword_22C294AA0);
            if ((v51 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_33:
            v55 = v59[8];
            sub_22C2704B4();
            sub_22BE18E5C();
            sub_22BE2C988(v56, v57);
            v48 = sub_22BE35FB8();
            goto LABEL_31;
          }

          sub_22C0B19BC();
          v46 = sub_22BE25EFC();
          v47(v46);
        }

        v36 = v60;
        goto LABEL_29;
      }
    }

    else
    {
      sub_22BE3E79C();
      sub_22BE22868();
      sub_22BE181B0(v6 + v32);
      if (!v33)
      {
        (*(v61 + 32))(v58, v6 + v32, v1);
        sub_22BE192C8();
        sub_22BE2C988(v37, v38);
        v39 = sub_22C272FD4();
        v40 = *(v61 + 8);
        v41 = sub_22BE35838();
        v40(v41);
        v42 = sub_22C0B1AF0();
        v40(v42);
        sub_22BE33928(v6, &qword_27D909128, &qword_22C294AA0);
        if ((v39 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      sub_22C0B19BC();
      v34 = sub_22C0B1AF0();
      v35(v34);
    }

    v36 = v6;
LABEL_29:
    sub_22BE33928(v36, &qword_27D909130, &unk_22C27FD30);
    goto LABEL_30;
  }

  v28 = *(v0 + 16);
  v29 = v2[2];
  sub_22BEC02E4();
  if ((v30 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_30:
  v48 = 0;
LABEL_31:
  sub_22BE1C1DC(v48);
  sub_22BE1AABC();
}

uint64_t sub_22C019ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EF8, type metadata accessor for TranscriptProtoParameterConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C019F4C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F9E8, type metadata accessor for TranscriptProtoParameterConfirmation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C019FBC()
{
  sub_22BE2C988(&qword_27D90F9E8, type metadata accessor for TranscriptProtoParameterConfirmation);

  return sub_22C270774();
}

uint64_t sub_22C01A048()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D3A0);
  sub_22BE199F4(v0, qword_27D90D3A0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "items";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoParameterDisambiguation.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 5:
        sub_22BE2037C();
        sub_22C270644();
        break;
      case 2:
        sub_22BE1C37C();
        sub_22BFE0AA0();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }
}

void TranscriptProtoParameterDisambiguation.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22C0B1AE4();
    if (!v2 || (sub_22C272594(), sub_22BE192C8(), sub_22BE2C988(v3, v4), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
    {
      v5 = sub_22BE17D60();
      sub_22C01A3FC(v5);
      if (!v0)
      {
        v6 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
        sub_22BE375E4(v6);
        sub_22BE363D4();
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C01A3FC(uint64_t result)
{
  if ((*(result + 32) & 1) == 0)
  {
    v1 = *(result + 24);
    return sub_22C270814();
  }

  return result;
}

uint64_t static TranscriptProtoParameterDisambiguation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 32))
  {
    if (!*(v2 + 32))
    {
      return 0;
    }
  }

  else
  {
    v7 = *(v2 + 24);
    v8 = *(v3 + 24);
    sub_22BEC02E4();
    if (v9)
    {
      return 0;
    }
  }

  sub_22C0B1C6C();
  sub_22BE98DD8();
  if (v10)
  {
    v11 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
    sub_22C0B1BAC(v11);
    sub_22BE18E5C();
    sub_22BE2C988(v12, v13);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22C01A588(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EF0, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C01A608(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FA00, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C01A678()
{
  sub_22BE2C988(&qword_27D90FA00, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return sub_22C270774();
}

void TranscriptProtoValueDisambiguation.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (sub_22C272594(), sub_22BE192C8(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C01A88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910EE8, type metadata accessor for TranscriptProtoValueDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C01A90C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FA18, type metadata accessor for TranscriptProtoValueDisambiguation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C01A97C()
{
  sub_22BE2C988(&qword_27D90FA18, type metadata accessor for TranscriptProtoValueDisambiguation);

  return sub_22C270774();
}

uint64_t sub_22C01AA08()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_2810744E0);
  sub_22BE199F4(v0, qword_2810744E0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actionConfirmation";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameterNeedsValue";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameterConfirmation";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "parameterDisambiguation";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "parameterNotAllowed";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "parameterCandidatesNotFound";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "actionRequirement";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "toolDisambiguation";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "failure";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "valueDisambiguation";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "snippetStream";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoStatementOutcome.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22C01AF60(v3, v4, v5, v6);
        break;
      case 2:
        v31 = sub_22BE236F4();
        sub_22C01B458(v31, v32, v33, v34);
        break;
      case 3:
        v19 = sub_22BE236F4();
        sub_22C01B950(v19, v20, v21, v22);
        break;
      case 4:
        v23 = sub_22BE236F4();
        sub_22C01BE48(v23, v24, v25, v26);
        break;
      case 5:
        v11 = sub_22BE236F4();
        sub_22C01C340(v11, v12, v13, v14);
        break;
      case 6:
        v35 = sub_22BE236F4();
        sub_22C01C838(v35, v36, v37, v38);
        break;
      case 7:
        v39 = sub_22BE236F4();
        sub_22C01CD30(v39, v40, v41, v42);
        break;
      case 8:
        v27 = sub_22BE236F4();
        sub_22C01D228(v27, v28, v29, v30);
        break;
      case 9:
        v47 = sub_22BE236F4();
        sub_22C01D720(v47, v48, v49, v50);
        break;
      case 10:
        v15 = sub_22BE236F4();
        sub_22C01DC18(v15, v16, v17, v18);
        break;
      case 11:
        v43 = sub_22BE236F4();
        sub_22C01E110(v43, v44, v45, v46);
        break;
      case 12:
        v7 = sub_22BE236F4();
        sub_22C01E608(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C01AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E980, &qword_22C2CC850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911490, &qword_22C2AE1B0);
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
    sub_22BE33928(v12, &qword_27D90E980, &qword_22C2CC850);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D911490, &qword_22C2AE1B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911490, &qword_22C2AE1B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911490, &qword_22C2AE1B0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911490, &qword_22C2AE1B0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911490, &qword_22C2AE1B0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E980, &qword_22C2CC850);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C01B458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E980, &qword_22C2CC850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911498, &qword_22C2AE1B8);
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
    sub_22BE33928(v12, &qword_27D90E980, &qword_22C2CC850);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911498, &qword_22C2AE1B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911498, &qword_22C2AE1B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911498, &qword_22C2AE1B8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911498, &qword_22C2AE1B8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911498, &qword_22C2AE1B8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E980, &qword_22C2CC850);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C01B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E980, &qword_22C2CC850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9114A0, &qword_22C2AE1C0);
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
    sub_22BE33928(v12, &qword_27D90E980, &qword_22C2CC850);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D9114A0, &qword_22C2AE1C0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FA38, type metadata accessor for TranscriptProtoParameterNeedsValue);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9114A0, &qword_22C2AE1C0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9114A0, &qword_22C2AE1C0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9114A0, &qword_22C2AE1C0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9114A0, &qword_22C2AE1C0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E980, &qword_22C2CC850);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C01BE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E980, &qword_22C2CC850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9114A8, &qword_22C2AE1C8);
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
    sub_22BE33928(v12, &qword_27D90E980, &qword_22C2CC850);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D9114A8, &qword_22C2AE1C8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F9E8, type metadata accessor for TranscriptProtoParameterConfirmation);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9114A8, &qword_22C2AE1C8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9114A8, &qword_22C2AE1C8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9114A8, &qword_22C2AE1C8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9114A8, &qword_22C2AE1C8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E980, &qword_22C2CC850);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C01C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E980, &qword_22C2CC850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9114B0, &qword_22C2AE1D0);
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
    sub_22BE33928(v12, &qword_27D90E980, &qword_22C2CC850);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D9114B0, &qword_22C2AE1D0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FA00, type metadata accessor for TranscriptProtoParameterDisambiguation);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9114B0, &qword_22C2AE1D0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9114B0, &qword_22C2AE1D0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9114B0, &qword_22C2AE1D0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9114B0, &qword_22C2AE1D0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E980, &qword_22C2CC850);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}