uint64_t sub_22C05E2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05E4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05E6C8()
{
  v0 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_22BE22868();
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v3, 1, v4) == 1)
  {
    result = sub_22BE33928(v3, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_22C270844();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05E81C()
{
  v0 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_22BE22868();
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v3, 1, v4) == 1)
  {
    result = sub_22BE33928(v3, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_22C270844();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoASTFlatValue.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoAstflatValueEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909180, &qword_22C27FD78);
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
      sub_22BE33928(v0, &qword_27D909178, &qword_22C27FD70);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoASTFlatValue(0);
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
    sub_22BE28CC0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909180, &qword_22C27FD78);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoAstflatValueEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D909178, &qword_22C27FD70);
  if (&qword_27D909178)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C05EE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C28, type metadata accessor for TranscriptProtoASTFlatValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05EE80(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05EEF0()
{
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);

  return sub_22C270774();
}

void TranscriptProtoASTFlatValueArrayVariant.decodeMessage<A>(decoder:)()
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
      sub_22C0B18D8();
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoASTFlatValueArrayVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoASTFlatValue(0), sub_22C0B1920(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C05F1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C20, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05F224(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05F294()
{
  sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);

  return sub_22C270774();
}

uint64_t sub_22C05F38C()
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
      sub_22BE1A8C4();
      sub_22BE32BF0();
      v0();
    }
  }

  return result;
}

uint64_t sub_22C05F3E8()
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22BE2C988(&qword_27D90EDA0, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C270564();
}

void TranscriptProtoASTFlatValueDictVariant.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  sub_22BE3E638();
  if (!v2)
  {
    goto LABEL_3;
  }

  sub_22C270464();
  v3 = sub_22C0B19C8();
  type metadata accessor for TranscriptProtoASTFlatValue(v3);
  sub_22C0B1908();
  sub_22BE2C988(v4, v1);
  sub_22C0B1A28(&qword_27D90EDA0);
  sub_22BE37D10();
  sub_22C0B14F0();
  if (!v0)
  {
LABEL_3:
    v5 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
    sub_22BE294F8(v5);
  }

  sub_22C0B171C();
}

uint64_t sub_22C05F664(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C18, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05F6E4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05F754()
{
  sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);

  return sub_22C270774();
}

uint64_t sub_22C05F7E0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC50);
  sub_22BE199F4(v0, qword_27D90DC50);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatExprIndexVariant.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22C05FA7C();
    }

    else if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C05FA7C()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C05FB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C05FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprIndexVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v3 = sub_22BE2021C();
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(v3);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v40[1] = v8;
  v9 = sub_22BE1B074();
  v11 = sub_22BE5CE4C(v9, v10);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  v40[0] = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE32374();
  v17 = sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  v18 = sub_22BE18000(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  sub_22BE2017C();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v40 - v23;
  v25 = *(v22 + 48);
  sub_22BE22868();
  v40[3] = v2;
  sub_22BE22868();
  sub_22BE200F8(v24);
  if (v26)
  {
    sub_22BE200F8(&v24[v25]);
    if (v26)
    {
      sub_22BE33928(v24, &qword_27D90EE30, &unk_22C2AE760);
      goto LABEL_11;
    }

LABEL_9:
    v27 = v24;
LABEL_20:
    sub_22BE33928(v27, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_21;
  }

  sub_22BE289D8();
  sub_22BE22868();
  sub_22BE200F8(&v24[v25]);
  if (v26)
  {
    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  sub_22BE25EFC();
  static TranscriptProtoASTFlatValue.== infix(_:_:)();
  v29 = v28;
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE33928(v24, &qword_27D90EE30, &unk_22C2AE760);
  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v30 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v31 = *(v30 + 20);
  v32 = *(v17 + 48);
  sub_22C0B1CE4();
  sub_22C0B1CE4();
  sub_22BE200F8(v0);
  if (v26)
  {
    sub_22BE200F8(v0 + v32);
    if (v26)
    {
      sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
LABEL_24:
      v37 = *(v30 + 24);
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v38, v39);
      v34 = sub_22C0B1D30();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22C0B1DB4();
  sub_22BE22868();
  sub_22BE200F8(v0 + v32);
  if (v33)
  {
    sub_22BE25764();
    sub_22C0B08BC();
LABEL_19:
    v27 = v0;
    goto LABEL_20;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  sub_22BE35838();
  static TranscriptProtoASTFlatValue.== infix(_:_:)();
  v36 = v35;
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
  if (v36)
  {
    goto LABEL_24;
  }

LABEL_21:
  v34 = 0;
LABEL_22:
  sub_22BE1C1DC(v34);
  sub_22BE1AABC();
}

uint64_t sub_22C060348(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C10, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0603C8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C060438()
{
  sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);

  return sub_22C270774();
}

uint64_t sub_22C0604C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC68);
  sub_22BE199F4(v0, qword_27D90DC68);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "third";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0607AC()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C060860()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0) + 24);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C0609AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C060B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprInfixVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(v4);
  v6 = sub_22BE26880(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE38390();
  v9 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v13);
  sub_22BE324EC();
  v14 = sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  v15 = sub_22BE28F58(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v18);
  sub_22BE32374();
  sub_22C0B16C4();
  if (!v20)
  {
    goto LABEL_23;
  }

  v19 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v33 = sub_22C0B1EA8(v19);
  sub_22BE26234();
  sub_22BE22868();
  sub_22C0B1F38();
  sub_22BE1972C(v3);
  if (v20)
  {
    sub_22BE1972C(v3 + v0);
    if (v20)
    {
      sub_22BE33928(v3, &qword_27D90EE30, &unk_22C2AE760);
      goto LABEL_13;
    }

LABEL_11:
    v21 = v3;
LABEL_22:
    sub_22BE33928(v21, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_23;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE1972C(v3 + v0);
  if (v20)
  {
    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_11;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  sub_22C0B1AF0();
  static TranscriptProtoASTFlatValue.== infix(_:_:)();
  v23 = v22;
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D90EE30, &unk_22C2AE760);
  if ((v23 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v24 = *(v33 + 24);
  v25 = *(v2 + 48);
  sub_22C0B1CE4();
  sub_22C0B1CE4();
  sub_22BE26A1C();
  if (v20)
  {
    sub_22BE1972C(v1 + v25);
    if (v20)
    {
      sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
LABEL_26:
      v30 = *(v33 + 28);
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v31, v32);
      v27 = sub_22C0B1C14();
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  sub_22BE3CB6C();
  sub_22BE22868();
  sub_22BE1972C(v1 + v25);
  if (v26)
  {
    sub_22BE25764();
    sub_22C0B08BC();
LABEL_21:
    v21 = v1;
    goto LABEL_22;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  sub_22BE36680();
  static TranscriptProtoASTFlatValue.== infix(_:_:)();
  v29 = v28;
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
  if (v29)
  {
    goto LABEL_26;
  }

LABEL_23:
  v27 = 0;
LABEL_24:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}

uint64_t sub_22C06114C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C08, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0611CC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C06123C()
{
  sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_22C270774();
}

uint64_t sub_22C0612C8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC80);
  sub_22BE199F4(v0, qword_27D90DC80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_22C296E70;
  v4 = v71 + v3;
  v5 = v71 + v3 + v1[14];
  *(v71 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "statementId";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "prefix";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "infix";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "index";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "updateParameters";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "call";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "say";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "pick";
  *(v23 + 1) = 4;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 12;
  *v25 = "confirm";
  *(v25 + 1) = 7;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 13;
  *v27 = "search";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 25;
  *v29 = "structuredSearch";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "pickOne";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "resolveTool";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 16;
  *v35 = "undo";
  *(v35 + 1) = 4;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 17;
  *v37 = "reject";
  *(v37 + 1) = 6;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "cancel";
  *(v39 + 1) = 6;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "noMatchingTool";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "continuePlanning";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "endOfPlan";
  *(v45 + 1) = 9;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "getMentionedApps";
  *(v47 + 1) = 16;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "open";
  *(v49 + 1) = 4;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "explicitResolutionRequest";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "payload";
  *(v53 + 1) = 7;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "format";
  *(v55 + 1) = 6;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "retrieveContext";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 29;
  *v59 = "retrieveSpans";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "retrieveTools";
  *(v61 + 1) = 13;
  v61[16] = 2;
  v8();
  v62 = (v4 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "siriXFallback";
  *(v63 + 1) = 13;
  v63[16] = 2;
  v8();
  v64 = (v4 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 32;
  *v65 = "userConfirm";
  *(v65 + 1) = 11;
  v65[16] = 2;
  v8();
  v66 = (v4 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 33;
  *v67 = "userDisambiguate";
  *(v67 + 1) = 16;
  v67[16] = 2;
  v8();
  v68 = (v4 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 34;
  *v69 = "answerSynthesis";
  *(v69 + 1) = 15;
  v69[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoExpression.decodeMessage<A>(decoder:)()
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
        sub_22C061E54(v3, v4, v5, v6);
        break;
      case 2:
        v59 = sub_22BE236F4();
        sub_22C06234C(v59, v60, v61, v62);
        break;
      case 3:
        v43 = sub_22BE236F4();
        sub_22C062844(v43, v44, v45, v46);
        break;
      case 4:
        v51 = sub_22BE236F4();
        sub_22C062D3C(v51, v52, v53, v54);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22C063234(v23, v24, v25, v26);
        break;
      case 7:
        v75 = sub_22BE236F4();
        sub_22C06372C(v75, v76, v77, v78);
        break;
      case 8:
        v87 = sub_22BE236F4();
        sub_22C063C24(v87, v88, v89, v90);
        break;
      case 9:
        v55 = sub_22BE236F4();
        sub_22C06411C(v55, v56, v57, v58);
        break;
      case 10:
        v99 = sub_22BE236F4();
        sub_22C064614(v99, v100, v101, v102);
        break;
      case 12:
        v31 = sub_22BE236F4();
        sub_22C064B0C(v31, v32, v33, v34);
        break;
      case 13:
        v95 = sub_22BE236F4();
        sub_22C065004(v95, v96, v97, v98);
        break;
      case 14:
        v19 = sub_22BE236F4();
        sub_22C0654FC(v19, v20, v21, v22);
        break;
      case 15:
        v27 = sub_22BE236F4();
        sub_22C0659F4(v27, v28, v29, v30);
        break;
      case 16:
        v83 = sub_22BE236F4();
        sub_22C065EEC(v83, v84, v85, v86);
        break;
      case 17:
        v15 = sub_22BE236F4();
        sub_22C0663E4(v15, v16, v17, v18);
        break;
      case 18:
        v47 = sub_22BE236F4();
        sub_22C0668DC(v47, v48, v49, v50);
        break;
      case 19:
        v11 = sub_22BE236F4();
        sub_22C066DD4(v11, v12, v13, v14);
        break;
      case 20:
        v67 = sub_22BE236F4();
        sub_22C0672CC(v67, v68, v69, v70);
        break;
      case 21:
        v91 = sub_22BE236F4();
        sub_22C0677C4(v91, v92, v93, v94);
        break;
      case 22:
        v111 = sub_22BE236F4();
        sub_22C067CBC(v111, v112, v113, v114);
        break;
      case 23:
        v71 = sub_22BE236F4();
        sub_22C0681B4(v71, v72, v73, v74);
        break;
      case 24:
        v79 = sub_22BE236F4();
        sub_22C0686AC(v79, v80, v81, v82);
        break;
      case 25:
        v107 = sub_22BE236F4();
        sub_22C068BA4(v107, v108, v109, v110);
        break;
      case 26:
        v115 = sub_22BE236F4();
        sub_22C06909C(v115, v116, v117, v118);
        break;
      case 27:
        v39 = sub_22BE236F4();
        sub_22C069594(v39, v40, v41, v42);
        break;
      case 28:
        v35 = sub_22BE236F4();
        sub_22C069A8C(v35, v36, v37, v38);
        break;
      case 29:
        v127 = sub_22BE236F4();
        sub_22C069F84(v127, v128, v129, v130);
        break;
      case 30:
        v7 = sub_22BE236F4();
        sub_22C06A47C(v7, v8, v9, v10);
        break;
      case 31:
        v119 = sub_22BE236F4();
        sub_22C06A974(v119, v120, v121, v122);
        break;
      case 32:
        v123 = sub_22BE236F4();
        sub_22C06AE6C(v123, v124, v125, v126);
        break;
      case 33:
        v103 = sub_22BE236F4();
        sub_22C06B364(v103, v104, v105, v106);
        break;
      case 34:
        v63 = sub_22BE236F4();
        sub_22C06B85C(v63, v64, v65, v66);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C061E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoValueExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111E0, &qword_22C2ADF10);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
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
      sub_22BE33928(v22, &qword_27D9111E0, &qword_22C2ADF10);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111E0, &qword_22C2ADF10);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111E0, &qword_22C2ADF10);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111E0, &qword_22C2ADF10);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111E0, &qword_22C2ADF10);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9090F8, &unk_22C2AE4A0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9090F8, &unk_22C2AE4A0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C062844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111E8, &qword_22C2ADF18);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D9111E8, &qword_22C2ADF18);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111E8, &qword_22C2ADF18);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111E8, &qword_22C2ADF18);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111E8, &qword_22C2ADF18);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111E8, &qword_22C2ADF18);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C062D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111F0, &qword_22C2ADF20);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D9111F0, &qword_22C2ADF20);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111F0, &qword_22C2ADF20);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111F0, &qword_22C2ADF20);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111F0, &qword_22C2ADF20);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111F0, &qword_22C2ADF20);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C063234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111F8, &qword_22C2ADF28);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D9111F8, &qword_22C2ADF28);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111F8, &qword_22C2ADF28);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111F8, &qword_22C2ADF28);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111F8, &qword_22C2ADF28);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111F8, &qword_22C2ADF28);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v6 = *(*(updated - 8) + 64);
  v7 = MEMORY[0x28223BE20](updated);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911200, &qword_22C2ADF30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, updated);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v22, &qword_27D911200, &qword_22C2ADF30);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, updated);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911200, &qword_22C2ADF30);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, updated) == 1)
  {
    sub_22BE33928(v22, &qword_27D911200, &qword_22C2ADF30);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911200, &qword_22C2ADF30);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911200, &qword_22C2ADF30);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C063C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoCallExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911208, &qword_22C2ADF38);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v22, &qword_27D911208, &qword_22C2ADF38);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911208, &qword_22C2ADF38);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911208, &qword_22C2ADF38);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911208, &qword_22C2ADF38);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911208, &qword_22C2ADF38);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSayExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911210, &qword_22C2ADF40);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v22, &qword_27D911210, &qword_22C2ADF40);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911210, &qword_22C2ADF40);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911210, &qword_22C2ADF40);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911210, &qword_22C2ADF40);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911210, &qword_22C2ADF40);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C064614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPickExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911218, &qword_22C2ADF48);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v22, &qword_27D911218, &qword_22C2ADF48);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911218, &qword_22C2ADF48);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911218, &qword_22C2ADF48);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911218, &qword_22C2ADF48);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911218, &qword_22C2ADF48);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C064B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911220, &qword_22C2ADF50);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22BE33928(v22, &qword_27D911220, &qword_22C2ADF50);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911220, &qword_22C2ADF50);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911220, &qword_22C2ADF50);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911220, &qword_22C2ADF50);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911220, &qword_22C2ADF50);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C065004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911228, &qword_22C2ADF58);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22BE33928(v22, &qword_27D911228, &qword_22C2ADF58);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911228, &qword_22C2ADF58);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911228, &qword_22C2ADF58);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911228, &qword_22C2ADF58);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911228, &qword_22C2ADF58);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0654FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911230, &qword_22C2ADF60);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22BE33928(v22, &qword_27D911230, &qword_22C2ADF60);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911230, &qword_22C2ADF60);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911230, &qword_22C2ADF60);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911230, &qword_22C2ADF60);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911230, &qword_22C2ADF60);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0659F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911238, &qword_22C2ADF68);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22BE33928(v22, &qword_27D911238, &qword_22C2ADF68);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911238, &qword_22C2ADF68);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911238, &qword_22C2ADF68);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911238, &qword_22C2ADF68);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911238, &qword_22C2ADF68);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C065EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911240, &qword_22C2ADF70);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22BE33928(v22, &qword_27D911240, &qword_22C2ADF70);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911240, &qword_22C2ADF70);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911240, &qword_22C2ADF70);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911240, &qword_22C2ADF70);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911240, &qword_22C2ADF70);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0663E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911248, &qword_22C2ADF78);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22BE33928(v22, &qword_27D911248, &qword_22C2ADF78);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911248, &qword_22C2ADF78);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911248, &qword_22C2ADF78);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911248, &qword_22C2ADF78);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911248, &qword_22C2ADF78);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0668DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911250, &qword_22C2ADF80);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22BE33928(v22, &qword_27D911250, &qword_22C2ADF80);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911250, &qword_22C2ADF80);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911250, &qword_22C2ADF80);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911250, &qword_22C2ADF80);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911250, &qword_22C2ADF80);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C066DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911258, &qword_22C2ADF88);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22BE33928(v22, &qword_27D911258, &qword_22C2ADF88);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911258, &qword_22C2ADF88);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911258, &qword_22C2ADF88);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911258, &qword_22C2ADF88);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911258, &qword_22C2ADF88);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0672CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911260, &qword_22C2ADF90);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22BE33928(v22, &qword_27D911260, &qword_22C2ADF90);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911260, &qword_22C2ADF90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911260, &qword_22C2ADF90);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911260, &qword_22C2ADF90);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911260, &qword_22C2ADF90);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0677C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911268, &qword_22C2ADF98);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22BE33928(v22, &qword_27D911268, &qword_22C2ADF98);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911268, &qword_22C2ADF98);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911268, &qword_22C2ADF98);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911268, &qword_22C2ADF98);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911268, &qword_22C2ADF98);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C067CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v6 = *(*(MentionedAppsExpression - 8) + 64);
  v7 = MEMORY[0x28223BE20](MentionedAppsExpression);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911270, &qword_22C2ADFA0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, MentionedAppsExpression);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22BE33928(v22, &qword_27D911270, &qword_22C2ADFA0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, MentionedAppsExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911270, &qword_22C2ADFA0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, MentionedAppsExpression) == 1)
  {
    sub_22BE33928(v22, &qword_27D911270, &qword_22C2ADFA0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911270, &qword_22C2ADFA0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911270, &qword_22C2ADFA0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0681B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911278, &qword_22C2ADFA8);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22BE33928(v22, &qword_27D911278, &qword_22C2ADFA8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911278, &qword_22C2ADFA8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911278, &qword_22C2ADFA8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911278, &qword_22C2ADFA8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911278, &qword_22C2ADFA8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0686AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911280, &qword_22C2ADFB0);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22BE33928(v22, &qword_27D911280, &qword_22C2ADFB0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911280, &qword_22C2ADFB0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911280, &qword_22C2ADFB0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911280, &qword_22C2ADFB0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911280, &qword_22C2ADFB0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C068BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911288, &qword_22C2ADFB8);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22BE33928(v22, &qword_27D911288, &qword_22C2ADFB8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911288, &qword_22C2ADFB8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911288, &qword_22C2ADFB8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911288, &qword_22C2ADFB8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911288, &qword_22C2ADFB8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911290, &qword_22C2ADFC0);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22BE33928(v22, &qword_27D911290, &qword_22C2ADFC0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911290, &qword_22C2ADFC0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911290, &qword_22C2ADFC0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911290, &qword_22C2ADFC0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911290, &qword_22C2ADFC0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C069594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911298, &qword_22C2ADFC8);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22BE33928(v22, &qword_27D911298, &qword_22C2ADFC8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911298, &qword_22C2ADFC8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911298, &qword_22C2ADFC8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911298, &qword_22C2ADFC8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911298, &qword_22C2ADFC8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C069A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v6 = *(*(ContextExpression - 8) + 64);
  v7 = MEMORY[0x28223BE20](ContextExpression);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112A0, &qword_22C2ADFD0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, ContextExpression);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22BE33928(v22, &qword_27D9112A0, &qword_22C2ADFD0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, ContextExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112A0, &qword_22C2ADFD0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, ContextExpression) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112A0, &qword_22C2ADFD0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112A0, &qword_22C2ADFD0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112A0, &qword_22C2ADFD0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C069F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v6 = *(*(SpansExpression - 8) + 64);
  v7 = MEMORY[0x28223BE20](SpansExpression);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112A8, &qword_22C2ADFD8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, SpansExpression);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22BE33928(v22, &qword_27D9112A8, &qword_22C2ADFD8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, SpansExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112A8, &qword_22C2ADFD8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, SpansExpression) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112A8, &qword_22C2ADFD8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112A8, &qword_22C2ADFD8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112A8, &qword_22C2ADFD8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v6 = *(*(ToolsExpression - 8) + 64);
  v7 = MEMORY[0x28223BE20](ToolsExpression);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112B0, &qword_22C2ADFE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, ToolsExpression);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22BE33928(v22, &qword_27D9112B0, &qword_22C2ADFE0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, ToolsExpression);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112B0, &qword_22C2ADFE0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, ToolsExpression) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112B0, &qword_22C2ADFE0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112B0, &qword_22C2ADFE0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112B0, &qword_22C2ADFE0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112B8, &qword_22C2ADFE8);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22BE33928(v22, &qword_27D9112B8, &qword_22C2ADFE8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112B8, &qword_22C2ADFE8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112B8, &qword_22C2ADFE8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112B8, &qword_22C2ADFE8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112B8, &qword_22C2ADFE8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06AE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112C0, &qword_22C2ADFF0);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22BE33928(v22, &qword_27D9112C0, &qword_22C2ADFF0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112C0, &qword_22C2ADFF0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112C0, &qword_22C2ADFF0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112C0, &qword_22C2ADFF0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112C0, &qword_22C2ADFF0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112C8, &qword_22C2ADFF8);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22BE33928(v22, &qword_27D9112C8, &qword_22C2ADFF8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112C8, &qword_22C2ADFF8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112C8, &qword_22C2ADFF8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112C8, &qword_22C2ADFF8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112C8, &qword_22C2ADFF8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C06B85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112D0, &qword_22C2AE000);
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
    sub_22BE33928(v12, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22BE33928(v22, &qword_27D9112D0, &qword_22C2AE000);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112D0, &qword_22C2AE000);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112D0, &qword_22C2AE000);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112D0, &qword_22C2AE000);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112D0, &qword_22C2AE000);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEA0, &qword_22C2970E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoExpression.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v65 = sub_22BE17D78();
        sub_22C06C1CC(v65, v66, v67, v68);
        goto LABEL_25;
      case 2u:
        v49 = sub_22BE17D78();
        sub_22C06C3D4(v49, v50, v51, v52);
        goto LABEL_25;
      case 3u:
        v57 = sub_22BE17D78();
        sub_22C06C5DC(v57, v58, v59, v60);
        goto LABEL_25;
      case 4u:
        v29 = sub_22BE17D78();
        sub_22C06C7E4(v29, v30, v31, v32);
        goto LABEL_25;
      case 5u:
        v81 = sub_22BE17D78();
        sub_22C06C9EC(v81, v82, v83, v84);
        goto LABEL_25;
      case 6u:
        v93 = sub_22BE17D78();
        sub_22C06CBF4(v93, v94, v95, v96);
        goto LABEL_25;
      case 7u:
        v61 = sub_22BE17D78();
        sub_22C06CDFC(v61, v62, v63, v64);
        goto LABEL_25;
      case 8u:
        v105 = sub_22BE17D78();
        sub_22C06D004(v105, v106, v107, v108);
        goto LABEL_37;
      case 9u:
        v37 = sub_22BE17D78();
        sub_22C06D20C(v37, v38, v39, v40);
        goto LABEL_37;
      case 0xAu:
        v101 = sub_22BE17D78();
        sub_22C06D414(v101, v102, v103, v104);
        goto LABEL_37;
      case 0xBu:
        v25 = sub_22BE17D78();
        sub_22C06EC74(v25, v26, v27, v28);
        goto LABEL_37;
      case 0xCu:
        v33 = sub_22BE17D78();
        sub_22C06D61C(v33, v34, v35, v36);
        goto LABEL_37;
      case 0xDu:
        v89 = sub_22BE17D78();
        sub_22C06D824(v89, v90, v91, v92);
        goto LABEL_37;
      case 0xEu:
        v21 = sub_22BE17D78();
        sub_22C06DA2C(v21, v22, v23, v24);
        goto LABEL_37;
      case 0xFu:
        v53 = sub_22BE17D78();
        sub_22C06DC34(v53, v54, v55, v56);
        goto LABEL_37;
      case 0x10u:
        v17 = sub_22BE17D78();
        sub_22C06DE3C(v17, v18, v19, v20);
        goto LABEL_37;
      case 0x11u:
        v73 = sub_22BE17D78();
        sub_22C06E044(v73, v74, v75, v76);
        goto LABEL_37;
      case 0x12u:
        v97 = sub_22BE17D78();
        sub_22C06E24C(v97, v98, v99, v100);
        goto LABEL_37;
      case 0x13u:
        v117 = sub_22BE17D78();
        sub_22C06E454(v117, v118, v119, v120);
        goto LABEL_37;
      case 0x14u:
        v77 = sub_22BE17D78();
        sub_22C06E65C(v77, v78, v79, v80);
        goto LABEL_37;
      case 0x15u:
        v85 = sub_22BE17D78();
        sub_22C06E864(v85, v86, v87, v88);
        goto LABEL_37;
      case 0x16u:
        v113 = sub_22BE17D78();
        sub_22C06EA6C(v113, v114, v115, v116);
        goto LABEL_37;
      case 0x17u:
        v121 = sub_22BE17D78();
        sub_22C06EE7C(v121, v122, v123, v124);
        goto LABEL_37;
      case 0x18u:
        v45 = sub_22BE17D78();
        sub_22C06F084(v45, v46, v47, v48);
        goto LABEL_37;
      case 0x19u:
        v41 = sub_22BE17D78();
        sub_22C06F28C(v41, v42, v43, v44);
        goto LABEL_37;
      case 0x1Au:
        v133 = sub_22BE17D78();
        sub_22C06F494(v133, v134, v135, v136);
        goto LABEL_37;
      case 0x1Bu:
        v13 = sub_22BE17D78();
        sub_22C06F69C(v13, v14, v15, v16);
        goto LABEL_37;
      case 0x1Cu:
        v125 = sub_22BE17D78();
        sub_22C06F8A4(v125, v126, v127, v128);
        goto LABEL_37;
      case 0x1Du:
        v129 = sub_22BE17D78();
        sub_22C06FAAC(v129, v130, v131, v132);
        goto LABEL_37;
      case 0x1Eu:
        v109 = sub_22BE17D78();
        sub_22C06FCB4(v109, v110, v111, v112);
        goto LABEL_37;
      case 0x1Fu:
        v69 = sub_22BE17D78();
        sub_22C06FEBC(v69, v70, v71, v72);
LABEL_37:
        if (v0)
        {
          sub_22BE3CDFC();
          sub_22C0B08BC();
          goto LABEL_41;
        }

        sub_22BE3CDFC();
        sub_22C0B08BC();
        break;
      default:
        v9 = sub_22BE17D78();
        sub_22C06BFC8(v9, v10, v11, v12);
LABEL_25:
        sub_22BE3CDFC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_41;
    }
  }

  v137 = type metadata accessor for TranscriptProtoExpression(0);
  sub_22BE235A8(v137);
LABEL_41:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C06BFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoValueExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06C9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06CBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoCallExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSayExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPickExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06D824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06DC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06DE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v9 = *(*(MentionedAppsExpression - 8) + 64);
  MEMORY[0x28223BE20](MentionedAppsExpression);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v9 = *(*(ContextExpression - 8) + 64);
  MEMORY[0x28223BE20](ContextExpression);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v9 = *(*(SpansExpression - 8) + 64);
  MEMORY[0x28223BE20](SpansExpression);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v9 = *(*(ToolsExpression - 8) + 64);
  MEMORY[0x28223BE20](ToolsExpression);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06F8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C06FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEA0, &qword_22C2970E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEA0, &qword_22C2970E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C07034C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C00, type metadata accessor for TranscriptProtoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0703CC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07043C()
{
  sub_22BE2C988(&qword_27D910248, type metadata accessor for TranscriptProtoExpression);

  return sub_22C270774();
}

void static TranscriptProtoSiriXFallbackExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      v21 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
      sub_22BE3636C(v21);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C0707A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BF8, type metadata accessor for TranscriptProtoSiriXFallbackExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C070828(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C070898()
{
  sub_22BE2C988(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression);

  return sub_22C270774();
}

uint64_t sub_22C070924()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DCB0);
  sub_22BE199F4(v0, qword_27D90DCB0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C290D40;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "double";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "string";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "array";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "symbol";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_22C2708A4();
}

void TranscriptProtoValueExpression.decodeMessage<A>(decoder:)()
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
      case 2:
        sub_22BE231C0();
        sub_22C04AFB8();
        break;
      case 3:
        sub_22BE231C0();
        sub_22C05CD08();
        break;
      case 4:
        v3 = sub_22BE231C0();
        sub_22C070D7C(v3, v4, v5, v6, v7, v8, v9);
        break;
      case 5:
      case 7:
        sub_22BE231C0();
        sub_22C05D830();
        break;
      case 6:
        v10 = sub_22BE236F4();
        sub_22C070ED0(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C070D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_22BE18378();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE2C64C();
  sub_22BE37DE0();
  result = sub_22C270674();
  if (!v8 && (v29 & 1) == 0)
  {
    sub_22C0B164C();
    sub_22BE22868();
    a7(0);
    v17 = sub_22BE3C688();
    v27 = v18;
    v20 = sub_22BE1AEA8(v17, v19, v18);
    sub_22BE2037C();
    sub_22BE33928(v21, v22, v23);
    if (v20 != 1)
    {
      sub_22BE196A8();
      sub_22C270594();
    }

    v24 = sub_22BE239F4();
    sub_22BE33928(v24, v25, v26);
    *v7 = v28;
    swift_storeEnumTagMultiPayload();
    return sub_22BE19DC4(v7, 0, 1, v27);
  }

  return result;
}

uint64_t sub_22C070ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9111D8, &qword_22C2ADF08);
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
    sub_22BE33928(v12, &qword_27D90EEC0, &qword_22C2970F0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D9111D8, &qword_22C2ADF08);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9111D8, &qword_22C2ADF08);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9111D8, &qword_22C2ADF08);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9111D8, &qword_22C2ADF08);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9111D8, &qword_22C2ADF08);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EEC0, &qword_22C2970F0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoValueExpression.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C071898();
        goto LABEL_11;
      case 2u:
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C07195C();
        goto LABEL_11;
      case 3u:
        sub_22C0B08BC();
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C071A2C();
        goto LABEL_11;
      case 4u:
        v9 = sub_22BE17D78();
        sub_22C071B14(v9, v10, v11, v12);
        sub_22BE3BFAC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_13;
      case 5u:
        sub_22BE3BFAC();
        sub_22C0B08BC();
        sub_22BE17D78();
        sub_22C071D1C();
        goto LABEL_11;
      case 6u:
        v13 = sub_22BE17D78();
        sub_22C0715B0(v13, v14, v15, v16);
        goto LABEL_11;
      default:
        sub_22BE238F4();
        sub_22BE17D78();
        sub_22C0717D8();
LABEL_11:
        if (!v0)
        {
          break;
        }

        goto LABEL_13;
    }
  }

  v17 = type metadata accessor for TranscriptProtoValueExpression(0);
  sub_22BE235A8(v17);
LABEL_13:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0715B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90EEC0, &qword_22C2970F0);
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

void sub_22C0717D8()
{
  sub_22BE19130();
  sub_22C0B14BC(v3, v4, v5, v6, v7, v8, v9, v10);
  v17 = sub_22C0B176C(v11, v12, v13, v14, v15, v16);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23E58();
  sub_22BE3E8FC();
  sub_22C0B1710();
  sub_22BE22868();
  v2(0);
  v21 = sub_22C0B14AC();
  sub_22BE1AB5C(v21, v22, v23);
  if (v24)
  {
    v26 = sub_22BE180C8();
    sub_22BE33928(v26, v27, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v25 = *v1;
      sub_22C0B1E54();
      sub_22C2707C4();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

void sub_22C071898()
{
  sub_22BE19130();
  sub_22C0B14BC(v3, v4, v5, v6, v7, v8, v9, v10);
  v17 = sub_22C0B176C(v11, v12, v13, v14, v15, v16);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23E58();
  sub_22BE3E8FC();
  sub_22C0B1710();
  sub_22BE22868();
  v2(0);
  v21 = sub_22C0B14AC();
  sub_22BE1AB5C(v21, v22, v23);
  if (v24)
  {
    v26 = sub_22BE180C8();
    sub_22BE33928(v26, v27, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v1;
      sub_22C0B1E54();
      sub_22C270814();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

void sub_22C07195C()
{
  sub_22BE19130();
  sub_22C0B14BC(v3, v4, v5, v6, v7, v8, v9, v10);
  v17 = sub_22C0B176C(v11, v12, v13, v14, v15, v16);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE23E58();
  sub_22BE3E8FC();
  sub_22C0B1710();
  sub_22BE22868();
  v2(0);
  v21 = sub_22C0B14AC();
  sub_22BE1AB5C(v21, v22, v23);
  if (v24)
  {
    v26 = sub_22BE180C8();
    sub_22BE33928(v26, v27, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v25 = *v1;
      sub_22C270834();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

void sub_22C071A2C()
{
  sub_22BE19130();
  sub_22C0B14BC(v3, v4, v5, v6, v7, v8, v9, v10);
  v13 = sub_22BE5CE4C(v11, v12);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE23E58();
  sub_22BE23108();
  sub_22C0B1710();
  sub_22BE22868();
  v2(0);
  v17 = sub_22C0B14AC();
  sub_22BE1AB5C(v17, v18, v19);
  if (v20)
  {
    v23 = sub_22BE180C8();
    sub_22BE33928(v23, v24, v0);
  }

  else
  {
    sub_22BE3E79C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v21 = *v1;
      v22 = v1[1];
      sub_22C270844();

      sub_22BE22978();
      sub_22BE18478();
      return;
    }

    sub_22C0B1F78();
  }

  __break(1u);
}

uint64_t sub_22C071B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EEC0, &qword_22C2970F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C071D1C()
{
  v0 = sub_22BE5CE4C(&qword_27D90EEC0, &qword_22C2970F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v8 - v2);
  sub_22BE22868();
  v4 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if (sub_22BE1AEA8(v3, 1, v4) == 1)
  {
    result = sub_22BE33928(v3, &qword_27D90EEC0, &qword_22C2970F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_22C270844();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoValueExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoValueExpressionEnum(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D90EEC8, &qword_22C2970F8);
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
      sub_22BE33928(v0, &qword_27D90EEC0, &qword_22C2970F0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoValueExpression(0);
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
    sub_22BE3BFAC();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D90EEC8, &qword_22C2970F8);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoValueExpressionEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EEC0, &qword_22C2970F0);
  if (&qword_27D90EEC0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C0720F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BF0, type metadata accessor for TranscriptProtoValueExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C072178(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0721E8()
{
  sub_22BE2C988(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression);

  return sub_22C270774();
}

void TranscriptProtoValueExpressionArrayVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0723FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BE8, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07247C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0724EC()
{
  sub_22BE2C988(&qword_27D910290, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return sub_22C270774();
}

uint64_t sub_22C072578()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DCE0);
  sub_22BE199F4(v0, qword_27D90DCE0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prefixOp";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C07280C()
{
  v0 = *(type metadata accessor for TranscriptProtoPrefixExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoPrefixExpression(0) + 20);
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

void static TranscriptProtoPrefixExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  sub_22C0B16C4();
  if (!v15)
  {
    goto LABEL_12;
  }

  v14 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  sub_22BE3E440(v14);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v15)
  {
    sub_22BE19538();
    if (v15)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_15:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
      v16 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v15)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_11:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_12;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v17 = sub_22BE38970();
  v19 = static TranscriptProtoStatementID.== infix(_:_:)(v17, v18);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_12:
  v16 = 0;
LABEL_13:
  sub_22BE1C1DC(v16);
  sub_22BE1AABC();
}

uint64_t sub_22C072D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BE0, type metadata accessor for TranscriptProtoPrefixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C072E10(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C072E80()
{
  sub_22BE2C988(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression);

  return sub_22C270774();
}

uint64_t sub_22C072F0C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DCF8);
  sub_22BE199F4(v0, qword_27D90DCF8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "infixOp";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lhs";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rhs";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void sub_22C073184()
{
  sub_22BE1B214();
  sub_22C0B1664();
  while (1)
  {
    sub_22BE196A8();
    v4 = sub_22C270584();
    if (v1 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        v8 = sub_22BE1A8F8();
        v0(v8);
        break;
      case 2:
        v7 = sub_22BE1A8F8();
        v2(v7);
        break;
      case 1:
        v6 = sub_22BE1A8F8();
        v3(v6);
        break;
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07327C()
{
  v0 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C073330()
{
  v0 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 20);
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

uint64_t sub_22C073650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 24);
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

void static TranscriptProtoInfixExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE26880(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE38390();
  v9 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v13);
  sub_22BE324EC();
  v14 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v15 = sub_22BE28F58(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v18);
  sub_22BE32374();
  sub_22C0B16C4();
  if (!v20)
  {
    goto LABEL_23;
  }

  v19 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v35 = sub_22C0B1EA8(v19);
  sub_22BE26234();
  sub_22BE22868();
  sub_22C0B1F38();
  sub_22BE1972C(v3);
  if (v20)
  {
    sub_22BE1972C(v3 + v0);
    if (v20)
    {
      sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_13;
    }

LABEL_11:
    v21 = v3;
LABEL_22:
    sub_22BE33928(v21, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_23;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE1972C(v3 + v0);
  if (v20)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_11;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v22 = sub_22C0B1AF0();
  v24 = static TranscriptProtoStatementID.== infix(_:_:)(v22, v23);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v3, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v25 = *(v35 + 24);
  v26 = *(v2 + 48);
  sub_22C0B1CE4();
  sub_22C0B1CE4();
  sub_22BE26A1C();
  if (v20)
  {
    sub_22BE1972C(v1 + v26);
    if (v20)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_26:
      v32 = *(v35 + 28);
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v33, v34);
      v28 = sub_22C0B1C14();
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  sub_22BE3CB6C();
  sub_22BE22868();
  sub_22BE1972C(v1 + v26);
  if (v27)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_21:
    v21 = v1;
    goto LABEL_22;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v29 = sub_22BE36680();
  v31 = static TranscriptProtoStatementID.== infix(_:_:)(v29, v30);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v31)
  {
    goto LABEL_26;
  }

LABEL_23:
  v28 = 0;
LABEL_24:
  sub_22BE1C1DC(v28);
  sub_22BE1AABC();
}

uint64_t sub_22C073C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BD8, type metadata accessor for TranscriptProtoInfixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C073C9C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C073D0C()
{
  sub_22BE2C988(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression);

  return sub_22C270774();
}

uint64_t sub_22C073D98()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD10);
  sub_22BE199F4(v0, qword_27D90DD10);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C07402C()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C0741D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprPrefixVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoASTFlatValue(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  sub_22C0B16C4();
  if (!v15)
  {
    goto LABEL_12;
  }

  v14 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  sub_22BE3E440(v14);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v15)
  {
    sub_22BE19538();
    if (v15)
    {
      sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
LABEL_15:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v19, v20);
      v16 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v15)
  {
    sub_22BE25764();
    sub_22C0B08BC();
LABEL_11:
    sub_22BE33928(v0, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_12;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoASTFlatValue.== infix(_:_:)();
  v18 = v17;
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EE30, &unk_22C2AE760);
  if (v18)
  {
    goto LABEL_15;
  }

LABEL_12:
  v16 = 0;
LABEL_13:
  sub_22BE1C1DC(v16);
  sub_22BE1AABC();
}

uint64_t sub_22C074658(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BD0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0746D8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C074748()
{
  sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_22C270774();
}

uint64_t sub_22C0747D4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD28);
  sub_22BE199F4(v0, qword_27D90DD28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoIndexExpression.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22C074A60();
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C074A60()
{
  v0 = *(type metadata accessor for TranscriptProtoIndexExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C074B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoIndexExpression(0) + 20);
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

void sub_22C074D54()
{
  sub_22BE19460();
  v40 = v3;
  v4 = sub_22BE2021C();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3668C(v9);
  v10 = sub_22BE39EAC();
  v12 = sub_22BE5CE4C(v10, v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE324EC();
  v17 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v18 = sub_22BE28F58(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v21);
  sub_22BE32374();
  v23 = *(v22 + 48);
  sub_22BE26234();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE200F8(v2);
  if (v24)
  {
    sub_22BE200F8(v2 + v23);
    if (v24)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v25 = v2;
LABEL_20:
    sub_22BE33928(v25, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_21;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE200F8(v2 + v23);
  if (v24)
  {
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v26 = sub_22C0B1AF0();
  v28 = static TranscriptProtoStatementID.== infix(_:_:)(v26, v27);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v29 = v40(0);
  v30 = *(v29 + 20);
  v31 = *(v1 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE200F8(v0);
  if (v24)
  {
    sub_22BE200F8(v0 + v31);
    if (v24)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_24:
      v37 = *(v29 + 24);
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v38, v39);
      v33 = sub_22C0B1D30();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE200F8(v0 + v31);
  if (v32)
  {
    sub_22C0B08BC();
LABEL_19:
    v25 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  v34 = sub_22BE2565C();
  v36 = static TranscriptProtoStatementID.== infix(_:_:)(v34, v35);
  sub_22BE18944();
  sub_22C0B08BC();
  sub_22BE33FCC();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v36)
  {
    goto LABEL_24;
  }

LABEL_21:
  v33 = 0;
LABEL_22:
  sub_22BE1C1DC(v33);
  sub_22BE1AABC();
}

uint64_t sub_22C0751C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BC8, type metadata accessor for TranscriptProtoIndexExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C075248(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0752B8()
{
  sub_22BE2C988(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression);

  return sub_22C270774();
}

uint64_t sub_22C075344()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD40);
  sub_22BE199F4(v0, qword_27D90DD40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "callStatementId";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updates";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoUpdateParametersExpression.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }

    else if (v1 == 1)
    {
      sub_22BE18E2C();
      sub_22C0755E0();
    }
  }
}

uint64_t sub_22C0755E0()
{
  v0 = *(type metadata accessor for TranscriptProtoUpdateParametersExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUpdateParametersExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v1 = sub_22BE3B0CC();
  sub_22C075748(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v5)
    {
      type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
      sub_22BE2C988(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
    sub_22BE25FB0(updated);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C075748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUpdateParametersExpression(0) + 20);
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

uint64_t sub_22C0759EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BC0, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C075A6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C075ADC()
{
  sub_22BE2C988(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return sub_22C270774();
}

uint64_t sub_22C075B74()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD58);
  sub_22BE199F4(v0, qword_27D90DD58);
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
  *(v5 + v2) = 2;
  *v10 = "kind";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameterIndex";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C075E94()
{
  v0 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoUpdateParameterExpression_UpdateParameter.traverse<A>(visitor:)()
{
  sub_22C0B1EE4();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v2 || (sub_22C09DD94(), sub_22BE23CE4(), sub_22C2707D4(), !v0))
    {
      v3 = sub_22BE17D60();
      sub_22C07605C(v3, v4, v5, v6);
      if (!v0)
      {
        v7 = sub_22BE17D60();
        sub_22C076230(v7);
        v8 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 32);
        sub_22BE1AC30();
      }
    }
  }

  sub_22C0B1ED0();
}

uint64_t sub_22C07605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 24);
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

uint64_t sub_22C076230(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270814();
  }

  return result;
}

void static TranscriptProtoUpdateParameterExpression_UpdateParameter.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20394();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_22BE36248();
  if (!v16)
  {
    goto LABEL_17;
  }

  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  sub_22C0B1694(updated);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (!v16)
  {
    sub_22BE194F8();
    sub_22BE22868();
    sub_22BE19538();
    if (!v18)
    {
      sub_22BE1868C();
      sub_22C0B0868();
      v20 = sub_22BE38970();
      v22 = static TranscriptProtoStatementID.== infix(_:_:)(v20, v21);
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_16:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_17;
  }

  sub_22BE19538();
  if (!v16)
  {
    goto LABEL_16;
  }

  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_20:
  sub_22BE3FE0C(*(v30 + 28));
  if (v25)
  {
    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_22BE35DEC();
    if ((v26 & 1) == 0)
    {
LABEL_24:
      v27 = *(v24 + 32);
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v28, v29);
      v19 = sub_22BE2B85C();
      goto LABEL_18;
    }
  }

LABEL_17:
  v19 = 0;
LABEL_18:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22C076584(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BB8, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C076604(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C076674()
{
  sub_22BE2C988(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_22C270774();
}

uint64_t sub_22C076700()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD70);
  sub_22BE199F4(v0, qword_27D90DD70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdsId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "representsBuiltInTool";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoGlobalToolIdentifier.decodeMessage<A>(decoder:)()
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
        sub_22BE374D4();
        sub_22C2705C4();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

void sub_22C0769EC()
{
  sub_22BE2BB34();
  sub_22BE44820();
  sub_22BE1A730();
  if (!v3 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    v2(v4);
    if (!v0)
    {
      sub_22BE2BC90();
      if (v5)
      {
        sub_22BE1BAB8();
        sub_22C2707C4();
      }

      v6 = v1(0);
      sub_22BE375E4(v6);
      sub_22BE363D4();
    }
  }

  sub_22BEE93D4();
}

uint64_t static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22C0B1C78();
  if (v6)
  {
    if (!v5)
    {
      return 0;
    }

    sub_22BE3C714();
    v9 = v4 && v7 == v8;
    if (!v9 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v4)
  {
    return 0;
  }

  v11 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22C0B1BAC(v11);
  sub_22BE18E5C();
  sub_22BE2C988(v12, v13);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C076BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BB0, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C076C5C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C076CCC()
{
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return sub_22C270774();
}

uint64_t sub_22C076D58()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DD88);
  sub_22BE199F4(v0, qword_27D90DD88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "tool";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoCallExpression.decodeMessage<A>(decoder:)()
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

    if (v1 == 3)
    {
      sub_22BE18E2C();
      sub_22C076FA8();
    }

    else if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22BE52128();
    }
  }
}

uint64_t sub_22C076FA8()
{
  v0 = *(type metadata accessor for TranscriptProtoCallExpression(0) + 20);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

void TranscriptProtoCallExpression.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  sub_22BE3E638();
  if (!v2)
  {
    goto LABEL_3;
  }

  sub_22C270464();
  v3 = sub_22C0B19C8();
  type metadata accessor for TranscriptProtoStatementID(v3);
  sub_22BE3C91C();
  sub_22BE2C988(v4, v1);
  sub_22BE41578();
  sub_22BE2C988(v5, v1);
  sub_22BE37D10();
  sub_22BE3CEA4();
  sub_22C0B14F0();
  if (!v0)
  {
LABEL_3:
    v6 = sub_22BE17D60();
    sub_22C077124(v6, v7, v8, v9);
    if (!v0)
    {
      v10 = type metadata accessor for TranscriptProtoCallExpression(0);
      sub_22BE25FB0(v10);
    }
  }

  sub_22C0B171C();
}

uint64_t sub_22C077124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoCallExpression(0) + 20);
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

void static TranscriptProtoCallExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  sub_22BE1BC88();
  sub_22BEA3AF0();
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = type metadata accessor for TranscriptProtoCallExpression(0);
  sub_22BE3E440(v15);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
LABEL_14:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v21, v22);
      v17 = sub_22BE2B85C();
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v16)
  {
    sub_22BE30F90();
    sub_22C0B08BC();
LABEL_10:
    sub_22BE33928(v0, &qword_27D90E678, &qword_22C296F38);
    goto LABEL_11;
  }

  sub_22C0B0868();
  v18 = sub_22BE38970();
  v20 = static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v18, v19);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E670, &unk_22C2CC890);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  sub_22BE1C1DC(v17);
  sub_22BE1AABC();
}

uint64_t sub_22C0775AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BA8, type metadata accessor for TranscriptProtoCallExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07762C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07769C()
{
  sub_22BE2C988(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression);

  return sub_22C270774();
}

uint64_t sub_22C0777CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910BA0, type metadata accessor for TranscriptProtoRetrieveContextExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07784C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0778BC()
{
  sub_22BE2C988(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression);

  return sub_22C270774();
}

void static TranscriptProtoRetrieveSpansExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
      sub_22BE3636C(SpansExpression);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C077C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B98, type metadata accessor for TranscriptProtoRetrieveSpansExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C077CA4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C077D14()
{
  sub_22BE2C988(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression);

  return sub_22C270774();
}

void static TranscriptProtoRetrieveToolsExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
      sub_22BE3636C(ToolsExpression);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C078080(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B90, type metadata accessor for TranscriptProtoRetrieveToolsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C078100(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C078170()
{
  sub_22BE2C988(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression);

  return sub_22C270774();
}

void TranscriptProtoSayExpression.decodeMessage<A>(decoder:)()
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
      sub_22C0B1830();
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoSayExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = type metadata accessor for TranscriptProtoSayExpression(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07840C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B88, type metadata accessor for TranscriptProtoSayExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07848C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0784FC()
{
  sub_22BE2C988(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression);

  return sub_22C270774();
}

uint64_t sub_22C078588()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE00);
  sub_22BE199F4(v0, qword_27D90DE00);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C0787B4()
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

    if (result == 2)
    {
      sub_22BE27184();
      v0();
    }

    else if (result == 1)
    {
      v5 = sub_22C0B1638();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_22C07882C()
{
  v0 = *(type metadata accessor for TranscriptProtoPickExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoPickExpression.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22C07894C(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      sub_22BE1BAB8();
      sub_22C270814();
    }

    v7 = type metadata accessor for TranscriptProtoPickExpression(0);
    return sub_22BE25FB0(v7);
  }

  return result;
}

uint64_t sub_22C07894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoPickExpression(0) + 20);
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

void static TranscriptProtoPickExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE48298();
  v6 = type metadata accessor for TranscriptProtoStatementID(v5);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE38390();
  v10 = sub_22BE289D8();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  v16 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE252F0(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E64();
  v27 = type metadata accessor for TranscriptProtoPickExpression(0);
  sub_22C0B1DC0(v27);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v0);
  if (v20)
  {
    sub_22BE19FE0(v0 + v2);
    if (v20)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  sub_22BE1BF88();
  sub_22BE22868();
  sub_22BE19FE0(v0 + v2);
  if (v20)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE4160C();
  sub_22C0B0868();
  v21 = sub_22BE200E0();
  static TranscriptProtoStatementID.== infix(_:_:)(v21, v22);
  sub_22BE377A4();
  sub_22C0B08BC();
  sub_22BE18240();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&qword_27D9090F8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (*v1 != *v4)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 24);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v24, v25);
  v26 = sub_22BE39E58();
LABEL_14:
  sub_22BE1C1DC(v26);
  sub_22BE1AABC();
}

uint64_t sub_22C078E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B80, type metadata accessor for TranscriptProtoPickExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C078E80(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C078EF0()
{
  sub_22BE2C988(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression);

  return sub_22C270774();
}

void static TranscriptProtoConfirmExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      v21 = type metadata accessor for TranscriptProtoConfirmExpression(0);
      sub_22BE3636C(v21);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C07925C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B78, type metadata accessor for TranscriptProtoConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0792DC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07934C()
{
  sub_22BE2C988(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression);

  return sub_22C270774();
}

uint64_t sub_22C0793D8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE30);
  sub_22BE199F4(v0, qword_27D90DE30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pickOne";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shouldOpenResultIfApplicable";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoSearchExpression.decodeMessage<A>(decoder:)()
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
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t TranscriptProtoSearchExpression.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v4 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
    {
      if (*(v1 + 17) != 1 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
      {
        if (*(v1 + 18) != 1 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v0))
        {
          v5 = *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
          return sub_22BE1AC30();
        }
      }
    }
  }

  return result;
}

uint64_t static TranscriptProtoSearchExpression.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v6 || *(v3 + 17) != *(v2 + 17) || *(v3 + 18) != *(v2 + 18))
  {
    return 0;
  }

  v8 = *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v9, v10);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C0798EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B70, type metadata accessor for TranscriptProtoSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07996C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0799DC()
{
  sub_22BE2C988(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression);

  return sub_22C270774();
}

uint64_t sub_22C079A68()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE48);
  sub_22BE199F4(v0, qword_27D90DE48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "returnType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "properties";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoStructuredSearchExpression.decodeMessage<A>(decoder:)()
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
        sub_22BE1C37C();
        sub_22C0478F0();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C079D58();
        break;
      case 1:
        sub_22BE18E2C();
        sub_22BE52128();
        break;
    }
  }
}

uint64_t sub_22C079D58()
{
  v0 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  sub_22C2725A4();
  sub_22BE2C988(&qword_27D90C7B0, MEMORY[0x277D72800]);
  return sub_22C2706F4();
}

void TranscriptProtoStructuredSearchExpression.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  sub_22BE3CD04();
  if (!*(*v0 + 16))
  {
    goto LABEL_10;
  }

  sub_22C270464();
  v2 = sub_22BE39FFC();
  type metadata accessor for TranscriptProtoStatementID(v2);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22BE41578();
  sub_22BE2C988(v3, type metadata accessor for TranscriptProtoStatementID);
  sub_22BE41E00();
  sub_22C270794();
  if (!v1)
  {
LABEL_10:
    sub_22BE2BBFC();
    sub_22C0B1E3C();
    sub_22C079FAC(v4, v5, v6, v7);
    if (!v1)
    {
      sub_22BE3A458();
      if (v8)
      {
        type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
        sub_22BE2C988(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
        sub_22BE238E8();
        sub_22C0B1658();
        sub_22C270874();
      }

      v9 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
      sub_22BE375E4(v9);
      sub_22C270494();
    }
  }

  sub_22C0B171C();
}

uint64_t sub_22C079FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C2725A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C138, &qword_22C2CB830);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C988(&qword_27D90C7B0, MEMORY[0x277D72800]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

void static TranscriptProtoStructuredSearchExpression.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v4 = sub_22C2725A4();
  v5 = sub_22BE35868(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17CBC();
  v8 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D90C140, &qword_22C290E40);
  sub_22BE28F58(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE25CD0();
  v16 = *v1;
  v17 = *v0;
  sub_22BEA3AF0();
  if ((v18 & 1) == 0)
  {
    goto LABEL_14;
  }

  v38 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v19 = *(v38 + 24);
  v20 = *(v3 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v21)
  {
    sub_22BE181B0(v2 + v20);
    if (v21)
    {
      sub_22BE33928(v2, &qword_27D90C138, &qword_22C2CB830);
      goto LABEL_12;
    }

LABEL_10:
    sub_22BE33928(v2, &qword_27D90C140, &qword_22C290E40);
LABEL_14:
    v37 = 0;
    goto LABEL_15;
  }

  sub_22C0B1FC0();
  sub_22BE181B0(v2 + v20);
  if (v21)
  {
    sub_22C0B19BC();
    v22 = sub_22BE36680();
    v23(v22);
    goto LABEL_10;
  }

  v24 = sub_22C0B1B78();
  v25(v24);
  sub_22BE23328();
  sub_22BE2C988(v26, v27);
  v28 = sub_22C0B19D4();
  v29 = sub_22BE3C5E4();
  MEMORY[0](v29);
  v30 = sub_22BE36680();
  MEMORY[0](v30);
  sub_22BE33928(v2, &qword_27D90C138, &qword_22C2CB830);
  if ((v28 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v31 = v1[1];
  v32 = v0[1];
  sub_22BE97E88();
  if ((v33 & 1) == 0)
  {
    goto LABEL_14;
  }

  v34 = *(v38 + 28);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v35, v36);
  v37 = sub_22BE35FB8();
LABEL_15:
  sub_22BE1C1DC(v37);
  sub_22BE1AABC();
}

uint64_t sub_22C07A50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B68, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07A58C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07A5FC()
{
  sub_22BE2C988(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return sub_22C270774();
}

uint64_t sub_22C07A67C()
{
  result = MEMORY[0x2318AB8D0](0xD000000000000019, 0x800000022C2D9470);
  qword_27D90DE60 = 0xD000000000000025;
  *algn_27D90DE68 = 0x800000022C2D8600;
  return result;
}

uint64_t sub_22C07A710()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DE70);
  sub_22BE199F4(v0, qword_27D90DE70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previousAnswerReference";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.decodeMessage<A>(decoder:)()
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
        sub_22BE18E2C();
        sub_22C07A9B8();
        break;
      case 2:
        sub_22BE374D4();
        sub_22C270694();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22C07A9B8()
{
  v0 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07AAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0) + 24);
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

void static TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  v4 = type metadata accessor for TranscriptProtoStatementID(v3);
  v5 = sub_22BE26880(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE38390();
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20394();
  v18 = v18 && v16 == v17;
  if (!v18 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_24;
  }

  v19 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!v19)
    {
      goto LABEL_24;
    }

    sub_22BFB1A50();
    v22 = v18 && v20 == v21;
    if (!v22 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v19)
  {
    goto LABEL_24;
  }

  v23 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  sub_22C0B1694(v23);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v18)
  {
    sub_22BE19538();
    if (v18)
    {
      sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_27:
      sub_22C0B1A60();
      sub_22BE18E5C();
      sub_22BE2C988(v29, v30);
      v25 = sub_22BE2B85C();
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v24)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_23:
    sub_22BE33928(v2, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_24;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v26 = sub_22BE38970();
  v28 = static TranscriptProtoStatementID.== infix(_:_:)(v26, v27);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v28)
  {
    goto LABEL_27;
  }

LABEL_24:
  v25 = 0;
LABEL_25:
  sub_22BE1C1DC(v25);
  sub_22BE1AABC();
}

uint64_t sub_22C07AF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B60, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07AFD4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07B044()
{
  sub_22BE2C988(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_22C270774();
}

void static TranscriptProtoPickOneExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      v21 = type metadata accessor for TranscriptProtoPickOneExpression(0);
      sub_22BE3636C(v21);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C07B3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B58, type metadata accessor for TranscriptProtoPickOneExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07B430(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07B4A0()
{
  sub_22BE2C988(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression);

  return sub_22C270774();
}

void TranscriptProtoResolveToolExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoGlobalToolIdentifier(0), sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
    sub_22BE294F8(v2);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07B73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B50, type metadata accessor for TranscriptProtoResolveToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07B7BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07B82C()
{
  sub_22BE2C988(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression);

  return sub_22C270774();
}

void static TranscriptProtoUndoExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      v21 = type metadata accessor for TranscriptProtoUndoExpression(0);
      sub_22BE3636C(v21);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C07BB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B48, type metadata accessor for TranscriptProtoUndoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07BC18(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07BC88()
{
  sub_22BE2C988(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression);

  return sub_22C270774();
}

void static TranscriptProtoRejectExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      v21 = type metadata accessor for TranscriptProtoRejectExpression(0);
      sub_22BE3636C(v21);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C07BFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B40, type metadata accessor for TranscriptProtoRejectExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C074(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C0E4()
{
  sub_22BE2C988(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression);

  return sub_22C270774();
}

void static TranscriptProtoCancelExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      v21 = type metadata accessor for TranscriptProtoCancelExpression(0);
      sub_22BE3636C(v21);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C07C450(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B38, type metadata accessor for TranscriptProtoCancelExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C4D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C540()
{
  sub_22BE2C988(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression);

  return sub_22C270774();
}

uint64_t sub_22C07C670(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B30, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C6F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C760()
{
  sub_22BE2C988(&qword_27D9104A0, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return sub_22C270774();
}

uint64_t sub_22C07C88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B28, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07C90C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07C97C()
{
  sub_22BE2C988(&qword_27D9104B8, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return sub_22C270774();
}

uint64_t sub_22C07CAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B20, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07CB28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07CB98()
{
  sub_22BE2C988(&qword_27D9104D0, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return sub_22C270774();
}

uint64_t sub_22C07CCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B18, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07CD44(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07CDB4()
{
  sub_22BE2C988(&qword_27D9104E8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return sub_22C270774();
}

void static TranscriptProtoOpenExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
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
  v12 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
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
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_12:
      v21 = type metadata accessor for TranscriptProtoOpenExpression(0);
      sub_22BE3636C(v21);
      sub_22BE18E5C();
      sub_22BE2C988(v22, v23);
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
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_10;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v19 = sub_22BE38970();
  static TranscriptProtoStatementID.== infix(_:_:)(v19, v20);
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (&qword_27D9090F8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C07D11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B10, type metadata accessor for TranscriptProtoOpenExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D19C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07D20C()
{
  sub_22BE2C988(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression);

  return sub_22C270774();
}

uint64_t sub_22C07D33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B08, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D3BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07D42C()
{
  sub_22BE2C988(&qword_27D910518, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return sub_22C270774();
}

void TranscriptProtoPayloadExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = type metadata accessor for TranscriptProtoPayloadExpression(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07D63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910B00, type metadata accessor for TranscriptProtoPayloadExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D6BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07D72C()
{
  sub_22BE2C988(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression);

  return sub_22C270774();
}

void TranscriptProtoFormatExpression.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoStatementID(0), sub_22BE1974C(), sub_22BE2C988(v2, v3), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v4 = type metadata accessor for TranscriptProtoFormatExpression(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C07D940(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AF8, type metadata accessor for TranscriptProtoFormatExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07D9C0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07DA30()
{
  sub_22BE2C988(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression);

  return sub_22C270774();
}

uint64_t sub_22C07DABC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DFC0);
  sub_22BE199F4(v0, qword_27D90DFC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "promptForUser";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmOption";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dismissOption";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoUserConfirmExpression.decodeMessage<A>(decoder:)()
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
        sub_22BE18E2C();
        sub_22C07DE50();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C07DD9C();
        break;
      case 1:
        sub_22BE1A338();
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
    }
  }
}

uint64_t sub_22C07DD9C()
{
  v0 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07DE50()
{
  v0 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C07DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(0) + 20);
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

uint64_t sub_22C07E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUserConfirmExpression(0) + 24);
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

void static TranscriptProtoUserConfirmExpression.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE39FFC();
  v5 = type metadata accessor for TranscriptProtoStatementID(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  v56 = v9;
  v10 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v11 = sub_22BE19448(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  v52 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  v54 = &v52 - v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE324EC();
  v18 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  v19 = sub_22BE18000(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  v53 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE486EC();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v52 - v26;
  v28 = *(v25 + 48);
  v55 = v0;
  sub_22BE33FCC();
  sub_22BE22868();
  v57 = v3;
  sub_22BE22868();
  sub_22BE200F8(v27);
  if (v29)
  {
    sub_22BE200F8(&v27[v28]);
    if (v29)
    {
      sub_22BE33928(v27, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v30 = v27;
LABEL_30:
    sub_22BE33928(v30, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_31;
  }

  sub_22BE22868();
  sub_22BE200F8(&v27[v28]);
  if (v29)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B13E4();
  sub_22C0B0868();
  v31 = sub_22C0B1E68();
  v33 = static TranscriptProtoStatementID.== infix(_:_:)(v31, v32);
  sub_22BE1804C();
  sub_22C0B08BC();
  sub_22C0B1AF0();
  sub_22C0B08BC();
  sub_22BE33928(v27, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v34 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v35 = v34[5];
  v36 = *(v18 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v1);
  if (v29)
  {
    sub_22BE200F8(v1 + v36);
    if (v29)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22BE3CB6C();
  sub_22BE22868();
  sub_22BE200F8(v1 + v36);
  if (v37)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_19:
    v30 = v1;
    goto LABEL_30;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v38 = sub_22BE1AB1C();
  v40 = static TranscriptProtoStatementID.== infix(_:_:)(v38, v39);
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v41 = v34[6];
  v42 = *(v18 + 48);
  v43 = v53;
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v43);
  if (v29)
  {
    sub_22BE200F8(v43 + v42);
    if (v29)
    {
      sub_22BE33928(v43, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_34:
      v49 = v34[7];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v50, v51);
      v45 = sub_22C272FD4();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_22BE22868();
  sub_22BE200F8(v43 + v42);
  if (v44)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_29:
    v30 = v43;
    goto LABEL_30;
  }

  sub_22BE18AA8();
  sub_22C0B0868();
  v46 = sub_22BE25C08();
  v48 = static TranscriptProtoStatementID.== infix(_:_:)(v46, v47);
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v43, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v48)
  {
    goto LABEL_34;
  }

LABEL_31:
  v45 = 0;
LABEL_32:
  sub_22BE1C1DC(v45);
  sub_22BE1AABC();
}

uint64_t sub_22C07E8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910AF0, type metadata accessor for TranscriptProtoUserConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C07E92C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C07E99C()
{
  sub_22BE2C988(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression);

  return sub_22C270774();
}

uint64_t sub_22C07EA28()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DFD8);
  sub_22BE199F4(v0, qword_27D90DFD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "promptForUser";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "options";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoUserDisambiguateExpression.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      sub_22C0B1830();
      sub_22BE1C37C();
      sub_22BFE7680();
    }

    else if (v1 == 1)
    {
      sub_22BE18E2C();
      sub_22C07ECB4();
    }
  }
}